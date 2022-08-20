## Background

Even though each process has its own address space, hackers still have methods to modify or access portions of memory. In order to counteract their
attempts, we can encrypt pages that we don't want hackers to modify. This project simulates the process of encryption by just flipping all the bits
in a page.

## Code Details

In the growproc() function in proc.c, we make sure all the allocated heap pages start off as encrypted. The logic of encrypting and decrypting the pages
occurs in the mencrypt() and mdecrypt() functions in vm.c. The insert_handler() helper function decides which pages will stay encrypted and which pages
will stay decrypted using the clock algorithm.

## Clock Algorithm

The clock algorithm will hold up to N pages in its queue which will be decrypted. If a user accesses a page that is encrypted, a page fault will be
triggered and if there is room in the queue, the page will be added to the queue and be decrypted. If there isn't room in the queue, we need to figure
out which page to evict. This means the evicted page will go from decrypted back to encrypted and the new page will go from encrypted to decrypted. We can
figure out which page to evict by checking out if the page's PTE (page table entry) access bit is set. If all the pages have a set access bit, then we will
loop through the pages and clear their access bit until we find a page that doesn't have their access bit set.
