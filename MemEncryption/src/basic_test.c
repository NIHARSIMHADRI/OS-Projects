char *ptr = sbrk(PGSIZE); // Allocate one page
mencrypt(ptr, 1); // Encrypt the pages
struct pt_entry pt_entry; 
getpgtable(&pt_entry, 1); // Get the page table information for newly allocated page
