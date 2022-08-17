
_test_8:     file format elf32-i386


Disassembly of section .text:

00000000 <err>:
#include "ptentry.h"

#define PGSIZE 4096

static int 
err(char *msg, ...) {
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	83 ec 08             	sub    $0x8,%esp
    printf(1, "XV6_TEST_OUTPUT %s\n", msg);
   a:	83 ec 04             	sub    $0x4,%esp
   d:	ff 75 08             	pushl  0x8(%ebp)
  10:	68 fc 0c 00 00       	push   $0xcfc
  15:	6a 01                	push   $0x1
  17:	e8 16 09 00 00       	call   932 <printf>
  1c:	83 c4 10             	add    $0x10,%esp
    exit();
  1f:	e8 7a 07 00 00       	call   79e <exit>

00000024 <access_all_dummy_pages>:
}


void access_all_dummy_pages(char **dummy_pages, uint len) {
  24:	f3 0f 1e fb          	endbr32 
  28:	55                   	push   %ebp
  29:	89 e5                	mov    %esp,%ebp
  2b:	83 ec 18             	sub    $0x18,%esp
    for (int i = 0; i < len; i++) {
  2e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  35:	eb 1b                	jmp    52 <access_all_dummy_pages+0x2e>
        char temp = dummy_pages[i][0];
  37:	8b 45 f4             	mov    -0xc(%ebp),%eax
  3a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  41:	8b 45 08             	mov    0x8(%ebp),%eax
  44:	01 d0                	add    %edx,%eax
  46:	8b 00                	mov    (%eax),%eax
  48:	0f b6 00             	movzbl (%eax),%eax
  4b:	88 45 f3             	mov    %al,-0xd(%ebp)
    for (int i = 0; i < len; i++) {
  4e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  52:	8b 45 f4             	mov    -0xc(%ebp),%eax
  55:	39 45 0c             	cmp    %eax,0xc(%ebp)
  58:	77 dd                	ja     37 <access_all_dummy_pages+0x13>
        temp = temp;
        // printf(1, "0x%x ", dummy_pages[i]);
    }
    printf(1, "\n");
  5a:	83 ec 08             	sub    $0x8,%esp
  5d:	68 10 0d 00 00       	push   $0xd10
  62:	6a 01                	push   $0x1
  64:	e8 c9 08 00 00       	call   932 <printf>
  69:	83 c4 10             	add    $0x10,%esp
}
  6c:	90                   	nop
  6d:	c9                   	leave  
  6e:	c3                   	ret    

0000006f <main>:

int main(void) {
  6f:	f3 0f 1e fb          	endbr32 
  73:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  77:	83 e4 f0             	and    $0xfffffff0,%esp
  7a:	ff 71 fc             	pushl  -0x4(%ecx)
  7d:	55                   	push   %ebp
  7e:	89 e5                	mov    %esp,%ebp
  80:	57                   	push   %edi
  81:	56                   	push   %esi
  82:	53                   	push   %ebx
  83:	51                   	push   %ecx
  84:	83 ec 68             	sub    $0x68,%esp
    const uint PAGES_NUM = 32;
  87:	c7 45 c4 20 00 00 00 	movl   $0x20,-0x3c(%ebp)
    const uint expected_dummy_pages_num = 4;
  8e:	c7 45 c0 04 00 00 00 	movl   $0x4,-0x40(%ebp)
    // These pages are used to make sure the test result is consistent for different text pages number
    char *dummy_pages[expected_dummy_pages_num];
  95:	8b 45 c0             	mov    -0x40(%ebp),%eax
  98:	83 e8 01             	sub    $0x1,%eax
  9b:	89 45 bc             	mov    %eax,-0x44(%ebp)
  9e:	8b 45 c0             	mov    -0x40(%ebp),%eax
  a1:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
  a8:	b8 10 00 00 00       	mov    $0x10,%eax
  ad:	83 e8 01             	sub    $0x1,%eax
  b0:	01 d0                	add    %edx,%eax
  b2:	bf 10 00 00 00       	mov    $0x10,%edi
  b7:	ba 00 00 00 00       	mov    $0x0,%edx
  bc:	f7 f7                	div    %edi
  be:	6b c0 10             	imul   $0x10,%eax,%eax
  c1:	89 c2                	mov    %eax,%edx
  c3:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  c9:	89 e7                	mov    %esp,%edi
  cb:	29 d7                	sub    %edx,%edi
  cd:	89 fa                	mov    %edi,%edx
  cf:	39 d4                	cmp    %edx,%esp
  d1:	74 10                	je     e3 <main+0x74>
  d3:	81 ec 00 10 00 00    	sub    $0x1000,%esp
  d9:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
  e0:	00 
  e1:	eb ec                	jmp    cf <main+0x60>
  e3:	89 c2                	mov    %eax,%edx
  e5:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  eb:	29 d4                	sub    %edx,%esp
  ed:	89 c2                	mov    %eax,%edx
  ef:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
  f5:	85 d2                	test   %edx,%edx
  f7:	74 0d                	je     106 <main+0x97>
  f9:	25 ff 0f 00 00       	and    $0xfff,%eax
  fe:	83 e8 04             	sub    $0x4,%eax
 101:	01 e0                	add    %esp,%eax
 103:	83 08 00             	orl    $0x0,(%eax)
 106:	89 e0                	mov    %esp,%eax
 108:	83 c0 03             	add    $0x3,%eax
 10b:	c1 e8 02             	shr    $0x2,%eax
 10e:	c1 e0 02             	shl    $0x2,%eax
 111:	89 45 b8             	mov    %eax,-0x48(%ebp)
    char *buffer = sbrk(PGSIZE * sizeof(char));
 114:	83 ec 0c             	sub    $0xc,%esp
 117:	68 00 10 00 00       	push   $0x1000
 11c:	e8 05 07 00 00       	call   826 <sbrk>
 121:	83 c4 10             	add    $0x10,%esp
 124:	89 45 b4             	mov    %eax,-0x4c(%ebp)
    char *sp = buffer - PGSIZE;
 127:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 12a:	2d 00 10 00 00       	sub    $0x1000,%eax
 12f:	89 45 b0             	mov    %eax,-0x50(%ebp)
    char *boundary = buffer - 2 * PGSIZE;
 132:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 135:	2d 00 20 00 00       	sub    $0x2000,%eax
 13a:	89 45 ac             	mov    %eax,-0x54(%ebp)
    struct pt_entry pt_entries[PAGES_NUM];
 13d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 140:	83 e8 01             	sub    $0x1,%eax
 143:	89 45 a8             	mov    %eax,-0x58(%ebp)
 146:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 149:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 150:	b8 10 00 00 00       	mov    $0x10,%eax
 155:	83 e8 01             	sub    $0x1,%eax
 158:	01 d0                	add    %edx,%eax
 15a:	bf 10 00 00 00       	mov    $0x10,%edi
 15f:	ba 00 00 00 00       	mov    $0x0,%edx
 164:	f7 f7                	div    %edi
 166:	6b c0 10             	imul   $0x10,%eax,%eax
 169:	89 c2                	mov    %eax,%edx
 16b:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 171:	89 e6                	mov    %esp,%esi
 173:	29 d6                	sub    %edx,%esi
 175:	89 f2                	mov    %esi,%edx
 177:	39 d4                	cmp    %edx,%esp
 179:	74 10                	je     18b <main+0x11c>
 17b:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 181:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
 188:	00 
 189:	eb ec                	jmp    177 <main+0x108>
 18b:	89 c2                	mov    %eax,%edx
 18d:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 193:	29 d4                	sub    %edx,%esp
 195:	89 c2                	mov    %eax,%edx
 197:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 19d:	85 d2                	test   %edx,%edx
 19f:	74 0d                	je     1ae <main+0x13f>
 1a1:	25 ff 0f 00 00       	and    $0xfff,%eax
 1a6:	83 e8 04             	sub    $0x4,%eax
 1a9:	01 e0                	add    %esp,%eax
 1ab:	83 08 00             	orl    $0x0,(%eax)
 1ae:	89 e0                	mov    %esp,%eax
 1b0:	83 c0 03             	add    $0x3,%eax
 1b3:	c1 e8 02             	shr    $0x2,%eax
 1b6:	c1 e0 02             	shl    $0x2,%eax
 1b9:	89 45 a4             	mov    %eax,-0x5c(%ebp)

    uint text_pages = (uint) boundary / PGSIZE;
 1bc:	8b 45 ac             	mov    -0x54(%ebp),%eax
 1bf:	c1 e8 0c             	shr    $0xc,%eax
 1c2:	89 45 a0             	mov    %eax,-0x60(%ebp)
    if (text_pages > expected_dummy_pages_num - 1)
 1c5:	8b 45 c0             	mov    -0x40(%ebp),%eax
 1c8:	83 e8 01             	sub    $0x1,%eax
 1cb:	39 45 a0             	cmp    %eax,-0x60(%ebp)
 1ce:	76 10                	jbe    1e0 <main+0x171>
        err("XV6_TEST_OUTPUT: program size exceeds the maximum allowed size. Please let us know if this case happens\n");
 1d0:	83 ec 0c             	sub    $0xc,%esp
 1d3:	68 14 0d 00 00       	push   $0xd14
 1d8:	e8 23 fe ff ff       	call   0 <err>
 1dd:	83 c4 10             	add    $0x10,%esp
    
    for (int i = 0; i < text_pages; i++) {
 1e0:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
 1e7:	eb 2a                	jmp    213 <main+0x1a4>
    	// print edit below
      	printf(1, "Page %d added to the queue\n\n", i);
 1e9:	83 ec 04             	sub    $0x4,%esp
 1ec:	ff 75 c8             	pushl  -0x38(%ebp)
 1ef:	68 7d 0d 00 00       	push   $0xd7d
 1f4:	6a 01                	push   $0x1
 1f6:	e8 37 07 00 00       	call   932 <printf>
 1fb:	83 c4 10             	add    $0x10,%esp
        dummy_pages[i] = (char *)(i * PGSIZE);
 1fe:	8b 45 c8             	mov    -0x38(%ebp),%eax
 201:	c1 e0 0c             	shl    $0xc,%eax
 204:	89 c1                	mov    %eax,%ecx
 206:	8b 45 b8             	mov    -0x48(%ebp),%eax
 209:	8b 55 c8             	mov    -0x38(%ebp),%edx
 20c:	89 0c 90             	mov    %ecx,(%eax,%edx,4)
    for (int i = 0; i < text_pages; i++) {
 20f:	83 45 c8 01          	addl   $0x1,-0x38(%ebp)
 213:	8b 45 c8             	mov    -0x38(%ebp),%eax
 216:	39 45 a0             	cmp    %eax,-0x60(%ebp)
 219:	77 ce                	ja     1e9 <main+0x17a>
    }
    dummy_pages[text_pages] = sp;
 21b:	8b 45 b8             	mov    -0x48(%ebp),%eax
 21e:	8b 55 a0             	mov    -0x60(%ebp),%edx
 221:	8b 4d b0             	mov    -0x50(%ebp),%ecx
 224:	89 0c 90             	mov    %ecx,(%eax,%edx,4)

    for (int i = text_pages + 1; i < expected_dummy_pages_num; i++) {
 227:	8b 45 a0             	mov    -0x60(%ebp),%eax
 22a:	83 c0 01             	add    $0x1,%eax
 22d:	89 45 cc             	mov    %eax,-0x34(%ebp)
 230:	eb 32                	jmp    264 <main+0x1f5>
    	// print edit below
      	printf(1, "Page %d added to the queue\n\n", i);
 232:	83 ec 04             	sub    $0x4,%esp
 235:	ff 75 cc             	pushl  -0x34(%ebp)
 238:	68 7d 0d 00 00       	push   $0xd7d
 23d:	6a 01                	push   $0x1
 23f:	e8 ee 06 00 00       	call   932 <printf>
 244:	83 c4 10             	add    $0x10,%esp
        dummy_pages[i] = sbrk(PGSIZE * sizeof(char));
 247:	83 ec 0c             	sub    $0xc,%esp
 24a:	68 00 10 00 00       	push   $0x1000
 24f:	e8 d2 05 00 00       	call   826 <sbrk>
 254:	83 c4 10             	add    $0x10,%esp
 257:	8b 55 b8             	mov    -0x48(%ebp),%edx
 25a:	8b 4d cc             	mov    -0x34(%ebp),%ecx
 25d:	89 04 8a             	mov    %eax,(%edx,%ecx,4)
    for (int i = text_pages + 1; i < expected_dummy_pages_num; i++) {
 260:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 264:	8b 45 cc             	mov    -0x34(%ebp),%eax
 267:	39 45 c0             	cmp    %eax,-0x40(%ebp)
 26a:	77 c6                	ja     232 <main+0x1c3>
    }
    

    // After this call, all the dummy pages including text pages and stack pages
    // should be resident in the clock queue.
    access_all_dummy_pages(dummy_pages, expected_dummy_pages_num);
 26c:	83 ec 08             	sub    $0x8,%esp
 26f:	ff 75 c0             	pushl  -0x40(%ebp)
 272:	ff 75 b8             	pushl  -0x48(%ebp)
 275:	e8 aa fd ff ff       	call   24 <access_all_dummy_pages>
 27a:	83 c4 10             	add    $0x10,%esp

    // Bring the buffer page into the clock queue
    buffer[0] = buffer[0];
 27d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 280:	0f b6 10             	movzbl (%eax),%edx
 283:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 286:	88 10                	mov    %dl,(%eax)

    // Now we should have expected_dummy_pages_num + 1 (buffer) pages in the clock queue
    // Fill up the remainig slot with heap-allocated page
    // and bring all of them into the clock queue
    int heap_pages_num = CLOCKSIZE - expected_dummy_pages_num - 1;
 288:	b8 07 00 00 00       	mov    $0x7,%eax
 28d:	2b 45 c0             	sub    -0x40(%ebp),%eax
 290:	89 45 9c             	mov    %eax,-0x64(%ebp)
    char *ptr = sbrk(heap_pages_num * PGSIZE * sizeof(char));
 293:	8b 45 9c             	mov    -0x64(%ebp),%eax
 296:	c1 e0 0c             	shl    $0xc,%eax
 299:	83 ec 0c             	sub    $0xc,%esp
 29c:	50                   	push   %eax
 29d:	e8 84 05 00 00       	call   826 <sbrk>
 2a2:	83 c4 10             	add    $0x10,%esp
 2a5:	89 45 98             	mov    %eax,-0x68(%ebp)
    ptr[heap_pages_num / 2 * PGSIZE] = 0xAA;
 2a8:	8b 45 9c             	mov    -0x64(%ebp),%eax
 2ab:	89 c2                	mov    %eax,%edx
 2ad:	c1 ea 1f             	shr    $0x1f,%edx
 2b0:	01 d0                	add    %edx,%eax
 2b2:	d1 f8                	sar    %eax
 2b4:	c1 e0 0c             	shl    $0xc,%eax
 2b7:	89 c2                	mov    %eax,%edx
 2b9:	8b 45 98             	mov    -0x68(%ebp),%eax
 2bc:	01 d0                	add    %edx,%eax
 2be:	c6 00 aa             	movb   $0xaa,(%eax)
    for (int i = 0; i < heap_pages_num; i++) {
 2c1:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 2c8:	eb 46                	jmp    310 <main+0x2a1>
    	// print edit below
      	printf(1, "Page %d added to the queue\n\n", i);
 2ca:	83 ec 04             	sub    $0x4,%esp
 2cd:	ff 75 d0             	pushl  -0x30(%ebp)
 2d0:	68 7d 0d 00 00       	push   $0xd7d
 2d5:	6a 01                	push   $0x1
 2d7:	e8 56 06 00 00       	call   932 <printf>
 2dc:	83 c4 10             	add    $0x10,%esp
      for (int j = 0; j < PGSIZE; j++) {
 2df:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
 2e6:	eb 1b                	jmp    303 <main+0x294>
        ptr[i * PGSIZE + j] = 0xAA;
 2e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 2eb:	c1 e0 0c             	shl    $0xc,%eax
 2ee:	89 c2                	mov    %eax,%edx
 2f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 2f3:	01 d0                	add    %edx,%eax
 2f5:	89 c2                	mov    %eax,%edx
 2f7:	8b 45 98             	mov    -0x68(%ebp),%eax
 2fa:	01 d0                	add    %edx,%eax
 2fc:	c6 00 aa             	movb   $0xaa,(%eax)
      for (int j = 0; j < PGSIZE; j++) {
 2ff:	83 45 d4 01          	addl   $0x1,-0x2c(%ebp)
 303:	81 7d d4 ff 0f 00 00 	cmpl   $0xfff,-0x2c(%ebp)
 30a:	7e dc                	jle    2e8 <main+0x279>
    for (int i = 0; i < heap_pages_num; i++) {
 30c:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
 310:	8b 45 d0             	mov    -0x30(%ebp),%eax
 313:	3b 45 9c             	cmp    -0x64(%ebp),%eax
 316:	7c b2                	jl     2ca <main+0x25b>
      }
    }
    
    // An extra page which will trigger the page eviction
    // This eviction will evict page 0
    char* extra_pages = sbrk(PGSIZE * sizeof(char));
 318:	83 ec 0c             	sub    $0xc,%esp
 31b:	68 00 10 00 00       	push   $0x1000
 320:	e8 01 05 00 00       	call   826 <sbrk>
 325:	83 c4 10             	add    $0x10,%esp
 328:	89 45 94             	mov    %eax,-0x6c(%ebp)
    for (int j = 0; j < PGSIZE; j++) {
 32b:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 332:	eb 0f                	jmp    343 <main+0x2d4>
      extra_pages[j] = 0xAA;
 334:	8b 55 d8             	mov    -0x28(%ebp),%edx
 337:	8b 45 94             	mov    -0x6c(%ebp),%eax
 33a:	01 d0                	add    %edx,%eax
 33c:	c6 00 aa             	movb   $0xaa,(%eax)
    for (int j = 0; j < PGSIZE; j++) {
 33f:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
 343:	81 7d d8 ff 0f 00 00 	cmpl   $0xfff,-0x28(%ebp)
 34a:	7e e8                	jle    334 <main+0x2c5>
    }

    // Bring all the dummy pages and buffer back to the 
    // clock queue and reset their ref to 1
    // At this time, the first heap-allocated page is ensured to be evicted
    access_all_dummy_pages(dummy_pages, expected_dummy_pages_num);
 34c:	83 ec 08             	sub    $0x8,%esp
 34f:	ff 75 c0             	pushl  -0x40(%ebp)
 352:	ff 75 b8             	pushl  -0x48(%ebp)
 355:	e8 ca fc ff ff       	call   24 <access_all_dummy_pages>
 35a:	83 c4 10             	add    $0x10,%esp
    buffer[0] = buffer[0];
 35d:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 360:	0f b6 10             	movzbl (%eax),%edx
 363:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 366:	88 10                	mov    %dl,(%eax)

    // Verify that the pages pointed by the ptr is evicted
    int retval = getpgtable(pt_entries, heap_pages_num + 1, 0);
 368:	8b 45 9c             	mov    -0x64(%ebp),%eax
 36b:	83 c0 01             	add    $0x1,%eax
 36e:	83 ec 04             	sub    $0x4,%esp
 371:	6a 00                	push   $0x0
 373:	50                   	push   %eax
 374:	ff 75 a4             	pushl  -0x5c(%ebp)
 377:	e8 ca 04 00 00       	call   846 <getpgtable>
 37c:	83 c4 10             	add    $0x10,%esp
 37f:	89 45 90             	mov    %eax,-0x70(%ebp)
    if (retval == heap_pages_num + 1) {
 382:	8b 45 9c             	mov    -0x64(%ebp),%eax
 385:	83 c0 01             	add    $0x1,%eax
 388:	39 45 90             	cmp    %eax,-0x70(%ebp)
 38b:	0f 85 78 01 00 00    	jne    509 <main+0x49a>
      for (int i = 0; i < retval; i++) {
 391:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 398:	e9 5e 01 00 00       	jmp    4fb <main+0x48c>
              i,
              pt_entries[i].pdx,
              pt_entries[i].ptx,
              pt_entries[i].writable,
              pt_entries[i].encrypted,
              pt_entries[i].ref
 39d:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 3a0:	8b 55 dc             	mov    -0x24(%ebp),%edx
 3a3:	0f b6 44 d0 07       	movzbl 0x7(%eax,%edx,8),%eax
 3a8:	83 e0 01             	and    $0x1,%eax
          printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, writable bit: %d, encrypted: %d, ref: %d\n", 
 3ab:	0f b6 f0             	movzbl %al,%esi
              pt_entries[i].encrypted,
 3ae:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 3b1:	8b 55 dc             	mov    -0x24(%ebp),%edx
 3b4:	0f b6 44 d0 06       	movzbl 0x6(%eax,%edx,8),%eax
 3b9:	c0 e8 07             	shr    $0x7,%al
          printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, writable bit: %d, encrypted: %d, ref: %d\n", 
 3bc:	0f b6 d8             	movzbl %al,%ebx
              pt_entries[i].writable,
 3bf:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 3c2:	8b 55 dc             	mov    -0x24(%ebp),%edx
 3c5:	0f b6 44 d0 06       	movzbl 0x6(%eax,%edx,8),%eax
 3ca:	c0 e8 05             	shr    $0x5,%al
 3cd:	83 e0 01             	and    $0x1,%eax
          printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, writable bit: %d, encrypted: %d, ref: %d\n", 
 3d0:	0f b6 c8             	movzbl %al,%ecx
              pt_entries[i].ptx,
 3d3:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 3d6:	8b 55 dc             	mov    -0x24(%ebp),%edx
 3d9:	8b 04 d0             	mov    (%eax,%edx,8),%eax
 3dc:	c1 e8 0a             	shr    $0xa,%eax
 3df:	66 25 ff 03          	and    $0x3ff,%ax
          printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, writable bit: %d, encrypted: %d, ref: %d\n", 
 3e3:	0f b7 d0             	movzwl %ax,%edx
              pt_entries[i].pdx,
 3e6:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 3e9:	8b 7d dc             	mov    -0x24(%ebp),%edi
 3ec:	0f b7 04 f8          	movzwl (%eax,%edi,8),%eax
 3f0:	66 25 ff 03          	and    $0x3ff,%ax
          printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, writable bit: %d, encrypted: %d, ref: %d\n", 
 3f4:	0f b7 c0             	movzwl %ax,%eax
 3f7:	56                   	push   %esi
 3f8:	53                   	push   %ebx
 3f9:	51                   	push   %ecx
 3fa:	52                   	push   %edx
 3fb:	50                   	push   %eax
 3fc:	ff 75 dc             	pushl  -0x24(%ebp)
 3ff:	68 9c 0d 00 00       	push   $0xd9c
 404:	6a 01                	push   $0x1
 406:	e8 27 05 00 00       	call   932 <printf>
 40b:	83 c4 20             	add    $0x20,%esp
          ); 
          
          uint expected = 0xAA;
 40e:	c7 45 e0 aa 00 00 00 	movl   $0xaa,-0x20(%ebp)
          if (pt_entries[i].encrypted)
 415:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 418:	8b 55 dc             	mov    -0x24(%ebp),%edx
 41b:	0f b6 44 d0 06       	movzbl 0x6(%eax,%edx,8),%eax
 420:	c0 e8 07             	shr    $0x7,%al
 423:	84 c0                	test   %al,%al
 425:	74 07                	je     42e <main+0x3bf>
            expected = ~0xAA;
 427:	c7 45 e0 55 ff ff ff 	movl   $0xffffff55,-0x20(%ebp)

          if (dump_rawphymem(pt_entries[i].ppage * PGSIZE, buffer) != 0)
 42e:	8b 45 a4             	mov    -0x5c(%ebp),%eax
 431:	8b 55 dc             	mov    -0x24(%ebp),%edx
 434:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 438:	25 ff ff 0f 00       	and    $0xfffff,%eax
 43d:	c1 e0 0c             	shl    $0xc,%eax
 440:	83 ec 08             	sub    $0x8,%esp
 443:	ff 75 b4             	pushl  -0x4c(%ebp)
 446:	50                   	push   %eax
 447:	e8 02 04 00 00       	call   84e <dump_rawphymem>
 44c:	83 c4 10             	add    $0x10,%esp
 44f:	85 c0                	test   %eax,%eax
 451:	74 10                	je     463 <main+0x3f4>
              err("dump_rawphymem return non-zero value\n");
 453:	83 ec 0c             	sub    $0xc,%esp
 456:	68 f8 0d 00 00       	push   $0xdf8
 45b:	e8 a0 fb ff ff       	call   0 <err>
 460:	83 c4 10             	add    $0x10,%esp
          
          for (int j = 0; j < PGSIZE; j++) {
 463:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 46a:	eb 7e                	jmp    4ea <main+0x47b>
              if (buffer[j] != (char)expected) {
 46c:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 46f:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 472:	01 d0                	add    %edx,%eax
 474:	0f b6 00             	movzbl (%eax),%eax
 477:	8b 55 e0             	mov    -0x20(%ebp),%edx
 47a:	38 d0                	cmp    %dl,%al
 47c:	74 68                	je     4e6 <main+0x477>
                  // err("physical memory is dumped incorrectly\n");
                    printf(1, "XV6_TEST_OUTPUT: content is incorrect at address 0x%x: expected 0x%x, got 0x%x\n", ((uint)(pt_entries[i].pdx) << 22 | (pt_entries[i].ptx) << 12) + j ,expected & 0xFF, buffer[j] & 0xFF);
 47e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 481:	8b 45 b4             	mov    -0x4c(%ebp),%eax
 484:	01 d0                	add    %edx,%eax
 486:	0f b6 00             	movzbl (%eax),%eax
 489:	0f be c0             	movsbl %al,%eax
 48c:	0f b6 d0             	movzbl %al,%edx
 48f:	8b 45 e0             	mov    -0x20(%ebp),%eax
 492:	0f b6 c0             	movzbl %al,%eax
 495:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
 498:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 49b:	0f b7 0c d9          	movzwl (%ecx,%ebx,8),%ecx
 49f:	66 81 e1 ff 03       	and    $0x3ff,%cx
 4a4:	0f b7 c9             	movzwl %cx,%ecx
 4a7:	89 ce                	mov    %ecx,%esi
 4a9:	c1 e6 16             	shl    $0x16,%esi
 4ac:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
 4af:	8b 5d dc             	mov    -0x24(%ebp),%ebx
 4b2:	8b 0c d9             	mov    (%ecx,%ebx,8),%ecx
 4b5:	c1 e9 0a             	shr    $0xa,%ecx
 4b8:	66 81 e1 ff 03       	and    $0x3ff,%cx
 4bd:	0f b7 c9             	movzwl %cx,%ecx
 4c0:	c1 e1 0c             	shl    $0xc,%ecx
 4c3:	89 f3                	mov    %esi,%ebx
 4c5:	09 cb                	or     %ecx,%ebx
 4c7:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
 4ca:	01 d9                	add    %ebx,%ecx
 4cc:	83 ec 0c             	sub    $0xc,%esp
 4cf:	52                   	push   %edx
 4d0:	50                   	push   %eax
 4d1:	51                   	push   %ecx
 4d2:	68 20 0e 00 00       	push   $0xe20
 4d7:	6a 01                	push   $0x1
 4d9:	e8 54 04 00 00       	call   932 <printf>
 4de:	83 c4 20             	add    $0x20,%esp
                    exit();
 4e1:	e8 b8 02 00 00       	call   79e <exit>
          for (int j = 0; j < PGSIZE; j++) {
 4e6:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 4ea:	81 7d e4 ff 0f 00 00 	cmpl   $0xfff,-0x1c(%ebp)
 4f1:	0f 8e 75 ff ff ff    	jle    46c <main+0x3fd>
      for (int i = 0; i < retval; i++) {
 4f7:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 4fb:	8b 45 dc             	mov    -0x24(%ebp),%eax
 4fe:	3b 45 90             	cmp    -0x70(%ebp),%eax
 501:	0f 8c 96 fe ff ff    	jl     39d <main+0x32e>
 507:	eb 15                	jmp    51e <main+0x4af>
              }
          }

      }
    } else
        printf(1, "XV6_TEST_OUTPUT: getpgtable returned incorrect value: expected %d, got %d\n", heap_pages_num, retval);
 509:	ff 75 90             	pushl  -0x70(%ebp)
 50c:	ff 75 9c             	pushl  -0x64(%ebp)
 50f:	68 70 0e 00 00       	push   $0xe70
 514:	6a 01                	push   $0x1
 516:	e8 17 04 00 00       	call   932 <printf>
 51b:	83 c4 10             	add    $0x10,%esp
    
    exit();
 51e:	e8 7b 02 00 00       	call   79e <exit>

00000523 <stosb>:
 523:	55                   	push   %ebp
 524:	89 e5                	mov    %esp,%ebp
 526:	57                   	push   %edi
 527:	53                   	push   %ebx
 528:	8b 4d 08             	mov    0x8(%ebp),%ecx
 52b:	8b 55 10             	mov    0x10(%ebp),%edx
 52e:	8b 45 0c             	mov    0xc(%ebp),%eax
 531:	89 cb                	mov    %ecx,%ebx
 533:	89 df                	mov    %ebx,%edi
 535:	89 d1                	mov    %edx,%ecx
 537:	fc                   	cld    
 538:	f3 aa                	rep stos %al,%es:(%edi)
 53a:	89 ca                	mov    %ecx,%edx
 53c:	89 fb                	mov    %edi,%ebx
 53e:	89 5d 08             	mov    %ebx,0x8(%ebp)
 541:	89 55 10             	mov    %edx,0x10(%ebp)
 544:	90                   	nop
 545:	5b                   	pop    %ebx
 546:	5f                   	pop    %edi
 547:	5d                   	pop    %ebp
 548:	c3                   	ret    

00000549 <strcpy>:
 549:	f3 0f 1e fb          	endbr32 
 54d:	55                   	push   %ebp
 54e:	89 e5                	mov    %esp,%ebp
 550:	83 ec 10             	sub    $0x10,%esp
 553:	8b 45 08             	mov    0x8(%ebp),%eax
 556:	89 45 fc             	mov    %eax,-0x4(%ebp)
 559:	90                   	nop
 55a:	8b 55 0c             	mov    0xc(%ebp),%edx
 55d:	8d 42 01             	lea    0x1(%edx),%eax
 560:	89 45 0c             	mov    %eax,0xc(%ebp)
 563:	8b 45 08             	mov    0x8(%ebp),%eax
 566:	8d 48 01             	lea    0x1(%eax),%ecx
 569:	89 4d 08             	mov    %ecx,0x8(%ebp)
 56c:	0f b6 12             	movzbl (%edx),%edx
 56f:	88 10                	mov    %dl,(%eax)
 571:	0f b6 00             	movzbl (%eax),%eax
 574:	84 c0                	test   %al,%al
 576:	75 e2                	jne    55a <strcpy+0x11>
 578:	8b 45 fc             	mov    -0x4(%ebp),%eax
 57b:	c9                   	leave  
 57c:	c3                   	ret    

0000057d <strcmp>:
 57d:	f3 0f 1e fb          	endbr32 
 581:	55                   	push   %ebp
 582:	89 e5                	mov    %esp,%ebp
 584:	eb 08                	jmp    58e <strcmp+0x11>
 586:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 58a:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
 58e:	8b 45 08             	mov    0x8(%ebp),%eax
 591:	0f b6 00             	movzbl (%eax),%eax
 594:	84 c0                	test   %al,%al
 596:	74 10                	je     5a8 <strcmp+0x2b>
 598:	8b 45 08             	mov    0x8(%ebp),%eax
 59b:	0f b6 10             	movzbl (%eax),%edx
 59e:	8b 45 0c             	mov    0xc(%ebp),%eax
 5a1:	0f b6 00             	movzbl (%eax),%eax
 5a4:	38 c2                	cmp    %al,%dl
 5a6:	74 de                	je     586 <strcmp+0x9>
 5a8:	8b 45 08             	mov    0x8(%ebp),%eax
 5ab:	0f b6 00             	movzbl (%eax),%eax
 5ae:	0f b6 d0             	movzbl %al,%edx
 5b1:	8b 45 0c             	mov    0xc(%ebp),%eax
 5b4:	0f b6 00             	movzbl (%eax),%eax
 5b7:	0f b6 c0             	movzbl %al,%eax
 5ba:	29 c2                	sub    %eax,%edx
 5bc:	89 d0                	mov    %edx,%eax
 5be:	5d                   	pop    %ebp
 5bf:	c3                   	ret    

000005c0 <strlen>:
 5c0:	f3 0f 1e fb          	endbr32 
 5c4:	55                   	push   %ebp
 5c5:	89 e5                	mov    %esp,%ebp
 5c7:	83 ec 10             	sub    $0x10,%esp
 5ca:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 5d1:	eb 04                	jmp    5d7 <strlen+0x17>
 5d3:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 5d7:	8b 55 fc             	mov    -0x4(%ebp),%edx
 5da:	8b 45 08             	mov    0x8(%ebp),%eax
 5dd:	01 d0                	add    %edx,%eax
 5df:	0f b6 00             	movzbl (%eax),%eax
 5e2:	84 c0                	test   %al,%al
 5e4:	75 ed                	jne    5d3 <strlen+0x13>
 5e6:	8b 45 fc             	mov    -0x4(%ebp),%eax
 5e9:	c9                   	leave  
 5ea:	c3                   	ret    

000005eb <memset>:
 5eb:	f3 0f 1e fb          	endbr32 
 5ef:	55                   	push   %ebp
 5f0:	89 e5                	mov    %esp,%ebp
 5f2:	8b 45 10             	mov    0x10(%ebp),%eax
 5f5:	50                   	push   %eax
 5f6:	ff 75 0c             	pushl  0xc(%ebp)
 5f9:	ff 75 08             	pushl  0x8(%ebp)
 5fc:	e8 22 ff ff ff       	call   523 <stosb>
 601:	83 c4 0c             	add    $0xc,%esp
 604:	8b 45 08             	mov    0x8(%ebp),%eax
 607:	c9                   	leave  
 608:	c3                   	ret    

00000609 <strchr>:
 609:	f3 0f 1e fb          	endbr32 
 60d:	55                   	push   %ebp
 60e:	89 e5                	mov    %esp,%ebp
 610:	83 ec 04             	sub    $0x4,%esp
 613:	8b 45 0c             	mov    0xc(%ebp),%eax
 616:	88 45 fc             	mov    %al,-0x4(%ebp)
 619:	eb 14                	jmp    62f <strchr+0x26>
 61b:	8b 45 08             	mov    0x8(%ebp),%eax
 61e:	0f b6 00             	movzbl (%eax),%eax
 621:	38 45 fc             	cmp    %al,-0x4(%ebp)
 624:	75 05                	jne    62b <strchr+0x22>
 626:	8b 45 08             	mov    0x8(%ebp),%eax
 629:	eb 13                	jmp    63e <strchr+0x35>
 62b:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 62f:	8b 45 08             	mov    0x8(%ebp),%eax
 632:	0f b6 00             	movzbl (%eax),%eax
 635:	84 c0                	test   %al,%al
 637:	75 e2                	jne    61b <strchr+0x12>
 639:	b8 00 00 00 00       	mov    $0x0,%eax
 63e:	c9                   	leave  
 63f:	c3                   	ret    

00000640 <gets>:
 640:	f3 0f 1e fb          	endbr32 
 644:	55                   	push   %ebp
 645:	89 e5                	mov    %esp,%ebp
 647:	83 ec 18             	sub    $0x18,%esp
 64a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 651:	eb 42                	jmp    695 <gets+0x55>
 653:	83 ec 04             	sub    $0x4,%esp
 656:	6a 01                	push   $0x1
 658:	8d 45 ef             	lea    -0x11(%ebp),%eax
 65b:	50                   	push   %eax
 65c:	6a 00                	push   $0x0
 65e:	e8 53 01 00 00       	call   7b6 <read>
 663:	83 c4 10             	add    $0x10,%esp
 666:	89 45 f0             	mov    %eax,-0x10(%ebp)
 669:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 66d:	7e 33                	jle    6a2 <gets+0x62>
 66f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 672:	8d 50 01             	lea    0x1(%eax),%edx
 675:	89 55 f4             	mov    %edx,-0xc(%ebp)
 678:	89 c2                	mov    %eax,%edx
 67a:	8b 45 08             	mov    0x8(%ebp),%eax
 67d:	01 c2                	add    %eax,%edx
 67f:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 683:	88 02                	mov    %al,(%edx)
 685:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 689:	3c 0a                	cmp    $0xa,%al
 68b:	74 16                	je     6a3 <gets+0x63>
 68d:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 691:	3c 0d                	cmp    $0xd,%al
 693:	74 0e                	je     6a3 <gets+0x63>
 695:	8b 45 f4             	mov    -0xc(%ebp),%eax
 698:	83 c0 01             	add    $0x1,%eax
 69b:	39 45 0c             	cmp    %eax,0xc(%ebp)
 69e:	7f b3                	jg     653 <gets+0x13>
 6a0:	eb 01                	jmp    6a3 <gets+0x63>
 6a2:	90                   	nop
 6a3:	8b 55 f4             	mov    -0xc(%ebp),%edx
 6a6:	8b 45 08             	mov    0x8(%ebp),%eax
 6a9:	01 d0                	add    %edx,%eax
 6ab:	c6 00 00             	movb   $0x0,(%eax)
 6ae:	8b 45 08             	mov    0x8(%ebp),%eax
 6b1:	c9                   	leave  
 6b2:	c3                   	ret    

000006b3 <stat>:
 6b3:	f3 0f 1e fb          	endbr32 
 6b7:	55                   	push   %ebp
 6b8:	89 e5                	mov    %esp,%ebp
 6ba:	83 ec 18             	sub    $0x18,%esp
 6bd:	83 ec 08             	sub    $0x8,%esp
 6c0:	6a 00                	push   $0x0
 6c2:	ff 75 08             	pushl  0x8(%ebp)
 6c5:	e8 14 01 00 00       	call   7de <open>
 6ca:	83 c4 10             	add    $0x10,%esp
 6cd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 6d0:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 6d4:	79 07                	jns    6dd <stat+0x2a>
 6d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 6db:	eb 25                	jmp    702 <stat+0x4f>
 6dd:	83 ec 08             	sub    $0x8,%esp
 6e0:	ff 75 0c             	pushl  0xc(%ebp)
 6e3:	ff 75 f4             	pushl  -0xc(%ebp)
 6e6:	e8 0b 01 00 00       	call   7f6 <fstat>
 6eb:	83 c4 10             	add    $0x10,%esp
 6ee:	89 45 f0             	mov    %eax,-0x10(%ebp)
 6f1:	83 ec 0c             	sub    $0xc,%esp
 6f4:	ff 75 f4             	pushl  -0xc(%ebp)
 6f7:	e8 ca 00 00 00       	call   7c6 <close>
 6fc:	83 c4 10             	add    $0x10,%esp
 6ff:	8b 45 f0             	mov    -0x10(%ebp),%eax
 702:	c9                   	leave  
 703:	c3                   	ret    

00000704 <atoi>:
 704:	f3 0f 1e fb          	endbr32 
 708:	55                   	push   %ebp
 709:	89 e5                	mov    %esp,%ebp
 70b:	83 ec 10             	sub    $0x10,%esp
 70e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 715:	eb 25                	jmp    73c <atoi+0x38>
 717:	8b 55 fc             	mov    -0x4(%ebp),%edx
 71a:	89 d0                	mov    %edx,%eax
 71c:	c1 e0 02             	shl    $0x2,%eax
 71f:	01 d0                	add    %edx,%eax
 721:	01 c0                	add    %eax,%eax
 723:	89 c1                	mov    %eax,%ecx
 725:	8b 45 08             	mov    0x8(%ebp),%eax
 728:	8d 50 01             	lea    0x1(%eax),%edx
 72b:	89 55 08             	mov    %edx,0x8(%ebp)
 72e:	0f b6 00             	movzbl (%eax),%eax
 731:	0f be c0             	movsbl %al,%eax
 734:	01 c8                	add    %ecx,%eax
 736:	83 e8 30             	sub    $0x30,%eax
 739:	89 45 fc             	mov    %eax,-0x4(%ebp)
 73c:	8b 45 08             	mov    0x8(%ebp),%eax
 73f:	0f b6 00             	movzbl (%eax),%eax
 742:	3c 2f                	cmp    $0x2f,%al
 744:	7e 0a                	jle    750 <atoi+0x4c>
 746:	8b 45 08             	mov    0x8(%ebp),%eax
 749:	0f b6 00             	movzbl (%eax),%eax
 74c:	3c 39                	cmp    $0x39,%al
 74e:	7e c7                	jle    717 <atoi+0x13>
 750:	8b 45 fc             	mov    -0x4(%ebp),%eax
 753:	c9                   	leave  
 754:	c3                   	ret    

00000755 <memmove>:
 755:	f3 0f 1e fb          	endbr32 
 759:	55                   	push   %ebp
 75a:	89 e5                	mov    %esp,%ebp
 75c:	83 ec 10             	sub    $0x10,%esp
 75f:	8b 45 08             	mov    0x8(%ebp),%eax
 762:	89 45 fc             	mov    %eax,-0x4(%ebp)
 765:	8b 45 0c             	mov    0xc(%ebp),%eax
 768:	89 45 f8             	mov    %eax,-0x8(%ebp)
 76b:	eb 17                	jmp    784 <memmove+0x2f>
 76d:	8b 55 f8             	mov    -0x8(%ebp),%edx
 770:	8d 42 01             	lea    0x1(%edx),%eax
 773:	89 45 f8             	mov    %eax,-0x8(%ebp)
 776:	8b 45 fc             	mov    -0x4(%ebp),%eax
 779:	8d 48 01             	lea    0x1(%eax),%ecx
 77c:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 77f:	0f b6 12             	movzbl (%edx),%edx
 782:	88 10                	mov    %dl,(%eax)
 784:	8b 45 10             	mov    0x10(%ebp),%eax
 787:	8d 50 ff             	lea    -0x1(%eax),%edx
 78a:	89 55 10             	mov    %edx,0x10(%ebp)
 78d:	85 c0                	test   %eax,%eax
 78f:	7f dc                	jg     76d <memmove+0x18>
 791:	8b 45 08             	mov    0x8(%ebp),%eax
 794:	c9                   	leave  
 795:	c3                   	ret    

00000796 <fork>:
 796:	b8 01 00 00 00       	mov    $0x1,%eax
 79b:	cd 40                	int    $0x40
 79d:	c3                   	ret    

0000079e <exit>:
 79e:	b8 02 00 00 00       	mov    $0x2,%eax
 7a3:	cd 40                	int    $0x40
 7a5:	c3                   	ret    

000007a6 <wait>:
 7a6:	b8 03 00 00 00       	mov    $0x3,%eax
 7ab:	cd 40                	int    $0x40
 7ad:	c3                   	ret    

000007ae <pipe>:
 7ae:	b8 04 00 00 00       	mov    $0x4,%eax
 7b3:	cd 40                	int    $0x40
 7b5:	c3                   	ret    

000007b6 <read>:
 7b6:	b8 05 00 00 00       	mov    $0x5,%eax
 7bb:	cd 40                	int    $0x40
 7bd:	c3                   	ret    

000007be <write>:
 7be:	b8 10 00 00 00       	mov    $0x10,%eax
 7c3:	cd 40                	int    $0x40
 7c5:	c3                   	ret    

000007c6 <close>:
 7c6:	b8 15 00 00 00       	mov    $0x15,%eax
 7cb:	cd 40                	int    $0x40
 7cd:	c3                   	ret    

000007ce <kill>:
 7ce:	b8 06 00 00 00       	mov    $0x6,%eax
 7d3:	cd 40                	int    $0x40
 7d5:	c3                   	ret    

000007d6 <exec>:
 7d6:	b8 07 00 00 00       	mov    $0x7,%eax
 7db:	cd 40                	int    $0x40
 7dd:	c3                   	ret    

000007de <open>:
 7de:	b8 0f 00 00 00       	mov    $0xf,%eax
 7e3:	cd 40                	int    $0x40
 7e5:	c3                   	ret    

000007e6 <mknod>:
 7e6:	b8 11 00 00 00       	mov    $0x11,%eax
 7eb:	cd 40                	int    $0x40
 7ed:	c3                   	ret    

000007ee <unlink>:
 7ee:	b8 12 00 00 00       	mov    $0x12,%eax
 7f3:	cd 40                	int    $0x40
 7f5:	c3                   	ret    

000007f6 <fstat>:
 7f6:	b8 08 00 00 00       	mov    $0x8,%eax
 7fb:	cd 40                	int    $0x40
 7fd:	c3                   	ret    

000007fe <link>:
 7fe:	b8 13 00 00 00       	mov    $0x13,%eax
 803:	cd 40                	int    $0x40
 805:	c3                   	ret    

00000806 <mkdir>:
 806:	b8 14 00 00 00       	mov    $0x14,%eax
 80b:	cd 40                	int    $0x40
 80d:	c3                   	ret    

0000080e <chdir>:
 80e:	b8 09 00 00 00       	mov    $0x9,%eax
 813:	cd 40                	int    $0x40
 815:	c3                   	ret    

00000816 <dup>:
 816:	b8 0a 00 00 00       	mov    $0xa,%eax
 81b:	cd 40                	int    $0x40
 81d:	c3                   	ret    

0000081e <getpid>:
 81e:	b8 0b 00 00 00       	mov    $0xb,%eax
 823:	cd 40                	int    $0x40
 825:	c3                   	ret    

00000826 <sbrk>:
 826:	b8 0c 00 00 00       	mov    $0xc,%eax
 82b:	cd 40                	int    $0x40
 82d:	c3                   	ret    

0000082e <sleep>:
 82e:	b8 0d 00 00 00       	mov    $0xd,%eax
 833:	cd 40                	int    $0x40
 835:	c3                   	ret    

00000836 <uptime>:
 836:	b8 0e 00 00 00       	mov    $0xe,%eax
 83b:	cd 40                	int    $0x40
 83d:	c3                   	ret    

0000083e <mencrypt>:
 83e:	b8 16 00 00 00       	mov    $0x16,%eax
 843:	cd 40                	int    $0x40
 845:	c3                   	ret    

00000846 <getpgtable>:
 846:	b8 17 00 00 00       	mov    $0x17,%eax
 84b:	cd 40                	int    $0x40
 84d:	c3                   	ret    

0000084e <dump_rawphymem>:
 84e:	b8 18 00 00 00       	mov    $0x18,%eax
 853:	cd 40                	int    $0x40
 855:	c3                   	ret    

00000856 <putc>:
 856:	f3 0f 1e fb          	endbr32 
 85a:	55                   	push   %ebp
 85b:	89 e5                	mov    %esp,%ebp
 85d:	83 ec 18             	sub    $0x18,%esp
 860:	8b 45 0c             	mov    0xc(%ebp),%eax
 863:	88 45 f4             	mov    %al,-0xc(%ebp)
 866:	83 ec 04             	sub    $0x4,%esp
 869:	6a 01                	push   $0x1
 86b:	8d 45 f4             	lea    -0xc(%ebp),%eax
 86e:	50                   	push   %eax
 86f:	ff 75 08             	pushl  0x8(%ebp)
 872:	e8 47 ff ff ff       	call   7be <write>
 877:	83 c4 10             	add    $0x10,%esp
 87a:	90                   	nop
 87b:	c9                   	leave  
 87c:	c3                   	ret    

0000087d <printint>:
 87d:	f3 0f 1e fb          	endbr32 
 881:	55                   	push   %ebp
 882:	89 e5                	mov    %esp,%ebp
 884:	83 ec 28             	sub    $0x28,%esp
 887:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 88e:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 892:	74 17                	je     8ab <printint+0x2e>
 894:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 898:	79 11                	jns    8ab <printint+0x2e>
 89a:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8a1:	8b 45 0c             	mov    0xc(%ebp),%eax
 8a4:	f7 d8                	neg    %eax
 8a6:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8a9:	eb 06                	jmp    8b1 <printint+0x34>
 8ab:	8b 45 0c             	mov    0xc(%ebp),%eax
 8ae:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8b1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8b8:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8be:	ba 00 00 00 00       	mov    $0x0,%edx
 8c3:	f7 f1                	div    %ecx
 8c5:	89 d1                	mov    %edx,%ecx
 8c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8ca:	8d 50 01             	lea    0x1(%eax),%edx
 8cd:	89 55 f4             	mov    %edx,-0xc(%ebp)
 8d0:	0f b6 91 50 11 00 00 	movzbl 0x1150(%ecx),%edx
 8d7:	88 54 05 dc          	mov    %dl,-0x24(%ebp,%eax,1)
 8db:	8b 4d 10             	mov    0x10(%ebp),%ecx
 8de:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8e1:	ba 00 00 00 00       	mov    $0x0,%edx
 8e6:	f7 f1                	div    %ecx
 8e8:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8eb:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8ef:	75 c7                	jne    8b8 <printint+0x3b>
 8f1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8f5:	74 2d                	je     924 <printint+0xa7>
 8f7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8fa:	8d 50 01             	lea    0x1(%eax),%edx
 8fd:	89 55 f4             	mov    %edx,-0xc(%ebp)
 900:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)
 905:	eb 1d                	jmp    924 <printint+0xa7>
 907:	8d 55 dc             	lea    -0x24(%ebp),%edx
 90a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 90d:	01 d0                	add    %edx,%eax
 90f:	0f b6 00             	movzbl (%eax),%eax
 912:	0f be c0             	movsbl %al,%eax
 915:	83 ec 08             	sub    $0x8,%esp
 918:	50                   	push   %eax
 919:	ff 75 08             	pushl  0x8(%ebp)
 91c:	e8 35 ff ff ff       	call   856 <putc>
 921:	83 c4 10             	add    $0x10,%esp
 924:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 928:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 92c:	79 d9                	jns    907 <printint+0x8a>
 92e:	90                   	nop
 92f:	90                   	nop
 930:	c9                   	leave  
 931:	c3                   	ret    

00000932 <printf>:
 932:	f3 0f 1e fb          	endbr32 
 936:	55                   	push   %ebp
 937:	89 e5                	mov    %esp,%ebp
 939:	83 ec 28             	sub    $0x28,%esp
 93c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 943:	8d 45 0c             	lea    0xc(%ebp),%eax
 946:	83 c0 04             	add    $0x4,%eax
 949:	89 45 e8             	mov    %eax,-0x18(%ebp)
 94c:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 953:	e9 59 01 00 00       	jmp    ab1 <printf+0x17f>
 958:	8b 55 0c             	mov    0xc(%ebp),%edx
 95b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 95e:	01 d0                	add    %edx,%eax
 960:	0f b6 00             	movzbl (%eax),%eax
 963:	0f be c0             	movsbl %al,%eax
 966:	25 ff 00 00 00       	and    $0xff,%eax
 96b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 96e:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 972:	75 2c                	jne    9a0 <printf+0x6e>
 974:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 978:	75 0c                	jne    986 <printf+0x54>
 97a:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 981:	e9 27 01 00 00       	jmp    aad <printf+0x17b>
 986:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 989:	0f be c0             	movsbl %al,%eax
 98c:	83 ec 08             	sub    $0x8,%esp
 98f:	50                   	push   %eax
 990:	ff 75 08             	pushl  0x8(%ebp)
 993:	e8 be fe ff ff       	call   856 <putc>
 998:	83 c4 10             	add    $0x10,%esp
 99b:	e9 0d 01 00 00       	jmp    aad <printf+0x17b>
 9a0:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 9a4:	0f 85 03 01 00 00    	jne    aad <printf+0x17b>
 9aa:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 9ae:	75 1e                	jne    9ce <printf+0x9c>
 9b0:	8b 45 e8             	mov    -0x18(%ebp),%eax
 9b3:	8b 00                	mov    (%eax),%eax
 9b5:	6a 01                	push   $0x1
 9b7:	6a 0a                	push   $0xa
 9b9:	50                   	push   %eax
 9ba:	ff 75 08             	pushl  0x8(%ebp)
 9bd:	e8 bb fe ff ff       	call   87d <printint>
 9c2:	83 c4 10             	add    $0x10,%esp
 9c5:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 9c9:	e9 d8 00 00 00       	jmp    aa6 <printf+0x174>
 9ce:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 9d2:	74 06                	je     9da <printf+0xa8>
 9d4:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 9d8:	75 1e                	jne    9f8 <printf+0xc6>
 9da:	8b 45 e8             	mov    -0x18(%ebp),%eax
 9dd:	8b 00                	mov    (%eax),%eax
 9df:	6a 00                	push   $0x0
 9e1:	6a 10                	push   $0x10
 9e3:	50                   	push   %eax
 9e4:	ff 75 08             	pushl  0x8(%ebp)
 9e7:	e8 91 fe ff ff       	call   87d <printint>
 9ec:	83 c4 10             	add    $0x10,%esp
 9ef:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 9f3:	e9 ae 00 00 00       	jmp    aa6 <printf+0x174>
 9f8:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 9fc:	75 43                	jne    a41 <printf+0x10f>
 9fe:	8b 45 e8             	mov    -0x18(%ebp),%eax
 a01:	8b 00                	mov    (%eax),%eax
 a03:	89 45 f4             	mov    %eax,-0xc(%ebp)
 a06:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 a0a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 a0e:	75 25                	jne    a35 <printf+0x103>
 a10:	c7 45 f4 bb 0e 00 00 	movl   $0xebb,-0xc(%ebp)
 a17:	eb 1c                	jmp    a35 <printf+0x103>
 a19:	8b 45 f4             	mov    -0xc(%ebp),%eax
 a1c:	0f b6 00             	movzbl (%eax),%eax
 a1f:	0f be c0             	movsbl %al,%eax
 a22:	83 ec 08             	sub    $0x8,%esp
 a25:	50                   	push   %eax
 a26:	ff 75 08             	pushl  0x8(%ebp)
 a29:	e8 28 fe ff ff       	call   856 <putc>
 a2e:	83 c4 10             	add    $0x10,%esp
 a31:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 a35:	8b 45 f4             	mov    -0xc(%ebp),%eax
 a38:	0f b6 00             	movzbl (%eax),%eax
 a3b:	84 c0                	test   %al,%al
 a3d:	75 da                	jne    a19 <printf+0xe7>
 a3f:	eb 65                	jmp    aa6 <printf+0x174>
 a41:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 a45:	75 1d                	jne    a64 <printf+0x132>
 a47:	8b 45 e8             	mov    -0x18(%ebp),%eax
 a4a:	8b 00                	mov    (%eax),%eax
 a4c:	0f be c0             	movsbl %al,%eax
 a4f:	83 ec 08             	sub    $0x8,%esp
 a52:	50                   	push   %eax
 a53:	ff 75 08             	pushl  0x8(%ebp)
 a56:	e8 fb fd ff ff       	call   856 <putc>
 a5b:	83 c4 10             	add    $0x10,%esp
 a5e:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 a62:	eb 42                	jmp    aa6 <printf+0x174>
 a64:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 a68:	75 17                	jne    a81 <printf+0x14f>
 a6a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 a6d:	0f be c0             	movsbl %al,%eax
 a70:	83 ec 08             	sub    $0x8,%esp
 a73:	50                   	push   %eax
 a74:	ff 75 08             	pushl  0x8(%ebp)
 a77:	e8 da fd ff ff       	call   856 <putc>
 a7c:	83 c4 10             	add    $0x10,%esp
 a7f:	eb 25                	jmp    aa6 <printf+0x174>
 a81:	83 ec 08             	sub    $0x8,%esp
 a84:	6a 25                	push   $0x25
 a86:	ff 75 08             	pushl  0x8(%ebp)
 a89:	e8 c8 fd ff ff       	call   856 <putc>
 a8e:	83 c4 10             	add    $0x10,%esp
 a91:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 a94:	0f be c0             	movsbl %al,%eax
 a97:	83 ec 08             	sub    $0x8,%esp
 a9a:	50                   	push   %eax
 a9b:	ff 75 08             	pushl  0x8(%ebp)
 a9e:	e8 b3 fd ff ff       	call   856 <putc>
 aa3:	83 c4 10             	add    $0x10,%esp
 aa6:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 aad:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 ab1:	8b 55 0c             	mov    0xc(%ebp),%edx
 ab4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 ab7:	01 d0                	add    %edx,%eax
 ab9:	0f b6 00             	movzbl (%eax),%eax
 abc:	84 c0                	test   %al,%al
 abe:	0f 85 94 fe ff ff    	jne    958 <printf+0x26>
 ac4:	90                   	nop
 ac5:	90                   	nop
 ac6:	c9                   	leave  
 ac7:	c3                   	ret    

00000ac8 <free>:
 ac8:	f3 0f 1e fb          	endbr32 
 acc:	55                   	push   %ebp
 acd:	89 e5                	mov    %esp,%ebp
 acf:	83 ec 10             	sub    $0x10,%esp
 ad2:	8b 45 08             	mov    0x8(%ebp),%eax
 ad5:	83 e8 08             	sub    $0x8,%eax
 ad8:	89 45 f8             	mov    %eax,-0x8(%ebp)
 adb:	a1 6c 11 00 00       	mov    0x116c,%eax
 ae0:	89 45 fc             	mov    %eax,-0x4(%ebp)
 ae3:	eb 24                	jmp    b09 <free+0x41>
 ae5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 ae8:	8b 00                	mov    (%eax),%eax
 aea:	39 45 fc             	cmp    %eax,-0x4(%ebp)
 aed:	72 12                	jb     b01 <free+0x39>
 aef:	8b 45 f8             	mov    -0x8(%ebp),%eax
 af2:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 af5:	77 24                	ja     b1b <free+0x53>
 af7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 afa:	8b 00                	mov    (%eax),%eax
 afc:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 aff:	72 1a                	jb     b1b <free+0x53>
 b01:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b04:	8b 00                	mov    (%eax),%eax
 b06:	89 45 fc             	mov    %eax,-0x4(%ebp)
 b09:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b0c:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 b0f:	76 d4                	jbe    ae5 <free+0x1d>
 b11:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b14:	8b 00                	mov    (%eax),%eax
 b16:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 b19:	73 ca                	jae    ae5 <free+0x1d>
 b1b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b1e:	8b 40 04             	mov    0x4(%eax),%eax
 b21:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 b28:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b2b:	01 c2                	add    %eax,%edx
 b2d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b30:	8b 00                	mov    (%eax),%eax
 b32:	39 c2                	cmp    %eax,%edx
 b34:	75 24                	jne    b5a <free+0x92>
 b36:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b39:	8b 50 04             	mov    0x4(%eax),%edx
 b3c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b3f:	8b 00                	mov    (%eax),%eax
 b41:	8b 40 04             	mov    0x4(%eax),%eax
 b44:	01 c2                	add    %eax,%edx
 b46:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b49:	89 50 04             	mov    %edx,0x4(%eax)
 b4c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b4f:	8b 00                	mov    (%eax),%eax
 b51:	8b 10                	mov    (%eax),%edx
 b53:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b56:	89 10                	mov    %edx,(%eax)
 b58:	eb 0a                	jmp    b64 <free+0x9c>
 b5a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b5d:	8b 10                	mov    (%eax),%edx
 b5f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b62:	89 10                	mov    %edx,(%eax)
 b64:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b67:	8b 40 04             	mov    0x4(%eax),%eax
 b6a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 b71:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b74:	01 d0                	add    %edx,%eax
 b76:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 b79:	75 20                	jne    b9b <free+0xd3>
 b7b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b7e:	8b 50 04             	mov    0x4(%eax),%edx
 b81:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b84:	8b 40 04             	mov    0x4(%eax),%eax
 b87:	01 c2                	add    %eax,%edx
 b89:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b8c:	89 50 04             	mov    %edx,0x4(%eax)
 b8f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 b92:	8b 10                	mov    (%eax),%edx
 b94:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b97:	89 10                	mov    %edx,(%eax)
 b99:	eb 08                	jmp    ba3 <free+0xdb>
 b9b:	8b 45 fc             	mov    -0x4(%ebp),%eax
 b9e:	8b 55 f8             	mov    -0x8(%ebp),%edx
 ba1:	89 10                	mov    %edx,(%eax)
 ba3:	8b 45 fc             	mov    -0x4(%ebp),%eax
 ba6:	a3 6c 11 00 00       	mov    %eax,0x116c
 bab:	90                   	nop
 bac:	c9                   	leave  
 bad:	c3                   	ret    

00000bae <morecore>:
 bae:	f3 0f 1e fb          	endbr32 
 bb2:	55                   	push   %ebp
 bb3:	89 e5                	mov    %esp,%ebp
 bb5:	83 ec 18             	sub    $0x18,%esp
 bb8:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 bbf:	77 07                	ja     bc8 <morecore+0x1a>
 bc1:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
 bc8:	8b 45 08             	mov    0x8(%ebp),%eax
 bcb:	c1 e0 03             	shl    $0x3,%eax
 bce:	83 ec 0c             	sub    $0xc,%esp
 bd1:	50                   	push   %eax
 bd2:	e8 4f fc ff ff       	call   826 <sbrk>
 bd7:	83 c4 10             	add    $0x10,%esp
 bda:	89 45 f4             	mov    %eax,-0xc(%ebp)
 bdd:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 be1:	75 07                	jne    bea <morecore+0x3c>
 be3:	b8 00 00 00 00       	mov    $0x0,%eax
 be8:	eb 26                	jmp    c10 <morecore+0x62>
 bea:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bed:	89 45 f0             	mov    %eax,-0x10(%ebp)
 bf0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 bf3:	8b 55 08             	mov    0x8(%ebp),%edx
 bf6:	89 50 04             	mov    %edx,0x4(%eax)
 bf9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 bfc:	83 c0 08             	add    $0x8,%eax
 bff:	83 ec 0c             	sub    $0xc,%esp
 c02:	50                   	push   %eax
 c03:	e8 c0 fe ff ff       	call   ac8 <free>
 c08:	83 c4 10             	add    $0x10,%esp
 c0b:	a1 6c 11 00 00       	mov    0x116c,%eax
 c10:	c9                   	leave  
 c11:	c3                   	ret    

00000c12 <malloc>:
 c12:	f3 0f 1e fb          	endbr32 
 c16:	55                   	push   %ebp
 c17:	89 e5                	mov    %esp,%ebp
 c19:	83 ec 18             	sub    $0x18,%esp
 c1c:	8b 45 08             	mov    0x8(%ebp),%eax
 c1f:	83 c0 07             	add    $0x7,%eax
 c22:	c1 e8 03             	shr    $0x3,%eax
 c25:	83 c0 01             	add    $0x1,%eax
 c28:	89 45 ec             	mov    %eax,-0x14(%ebp)
 c2b:	a1 6c 11 00 00       	mov    0x116c,%eax
 c30:	89 45 f0             	mov    %eax,-0x10(%ebp)
 c33:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 c37:	75 23                	jne    c5c <malloc+0x4a>
 c39:	c7 45 f0 64 11 00 00 	movl   $0x1164,-0x10(%ebp)
 c40:	8b 45 f0             	mov    -0x10(%ebp),%eax
 c43:	a3 6c 11 00 00       	mov    %eax,0x116c
 c48:	a1 6c 11 00 00       	mov    0x116c,%eax
 c4d:	a3 64 11 00 00       	mov    %eax,0x1164
 c52:	c7 05 68 11 00 00 00 	movl   $0x0,0x1168
 c59:	00 00 00 
 c5c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 c5f:	8b 00                	mov    (%eax),%eax
 c61:	89 45 f4             	mov    %eax,-0xc(%ebp)
 c64:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c67:	8b 40 04             	mov    0x4(%eax),%eax
 c6a:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 c6d:	77 4d                	ja     cbc <malloc+0xaa>
 c6f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c72:	8b 40 04             	mov    0x4(%eax),%eax
 c75:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 c78:	75 0c                	jne    c86 <malloc+0x74>
 c7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c7d:	8b 10                	mov    (%eax),%edx
 c7f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 c82:	89 10                	mov    %edx,(%eax)
 c84:	eb 26                	jmp    cac <malloc+0x9a>
 c86:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c89:	8b 40 04             	mov    0x4(%eax),%eax
 c8c:	2b 45 ec             	sub    -0x14(%ebp),%eax
 c8f:	89 c2                	mov    %eax,%edx
 c91:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c94:	89 50 04             	mov    %edx,0x4(%eax)
 c97:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c9a:	8b 40 04             	mov    0x4(%eax),%eax
 c9d:	c1 e0 03             	shl    $0x3,%eax
 ca0:	01 45 f4             	add    %eax,-0xc(%ebp)
 ca3:	8b 45 f4             	mov    -0xc(%ebp),%eax
 ca6:	8b 55 ec             	mov    -0x14(%ebp),%edx
 ca9:	89 50 04             	mov    %edx,0x4(%eax)
 cac:	8b 45 f0             	mov    -0x10(%ebp),%eax
 caf:	a3 6c 11 00 00       	mov    %eax,0x116c
 cb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 cb7:	83 c0 08             	add    $0x8,%eax
 cba:	eb 3b                	jmp    cf7 <malloc+0xe5>
 cbc:	a1 6c 11 00 00       	mov    0x116c,%eax
 cc1:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 cc4:	75 1e                	jne    ce4 <malloc+0xd2>
 cc6:	83 ec 0c             	sub    $0xc,%esp
 cc9:	ff 75 ec             	pushl  -0x14(%ebp)
 ccc:	e8 dd fe ff ff       	call   bae <morecore>
 cd1:	83 c4 10             	add    $0x10,%esp
 cd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 cd7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 cdb:	75 07                	jne    ce4 <malloc+0xd2>
 cdd:	b8 00 00 00 00       	mov    $0x0,%eax
 ce2:	eb 13                	jmp    cf7 <malloc+0xe5>
 ce4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 ce7:	89 45 f0             	mov    %eax,-0x10(%ebp)
 cea:	8b 45 f4             	mov    -0xc(%ebp),%eax
 ced:	8b 00                	mov    (%eax),%eax
 cef:	89 45 f4             	mov    %eax,-0xc(%ebp)
 cf2:	e9 6d ff ff ff       	jmp    c64 <malloc+0x52>
 cf7:	c9                   	leave  
 cf8:	c3                   	ret    
