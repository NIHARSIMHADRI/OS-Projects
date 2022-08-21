## MapReduce Example

One application where MapReduce can be used to handle large scale parallel data processing is counting the number of times a word appears across a set of
documents. If we have 10 documents and 5 computers, we can assign 2 documents to each computer and represent the number of times a word appears as a key
value pair. For example, computer 1 may generate the key value pairs {"of": 3, "the": 9, "that": 6, "I": 7}. This matches the definition of the Map()
function in MapReduce() which "takes an input pair and produces a set of intermediate key/value pairs". Next, these key value pairs from different
computers can be combined to find the total number of times a key occurs. For example, we may determine that the key "of" occurs a total of 18 times across
the 10 different documents. This satisfies the description of the Reduce() function whose job is to "merge together these values to form a possibly smaller 
set of values". 

In this project, we use concurrent code concepts such as threads and locks to build our own implementation of MapReduce for one machine.

## Code Details

The main logic lies in mapreduce.c. In the MR_Run() function, the command line parameters are given and the mapper and reducer threads are initialized. To
help create the mapper and reducer threads, the help_mapper() and help_reducer() functions were used. The last important function is the MR_Emit() function 
which takes key/value pairs from the mappers and stores them in a way where the reducers can use them.

The results of the MapReduce operation are stored using a modified HashMap which uses reader-writer locks in order to make the HashMap implementation is
thread safe. 

Note: sequential_mapreduce.c is just an example of how a non-concurrent implementation of MapReduce works.
