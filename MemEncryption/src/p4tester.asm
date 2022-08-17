
_p4tester:     file format elf32-i386


Disassembly of section .text:

00000000 <print_ptentry>:
#include "mmu.h"
#define PGSIZE 4096
#define KERNBASE 0x80000000 
#define VPN(va)         ((uint)(va) >> 12)

void print_ptentry(struct pt_entry entry) {
   0:	f3 0f 1e fb          	endbr32 
   4:	55                   	push   %ebp
   5:	89 e5                	mov    %esp,%ebp
   7:	57                   	push   %edi
   8:	56                   	push   %esi
   9:	53                   	push   %ebx
   a:	83 ec 1c             	sub    $0x1c,%esp
      
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
   d:	0f b6 45 0f          	movzbl 0xf(%ebp),%eax
  11:	83 e0 01             	and    $0x1,%eax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  14:	0f b6 c8             	movzbl %al,%ecx
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  17:	0f b6 45 0e          	movzbl 0xe(%ebp),%eax
  1b:	c0 e8 06             	shr    $0x6,%al
  1e:	83 e0 01             	and    $0x1,%eax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  21:	0f b6 c0             	movzbl %al,%eax
  24:	89 45 e4             	mov    %eax,-0x1c(%ebp)
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  27:	0f b6 45 0e          	movzbl 0xe(%ebp),%eax
  2b:	c0 e8 07             	shr    $0x7,%al
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  2e:	0f b6 f8             	movzbl %al,%edi
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  31:	0f b6 45 0e          	movzbl 0xe(%ebp),%eax
  35:	c0 e8 05             	shr    $0x5,%al
  38:	83 e0 01             	and    $0x1,%eax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  3b:	0f b6 f0             	movzbl %al,%esi
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  3e:	0f b6 45 0e          	movzbl 0xe(%ebp),%eax
  42:	c0 e8 04             	shr    $0x4,%al
  45:	83 e0 01             	and    $0x1,%eax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  48:	0f b6 d8             	movzbl %al,%ebx
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  4b:	8b 45 0c             	mov    0xc(%ebp),%eax
  4e:	25 ff ff 0f 00       	and    $0xfffff,%eax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  53:	89 45 e0             	mov    %eax,-0x20(%ebp)
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  56:	8b 45 08             	mov    0x8(%ebp),%eax
  59:	c1 e8 0a             	shr    $0xa,%eax
  5c:	66 25 ff 03          	and    $0x3ff,%ax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  60:	0f b7 d0             	movzwl %ax,%edx
        entry.pdx, entry.ptx, entry.ppage, entry.present, entry.writable, entry.encrypted, entry.user, entry.ref);
  63:	0f b7 45 08          	movzwl 0x8(%ebp),%eax
  67:	66 25 ff 03          	and    $0x3ff,%ax
      printf(1, "PDX: %d, PTX: %d, PPN: %x, Present: %d, Writable: %d, Encrypted: %d, User: %d, Ref: %d\n", 
  6b:	0f b7 c0             	movzwl %ax,%eax
  6e:	83 ec 08             	sub    $0x8,%esp
  71:	51                   	push   %ecx
  72:	ff 75 e4             	pushl  -0x1c(%ebp)
  75:	57                   	push   %edi
  76:	56                   	push   %esi
  77:	53                   	push   %ebx
  78:	ff 75 e0             	pushl  -0x20(%ebp)
  7b:	52                   	push   %edx
  7c:	50                   	push   %eax
  7d:	68 4c 0c 00 00       	push   $0xc4c
  82:	6a 01                	push   $0x1
  84:	e8 fa 07 00 00       	call   883 <printf>
  89:	83 c4 30             	add    $0x30,%esp
}
  8c:	90                   	nop
  8d:	8d 65 f4             	lea    -0xc(%ebp),%esp
  90:	5b                   	pop    %ebx
  91:	5e                   	pop    %esi
  92:	5f                   	pop    %edi
  93:	5d                   	pop    %ebp
  94:	c3                   	ret    

00000095 <err>:

static int 
err(char *msg, ...) {
  95:	f3 0f 1e fb          	endbr32 
  99:	55                   	push   %ebp
  9a:	89 e5                	mov    %esp,%ebp
  9c:	83 ec 08             	sub    $0x8,%esp
    printf(1, "XV6_TEST_OUTPUT %s\n", msg);
  9f:	83 ec 04             	sub    $0x4,%esp
  a2:	ff 75 08             	pushl  0x8(%ebp)
  a5:	68 a4 0c 00 00       	push   $0xca4
  aa:	6a 01                	push   $0x1
  ac:	e8 d2 07 00 00       	call   883 <printf>
  b1:	83 c4 10             	add    $0x10,%esp
    exit();
  b4:	e8 36 06 00 00       	call   6ef <exit>

000000b9 <main>:
}

int
main(int argc, char **argv)
{
  b9:	f3 0f 1e fb          	endbr32 
  bd:	8d 4c 24 04          	lea    0x4(%esp),%ecx
  c1:	83 e4 f0             	and    $0xfffffff0,%esp
  c4:	ff 71 fc             	pushl  -0x4(%ecx)
  c7:	55                   	push   %ebp
  c8:	89 e5                	mov    %esp,%ebp
  ca:	57                   	push   %edi
  cb:	56                   	push   %esi
  cc:	53                   	push   %ebx
  cd:	51                   	push   %ecx
  ce:	83 ec 48             	sub    $0x48,%esp
    const uint PAGES_NUM = 1;
  d1:	c7 45 c8 01 00 00 00 	movl   $0x1,-0x38(%ebp)
    char *buffer = sbrk(PGSIZE * sizeof(char));
  d8:	83 ec 0c             	sub    $0xc,%esp
  db:	68 00 10 00 00       	push   $0x1000
  e0:	e8 92 06 00 00       	call   777 <sbrk>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while (buffer != (char*)0x6000) {
  eb:	eb 13                	jmp    100 <main+0x47>
        buffer = sbrk(PGSIZE * sizeof(char));
  ed:	83 ec 0c             	sub    $0xc,%esp
  f0:	68 00 10 00 00       	push   $0x1000
  f5:	e8 7d 06 00 00       	call   777 <sbrk>
  fa:	83 c4 10             	add    $0x10,%esp
  fd:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while (buffer != (char*)0x6000) {
 100:	81 7d d4 00 60 00 00 	cmpl   $0x6000,-0x2c(%ebp)
 107:	75 e4                	jne    ed <main+0x34>
    }
    // Allocate one pages of space
    char *ptr = sbrk(PAGES_NUM * PGSIZE);
 109:	8b 45 c8             	mov    -0x38(%ebp),%eax
 10c:	c1 e0 0c             	shl    $0xc,%eax
 10f:	83 ec 0c             	sub    $0xc,%esp
 112:	50                   	push   %eax
 113:	e8 5f 06 00 00       	call   777 <sbrk>
 118:	83 c4 10             	add    $0x10,%esp
 11b:	89 45 c4             	mov    %eax,-0x3c(%ebp)
    
    struct pt_entry pt_entries[PAGES_NUM];
 11e:	8b 45 c8             	mov    -0x38(%ebp),%eax
 121:	83 e8 01             	sub    $0x1,%eax
 124:	89 45 c0             	mov    %eax,-0x40(%ebp)
 127:	8b 45 c8             	mov    -0x38(%ebp),%eax
 12a:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 131:	b8 10 00 00 00       	mov    $0x10,%eax
 136:	83 e8 01             	sub    $0x1,%eax
 139:	01 d0                	add    %edx,%eax
 13b:	bb 10 00 00 00       	mov    $0x10,%ebx
 140:	ba 00 00 00 00       	mov    $0x0,%edx
 145:	f7 f3                	div    %ebx
 147:	6b c0 10             	imul   $0x10,%eax,%eax
 14a:	89 c2                	mov    %eax,%edx
 14c:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
 152:	89 e1                	mov    %esp,%ecx
 154:	29 d1                	sub    %edx,%ecx
 156:	89 ca                	mov    %ecx,%edx
 158:	39 d4                	cmp    %edx,%esp
 15a:	74 10                	je     16c <main+0xb3>
 15c:	81 ec 00 10 00 00    	sub    $0x1000,%esp
 162:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
 169:	00 
 16a:	eb ec                	jmp    158 <main+0x9f>
 16c:	89 c2                	mov    %eax,%edx
 16e:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 174:	29 d4                	sub    %edx,%esp
 176:	89 c2                	mov    %eax,%edx
 178:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
 17e:	85 d2                	test   %edx,%edx
 180:	74 0d                	je     18f <main+0xd6>
 182:	25 ff 0f 00 00       	and    $0xfff,%eax
 187:	83 e8 04             	sub    $0x4,%eax
 18a:	01 e0                	add    %esp,%eax
 18c:	83 08 00             	orl    $0x0,(%eax)
 18f:	89 e0                	mov    %esp,%eax
 191:	83 c0 03             	add    $0x3,%eax
 194:	c1 e8 02             	shr    $0x2,%eax
 197:	c1 e0 02             	shl    $0x2,%eax
 19a:	89 45 bc             	mov    %eax,-0x44(%ebp)

    // Initialize the pages
    for (int i = 0; i < PAGES_NUM * PGSIZE; i++)
 19d:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)
 1a4:	eb 0f                	jmp    1b5 <main+0xfc>
        ptr[i] = 0xAA;
 1a6:	8b 55 d8             	mov    -0x28(%ebp),%edx
 1a9:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 1ac:	01 d0                	add    %edx,%eax
 1ae:	c6 00 aa             	movb   $0xaa,(%eax)
    for (int i = 0; i < PAGES_NUM * PGSIZE; i++)
 1b1:	83 45 d8 01          	addl   $0x1,-0x28(%ebp)
 1b5:	8b 45 c8             	mov    -0x38(%ebp),%eax
 1b8:	c1 e0 0c             	shl    $0xc,%eax
 1bb:	89 c2                	mov    %eax,%edx
 1bd:	8b 45 d8             	mov    -0x28(%ebp),%eax
 1c0:	39 c2                	cmp    %eax,%edx
 1c2:	77 e2                	ja     1a6 <main+0xed>

    // Call the mencrypt with len = 0
    if (mencrypt((char *)KERNBASE, 0) != 0)
 1c4:	83 ec 08             	sub    $0x8,%esp
 1c7:	6a 00                	push   $0x0
 1c9:	68 00 00 00 80       	push   $0x80000000
 1ce:	e8 bc 05 00 00       	call   78f <mencrypt>
 1d3:	83 c4 10             	add    $0x10,%esp
 1d6:	85 c0                	test   %eax,%eax
 1d8:	74 10                	je     1ea <main+0x131>
        err("mencrypt return non-zero value when len equals 0\n");
 1da:	83 ec 0c             	sub    $0xc,%esp
 1dd:	68 b8 0c 00 00       	push   $0xcb8
 1e2:	e8 ae fe ff ff       	call   95 <err>
 1e7:	83 c4 10             	add    $0x10,%esp
    
    // Call the mencrypt on the kernel pages
    if (mencrypt((char *)ptr, -1) != -1)
 1ea:	83 ec 08             	sub    $0x8,%esp
 1ed:	6a ff                	push   $0xffffffff
 1ef:	ff 75 c4             	pushl  -0x3c(%ebp)
 1f2:	e8 98 05 00 00       	call   78f <mencrypt>
 1f7:	83 c4 10             	add    $0x10,%esp
 1fa:	83 f8 ff             	cmp    $0xffffffff,%eax
 1fd:	74 10                	je     20f <main+0x156>
        err("mencrypt doesn't return -1 value when negative length is given\n");
 1ff:	83 ec 0c             	sub    $0xc,%esp
 202:	68 ec 0c 00 00       	push   $0xcec
 207:	e8 89 fe ff ff       	call   95 <err>
 20c:	83 c4 10             	add    $0x10,%esp

    // Call the mencrypt on the kernel pages
    if (mencrypt((char *)KERNBASE, 1) != -1)
 20f:	83 ec 08             	sub    $0x8,%esp
 212:	6a 01                	push   $0x1
 214:	68 00 00 00 80       	push   $0x80000000
 219:	e8 71 05 00 00       	call   78f <mencrypt>
 21e:	83 c4 10             	add    $0x10,%esp
 221:	83 f8 ff             	cmp    $0xffffffff,%eax
 224:	74 10                	je     236 <main+0x17d>
        err("mencrypt doesn't return -1 value when trying to encrypt kernel page\n");
 226:	83 ec 0c             	sub    $0xc,%esp
 229:	68 2c 0d 00 00       	push   $0xd2c
 22e:	e8 62 fe ff ff       	call   95 <err>
 233:	83 c4 10             	add    $0x10,%esp

    // Call the mencrypt on the kernel pages
    if (mencrypt((char *)((uint)-1), 1) != -1)
 236:	83 ec 08             	sub    $0x8,%esp
 239:	6a 01                	push   $0x1
 23b:	6a ff                	push   $0xffffffff
 23d:	e8 4d 05 00 00       	call   78f <mencrypt>
 242:	83 c4 10             	add    $0x10,%esp
 245:	83 f8 ff             	cmp    $0xffffffff,%eax
 248:	74 10                	je     25a <main+0x1a1>
        err("mencrypt doesn't return -1 value when 0xFFFFFFFF is given as virtual page\n");
 24a:	83 ec 0c             	sub    $0xc,%esp
 24d:	68 74 0d 00 00       	push   $0xd74
 252:	e8 3e fe ff ff       	call   95 <err>
 257:	83 c4 10             	add    $0x10,%esp
    

    if (getpgtable(pt_entries, PAGES_NUM) >= 0){
 25a:	8b 45 c8             	mov    -0x38(%ebp),%eax
 25d:	83 ec 08             	sub    $0x8,%esp
 260:	50                   	push   %eax
 261:	ff 75 bc             	pushl  -0x44(%ebp)
 264:	e8 2e 05 00 00       	call   797 <getpgtable>
 269:	83 c4 10             	add    $0x10,%esp
 26c:	85 c0                	test   %eax,%eax
 26e:	0f 88 fb 01 00 00    	js     46f <main+0x3b6>
        for (int i = 0; i < PAGES_NUM; i++) {
 274:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
 27b:	e9 e3 01 00 00       	jmp    463 <main+0x3aa>
                pt_entries[i].pdx,
                pt_entries[i].ptx,
                pt_entries[i].ppage,
                pt_entries[i].present,
                pt_entries[i].writable,
                pt_entries[i].encrypted
 280:	8b 45 bc             	mov    -0x44(%ebp),%eax
 283:	8b 55 dc             	mov    -0x24(%ebp),%edx
 286:	0f b6 44 d0 06       	movzbl 0x6(%eax,%edx,8),%eax
 28b:	c0 e8 07             	shr    $0x7,%al
            printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, ppage: 0x%x, present: %d, writable: %d, encrypted: %d\n", 
 28e:	0f b6 f0             	movzbl %al,%esi
                pt_entries[i].writable,
 291:	8b 45 bc             	mov    -0x44(%ebp),%eax
 294:	8b 55 dc             	mov    -0x24(%ebp),%edx
 297:	0f b6 44 d0 06       	movzbl 0x6(%eax,%edx,8),%eax
 29c:	c0 e8 05             	shr    $0x5,%al
 29f:	83 e0 01             	and    $0x1,%eax
            printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, ppage: 0x%x, present: %d, writable: %d, encrypted: %d\n", 
 2a2:	0f b6 d8             	movzbl %al,%ebx
                pt_entries[i].present,
 2a5:	8b 45 bc             	mov    -0x44(%ebp),%eax
 2a8:	8b 55 dc             	mov    -0x24(%ebp),%edx
 2ab:	0f b6 44 d0 06       	movzbl 0x6(%eax,%edx,8),%eax
 2b0:	c0 e8 04             	shr    $0x4,%al
 2b3:	83 e0 01             	and    $0x1,%eax
            printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, ppage: 0x%x, present: %d, writable: %d, encrypted: %d\n", 
 2b6:	0f b6 c8             	movzbl %al,%ecx
                pt_entries[i].ppage,
 2b9:	8b 45 bc             	mov    -0x44(%ebp),%eax
 2bc:	8b 55 dc             	mov    -0x24(%ebp),%edx
 2bf:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 2c3:	25 ff ff 0f 00       	and    $0xfffff,%eax
            printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, ppage: 0x%x, present: %d, writable: %d, encrypted: %d\n", 
 2c8:	89 45 b4             	mov    %eax,-0x4c(%ebp)
                pt_entries[i].ptx,
 2cb:	8b 45 bc             	mov    -0x44(%ebp),%eax
 2ce:	8b 55 dc             	mov    -0x24(%ebp),%edx
 2d1:	8b 04 d0             	mov    (%eax,%edx,8),%eax
 2d4:	c1 e8 0a             	shr    $0xa,%eax
 2d7:	66 25 ff 03          	and    $0x3ff,%ax
            printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, ppage: 0x%x, present: %d, writable: %d, encrypted: %d\n", 
 2db:	0f b7 d0             	movzwl %ax,%edx
                pt_entries[i].pdx,
 2de:	8b 45 bc             	mov    -0x44(%ebp),%eax
 2e1:	8b 7d dc             	mov    -0x24(%ebp),%edi
 2e4:	0f b7 04 f8          	movzwl (%eax,%edi,8),%eax
 2e8:	66 25 ff 03          	and    $0x3ff,%ax
            printf(1, "XV6_TEST_OUTPUT Index %d: pdx: 0x%x, ptx: 0x%x, ppage: 0x%x, present: %d, writable: %d, encrypted: %d\n", 
 2ec:	0f b7 c0             	movzwl %ax,%eax
 2ef:	83 ec 0c             	sub    $0xc,%esp
 2f2:	56                   	push   %esi
 2f3:	53                   	push   %ebx
 2f4:	51                   	push   %ecx
 2f5:	ff 75 b4             	pushl  -0x4c(%ebp)
 2f8:	52                   	push   %edx
 2f9:	50                   	push   %eax
 2fa:	ff 75 dc             	pushl  -0x24(%ebp)
 2fd:	68 c0 0d 00 00       	push   $0xdc0
 302:	6a 01                	push   $0x1
 304:	e8 7a 05 00 00       	call   883 <printf>
 309:	83 c4 30             	add    $0x30,%esp
            );

            if (dump_rawphymem((char *)(pt_entries[i].ppage * PGSIZE), buffer) != 0)
 30c:	8b 45 bc             	mov    -0x44(%ebp),%eax
 30f:	8b 55 dc             	mov    -0x24(%ebp),%edx
 312:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 316:	25 ff ff 0f 00       	and    $0xfffff,%eax
 31b:	c1 e0 0c             	shl    $0xc,%eax
 31e:	83 ec 08             	sub    $0x8,%esp
 321:	ff 75 d4             	pushl  -0x2c(%ebp)
 324:	50                   	push   %eax
 325:	e8 75 04 00 00       	call   79f <dump_rawphymem>
 32a:	83 c4 10             	add    $0x10,%esp
 32d:	85 c0                	test   %eax,%eax
 32f:	74 10                	je     341 <main+0x288>
                err("dump_rawphymem return non-zero value\n");
 331:	83 ec 0c             	sub    $0xc,%esp
 334:	68 28 0e 00 00       	push   $0xe28
 339:	e8 57 fd ff ff       	call   95 <err>
 33e:	83 c4 10             	add    $0x10,%esp
            
            uint expected = 0xAA;
 341:	c7 45 b8 aa 00 00 00 	movl   $0xaa,-0x48(%ebp)
            uint is_failed = 0;
 348:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
            for (int j = 0; j < PGSIZE; j ++) {
 34f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
 356:	eb 1f                	jmp    377 <main+0x2be>
                if (buffer[j] != (char)expected) {
 358:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 35b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 35e:	01 d0                	add    %edx,%eax
 360:	0f b6 00             	movzbl (%eax),%eax
 363:	8b 55 b8             	mov    -0x48(%ebp),%edx
 366:	38 d0                	cmp    %dl,%al
 368:	74 09                	je     373 <main+0x2ba>
                    is_failed = 1;
 36a:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
                    break;
 371:	eb 0d                	jmp    380 <main+0x2c7>
            for (int j = 0; j < PGSIZE; j ++) {
 373:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
 377:	81 7d e4 ff 0f 00 00 	cmpl   $0xfff,-0x1c(%ebp)
 37e:	7e d8                	jle    358 <main+0x29f>
                }
            }
            if (is_failed) {
 380:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
 384:	0f 84 d5 00 00 00    	je     45f <main+0x3a6>
                printf(1, "XV6_TEST_OUTPUT wrong content at physical page 0x%x\n", pt_entries[i].ppage * PGSIZE);
 38a:	8b 45 bc             	mov    -0x44(%ebp),%eax
 38d:	8b 55 dc             	mov    -0x24(%ebp),%edx
 390:	8b 44 d0 04          	mov    0x4(%eax,%edx,8),%eax
 394:	25 ff ff 0f 00       	and    $0xfffff,%eax
 399:	c1 e0 0c             	shl    $0xc,%eax
 39c:	83 ec 04             	sub    $0x4,%esp
 39f:	50                   	push   %eax
 3a0:	68 50 0e 00 00       	push   $0xe50
 3a5:	6a 01                	push   $0x1
 3a7:	e8 d7 04 00 00       	call   883 <printf>
 3ac:	83 c4 10             	add    $0x10,%esp
                for (int j = 0; j < PGSIZE; j +=64) {
 3af:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
 3b6:	e9 87 00 00 00       	jmp    442 <main+0x389>
                    printf(1, "XV6_TEST_OUTPUT ");
 3bb:	83 ec 08             	sub    $0x8,%esp
 3be:	68 85 0e 00 00       	push   $0xe85
 3c3:	6a 01                	push   $0x1
 3c5:	e8 b9 04 00 00       	call   883 <printf>
 3ca:	83 c4 10             	add    $0x10,%esp
                    for (int k = 0; k < 64; k ++) {
 3cd:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
 3d4:	eb 62                	jmp    438 <main+0x37f>
                        if (k < 63) {
 3d6:	83 7d cc 3e          	cmpl   $0x3e,-0x34(%ebp)
 3da:	7f 2d                	jg     409 <main+0x350>
                            printf(1, "0x%x ", (uint)buffer[j + k] & 0xFF);
 3dc:	8b 55 d0             	mov    -0x30(%ebp),%edx
 3df:	8b 45 cc             	mov    -0x34(%ebp),%eax
 3e2:	01 d0                	add    %edx,%eax
 3e4:	89 c2                	mov    %eax,%edx
 3e6:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 3e9:	01 d0                	add    %edx,%eax
 3eb:	0f b6 00             	movzbl (%eax),%eax
 3ee:	0f be c0             	movsbl %al,%eax
 3f1:	0f b6 c0             	movzbl %al,%eax
 3f4:	83 ec 04             	sub    $0x4,%esp
 3f7:	50                   	push   %eax
 3f8:	68 96 0e 00 00       	push   $0xe96
 3fd:	6a 01                	push   $0x1
 3ff:	e8 7f 04 00 00       	call   883 <printf>
 404:	83 c4 10             	add    $0x10,%esp
 407:	eb 2b                	jmp    434 <main+0x37b>
                        } else {
                            printf(1, "0x%x\n", (uint)buffer[j + k] & 0xFF);
 409:	8b 55 d0             	mov    -0x30(%ebp),%edx
 40c:	8b 45 cc             	mov    -0x34(%ebp),%eax
 40f:	01 d0                	add    %edx,%eax
 411:	89 c2                	mov    %eax,%edx
 413:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 416:	01 d0                	add    %edx,%eax
 418:	0f b6 00             	movzbl (%eax),%eax
 41b:	0f be c0             	movsbl %al,%eax
 41e:	0f b6 c0             	movzbl %al,%eax
 421:	83 ec 04             	sub    $0x4,%esp
 424:	50                   	push   %eax
 425:	68 9c 0e 00 00       	push   $0xe9c
 42a:	6a 01                	push   $0x1
 42c:	e8 52 04 00 00       	call   883 <printf>
 431:	83 c4 10             	add    $0x10,%esp
                    for (int k = 0; k < 64; k ++) {
 434:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
 438:	83 7d cc 3f          	cmpl   $0x3f,-0x34(%ebp)
 43c:	7e 98                	jle    3d6 <main+0x31d>
                for (int j = 0; j < PGSIZE; j +=64) {
 43e:	83 45 d0 40          	addl   $0x40,-0x30(%ebp)
 442:	81 7d d0 ff 0f 00 00 	cmpl   $0xfff,-0x30(%ebp)
 449:	0f 8e 6c ff ff ff    	jle    3bb <main+0x302>
                        }
                    }
                }
                err("None of the pages should be encrypted when len equals to 0\n");
 44f:	83 ec 0c             	sub    $0xc,%esp
 452:	68 a4 0e 00 00       	push   $0xea4
 457:	e8 39 fc ff ff       	call   95 <err>
 45c:	83 c4 10             	add    $0x10,%esp
        for (int i = 0; i < PAGES_NUM; i++) {
 45f:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
 463:	8b 45 dc             	mov    -0x24(%ebp),%eax
 466:	39 45 c8             	cmp    %eax,-0x38(%ebp)
 469:	0f 87 11 fe ff ff    	ja     280 <main+0x1c7>
            }

        }
    }
    exit();
 46f:	e8 7b 02 00 00       	call   6ef <exit>

00000474 <stosb>:
               "cc");
}

static inline void
stosb(void *addr, int data, int cnt)
{
 474:	55                   	push   %ebp
 475:	89 e5                	mov    %esp,%ebp
 477:	57                   	push   %edi
 478:	53                   	push   %ebx
  asm volatile("cld; rep stosb" :
 479:	8b 4d 08             	mov    0x8(%ebp),%ecx
 47c:	8b 55 10             	mov    0x10(%ebp),%edx
 47f:	8b 45 0c             	mov    0xc(%ebp),%eax
 482:	89 cb                	mov    %ecx,%ebx
 484:	89 df                	mov    %ebx,%edi
 486:	89 d1                	mov    %edx,%ecx
 488:	fc                   	cld    
 489:	f3 aa                	rep stos %al,%es:(%edi)
 48b:	89 ca                	mov    %ecx,%edx
 48d:	89 fb                	mov    %edi,%ebx
 48f:	89 5d 08             	mov    %ebx,0x8(%ebp)
 492:	89 55 10             	mov    %edx,0x10(%ebp)
               "=D" (addr), "=c" (cnt) :
               "0" (addr), "1" (cnt), "a" (data) :
               "memory", "cc");
}
 495:	90                   	nop
 496:	5b                   	pop    %ebx
 497:	5f                   	pop    %edi
 498:	5d                   	pop    %ebp
 499:	c3                   	ret    

0000049a <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 49a:	f3 0f 1e fb          	endbr32 
 49e:	55                   	push   %ebp
 49f:	89 e5                	mov    %esp,%ebp
 4a1:	83 ec 10             	sub    $0x10,%esp
  char *os;

  os = s;
 4a4:	8b 45 08             	mov    0x8(%ebp),%eax
 4a7:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while((*s++ = *t++) != 0)
 4aa:	90                   	nop
 4ab:	8b 55 0c             	mov    0xc(%ebp),%edx
 4ae:	8d 42 01             	lea    0x1(%edx),%eax
 4b1:	89 45 0c             	mov    %eax,0xc(%ebp)
 4b4:	8b 45 08             	mov    0x8(%ebp),%eax
 4b7:	8d 48 01             	lea    0x1(%eax),%ecx
 4ba:	89 4d 08             	mov    %ecx,0x8(%ebp)
 4bd:	0f b6 12             	movzbl (%edx),%edx
 4c0:	88 10                	mov    %dl,(%eax)
 4c2:	0f b6 00             	movzbl (%eax),%eax
 4c5:	84 c0                	test   %al,%al
 4c7:	75 e2                	jne    4ab <strcpy+0x11>
    ;
  return os;
 4c9:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 4cc:	c9                   	leave  
 4cd:	c3                   	ret    

000004ce <strcmp>:

int
strcmp(const char *p, const char *q)
{
 4ce:	f3 0f 1e fb          	endbr32 
 4d2:	55                   	push   %ebp
 4d3:	89 e5                	mov    %esp,%ebp
  while(*p && *p == *q)
 4d5:	eb 08                	jmp    4df <strcmp+0x11>
    p++, q++;
 4d7:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 4db:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
  while(*p && *p == *q)
 4df:	8b 45 08             	mov    0x8(%ebp),%eax
 4e2:	0f b6 00             	movzbl (%eax),%eax
 4e5:	84 c0                	test   %al,%al
 4e7:	74 10                	je     4f9 <strcmp+0x2b>
 4e9:	8b 45 08             	mov    0x8(%ebp),%eax
 4ec:	0f b6 10             	movzbl (%eax),%edx
 4ef:	8b 45 0c             	mov    0xc(%ebp),%eax
 4f2:	0f b6 00             	movzbl (%eax),%eax
 4f5:	38 c2                	cmp    %al,%dl
 4f7:	74 de                	je     4d7 <strcmp+0x9>
  return (uchar)*p - (uchar)*q;
 4f9:	8b 45 08             	mov    0x8(%ebp),%eax
 4fc:	0f b6 00             	movzbl (%eax),%eax
 4ff:	0f b6 d0             	movzbl %al,%edx
 502:	8b 45 0c             	mov    0xc(%ebp),%eax
 505:	0f b6 00             	movzbl (%eax),%eax
 508:	0f b6 c0             	movzbl %al,%eax
 50b:	29 c2                	sub    %eax,%edx
 50d:	89 d0                	mov    %edx,%eax
}
 50f:	5d                   	pop    %ebp
 510:	c3                   	ret    

00000511 <strlen>:

uint
strlen(const char *s)
{
 511:	f3 0f 1e fb          	endbr32 
 515:	55                   	push   %ebp
 516:	89 e5                	mov    %esp,%ebp
 518:	83 ec 10             	sub    $0x10,%esp
  int n;

  for(n = 0; s[n]; n++)
 51b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 522:	eb 04                	jmp    528 <strlen+0x17>
 524:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 528:	8b 55 fc             	mov    -0x4(%ebp),%edx
 52b:	8b 45 08             	mov    0x8(%ebp),%eax
 52e:	01 d0                	add    %edx,%eax
 530:	0f b6 00             	movzbl (%eax),%eax
 533:	84 c0                	test   %al,%al
 535:	75 ed                	jne    524 <strlen+0x13>
    ;
  return n;
 537:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 53a:	c9                   	leave  
 53b:	c3                   	ret    

0000053c <memset>:

void*
memset(void *dst, int c, uint n)
{
 53c:	f3 0f 1e fb          	endbr32 
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
  stosb(dst, c, n);
 543:	8b 45 10             	mov    0x10(%ebp),%eax
 546:	50                   	push   %eax
 547:	ff 75 0c             	pushl  0xc(%ebp)
 54a:	ff 75 08             	pushl  0x8(%ebp)
 54d:	e8 22 ff ff ff       	call   474 <stosb>
 552:	83 c4 0c             	add    $0xc,%esp
  return dst;
 555:	8b 45 08             	mov    0x8(%ebp),%eax
}
 558:	c9                   	leave  
 559:	c3                   	ret    

0000055a <strchr>:

char*
strchr(const char *s, char c)
{
 55a:	f3 0f 1e fb          	endbr32 
 55e:	55                   	push   %ebp
 55f:	89 e5                	mov    %esp,%ebp
 561:	83 ec 04             	sub    $0x4,%esp
 564:	8b 45 0c             	mov    0xc(%ebp),%eax
 567:	88 45 fc             	mov    %al,-0x4(%ebp)
  for(; *s; s++)
 56a:	eb 14                	jmp    580 <strchr+0x26>
    if(*s == c)
 56c:	8b 45 08             	mov    0x8(%ebp),%eax
 56f:	0f b6 00             	movzbl (%eax),%eax
 572:	38 45 fc             	cmp    %al,-0x4(%ebp)
 575:	75 05                	jne    57c <strchr+0x22>
      return (char*)s;
 577:	8b 45 08             	mov    0x8(%ebp),%eax
 57a:	eb 13                	jmp    58f <strchr+0x35>
  for(; *s; s++)
 57c:	83 45 08 01          	addl   $0x1,0x8(%ebp)
 580:	8b 45 08             	mov    0x8(%ebp),%eax
 583:	0f b6 00             	movzbl (%eax),%eax
 586:	84 c0                	test   %al,%al
 588:	75 e2                	jne    56c <strchr+0x12>
  return 0;
 58a:	b8 00 00 00 00       	mov    $0x0,%eax
}
 58f:	c9                   	leave  
 590:	c3                   	ret    

00000591 <gets>:

char*
gets(char *buf, int max)
{
 591:	f3 0f 1e fb          	endbr32 
 595:	55                   	push   %ebp
 596:	89 e5                	mov    %esp,%ebp
 598:	83 ec 18             	sub    $0x18,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 59b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 5a2:	eb 42                	jmp    5e6 <gets+0x55>
    cc = read(0, &c, 1);
 5a4:	83 ec 04             	sub    $0x4,%esp
 5a7:	6a 01                	push   $0x1
 5a9:	8d 45 ef             	lea    -0x11(%ebp),%eax
 5ac:	50                   	push   %eax
 5ad:	6a 00                	push   $0x0
 5af:	e8 53 01 00 00       	call   707 <read>
 5b4:	83 c4 10             	add    $0x10,%esp
 5b7:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(cc < 1)
 5ba:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 5be:	7e 33                	jle    5f3 <gets+0x62>
      break;
    buf[i++] = c;
 5c0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 5c3:	8d 50 01             	lea    0x1(%eax),%edx
 5c6:	89 55 f4             	mov    %edx,-0xc(%ebp)
 5c9:	89 c2                	mov    %eax,%edx
 5cb:	8b 45 08             	mov    0x8(%ebp),%eax
 5ce:	01 c2                	add    %eax,%edx
 5d0:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 5d4:	88 02                	mov    %al,(%edx)
    if(c == '\n' || c == '\r')
 5d6:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 5da:	3c 0a                	cmp    $0xa,%al
 5dc:	74 16                	je     5f4 <gets+0x63>
 5de:	0f b6 45 ef          	movzbl -0x11(%ebp),%eax
 5e2:	3c 0d                	cmp    $0xd,%al
 5e4:	74 0e                	je     5f4 <gets+0x63>
  for(i=0; i+1 < max; ){
 5e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 5e9:	83 c0 01             	add    $0x1,%eax
 5ec:	39 45 0c             	cmp    %eax,0xc(%ebp)
 5ef:	7f b3                	jg     5a4 <gets+0x13>
 5f1:	eb 01                	jmp    5f4 <gets+0x63>
      break;
 5f3:	90                   	nop
      break;
  }
  buf[i] = '\0';
 5f4:	8b 55 f4             	mov    -0xc(%ebp),%edx
 5f7:	8b 45 08             	mov    0x8(%ebp),%eax
 5fa:	01 d0                	add    %edx,%eax
 5fc:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
 5ff:	8b 45 08             	mov    0x8(%ebp),%eax
}
 602:	c9                   	leave  
 603:	c3                   	ret    

00000604 <stat>:

int
stat(const char *n, struct stat *st)
{
 604:	f3 0f 1e fb          	endbr32 
 608:	55                   	push   %ebp
 609:	89 e5                	mov    %esp,%ebp
 60b:	83 ec 18             	sub    $0x18,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 60e:	83 ec 08             	sub    $0x8,%esp
 611:	6a 00                	push   $0x0
 613:	ff 75 08             	pushl  0x8(%ebp)
 616:	e8 14 01 00 00       	call   72f <open>
 61b:	83 c4 10             	add    $0x10,%esp
 61e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(fd < 0)
 621:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 625:	79 07                	jns    62e <stat+0x2a>
    return -1;
 627:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 62c:	eb 25                	jmp    653 <stat+0x4f>
  r = fstat(fd, st);
 62e:	83 ec 08             	sub    $0x8,%esp
 631:	ff 75 0c             	pushl  0xc(%ebp)
 634:	ff 75 f4             	pushl  -0xc(%ebp)
 637:	e8 0b 01 00 00       	call   747 <fstat>
 63c:	83 c4 10             	add    $0x10,%esp
 63f:	89 45 f0             	mov    %eax,-0x10(%ebp)
  close(fd);
 642:	83 ec 0c             	sub    $0xc,%esp
 645:	ff 75 f4             	pushl  -0xc(%ebp)
 648:	e8 ca 00 00 00       	call   717 <close>
 64d:	83 c4 10             	add    $0x10,%esp
  return r;
 650:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
 653:	c9                   	leave  
 654:	c3                   	ret    

00000655 <atoi>:

int
atoi(const char *s)
{
 655:	f3 0f 1e fb          	endbr32 
 659:	55                   	push   %ebp
 65a:	89 e5                	mov    %esp,%ebp
 65c:	83 ec 10             	sub    $0x10,%esp
  int n;

  n = 0;
 65f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 666:	eb 25                	jmp    68d <atoi+0x38>
    n = n*10 + *s++ - '0';
 668:	8b 55 fc             	mov    -0x4(%ebp),%edx
 66b:	89 d0                	mov    %edx,%eax
 66d:	c1 e0 02             	shl    $0x2,%eax
 670:	01 d0                	add    %edx,%eax
 672:	01 c0                	add    %eax,%eax
 674:	89 c1                	mov    %eax,%ecx
 676:	8b 45 08             	mov    0x8(%ebp),%eax
 679:	8d 50 01             	lea    0x1(%eax),%edx
 67c:	89 55 08             	mov    %edx,0x8(%ebp)
 67f:	0f b6 00             	movzbl (%eax),%eax
 682:	0f be c0             	movsbl %al,%eax
 685:	01 c8                	add    %ecx,%eax
 687:	83 e8 30             	sub    $0x30,%eax
 68a:	89 45 fc             	mov    %eax,-0x4(%ebp)
  while('0' <= *s && *s <= '9')
 68d:	8b 45 08             	mov    0x8(%ebp),%eax
 690:	0f b6 00             	movzbl (%eax),%eax
 693:	3c 2f                	cmp    $0x2f,%al
 695:	7e 0a                	jle    6a1 <atoi+0x4c>
 697:	8b 45 08             	mov    0x8(%ebp),%eax
 69a:	0f b6 00             	movzbl (%eax),%eax
 69d:	3c 39                	cmp    $0x39,%al
 69f:	7e c7                	jle    668 <atoi+0x13>
  return n;
 6a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
 6a4:	c9                   	leave  
 6a5:	c3                   	ret    

000006a6 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 6a6:	f3 0f 1e fb          	endbr32 
 6aa:	55                   	push   %ebp
 6ab:	89 e5                	mov    %esp,%ebp
 6ad:	83 ec 10             	sub    $0x10,%esp
  char *dst;
  const char *src;

  dst = vdst;
 6b0:	8b 45 08             	mov    0x8(%ebp),%eax
 6b3:	89 45 fc             	mov    %eax,-0x4(%ebp)
  src = vsrc;
 6b6:	8b 45 0c             	mov    0xc(%ebp),%eax
 6b9:	89 45 f8             	mov    %eax,-0x8(%ebp)
  while(n-- > 0)
 6bc:	eb 17                	jmp    6d5 <memmove+0x2f>
    *dst++ = *src++;
 6be:	8b 55 f8             	mov    -0x8(%ebp),%edx
 6c1:	8d 42 01             	lea    0x1(%edx),%eax
 6c4:	89 45 f8             	mov    %eax,-0x8(%ebp)
 6c7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 6ca:	8d 48 01             	lea    0x1(%eax),%ecx
 6cd:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 6d0:	0f b6 12             	movzbl (%edx),%edx
 6d3:	88 10                	mov    %dl,(%eax)
  while(n-- > 0)
 6d5:	8b 45 10             	mov    0x10(%ebp),%eax
 6d8:	8d 50 ff             	lea    -0x1(%eax),%edx
 6db:	89 55 10             	mov    %edx,0x10(%ebp)
 6de:	85 c0                	test   %eax,%eax
 6e0:	7f dc                	jg     6be <memmove+0x18>
  return vdst;
 6e2:	8b 45 08             	mov    0x8(%ebp),%eax
}
 6e5:	c9                   	leave  
 6e6:	c3                   	ret    

000006e7 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 6e7:	b8 01 00 00 00       	mov    $0x1,%eax
 6ec:	cd 40                	int    $0x40
 6ee:	c3                   	ret    

000006ef <exit>:
SYSCALL(exit)
 6ef:	b8 02 00 00 00       	mov    $0x2,%eax
 6f4:	cd 40                	int    $0x40
 6f6:	c3                   	ret    

000006f7 <wait>:
SYSCALL(wait)
 6f7:	b8 03 00 00 00       	mov    $0x3,%eax
 6fc:	cd 40                	int    $0x40
 6fe:	c3                   	ret    

000006ff <pipe>:
SYSCALL(pipe)
 6ff:	b8 04 00 00 00       	mov    $0x4,%eax
 704:	cd 40                	int    $0x40
 706:	c3                   	ret    

00000707 <read>:
SYSCALL(read)
 707:	b8 05 00 00 00       	mov    $0x5,%eax
 70c:	cd 40                	int    $0x40
 70e:	c3                   	ret    

0000070f <write>:
SYSCALL(write)
 70f:	b8 10 00 00 00       	mov    $0x10,%eax
 714:	cd 40                	int    $0x40
 716:	c3                   	ret    

00000717 <close>:
SYSCALL(close)
 717:	b8 15 00 00 00       	mov    $0x15,%eax
 71c:	cd 40                	int    $0x40
 71e:	c3                   	ret    

0000071f <kill>:
SYSCALL(kill)
 71f:	b8 06 00 00 00       	mov    $0x6,%eax
 724:	cd 40                	int    $0x40
 726:	c3                   	ret    

00000727 <exec>:
SYSCALL(exec)
 727:	b8 07 00 00 00       	mov    $0x7,%eax
 72c:	cd 40                	int    $0x40
 72e:	c3                   	ret    

0000072f <open>:
SYSCALL(open)
 72f:	b8 0f 00 00 00       	mov    $0xf,%eax
 734:	cd 40                	int    $0x40
 736:	c3                   	ret    

00000737 <mknod>:
SYSCALL(mknod)
 737:	b8 11 00 00 00       	mov    $0x11,%eax
 73c:	cd 40                	int    $0x40
 73e:	c3                   	ret    

0000073f <unlink>:
SYSCALL(unlink)
 73f:	b8 12 00 00 00       	mov    $0x12,%eax
 744:	cd 40                	int    $0x40
 746:	c3                   	ret    

00000747 <fstat>:
SYSCALL(fstat)
 747:	b8 08 00 00 00       	mov    $0x8,%eax
 74c:	cd 40                	int    $0x40
 74e:	c3                   	ret    

0000074f <link>:
SYSCALL(link)
 74f:	b8 13 00 00 00       	mov    $0x13,%eax
 754:	cd 40                	int    $0x40
 756:	c3                   	ret    

00000757 <mkdir>:
SYSCALL(mkdir)
 757:	b8 14 00 00 00       	mov    $0x14,%eax
 75c:	cd 40                	int    $0x40
 75e:	c3                   	ret    

0000075f <chdir>:
SYSCALL(chdir)
 75f:	b8 09 00 00 00       	mov    $0x9,%eax
 764:	cd 40                	int    $0x40
 766:	c3                   	ret    

00000767 <dup>:
SYSCALL(dup)
 767:	b8 0a 00 00 00       	mov    $0xa,%eax
 76c:	cd 40                	int    $0x40
 76e:	c3                   	ret    

0000076f <getpid>:
SYSCALL(getpid)
 76f:	b8 0b 00 00 00       	mov    $0xb,%eax
 774:	cd 40                	int    $0x40
 776:	c3                   	ret    

00000777 <sbrk>:
SYSCALL(sbrk)
 777:	b8 0c 00 00 00       	mov    $0xc,%eax
 77c:	cd 40                	int    $0x40
 77e:	c3                   	ret    

0000077f <sleep>:
SYSCALL(sleep)
 77f:	b8 0d 00 00 00       	mov    $0xd,%eax
 784:	cd 40                	int    $0x40
 786:	c3                   	ret    

00000787 <uptime>:
SYSCALL(uptime)
 787:	b8 0e 00 00 00       	mov    $0xe,%eax
 78c:	cd 40                	int    $0x40
 78e:	c3                   	ret    

0000078f <mencrypt>:
SYSCALL(mencrypt)
 78f:	b8 16 00 00 00       	mov    $0x16,%eax
 794:	cd 40                	int    $0x40
 796:	c3                   	ret    

00000797 <getpgtable>:
SYSCALL(getpgtable)
 797:	b8 17 00 00 00       	mov    $0x17,%eax
 79c:	cd 40                	int    $0x40
 79e:	c3                   	ret    

0000079f <dump_rawphymem>:
SYSCALL(dump_rawphymem)
 79f:	b8 18 00 00 00       	mov    $0x18,%eax
 7a4:	cd 40                	int    $0x40
 7a6:	c3                   	ret    

000007a7 <putc>:
#include "stat.h"
#include "user.h"

static void
putc(int fd, char c)
{
 7a7:	f3 0f 1e fb          	endbr32 
 7ab:	55                   	push   %ebp
 7ac:	89 e5                	mov    %esp,%ebp
 7ae:	83 ec 18             	sub    $0x18,%esp
 7b1:	8b 45 0c             	mov    0xc(%ebp),%eax
 7b4:	88 45 f4             	mov    %al,-0xc(%ebp)
  write(fd, &c, 1);
 7b7:	83 ec 04             	sub    $0x4,%esp
 7ba:	6a 01                	push   $0x1
 7bc:	8d 45 f4             	lea    -0xc(%ebp),%eax
 7bf:	50                   	push   %eax
 7c0:	ff 75 08             	pushl  0x8(%ebp)
 7c3:	e8 47 ff ff ff       	call   70f <write>
 7c8:	83 c4 10             	add    $0x10,%esp
}
 7cb:	90                   	nop
 7cc:	c9                   	leave  
 7cd:	c3                   	ret    

000007ce <printint>:

static void
printint(int fd, int xx, int base, int sgn)
{
 7ce:	f3 0f 1e fb          	endbr32 
 7d2:	55                   	push   %ebp
 7d3:	89 e5                	mov    %esp,%ebp
 7d5:	83 ec 28             	sub    $0x28,%esp
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 7d8:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  if(sgn && xx < 0){
 7df:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
 7e3:	74 17                	je     7fc <printint+0x2e>
 7e5:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 7e9:	79 11                	jns    7fc <printint+0x2e>
    neg = 1;
 7eb:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
    x = -xx;
 7f2:	8b 45 0c             	mov    0xc(%ebp),%eax
 7f5:	f7 d8                	neg    %eax
 7f7:	89 45 ec             	mov    %eax,-0x14(%ebp)
 7fa:	eb 06                	jmp    802 <printint+0x34>
  } else {
    x = xx;
 7fc:	8b 45 0c             	mov    0xc(%ebp),%eax
 7ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
  }

  i = 0;
 802:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
 809:	8b 4d 10             	mov    0x10(%ebp),%ecx
 80c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80f:	ba 00 00 00 00       	mov    $0x0,%edx
 814:	f7 f1                	div    %ecx
 816:	89 d1                	mov    %edx,%ecx
 818:	8b 45 f4             	mov    -0xc(%ebp),%eax
 81b:	8d 50 01             	lea    0x1(%eax),%edx
 81e:	89 55 f4             	mov    %edx,-0xc(%ebp)
 821:	0f b6 91 80 11 00 00 	movzbl 0x1180(%ecx),%edx
 828:	88 54 05 dc          	mov    %dl,-0x24(%ebp,%eax,1)
  }while((x /= base) != 0);
 82c:	8b 4d 10             	mov    0x10(%ebp),%ecx
 82f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 832:	ba 00 00 00 00       	mov    $0x0,%edx
 837:	f7 f1                	div    %ecx
 839:	89 45 ec             	mov    %eax,-0x14(%ebp)
 83c:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 840:	75 c7                	jne    809 <printint+0x3b>
  if(neg)
 842:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 846:	74 2d                	je     875 <printint+0xa7>
    buf[i++] = '-';
 848:	8b 45 f4             	mov    -0xc(%ebp),%eax
 84b:	8d 50 01             	lea    0x1(%eax),%edx
 84e:	89 55 f4             	mov    %edx,-0xc(%ebp)
 851:	c6 44 05 dc 2d       	movb   $0x2d,-0x24(%ebp,%eax,1)

  while(--i >= 0)
 856:	eb 1d                	jmp    875 <printint+0xa7>
    putc(fd, buf[i]);
 858:	8d 55 dc             	lea    -0x24(%ebp),%edx
 85b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 85e:	01 d0                	add    %edx,%eax
 860:	0f b6 00             	movzbl (%eax),%eax
 863:	0f be c0             	movsbl %al,%eax
 866:	83 ec 08             	sub    $0x8,%esp
 869:	50                   	push   %eax
 86a:	ff 75 08             	pushl  0x8(%ebp)
 86d:	e8 35 ff ff ff       	call   7a7 <putc>
 872:	83 c4 10             	add    $0x10,%esp
  while(--i >= 0)
 875:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
 879:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 87d:	79 d9                	jns    858 <printint+0x8a>
}
 87f:	90                   	nop
 880:	90                   	nop
 881:	c9                   	leave  
 882:	c3                   	ret    

00000883 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 883:	f3 0f 1e fb          	endbr32 
 887:	55                   	push   %ebp
 888:	89 e5                	mov    %esp,%ebp
 88a:	83 ec 28             	sub    $0x28,%esp
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
 88d:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  ap = (uint*)(void*)&fmt + 1;
 894:	8d 45 0c             	lea    0xc(%ebp),%eax
 897:	83 c0 04             	add    $0x4,%eax
 89a:	89 45 e8             	mov    %eax,-0x18(%ebp)
  for(i = 0; fmt[i]; i++){
 89d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8a4:	e9 59 01 00 00       	jmp    a02 <printf+0x17f>
    c = fmt[i] & 0xff;
 8a9:	8b 55 0c             	mov    0xc(%ebp),%edx
 8ac:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8af:	01 d0                	add    %edx,%eax
 8b1:	0f b6 00             	movzbl (%eax),%eax
 8b4:	0f be c0             	movsbl %al,%eax
 8b7:	25 ff 00 00 00       	and    $0xff,%eax
 8bc:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(state == 0){
 8bf:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
 8c3:	75 2c                	jne    8f1 <printf+0x6e>
      if(c == '%'){
 8c5:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 8c9:	75 0c                	jne    8d7 <printf+0x54>
        state = '%';
 8cb:	c7 45 ec 25 00 00 00 	movl   $0x25,-0x14(%ebp)
 8d2:	e9 27 01 00 00       	jmp    9fe <printf+0x17b>
      } else {
        putc(fd, c);
 8d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8da:	0f be c0             	movsbl %al,%eax
 8dd:	83 ec 08             	sub    $0x8,%esp
 8e0:	50                   	push   %eax
 8e1:	ff 75 08             	pushl  0x8(%ebp)
 8e4:	e8 be fe ff ff       	call   7a7 <putc>
 8e9:	83 c4 10             	add    $0x10,%esp
 8ec:	e9 0d 01 00 00       	jmp    9fe <printf+0x17b>
      }
    } else if(state == '%'){
 8f1:	83 7d ec 25          	cmpl   $0x25,-0x14(%ebp)
 8f5:	0f 85 03 01 00 00    	jne    9fe <printf+0x17b>
      if(c == 'd'){
 8fb:	83 7d e4 64          	cmpl   $0x64,-0x1c(%ebp)
 8ff:	75 1e                	jne    91f <printf+0x9c>
        printint(fd, *ap, 10, 1);
 901:	8b 45 e8             	mov    -0x18(%ebp),%eax
 904:	8b 00                	mov    (%eax),%eax
 906:	6a 01                	push   $0x1
 908:	6a 0a                	push   $0xa
 90a:	50                   	push   %eax
 90b:	ff 75 08             	pushl  0x8(%ebp)
 90e:	e8 bb fe ff ff       	call   7ce <printint>
 913:	83 c4 10             	add    $0x10,%esp
        ap++;
 916:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 91a:	e9 d8 00 00 00       	jmp    9f7 <printf+0x174>
      } else if(c == 'x' || c == 'p'){
 91f:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
 923:	74 06                	je     92b <printf+0xa8>
 925:	83 7d e4 70          	cmpl   $0x70,-0x1c(%ebp)
 929:	75 1e                	jne    949 <printf+0xc6>
        printint(fd, *ap, 16, 0);
 92b:	8b 45 e8             	mov    -0x18(%ebp),%eax
 92e:	8b 00                	mov    (%eax),%eax
 930:	6a 00                	push   $0x0
 932:	6a 10                	push   $0x10
 934:	50                   	push   %eax
 935:	ff 75 08             	pushl  0x8(%ebp)
 938:	e8 91 fe ff ff       	call   7ce <printint>
 93d:	83 c4 10             	add    $0x10,%esp
        ap++;
 940:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 944:	e9 ae 00 00 00       	jmp    9f7 <printf+0x174>
      } else if(c == 's'){
 949:	83 7d e4 73          	cmpl   $0x73,-0x1c(%ebp)
 94d:	75 43                	jne    992 <printf+0x10f>
        s = (char*)*ap;
 94f:	8b 45 e8             	mov    -0x18(%ebp),%eax
 952:	8b 00                	mov    (%eax),%eax
 954:	89 45 f4             	mov    %eax,-0xc(%ebp)
        ap++;
 957:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
        if(s == 0)
 95b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 95f:	75 25                	jne    986 <printf+0x103>
          s = "(null)";
 961:	c7 45 f4 e0 0e 00 00 	movl   $0xee0,-0xc(%ebp)
        while(*s != 0){
 968:	eb 1c                	jmp    986 <printf+0x103>
          putc(fd, *s);
 96a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 96d:	0f b6 00             	movzbl (%eax),%eax
 970:	0f be c0             	movsbl %al,%eax
 973:	83 ec 08             	sub    $0x8,%esp
 976:	50                   	push   %eax
 977:	ff 75 08             	pushl  0x8(%ebp)
 97a:	e8 28 fe ff ff       	call   7a7 <putc>
 97f:	83 c4 10             	add    $0x10,%esp
          s++;
 982:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
        while(*s != 0){
 986:	8b 45 f4             	mov    -0xc(%ebp),%eax
 989:	0f b6 00             	movzbl (%eax),%eax
 98c:	84 c0                	test   %al,%al
 98e:	75 da                	jne    96a <printf+0xe7>
 990:	eb 65                	jmp    9f7 <printf+0x174>
        }
      } else if(c == 'c'){
 992:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
 996:	75 1d                	jne    9b5 <printf+0x132>
        putc(fd, *ap);
 998:	8b 45 e8             	mov    -0x18(%ebp),%eax
 99b:	8b 00                	mov    (%eax),%eax
 99d:	0f be c0             	movsbl %al,%eax
 9a0:	83 ec 08             	sub    $0x8,%esp
 9a3:	50                   	push   %eax
 9a4:	ff 75 08             	pushl  0x8(%ebp)
 9a7:	e8 fb fd ff ff       	call   7a7 <putc>
 9ac:	83 c4 10             	add    $0x10,%esp
        ap++;
 9af:	83 45 e8 04          	addl   $0x4,-0x18(%ebp)
 9b3:	eb 42                	jmp    9f7 <printf+0x174>
      } else if(c == '%'){
 9b5:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
 9b9:	75 17                	jne    9d2 <printf+0x14f>
        putc(fd, c);
 9bb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9be:	0f be c0             	movsbl %al,%eax
 9c1:	83 ec 08             	sub    $0x8,%esp
 9c4:	50                   	push   %eax
 9c5:	ff 75 08             	pushl  0x8(%ebp)
 9c8:	e8 da fd ff ff       	call   7a7 <putc>
 9cd:	83 c4 10             	add    $0x10,%esp
 9d0:	eb 25                	jmp    9f7 <printf+0x174>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
 9d2:	83 ec 08             	sub    $0x8,%esp
 9d5:	6a 25                	push   $0x25
 9d7:	ff 75 08             	pushl  0x8(%ebp)
 9da:	e8 c8 fd ff ff       	call   7a7 <putc>
 9df:	83 c4 10             	add    $0x10,%esp
        putc(fd, c);
 9e2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 9e5:	0f be c0             	movsbl %al,%eax
 9e8:	83 ec 08             	sub    $0x8,%esp
 9eb:	50                   	push   %eax
 9ec:	ff 75 08             	pushl  0x8(%ebp)
 9ef:	e8 b3 fd ff ff       	call   7a7 <putc>
 9f4:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
 9f7:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  for(i = 0; fmt[i]; i++){
 9fe:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 a02:	8b 55 0c             	mov    0xc(%ebp),%edx
 a05:	8b 45 f0             	mov    -0x10(%ebp),%eax
 a08:	01 d0                	add    %edx,%eax
 a0a:	0f b6 00             	movzbl (%eax),%eax
 a0d:	84 c0                	test   %al,%al
 a0f:	0f 85 94 fe ff ff    	jne    8a9 <printf+0x26>
    }
  }
}
 a15:	90                   	nop
 a16:	90                   	nop
 a17:	c9                   	leave  
 a18:	c3                   	ret    

00000a19 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 a19:	f3 0f 1e fb          	endbr32 
 a1d:	55                   	push   %ebp
 a1e:	89 e5                	mov    %esp,%ebp
 a20:	83 ec 10             	sub    $0x10,%esp
  Header *bp, *p;

  bp = (Header*)ap - 1;
 a23:	8b 45 08             	mov    0x8(%ebp),%eax
 a26:	83 e8 08             	sub    $0x8,%eax
 a29:	89 45 f8             	mov    %eax,-0x8(%ebp)
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a2c:	a1 9c 11 00 00       	mov    0x119c,%eax
 a31:	89 45 fc             	mov    %eax,-0x4(%ebp)
 a34:	eb 24                	jmp    a5a <free+0x41>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 a36:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a39:	8b 00                	mov    (%eax),%eax
 a3b:	39 45 fc             	cmp    %eax,-0x4(%ebp)
 a3e:	72 12                	jb     a52 <free+0x39>
 a40:	8b 45 f8             	mov    -0x8(%ebp),%eax
 a43:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 a46:	77 24                	ja     a6c <free+0x53>
 a48:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a4b:	8b 00                	mov    (%eax),%eax
 a4d:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 a50:	72 1a                	jb     a6c <free+0x53>
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 a52:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a55:	8b 00                	mov    (%eax),%eax
 a57:	89 45 fc             	mov    %eax,-0x4(%ebp)
 a5a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 a5d:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 a60:	76 d4                	jbe    a36 <free+0x1d>
 a62:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a65:	8b 00                	mov    (%eax),%eax
 a67:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 a6a:	73 ca                	jae    a36 <free+0x1d>
      break;
  if(bp + bp->s.size == p->s.ptr){
 a6c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 a6f:	8b 40 04             	mov    0x4(%eax),%eax
 a72:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 a79:	8b 45 f8             	mov    -0x8(%ebp),%eax
 a7c:	01 c2                	add    %eax,%edx
 a7e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a81:	8b 00                	mov    (%eax),%eax
 a83:	39 c2                	cmp    %eax,%edx
 a85:	75 24                	jne    aab <free+0x92>
    bp->s.size += p->s.ptr->s.size;
 a87:	8b 45 f8             	mov    -0x8(%ebp),%eax
 a8a:	8b 50 04             	mov    0x4(%eax),%edx
 a8d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 a90:	8b 00                	mov    (%eax),%eax
 a92:	8b 40 04             	mov    0x4(%eax),%eax
 a95:	01 c2                	add    %eax,%edx
 a97:	8b 45 f8             	mov    -0x8(%ebp),%eax
 a9a:	89 50 04             	mov    %edx,0x4(%eax)
    bp->s.ptr = p->s.ptr->s.ptr;
 a9d:	8b 45 fc             	mov    -0x4(%ebp),%eax
 aa0:	8b 00                	mov    (%eax),%eax
 aa2:	8b 10                	mov    (%eax),%edx
 aa4:	8b 45 f8             	mov    -0x8(%ebp),%eax
 aa7:	89 10                	mov    %edx,(%eax)
 aa9:	eb 0a                	jmp    ab5 <free+0x9c>
  } else
    bp->s.ptr = p->s.ptr;
 aab:	8b 45 fc             	mov    -0x4(%ebp),%eax
 aae:	8b 10                	mov    (%eax),%edx
 ab0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 ab3:	89 10                	mov    %edx,(%eax)
  if(p + p->s.size == bp){
 ab5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 ab8:	8b 40 04             	mov    0x4(%eax),%eax
 abb:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
 ac2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 ac5:	01 d0                	add    %edx,%eax
 ac7:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 aca:	75 20                	jne    aec <free+0xd3>
    p->s.size += bp->s.size;
 acc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 acf:	8b 50 04             	mov    0x4(%eax),%edx
 ad2:	8b 45 f8             	mov    -0x8(%ebp),%eax
 ad5:	8b 40 04             	mov    0x4(%eax),%eax
 ad8:	01 c2                	add    %eax,%edx
 ada:	8b 45 fc             	mov    -0x4(%ebp),%eax
 add:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 ae0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 ae3:	8b 10                	mov    (%eax),%edx
 ae5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 ae8:	89 10                	mov    %edx,(%eax)
 aea:	eb 08                	jmp    af4 <free+0xdb>
  } else
    p->s.ptr = bp;
 aec:	8b 45 fc             	mov    -0x4(%ebp),%eax
 aef:	8b 55 f8             	mov    -0x8(%ebp),%edx
 af2:	89 10                	mov    %edx,(%eax)
  freep = p;
 af4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 af7:	a3 9c 11 00 00       	mov    %eax,0x119c
}
 afc:	90                   	nop
 afd:	c9                   	leave  
 afe:	c3                   	ret    

00000aff <morecore>:

static Header*
morecore(uint nu)
{
 aff:	f3 0f 1e fb          	endbr32 
 b03:	55                   	push   %ebp
 b04:	89 e5                	mov    %esp,%ebp
 b06:	83 ec 18             	sub    $0x18,%esp
  char *p;
  Header *hp;

  if(nu < 4096)
 b09:	81 7d 08 ff 0f 00 00 	cmpl   $0xfff,0x8(%ebp)
 b10:	77 07                	ja     b19 <morecore+0x1a>
    nu = 4096;
 b12:	c7 45 08 00 10 00 00 	movl   $0x1000,0x8(%ebp)
  p = sbrk(nu * sizeof(Header));
 b19:	8b 45 08             	mov    0x8(%ebp),%eax
 b1c:	c1 e0 03             	shl    $0x3,%eax
 b1f:	83 ec 0c             	sub    $0xc,%esp
 b22:	50                   	push   %eax
 b23:	e8 4f fc ff ff       	call   777 <sbrk>
 b28:	83 c4 10             	add    $0x10,%esp
 b2b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(p == (char*)-1)
 b2e:	83 7d f4 ff          	cmpl   $0xffffffff,-0xc(%ebp)
 b32:	75 07                	jne    b3b <morecore+0x3c>
    return 0;
 b34:	b8 00 00 00 00       	mov    $0x0,%eax
 b39:	eb 26                	jmp    b61 <morecore+0x62>
  hp = (Header*)p;
 b3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 b3e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  hp->s.size = nu;
 b41:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b44:	8b 55 08             	mov    0x8(%ebp),%edx
 b47:	89 50 04             	mov    %edx,0x4(%eax)
  free((void*)(hp + 1));
 b4a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b4d:	83 c0 08             	add    $0x8,%eax
 b50:	83 ec 0c             	sub    $0xc,%esp
 b53:	50                   	push   %eax
 b54:	e8 c0 fe ff ff       	call   a19 <free>
 b59:	83 c4 10             	add    $0x10,%esp
  return freep;
 b5c:	a1 9c 11 00 00       	mov    0x119c,%eax
}
 b61:	c9                   	leave  
 b62:	c3                   	ret    

00000b63 <malloc>:

void*
malloc(uint nbytes)
{
 b63:	f3 0f 1e fb          	endbr32 
 b67:	55                   	push   %ebp
 b68:	89 e5                	mov    %esp,%ebp
 b6a:	83 ec 18             	sub    $0x18,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 b6d:	8b 45 08             	mov    0x8(%ebp),%eax
 b70:	83 c0 07             	add    $0x7,%eax
 b73:	c1 e8 03             	shr    $0x3,%eax
 b76:	83 c0 01             	add    $0x1,%eax
 b79:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((prevp = freep) == 0){
 b7c:	a1 9c 11 00 00       	mov    0x119c,%eax
 b81:	89 45 f0             	mov    %eax,-0x10(%ebp)
 b84:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 b88:	75 23                	jne    bad <malloc+0x4a>
    base.s.ptr = freep = prevp = &base;
 b8a:	c7 45 f0 94 11 00 00 	movl   $0x1194,-0x10(%ebp)
 b91:	8b 45 f0             	mov    -0x10(%ebp),%eax
 b94:	a3 9c 11 00 00       	mov    %eax,0x119c
 b99:	a1 9c 11 00 00       	mov    0x119c,%eax
 b9e:	a3 94 11 00 00       	mov    %eax,0x1194
    base.s.size = 0;
 ba3:	c7 05 98 11 00 00 00 	movl   $0x0,0x1198
 baa:	00 00 00 
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 bad:	8b 45 f0             	mov    -0x10(%ebp),%eax
 bb0:	8b 00                	mov    (%eax),%eax
 bb2:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 bb5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bb8:	8b 40 04             	mov    0x4(%eax),%eax
 bbb:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 bbe:	77 4d                	ja     c0d <malloc+0xaa>
      if(p->s.size == nunits)
 bc0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bc3:	8b 40 04             	mov    0x4(%eax),%eax
 bc6:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 bc9:	75 0c                	jne    bd7 <malloc+0x74>
        prevp->s.ptr = p->s.ptr;
 bcb:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bce:	8b 10                	mov    (%eax),%edx
 bd0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 bd3:	89 10                	mov    %edx,(%eax)
 bd5:	eb 26                	jmp    bfd <malloc+0x9a>
      else {
        p->s.size -= nunits;
 bd7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bda:	8b 40 04             	mov    0x4(%eax),%eax
 bdd:	2b 45 ec             	sub    -0x14(%ebp),%eax
 be0:	89 c2                	mov    %eax,%edx
 be2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 be5:	89 50 04             	mov    %edx,0x4(%eax)
        p += p->s.size;
 be8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 beb:	8b 40 04             	mov    0x4(%eax),%eax
 bee:	c1 e0 03             	shl    $0x3,%eax
 bf1:	01 45 f4             	add    %eax,-0xc(%ebp)
        p->s.size = nunits;
 bf4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 bf7:	8b 55 ec             	mov    -0x14(%ebp),%edx
 bfa:	89 50 04             	mov    %edx,0x4(%eax)
      }
      freep = prevp;
 bfd:	8b 45 f0             	mov    -0x10(%ebp),%eax
 c00:	a3 9c 11 00 00       	mov    %eax,0x119c
      return (void*)(p + 1);
 c05:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c08:	83 c0 08             	add    $0x8,%eax
 c0b:	eb 3b                	jmp    c48 <malloc+0xe5>
    }
    if(p == freep)
 c0d:	a1 9c 11 00 00       	mov    0x119c,%eax
 c12:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 c15:	75 1e                	jne    c35 <malloc+0xd2>
      if((p = morecore(nunits)) == 0)
 c17:	83 ec 0c             	sub    $0xc,%esp
 c1a:	ff 75 ec             	pushl  -0x14(%ebp)
 c1d:	e8 dd fe ff ff       	call   aff <morecore>
 c22:	83 c4 10             	add    $0x10,%esp
 c25:	89 45 f4             	mov    %eax,-0xc(%ebp)
 c28:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 c2c:	75 07                	jne    c35 <malloc+0xd2>
        return 0;
 c2e:	b8 00 00 00 00       	mov    $0x0,%eax
 c33:	eb 13                	jmp    c48 <malloc+0xe5>
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 c35:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c38:	89 45 f0             	mov    %eax,-0x10(%ebp)
 c3b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 c3e:	8b 00                	mov    (%eax),%eax
 c40:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(p->s.size >= nunits){
 c43:	e9 6d ff ff ff       	jmp    bb5 <malloc+0x52>
  }
}
 c48:	c9                   	leave  
 c49:	c3                   	ret    
