#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include <pthread.h>
#include "mapreduce.h"
#include "hashmap.h"

struct kv {
    char* key;
    char* value;
};

struct kv_list {
    struct kv** elements;
    // track how many of the identical keys we have iterated over
    int get_func_iter;
    int num_elements;
    int size;
};    

struct reduce_values {
	Reducer reduce;
	int index;
};

struct kv_list kvl;
size_t kvl_counter;

// my changes
char** files_data;
int iterFiles;
int numFiles;
Mapper global_map;
Reducer global_reduce;
Partitioner global_partition;
int total_partitions;

pthread_mutex_t locker;

// internal data structure (double array where each value is a partition_val)
struct kv_list* hold_values;

// this holds the indexes that should be reduced 
int* reducerIndexes;

// this function will be looped over in MR_Emit
char* get_func(char* key, int partition_number) {
	// get the partition index we are looking at
    // no need (partition_number is the partition we are looking at)
	//unsigned long partitionIndex = global_partition(key, partition_number);
	
	// we have looped over all the elements in the index so we are done
	if (hold_values[partition_number].get_func_iter == hold_values[partition_number].num_elements) {
		return NULL;
	}
	
    // get the value at the index we are on and increment get_func_iter to get ready for when get_func is called on next iteration
	int getIndex = hold_values[partition_number].get_func_iter;
	struct kv *curr_elt = hold_values[partition_number].elements[getIndex];
    if (!strcmp(curr_elt->key, key)) {
        hold_values[partition_number].get_func_iter++;
        return curr_elt->value;
    }
    return NULL;
}


// look at later
int cmp(const void* a, const void* b) {
    char* str1 = (*(struct kv **)a)->key;
    char* str2 = (*(struct kv **)b)->key;
    return strcmp(str1, str2);
}

int cmp1(const void* a, const void *b) {
    char* str1 = (*(struct kv **)a)->key;
    char* str2 = (*(struct kv **)b)->key;
    int check_keys = strcmp(str1, str2);
    
    // if the keys are equal we must compare values
    if (check_keys == 0) {
    	char* str3 = (*(struct kv **)a)->value;
    	char* str4 = (*(struct kv **)b)->value;
    	return strcmp(str3, str4);
    } else {
    	return check_keys;
    }
}

unsigned long MR_DefaultHashPartition(char *key, int num_partitions) {
    unsigned long hash = 5381;
    int c;
    while ((c = *key++) != '\0')
        hash = hash * 33 + c;
    return hash % num_partitions;
}

void MR_Emit(char* key, char* value) {
    // gives the index of where to store in the array (different keys could map to same index)
    pthread_mutex_lock(&locker);
    unsigned long partitionIndex = global_partition(key, total_partitions);
    
    // resize array if there isn't enough room
    if (hold_values[(int)partitionIndex].num_elements == hold_values[(int)partitionIndex].size) {
    	hold_values[(int)partitionIndex].size *= 2;
    	hold_values[(int)partitionIndex].elements = realloc(hold_values[(int)partitionIndex].elements, hold_values[(int)partitionIndex].size * sizeof(struct kv*));
    }
    
    // store key-value pair as elt
    struct kv *elt = (struct kv*) malloc(sizeof(struct kv));
    if (elt == NULL) {
	printf("Malloc error! %s\n", strerror(errno));
	exit(1);
    }
    elt->key = strdup(key);
    elt->value = strdup(value);
    
    // number of elements currently in list
    int currNum = hold_values[(int)partitionIndex].num_elements;
    // add the key-value pair to the next index of the array
    hold_values[(int)partitionIndex].elements[currNum] = elt;
    
    // increment num_elements so next key-value pair placed in next index
    hold_values[(int)partitionIndex].num_elements++;
    
    pthread_mutex_unlock(&locker);
}

void* help_mapper(void *arg) {
    while (1) {
        if (iterFiles >= numFiles) {
            break;
        }

        pthread_mutex_lock(&locker);

        char* currentFile = files_data[iterFiles];
        iterFiles++;
        pthread_mutex_unlock(&locker);
        global_map(currentFile);
    }
    return NULL;
}

void* help_reducer(void* values) {

    int* index = (int *)values;

    // iterate based on number of elements in that partition	
	for (int i = 0; i < hold_values[*index].num_elements; i++) {
        	// get the index of which element in the partition we are at
        	int getIndex = hold_values[*index].get_func_iter;
        	if (hold_values[*index].elements[getIndex] != NULL) {	
            	// we don't want NULL to be returned in get_func right away (we have gone through all elements in the partition)
            	if (hold_values[*index].get_func_iter == hold_values[*index].num_elements)
                	continue;
            	global_reduce(hold_values[*index].elements[getIndex]->key, get_func, *index);
        	}
	} 
    return NULL;
}

void MR_Run(int argc, char *argv[], Mapper map, int num_mappers,
	    Reducer reduce, int num_reducers, Partitioner partition)
{

    global_map = map;
    global_reduce = reduce;
    global_partition = partition;

    // files data starts at first file
    files_data = (argv + 1); 
    iterFiles = 0;
    numFiles = argc - 1;
    
    // hold_values will be populated in MR_Emit
    total_partitions = num_reducers;
    hold_values = malloc(sizeof(struct kv_list) * num_reducers);

    reducerIndexes = malloc(num_reducers * sizeof(int));
    
    // initialize table where maximum size is 2000
    for (int i = 0; i < num_reducers; i++) {
    	hold_values[i].elements = malloc(5000 * sizeof(struct kv*));
    	hold_values[i].get_func_iter = 0;
    	hold_values[i].num_elements = 0;
    	hold_values[i].size = 5000;
	}
	
	
    // create pthread_t arrays for mappers and reducers
    pthread_t mapper_threads[num_mappers];
    pthread_t reducer_threads[num_reducers];

    // create threads for the mappers
    for (int i = 0; i < num_mappers; i++) {
        // took map out of last argument
        pthread_create(&mapper_threads[i], NULL, help_mapper, NULL);
    }
    
    // wait for the mapper threads to terminate
    for (int i = 0; i < num_mappers; i++) {
        pthread_join(mapper_threads[i], NULL);
    }
    
    // sort before reducing
    for (int i = 0; i < total_partitions; i++) {
    	qsort(hold_values[i].elements, hold_values[i].num_elements, sizeof(struct kv_list*), cmp1);
    }
    
    
    
    // create threads for the reducers
    for (int i = 0; i < num_reducers; i++) {
        reducerIndexes[i] = i;
        pthread_create(&reducer_threads[i], NULL, help_reducer, (void *)&reducerIndexes[i]);
    }

    // wait for the reducer threads to terminate
    for (int i = 0; i < num_reducers; i++) {
        pthread_join(reducer_threads[i], NULL);
    }
}                
