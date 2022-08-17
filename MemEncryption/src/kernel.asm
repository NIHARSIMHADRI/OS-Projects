
kernel:     file format elf32-i386


Disassembly of section .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4                   	.byte 0xe4

8010000c <entry>:
8010000c:	0f 20 e0             	mov    %cr4,%eax
8010000f:	83 c8 10             	or     $0x10,%eax
80100012:	0f 22 e0             	mov    %eax,%cr4
80100015:	b8 00 c0 10 00       	mov    $0x10c000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc 50 e6 10 80       	mov    $0x8010e650,%esp
8010002d:	b8 8b 3a 10 80       	mov    $0x80103a8b,%eax
80100032:	ff e0                	jmp    *%eax

80100034 <binit>:
80100034:	f3 0f 1e fb          	endbr32 
80100038:	55                   	push   %ebp
80100039:	89 e5                	mov    %esp,%ebp
8010003b:	83 ec 18             	sub    $0x18,%esp
8010003e:	83 ec 08             	sub    $0x8,%esp
80100041:	68 38 95 10 80       	push   $0x80109538
80100046:	68 60 e6 10 80       	push   $0x8010e660
8010004b:	e8 d1 53 00 00       	call   80105421 <initlock>
80100050:	83 c4 10             	add    $0x10,%esp
80100053:	c7 05 ac 2d 11 80 5c 	movl   $0x80112d5c,0x80112dac
8010005a:	2d 11 80 
8010005d:	c7 05 b0 2d 11 80 5c 	movl   $0x80112d5c,0x80112db0
80100064:	2d 11 80 
80100067:	c7 45 f4 94 e6 10 80 	movl   $0x8010e694,-0xc(%ebp)
8010006e:	eb 47                	jmp    801000b7 <binit+0x83>
80100070:	8b 15 b0 2d 11 80    	mov    0x80112db0,%edx
80100076:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100079:	89 50 54             	mov    %edx,0x54(%eax)
8010007c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010007f:	c7 40 50 5c 2d 11 80 	movl   $0x80112d5c,0x50(%eax)
80100086:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100089:	83 c0 0c             	add    $0xc,%eax
8010008c:	83 ec 08             	sub    $0x8,%esp
8010008f:	68 3f 95 10 80       	push   $0x8010953f
80100094:	50                   	push   %eax
80100095:	e8 f4 51 00 00       	call   8010528e <initsleeplock>
8010009a:	83 c4 10             	add    $0x10,%esp
8010009d:	a1 b0 2d 11 80       	mov    0x80112db0,%eax
801000a2:	8b 55 f4             	mov    -0xc(%ebp),%edx
801000a5:	89 50 50             	mov    %edx,0x50(%eax)
801000a8:	8b 45 f4             	mov    -0xc(%ebp),%eax
801000ab:	a3 b0 2d 11 80       	mov    %eax,0x80112db0
801000b0:	81 45 f4 5c 02 00 00 	addl   $0x25c,-0xc(%ebp)
801000b7:	b8 5c 2d 11 80       	mov    $0x80112d5c,%eax
801000bc:	39 45 f4             	cmp    %eax,-0xc(%ebp)
801000bf:	72 af                	jb     80100070 <binit+0x3c>
801000c1:	90                   	nop
801000c2:	90                   	nop
801000c3:	c9                   	leave  
801000c4:	c3                   	ret    

801000c5 <bget>:
801000c5:	f3 0f 1e fb          	endbr32 
801000c9:	55                   	push   %ebp
801000ca:	89 e5                	mov    %esp,%ebp
801000cc:	83 ec 18             	sub    $0x18,%esp
801000cf:	83 ec 0c             	sub    $0xc,%esp
801000d2:	68 60 e6 10 80       	push   $0x8010e660
801000d7:	e8 6b 53 00 00       	call   80105447 <acquire>
801000dc:	83 c4 10             	add    $0x10,%esp
801000df:	a1 b0 2d 11 80       	mov    0x80112db0,%eax
801000e4:	89 45 f4             	mov    %eax,-0xc(%ebp)
801000e7:	eb 58                	jmp    80100141 <bget+0x7c>
801000e9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801000ec:	8b 40 04             	mov    0x4(%eax),%eax
801000ef:	39 45 08             	cmp    %eax,0x8(%ebp)
801000f2:	75 44                	jne    80100138 <bget+0x73>
801000f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
801000f7:	8b 40 08             	mov    0x8(%eax),%eax
801000fa:	39 45 0c             	cmp    %eax,0xc(%ebp)
801000fd:	75 39                	jne    80100138 <bget+0x73>
801000ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100102:	8b 40 4c             	mov    0x4c(%eax),%eax
80100105:	8d 50 01             	lea    0x1(%eax),%edx
80100108:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010010b:	89 50 4c             	mov    %edx,0x4c(%eax)
8010010e:	83 ec 0c             	sub    $0xc,%esp
80100111:	68 60 e6 10 80       	push   $0x8010e660
80100116:	e8 9e 53 00 00       	call   801054b9 <release>
8010011b:	83 c4 10             	add    $0x10,%esp
8010011e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100121:	83 c0 0c             	add    $0xc,%eax
80100124:	83 ec 0c             	sub    $0xc,%esp
80100127:	50                   	push   %eax
80100128:	e8 a1 51 00 00       	call   801052ce <acquiresleep>
8010012d:	83 c4 10             	add    $0x10,%esp
80100130:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100133:	e9 9d 00 00 00       	jmp    801001d5 <bget+0x110>
80100138:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010013b:	8b 40 54             	mov    0x54(%eax),%eax
8010013e:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100141:	81 7d f4 5c 2d 11 80 	cmpl   $0x80112d5c,-0xc(%ebp)
80100148:	75 9f                	jne    801000e9 <bget+0x24>
8010014a:	a1 ac 2d 11 80       	mov    0x80112dac,%eax
8010014f:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100152:	eb 6b                	jmp    801001bf <bget+0xfa>
80100154:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100157:	8b 40 4c             	mov    0x4c(%eax),%eax
8010015a:	85 c0                	test   %eax,%eax
8010015c:	75 58                	jne    801001b6 <bget+0xf1>
8010015e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100161:	8b 00                	mov    (%eax),%eax
80100163:	83 e0 04             	and    $0x4,%eax
80100166:	85 c0                	test   %eax,%eax
80100168:	75 4c                	jne    801001b6 <bget+0xf1>
8010016a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010016d:	8b 55 08             	mov    0x8(%ebp),%edx
80100170:	89 50 04             	mov    %edx,0x4(%eax)
80100173:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100176:	8b 55 0c             	mov    0xc(%ebp),%edx
80100179:	89 50 08             	mov    %edx,0x8(%eax)
8010017c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010017f:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80100185:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100188:	c7 40 4c 01 00 00 00 	movl   $0x1,0x4c(%eax)
8010018f:	83 ec 0c             	sub    $0xc,%esp
80100192:	68 60 e6 10 80       	push   $0x8010e660
80100197:	e8 1d 53 00 00       	call   801054b9 <release>
8010019c:	83 c4 10             	add    $0x10,%esp
8010019f:	8b 45 f4             	mov    -0xc(%ebp),%eax
801001a2:	83 c0 0c             	add    $0xc,%eax
801001a5:	83 ec 0c             	sub    $0xc,%esp
801001a8:	50                   	push   %eax
801001a9:	e8 20 51 00 00       	call   801052ce <acquiresleep>
801001ae:	83 c4 10             	add    $0x10,%esp
801001b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
801001b4:	eb 1f                	jmp    801001d5 <bget+0x110>
801001b6:	8b 45 f4             	mov    -0xc(%ebp),%eax
801001b9:	8b 40 50             	mov    0x50(%eax),%eax
801001bc:	89 45 f4             	mov    %eax,-0xc(%ebp)
801001bf:	81 7d f4 5c 2d 11 80 	cmpl   $0x80112d5c,-0xc(%ebp)
801001c6:	75 8c                	jne    80100154 <bget+0x8f>
801001c8:	83 ec 0c             	sub    $0xc,%esp
801001cb:	68 46 95 10 80       	push   $0x80109546
801001d0:	e8 33 04 00 00       	call   80100608 <panic>
801001d5:	c9                   	leave  
801001d6:	c3                   	ret    

801001d7 <bread>:
801001d7:	f3 0f 1e fb          	endbr32 
801001db:	55                   	push   %ebp
801001dc:	89 e5                	mov    %esp,%ebp
801001de:	83 ec 18             	sub    $0x18,%esp
801001e1:	83 ec 08             	sub    $0x8,%esp
801001e4:	ff 75 0c             	pushl  0xc(%ebp)
801001e7:	ff 75 08             	pushl  0x8(%ebp)
801001ea:	e8 d6 fe ff ff       	call   801000c5 <bget>
801001ef:	83 c4 10             	add    $0x10,%esp
801001f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
801001f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801001f8:	8b 00                	mov    (%eax),%eax
801001fa:	83 e0 02             	and    $0x2,%eax
801001fd:	85 c0                	test   %eax,%eax
801001ff:	75 0e                	jne    8010020f <bread+0x38>
80100201:	83 ec 0c             	sub    $0xc,%esp
80100204:	ff 75 f4             	pushl  -0xc(%ebp)
80100207:	e8 de 28 00 00       	call   80102aea <iderw>
8010020c:	83 c4 10             	add    $0x10,%esp
8010020f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100212:	c9                   	leave  
80100213:	c3                   	ret    

80100214 <bwrite>:
80100214:	f3 0f 1e fb          	endbr32 
80100218:	55                   	push   %ebp
80100219:	89 e5                	mov    %esp,%ebp
8010021b:	83 ec 08             	sub    $0x8,%esp
8010021e:	8b 45 08             	mov    0x8(%ebp),%eax
80100221:	83 c0 0c             	add    $0xc,%eax
80100224:	83 ec 0c             	sub    $0xc,%esp
80100227:	50                   	push   %eax
80100228:	e8 5b 51 00 00       	call   80105388 <holdingsleep>
8010022d:	83 c4 10             	add    $0x10,%esp
80100230:	85 c0                	test   %eax,%eax
80100232:	75 0d                	jne    80100241 <bwrite+0x2d>
80100234:	83 ec 0c             	sub    $0xc,%esp
80100237:	68 57 95 10 80       	push   $0x80109557
8010023c:	e8 c7 03 00 00       	call   80100608 <panic>
80100241:	8b 45 08             	mov    0x8(%ebp),%eax
80100244:	8b 00                	mov    (%eax),%eax
80100246:	83 c8 04             	or     $0x4,%eax
80100249:	89 c2                	mov    %eax,%edx
8010024b:	8b 45 08             	mov    0x8(%ebp),%eax
8010024e:	89 10                	mov    %edx,(%eax)
80100250:	83 ec 0c             	sub    $0xc,%esp
80100253:	ff 75 08             	pushl  0x8(%ebp)
80100256:	e8 8f 28 00 00       	call   80102aea <iderw>
8010025b:	83 c4 10             	add    $0x10,%esp
8010025e:	90                   	nop
8010025f:	c9                   	leave  
80100260:	c3                   	ret    

80100261 <brelse>:
80100261:	f3 0f 1e fb          	endbr32 
80100265:	55                   	push   %ebp
80100266:	89 e5                	mov    %esp,%ebp
80100268:	83 ec 08             	sub    $0x8,%esp
8010026b:	8b 45 08             	mov    0x8(%ebp),%eax
8010026e:	83 c0 0c             	add    $0xc,%eax
80100271:	83 ec 0c             	sub    $0xc,%esp
80100274:	50                   	push   %eax
80100275:	e8 0e 51 00 00       	call   80105388 <holdingsleep>
8010027a:	83 c4 10             	add    $0x10,%esp
8010027d:	85 c0                	test   %eax,%eax
8010027f:	75 0d                	jne    8010028e <brelse+0x2d>
80100281:	83 ec 0c             	sub    $0xc,%esp
80100284:	68 5e 95 10 80       	push   $0x8010955e
80100289:	e8 7a 03 00 00       	call   80100608 <panic>
8010028e:	8b 45 08             	mov    0x8(%ebp),%eax
80100291:	83 c0 0c             	add    $0xc,%eax
80100294:	83 ec 0c             	sub    $0xc,%esp
80100297:	50                   	push   %eax
80100298:	e8 99 50 00 00       	call   80105336 <releasesleep>
8010029d:	83 c4 10             	add    $0x10,%esp
801002a0:	83 ec 0c             	sub    $0xc,%esp
801002a3:	68 60 e6 10 80       	push   $0x8010e660
801002a8:	e8 9a 51 00 00       	call   80105447 <acquire>
801002ad:	83 c4 10             	add    $0x10,%esp
801002b0:	8b 45 08             	mov    0x8(%ebp),%eax
801002b3:	8b 40 4c             	mov    0x4c(%eax),%eax
801002b6:	8d 50 ff             	lea    -0x1(%eax),%edx
801002b9:	8b 45 08             	mov    0x8(%ebp),%eax
801002bc:	89 50 4c             	mov    %edx,0x4c(%eax)
801002bf:	8b 45 08             	mov    0x8(%ebp),%eax
801002c2:	8b 40 4c             	mov    0x4c(%eax),%eax
801002c5:	85 c0                	test   %eax,%eax
801002c7:	75 47                	jne    80100310 <brelse+0xaf>
801002c9:	8b 45 08             	mov    0x8(%ebp),%eax
801002cc:	8b 40 54             	mov    0x54(%eax),%eax
801002cf:	8b 55 08             	mov    0x8(%ebp),%edx
801002d2:	8b 52 50             	mov    0x50(%edx),%edx
801002d5:	89 50 50             	mov    %edx,0x50(%eax)
801002d8:	8b 45 08             	mov    0x8(%ebp),%eax
801002db:	8b 40 50             	mov    0x50(%eax),%eax
801002de:	8b 55 08             	mov    0x8(%ebp),%edx
801002e1:	8b 52 54             	mov    0x54(%edx),%edx
801002e4:	89 50 54             	mov    %edx,0x54(%eax)
801002e7:	8b 15 b0 2d 11 80    	mov    0x80112db0,%edx
801002ed:	8b 45 08             	mov    0x8(%ebp),%eax
801002f0:	89 50 54             	mov    %edx,0x54(%eax)
801002f3:	8b 45 08             	mov    0x8(%ebp),%eax
801002f6:	c7 40 50 5c 2d 11 80 	movl   $0x80112d5c,0x50(%eax)
801002fd:	a1 b0 2d 11 80       	mov    0x80112db0,%eax
80100302:	8b 55 08             	mov    0x8(%ebp),%edx
80100305:	89 50 50             	mov    %edx,0x50(%eax)
80100308:	8b 45 08             	mov    0x8(%ebp),%eax
8010030b:	a3 b0 2d 11 80       	mov    %eax,0x80112db0
80100310:	83 ec 0c             	sub    $0xc,%esp
80100313:	68 60 e6 10 80       	push   $0x8010e660
80100318:	e8 9c 51 00 00       	call   801054b9 <release>
8010031d:	83 c4 10             	add    $0x10,%esp
80100320:	90                   	nop
80100321:	c9                   	leave  
80100322:	c3                   	ret    

80100323 <inb>:
// Routines to let C code use special x86 instructions.

static inline uchar
inb(ushort port)
{
80100323:	55                   	push   %ebp
80100324:	89 e5                	mov    %esp,%ebp
80100326:	83 ec 14             	sub    $0x14,%esp
80100329:	8b 45 08             	mov    0x8(%ebp),%eax
8010032c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  uchar data;

  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80100330:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
80100334:	89 c2                	mov    %eax,%edx
80100336:	ec                   	in     (%dx),%al
80100337:	88 45 ff             	mov    %al,-0x1(%ebp)
  return data;
8010033a:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
}
8010033e:	c9                   	leave  
8010033f:	c3                   	ret    

80100340 <outb>:
               "memory", "cc");
}

static inline void
outb(ushort port, uchar data)
{
80100340:	55                   	push   %ebp
80100341:	89 e5                	mov    %esp,%ebp
80100343:	83 ec 08             	sub    $0x8,%esp
80100346:	8b 45 08             	mov    0x8(%ebp),%eax
80100349:	8b 55 0c             	mov    0xc(%ebp),%edx
8010034c:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80100350:	89 d0                	mov    %edx,%eax
80100352:	88 45 f8             	mov    %al,-0x8(%ebp)
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100355:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80100359:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
8010035d:	ee                   	out    %al,(%dx)
}
8010035e:	90                   	nop
8010035f:	c9                   	leave  
80100360:	c3                   	ret    

80100361 <cli>:
  asm volatile("movw %0, %%gs" : : "r" (v));
}

static inline void
cli(void)
{
80100361:	55                   	push   %ebp
80100362:	89 e5                	mov    %esp,%ebp
  asm volatile("cli");
80100364:	fa                   	cli    
}
80100365:	90                   	nop
80100366:	5d                   	pop    %ebp
80100367:	c3                   	ret    

80100368 <printint>:
  int locking;
} cons;

static void
printint(int xx, int base, int sign)
{
80100368:	f3 0f 1e fb          	endbr32 
8010036c:	55                   	push   %ebp
8010036d:	89 e5                	mov    %esp,%ebp
8010036f:	83 ec 28             	sub    $0x28,%esp
  static char digits[] = "0123456789abcdef";
  char buf[16];
  int i;
  uint x;

  if(sign && (sign = xx < 0))
80100372:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80100376:	74 1c                	je     80100394 <printint+0x2c>
80100378:	8b 45 08             	mov    0x8(%ebp),%eax
8010037b:	c1 e8 1f             	shr    $0x1f,%eax
8010037e:	0f b6 c0             	movzbl %al,%eax
80100381:	89 45 10             	mov    %eax,0x10(%ebp)
80100384:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80100388:	74 0a                	je     80100394 <printint+0x2c>
    x = -xx;
8010038a:	8b 45 08             	mov    0x8(%ebp),%eax
8010038d:	f7 d8                	neg    %eax
8010038f:	89 45 f0             	mov    %eax,-0x10(%ebp)
80100392:	eb 06                	jmp    8010039a <printint+0x32>
  else
    x = xx;
80100394:	8b 45 08             	mov    0x8(%ebp),%eax
80100397:	89 45 f0             	mov    %eax,-0x10(%ebp)

  i = 0;
8010039a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  do{
    buf[i++] = digits[x % base];
801003a1:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801003a4:	8b 45 f0             	mov    -0x10(%ebp),%eax
801003a7:	ba 00 00 00 00       	mov    $0x0,%edx
801003ac:	f7 f1                	div    %ecx
801003ae:	89 d1                	mov    %edx,%ecx
801003b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
801003b3:	8d 50 01             	lea    0x1(%eax),%edx
801003b6:	89 55 f4             	mov    %edx,-0xc(%ebp)
801003b9:	0f b6 91 04 b0 10 80 	movzbl -0x7fef4ffc(%ecx),%edx
801003c0:	88 54 05 e0          	mov    %dl,-0x20(%ebp,%eax,1)
  }while((x /= base) != 0);
801003c4:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801003c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
801003ca:	ba 00 00 00 00       	mov    $0x0,%edx
801003cf:	f7 f1                	div    %ecx
801003d1:	89 45 f0             	mov    %eax,-0x10(%ebp)
801003d4:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801003d8:	75 c7                	jne    801003a1 <printint+0x39>

  if(sign)
801003da:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
801003de:	74 2a                	je     8010040a <printint+0xa2>
    buf[i++] = '-';
801003e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
801003e3:	8d 50 01             	lea    0x1(%eax),%edx
801003e6:	89 55 f4             	mov    %edx,-0xc(%ebp)
801003e9:	c6 44 05 e0 2d       	movb   $0x2d,-0x20(%ebp,%eax,1)

  while(--i >= 0)
801003ee:	eb 1a                	jmp    8010040a <printint+0xa2>
    consputc(buf[i]);
801003f0:	8d 55 e0             	lea    -0x20(%ebp),%edx
801003f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801003f6:	01 d0                	add    %edx,%eax
801003f8:	0f b6 00             	movzbl (%eax),%eax
801003fb:	0f be c0             	movsbl %al,%eax
801003fe:	83 ec 0c             	sub    $0xc,%esp
80100401:	50                   	push   %eax
80100402:	e8 36 04 00 00       	call   8010083d <consputc>
80100407:	83 c4 10             	add    $0x10,%esp
  while(--i >= 0)
8010040a:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
8010040e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80100412:	79 dc                	jns    801003f0 <printint+0x88>
}
80100414:	90                   	nop
80100415:	90                   	nop
80100416:	c9                   	leave  
80100417:	c3                   	ret    

80100418 <cprintf>:
//PAGEBREAK: 50

// Print to the console. only understands %d, %x, %p, %s.
void
cprintf(char *fmt, ...)
{
80100418:	f3 0f 1e fb          	endbr32 
8010041c:	55                   	push   %ebp
8010041d:	89 e5                	mov    %esp,%ebp
8010041f:	83 ec 28             	sub    $0x28,%esp
  int i, c, locking;
  uint *argp;
  char *s;

  locking = cons.locking;
80100422:	a1 f4 d5 10 80       	mov    0x8010d5f4,%eax
80100427:	89 45 e8             	mov    %eax,-0x18(%ebp)
  //changed: added holding check
  if(locking && !holding(&cons.lock))
8010042a:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
8010042e:	74 24                	je     80100454 <cprintf+0x3c>
80100430:	83 ec 0c             	sub    $0xc,%esp
80100433:	68 c0 d5 10 80       	push   $0x8010d5c0
80100438:	e8 51 51 00 00       	call   8010558e <holding>
8010043d:	83 c4 10             	add    $0x10,%esp
80100440:	85 c0                	test   %eax,%eax
80100442:	75 10                	jne    80100454 <cprintf+0x3c>
    acquire(&cons.lock);
80100444:	83 ec 0c             	sub    $0xc,%esp
80100447:	68 c0 d5 10 80       	push   $0x8010d5c0
8010044c:	e8 f6 4f 00 00       	call   80105447 <acquire>
80100451:	83 c4 10             	add    $0x10,%esp

  if (fmt == 0)
80100454:	8b 45 08             	mov    0x8(%ebp),%eax
80100457:	85 c0                	test   %eax,%eax
80100459:	75 0d                	jne    80100468 <cprintf+0x50>
    panic("null fmt");
8010045b:	83 ec 0c             	sub    $0xc,%esp
8010045e:	68 68 95 10 80       	push   $0x80109568
80100463:	e8 a0 01 00 00       	call   80100608 <panic>

  argp = (uint*)(void*)(&fmt + 1);
80100468:	8d 45 0c             	lea    0xc(%ebp),%eax
8010046b:	89 45 f0             	mov    %eax,-0x10(%ebp)
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
8010046e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80100475:	e9 52 01 00 00       	jmp    801005cc <cprintf+0x1b4>
    if(c != '%'){
8010047a:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
8010047e:	74 13                	je     80100493 <cprintf+0x7b>
      consputc(c);
80100480:	83 ec 0c             	sub    $0xc,%esp
80100483:	ff 75 e4             	pushl  -0x1c(%ebp)
80100486:	e8 b2 03 00 00       	call   8010083d <consputc>
8010048b:	83 c4 10             	add    $0x10,%esp
      continue;
8010048e:	e9 35 01 00 00       	jmp    801005c8 <cprintf+0x1b0>
    }
    c = fmt[++i] & 0xff;
80100493:	8b 55 08             	mov    0x8(%ebp),%edx
80100496:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
8010049a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010049d:	01 d0                	add    %edx,%eax
8010049f:	0f b6 00             	movzbl (%eax),%eax
801004a2:	0f be c0             	movsbl %al,%eax
801004a5:	25 ff 00 00 00       	and    $0xff,%eax
801004aa:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if(c == 0)
801004ad:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
801004b1:	0f 84 37 01 00 00    	je     801005ee <cprintf+0x1d6>
      break;
    switch(c){
801004b7:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
801004bb:	0f 84 dc 00 00 00    	je     8010059d <cprintf+0x185>
801004c1:	83 7d e4 25          	cmpl   $0x25,-0x1c(%ebp)
801004c5:	0f 8c e1 00 00 00    	jl     801005ac <cprintf+0x194>
801004cb:	83 7d e4 78          	cmpl   $0x78,-0x1c(%ebp)
801004cf:	0f 8f d7 00 00 00    	jg     801005ac <cprintf+0x194>
801004d5:	83 7d e4 63          	cmpl   $0x63,-0x1c(%ebp)
801004d9:	0f 8c cd 00 00 00    	jl     801005ac <cprintf+0x194>
801004df:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801004e2:	83 e8 63             	sub    $0x63,%eax
801004e5:	83 f8 15             	cmp    $0x15,%eax
801004e8:	0f 87 be 00 00 00    	ja     801005ac <cprintf+0x194>
801004ee:	8b 04 85 78 95 10 80 	mov    -0x7fef6a88(,%eax,4),%eax
801004f5:	3e ff e0             	notrack jmp *%eax
    case 'd':
      printint(*argp++, 10, 1);
801004f8:	8b 45 f0             	mov    -0x10(%ebp),%eax
801004fb:	8d 50 04             	lea    0x4(%eax),%edx
801004fe:	89 55 f0             	mov    %edx,-0x10(%ebp)
80100501:	8b 00                	mov    (%eax),%eax
80100503:	83 ec 04             	sub    $0x4,%esp
80100506:	6a 01                	push   $0x1
80100508:	6a 0a                	push   $0xa
8010050a:	50                   	push   %eax
8010050b:	e8 58 fe ff ff       	call   80100368 <printint>
80100510:	83 c4 10             	add    $0x10,%esp
      break;
80100513:	e9 b0 00 00 00       	jmp    801005c8 <cprintf+0x1b0>
    case 'x':
    case 'p':
      printint(*argp++, 16, 0);
80100518:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010051b:	8d 50 04             	lea    0x4(%eax),%edx
8010051e:	89 55 f0             	mov    %edx,-0x10(%ebp)
80100521:	8b 00                	mov    (%eax),%eax
80100523:	83 ec 04             	sub    $0x4,%esp
80100526:	6a 00                	push   $0x0
80100528:	6a 10                	push   $0x10
8010052a:	50                   	push   %eax
8010052b:	e8 38 fe ff ff       	call   80100368 <printint>
80100530:	83 c4 10             	add    $0x10,%esp
      break;
80100533:	e9 90 00 00 00       	jmp    801005c8 <cprintf+0x1b0>
    case 's':
      if((s = (char*)*argp++) == 0)
80100538:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010053b:	8d 50 04             	lea    0x4(%eax),%edx
8010053e:	89 55 f0             	mov    %edx,-0x10(%ebp)
80100541:	8b 00                	mov    (%eax),%eax
80100543:	89 45 ec             	mov    %eax,-0x14(%ebp)
80100546:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
8010054a:	75 22                	jne    8010056e <cprintf+0x156>
        s = "(null)";
8010054c:	c7 45 ec 71 95 10 80 	movl   $0x80109571,-0x14(%ebp)
      for(; *s; s++)
80100553:	eb 19                	jmp    8010056e <cprintf+0x156>
        consputc(*s);
80100555:	8b 45 ec             	mov    -0x14(%ebp),%eax
80100558:	0f b6 00             	movzbl (%eax),%eax
8010055b:	0f be c0             	movsbl %al,%eax
8010055e:	83 ec 0c             	sub    $0xc,%esp
80100561:	50                   	push   %eax
80100562:	e8 d6 02 00 00       	call   8010083d <consputc>
80100567:	83 c4 10             	add    $0x10,%esp
      for(; *s; s++)
8010056a:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
8010056e:	8b 45 ec             	mov    -0x14(%ebp),%eax
80100571:	0f b6 00             	movzbl (%eax),%eax
80100574:	84 c0                	test   %al,%al
80100576:	75 dd                	jne    80100555 <cprintf+0x13d>
      break;
80100578:	eb 4e                	jmp    801005c8 <cprintf+0x1b0>
    case 'c':
      s = (char*)argp++;
8010057a:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010057d:	8d 50 04             	lea    0x4(%eax),%edx
80100580:	89 55 f0             	mov    %edx,-0x10(%ebp)
80100583:	89 45 ec             	mov    %eax,-0x14(%ebp)
      consputc(*(s));
80100586:	8b 45 ec             	mov    -0x14(%ebp),%eax
80100589:	0f b6 00             	movzbl (%eax),%eax
8010058c:	0f be c0             	movsbl %al,%eax
8010058f:	83 ec 0c             	sub    $0xc,%esp
80100592:	50                   	push   %eax
80100593:	e8 a5 02 00 00       	call   8010083d <consputc>
80100598:	83 c4 10             	add    $0x10,%esp
      break;
8010059b:	eb 2b                	jmp    801005c8 <cprintf+0x1b0>
    case '%':
      consputc('%');
8010059d:	83 ec 0c             	sub    $0xc,%esp
801005a0:	6a 25                	push   $0x25
801005a2:	e8 96 02 00 00       	call   8010083d <consputc>
801005a7:	83 c4 10             	add    $0x10,%esp
      break;
801005aa:	eb 1c                	jmp    801005c8 <cprintf+0x1b0>
    default:
      // Print unknown % sequence to draw attention.
      consputc('%');
801005ac:	83 ec 0c             	sub    $0xc,%esp
801005af:	6a 25                	push   $0x25
801005b1:	e8 87 02 00 00       	call   8010083d <consputc>
801005b6:	83 c4 10             	add    $0x10,%esp
      consputc(c);
801005b9:	83 ec 0c             	sub    $0xc,%esp
801005bc:	ff 75 e4             	pushl  -0x1c(%ebp)
801005bf:	e8 79 02 00 00       	call   8010083d <consputc>
801005c4:	83 c4 10             	add    $0x10,%esp
      break;
801005c7:	90                   	nop
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
801005c8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
801005cc:	8b 55 08             	mov    0x8(%ebp),%edx
801005cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
801005d2:	01 d0                	add    %edx,%eax
801005d4:	0f b6 00             	movzbl (%eax),%eax
801005d7:	0f be c0             	movsbl %al,%eax
801005da:	25 ff 00 00 00       	and    $0xff,%eax
801005df:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801005e2:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
801005e6:	0f 85 8e fe ff ff    	jne    8010047a <cprintf+0x62>
801005ec:	eb 01                	jmp    801005ef <cprintf+0x1d7>
      break;
801005ee:	90                   	nop
    }
  }

  if(locking)
801005ef:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
801005f3:	74 10                	je     80100605 <cprintf+0x1ed>
    release(&cons.lock);
801005f5:	83 ec 0c             	sub    $0xc,%esp
801005f8:	68 c0 d5 10 80       	push   $0x8010d5c0
801005fd:	e8 b7 4e 00 00       	call   801054b9 <release>
80100602:	83 c4 10             	add    $0x10,%esp
}
80100605:	90                   	nop
80100606:	c9                   	leave  
80100607:	c3                   	ret    

80100608 <panic>:

void
panic(char *s)
{
80100608:	f3 0f 1e fb          	endbr32 
8010060c:	55                   	push   %ebp
8010060d:	89 e5                	mov    %esp,%ebp
8010060f:	83 ec 38             	sub    $0x38,%esp
  int i;
  uint pcs[10];

  cli();
80100612:	e8 4a fd ff ff       	call   80100361 <cli>
  cons.locking = 0;
80100617:	c7 05 f4 d5 10 80 00 	movl   $0x0,0x8010d5f4
8010061e:	00 00 00 
  // use lapiccpunum so that we can call panic from mycpu()
  cprintf("lapicid %d: panic: ", lapicid());
80100621:	e8 b6 2b 00 00       	call   801031dc <lapicid>
80100626:	83 ec 08             	sub    $0x8,%esp
80100629:	50                   	push   %eax
8010062a:	68 d0 95 10 80       	push   $0x801095d0
8010062f:	e8 e4 fd ff ff       	call   80100418 <cprintf>
80100634:	83 c4 10             	add    $0x10,%esp
  cprintf(s);
80100637:	8b 45 08             	mov    0x8(%ebp),%eax
8010063a:	83 ec 0c             	sub    $0xc,%esp
8010063d:	50                   	push   %eax
8010063e:	e8 d5 fd ff ff       	call   80100418 <cprintf>
80100643:	83 c4 10             	add    $0x10,%esp
  cprintf("\n");
80100646:	83 ec 0c             	sub    $0xc,%esp
80100649:	68 e4 95 10 80       	push   $0x801095e4
8010064e:	e8 c5 fd ff ff       	call   80100418 <cprintf>
80100653:	83 c4 10             	add    $0x10,%esp
  getcallerpcs(&s, pcs);
80100656:	83 ec 08             	sub    $0x8,%esp
80100659:	8d 45 cc             	lea    -0x34(%ebp),%eax
8010065c:	50                   	push   %eax
8010065d:	8d 45 08             	lea    0x8(%ebp),%eax
80100660:	50                   	push   %eax
80100661:	e8 a9 4e 00 00       	call   8010550f <getcallerpcs>
80100666:	83 c4 10             	add    $0x10,%esp
  for(i=0; i<10; i++)
80100669:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80100670:	eb 1c                	jmp    8010068e <panic+0x86>
    cprintf(" %p", pcs[i]);
80100672:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100675:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax
80100679:	83 ec 08             	sub    $0x8,%esp
8010067c:	50                   	push   %eax
8010067d:	68 e6 95 10 80       	push   $0x801095e6
80100682:	e8 91 fd ff ff       	call   80100418 <cprintf>
80100687:	83 c4 10             	add    $0x10,%esp
  for(i=0; i<10; i++)
8010068a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
8010068e:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
80100692:	7e de                	jle    80100672 <panic+0x6a>
  panicked = 1; // freeze other CPU
80100694:	c7 05 a0 d5 10 80 01 	movl   $0x1,0x8010d5a0
8010069b:	00 00 00 
  for(;;)
8010069e:	eb fe                	jmp    8010069e <panic+0x96>

801006a0 <cgaputc>:
#define CRTPORT 0x3d4
static ushort *crt = (ushort*)P2V(0xb8000);  // CGA memory

static void
cgaputc(int c)
{
801006a0:	f3 0f 1e fb          	endbr32 
801006a4:	55                   	push   %ebp
801006a5:	89 e5                	mov    %esp,%ebp
801006a7:	53                   	push   %ebx
801006a8:	83 ec 14             	sub    $0x14,%esp
  int pos;

  // Cursor position: col + 80*row.
  outb(CRTPORT, 14);
801006ab:	6a 0e                	push   $0xe
801006ad:	68 d4 03 00 00       	push   $0x3d4
801006b2:	e8 89 fc ff ff       	call   80100340 <outb>
801006b7:	83 c4 08             	add    $0x8,%esp
  pos = inb(CRTPORT+1) << 8;
801006ba:	68 d5 03 00 00       	push   $0x3d5
801006bf:	e8 5f fc ff ff       	call   80100323 <inb>
801006c4:	83 c4 04             	add    $0x4,%esp
801006c7:	0f b6 c0             	movzbl %al,%eax
801006ca:	c1 e0 08             	shl    $0x8,%eax
801006cd:	89 45 f4             	mov    %eax,-0xc(%ebp)
  outb(CRTPORT, 15);
801006d0:	6a 0f                	push   $0xf
801006d2:	68 d4 03 00 00       	push   $0x3d4
801006d7:	e8 64 fc ff ff       	call   80100340 <outb>
801006dc:	83 c4 08             	add    $0x8,%esp
  pos |= inb(CRTPORT+1);
801006df:	68 d5 03 00 00       	push   $0x3d5
801006e4:	e8 3a fc ff ff       	call   80100323 <inb>
801006e9:	83 c4 04             	add    $0x4,%esp
801006ec:	0f b6 c0             	movzbl %al,%eax
801006ef:	09 45 f4             	or     %eax,-0xc(%ebp)

  if(c == '\n')
801006f2:	83 7d 08 0a          	cmpl   $0xa,0x8(%ebp)
801006f6:	75 30                	jne    80100728 <cgaputc+0x88>
    pos += 80 - pos%80;
801006f8:	8b 4d f4             	mov    -0xc(%ebp),%ecx
801006fb:	ba 67 66 66 66       	mov    $0x66666667,%edx
80100700:	89 c8                	mov    %ecx,%eax
80100702:	f7 ea                	imul   %edx
80100704:	c1 fa 05             	sar    $0x5,%edx
80100707:	89 c8                	mov    %ecx,%eax
80100709:	c1 f8 1f             	sar    $0x1f,%eax
8010070c:	29 c2                	sub    %eax,%edx
8010070e:	89 d0                	mov    %edx,%eax
80100710:	c1 e0 02             	shl    $0x2,%eax
80100713:	01 d0                	add    %edx,%eax
80100715:	c1 e0 04             	shl    $0x4,%eax
80100718:	29 c1                	sub    %eax,%ecx
8010071a:	89 ca                	mov    %ecx,%edx
8010071c:	b8 50 00 00 00       	mov    $0x50,%eax
80100721:	29 d0                	sub    %edx,%eax
80100723:	01 45 f4             	add    %eax,-0xc(%ebp)
80100726:	eb 38                	jmp    80100760 <cgaputc+0xc0>
  else if(c == BACKSPACE){
80100728:	81 7d 08 00 01 00 00 	cmpl   $0x100,0x8(%ebp)
8010072f:	75 0c                	jne    8010073d <cgaputc+0x9d>
    if(pos > 0) --pos;
80100731:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80100735:	7e 29                	jle    80100760 <cgaputc+0xc0>
80100737:	83 6d f4 01          	subl   $0x1,-0xc(%ebp)
8010073b:	eb 23                	jmp    80100760 <cgaputc+0xc0>
  } else
    crt[pos++] = (c&0xff) | 0x0700;  // black on white
8010073d:	8b 45 08             	mov    0x8(%ebp),%eax
80100740:	0f b6 c0             	movzbl %al,%eax
80100743:	80 cc 07             	or     $0x7,%ah
80100746:	89 c3                	mov    %eax,%ebx
80100748:	8b 0d 00 b0 10 80    	mov    0x8010b000,%ecx
8010074e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100751:	8d 50 01             	lea    0x1(%eax),%edx
80100754:	89 55 f4             	mov    %edx,-0xc(%ebp)
80100757:	01 c0                	add    %eax,%eax
80100759:	01 c8                	add    %ecx,%eax
8010075b:	89 da                	mov    %ebx,%edx
8010075d:	66 89 10             	mov    %dx,(%eax)

  if(pos < 0 || pos > 25*80)
80100760:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80100764:	78 09                	js     8010076f <cgaputc+0xcf>
80100766:	81 7d f4 d0 07 00 00 	cmpl   $0x7d0,-0xc(%ebp)
8010076d:	7e 0d                	jle    8010077c <cgaputc+0xdc>
    panic("pos under/overflow");
8010076f:	83 ec 0c             	sub    $0xc,%esp
80100772:	68 ea 95 10 80       	push   $0x801095ea
80100777:	e8 8c fe ff ff       	call   80100608 <panic>

  if((pos/80) >= 24){  // Scroll up.
8010077c:	81 7d f4 7f 07 00 00 	cmpl   $0x77f,-0xc(%ebp)
80100783:	7e 4c                	jle    801007d1 <cgaputc+0x131>
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
80100785:	a1 00 b0 10 80       	mov    0x8010b000,%eax
8010078a:	8d 90 a0 00 00 00    	lea    0xa0(%eax),%edx
80100790:	a1 00 b0 10 80       	mov    0x8010b000,%eax
80100795:	83 ec 04             	sub    $0x4,%esp
80100798:	68 60 0e 00 00       	push   $0xe60
8010079d:	52                   	push   %edx
8010079e:	50                   	push   %eax
8010079f:	e8 09 50 00 00       	call   801057ad <memmove>
801007a4:	83 c4 10             	add    $0x10,%esp
    pos -= 80;
801007a7:	83 6d f4 50          	subl   $0x50,-0xc(%ebp)
    memset(crt+pos, 0, sizeof(crt[0])*(24*80 - pos));
801007ab:	b8 80 07 00 00       	mov    $0x780,%eax
801007b0:	2b 45 f4             	sub    -0xc(%ebp),%eax
801007b3:	8d 14 00             	lea    (%eax,%eax,1),%edx
801007b6:	a1 00 b0 10 80       	mov    0x8010b000,%eax
801007bb:	8b 4d f4             	mov    -0xc(%ebp),%ecx
801007be:	01 c9                	add    %ecx,%ecx
801007c0:	01 c8                	add    %ecx,%eax
801007c2:	83 ec 04             	sub    $0x4,%esp
801007c5:	52                   	push   %edx
801007c6:	6a 00                	push   $0x0
801007c8:	50                   	push   %eax
801007c9:	e8 18 4f 00 00       	call   801056e6 <memset>
801007ce:	83 c4 10             	add    $0x10,%esp
  }

  outb(CRTPORT, 14);
801007d1:	83 ec 08             	sub    $0x8,%esp
801007d4:	6a 0e                	push   $0xe
801007d6:	68 d4 03 00 00       	push   $0x3d4
801007db:	e8 60 fb ff ff       	call   80100340 <outb>
801007e0:	83 c4 10             	add    $0x10,%esp
  outb(CRTPORT+1, pos>>8);
801007e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801007e6:	c1 f8 08             	sar    $0x8,%eax
801007e9:	0f b6 c0             	movzbl %al,%eax
801007ec:	83 ec 08             	sub    $0x8,%esp
801007ef:	50                   	push   %eax
801007f0:	68 d5 03 00 00       	push   $0x3d5
801007f5:	e8 46 fb ff ff       	call   80100340 <outb>
801007fa:	83 c4 10             	add    $0x10,%esp
  outb(CRTPORT, 15);
801007fd:	83 ec 08             	sub    $0x8,%esp
80100800:	6a 0f                	push   $0xf
80100802:	68 d4 03 00 00       	push   $0x3d4
80100807:	e8 34 fb ff ff       	call   80100340 <outb>
8010080c:	83 c4 10             	add    $0x10,%esp
  outb(CRTPORT+1, pos);
8010080f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100812:	0f b6 c0             	movzbl %al,%eax
80100815:	83 ec 08             	sub    $0x8,%esp
80100818:	50                   	push   %eax
80100819:	68 d5 03 00 00       	push   $0x3d5
8010081e:	e8 1d fb ff ff       	call   80100340 <outb>
80100823:	83 c4 10             	add    $0x10,%esp
  crt[pos] = ' ' | 0x0700;
80100826:	a1 00 b0 10 80       	mov    0x8010b000,%eax
8010082b:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010082e:	01 d2                	add    %edx,%edx
80100830:	01 d0                	add    %edx,%eax
80100832:	66 c7 00 20 07       	movw   $0x720,(%eax)
}
80100837:	90                   	nop
80100838:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010083b:	c9                   	leave  
8010083c:	c3                   	ret    

8010083d <consputc>:

void
consputc(int c)
{
8010083d:	f3 0f 1e fb          	endbr32 
80100841:	55                   	push   %ebp
80100842:	89 e5                	mov    %esp,%ebp
80100844:	83 ec 08             	sub    $0x8,%esp
  if(panicked){
80100847:	a1 a0 d5 10 80       	mov    0x8010d5a0,%eax
8010084c:	85 c0                	test   %eax,%eax
8010084e:	74 07                	je     80100857 <consputc+0x1a>
    cli();
80100850:	e8 0c fb ff ff       	call   80100361 <cli>
    for(;;)
80100855:	eb fe                	jmp    80100855 <consputc+0x18>
      ;
  }

  if(c == BACKSPACE){
80100857:	81 7d 08 00 01 00 00 	cmpl   $0x100,0x8(%ebp)
8010085e:	75 29                	jne    80100889 <consputc+0x4c>
    uartputc('\b'); uartputc(' '); uartputc('\b');
80100860:	83 ec 0c             	sub    $0xc,%esp
80100863:	6a 08                	push   $0x8
80100865:	e8 a1 69 00 00       	call   8010720b <uartputc>
8010086a:	83 c4 10             	add    $0x10,%esp
8010086d:	83 ec 0c             	sub    $0xc,%esp
80100870:	6a 20                	push   $0x20
80100872:	e8 94 69 00 00       	call   8010720b <uartputc>
80100877:	83 c4 10             	add    $0x10,%esp
8010087a:	83 ec 0c             	sub    $0xc,%esp
8010087d:	6a 08                	push   $0x8
8010087f:	e8 87 69 00 00       	call   8010720b <uartputc>
80100884:	83 c4 10             	add    $0x10,%esp
80100887:	eb 0e                	jmp    80100897 <consputc+0x5a>
  } else
    uartputc(c);
80100889:	83 ec 0c             	sub    $0xc,%esp
8010088c:	ff 75 08             	pushl  0x8(%ebp)
8010088f:	e8 77 69 00 00       	call   8010720b <uartputc>
80100894:	83 c4 10             	add    $0x10,%esp
  cgaputc(c);
80100897:	83 ec 0c             	sub    $0xc,%esp
8010089a:	ff 75 08             	pushl  0x8(%ebp)
8010089d:	e8 fe fd ff ff       	call   801006a0 <cgaputc>
801008a2:	83 c4 10             	add    $0x10,%esp
}
801008a5:	90                   	nop
801008a6:	c9                   	leave  
801008a7:	c3                   	ret    

801008a8 <consoleintr>:

#define C(x)  ((x)-'@')  // Control-x

void
consoleintr(int (*getc)(void))
{
801008a8:	f3 0f 1e fb          	endbr32 
801008ac:	55                   	push   %ebp
801008ad:	89 e5                	mov    %esp,%ebp
801008af:	83 ec 18             	sub    $0x18,%esp
  int c, doprocdump = 0;
801008b2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)

  acquire(&cons.lock);
801008b9:	83 ec 0c             	sub    $0xc,%esp
801008bc:	68 c0 d5 10 80       	push   $0x8010d5c0
801008c1:	e8 81 4b 00 00       	call   80105447 <acquire>
801008c6:	83 c4 10             	add    $0x10,%esp
  while((c = getc()) >= 0){
801008c9:	e9 52 01 00 00       	jmp    80100a20 <consoleintr+0x178>
    switch(c){
801008ce:	83 7d f0 7f          	cmpl   $0x7f,-0x10(%ebp)
801008d2:	0f 84 81 00 00 00    	je     80100959 <consoleintr+0xb1>
801008d8:	83 7d f0 7f          	cmpl   $0x7f,-0x10(%ebp)
801008dc:	0f 8f ac 00 00 00    	jg     8010098e <consoleintr+0xe6>
801008e2:	83 7d f0 15          	cmpl   $0x15,-0x10(%ebp)
801008e6:	74 43                	je     8010092b <consoleintr+0x83>
801008e8:	83 7d f0 15          	cmpl   $0x15,-0x10(%ebp)
801008ec:	0f 8f 9c 00 00 00    	jg     8010098e <consoleintr+0xe6>
801008f2:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
801008f6:	74 61                	je     80100959 <consoleintr+0xb1>
801008f8:	83 7d f0 10          	cmpl   $0x10,-0x10(%ebp)
801008fc:	0f 85 8c 00 00 00    	jne    8010098e <consoleintr+0xe6>
    case C('P'):  // Process listing.
      // procdump() locks cons.lock indirectly; invoke later
      doprocdump = 1;
80100902:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
      break;
80100909:	e9 12 01 00 00       	jmp    80100a20 <consoleintr+0x178>
    case C('U'):  // Kill line.
      while(input.e != input.w &&
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
        input.e--;
8010090e:	a1 48 30 11 80       	mov    0x80113048,%eax
80100913:	83 e8 01             	sub    $0x1,%eax
80100916:	a3 48 30 11 80       	mov    %eax,0x80113048
        consputc(BACKSPACE);
8010091b:	83 ec 0c             	sub    $0xc,%esp
8010091e:	68 00 01 00 00       	push   $0x100
80100923:	e8 15 ff ff ff       	call   8010083d <consputc>
80100928:	83 c4 10             	add    $0x10,%esp
      while(input.e != input.w &&
8010092b:	8b 15 48 30 11 80    	mov    0x80113048,%edx
80100931:	a1 44 30 11 80       	mov    0x80113044,%eax
80100936:	39 c2                	cmp    %eax,%edx
80100938:	0f 84 e2 00 00 00    	je     80100a20 <consoleintr+0x178>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
8010093e:	a1 48 30 11 80       	mov    0x80113048,%eax
80100943:	83 e8 01             	sub    $0x1,%eax
80100946:	83 e0 7f             	and    $0x7f,%eax
80100949:	0f b6 80 c0 2f 11 80 	movzbl -0x7feed040(%eax),%eax
      while(input.e != input.w &&
80100950:	3c 0a                	cmp    $0xa,%al
80100952:	75 ba                	jne    8010090e <consoleintr+0x66>
      }
      break;
80100954:	e9 c7 00 00 00       	jmp    80100a20 <consoleintr+0x178>
    case C('H'): case '\x7f':  // Backspace
      if(input.e != input.w){
80100959:	8b 15 48 30 11 80    	mov    0x80113048,%edx
8010095f:	a1 44 30 11 80       	mov    0x80113044,%eax
80100964:	39 c2                	cmp    %eax,%edx
80100966:	0f 84 b4 00 00 00    	je     80100a20 <consoleintr+0x178>
        input.e--;
8010096c:	a1 48 30 11 80       	mov    0x80113048,%eax
80100971:	83 e8 01             	sub    $0x1,%eax
80100974:	a3 48 30 11 80       	mov    %eax,0x80113048
        consputc(BACKSPACE);
80100979:	83 ec 0c             	sub    $0xc,%esp
8010097c:	68 00 01 00 00       	push   $0x100
80100981:	e8 b7 fe ff ff       	call   8010083d <consputc>
80100986:	83 c4 10             	add    $0x10,%esp
      }
      break;
80100989:	e9 92 00 00 00       	jmp    80100a20 <consoleintr+0x178>
    default:
      if(c != 0 && input.e-input.r < INPUT_BUF){
8010098e:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80100992:	0f 84 87 00 00 00    	je     80100a1f <consoleintr+0x177>
80100998:	8b 15 48 30 11 80    	mov    0x80113048,%edx
8010099e:	a1 40 30 11 80       	mov    0x80113040,%eax
801009a3:	29 c2                	sub    %eax,%edx
801009a5:	89 d0                	mov    %edx,%eax
801009a7:	83 f8 7f             	cmp    $0x7f,%eax
801009aa:	77 73                	ja     80100a1f <consoleintr+0x177>
        c = (c == '\r') ? '\n' : c;
801009ac:	83 7d f0 0d          	cmpl   $0xd,-0x10(%ebp)
801009b0:	74 05                	je     801009b7 <consoleintr+0x10f>
801009b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
801009b5:	eb 05                	jmp    801009bc <consoleintr+0x114>
801009b7:	b8 0a 00 00 00       	mov    $0xa,%eax
801009bc:	89 45 f0             	mov    %eax,-0x10(%ebp)
        input.buf[input.e++ % INPUT_BUF] = c;
801009bf:	a1 48 30 11 80       	mov    0x80113048,%eax
801009c4:	8d 50 01             	lea    0x1(%eax),%edx
801009c7:	89 15 48 30 11 80    	mov    %edx,0x80113048
801009cd:	83 e0 7f             	and    $0x7f,%eax
801009d0:	8b 55 f0             	mov    -0x10(%ebp),%edx
801009d3:	88 90 c0 2f 11 80    	mov    %dl,-0x7feed040(%eax)
        consputc(c);
801009d9:	83 ec 0c             	sub    $0xc,%esp
801009dc:	ff 75 f0             	pushl  -0x10(%ebp)
801009df:	e8 59 fe ff ff       	call   8010083d <consputc>
801009e4:	83 c4 10             	add    $0x10,%esp
        if(c == '\n' || c == C('D') || input.e == input.r+INPUT_BUF){
801009e7:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
801009eb:	74 18                	je     80100a05 <consoleintr+0x15d>
801009ed:	83 7d f0 04          	cmpl   $0x4,-0x10(%ebp)
801009f1:	74 12                	je     80100a05 <consoleintr+0x15d>
801009f3:	a1 48 30 11 80       	mov    0x80113048,%eax
801009f8:	8b 15 40 30 11 80    	mov    0x80113040,%edx
801009fe:	83 ea 80             	sub    $0xffffff80,%edx
80100a01:	39 d0                	cmp    %edx,%eax
80100a03:	75 1a                	jne    80100a1f <consoleintr+0x177>
          input.w = input.e;
80100a05:	a1 48 30 11 80       	mov    0x80113048,%eax
80100a0a:	a3 44 30 11 80       	mov    %eax,0x80113044
          wakeup(&input.r);
80100a0f:	83 ec 0c             	sub    $0xc,%esp
80100a12:	68 40 30 11 80       	push   $0x80113040
80100a17:	e8 ab 46 00 00       	call   801050c7 <wakeup>
80100a1c:	83 c4 10             	add    $0x10,%esp
        }
      }
      break;
80100a1f:	90                   	nop
  while((c = getc()) >= 0){
80100a20:	8b 45 08             	mov    0x8(%ebp),%eax
80100a23:	ff d0                	call   *%eax
80100a25:	89 45 f0             	mov    %eax,-0x10(%ebp)
80100a28:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80100a2c:	0f 89 9c fe ff ff    	jns    801008ce <consoleintr+0x26>
    }
  }
  release(&cons.lock);
80100a32:	83 ec 0c             	sub    $0xc,%esp
80100a35:	68 c0 d5 10 80       	push   $0x8010d5c0
80100a3a:	e8 7a 4a 00 00       	call   801054b9 <release>
80100a3f:	83 c4 10             	add    $0x10,%esp
  if(doprocdump) {
80100a42:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80100a46:	74 05                	je     80100a4d <consoleintr+0x1a5>
    procdump();  // now call procdump() wo. cons.lock held
80100a48:	e8 40 47 00 00       	call   8010518d <procdump>
  }
}
80100a4d:	90                   	nop
80100a4e:	c9                   	leave  
80100a4f:	c3                   	ret    

80100a50 <consoleread>:

int
consoleread(struct inode *ip, char *dst, int n)
{
80100a50:	f3 0f 1e fb          	endbr32 
80100a54:	55                   	push   %ebp
80100a55:	89 e5                	mov    %esp,%ebp
80100a57:	83 ec 18             	sub    $0x18,%esp
  uint target;
  int c;

  iunlock(ip);
80100a5a:	83 ec 0c             	sub    $0xc,%esp
80100a5d:	ff 75 08             	pushl  0x8(%ebp)
80100a60:	e8 0b 12 00 00       	call   80101c70 <iunlock>
80100a65:	83 c4 10             	add    $0x10,%esp
  target = n;
80100a68:	8b 45 10             	mov    0x10(%ebp),%eax
80100a6b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  acquire(&cons.lock);
80100a6e:	83 ec 0c             	sub    $0xc,%esp
80100a71:	68 c0 d5 10 80       	push   $0x8010d5c0
80100a76:	e8 cc 49 00 00       	call   80105447 <acquire>
80100a7b:	83 c4 10             	add    $0x10,%esp
  while(n > 0){
80100a7e:	e9 ab 00 00 00       	jmp    80100b2e <consoleread+0xde>
    while(input.r == input.w){
      if(myproc()->killed){
80100a83:	e8 85 3a 00 00       	call   8010450d <myproc>
80100a88:	8b 40 24             	mov    0x24(%eax),%eax
80100a8b:	85 c0                	test   %eax,%eax
80100a8d:	74 28                	je     80100ab7 <consoleread+0x67>
        release(&cons.lock);
80100a8f:	83 ec 0c             	sub    $0xc,%esp
80100a92:	68 c0 d5 10 80       	push   $0x8010d5c0
80100a97:	e8 1d 4a 00 00       	call   801054b9 <release>
80100a9c:	83 c4 10             	add    $0x10,%esp
        ilock(ip);
80100a9f:	83 ec 0c             	sub    $0xc,%esp
80100aa2:	ff 75 08             	pushl  0x8(%ebp)
80100aa5:	e8 af 10 00 00       	call   80101b59 <ilock>
80100aaa:	83 c4 10             	add    $0x10,%esp
        return -1;
80100aad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100ab2:	e9 ab 00 00 00       	jmp    80100b62 <consoleread+0x112>
      }
      sleep(&input.r, &cons.lock);
80100ab7:	83 ec 08             	sub    $0x8,%esp
80100aba:	68 c0 d5 10 80       	push   $0x8010d5c0
80100abf:	68 40 30 11 80       	push   $0x80113040
80100ac4:	e8 0c 45 00 00       	call   80104fd5 <sleep>
80100ac9:	83 c4 10             	add    $0x10,%esp
    while(input.r == input.w){
80100acc:	8b 15 40 30 11 80    	mov    0x80113040,%edx
80100ad2:	a1 44 30 11 80       	mov    0x80113044,%eax
80100ad7:	39 c2                	cmp    %eax,%edx
80100ad9:	74 a8                	je     80100a83 <consoleread+0x33>
    }
    c = input.buf[input.r++ % INPUT_BUF];
80100adb:	a1 40 30 11 80       	mov    0x80113040,%eax
80100ae0:	8d 50 01             	lea    0x1(%eax),%edx
80100ae3:	89 15 40 30 11 80    	mov    %edx,0x80113040
80100ae9:	83 e0 7f             	and    $0x7f,%eax
80100aec:	0f b6 80 c0 2f 11 80 	movzbl -0x7feed040(%eax),%eax
80100af3:	0f be c0             	movsbl %al,%eax
80100af6:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(c == C('D')){  // EOF
80100af9:	83 7d f0 04          	cmpl   $0x4,-0x10(%ebp)
80100afd:	75 17                	jne    80100b16 <consoleread+0xc6>
      if(n < target){
80100aff:	8b 45 10             	mov    0x10(%ebp),%eax
80100b02:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80100b05:	76 2f                	jbe    80100b36 <consoleread+0xe6>
        // Save ^D for next time, to make sure
        // caller gets a 0-byte result.
        input.r--;
80100b07:	a1 40 30 11 80       	mov    0x80113040,%eax
80100b0c:	83 e8 01             	sub    $0x1,%eax
80100b0f:	a3 40 30 11 80       	mov    %eax,0x80113040
      }
      break;
80100b14:	eb 20                	jmp    80100b36 <consoleread+0xe6>
    }
    *dst++ = c;
80100b16:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b19:	8d 50 01             	lea    0x1(%eax),%edx
80100b1c:	89 55 0c             	mov    %edx,0xc(%ebp)
80100b1f:	8b 55 f0             	mov    -0x10(%ebp),%edx
80100b22:	88 10                	mov    %dl,(%eax)
    --n;
80100b24:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
    if(c == '\n')
80100b28:	83 7d f0 0a          	cmpl   $0xa,-0x10(%ebp)
80100b2c:	74 0b                	je     80100b39 <consoleread+0xe9>
  while(n > 0){
80100b2e:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80100b32:	7f 98                	jg     80100acc <consoleread+0x7c>
80100b34:	eb 04                	jmp    80100b3a <consoleread+0xea>
      break;
80100b36:	90                   	nop
80100b37:	eb 01                	jmp    80100b3a <consoleread+0xea>
      break;
80100b39:	90                   	nop
  }
  release(&cons.lock);
80100b3a:	83 ec 0c             	sub    $0xc,%esp
80100b3d:	68 c0 d5 10 80       	push   $0x8010d5c0
80100b42:	e8 72 49 00 00       	call   801054b9 <release>
80100b47:	83 c4 10             	add    $0x10,%esp
  ilock(ip);
80100b4a:	83 ec 0c             	sub    $0xc,%esp
80100b4d:	ff 75 08             	pushl  0x8(%ebp)
80100b50:	e8 04 10 00 00       	call   80101b59 <ilock>
80100b55:	83 c4 10             	add    $0x10,%esp

  return target - n;
80100b58:	8b 45 10             	mov    0x10(%ebp),%eax
80100b5b:	8b 55 f4             	mov    -0xc(%ebp),%edx
80100b5e:	29 c2                	sub    %eax,%edx
80100b60:	89 d0                	mov    %edx,%eax
}
80100b62:	c9                   	leave  
80100b63:	c3                   	ret    

80100b64 <consolewrite>:

int
consolewrite(struct inode *ip, char *buf, int n)
{
80100b64:	f3 0f 1e fb          	endbr32 
80100b68:	55                   	push   %ebp
80100b69:	89 e5                	mov    %esp,%ebp
80100b6b:	83 ec 18             	sub    $0x18,%esp
  int i;

  iunlock(ip);
80100b6e:	83 ec 0c             	sub    $0xc,%esp
80100b71:	ff 75 08             	pushl  0x8(%ebp)
80100b74:	e8 f7 10 00 00       	call   80101c70 <iunlock>
80100b79:	83 c4 10             	add    $0x10,%esp
  acquire(&cons.lock);
80100b7c:	83 ec 0c             	sub    $0xc,%esp
80100b7f:	68 c0 d5 10 80       	push   $0x8010d5c0
80100b84:	e8 be 48 00 00       	call   80105447 <acquire>
80100b89:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < n; i++)
80100b8c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80100b93:	eb 21                	jmp    80100bb6 <consolewrite+0x52>
    consputc(buf[i] & 0xff);
80100b95:	8b 55 f4             	mov    -0xc(%ebp),%edx
80100b98:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b9b:	01 d0                	add    %edx,%eax
80100b9d:	0f b6 00             	movzbl (%eax),%eax
80100ba0:	0f be c0             	movsbl %al,%eax
80100ba3:	0f b6 c0             	movzbl %al,%eax
80100ba6:	83 ec 0c             	sub    $0xc,%esp
80100ba9:	50                   	push   %eax
80100baa:	e8 8e fc ff ff       	call   8010083d <consputc>
80100baf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < n; i++)
80100bb2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80100bb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100bb9:	3b 45 10             	cmp    0x10(%ebp),%eax
80100bbc:	7c d7                	jl     80100b95 <consolewrite+0x31>
  release(&cons.lock);
80100bbe:	83 ec 0c             	sub    $0xc,%esp
80100bc1:	68 c0 d5 10 80       	push   $0x8010d5c0
80100bc6:	e8 ee 48 00 00       	call   801054b9 <release>
80100bcb:	83 c4 10             	add    $0x10,%esp
  ilock(ip);
80100bce:	83 ec 0c             	sub    $0xc,%esp
80100bd1:	ff 75 08             	pushl  0x8(%ebp)
80100bd4:	e8 80 0f 00 00       	call   80101b59 <ilock>
80100bd9:	83 c4 10             	add    $0x10,%esp

  return n;
80100bdc:	8b 45 10             	mov    0x10(%ebp),%eax
}
80100bdf:	c9                   	leave  
80100be0:	c3                   	ret    

80100be1 <consoleinit>:

void
consoleinit(void)
{
80100be1:	f3 0f 1e fb          	endbr32 
80100be5:	55                   	push   %ebp
80100be6:	89 e5                	mov    %esp,%ebp
80100be8:	83 ec 08             	sub    $0x8,%esp
  initlock(&cons.lock, "console");
80100beb:	83 ec 08             	sub    $0x8,%esp
80100bee:	68 fd 95 10 80       	push   $0x801095fd
80100bf3:	68 c0 d5 10 80       	push   $0x8010d5c0
80100bf8:	e8 24 48 00 00       	call   80105421 <initlock>
80100bfd:	83 c4 10             	add    $0x10,%esp

  devsw[CONSOLE].write = consolewrite;
80100c00:	c7 05 0c 3a 11 80 64 	movl   $0x80100b64,0x80113a0c
80100c07:	0b 10 80 
  devsw[CONSOLE].read = consoleread;
80100c0a:	c7 05 08 3a 11 80 50 	movl   $0x80100a50,0x80113a08
80100c11:	0a 10 80 
  cons.locking = 1;
80100c14:	c7 05 f4 d5 10 80 01 	movl   $0x1,0x8010d5f4
80100c1b:	00 00 00 

  ioapicenable(IRQ_KBD, 0);
80100c1e:	83 ec 08             	sub    $0x8,%esp
80100c21:	6a 00                	push   $0x0
80100c23:	6a 01                	push   $0x1
80100c25:	e8 99 20 00 00       	call   80102cc3 <ioapicenable>
80100c2a:	83 c4 10             	add    $0x10,%esp
}
80100c2d:	90                   	nop
80100c2e:	c9                   	leave  
80100c2f:	c3                   	ret    

80100c30 <exec>:
}
*/

int
exec(char *path, char **argv)
{
80100c30:	f3 0f 1e fb          	endbr32 
80100c34:	55                   	push   %ebp
80100c35:	89 e5                	mov    %esp,%ebp
80100c37:	81 ec 28 01 00 00    	sub    $0x128,%esp
  uint argc, sz, sp, ustack[3+MAXARG+1];
  struct elfhdr elf;
  struct inode *ip;
  struct proghdr ph;
  pde_t *pgdir, *oldpgdir;
  struct proc *curproc = myproc();
80100c3d:	e8 cb 38 00 00       	call   8010450d <myproc>
80100c42:	89 45 c4             	mov    %eax,-0x3c(%ebp)
  
  for(int x = 0 ; x < CLOCKSIZE ; x++) {
80100c45:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%ebp)
80100c4c:	eb 15                	jmp    80100c63 <exec+0x33>
  	curproc->pgQueue[x] = (void *) -1;
80100c4e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80100c51:	8b 55 d0             	mov    -0x30(%ebp),%edx
80100c54:	83 c2 1c             	add    $0x1c,%edx
80100c57:	c7 44 90 0c ff ff ff 	movl   $0xffffffff,0xc(%eax,%edx,4)
80100c5e:	ff 
  for(int x = 0 ; x < CLOCKSIZE ; x++) {
80100c5f:	83 45 d0 01          	addl   $0x1,-0x30(%ebp)
80100c63:	83 7d d0 07          	cmpl   $0x7,-0x30(%ebp)
80100c67:	7e e5                	jle    80100c4e <exec+0x1e>
  } // my edit to initialize the array

  for(int x = 0 ; x < CLOCKSIZE ; x++) {
80100c69:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%ebp)
80100c70:	eb 15                	jmp    80100c87 <exec+0x57>
    curproc->dummyQueue[x] = (void *) -1;
80100c72:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80100c75:	8b 55 cc             	mov    -0x34(%ebp),%edx
80100c78:	83 c2 24             	add    $0x24,%edx
80100c7b:	c7 44 90 0c ff ff ff 	movl   $0xffffffff,0xc(%eax,%edx,4)
80100c82:	ff 
  for(int x = 0 ; x < CLOCKSIZE ; x++) {
80100c83:	83 45 cc 01          	addl   $0x1,-0x34(%ebp)
80100c87:	83 7d cc 07          	cmpl   $0x7,-0x34(%ebp)
80100c8b:	7e e5                	jle    80100c72 <exec+0x42>
  } // my edit to initialize the dummy array
  
  // EDIT: hand of clock
  curproc->clockHand = 0;
80100c8d:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80100c90:	c7 80 bc 00 00 00 00 	movl   $0x0,0xbc(%eax)
80100c97:	00 00 00 

  begin_op();
80100c9a:	e8 af 2a 00 00       	call   8010374e <begin_op>

  if((ip = namei(path)) == 0){
80100c9f:	83 ec 0c             	sub    $0xc,%esp
80100ca2:	ff 75 08             	pushl  0x8(%ebp)
80100ca5:	e8 1a 1a 00 00       	call   801026c4 <namei>
80100caa:	83 c4 10             	add    $0x10,%esp
80100cad:	89 45 d8             	mov    %eax,-0x28(%ebp)
80100cb0:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
80100cb4:	75 1f                	jne    80100cd5 <exec+0xa5>
    end_op();
80100cb6:	e8 23 2b 00 00       	call   801037de <end_op>
    cprintf("exec: fail\n");
80100cbb:	83 ec 0c             	sub    $0xc,%esp
80100cbe:	68 05 96 10 80       	push   $0x80109605
80100cc3:	e8 50 f7 ff ff       	call   80100418 <cprintf>
80100cc8:	83 c4 10             	add    $0x10,%esp
    return -1;
80100ccb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100cd0:	e9 1a 04 00 00       	jmp    801010ef <exec+0x4bf>
  }
  ilock(ip);
80100cd5:	83 ec 0c             	sub    $0xc,%esp
80100cd8:	ff 75 d8             	pushl  -0x28(%ebp)
80100cdb:	e8 79 0e 00 00       	call   80101b59 <ilock>
80100ce0:	83 c4 10             	add    $0x10,%esp
  pgdir = 0;
80100ce3:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
80100cea:	6a 34                	push   $0x34
80100cec:	6a 00                	push   $0x0
80100cee:	8d 85 fc fe ff ff    	lea    -0x104(%ebp),%eax
80100cf4:	50                   	push   %eax
80100cf5:	ff 75 d8             	pushl  -0x28(%ebp)
80100cf8:	e8 64 13 00 00       	call   80102061 <readi>
80100cfd:	83 c4 10             	add    $0x10,%esp
80100d00:	83 f8 34             	cmp    $0x34,%eax
80100d03:	0f 85 8f 03 00 00    	jne    80101098 <exec+0x468>
    goto bad;
  if(elf.magic != ELF_MAGIC)
80100d09:	8b 85 fc fe ff ff    	mov    -0x104(%ebp),%eax
80100d0f:	3d 7f 45 4c 46       	cmp    $0x464c457f,%eax
80100d14:	0f 85 81 03 00 00    	jne    8010109b <exec+0x46b>
    goto bad;

  if((pgdir = setupkvm()) == 0)
80100d1a:	e8 23 75 00 00       	call   80108242 <setupkvm>
80100d1f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
80100d22:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
80100d26:	0f 84 72 03 00 00    	je     8010109e <exec+0x46e>
    goto bad;

  // Load program into memory.
  sz = 0;
80100d2c:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100d33:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
80100d3a:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100d40:	89 45 e8             	mov    %eax,-0x18(%ebp)
80100d43:	e9 de 00 00 00       	jmp    80100e26 <exec+0x1f6>
    if(readi(ip, (char*)&ph, off, sizeof(ph)) != sizeof(ph))
80100d48:	8b 45 e8             	mov    -0x18(%ebp),%eax
80100d4b:	6a 20                	push   $0x20
80100d4d:	50                   	push   %eax
80100d4e:	8d 85 dc fe ff ff    	lea    -0x124(%ebp),%eax
80100d54:	50                   	push   %eax
80100d55:	ff 75 d8             	pushl  -0x28(%ebp)
80100d58:	e8 04 13 00 00       	call   80102061 <readi>
80100d5d:	83 c4 10             	add    $0x10,%esp
80100d60:	83 f8 20             	cmp    $0x20,%eax
80100d63:	0f 85 38 03 00 00    	jne    801010a1 <exec+0x471>
      goto bad;
    if(ph.type != ELF_PROG_LOAD)
80100d69:	8b 85 dc fe ff ff    	mov    -0x124(%ebp),%eax
80100d6f:	83 f8 01             	cmp    $0x1,%eax
80100d72:	0f 85 a0 00 00 00    	jne    80100e18 <exec+0x1e8>
      continue;
    if(ph.memsz < ph.filesz)
80100d78:	8b 95 f0 fe ff ff    	mov    -0x110(%ebp),%edx
80100d7e:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
80100d84:	39 c2                	cmp    %eax,%edx
80100d86:	0f 82 18 03 00 00    	jb     801010a4 <exec+0x474>
      goto bad;
    if(ph.vaddr + ph.memsz < ph.vaddr)
80100d8c:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
80100d92:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100d98:	01 c2                	add    %eax,%edx
80100d9a:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
80100da0:	39 c2                	cmp    %eax,%edx
80100da2:	0f 82 ff 02 00 00    	jb     801010a7 <exec+0x477>
      goto bad;
    if((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0)
80100da8:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
80100dae:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100db4:	01 d0                	add    %edx,%eax
80100db6:	83 ec 04             	sub    $0x4,%esp
80100db9:	50                   	push   %eax
80100dba:	ff 75 e0             	pushl  -0x20(%ebp)
80100dbd:	ff 75 d4             	pushl  -0x2c(%ebp)
80100dc0:	e8 3b 78 00 00       	call   80108600 <allocuvm>
80100dc5:	83 c4 10             	add    $0x10,%esp
80100dc8:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100dcb:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80100dcf:	0f 84 d5 02 00 00    	je     801010aa <exec+0x47a>
      goto bad;
    if(ph.vaddr % PGSIZE != 0)
80100dd5:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
80100ddb:	25 ff 0f 00 00       	and    $0xfff,%eax
80100de0:	85 c0                	test   %eax,%eax
80100de2:	0f 85 c5 02 00 00    	jne    801010ad <exec+0x47d>
      goto bad;
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
80100de8:	8b 95 ec fe ff ff    	mov    -0x114(%ebp),%edx
80100dee:	8b 85 e0 fe ff ff    	mov    -0x120(%ebp),%eax
80100df4:	8b 8d e4 fe ff ff    	mov    -0x11c(%ebp),%ecx
80100dfa:	83 ec 0c             	sub    $0xc,%esp
80100dfd:	52                   	push   %edx
80100dfe:	50                   	push   %eax
80100dff:	ff 75 d8             	pushl  -0x28(%ebp)
80100e02:	51                   	push   %ecx
80100e03:	ff 75 d4             	pushl  -0x2c(%ebp)
80100e06:	e8 24 77 00 00       	call   8010852f <loaduvm>
80100e0b:	83 c4 20             	add    $0x20,%esp
80100e0e:	85 c0                	test   %eax,%eax
80100e10:	0f 88 9a 02 00 00    	js     801010b0 <exec+0x480>
80100e16:	eb 01                	jmp    80100e19 <exec+0x1e9>
      continue;
80100e18:	90                   	nop
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100e19:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
80100e1d:	8b 45 e8             	mov    -0x18(%ebp),%eax
80100e20:	83 c0 20             	add    $0x20,%eax
80100e23:	89 45 e8             	mov    %eax,-0x18(%ebp)
80100e26:	0f b7 85 28 ff ff ff 	movzwl -0xd8(%ebp),%eax
80100e2d:	0f b7 c0             	movzwl %ax,%eax
80100e30:	39 45 ec             	cmp    %eax,-0x14(%ebp)
80100e33:	0f 8c 0f ff ff ff    	jl     80100d48 <exec+0x118>
      goto bad;
  }
  iunlockput(ip);
80100e39:	83 ec 0c             	sub    $0xc,%esp
80100e3c:	ff 75 d8             	pushl  -0x28(%ebp)
80100e3f:	e8 52 0f 00 00       	call   80101d96 <iunlockput>
80100e44:	83 c4 10             	add    $0x10,%esp
  end_op();
80100e47:	e8 92 29 00 00       	call   801037de <end_op>
  ip = 0;
80100e4c:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%ebp)

  // Allocate two pages at the next page boundary.
  // Make the first inaccessible.  Use the second as the user stack.
  sz = PGROUNDUP(sz);
80100e53:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100e56:	05 ff 0f 00 00       	add    $0xfff,%eax
80100e5b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80100e60:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if((sz = allocuvm(pgdir, sz, sz + 2*PGSIZE)) == 0)
80100e63:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100e66:	05 00 20 00 00       	add    $0x2000,%eax
80100e6b:	83 ec 04             	sub    $0x4,%esp
80100e6e:	50                   	push   %eax
80100e6f:	ff 75 e0             	pushl  -0x20(%ebp)
80100e72:	ff 75 d4             	pushl  -0x2c(%ebp)
80100e75:	e8 86 77 00 00       	call   80108600 <allocuvm>
80100e7a:	83 c4 10             	add    $0x10,%esp
80100e7d:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100e80:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80100e84:	0f 84 29 02 00 00    	je     801010b3 <exec+0x483>
    goto bad;
  clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
80100e8a:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100e8d:	2d 00 20 00 00       	sub    $0x2000,%eax
80100e92:	83 ec 08             	sub    $0x8,%esp
80100e95:	50                   	push   %eax
80100e96:	ff 75 d4             	pushl  -0x2c(%ebp)
80100e99:	e8 d4 79 00 00       	call   80108872 <clearpteu>
80100e9e:	83 c4 10             	add    $0x10,%esp
  sp = sz;
80100ea1:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100ea4:	89 45 dc             	mov    %eax,-0x24(%ebp)

  // Push argument strings, prepare rest of stack in ustack.
  for(argc = 0; argv[argc]; argc++) {
80100ea7:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80100eae:	e9 96 00 00 00       	jmp    80100f49 <exec+0x319>
    if(argc >= MAXARG)
80100eb3:	83 7d e4 1f          	cmpl   $0x1f,-0x1c(%ebp)
80100eb7:	0f 87 f9 01 00 00    	ja     801010b6 <exec+0x486>
      goto bad;
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100ebd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100ec0:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80100ec7:	8b 45 0c             	mov    0xc(%ebp),%eax
80100eca:	01 d0                	add    %edx,%eax
80100ecc:	8b 00                	mov    (%eax),%eax
80100ece:	83 ec 0c             	sub    $0xc,%esp
80100ed1:	50                   	push   %eax
80100ed2:	e8 78 4a 00 00       	call   8010594f <strlen>
80100ed7:	83 c4 10             	add    $0x10,%esp
80100eda:	89 c2                	mov    %eax,%edx
80100edc:	8b 45 dc             	mov    -0x24(%ebp),%eax
80100edf:	29 d0                	sub    %edx,%eax
80100ee1:	83 e8 01             	sub    $0x1,%eax
80100ee4:	83 e0 fc             	and    $0xfffffffc,%eax
80100ee7:	89 45 dc             	mov    %eax,-0x24(%ebp)
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100eea:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100eed:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80100ef4:	8b 45 0c             	mov    0xc(%ebp),%eax
80100ef7:	01 d0                	add    %edx,%eax
80100ef9:	8b 00                	mov    (%eax),%eax
80100efb:	83 ec 0c             	sub    $0xc,%esp
80100efe:	50                   	push   %eax
80100eff:	e8 4b 4a 00 00       	call   8010594f <strlen>
80100f04:	83 c4 10             	add    $0x10,%esp
80100f07:	83 c0 01             	add    $0x1,%eax
80100f0a:	89 c1                	mov    %eax,%ecx
80100f0c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f0f:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80100f16:	8b 45 0c             	mov    0xc(%ebp),%eax
80100f19:	01 d0                	add    %edx,%eax
80100f1b:	8b 00                	mov    (%eax),%eax
80100f1d:	51                   	push   %ecx
80100f1e:	50                   	push   %eax
80100f1f:	ff 75 dc             	pushl  -0x24(%ebp)
80100f22:	ff 75 d4             	pushl  -0x2c(%ebp)
80100f25:	e8 04 7b 00 00       	call   80108a2e <copyout>
80100f2a:	83 c4 10             	add    $0x10,%esp
80100f2d:	85 c0                	test   %eax,%eax
80100f2f:	0f 88 84 01 00 00    	js     801010b9 <exec+0x489>
      goto bad;
    ustack[3+argc] = sp;
80100f35:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f38:	8d 50 03             	lea    0x3(%eax),%edx
80100f3b:	8b 45 dc             	mov    -0x24(%ebp),%eax
80100f3e:	89 84 95 30 ff ff ff 	mov    %eax,-0xd0(%ebp,%edx,4)
  for(argc = 0; argv[argc]; argc++) {
80100f45:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
80100f49:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f4c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80100f53:	8b 45 0c             	mov    0xc(%ebp),%eax
80100f56:	01 d0                	add    %edx,%eax
80100f58:	8b 00                	mov    (%eax),%eax
80100f5a:	85 c0                	test   %eax,%eax
80100f5c:	0f 85 51 ff ff ff    	jne    80100eb3 <exec+0x283>
  }
  ustack[3+argc] = 0;
80100f62:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f65:	83 c0 03             	add    $0x3,%eax
80100f68:	c7 84 85 30 ff ff ff 	movl   $0x0,-0xd0(%ebp,%eax,4)
80100f6f:	00 00 00 00 

  ustack[0] = 0xffffffff;  // fake return PC
80100f73:	c7 85 30 ff ff ff ff 	movl   $0xffffffff,-0xd0(%ebp)
80100f7a:	ff ff ff 
  ustack[1] = argc;
80100f7d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f80:	89 85 34 ff ff ff    	mov    %eax,-0xcc(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100f86:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100f89:	83 c0 01             	add    $0x1,%eax
80100f8c:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80100f93:	8b 45 dc             	mov    -0x24(%ebp),%eax
80100f96:	29 d0                	sub    %edx,%eax
80100f98:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%ebp)

  sp -= (3+argc+1) * 4;
80100f9e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100fa1:	83 c0 04             	add    $0x4,%eax
80100fa4:	c1 e0 02             	shl    $0x2,%eax
80100fa7:	29 45 dc             	sub    %eax,-0x24(%ebp)
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100faa:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100fad:	83 c0 04             	add    $0x4,%eax
80100fb0:	c1 e0 02             	shl    $0x2,%eax
80100fb3:	50                   	push   %eax
80100fb4:	8d 85 30 ff ff ff    	lea    -0xd0(%ebp),%eax
80100fba:	50                   	push   %eax
80100fbb:	ff 75 dc             	pushl  -0x24(%ebp)
80100fbe:	ff 75 d4             	pushl  -0x2c(%ebp)
80100fc1:	e8 68 7a 00 00       	call   80108a2e <copyout>
80100fc6:	83 c4 10             	add    $0x10,%esp
80100fc9:	85 c0                	test   %eax,%eax
80100fcb:	0f 88 eb 00 00 00    	js     801010bc <exec+0x48c>
    goto bad;

  // Save program name for debugging.
  for(last=s=path; *s; s++)
80100fd1:	8b 45 08             	mov    0x8(%ebp),%eax
80100fd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
80100fd7:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100fda:	89 45 f0             	mov    %eax,-0x10(%ebp)
80100fdd:	eb 17                	jmp    80100ff6 <exec+0x3c6>
    if(*s == '/')
80100fdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100fe2:	0f b6 00             	movzbl (%eax),%eax
80100fe5:	3c 2f                	cmp    $0x2f,%al
80100fe7:	75 09                	jne    80100ff2 <exec+0x3c2>
      last = s+1;
80100fe9:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100fec:	83 c0 01             	add    $0x1,%eax
80100fef:	89 45 f0             	mov    %eax,-0x10(%ebp)
  for(last=s=path; *s; s++)
80100ff2:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80100ff6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80100ff9:	0f b6 00             	movzbl (%eax),%eax
80100ffc:	84 c0                	test   %al,%al
80100ffe:	75 df                	jne    80100fdf <exec+0x3af>
  safestrcpy(curproc->name, last, sizeof(curproc->name));
80101000:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80101003:	83 c0 6c             	add    $0x6c,%eax
80101006:	83 ec 04             	sub    $0x4,%esp
80101009:	6a 10                	push   $0x10
8010100b:	ff 75 f0             	pushl  -0x10(%ebp)
8010100e:	50                   	push   %eax
8010100f:	e8 ed 48 00 00       	call   80105901 <safestrcpy>
80101014:	83 c4 10             	add    $0x10,%esp

  // Commit to the user image.
  oldpgdir = curproc->pgdir;
80101017:	8b 45 c4             	mov    -0x3c(%ebp),%eax
8010101a:	8b 40 04             	mov    0x4(%eax),%eax
8010101d:	89 45 c0             	mov    %eax,-0x40(%ebp)
  curproc->pgdir = pgdir;
80101020:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80101023:	8b 55 d4             	mov    -0x2c(%ebp),%edx
80101026:	89 50 04             	mov    %edx,0x4(%eax)
  curproc->sz = sz;
80101029:	8b 45 c4             	mov    -0x3c(%ebp),%eax
8010102c:	8b 55 e0             	mov    -0x20(%ebp),%edx
8010102f:	89 10                	mov    %edx,(%eax)
  curproc->tf->eip = elf.entry;  // main
80101031:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80101034:	8b 40 18             	mov    0x18(%eax),%eax
80101037:	8b 95 14 ff ff ff    	mov    -0xec(%ebp),%edx
8010103d:	89 50 38             	mov    %edx,0x38(%eax)
  curproc->tf->esp = sp;
80101040:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80101043:	8b 40 18             	mov    0x18(%eax),%eax
80101046:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101049:	89 50 44             	mov    %edx,0x44(%eax)
  switchuvm(curproc);
8010104c:	83 ec 0c             	sub    $0xc,%esp
8010104f:	ff 75 c4             	pushl  -0x3c(%ebp)
80101052:	e8 c1 72 00 00       	call   80108318 <switchuvm>
80101057:	83 c4 10             	add    $0x10,%esp
  //mencrypt(0, sz / PGSIZE);
  
  for (int i = 0; i < sz; i+= PGSIZE) {
8010105a:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%ebp)
80101061:	eb 18                	jmp    8010107b <exec+0x44b>
  	//pte_t * pte = walkpgdir(curproc->pgdir, (char *)i, 1);
  	//if (*pte & PTE_U) {
  	    mencrypt((char *)i, 1);
80101063:	8b 45 c8             	mov    -0x38(%ebp),%eax
80101066:	83 ec 08             	sub    $0x8,%esp
80101069:	6a 01                	push   $0x1
8010106b:	50                   	push   %eax
8010106c:	e8 5d 7f 00 00       	call   80108fce <mencrypt>
80101071:	83 c4 10             	add    $0x10,%esp
  for (int i = 0; i < sz; i+= PGSIZE) {
80101074:	81 45 c8 00 10 00 00 	addl   $0x1000,-0x38(%ebp)
8010107b:	8b 45 c8             	mov    -0x38(%ebp),%eax
8010107e:	39 45 e0             	cmp    %eax,-0x20(%ebp)
80101081:	77 e0                	ja     80101063 <exec+0x433>
  if (mencrypt(0, sz / PGSIZE) == -1) {
      freevm(oldpgdir);
      return -1; // my edit
  }
  */
  freevm(oldpgdir);
80101083:	83 ec 0c             	sub    $0xc,%esp
80101086:	ff 75 c0             	pushl  -0x40(%ebp)
80101089:	e8 45 77 00 00       	call   801087d3 <freevm>
8010108e:	83 c4 10             	add    $0x10,%esp
  return 0;
80101091:	b8 00 00 00 00       	mov    $0x0,%eax
80101096:	eb 57                	jmp    801010ef <exec+0x4bf>
    goto bad;
80101098:	90                   	nop
80101099:	eb 22                	jmp    801010bd <exec+0x48d>
    goto bad;
8010109b:	90                   	nop
8010109c:	eb 1f                	jmp    801010bd <exec+0x48d>
    goto bad;
8010109e:	90                   	nop
8010109f:	eb 1c                	jmp    801010bd <exec+0x48d>
      goto bad;
801010a1:	90                   	nop
801010a2:	eb 19                	jmp    801010bd <exec+0x48d>
      goto bad;
801010a4:	90                   	nop
801010a5:	eb 16                	jmp    801010bd <exec+0x48d>
      goto bad;
801010a7:	90                   	nop
801010a8:	eb 13                	jmp    801010bd <exec+0x48d>
      goto bad;
801010aa:	90                   	nop
801010ab:	eb 10                	jmp    801010bd <exec+0x48d>
      goto bad;
801010ad:	90                   	nop
801010ae:	eb 0d                	jmp    801010bd <exec+0x48d>
      goto bad;
801010b0:	90                   	nop
801010b1:	eb 0a                	jmp    801010bd <exec+0x48d>
    goto bad;
801010b3:	90                   	nop
801010b4:	eb 07                	jmp    801010bd <exec+0x48d>
      goto bad;
801010b6:	90                   	nop
801010b7:	eb 04                	jmp    801010bd <exec+0x48d>
      goto bad;
801010b9:	90                   	nop
801010ba:	eb 01                	jmp    801010bd <exec+0x48d>
    goto bad;
801010bc:	90                   	nop

 bad:
  if(pgdir)
801010bd:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
801010c1:	74 0e                	je     801010d1 <exec+0x4a1>
    freevm(pgdir);
801010c3:	83 ec 0c             	sub    $0xc,%esp
801010c6:	ff 75 d4             	pushl  -0x2c(%ebp)
801010c9:	e8 05 77 00 00       	call   801087d3 <freevm>
801010ce:	83 c4 10             	add    $0x10,%esp
  if(ip){
801010d1:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
801010d5:	74 13                	je     801010ea <exec+0x4ba>
    iunlockput(ip);
801010d7:	83 ec 0c             	sub    $0xc,%esp
801010da:	ff 75 d8             	pushl  -0x28(%ebp)
801010dd:	e8 b4 0c 00 00       	call   80101d96 <iunlockput>
801010e2:	83 c4 10             	add    $0x10,%esp
    end_op();
801010e5:	e8 f4 26 00 00       	call   801037de <end_op>
  }
  return -1;
801010ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
801010ef:	c9                   	leave  
801010f0:	c3                   	ret    

801010f1 <fileinit>:
801010f1:	f3 0f 1e fb          	endbr32 
801010f5:	55                   	push   %ebp
801010f6:	89 e5                	mov    %esp,%ebp
801010f8:	83 ec 08             	sub    $0x8,%esp
801010fb:	83 ec 08             	sub    $0x8,%esp
801010fe:	68 11 96 10 80       	push   $0x80109611
80101103:	68 60 30 11 80       	push   $0x80113060
80101108:	e8 14 43 00 00       	call   80105421 <initlock>
8010110d:	83 c4 10             	add    $0x10,%esp
80101110:	90                   	nop
80101111:	c9                   	leave  
80101112:	c3                   	ret    

80101113 <filealloc>:
80101113:	f3 0f 1e fb          	endbr32 
80101117:	55                   	push   %ebp
80101118:	89 e5                	mov    %esp,%ebp
8010111a:	83 ec 18             	sub    $0x18,%esp
8010111d:	83 ec 0c             	sub    $0xc,%esp
80101120:	68 60 30 11 80       	push   $0x80113060
80101125:	e8 1d 43 00 00       	call   80105447 <acquire>
8010112a:	83 c4 10             	add    $0x10,%esp
8010112d:	c7 45 f4 94 30 11 80 	movl   $0x80113094,-0xc(%ebp)
80101134:	eb 2d                	jmp    80101163 <filealloc+0x50>
80101136:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101139:	8b 40 04             	mov    0x4(%eax),%eax
8010113c:	85 c0                	test   %eax,%eax
8010113e:	75 1f                	jne    8010115f <filealloc+0x4c>
80101140:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101143:	c7 40 04 01 00 00 00 	movl   $0x1,0x4(%eax)
8010114a:	83 ec 0c             	sub    $0xc,%esp
8010114d:	68 60 30 11 80       	push   $0x80113060
80101152:	e8 62 43 00 00       	call   801054b9 <release>
80101157:	83 c4 10             	add    $0x10,%esp
8010115a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010115d:	eb 23                	jmp    80101182 <filealloc+0x6f>
8010115f:	83 45 f4 18          	addl   $0x18,-0xc(%ebp)
80101163:	b8 f4 39 11 80       	mov    $0x801139f4,%eax
80101168:	39 45 f4             	cmp    %eax,-0xc(%ebp)
8010116b:	72 c9                	jb     80101136 <filealloc+0x23>
8010116d:	83 ec 0c             	sub    $0xc,%esp
80101170:	68 60 30 11 80       	push   $0x80113060
80101175:	e8 3f 43 00 00       	call   801054b9 <release>
8010117a:	83 c4 10             	add    $0x10,%esp
8010117d:	b8 00 00 00 00       	mov    $0x0,%eax
80101182:	c9                   	leave  
80101183:	c3                   	ret    

80101184 <filedup>:
80101184:	f3 0f 1e fb          	endbr32 
80101188:	55                   	push   %ebp
80101189:	89 e5                	mov    %esp,%ebp
8010118b:	83 ec 08             	sub    $0x8,%esp
8010118e:	83 ec 0c             	sub    $0xc,%esp
80101191:	68 60 30 11 80       	push   $0x80113060
80101196:	e8 ac 42 00 00       	call   80105447 <acquire>
8010119b:	83 c4 10             	add    $0x10,%esp
8010119e:	8b 45 08             	mov    0x8(%ebp),%eax
801011a1:	8b 40 04             	mov    0x4(%eax),%eax
801011a4:	85 c0                	test   %eax,%eax
801011a6:	7f 0d                	jg     801011b5 <filedup+0x31>
801011a8:	83 ec 0c             	sub    $0xc,%esp
801011ab:	68 18 96 10 80       	push   $0x80109618
801011b0:	e8 53 f4 ff ff       	call   80100608 <panic>
801011b5:	8b 45 08             	mov    0x8(%ebp),%eax
801011b8:	8b 40 04             	mov    0x4(%eax),%eax
801011bb:	8d 50 01             	lea    0x1(%eax),%edx
801011be:	8b 45 08             	mov    0x8(%ebp),%eax
801011c1:	89 50 04             	mov    %edx,0x4(%eax)
801011c4:	83 ec 0c             	sub    $0xc,%esp
801011c7:	68 60 30 11 80       	push   $0x80113060
801011cc:	e8 e8 42 00 00       	call   801054b9 <release>
801011d1:	83 c4 10             	add    $0x10,%esp
801011d4:	8b 45 08             	mov    0x8(%ebp),%eax
801011d7:	c9                   	leave  
801011d8:	c3                   	ret    

801011d9 <fileclose>:
801011d9:	f3 0f 1e fb          	endbr32 
801011dd:	55                   	push   %ebp
801011de:	89 e5                	mov    %esp,%ebp
801011e0:	83 ec 28             	sub    $0x28,%esp
801011e3:	83 ec 0c             	sub    $0xc,%esp
801011e6:	68 60 30 11 80       	push   $0x80113060
801011eb:	e8 57 42 00 00       	call   80105447 <acquire>
801011f0:	83 c4 10             	add    $0x10,%esp
801011f3:	8b 45 08             	mov    0x8(%ebp),%eax
801011f6:	8b 40 04             	mov    0x4(%eax),%eax
801011f9:	85 c0                	test   %eax,%eax
801011fb:	7f 0d                	jg     8010120a <fileclose+0x31>
801011fd:	83 ec 0c             	sub    $0xc,%esp
80101200:	68 20 96 10 80       	push   $0x80109620
80101205:	e8 fe f3 ff ff       	call   80100608 <panic>
8010120a:	8b 45 08             	mov    0x8(%ebp),%eax
8010120d:	8b 40 04             	mov    0x4(%eax),%eax
80101210:	8d 50 ff             	lea    -0x1(%eax),%edx
80101213:	8b 45 08             	mov    0x8(%ebp),%eax
80101216:	89 50 04             	mov    %edx,0x4(%eax)
80101219:	8b 45 08             	mov    0x8(%ebp),%eax
8010121c:	8b 40 04             	mov    0x4(%eax),%eax
8010121f:	85 c0                	test   %eax,%eax
80101221:	7e 15                	jle    80101238 <fileclose+0x5f>
80101223:	83 ec 0c             	sub    $0xc,%esp
80101226:	68 60 30 11 80       	push   $0x80113060
8010122b:	e8 89 42 00 00       	call   801054b9 <release>
80101230:	83 c4 10             	add    $0x10,%esp
80101233:	e9 8b 00 00 00       	jmp    801012c3 <fileclose+0xea>
80101238:	8b 45 08             	mov    0x8(%ebp),%eax
8010123b:	8b 10                	mov    (%eax),%edx
8010123d:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101240:	8b 50 04             	mov    0x4(%eax),%edx
80101243:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80101246:	8b 50 08             	mov    0x8(%eax),%edx
80101249:	89 55 e8             	mov    %edx,-0x18(%ebp)
8010124c:	8b 50 0c             	mov    0xc(%eax),%edx
8010124f:	89 55 ec             	mov    %edx,-0x14(%ebp)
80101252:	8b 50 10             	mov    0x10(%eax),%edx
80101255:	89 55 f0             	mov    %edx,-0x10(%ebp)
80101258:	8b 40 14             	mov    0x14(%eax),%eax
8010125b:	89 45 f4             	mov    %eax,-0xc(%ebp)
8010125e:	8b 45 08             	mov    0x8(%ebp),%eax
80101261:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
80101268:	8b 45 08             	mov    0x8(%ebp),%eax
8010126b:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80101271:	83 ec 0c             	sub    $0xc,%esp
80101274:	68 60 30 11 80       	push   $0x80113060
80101279:	e8 3b 42 00 00       	call   801054b9 <release>
8010127e:	83 c4 10             	add    $0x10,%esp
80101281:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101284:	83 f8 01             	cmp    $0x1,%eax
80101287:	75 19                	jne    801012a2 <fileclose+0xc9>
80101289:	0f b6 45 e9          	movzbl -0x17(%ebp),%eax
8010128d:	0f be d0             	movsbl %al,%edx
80101290:	8b 45 ec             	mov    -0x14(%ebp),%eax
80101293:	83 ec 08             	sub    $0x8,%esp
80101296:	52                   	push   %edx
80101297:	50                   	push   %eax
80101298:	e8 e7 2e 00 00       	call   80104184 <pipeclose>
8010129d:	83 c4 10             	add    $0x10,%esp
801012a0:	eb 21                	jmp    801012c3 <fileclose+0xea>
801012a2:	8b 45 e0             	mov    -0x20(%ebp),%eax
801012a5:	83 f8 02             	cmp    $0x2,%eax
801012a8:	75 19                	jne    801012c3 <fileclose+0xea>
801012aa:	e8 9f 24 00 00       	call   8010374e <begin_op>
801012af:	8b 45 f0             	mov    -0x10(%ebp),%eax
801012b2:	83 ec 0c             	sub    $0xc,%esp
801012b5:	50                   	push   %eax
801012b6:	e8 07 0a 00 00       	call   80101cc2 <iput>
801012bb:	83 c4 10             	add    $0x10,%esp
801012be:	e8 1b 25 00 00       	call   801037de <end_op>
801012c3:	c9                   	leave  
801012c4:	c3                   	ret    

801012c5 <filestat>:
801012c5:	f3 0f 1e fb          	endbr32 
801012c9:	55                   	push   %ebp
801012ca:	89 e5                	mov    %esp,%ebp
801012cc:	83 ec 08             	sub    $0x8,%esp
801012cf:	8b 45 08             	mov    0x8(%ebp),%eax
801012d2:	8b 00                	mov    (%eax),%eax
801012d4:	83 f8 02             	cmp    $0x2,%eax
801012d7:	75 40                	jne    80101319 <filestat+0x54>
801012d9:	8b 45 08             	mov    0x8(%ebp),%eax
801012dc:	8b 40 10             	mov    0x10(%eax),%eax
801012df:	83 ec 0c             	sub    $0xc,%esp
801012e2:	50                   	push   %eax
801012e3:	e8 71 08 00 00       	call   80101b59 <ilock>
801012e8:	83 c4 10             	add    $0x10,%esp
801012eb:	8b 45 08             	mov    0x8(%ebp),%eax
801012ee:	8b 40 10             	mov    0x10(%eax),%eax
801012f1:	83 ec 08             	sub    $0x8,%esp
801012f4:	ff 75 0c             	pushl  0xc(%ebp)
801012f7:	50                   	push   %eax
801012f8:	e8 1a 0d 00 00       	call   80102017 <stati>
801012fd:	83 c4 10             	add    $0x10,%esp
80101300:	8b 45 08             	mov    0x8(%ebp),%eax
80101303:	8b 40 10             	mov    0x10(%eax),%eax
80101306:	83 ec 0c             	sub    $0xc,%esp
80101309:	50                   	push   %eax
8010130a:	e8 61 09 00 00       	call   80101c70 <iunlock>
8010130f:	83 c4 10             	add    $0x10,%esp
80101312:	b8 00 00 00 00       	mov    $0x0,%eax
80101317:	eb 05                	jmp    8010131e <filestat+0x59>
80101319:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010131e:	c9                   	leave  
8010131f:	c3                   	ret    

80101320 <fileread>:
80101320:	f3 0f 1e fb          	endbr32 
80101324:	55                   	push   %ebp
80101325:	89 e5                	mov    %esp,%ebp
80101327:	83 ec 18             	sub    $0x18,%esp
8010132a:	8b 45 08             	mov    0x8(%ebp),%eax
8010132d:	0f b6 40 08          	movzbl 0x8(%eax),%eax
80101331:	84 c0                	test   %al,%al
80101333:	75 0a                	jne    8010133f <fileread+0x1f>
80101335:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010133a:	e9 9b 00 00 00       	jmp    801013da <fileread+0xba>
8010133f:	8b 45 08             	mov    0x8(%ebp),%eax
80101342:	8b 00                	mov    (%eax),%eax
80101344:	83 f8 01             	cmp    $0x1,%eax
80101347:	75 1a                	jne    80101363 <fileread+0x43>
80101349:	8b 45 08             	mov    0x8(%ebp),%eax
8010134c:	8b 40 0c             	mov    0xc(%eax),%eax
8010134f:	83 ec 04             	sub    $0x4,%esp
80101352:	ff 75 10             	pushl  0x10(%ebp)
80101355:	ff 75 0c             	pushl  0xc(%ebp)
80101358:	50                   	push   %eax
80101359:	e8 db 2f 00 00       	call   80104339 <piperead>
8010135e:	83 c4 10             	add    $0x10,%esp
80101361:	eb 77                	jmp    801013da <fileread+0xba>
80101363:	8b 45 08             	mov    0x8(%ebp),%eax
80101366:	8b 00                	mov    (%eax),%eax
80101368:	83 f8 02             	cmp    $0x2,%eax
8010136b:	75 60                	jne    801013cd <fileread+0xad>
8010136d:	8b 45 08             	mov    0x8(%ebp),%eax
80101370:	8b 40 10             	mov    0x10(%eax),%eax
80101373:	83 ec 0c             	sub    $0xc,%esp
80101376:	50                   	push   %eax
80101377:	e8 dd 07 00 00       	call   80101b59 <ilock>
8010137c:	83 c4 10             	add    $0x10,%esp
8010137f:	8b 4d 10             	mov    0x10(%ebp),%ecx
80101382:	8b 45 08             	mov    0x8(%ebp),%eax
80101385:	8b 50 14             	mov    0x14(%eax),%edx
80101388:	8b 45 08             	mov    0x8(%ebp),%eax
8010138b:	8b 40 10             	mov    0x10(%eax),%eax
8010138e:	51                   	push   %ecx
8010138f:	52                   	push   %edx
80101390:	ff 75 0c             	pushl  0xc(%ebp)
80101393:	50                   	push   %eax
80101394:	e8 c8 0c 00 00       	call   80102061 <readi>
80101399:	83 c4 10             	add    $0x10,%esp
8010139c:	89 45 f4             	mov    %eax,-0xc(%ebp)
8010139f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
801013a3:	7e 11                	jle    801013b6 <fileread+0x96>
801013a5:	8b 45 08             	mov    0x8(%ebp),%eax
801013a8:	8b 50 14             	mov    0x14(%eax),%edx
801013ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
801013ae:	01 c2                	add    %eax,%edx
801013b0:	8b 45 08             	mov    0x8(%ebp),%eax
801013b3:	89 50 14             	mov    %edx,0x14(%eax)
801013b6:	8b 45 08             	mov    0x8(%ebp),%eax
801013b9:	8b 40 10             	mov    0x10(%eax),%eax
801013bc:	83 ec 0c             	sub    $0xc,%esp
801013bf:	50                   	push   %eax
801013c0:	e8 ab 08 00 00       	call   80101c70 <iunlock>
801013c5:	83 c4 10             	add    $0x10,%esp
801013c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
801013cb:	eb 0d                	jmp    801013da <fileread+0xba>
801013cd:	83 ec 0c             	sub    $0xc,%esp
801013d0:	68 2a 96 10 80       	push   $0x8010962a
801013d5:	e8 2e f2 ff ff       	call   80100608 <panic>
801013da:	c9                   	leave  
801013db:	c3                   	ret    

801013dc <filewrite>:
801013dc:	f3 0f 1e fb          	endbr32 
801013e0:	55                   	push   %ebp
801013e1:	89 e5                	mov    %esp,%ebp
801013e3:	53                   	push   %ebx
801013e4:	83 ec 14             	sub    $0x14,%esp
801013e7:	8b 45 08             	mov    0x8(%ebp),%eax
801013ea:	0f b6 40 09          	movzbl 0x9(%eax),%eax
801013ee:	84 c0                	test   %al,%al
801013f0:	75 0a                	jne    801013fc <filewrite+0x20>
801013f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801013f7:	e9 1b 01 00 00       	jmp    80101517 <filewrite+0x13b>
801013fc:	8b 45 08             	mov    0x8(%ebp),%eax
801013ff:	8b 00                	mov    (%eax),%eax
80101401:	83 f8 01             	cmp    $0x1,%eax
80101404:	75 1d                	jne    80101423 <filewrite+0x47>
80101406:	8b 45 08             	mov    0x8(%ebp),%eax
80101409:	8b 40 0c             	mov    0xc(%eax),%eax
8010140c:	83 ec 04             	sub    $0x4,%esp
8010140f:	ff 75 10             	pushl  0x10(%ebp)
80101412:	ff 75 0c             	pushl  0xc(%ebp)
80101415:	50                   	push   %eax
80101416:	e8 18 2e 00 00       	call   80104233 <pipewrite>
8010141b:	83 c4 10             	add    $0x10,%esp
8010141e:	e9 f4 00 00 00       	jmp    80101517 <filewrite+0x13b>
80101423:	8b 45 08             	mov    0x8(%ebp),%eax
80101426:	8b 00                	mov    (%eax),%eax
80101428:	83 f8 02             	cmp    $0x2,%eax
8010142b:	0f 85 d9 00 00 00    	jne    8010150a <filewrite+0x12e>
80101431:	c7 45 ec 00 06 00 00 	movl   $0x600,-0x14(%ebp)
80101438:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010143f:	e9 a3 00 00 00       	jmp    801014e7 <filewrite+0x10b>
80101444:	8b 45 10             	mov    0x10(%ebp),%eax
80101447:	2b 45 f4             	sub    -0xc(%ebp),%eax
8010144a:	89 45 f0             	mov    %eax,-0x10(%ebp)
8010144d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101450:	3b 45 ec             	cmp    -0x14(%ebp),%eax
80101453:	7e 06                	jle    8010145b <filewrite+0x7f>
80101455:	8b 45 ec             	mov    -0x14(%ebp),%eax
80101458:	89 45 f0             	mov    %eax,-0x10(%ebp)
8010145b:	e8 ee 22 00 00       	call   8010374e <begin_op>
80101460:	8b 45 08             	mov    0x8(%ebp),%eax
80101463:	8b 40 10             	mov    0x10(%eax),%eax
80101466:	83 ec 0c             	sub    $0xc,%esp
80101469:	50                   	push   %eax
8010146a:	e8 ea 06 00 00       	call   80101b59 <ilock>
8010146f:	83 c4 10             	add    $0x10,%esp
80101472:	8b 4d f0             	mov    -0x10(%ebp),%ecx
80101475:	8b 45 08             	mov    0x8(%ebp),%eax
80101478:	8b 50 14             	mov    0x14(%eax),%edx
8010147b:	8b 5d f4             	mov    -0xc(%ebp),%ebx
8010147e:	8b 45 0c             	mov    0xc(%ebp),%eax
80101481:	01 c3                	add    %eax,%ebx
80101483:	8b 45 08             	mov    0x8(%ebp),%eax
80101486:	8b 40 10             	mov    0x10(%eax),%eax
80101489:	51                   	push   %ecx
8010148a:	52                   	push   %edx
8010148b:	53                   	push   %ebx
8010148c:	50                   	push   %eax
8010148d:	e8 28 0d 00 00       	call   801021ba <writei>
80101492:	83 c4 10             	add    $0x10,%esp
80101495:	89 45 e8             	mov    %eax,-0x18(%ebp)
80101498:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
8010149c:	7e 11                	jle    801014af <filewrite+0xd3>
8010149e:	8b 45 08             	mov    0x8(%ebp),%eax
801014a1:	8b 50 14             	mov    0x14(%eax),%edx
801014a4:	8b 45 e8             	mov    -0x18(%ebp),%eax
801014a7:	01 c2                	add    %eax,%edx
801014a9:	8b 45 08             	mov    0x8(%ebp),%eax
801014ac:	89 50 14             	mov    %edx,0x14(%eax)
801014af:	8b 45 08             	mov    0x8(%ebp),%eax
801014b2:	8b 40 10             	mov    0x10(%eax),%eax
801014b5:	83 ec 0c             	sub    $0xc,%esp
801014b8:	50                   	push   %eax
801014b9:	e8 b2 07 00 00       	call   80101c70 <iunlock>
801014be:	83 c4 10             	add    $0x10,%esp
801014c1:	e8 18 23 00 00       	call   801037de <end_op>
801014c6:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
801014ca:	78 29                	js     801014f5 <filewrite+0x119>
801014cc:	8b 45 e8             	mov    -0x18(%ebp),%eax
801014cf:	3b 45 f0             	cmp    -0x10(%ebp),%eax
801014d2:	74 0d                	je     801014e1 <filewrite+0x105>
801014d4:	83 ec 0c             	sub    $0xc,%esp
801014d7:	68 33 96 10 80       	push   $0x80109633
801014dc:	e8 27 f1 ff ff       	call   80100608 <panic>
801014e1:	8b 45 e8             	mov    -0x18(%ebp),%eax
801014e4:	01 45 f4             	add    %eax,-0xc(%ebp)
801014e7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801014ea:	3b 45 10             	cmp    0x10(%ebp),%eax
801014ed:	0f 8c 51 ff ff ff    	jl     80101444 <filewrite+0x68>
801014f3:	eb 01                	jmp    801014f6 <filewrite+0x11a>
801014f5:	90                   	nop
801014f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
801014f9:	3b 45 10             	cmp    0x10(%ebp),%eax
801014fc:	75 05                	jne    80101503 <filewrite+0x127>
801014fe:	8b 45 10             	mov    0x10(%ebp),%eax
80101501:	eb 14                	jmp    80101517 <filewrite+0x13b>
80101503:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101508:	eb 0d                	jmp    80101517 <filewrite+0x13b>
8010150a:	83 ec 0c             	sub    $0xc,%esp
8010150d:	68 43 96 10 80       	push   $0x80109643
80101512:	e8 f1 f0 ff ff       	call   80100608 <panic>
80101517:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010151a:	c9                   	leave  
8010151b:	c3                   	ret    

8010151c <readsb>:
struct superblock sb; 

// Read the super block.
void
readsb(int dev, struct superblock *sb)
{
8010151c:	f3 0f 1e fb          	endbr32 
80101520:	55                   	push   %ebp
80101521:	89 e5                	mov    %esp,%ebp
80101523:	83 ec 18             	sub    $0x18,%esp
  struct buf *bp;

  bp = bread(dev, 1);
80101526:	8b 45 08             	mov    0x8(%ebp),%eax
80101529:	83 ec 08             	sub    $0x8,%esp
8010152c:	6a 01                	push   $0x1
8010152e:	50                   	push   %eax
8010152f:	e8 a3 ec ff ff       	call   801001d7 <bread>
80101534:	83 c4 10             	add    $0x10,%esp
80101537:	89 45 f4             	mov    %eax,-0xc(%ebp)
  memmove(sb, bp->data, sizeof(*sb));
8010153a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010153d:	83 c0 5c             	add    $0x5c,%eax
80101540:	83 ec 04             	sub    $0x4,%esp
80101543:	6a 1c                	push   $0x1c
80101545:	50                   	push   %eax
80101546:	ff 75 0c             	pushl  0xc(%ebp)
80101549:	e8 5f 42 00 00       	call   801057ad <memmove>
8010154e:	83 c4 10             	add    $0x10,%esp
  brelse(bp);
80101551:	83 ec 0c             	sub    $0xc,%esp
80101554:	ff 75 f4             	pushl  -0xc(%ebp)
80101557:	e8 05 ed ff ff       	call   80100261 <brelse>
8010155c:	83 c4 10             	add    $0x10,%esp
}
8010155f:	90                   	nop
80101560:	c9                   	leave  
80101561:	c3                   	ret    

80101562 <bzero>:

// Zero a block.
static void
bzero(int dev, int bno)
{
80101562:	f3 0f 1e fb          	endbr32 
80101566:	55                   	push   %ebp
80101567:	89 e5                	mov    %esp,%ebp
80101569:	83 ec 18             	sub    $0x18,%esp
  struct buf *bp;

  bp = bread(dev, bno);
8010156c:	8b 55 0c             	mov    0xc(%ebp),%edx
8010156f:	8b 45 08             	mov    0x8(%ebp),%eax
80101572:	83 ec 08             	sub    $0x8,%esp
80101575:	52                   	push   %edx
80101576:	50                   	push   %eax
80101577:	e8 5b ec ff ff       	call   801001d7 <bread>
8010157c:	83 c4 10             	add    $0x10,%esp
8010157f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  memset(bp->data, 0, BSIZE);
80101582:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101585:	83 c0 5c             	add    $0x5c,%eax
80101588:	83 ec 04             	sub    $0x4,%esp
8010158b:	68 00 02 00 00       	push   $0x200
80101590:	6a 00                	push   $0x0
80101592:	50                   	push   %eax
80101593:	e8 4e 41 00 00       	call   801056e6 <memset>
80101598:	83 c4 10             	add    $0x10,%esp
  log_write(bp);
8010159b:	83 ec 0c             	sub    $0xc,%esp
8010159e:	ff 75 f4             	pushl  -0xc(%ebp)
801015a1:	e8 f1 23 00 00       	call   80103997 <log_write>
801015a6:	83 c4 10             	add    $0x10,%esp
  brelse(bp);
801015a9:	83 ec 0c             	sub    $0xc,%esp
801015ac:	ff 75 f4             	pushl  -0xc(%ebp)
801015af:	e8 ad ec ff ff       	call   80100261 <brelse>
801015b4:	83 c4 10             	add    $0x10,%esp
}
801015b7:	90                   	nop
801015b8:	c9                   	leave  
801015b9:	c3                   	ret    

801015ba <balloc>:
// Blocks.

// Allocate a zeroed disk block.
static uint
balloc(uint dev)
{
801015ba:	f3 0f 1e fb          	endbr32 
801015be:	55                   	push   %ebp
801015bf:	89 e5                	mov    %esp,%ebp
801015c1:	83 ec 18             	sub    $0x18,%esp
  int b, bi, m;
  struct buf *bp;

  bp = 0;
801015c4:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
  for(b = 0; b < sb.size; b += BPB){
801015cb:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801015d2:	e9 13 01 00 00       	jmp    801016ea <balloc+0x130>
    bp = bread(dev, BBLOCK(b, sb));
801015d7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801015da:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
801015e0:	85 c0                	test   %eax,%eax
801015e2:	0f 48 c2             	cmovs  %edx,%eax
801015e5:	c1 f8 0c             	sar    $0xc,%eax
801015e8:	89 c2                	mov    %eax,%edx
801015ea:	a1 78 3a 11 80       	mov    0x80113a78,%eax
801015ef:	01 d0                	add    %edx,%eax
801015f1:	83 ec 08             	sub    $0x8,%esp
801015f4:	50                   	push   %eax
801015f5:	ff 75 08             	pushl  0x8(%ebp)
801015f8:	e8 da eb ff ff       	call   801001d7 <bread>
801015fd:	83 c4 10             	add    $0x10,%esp
80101600:	89 45 ec             	mov    %eax,-0x14(%ebp)
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
80101603:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
8010160a:	e9 a6 00 00 00       	jmp    801016b5 <balloc+0xfb>
      m = 1 << (bi % 8);
8010160f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101612:	99                   	cltd   
80101613:	c1 ea 1d             	shr    $0x1d,%edx
80101616:	01 d0                	add    %edx,%eax
80101618:	83 e0 07             	and    $0x7,%eax
8010161b:	29 d0                	sub    %edx,%eax
8010161d:	ba 01 00 00 00       	mov    $0x1,%edx
80101622:	89 c1                	mov    %eax,%ecx
80101624:	d3 e2                	shl    %cl,%edx
80101626:	89 d0                	mov    %edx,%eax
80101628:	89 45 e8             	mov    %eax,-0x18(%ebp)
      if((bp->data[bi/8] & m) == 0){  // Is block free?
8010162b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010162e:	8d 50 07             	lea    0x7(%eax),%edx
80101631:	85 c0                	test   %eax,%eax
80101633:	0f 48 c2             	cmovs  %edx,%eax
80101636:	c1 f8 03             	sar    $0x3,%eax
80101639:	89 c2                	mov    %eax,%edx
8010163b:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010163e:	0f b6 44 10 5c       	movzbl 0x5c(%eax,%edx,1),%eax
80101643:	0f b6 c0             	movzbl %al,%eax
80101646:	23 45 e8             	and    -0x18(%ebp),%eax
80101649:	85 c0                	test   %eax,%eax
8010164b:	75 64                	jne    801016b1 <balloc+0xf7>
        bp->data[bi/8] |= m;  // Mark block in use.
8010164d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101650:	8d 50 07             	lea    0x7(%eax),%edx
80101653:	85 c0                	test   %eax,%eax
80101655:	0f 48 c2             	cmovs  %edx,%eax
80101658:	c1 f8 03             	sar    $0x3,%eax
8010165b:	8b 55 ec             	mov    -0x14(%ebp),%edx
8010165e:	0f b6 54 02 5c       	movzbl 0x5c(%edx,%eax,1),%edx
80101663:	89 d1                	mov    %edx,%ecx
80101665:	8b 55 e8             	mov    -0x18(%ebp),%edx
80101668:	09 ca                	or     %ecx,%edx
8010166a:	89 d1                	mov    %edx,%ecx
8010166c:	8b 55 ec             	mov    -0x14(%ebp),%edx
8010166f:	88 4c 02 5c          	mov    %cl,0x5c(%edx,%eax,1)
        log_write(bp);
80101673:	83 ec 0c             	sub    $0xc,%esp
80101676:	ff 75 ec             	pushl  -0x14(%ebp)
80101679:	e8 19 23 00 00       	call   80103997 <log_write>
8010167e:	83 c4 10             	add    $0x10,%esp
        brelse(bp);
80101681:	83 ec 0c             	sub    $0xc,%esp
80101684:	ff 75 ec             	pushl  -0x14(%ebp)
80101687:	e8 d5 eb ff ff       	call   80100261 <brelse>
8010168c:	83 c4 10             	add    $0x10,%esp
        bzero(dev, b + bi);
8010168f:	8b 55 f4             	mov    -0xc(%ebp),%edx
80101692:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101695:	01 c2                	add    %eax,%edx
80101697:	8b 45 08             	mov    0x8(%ebp),%eax
8010169a:	83 ec 08             	sub    $0x8,%esp
8010169d:	52                   	push   %edx
8010169e:	50                   	push   %eax
8010169f:	e8 be fe ff ff       	call   80101562 <bzero>
801016a4:	83 c4 10             	add    $0x10,%esp
        return b + bi;
801016a7:	8b 55 f4             	mov    -0xc(%ebp),%edx
801016aa:	8b 45 f0             	mov    -0x10(%ebp),%eax
801016ad:	01 d0                	add    %edx,%eax
801016af:	eb 57                	jmp    80101708 <balloc+0x14e>
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
801016b1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
801016b5:	81 7d f0 ff 0f 00 00 	cmpl   $0xfff,-0x10(%ebp)
801016bc:	7f 17                	jg     801016d5 <balloc+0x11b>
801016be:	8b 55 f4             	mov    -0xc(%ebp),%edx
801016c1:	8b 45 f0             	mov    -0x10(%ebp),%eax
801016c4:	01 d0                	add    %edx,%eax
801016c6:	89 c2                	mov    %eax,%edx
801016c8:	a1 60 3a 11 80       	mov    0x80113a60,%eax
801016cd:	39 c2                	cmp    %eax,%edx
801016cf:	0f 82 3a ff ff ff    	jb     8010160f <balloc+0x55>
      }
    }
    brelse(bp);
801016d5:	83 ec 0c             	sub    $0xc,%esp
801016d8:	ff 75 ec             	pushl  -0x14(%ebp)
801016db:	e8 81 eb ff ff       	call   80100261 <brelse>
801016e0:	83 c4 10             	add    $0x10,%esp
  for(b = 0; b < sb.size; b += BPB){
801016e3:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
801016ea:	8b 15 60 3a 11 80    	mov    0x80113a60,%edx
801016f0:	8b 45 f4             	mov    -0xc(%ebp),%eax
801016f3:	39 c2                	cmp    %eax,%edx
801016f5:	0f 87 dc fe ff ff    	ja     801015d7 <balloc+0x1d>
  }
  panic("balloc: out of blocks");
801016fb:	83 ec 0c             	sub    $0xc,%esp
801016fe:	68 50 96 10 80       	push   $0x80109650
80101703:	e8 00 ef ff ff       	call   80100608 <panic>
}
80101708:	c9                   	leave  
80101709:	c3                   	ret    

8010170a <bfree>:

// Free a disk block.
static void
bfree(int dev, uint b)
{
8010170a:	f3 0f 1e fb          	endbr32 
8010170e:	55                   	push   %ebp
8010170f:	89 e5                	mov    %esp,%ebp
80101711:	83 ec 18             	sub    $0x18,%esp
  struct buf *bp;
  int bi, m;

  bp = bread(dev, BBLOCK(b, sb));
80101714:	8b 45 0c             	mov    0xc(%ebp),%eax
80101717:	c1 e8 0c             	shr    $0xc,%eax
8010171a:	89 c2                	mov    %eax,%edx
8010171c:	a1 78 3a 11 80       	mov    0x80113a78,%eax
80101721:	01 c2                	add    %eax,%edx
80101723:	8b 45 08             	mov    0x8(%ebp),%eax
80101726:	83 ec 08             	sub    $0x8,%esp
80101729:	52                   	push   %edx
8010172a:	50                   	push   %eax
8010172b:	e8 a7 ea ff ff       	call   801001d7 <bread>
80101730:	83 c4 10             	add    $0x10,%esp
80101733:	89 45 f4             	mov    %eax,-0xc(%ebp)
  bi = b % BPB;
80101736:	8b 45 0c             	mov    0xc(%ebp),%eax
80101739:	25 ff 0f 00 00       	and    $0xfff,%eax
8010173e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  m = 1 << (bi % 8);
80101741:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101744:	99                   	cltd   
80101745:	c1 ea 1d             	shr    $0x1d,%edx
80101748:	01 d0                	add    %edx,%eax
8010174a:	83 e0 07             	and    $0x7,%eax
8010174d:	29 d0                	sub    %edx,%eax
8010174f:	ba 01 00 00 00       	mov    $0x1,%edx
80101754:	89 c1                	mov    %eax,%ecx
80101756:	d3 e2                	shl    %cl,%edx
80101758:	89 d0                	mov    %edx,%eax
8010175a:	89 45 ec             	mov    %eax,-0x14(%ebp)
  if((bp->data[bi/8] & m) == 0)
8010175d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101760:	8d 50 07             	lea    0x7(%eax),%edx
80101763:	85 c0                	test   %eax,%eax
80101765:	0f 48 c2             	cmovs  %edx,%eax
80101768:	c1 f8 03             	sar    $0x3,%eax
8010176b:	89 c2                	mov    %eax,%edx
8010176d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101770:	0f b6 44 10 5c       	movzbl 0x5c(%eax,%edx,1),%eax
80101775:	0f b6 c0             	movzbl %al,%eax
80101778:	23 45 ec             	and    -0x14(%ebp),%eax
8010177b:	85 c0                	test   %eax,%eax
8010177d:	75 0d                	jne    8010178c <bfree+0x82>
    panic("freeing free block");
8010177f:	83 ec 0c             	sub    $0xc,%esp
80101782:	68 66 96 10 80       	push   $0x80109666
80101787:	e8 7c ee ff ff       	call   80100608 <panic>
  bp->data[bi/8] &= ~m;
8010178c:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010178f:	8d 50 07             	lea    0x7(%eax),%edx
80101792:	85 c0                	test   %eax,%eax
80101794:	0f 48 c2             	cmovs  %edx,%eax
80101797:	c1 f8 03             	sar    $0x3,%eax
8010179a:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010179d:	0f b6 54 02 5c       	movzbl 0x5c(%edx,%eax,1),%edx
801017a2:	89 d1                	mov    %edx,%ecx
801017a4:	8b 55 ec             	mov    -0x14(%ebp),%edx
801017a7:	f7 d2                	not    %edx
801017a9:	21 ca                	and    %ecx,%edx
801017ab:	89 d1                	mov    %edx,%ecx
801017ad:	8b 55 f4             	mov    -0xc(%ebp),%edx
801017b0:	88 4c 02 5c          	mov    %cl,0x5c(%edx,%eax,1)
  log_write(bp);
801017b4:	83 ec 0c             	sub    $0xc,%esp
801017b7:	ff 75 f4             	pushl  -0xc(%ebp)
801017ba:	e8 d8 21 00 00       	call   80103997 <log_write>
801017bf:	83 c4 10             	add    $0x10,%esp
  brelse(bp);
801017c2:	83 ec 0c             	sub    $0xc,%esp
801017c5:	ff 75 f4             	pushl  -0xc(%ebp)
801017c8:	e8 94 ea ff ff       	call   80100261 <brelse>
801017cd:	83 c4 10             	add    $0x10,%esp
}
801017d0:	90                   	nop
801017d1:	c9                   	leave  
801017d2:	c3                   	ret    

801017d3 <iinit>:
  struct inode inode[NINODE];
} icache;

void
iinit(int dev)
{
801017d3:	f3 0f 1e fb          	endbr32 
801017d7:	55                   	push   %ebp
801017d8:	89 e5                	mov    %esp,%ebp
801017da:	57                   	push   %edi
801017db:	56                   	push   %esi
801017dc:	53                   	push   %ebx
801017dd:	83 ec 2c             	sub    $0x2c,%esp
  int i = 0;
801017e0:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  
  initlock(&icache.lock, "icache");
801017e7:	83 ec 08             	sub    $0x8,%esp
801017ea:	68 79 96 10 80       	push   $0x80109679
801017ef:	68 80 3a 11 80       	push   $0x80113a80
801017f4:	e8 28 3c 00 00       	call   80105421 <initlock>
801017f9:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NINODE; i++) {
801017fc:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101803:	eb 2d                	jmp    80101832 <iinit+0x5f>
    initsleeplock(&icache.inode[i].lock, "inode");
80101805:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101808:	89 d0                	mov    %edx,%eax
8010180a:	c1 e0 03             	shl    $0x3,%eax
8010180d:	01 d0                	add    %edx,%eax
8010180f:	c1 e0 04             	shl    $0x4,%eax
80101812:	83 c0 30             	add    $0x30,%eax
80101815:	05 80 3a 11 80       	add    $0x80113a80,%eax
8010181a:	83 c0 10             	add    $0x10,%eax
8010181d:	83 ec 08             	sub    $0x8,%esp
80101820:	68 80 96 10 80       	push   $0x80109680
80101825:	50                   	push   %eax
80101826:	e8 63 3a 00 00       	call   8010528e <initsleeplock>
8010182b:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NINODE; i++) {
8010182e:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
80101832:	83 7d e4 31          	cmpl   $0x31,-0x1c(%ebp)
80101836:	7e cd                	jle    80101805 <iinit+0x32>
  }

  readsb(dev, &sb);
80101838:	83 ec 08             	sub    $0x8,%esp
8010183b:	68 60 3a 11 80       	push   $0x80113a60
80101840:	ff 75 08             	pushl  0x8(%ebp)
80101843:	e8 d4 fc ff ff       	call   8010151c <readsb>
80101848:	83 c4 10             	add    $0x10,%esp
  cprintf("sb: size %d nblocks %d ninodes %d nlog %d logstart %d\
8010184b:	a1 78 3a 11 80       	mov    0x80113a78,%eax
80101850:	89 45 d4             	mov    %eax,-0x2c(%ebp)
80101853:	8b 3d 74 3a 11 80    	mov    0x80113a74,%edi
80101859:	8b 35 70 3a 11 80    	mov    0x80113a70,%esi
8010185f:	8b 1d 6c 3a 11 80    	mov    0x80113a6c,%ebx
80101865:	8b 0d 68 3a 11 80    	mov    0x80113a68,%ecx
8010186b:	8b 15 64 3a 11 80    	mov    0x80113a64,%edx
80101871:	a1 60 3a 11 80       	mov    0x80113a60,%eax
80101876:	ff 75 d4             	pushl  -0x2c(%ebp)
80101879:	57                   	push   %edi
8010187a:	56                   	push   %esi
8010187b:	53                   	push   %ebx
8010187c:	51                   	push   %ecx
8010187d:	52                   	push   %edx
8010187e:	50                   	push   %eax
8010187f:	68 88 96 10 80       	push   $0x80109688
80101884:	e8 8f eb ff ff       	call   80100418 <cprintf>
80101889:	83 c4 20             	add    $0x20,%esp
 inodestart %d bmap start %d\n", sb.size, sb.nblocks,
          sb.ninodes, sb.nlog, sb.logstart, sb.inodestart,
          sb.bmapstart);
}
8010188c:	90                   	nop
8010188d:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101890:	5b                   	pop    %ebx
80101891:	5e                   	pop    %esi
80101892:	5f                   	pop    %edi
80101893:	5d                   	pop    %ebp
80101894:	c3                   	ret    

80101895 <ialloc>:
// Allocate an inode on device dev.
// Mark it as allocated by  giving it type type.
// Returns an unlocked but allocated and referenced inode.
struct inode*
ialloc(uint dev, short type)
{
80101895:	f3 0f 1e fb          	endbr32 
80101899:	55                   	push   %ebp
8010189a:	89 e5                	mov    %esp,%ebp
8010189c:	83 ec 28             	sub    $0x28,%esp
8010189f:	8b 45 0c             	mov    0xc(%ebp),%eax
801018a2:	66 89 45 e4          	mov    %ax,-0x1c(%ebp)
  int inum;
  struct buf *bp;
  struct dinode *dip;

  for(inum = 1; inum < sb.ninodes; inum++){
801018a6:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
801018ad:	e9 9e 00 00 00       	jmp    80101950 <ialloc+0xbb>
    bp = bread(dev, IBLOCK(inum, sb));
801018b2:	8b 45 f4             	mov    -0xc(%ebp),%eax
801018b5:	c1 e8 03             	shr    $0x3,%eax
801018b8:	89 c2                	mov    %eax,%edx
801018ba:	a1 74 3a 11 80       	mov    0x80113a74,%eax
801018bf:	01 d0                	add    %edx,%eax
801018c1:	83 ec 08             	sub    $0x8,%esp
801018c4:	50                   	push   %eax
801018c5:	ff 75 08             	pushl  0x8(%ebp)
801018c8:	e8 0a e9 ff ff       	call   801001d7 <bread>
801018cd:	83 c4 10             	add    $0x10,%esp
801018d0:	89 45 f0             	mov    %eax,-0x10(%ebp)
    dip = (struct dinode*)bp->data + inum%IPB;
801018d3:	8b 45 f0             	mov    -0x10(%ebp),%eax
801018d6:	8d 50 5c             	lea    0x5c(%eax),%edx
801018d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801018dc:	83 e0 07             	and    $0x7,%eax
801018df:	c1 e0 06             	shl    $0x6,%eax
801018e2:	01 d0                	add    %edx,%eax
801018e4:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if(dip->type == 0){  // a free inode
801018e7:	8b 45 ec             	mov    -0x14(%ebp),%eax
801018ea:	0f b7 00             	movzwl (%eax),%eax
801018ed:	66 85 c0             	test   %ax,%ax
801018f0:	75 4c                	jne    8010193e <ialloc+0xa9>
      memset(dip, 0, sizeof(*dip));
801018f2:	83 ec 04             	sub    $0x4,%esp
801018f5:	6a 40                	push   $0x40
801018f7:	6a 00                	push   $0x0
801018f9:	ff 75 ec             	pushl  -0x14(%ebp)
801018fc:	e8 e5 3d 00 00       	call   801056e6 <memset>
80101901:	83 c4 10             	add    $0x10,%esp
      dip->type = type;
80101904:	8b 45 ec             	mov    -0x14(%ebp),%eax
80101907:	0f b7 55 e4          	movzwl -0x1c(%ebp),%edx
8010190b:	66 89 10             	mov    %dx,(%eax)
      log_write(bp);   // mark it allocated on the disk
8010190e:	83 ec 0c             	sub    $0xc,%esp
80101911:	ff 75 f0             	pushl  -0x10(%ebp)
80101914:	e8 7e 20 00 00       	call   80103997 <log_write>
80101919:	83 c4 10             	add    $0x10,%esp
      brelse(bp);
8010191c:	83 ec 0c             	sub    $0xc,%esp
8010191f:	ff 75 f0             	pushl  -0x10(%ebp)
80101922:	e8 3a e9 ff ff       	call   80100261 <brelse>
80101927:	83 c4 10             	add    $0x10,%esp
      return iget(dev, inum);
8010192a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010192d:	83 ec 08             	sub    $0x8,%esp
80101930:	50                   	push   %eax
80101931:	ff 75 08             	pushl  0x8(%ebp)
80101934:	e8 fc 00 00 00       	call   80101a35 <iget>
80101939:	83 c4 10             	add    $0x10,%esp
8010193c:	eb 30                	jmp    8010196e <ialloc+0xd9>
    }
    brelse(bp);
8010193e:	83 ec 0c             	sub    $0xc,%esp
80101941:	ff 75 f0             	pushl  -0x10(%ebp)
80101944:	e8 18 e9 ff ff       	call   80100261 <brelse>
80101949:	83 c4 10             	add    $0x10,%esp
  for(inum = 1; inum < sb.ninodes; inum++){
8010194c:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80101950:	8b 15 68 3a 11 80    	mov    0x80113a68,%edx
80101956:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101959:	39 c2                	cmp    %eax,%edx
8010195b:	0f 87 51 ff ff ff    	ja     801018b2 <ialloc+0x1d>
  }
  panic("ialloc: no inodes");
80101961:	83 ec 0c             	sub    $0xc,%esp
80101964:	68 db 96 10 80       	push   $0x801096db
80101969:	e8 9a ec ff ff       	call   80100608 <panic>
}
8010196e:	c9                   	leave  
8010196f:	c3                   	ret    

80101970 <iupdate>:
// Must be called after every change to an ip->xxx field
// that lives on disk, since i-node cache is write-through.
// Caller must hold ip->lock.
void
iupdate(struct inode *ip)
{
80101970:	f3 0f 1e fb          	endbr32 
80101974:	55                   	push   %ebp
80101975:	89 e5                	mov    %esp,%ebp
80101977:	83 ec 18             	sub    $0x18,%esp
  struct buf *bp;
  struct dinode *dip;

  bp = bread(ip->dev, IBLOCK(ip->inum, sb));
8010197a:	8b 45 08             	mov    0x8(%ebp),%eax
8010197d:	8b 40 04             	mov    0x4(%eax),%eax
80101980:	c1 e8 03             	shr    $0x3,%eax
80101983:	89 c2                	mov    %eax,%edx
80101985:	a1 74 3a 11 80       	mov    0x80113a74,%eax
8010198a:	01 c2                	add    %eax,%edx
8010198c:	8b 45 08             	mov    0x8(%ebp),%eax
8010198f:	8b 00                	mov    (%eax),%eax
80101991:	83 ec 08             	sub    $0x8,%esp
80101994:	52                   	push   %edx
80101995:	50                   	push   %eax
80101996:	e8 3c e8 ff ff       	call   801001d7 <bread>
8010199b:	83 c4 10             	add    $0x10,%esp
8010199e:	89 45 f4             	mov    %eax,-0xc(%ebp)
  dip = (struct dinode*)bp->data + ip->inum%IPB;
801019a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
801019a4:	8d 50 5c             	lea    0x5c(%eax),%edx
801019a7:	8b 45 08             	mov    0x8(%ebp),%eax
801019aa:	8b 40 04             	mov    0x4(%eax),%eax
801019ad:	83 e0 07             	and    $0x7,%eax
801019b0:	c1 e0 06             	shl    $0x6,%eax
801019b3:	01 d0                	add    %edx,%eax
801019b5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  dip->type = ip->type;
801019b8:	8b 45 08             	mov    0x8(%ebp),%eax
801019bb:	0f b7 50 50          	movzwl 0x50(%eax),%edx
801019bf:	8b 45 f0             	mov    -0x10(%ebp),%eax
801019c2:	66 89 10             	mov    %dx,(%eax)
  dip->major = ip->major;
801019c5:	8b 45 08             	mov    0x8(%ebp),%eax
801019c8:	0f b7 50 52          	movzwl 0x52(%eax),%edx
801019cc:	8b 45 f0             	mov    -0x10(%ebp),%eax
801019cf:	66 89 50 02          	mov    %dx,0x2(%eax)
  dip->minor = ip->minor;
801019d3:	8b 45 08             	mov    0x8(%ebp),%eax
801019d6:	0f b7 50 54          	movzwl 0x54(%eax),%edx
801019da:	8b 45 f0             	mov    -0x10(%ebp),%eax
801019dd:	66 89 50 04          	mov    %dx,0x4(%eax)
  dip->nlink = ip->nlink;
801019e1:	8b 45 08             	mov    0x8(%ebp),%eax
801019e4:	0f b7 50 56          	movzwl 0x56(%eax),%edx
801019e8:	8b 45 f0             	mov    -0x10(%ebp),%eax
801019eb:	66 89 50 06          	mov    %dx,0x6(%eax)
  dip->size = ip->size;
801019ef:	8b 45 08             	mov    0x8(%ebp),%eax
801019f2:	8b 50 58             	mov    0x58(%eax),%edx
801019f5:	8b 45 f0             	mov    -0x10(%ebp),%eax
801019f8:	89 50 08             	mov    %edx,0x8(%eax)
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
801019fb:	8b 45 08             	mov    0x8(%ebp),%eax
801019fe:	8d 50 5c             	lea    0x5c(%eax),%edx
80101a01:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101a04:	83 c0 0c             	add    $0xc,%eax
80101a07:	83 ec 04             	sub    $0x4,%esp
80101a0a:	6a 34                	push   $0x34
80101a0c:	52                   	push   %edx
80101a0d:	50                   	push   %eax
80101a0e:	e8 9a 3d 00 00       	call   801057ad <memmove>
80101a13:	83 c4 10             	add    $0x10,%esp
  log_write(bp);
80101a16:	83 ec 0c             	sub    $0xc,%esp
80101a19:	ff 75 f4             	pushl  -0xc(%ebp)
80101a1c:	e8 76 1f 00 00       	call   80103997 <log_write>
80101a21:	83 c4 10             	add    $0x10,%esp
  brelse(bp);
80101a24:	83 ec 0c             	sub    $0xc,%esp
80101a27:	ff 75 f4             	pushl  -0xc(%ebp)
80101a2a:	e8 32 e8 ff ff       	call   80100261 <brelse>
80101a2f:	83 c4 10             	add    $0x10,%esp
}
80101a32:	90                   	nop
80101a33:	c9                   	leave  
80101a34:	c3                   	ret    

80101a35 <iget>:
// Find the inode with number inum on device dev
// and return the in-memory copy. Does not lock
// the inode and does not read it from disk.
static struct inode*
iget(uint dev, uint inum)
{
80101a35:	f3 0f 1e fb          	endbr32 
80101a39:	55                   	push   %ebp
80101a3a:	89 e5                	mov    %esp,%ebp
80101a3c:	83 ec 18             	sub    $0x18,%esp
  struct inode *ip, *empty;

  acquire(&icache.lock);
80101a3f:	83 ec 0c             	sub    $0xc,%esp
80101a42:	68 80 3a 11 80       	push   $0x80113a80
80101a47:	e8 fb 39 00 00       	call   80105447 <acquire>
80101a4c:	83 c4 10             	add    $0x10,%esp

  // Is the inode already cached?
  empty = 0;
80101a4f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
80101a56:	c7 45 f4 b4 3a 11 80 	movl   $0x80113ab4,-0xc(%ebp)
80101a5d:	eb 60                	jmp    80101abf <iget+0x8a>
    if(ip->ref > 0 && ip->dev == dev && ip->inum == inum){
80101a5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101a62:	8b 40 08             	mov    0x8(%eax),%eax
80101a65:	85 c0                	test   %eax,%eax
80101a67:	7e 39                	jle    80101aa2 <iget+0x6d>
80101a69:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101a6c:	8b 00                	mov    (%eax),%eax
80101a6e:	39 45 08             	cmp    %eax,0x8(%ebp)
80101a71:	75 2f                	jne    80101aa2 <iget+0x6d>
80101a73:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101a76:	8b 40 04             	mov    0x4(%eax),%eax
80101a79:	39 45 0c             	cmp    %eax,0xc(%ebp)
80101a7c:	75 24                	jne    80101aa2 <iget+0x6d>
      ip->ref++;
80101a7e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101a81:	8b 40 08             	mov    0x8(%eax),%eax
80101a84:	8d 50 01             	lea    0x1(%eax),%edx
80101a87:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101a8a:	89 50 08             	mov    %edx,0x8(%eax)
      release(&icache.lock);
80101a8d:	83 ec 0c             	sub    $0xc,%esp
80101a90:	68 80 3a 11 80       	push   $0x80113a80
80101a95:	e8 1f 3a 00 00       	call   801054b9 <release>
80101a9a:	83 c4 10             	add    $0x10,%esp
      return ip;
80101a9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101aa0:	eb 77                	jmp    80101b19 <iget+0xe4>
    }
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
80101aa2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80101aa6:	75 10                	jne    80101ab8 <iget+0x83>
80101aa8:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101aab:	8b 40 08             	mov    0x8(%eax),%eax
80101aae:	85 c0                	test   %eax,%eax
80101ab0:	75 06                	jne    80101ab8 <iget+0x83>
      empty = ip;
80101ab2:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101ab5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
80101ab8:	81 45 f4 90 00 00 00 	addl   $0x90,-0xc(%ebp)
80101abf:	81 7d f4 d4 56 11 80 	cmpl   $0x801156d4,-0xc(%ebp)
80101ac6:	72 97                	jb     80101a5f <iget+0x2a>
  }

  // Recycle an inode cache entry.
  if(empty == 0)
80101ac8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80101acc:	75 0d                	jne    80101adb <iget+0xa6>
    panic("iget: no inodes");
80101ace:	83 ec 0c             	sub    $0xc,%esp
80101ad1:	68 ed 96 10 80       	push   $0x801096ed
80101ad6:	e8 2d eb ff ff       	call   80100608 <panic>

  ip = empty;
80101adb:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101ade:	89 45 f4             	mov    %eax,-0xc(%ebp)
  ip->dev = dev;
80101ae1:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101ae4:	8b 55 08             	mov    0x8(%ebp),%edx
80101ae7:	89 10                	mov    %edx,(%eax)
  ip->inum = inum;
80101ae9:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101aec:	8b 55 0c             	mov    0xc(%ebp),%edx
80101aef:	89 50 04             	mov    %edx,0x4(%eax)
  ip->ref = 1;
80101af2:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101af5:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%eax)
  ip->valid = 0;
80101afc:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101aff:	c7 40 4c 00 00 00 00 	movl   $0x0,0x4c(%eax)
  release(&icache.lock);
80101b06:	83 ec 0c             	sub    $0xc,%esp
80101b09:	68 80 3a 11 80       	push   $0x80113a80
80101b0e:	e8 a6 39 00 00       	call   801054b9 <release>
80101b13:	83 c4 10             	add    $0x10,%esp

  return ip;
80101b16:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
80101b19:	c9                   	leave  
80101b1a:	c3                   	ret    

80101b1b <idup>:

// Increment reference count for ip.
// Returns ip to enable ip = idup(ip1) idiom.
struct inode*
idup(struct inode *ip)
{
80101b1b:	f3 0f 1e fb          	endbr32 
80101b1f:	55                   	push   %ebp
80101b20:	89 e5                	mov    %esp,%ebp
80101b22:	83 ec 08             	sub    $0x8,%esp
  acquire(&icache.lock);
80101b25:	83 ec 0c             	sub    $0xc,%esp
80101b28:	68 80 3a 11 80       	push   $0x80113a80
80101b2d:	e8 15 39 00 00       	call   80105447 <acquire>
80101b32:	83 c4 10             	add    $0x10,%esp
  ip->ref++;
80101b35:	8b 45 08             	mov    0x8(%ebp),%eax
80101b38:	8b 40 08             	mov    0x8(%eax),%eax
80101b3b:	8d 50 01             	lea    0x1(%eax),%edx
80101b3e:	8b 45 08             	mov    0x8(%ebp),%eax
80101b41:	89 50 08             	mov    %edx,0x8(%eax)
  release(&icache.lock);
80101b44:	83 ec 0c             	sub    $0xc,%esp
80101b47:	68 80 3a 11 80       	push   $0x80113a80
80101b4c:	e8 68 39 00 00       	call   801054b9 <release>
80101b51:	83 c4 10             	add    $0x10,%esp
  return ip;
80101b54:	8b 45 08             	mov    0x8(%ebp),%eax
}
80101b57:	c9                   	leave  
80101b58:	c3                   	ret    

80101b59 <ilock>:

// Lock the given inode.
// Reads the inode from disk if necessary.
void
ilock(struct inode *ip)
{
80101b59:	f3 0f 1e fb          	endbr32 
80101b5d:	55                   	push   %ebp
80101b5e:	89 e5                	mov    %esp,%ebp
80101b60:	83 ec 18             	sub    $0x18,%esp
  struct buf *bp;
  struct dinode *dip;

  if(ip == 0 || ip->ref < 1)
80101b63:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80101b67:	74 0a                	je     80101b73 <ilock+0x1a>
80101b69:	8b 45 08             	mov    0x8(%ebp),%eax
80101b6c:	8b 40 08             	mov    0x8(%eax),%eax
80101b6f:	85 c0                	test   %eax,%eax
80101b71:	7f 0d                	jg     80101b80 <ilock+0x27>
    panic("ilock");
80101b73:	83 ec 0c             	sub    $0xc,%esp
80101b76:	68 fd 96 10 80       	push   $0x801096fd
80101b7b:	e8 88 ea ff ff       	call   80100608 <panic>

  acquiresleep(&ip->lock);
80101b80:	8b 45 08             	mov    0x8(%ebp),%eax
80101b83:	83 c0 0c             	add    $0xc,%eax
80101b86:	83 ec 0c             	sub    $0xc,%esp
80101b89:	50                   	push   %eax
80101b8a:	e8 3f 37 00 00       	call   801052ce <acquiresleep>
80101b8f:	83 c4 10             	add    $0x10,%esp

  if(ip->valid == 0){
80101b92:	8b 45 08             	mov    0x8(%ebp),%eax
80101b95:	8b 40 4c             	mov    0x4c(%eax),%eax
80101b98:	85 c0                	test   %eax,%eax
80101b9a:	0f 85 cd 00 00 00    	jne    80101c6d <ilock+0x114>
    bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101ba0:	8b 45 08             	mov    0x8(%ebp),%eax
80101ba3:	8b 40 04             	mov    0x4(%eax),%eax
80101ba6:	c1 e8 03             	shr    $0x3,%eax
80101ba9:	89 c2                	mov    %eax,%edx
80101bab:	a1 74 3a 11 80       	mov    0x80113a74,%eax
80101bb0:	01 c2                	add    %eax,%edx
80101bb2:	8b 45 08             	mov    0x8(%ebp),%eax
80101bb5:	8b 00                	mov    (%eax),%eax
80101bb7:	83 ec 08             	sub    $0x8,%esp
80101bba:	52                   	push   %edx
80101bbb:	50                   	push   %eax
80101bbc:	e8 16 e6 ff ff       	call   801001d7 <bread>
80101bc1:	83 c4 10             	add    $0x10,%esp
80101bc4:	89 45 f4             	mov    %eax,-0xc(%ebp)
    dip = (struct dinode*)bp->data + ip->inum%IPB;
80101bc7:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101bca:	8d 50 5c             	lea    0x5c(%eax),%edx
80101bcd:	8b 45 08             	mov    0x8(%ebp),%eax
80101bd0:	8b 40 04             	mov    0x4(%eax),%eax
80101bd3:	83 e0 07             	and    $0x7,%eax
80101bd6:	c1 e0 06             	shl    $0x6,%eax
80101bd9:	01 d0                	add    %edx,%eax
80101bdb:	89 45 f0             	mov    %eax,-0x10(%ebp)
    ip->type = dip->type;
80101bde:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101be1:	0f b7 10             	movzwl (%eax),%edx
80101be4:	8b 45 08             	mov    0x8(%ebp),%eax
80101be7:	66 89 50 50          	mov    %dx,0x50(%eax)
    ip->major = dip->major;
80101beb:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101bee:	0f b7 50 02          	movzwl 0x2(%eax),%edx
80101bf2:	8b 45 08             	mov    0x8(%ebp),%eax
80101bf5:	66 89 50 52          	mov    %dx,0x52(%eax)
    ip->minor = dip->minor;
80101bf9:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101bfc:	0f b7 50 04          	movzwl 0x4(%eax),%edx
80101c00:	8b 45 08             	mov    0x8(%ebp),%eax
80101c03:	66 89 50 54          	mov    %dx,0x54(%eax)
    ip->nlink = dip->nlink;
80101c07:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101c0a:	0f b7 50 06          	movzwl 0x6(%eax),%edx
80101c0e:	8b 45 08             	mov    0x8(%ebp),%eax
80101c11:	66 89 50 56          	mov    %dx,0x56(%eax)
    ip->size = dip->size;
80101c15:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101c18:	8b 50 08             	mov    0x8(%eax),%edx
80101c1b:	8b 45 08             	mov    0x8(%ebp),%eax
80101c1e:	89 50 58             	mov    %edx,0x58(%eax)
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
80101c21:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101c24:	8d 50 0c             	lea    0xc(%eax),%edx
80101c27:	8b 45 08             	mov    0x8(%ebp),%eax
80101c2a:	83 c0 5c             	add    $0x5c,%eax
80101c2d:	83 ec 04             	sub    $0x4,%esp
80101c30:	6a 34                	push   $0x34
80101c32:	52                   	push   %edx
80101c33:	50                   	push   %eax
80101c34:	e8 74 3b 00 00       	call   801057ad <memmove>
80101c39:	83 c4 10             	add    $0x10,%esp
    brelse(bp);
80101c3c:	83 ec 0c             	sub    $0xc,%esp
80101c3f:	ff 75 f4             	pushl  -0xc(%ebp)
80101c42:	e8 1a e6 ff ff       	call   80100261 <brelse>
80101c47:	83 c4 10             	add    $0x10,%esp
    ip->valid = 1;
80101c4a:	8b 45 08             	mov    0x8(%ebp),%eax
80101c4d:	c7 40 4c 01 00 00 00 	movl   $0x1,0x4c(%eax)
    if(ip->type == 0)
80101c54:	8b 45 08             	mov    0x8(%ebp),%eax
80101c57:	0f b7 40 50          	movzwl 0x50(%eax),%eax
80101c5b:	66 85 c0             	test   %ax,%ax
80101c5e:	75 0d                	jne    80101c6d <ilock+0x114>
      panic("ilock: no type");
80101c60:	83 ec 0c             	sub    $0xc,%esp
80101c63:	68 03 97 10 80       	push   $0x80109703
80101c68:	e8 9b e9 ff ff       	call   80100608 <panic>
  }
}
80101c6d:	90                   	nop
80101c6e:	c9                   	leave  
80101c6f:	c3                   	ret    

80101c70 <iunlock>:

// Unlock the given inode.
void
iunlock(struct inode *ip)
{
80101c70:	f3 0f 1e fb          	endbr32 
80101c74:	55                   	push   %ebp
80101c75:	89 e5                	mov    %esp,%ebp
80101c77:	83 ec 08             	sub    $0x8,%esp
  if(ip == 0 || !holdingsleep(&ip->lock) || ip->ref < 1)
80101c7a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80101c7e:	74 20                	je     80101ca0 <iunlock+0x30>
80101c80:	8b 45 08             	mov    0x8(%ebp),%eax
80101c83:	83 c0 0c             	add    $0xc,%eax
80101c86:	83 ec 0c             	sub    $0xc,%esp
80101c89:	50                   	push   %eax
80101c8a:	e8 f9 36 00 00       	call   80105388 <holdingsleep>
80101c8f:	83 c4 10             	add    $0x10,%esp
80101c92:	85 c0                	test   %eax,%eax
80101c94:	74 0a                	je     80101ca0 <iunlock+0x30>
80101c96:	8b 45 08             	mov    0x8(%ebp),%eax
80101c99:	8b 40 08             	mov    0x8(%eax),%eax
80101c9c:	85 c0                	test   %eax,%eax
80101c9e:	7f 0d                	jg     80101cad <iunlock+0x3d>
    panic("iunlock");
80101ca0:	83 ec 0c             	sub    $0xc,%esp
80101ca3:	68 12 97 10 80       	push   $0x80109712
80101ca8:	e8 5b e9 ff ff       	call   80100608 <panic>

  releasesleep(&ip->lock);
80101cad:	8b 45 08             	mov    0x8(%ebp),%eax
80101cb0:	83 c0 0c             	add    $0xc,%eax
80101cb3:	83 ec 0c             	sub    $0xc,%esp
80101cb6:	50                   	push   %eax
80101cb7:	e8 7a 36 00 00       	call   80105336 <releasesleep>
80101cbc:	83 c4 10             	add    $0x10,%esp
}
80101cbf:	90                   	nop
80101cc0:	c9                   	leave  
80101cc1:	c3                   	ret    

80101cc2 <iput>:
// to it, free the inode (and its content) on disk.
// All calls to iput() must be inside a transaction in
// case it has to free the inode.
void
iput(struct inode *ip)
{
80101cc2:	f3 0f 1e fb          	endbr32 
80101cc6:	55                   	push   %ebp
80101cc7:	89 e5                	mov    %esp,%ebp
80101cc9:	83 ec 18             	sub    $0x18,%esp
  acquiresleep(&ip->lock);
80101ccc:	8b 45 08             	mov    0x8(%ebp),%eax
80101ccf:	83 c0 0c             	add    $0xc,%eax
80101cd2:	83 ec 0c             	sub    $0xc,%esp
80101cd5:	50                   	push   %eax
80101cd6:	e8 f3 35 00 00       	call   801052ce <acquiresleep>
80101cdb:	83 c4 10             	add    $0x10,%esp
  if(ip->valid && ip->nlink == 0){
80101cde:	8b 45 08             	mov    0x8(%ebp),%eax
80101ce1:	8b 40 4c             	mov    0x4c(%eax),%eax
80101ce4:	85 c0                	test   %eax,%eax
80101ce6:	74 6a                	je     80101d52 <iput+0x90>
80101ce8:	8b 45 08             	mov    0x8(%ebp),%eax
80101ceb:	0f b7 40 56          	movzwl 0x56(%eax),%eax
80101cef:	66 85 c0             	test   %ax,%ax
80101cf2:	75 5e                	jne    80101d52 <iput+0x90>
    acquire(&icache.lock);
80101cf4:	83 ec 0c             	sub    $0xc,%esp
80101cf7:	68 80 3a 11 80       	push   $0x80113a80
80101cfc:	e8 46 37 00 00       	call   80105447 <acquire>
80101d01:	83 c4 10             	add    $0x10,%esp
    int r = ip->ref;
80101d04:	8b 45 08             	mov    0x8(%ebp),%eax
80101d07:	8b 40 08             	mov    0x8(%eax),%eax
80101d0a:	89 45 f4             	mov    %eax,-0xc(%ebp)
    release(&icache.lock);
80101d0d:	83 ec 0c             	sub    $0xc,%esp
80101d10:	68 80 3a 11 80       	push   $0x80113a80
80101d15:	e8 9f 37 00 00       	call   801054b9 <release>
80101d1a:	83 c4 10             	add    $0x10,%esp
    if(r == 1){
80101d1d:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
80101d21:	75 2f                	jne    80101d52 <iput+0x90>
      // inode has no links and no other references: truncate and free.
      itrunc(ip);
80101d23:	83 ec 0c             	sub    $0xc,%esp
80101d26:	ff 75 08             	pushl  0x8(%ebp)
80101d29:	e8 b5 01 00 00       	call   80101ee3 <itrunc>
80101d2e:	83 c4 10             	add    $0x10,%esp
      ip->type = 0;
80101d31:	8b 45 08             	mov    0x8(%ebp),%eax
80101d34:	66 c7 40 50 00 00    	movw   $0x0,0x50(%eax)
      iupdate(ip);
80101d3a:	83 ec 0c             	sub    $0xc,%esp
80101d3d:	ff 75 08             	pushl  0x8(%ebp)
80101d40:	e8 2b fc ff ff       	call   80101970 <iupdate>
80101d45:	83 c4 10             	add    $0x10,%esp
      ip->valid = 0;
80101d48:	8b 45 08             	mov    0x8(%ebp),%eax
80101d4b:	c7 40 4c 00 00 00 00 	movl   $0x0,0x4c(%eax)
    }
  }
  releasesleep(&ip->lock);
80101d52:	8b 45 08             	mov    0x8(%ebp),%eax
80101d55:	83 c0 0c             	add    $0xc,%eax
80101d58:	83 ec 0c             	sub    $0xc,%esp
80101d5b:	50                   	push   %eax
80101d5c:	e8 d5 35 00 00       	call   80105336 <releasesleep>
80101d61:	83 c4 10             	add    $0x10,%esp

  acquire(&icache.lock);
80101d64:	83 ec 0c             	sub    $0xc,%esp
80101d67:	68 80 3a 11 80       	push   $0x80113a80
80101d6c:	e8 d6 36 00 00       	call   80105447 <acquire>
80101d71:	83 c4 10             	add    $0x10,%esp
  ip->ref--;
80101d74:	8b 45 08             	mov    0x8(%ebp),%eax
80101d77:	8b 40 08             	mov    0x8(%eax),%eax
80101d7a:	8d 50 ff             	lea    -0x1(%eax),%edx
80101d7d:	8b 45 08             	mov    0x8(%ebp),%eax
80101d80:	89 50 08             	mov    %edx,0x8(%eax)
  release(&icache.lock);
80101d83:	83 ec 0c             	sub    $0xc,%esp
80101d86:	68 80 3a 11 80       	push   $0x80113a80
80101d8b:	e8 29 37 00 00       	call   801054b9 <release>
80101d90:	83 c4 10             	add    $0x10,%esp
}
80101d93:	90                   	nop
80101d94:	c9                   	leave  
80101d95:	c3                   	ret    

80101d96 <iunlockput>:

// Common idiom: unlock, then put.
void
iunlockput(struct inode *ip)
{
80101d96:	f3 0f 1e fb          	endbr32 
80101d9a:	55                   	push   %ebp
80101d9b:	89 e5                	mov    %esp,%ebp
80101d9d:	83 ec 08             	sub    $0x8,%esp
  iunlock(ip);
80101da0:	83 ec 0c             	sub    $0xc,%esp
80101da3:	ff 75 08             	pushl  0x8(%ebp)
80101da6:	e8 c5 fe ff ff       	call   80101c70 <iunlock>
80101dab:	83 c4 10             	add    $0x10,%esp
  iput(ip);
80101dae:	83 ec 0c             	sub    $0xc,%esp
80101db1:	ff 75 08             	pushl  0x8(%ebp)
80101db4:	e8 09 ff ff ff       	call   80101cc2 <iput>
80101db9:	83 c4 10             	add    $0x10,%esp
}
80101dbc:	90                   	nop
80101dbd:	c9                   	leave  
80101dbe:	c3                   	ret    

80101dbf <bmap>:

// Return the disk block address of the nth block in inode ip.
// If there is no such block, bmap allocates one.
static uint
bmap(struct inode *ip, uint bn)
{
80101dbf:	f3 0f 1e fb          	endbr32 
80101dc3:	55                   	push   %ebp
80101dc4:	89 e5                	mov    %esp,%ebp
80101dc6:	83 ec 18             	sub    $0x18,%esp
  uint addr, *a;
  struct buf *bp;

  if(bn < NDIRECT){
80101dc9:	83 7d 0c 0b          	cmpl   $0xb,0xc(%ebp)
80101dcd:	77 42                	ja     80101e11 <bmap+0x52>
    if((addr = ip->addrs[bn]) == 0)
80101dcf:	8b 45 08             	mov    0x8(%ebp),%eax
80101dd2:	8b 55 0c             	mov    0xc(%ebp),%edx
80101dd5:	83 c2 14             	add    $0x14,%edx
80101dd8:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80101ddc:	89 45 f4             	mov    %eax,-0xc(%ebp)
80101ddf:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80101de3:	75 24                	jne    80101e09 <bmap+0x4a>
      ip->addrs[bn] = addr = balloc(ip->dev);
80101de5:	8b 45 08             	mov    0x8(%ebp),%eax
80101de8:	8b 00                	mov    (%eax),%eax
80101dea:	83 ec 0c             	sub    $0xc,%esp
80101ded:	50                   	push   %eax
80101dee:	e8 c7 f7 ff ff       	call   801015ba <balloc>
80101df3:	83 c4 10             	add    $0x10,%esp
80101df6:	89 45 f4             	mov    %eax,-0xc(%ebp)
80101df9:	8b 45 08             	mov    0x8(%ebp),%eax
80101dfc:	8b 55 0c             	mov    0xc(%ebp),%edx
80101dff:	8d 4a 14             	lea    0x14(%edx),%ecx
80101e02:	8b 55 f4             	mov    -0xc(%ebp),%edx
80101e05:	89 54 88 0c          	mov    %edx,0xc(%eax,%ecx,4)
    return addr;
80101e09:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101e0c:	e9 d0 00 00 00       	jmp    80101ee1 <bmap+0x122>
  }
  bn -= NDIRECT;
80101e11:	83 6d 0c 0c          	subl   $0xc,0xc(%ebp)

  if(bn < NINDIRECT){
80101e15:	83 7d 0c 7f          	cmpl   $0x7f,0xc(%ebp)
80101e19:	0f 87 b5 00 00 00    	ja     80101ed4 <bmap+0x115>
    // Load indirect block, allocating if necessary.
    if((addr = ip->addrs[NDIRECT]) == 0)
80101e1f:	8b 45 08             	mov    0x8(%ebp),%eax
80101e22:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
80101e28:	89 45 f4             	mov    %eax,-0xc(%ebp)
80101e2b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80101e2f:	75 20                	jne    80101e51 <bmap+0x92>
      ip->addrs[NDIRECT] = addr = balloc(ip->dev);
80101e31:	8b 45 08             	mov    0x8(%ebp),%eax
80101e34:	8b 00                	mov    (%eax),%eax
80101e36:	83 ec 0c             	sub    $0xc,%esp
80101e39:	50                   	push   %eax
80101e3a:	e8 7b f7 ff ff       	call   801015ba <balloc>
80101e3f:	83 c4 10             	add    $0x10,%esp
80101e42:	89 45 f4             	mov    %eax,-0xc(%ebp)
80101e45:	8b 45 08             	mov    0x8(%ebp),%eax
80101e48:	8b 55 f4             	mov    -0xc(%ebp),%edx
80101e4b:	89 90 8c 00 00 00    	mov    %edx,0x8c(%eax)
    bp = bread(ip->dev, addr);
80101e51:	8b 45 08             	mov    0x8(%ebp),%eax
80101e54:	8b 00                	mov    (%eax),%eax
80101e56:	83 ec 08             	sub    $0x8,%esp
80101e59:	ff 75 f4             	pushl  -0xc(%ebp)
80101e5c:	50                   	push   %eax
80101e5d:	e8 75 e3 ff ff       	call   801001d7 <bread>
80101e62:	83 c4 10             	add    $0x10,%esp
80101e65:	89 45 f0             	mov    %eax,-0x10(%ebp)
    a = (uint*)bp->data;
80101e68:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101e6b:	83 c0 5c             	add    $0x5c,%eax
80101e6e:	89 45 ec             	mov    %eax,-0x14(%ebp)
    if((addr = a[bn]) == 0){
80101e71:	8b 45 0c             	mov    0xc(%ebp),%eax
80101e74:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80101e7b:	8b 45 ec             	mov    -0x14(%ebp),%eax
80101e7e:	01 d0                	add    %edx,%eax
80101e80:	8b 00                	mov    (%eax),%eax
80101e82:	89 45 f4             	mov    %eax,-0xc(%ebp)
80101e85:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80101e89:	75 36                	jne    80101ec1 <bmap+0x102>
      a[bn] = addr = balloc(ip->dev);
80101e8b:	8b 45 08             	mov    0x8(%ebp),%eax
80101e8e:	8b 00                	mov    (%eax),%eax
80101e90:	83 ec 0c             	sub    $0xc,%esp
80101e93:	50                   	push   %eax
80101e94:	e8 21 f7 ff ff       	call   801015ba <balloc>
80101e99:	83 c4 10             	add    $0x10,%esp
80101e9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
80101e9f:	8b 45 0c             	mov    0xc(%ebp),%eax
80101ea2:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80101ea9:	8b 45 ec             	mov    -0x14(%ebp),%eax
80101eac:	01 c2                	add    %eax,%edx
80101eae:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101eb1:	89 02                	mov    %eax,(%edx)
      log_write(bp);
80101eb3:	83 ec 0c             	sub    $0xc,%esp
80101eb6:	ff 75 f0             	pushl  -0x10(%ebp)
80101eb9:	e8 d9 1a 00 00       	call   80103997 <log_write>
80101ebe:	83 c4 10             	add    $0x10,%esp
    }
    brelse(bp);
80101ec1:	83 ec 0c             	sub    $0xc,%esp
80101ec4:	ff 75 f0             	pushl  -0x10(%ebp)
80101ec7:	e8 95 e3 ff ff       	call   80100261 <brelse>
80101ecc:	83 c4 10             	add    $0x10,%esp
    return addr;
80101ecf:	8b 45 f4             	mov    -0xc(%ebp),%eax
80101ed2:	eb 0d                	jmp    80101ee1 <bmap+0x122>
  }

  panic("bmap: out of range");
80101ed4:	83 ec 0c             	sub    $0xc,%esp
80101ed7:	68 1a 97 10 80       	push   $0x8010971a
80101edc:	e8 27 e7 ff ff       	call   80100608 <panic>
}
80101ee1:	c9                   	leave  
80101ee2:	c3                   	ret    

80101ee3 <itrunc>:
// to it (no directory entries referring to it)
// and has no in-memory reference to it (is
// not an open file or current directory).
static void
itrunc(struct inode *ip)
{
80101ee3:	f3 0f 1e fb          	endbr32 
80101ee7:	55                   	push   %ebp
80101ee8:	89 e5                	mov    %esp,%ebp
80101eea:	83 ec 18             	sub    $0x18,%esp
  int i, j;
  struct buf *bp;
  uint *a;

  for(i = 0; i < NDIRECT; i++){
80101eed:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80101ef4:	eb 45                	jmp    80101f3b <itrunc+0x58>
    if(ip->addrs[i]){
80101ef6:	8b 45 08             	mov    0x8(%ebp),%eax
80101ef9:	8b 55 f4             	mov    -0xc(%ebp),%edx
80101efc:	83 c2 14             	add    $0x14,%edx
80101eff:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80101f03:	85 c0                	test   %eax,%eax
80101f05:	74 30                	je     80101f37 <itrunc+0x54>
      bfree(ip->dev, ip->addrs[i]);
80101f07:	8b 45 08             	mov    0x8(%ebp),%eax
80101f0a:	8b 55 f4             	mov    -0xc(%ebp),%edx
80101f0d:	83 c2 14             	add    $0x14,%edx
80101f10:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80101f14:	8b 55 08             	mov    0x8(%ebp),%edx
80101f17:	8b 12                	mov    (%edx),%edx
80101f19:	83 ec 08             	sub    $0x8,%esp
80101f1c:	50                   	push   %eax
80101f1d:	52                   	push   %edx
80101f1e:	e8 e7 f7 ff ff       	call   8010170a <bfree>
80101f23:	83 c4 10             	add    $0x10,%esp
      ip->addrs[i] = 0;
80101f26:	8b 45 08             	mov    0x8(%ebp),%eax
80101f29:	8b 55 f4             	mov    -0xc(%ebp),%edx
80101f2c:	83 c2 14             	add    $0x14,%edx
80101f2f:	c7 44 90 0c 00 00 00 	movl   $0x0,0xc(%eax,%edx,4)
80101f36:	00 
  for(i = 0; i < NDIRECT; i++){
80101f37:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80101f3b:	83 7d f4 0b          	cmpl   $0xb,-0xc(%ebp)
80101f3f:	7e b5                	jle    80101ef6 <itrunc+0x13>
    }
  }

  if(ip->addrs[NDIRECT]){
80101f41:	8b 45 08             	mov    0x8(%ebp),%eax
80101f44:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
80101f4a:	85 c0                	test   %eax,%eax
80101f4c:	0f 84 aa 00 00 00    	je     80101ffc <itrunc+0x119>
    bp = bread(ip->dev, ip->addrs[NDIRECT]);
80101f52:	8b 45 08             	mov    0x8(%ebp),%eax
80101f55:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
80101f5b:	8b 45 08             	mov    0x8(%ebp),%eax
80101f5e:	8b 00                	mov    (%eax),%eax
80101f60:	83 ec 08             	sub    $0x8,%esp
80101f63:	52                   	push   %edx
80101f64:	50                   	push   %eax
80101f65:	e8 6d e2 ff ff       	call   801001d7 <bread>
80101f6a:	83 c4 10             	add    $0x10,%esp
80101f6d:	89 45 ec             	mov    %eax,-0x14(%ebp)
    a = (uint*)bp->data;
80101f70:	8b 45 ec             	mov    -0x14(%ebp),%eax
80101f73:	83 c0 5c             	add    $0x5c,%eax
80101f76:	89 45 e8             	mov    %eax,-0x18(%ebp)
    for(j = 0; j < NINDIRECT; j++){
80101f79:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80101f80:	eb 3c                	jmp    80101fbe <itrunc+0xdb>
      if(a[j])
80101f82:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101f85:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80101f8c:	8b 45 e8             	mov    -0x18(%ebp),%eax
80101f8f:	01 d0                	add    %edx,%eax
80101f91:	8b 00                	mov    (%eax),%eax
80101f93:	85 c0                	test   %eax,%eax
80101f95:	74 23                	je     80101fba <itrunc+0xd7>
        bfree(ip->dev, a[j]);
80101f97:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101f9a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80101fa1:	8b 45 e8             	mov    -0x18(%ebp),%eax
80101fa4:	01 d0                	add    %edx,%eax
80101fa6:	8b 00                	mov    (%eax),%eax
80101fa8:	8b 55 08             	mov    0x8(%ebp),%edx
80101fab:	8b 12                	mov    (%edx),%edx
80101fad:	83 ec 08             	sub    $0x8,%esp
80101fb0:	50                   	push   %eax
80101fb1:	52                   	push   %edx
80101fb2:	e8 53 f7 ff ff       	call   8010170a <bfree>
80101fb7:	83 c4 10             	add    $0x10,%esp
    for(j = 0; j < NINDIRECT; j++){
80101fba:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
80101fbe:	8b 45 f0             	mov    -0x10(%ebp),%eax
80101fc1:	83 f8 7f             	cmp    $0x7f,%eax
80101fc4:	76 bc                	jbe    80101f82 <itrunc+0x9f>
    }
    brelse(bp);
80101fc6:	83 ec 0c             	sub    $0xc,%esp
80101fc9:	ff 75 ec             	pushl  -0x14(%ebp)
80101fcc:	e8 90 e2 ff ff       	call   80100261 <brelse>
80101fd1:	83 c4 10             	add    $0x10,%esp
    bfree(ip->dev, ip->addrs[NDIRECT]);
80101fd4:	8b 45 08             	mov    0x8(%ebp),%eax
80101fd7:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
80101fdd:	8b 55 08             	mov    0x8(%ebp),%edx
80101fe0:	8b 12                	mov    (%edx),%edx
80101fe2:	83 ec 08             	sub    $0x8,%esp
80101fe5:	50                   	push   %eax
80101fe6:	52                   	push   %edx
80101fe7:	e8 1e f7 ff ff       	call   8010170a <bfree>
80101fec:	83 c4 10             	add    $0x10,%esp
    ip->addrs[NDIRECT] = 0;
80101fef:	8b 45 08             	mov    0x8(%ebp),%eax
80101ff2:	c7 80 8c 00 00 00 00 	movl   $0x0,0x8c(%eax)
80101ff9:	00 00 00 
  }

  ip->size = 0;
80101ffc:	8b 45 08             	mov    0x8(%ebp),%eax
80101fff:	c7 40 58 00 00 00 00 	movl   $0x0,0x58(%eax)
  iupdate(ip);
80102006:	83 ec 0c             	sub    $0xc,%esp
80102009:	ff 75 08             	pushl  0x8(%ebp)
8010200c:	e8 5f f9 ff ff       	call   80101970 <iupdate>
80102011:	83 c4 10             	add    $0x10,%esp
}
80102014:	90                   	nop
80102015:	c9                   	leave  
80102016:	c3                   	ret    

80102017 <stati>:

// Copy stat information from inode.
// Caller must hold ip->lock.
void
stati(struct inode *ip, struct stat *st)
{
80102017:	f3 0f 1e fb          	endbr32 
8010201b:	55                   	push   %ebp
8010201c:	89 e5                	mov    %esp,%ebp
  st->dev = ip->dev;
8010201e:	8b 45 08             	mov    0x8(%ebp),%eax
80102021:	8b 00                	mov    (%eax),%eax
80102023:	89 c2                	mov    %eax,%edx
80102025:	8b 45 0c             	mov    0xc(%ebp),%eax
80102028:	89 50 04             	mov    %edx,0x4(%eax)
  st->ino = ip->inum;
8010202b:	8b 45 08             	mov    0x8(%ebp),%eax
8010202e:	8b 50 04             	mov    0x4(%eax),%edx
80102031:	8b 45 0c             	mov    0xc(%ebp),%eax
80102034:	89 50 08             	mov    %edx,0x8(%eax)
  st->type = ip->type;
80102037:	8b 45 08             	mov    0x8(%ebp),%eax
8010203a:	0f b7 50 50          	movzwl 0x50(%eax),%edx
8010203e:	8b 45 0c             	mov    0xc(%ebp),%eax
80102041:	66 89 10             	mov    %dx,(%eax)
  st->nlink = ip->nlink;
80102044:	8b 45 08             	mov    0x8(%ebp),%eax
80102047:	0f b7 50 56          	movzwl 0x56(%eax),%edx
8010204b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010204e:	66 89 50 0c          	mov    %dx,0xc(%eax)
  st->size = ip->size;
80102052:	8b 45 08             	mov    0x8(%ebp),%eax
80102055:	8b 50 58             	mov    0x58(%eax),%edx
80102058:	8b 45 0c             	mov    0xc(%ebp),%eax
8010205b:	89 50 10             	mov    %edx,0x10(%eax)
}
8010205e:	90                   	nop
8010205f:	5d                   	pop    %ebp
80102060:	c3                   	ret    

80102061 <readi>:
//PAGEBREAK!
// Read data from inode.
// Caller must hold ip->lock.
int
readi(struct inode *ip, char *dst, uint off, uint n)
{
80102061:	f3 0f 1e fb          	endbr32 
80102065:	55                   	push   %ebp
80102066:	89 e5                	mov    %esp,%ebp
80102068:	83 ec 18             	sub    $0x18,%esp
  uint tot, m;
  struct buf *bp;

  if(ip->type == T_DEV){
8010206b:	8b 45 08             	mov    0x8(%ebp),%eax
8010206e:	0f b7 40 50          	movzwl 0x50(%eax),%eax
80102072:	66 83 f8 03          	cmp    $0x3,%ax
80102076:	75 5c                	jne    801020d4 <readi+0x73>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].read)
80102078:	8b 45 08             	mov    0x8(%ebp),%eax
8010207b:	0f b7 40 52          	movzwl 0x52(%eax),%eax
8010207f:	66 85 c0             	test   %ax,%ax
80102082:	78 20                	js     801020a4 <readi+0x43>
80102084:	8b 45 08             	mov    0x8(%ebp),%eax
80102087:	0f b7 40 52          	movzwl 0x52(%eax),%eax
8010208b:	66 83 f8 09          	cmp    $0x9,%ax
8010208f:	7f 13                	jg     801020a4 <readi+0x43>
80102091:	8b 45 08             	mov    0x8(%ebp),%eax
80102094:	0f b7 40 52          	movzwl 0x52(%eax),%eax
80102098:	98                   	cwtl   
80102099:	8b 04 c5 00 3a 11 80 	mov    -0x7feec600(,%eax,8),%eax
801020a0:	85 c0                	test   %eax,%eax
801020a2:	75 0a                	jne    801020ae <readi+0x4d>
      return -1;
801020a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801020a9:	e9 0a 01 00 00       	jmp    801021b8 <readi+0x157>
    return devsw[ip->major].read(ip, dst, n);
801020ae:	8b 45 08             	mov    0x8(%ebp),%eax
801020b1:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801020b5:	98                   	cwtl   
801020b6:	8b 04 c5 00 3a 11 80 	mov    -0x7feec600(,%eax,8),%eax
801020bd:	8b 55 14             	mov    0x14(%ebp),%edx
801020c0:	83 ec 04             	sub    $0x4,%esp
801020c3:	52                   	push   %edx
801020c4:	ff 75 0c             	pushl  0xc(%ebp)
801020c7:	ff 75 08             	pushl  0x8(%ebp)
801020ca:	ff d0                	call   *%eax
801020cc:	83 c4 10             	add    $0x10,%esp
801020cf:	e9 e4 00 00 00       	jmp    801021b8 <readi+0x157>
  }

  if(off > ip->size || off + n < off)
801020d4:	8b 45 08             	mov    0x8(%ebp),%eax
801020d7:	8b 40 58             	mov    0x58(%eax),%eax
801020da:	39 45 10             	cmp    %eax,0x10(%ebp)
801020dd:	77 0d                	ja     801020ec <readi+0x8b>
801020df:	8b 55 10             	mov    0x10(%ebp),%edx
801020e2:	8b 45 14             	mov    0x14(%ebp),%eax
801020e5:	01 d0                	add    %edx,%eax
801020e7:	39 45 10             	cmp    %eax,0x10(%ebp)
801020ea:	76 0a                	jbe    801020f6 <readi+0x95>
    return -1;
801020ec:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801020f1:	e9 c2 00 00 00       	jmp    801021b8 <readi+0x157>
  if(off + n > ip->size)
801020f6:	8b 55 10             	mov    0x10(%ebp),%edx
801020f9:	8b 45 14             	mov    0x14(%ebp),%eax
801020fc:	01 c2                	add    %eax,%edx
801020fe:	8b 45 08             	mov    0x8(%ebp),%eax
80102101:	8b 40 58             	mov    0x58(%eax),%eax
80102104:	39 c2                	cmp    %eax,%edx
80102106:	76 0c                	jbe    80102114 <readi+0xb3>
    n = ip->size - off;
80102108:	8b 45 08             	mov    0x8(%ebp),%eax
8010210b:	8b 40 58             	mov    0x58(%eax),%eax
8010210e:	2b 45 10             	sub    0x10(%ebp),%eax
80102111:	89 45 14             	mov    %eax,0x14(%ebp)

  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80102114:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010211b:	e9 89 00 00 00       	jmp    801021a9 <readi+0x148>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
80102120:	8b 45 10             	mov    0x10(%ebp),%eax
80102123:	c1 e8 09             	shr    $0x9,%eax
80102126:	83 ec 08             	sub    $0x8,%esp
80102129:	50                   	push   %eax
8010212a:	ff 75 08             	pushl  0x8(%ebp)
8010212d:	e8 8d fc ff ff       	call   80101dbf <bmap>
80102132:	83 c4 10             	add    $0x10,%esp
80102135:	8b 55 08             	mov    0x8(%ebp),%edx
80102138:	8b 12                	mov    (%edx),%edx
8010213a:	83 ec 08             	sub    $0x8,%esp
8010213d:	50                   	push   %eax
8010213e:	52                   	push   %edx
8010213f:	e8 93 e0 ff ff       	call   801001d7 <bread>
80102144:	83 c4 10             	add    $0x10,%esp
80102147:	89 45 f0             	mov    %eax,-0x10(%ebp)
    m = min(n - tot, BSIZE - off%BSIZE);
8010214a:	8b 45 10             	mov    0x10(%ebp),%eax
8010214d:	25 ff 01 00 00       	and    $0x1ff,%eax
80102152:	ba 00 02 00 00       	mov    $0x200,%edx
80102157:	29 c2                	sub    %eax,%edx
80102159:	8b 45 14             	mov    0x14(%ebp),%eax
8010215c:	2b 45 f4             	sub    -0xc(%ebp),%eax
8010215f:	39 c2                	cmp    %eax,%edx
80102161:	0f 46 c2             	cmovbe %edx,%eax
80102164:	89 45 ec             	mov    %eax,-0x14(%ebp)
    memmove(dst, bp->data + off%BSIZE, m);
80102167:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010216a:	8d 50 5c             	lea    0x5c(%eax),%edx
8010216d:	8b 45 10             	mov    0x10(%ebp),%eax
80102170:	25 ff 01 00 00       	and    $0x1ff,%eax
80102175:	01 d0                	add    %edx,%eax
80102177:	83 ec 04             	sub    $0x4,%esp
8010217a:	ff 75 ec             	pushl  -0x14(%ebp)
8010217d:	50                   	push   %eax
8010217e:	ff 75 0c             	pushl  0xc(%ebp)
80102181:	e8 27 36 00 00       	call   801057ad <memmove>
80102186:	83 c4 10             	add    $0x10,%esp
    brelse(bp);
80102189:	83 ec 0c             	sub    $0xc,%esp
8010218c:	ff 75 f0             	pushl  -0x10(%ebp)
8010218f:	e8 cd e0 ff ff       	call   80100261 <brelse>
80102194:	83 c4 10             	add    $0x10,%esp
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80102197:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010219a:	01 45 f4             	add    %eax,-0xc(%ebp)
8010219d:	8b 45 ec             	mov    -0x14(%ebp),%eax
801021a0:	01 45 10             	add    %eax,0x10(%ebp)
801021a3:	8b 45 ec             	mov    -0x14(%ebp),%eax
801021a6:	01 45 0c             	add    %eax,0xc(%ebp)
801021a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801021ac:	3b 45 14             	cmp    0x14(%ebp),%eax
801021af:	0f 82 6b ff ff ff    	jb     80102120 <readi+0xbf>
  }
  return n;
801021b5:	8b 45 14             	mov    0x14(%ebp),%eax
}
801021b8:	c9                   	leave  
801021b9:	c3                   	ret    

801021ba <writei>:
// PAGEBREAK!
// Write data to inode.
// Caller must hold ip->lock.
int
writei(struct inode *ip, char *src, uint off, uint n)
{
801021ba:	f3 0f 1e fb          	endbr32 
801021be:	55                   	push   %ebp
801021bf:	89 e5                	mov    %esp,%ebp
801021c1:	83 ec 18             	sub    $0x18,%esp
  uint tot, m;
  struct buf *bp;

  if(ip->type == T_DEV){
801021c4:	8b 45 08             	mov    0x8(%ebp),%eax
801021c7:	0f b7 40 50          	movzwl 0x50(%eax),%eax
801021cb:	66 83 f8 03          	cmp    $0x3,%ax
801021cf:	75 5c                	jne    8010222d <writei+0x73>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].write)
801021d1:	8b 45 08             	mov    0x8(%ebp),%eax
801021d4:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801021d8:	66 85 c0             	test   %ax,%ax
801021db:	78 20                	js     801021fd <writei+0x43>
801021dd:	8b 45 08             	mov    0x8(%ebp),%eax
801021e0:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801021e4:	66 83 f8 09          	cmp    $0x9,%ax
801021e8:	7f 13                	jg     801021fd <writei+0x43>
801021ea:	8b 45 08             	mov    0x8(%ebp),%eax
801021ed:	0f b7 40 52          	movzwl 0x52(%eax),%eax
801021f1:	98                   	cwtl   
801021f2:	8b 04 c5 04 3a 11 80 	mov    -0x7feec5fc(,%eax,8),%eax
801021f9:	85 c0                	test   %eax,%eax
801021fb:	75 0a                	jne    80102207 <writei+0x4d>
      return -1;
801021fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102202:	e9 3b 01 00 00       	jmp    80102342 <writei+0x188>
    return devsw[ip->major].write(ip, src, n);
80102207:	8b 45 08             	mov    0x8(%ebp),%eax
8010220a:	0f b7 40 52          	movzwl 0x52(%eax),%eax
8010220e:	98                   	cwtl   
8010220f:	8b 04 c5 04 3a 11 80 	mov    -0x7feec5fc(,%eax,8),%eax
80102216:	8b 55 14             	mov    0x14(%ebp),%edx
80102219:	83 ec 04             	sub    $0x4,%esp
8010221c:	52                   	push   %edx
8010221d:	ff 75 0c             	pushl  0xc(%ebp)
80102220:	ff 75 08             	pushl  0x8(%ebp)
80102223:	ff d0                	call   *%eax
80102225:	83 c4 10             	add    $0x10,%esp
80102228:	e9 15 01 00 00       	jmp    80102342 <writei+0x188>
  }

  if(off > ip->size || off + n < off)
8010222d:	8b 45 08             	mov    0x8(%ebp),%eax
80102230:	8b 40 58             	mov    0x58(%eax),%eax
80102233:	39 45 10             	cmp    %eax,0x10(%ebp)
80102236:	77 0d                	ja     80102245 <writei+0x8b>
80102238:	8b 55 10             	mov    0x10(%ebp),%edx
8010223b:	8b 45 14             	mov    0x14(%ebp),%eax
8010223e:	01 d0                	add    %edx,%eax
80102240:	39 45 10             	cmp    %eax,0x10(%ebp)
80102243:	76 0a                	jbe    8010224f <writei+0x95>
    return -1;
80102245:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010224a:	e9 f3 00 00 00       	jmp    80102342 <writei+0x188>
  if(off + n > MAXFILE*BSIZE)
8010224f:	8b 55 10             	mov    0x10(%ebp),%edx
80102252:	8b 45 14             	mov    0x14(%ebp),%eax
80102255:	01 d0                	add    %edx,%eax
80102257:	3d 00 18 01 00       	cmp    $0x11800,%eax
8010225c:	76 0a                	jbe    80102268 <writei+0xae>
    return -1;
8010225e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102263:	e9 da 00 00 00       	jmp    80102342 <writei+0x188>

  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80102268:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010226f:	e9 97 00 00 00       	jmp    8010230b <writei+0x151>
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
80102274:	8b 45 10             	mov    0x10(%ebp),%eax
80102277:	c1 e8 09             	shr    $0x9,%eax
8010227a:	83 ec 08             	sub    $0x8,%esp
8010227d:	50                   	push   %eax
8010227e:	ff 75 08             	pushl  0x8(%ebp)
80102281:	e8 39 fb ff ff       	call   80101dbf <bmap>
80102286:	83 c4 10             	add    $0x10,%esp
80102289:	8b 55 08             	mov    0x8(%ebp),%edx
8010228c:	8b 12                	mov    (%edx),%edx
8010228e:	83 ec 08             	sub    $0x8,%esp
80102291:	50                   	push   %eax
80102292:	52                   	push   %edx
80102293:	e8 3f df ff ff       	call   801001d7 <bread>
80102298:	83 c4 10             	add    $0x10,%esp
8010229b:	89 45 f0             	mov    %eax,-0x10(%ebp)
    m = min(n - tot, BSIZE - off%BSIZE);
8010229e:	8b 45 10             	mov    0x10(%ebp),%eax
801022a1:	25 ff 01 00 00       	and    $0x1ff,%eax
801022a6:	ba 00 02 00 00       	mov    $0x200,%edx
801022ab:	29 c2                	sub    %eax,%edx
801022ad:	8b 45 14             	mov    0x14(%ebp),%eax
801022b0:	2b 45 f4             	sub    -0xc(%ebp),%eax
801022b3:	39 c2                	cmp    %eax,%edx
801022b5:	0f 46 c2             	cmovbe %edx,%eax
801022b8:	89 45 ec             	mov    %eax,-0x14(%ebp)
    memmove(bp->data + off%BSIZE, src, m);
801022bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
801022be:	8d 50 5c             	lea    0x5c(%eax),%edx
801022c1:	8b 45 10             	mov    0x10(%ebp),%eax
801022c4:	25 ff 01 00 00       	and    $0x1ff,%eax
801022c9:	01 d0                	add    %edx,%eax
801022cb:	83 ec 04             	sub    $0x4,%esp
801022ce:	ff 75 ec             	pushl  -0x14(%ebp)
801022d1:	ff 75 0c             	pushl  0xc(%ebp)
801022d4:	50                   	push   %eax
801022d5:	e8 d3 34 00 00       	call   801057ad <memmove>
801022da:	83 c4 10             	add    $0x10,%esp
    log_write(bp);
801022dd:	83 ec 0c             	sub    $0xc,%esp
801022e0:	ff 75 f0             	pushl  -0x10(%ebp)
801022e3:	e8 af 16 00 00       	call   80103997 <log_write>
801022e8:	83 c4 10             	add    $0x10,%esp
    brelse(bp);
801022eb:	83 ec 0c             	sub    $0xc,%esp
801022ee:	ff 75 f0             	pushl  -0x10(%ebp)
801022f1:	e8 6b df ff ff       	call   80100261 <brelse>
801022f6:	83 c4 10             	add    $0x10,%esp
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
801022f9:	8b 45 ec             	mov    -0x14(%ebp),%eax
801022fc:	01 45 f4             	add    %eax,-0xc(%ebp)
801022ff:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102302:	01 45 10             	add    %eax,0x10(%ebp)
80102305:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102308:	01 45 0c             	add    %eax,0xc(%ebp)
8010230b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010230e:	3b 45 14             	cmp    0x14(%ebp),%eax
80102311:	0f 82 5d ff ff ff    	jb     80102274 <writei+0xba>
  }

  if(n > 0 && off > ip->size){
80102317:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
8010231b:	74 22                	je     8010233f <writei+0x185>
8010231d:	8b 45 08             	mov    0x8(%ebp),%eax
80102320:	8b 40 58             	mov    0x58(%eax),%eax
80102323:	39 45 10             	cmp    %eax,0x10(%ebp)
80102326:	76 17                	jbe    8010233f <writei+0x185>
    ip->size = off;
80102328:	8b 45 08             	mov    0x8(%ebp),%eax
8010232b:	8b 55 10             	mov    0x10(%ebp),%edx
8010232e:	89 50 58             	mov    %edx,0x58(%eax)
    iupdate(ip);
80102331:	83 ec 0c             	sub    $0xc,%esp
80102334:	ff 75 08             	pushl  0x8(%ebp)
80102337:	e8 34 f6 ff ff       	call   80101970 <iupdate>
8010233c:	83 c4 10             	add    $0x10,%esp
  }
  return n;
8010233f:	8b 45 14             	mov    0x14(%ebp),%eax
}
80102342:	c9                   	leave  
80102343:	c3                   	ret    

80102344 <namecmp>:
//PAGEBREAK!
// Directories

int
namecmp(const char *s, const char *t)
{
80102344:	f3 0f 1e fb          	endbr32 
80102348:	55                   	push   %ebp
80102349:	89 e5                	mov    %esp,%ebp
8010234b:	83 ec 08             	sub    $0x8,%esp
  return strncmp(s, t, DIRSIZ);
8010234e:	83 ec 04             	sub    $0x4,%esp
80102351:	6a 0e                	push   $0xe
80102353:	ff 75 0c             	pushl  0xc(%ebp)
80102356:	ff 75 08             	pushl  0x8(%ebp)
80102359:	e8 ed 34 00 00       	call   8010584b <strncmp>
8010235e:	83 c4 10             	add    $0x10,%esp
}
80102361:	c9                   	leave  
80102362:	c3                   	ret    

80102363 <dirlookup>:

// Look for a directory entry in a directory.
// If found, set *poff to byte offset of entry.
struct inode*
dirlookup(struct inode *dp, char *name, uint *poff)
{
80102363:	f3 0f 1e fb          	endbr32 
80102367:	55                   	push   %ebp
80102368:	89 e5                	mov    %esp,%ebp
8010236a:	83 ec 28             	sub    $0x28,%esp
  uint off, inum;
  struct dirent de;

  if(dp->type != T_DIR)
8010236d:	8b 45 08             	mov    0x8(%ebp),%eax
80102370:	0f b7 40 50          	movzwl 0x50(%eax),%eax
80102374:	66 83 f8 01          	cmp    $0x1,%ax
80102378:	74 0d                	je     80102387 <dirlookup+0x24>
    panic("dirlookup not DIR");
8010237a:	83 ec 0c             	sub    $0xc,%esp
8010237d:	68 2d 97 10 80       	push   $0x8010972d
80102382:	e8 81 e2 ff ff       	call   80100608 <panic>

  for(off = 0; off < dp->size; off += sizeof(de)){
80102387:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010238e:	eb 7b                	jmp    8010240b <dirlookup+0xa8>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80102390:	6a 10                	push   $0x10
80102392:	ff 75 f4             	pushl  -0xc(%ebp)
80102395:	8d 45 e0             	lea    -0x20(%ebp),%eax
80102398:	50                   	push   %eax
80102399:	ff 75 08             	pushl  0x8(%ebp)
8010239c:	e8 c0 fc ff ff       	call   80102061 <readi>
801023a1:	83 c4 10             	add    $0x10,%esp
801023a4:	83 f8 10             	cmp    $0x10,%eax
801023a7:	74 0d                	je     801023b6 <dirlookup+0x53>
      panic("dirlookup read");
801023a9:	83 ec 0c             	sub    $0xc,%esp
801023ac:	68 3f 97 10 80       	push   $0x8010973f
801023b1:	e8 52 e2 ff ff       	call   80100608 <panic>
    if(de.inum == 0)
801023b6:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
801023ba:	66 85 c0             	test   %ax,%ax
801023bd:	74 47                	je     80102406 <dirlookup+0xa3>
      continue;
    if(namecmp(name, de.name) == 0){
801023bf:	83 ec 08             	sub    $0x8,%esp
801023c2:	8d 45 e0             	lea    -0x20(%ebp),%eax
801023c5:	83 c0 02             	add    $0x2,%eax
801023c8:	50                   	push   %eax
801023c9:	ff 75 0c             	pushl  0xc(%ebp)
801023cc:	e8 73 ff ff ff       	call   80102344 <namecmp>
801023d1:	83 c4 10             	add    $0x10,%esp
801023d4:	85 c0                	test   %eax,%eax
801023d6:	75 2f                	jne    80102407 <dirlookup+0xa4>
      // entry matches path element
      if(poff)
801023d8:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
801023dc:	74 08                	je     801023e6 <dirlookup+0x83>
        *poff = off;
801023de:	8b 45 10             	mov    0x10(%ebp),%eax
801023e1:	8b 55 f4             	mov    -0xc(%ebp),%edx
801023e4:	89 10                	mov    %edx,(%eax)
      inum = de.inum;
801023e6:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
801023ea:	0f b7 c0             	movzwl %ax,%eax
801023ed:	89 45 f0             	mov    %eax,-0x10(%ebp)
      return iget(dp->dev, inum);
801023f0:	8b 45 08             	mov    0x8(%ebp),%eax
801023f3:	8b 00                	mov    (%eax),%eax
801023f5:	83 ec 08             	sub    $0x8,%esp
801023f8:	ff 75 f0             	pushl  -0x10(%ebp)
801023fb:	50                   	push   %eax
801023fc:	e8 34 f6 ff ff       	call   80101a35 <iget>
80102401:	83 c4 10             	add    $0x10,%esp
80102404:	eb 19                	jmp    8010241f <dirlookup+0xbc>
      continue;
80102406:	90                   	nop
  for(off = 0; off < dp->size; off += sizeof(de)){
80102407:	83 45 f4 10          	addl   $0x10,-0xc(%ebp)
8010240b:	8b 45 08             	mov    0x8(%ebp),%eax
8010240e:	8b 40 58             	mov    0x58(%eax),%eax
80102411:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80102414:	0f 82 76 ff ff ff    	jb     80102390 <dirlookup+0x2d>
    }
  }

  return 0;
8010241a:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010241f:	c9                   	leave  
80102420:	c3                   	ret    

80102421 <dirlink>:

// Write a new directory entry (name, inum) into the directory dp.
int
dirlink(struct inode *dp, char *name, uint inum)
{
80102421:	f3 0f 1e fb          	endbr32 
80102425:	55                   	push   %ebp
80102426:	89 e5                	mov    %esp,%ebp
80102428:	83 ec 28             	sub    $0x28,%esp
  int off;
  struct dirent de;
  struct inode *ip;

  // Check that name is not present.
  if((ip = dirlookup(dp, name, 0)) != 0){
8010242b:	83 ec 04             	sub    $0x4,%esp
8010242e:	6a 00                	push   $0x0
80102430:	ff 75 0c             	pushl  0xc(%ebp)
80102433:	ff 75 08             	pushl  0x8(%ebp)
80102436:	e8 28 ff ff ff       	call   80102363 <dirlookup>
8010243b:	83 c4 10             	add    $0x10,%esp
8010243e:	89 45 f0             	mov    %eax,-0x10(%ebp)
80102441:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80102445:	74 18                	je     8010245f <dirlink+0x3e>
    iput(ip);
80102447:	83 ec 0c             	sub    $0xc,%esp
8010244a:	ff 75 f0             	pushl  -0x10(%ebp)
8010244d:	e8 70 f8 ff ff       	call   80101cc2 <iput>
80102452:	83 c4 10             	add    $0x10,%esp
    return -1;
80102455:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010245a:	e9 9c 00 00 00       	jmp    801024fb <dirlink+0xda>
  }

  // Look for an empty dirent.
  for(off = 0; off < dp->size; off += sizeof(de)){
8010245f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80102466:	eb 39                	jmp    801024a1 <dirlink+0x80>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80102468:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010246b:	6a 10                	push   $0x10
8010246d:	50                   	push   %eax
8010246e:	8d 45 e0             	lea    -0x20(%ebp),%eax
80102471:	50                   	push   %eax
80102472:	ff 75 08             	pushl  0x8(%ebp)
80102475:	e8 e7 fb ff ff       	call   80102061 <readi>
8010247a:	83 c4 10             	add    $0x10,%esp
8010247d:	83 f8 10             	cmp    $0x10,%eax
80102480:	74 0d                	je     8010248f <dirlink+0x6e>
      panic("dirlink read");
80102482:	83 ec 0c             	sub    $0xc,%esp
80102485:	68 4e 97 10 80       	push   $0x8010974e
8010248a:	e8 79 e1 ff ff       	call   80100608 <panic>
    if(de.inum == 0)
8010248f:	0f b7 45 e0          	movzwl -0x20(%ebp),%eax
80102493:	66 85 c0             	test   %ax,%ax
80102496:	74 18                	je     801024b0 <dirlink+0x8f>
  for(off = 0; off < dp->size; off += sizeof(de)){
80102498:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010249b:	83 c0 10             	add    $0x10,%eax
8010249e:	89 45 f4             	mov    %eax,-0xc(%ebp)
801024a1:	8b 45 08             	mov    0x8(%ebp),%eax
801024a4:	8b 50 58             	mov    0x58(%eax),%edx
801024a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801024aa:	39 c2                	cmp    %eax,%edx
801024ac:	77 ba                	ja     80102468 <dirlink+0x47>
801024ae:	eb 01                	jmp    801024b1 <dirlink+0x90>
      break;
801024b0:	90                   	nop
  }

  strncpy(de.name, name, DIRSIZ);
801024b1:	83 ec 04             	sub    $0x4,%esp
801024b4:	6a 0e                	push   $0xe
801024b6:	ff 75 0c             	pushl  0xc(%ebp)
801024b9:	8d 45 e0             	lea    -0x20(%ebp),%eax
801024bc:	83 c0 02             	add    $0x2,%eax
801024bf:	50                   	push   %eax
801024c0:	e8 e0 33 00 00       	call   801058a5 <strncpy>
801024c5:	83 c4 10             	add    $0x10,%esp
  de.inum = inum;
801024c8:	8b 45 10             	mov    0x10(%ebp),%eax
801024cb:	66 89 45 e0          	mov    %ax,-0x20(%ebp)
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
801024cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
801024d2:	6a 10                	push   $0x10
801024d4:	50                   	push   %eax
801024d5:	8d 45 e0             	lea    -0x20(%ebp),%eax
801024d8:	50                   	push   %eax
801024d9:	ff 75 08             	pushl  0x8(%ebp)
801024dc:	e8 d9 fc ff ff       	call   801021ba <writei>
801024e1:	83 c4 10             	add    $0x10,%esp
801024e4:	83 f8 10             	cmp    $0x10,%eax
801024e7:	74 0d                	je     801024f6 <dirlink+0xd5>
    panic("dirlink");
801024e9:	83 ec 0c             	sub    $0xc,%esp
801024ec:	68 5b 97 10 80       	push   $0x8010975b
801024f1:	e8 12 e1 ff ff       	call   80100608 <panic>

  return 0;
801024f6:	b8 00 00 00 00       	mov    $0x0,%eax
}
801024fb:	c9                   	leave  
801024fc:	c3                   	ret    

801024fd <skipelem>:
//   skipelem("a", name) = "", setting name = "a"
//   skipelem("", name) = skipelem("////", name) = 0
//
static char*
skipelem(char *path, char *name)
{
801024fd:	f3 0f 1e fb          	endbr32 
80102501:	55                   	push   %ebp
80102502:	89 e5                	mov    %esp,%ebp
80102504:	83 ec 18             	sub    $0x18,%esp
  char *s;
  int len;

  while(*path == '/')
80102507:	eb 04                	jmp    8010250d <skipelem+0x10>
    path++;
80102509:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  while(*path == '/')
8010250d:	8b 45 08             	mov    0x8(%ebp),%eax
80102510:	0f b6 00             	movzbl (%eax),%eax
80102513:	3c 2f                	cmp    $0x2f,%al
80102515:	74 f2                	je     80102509 <skipelem+0xc>
  if(*path == 0)
80102517:	8b 45 08             	mov    0x8(%ebp),%eax
8010251a:	0f b6 00             	movzbl (%eax),%eax
8010251d:	84 c0                	test   %al,%al
8010251f:	75 07                	jne    80102528 <skipelem+0x2b>
    return 0;
80102521:	b8 00 00 00 00       	mov    $0x0,%eax
80102526:	eb 77                	jmp    8010259f <skipelem+0xa2>
  s = path;
80102528:	8b 45 08             	mov    0x8(%ebp),%eax
8010252b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  while(*path != '/' && *path != 0)
8010252e:	eb 04                	jmp    80102534 <skipelem+0x37>
    path++;
80102530:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  while(*path != '/' && *path != 0)
80102534:	8b 45 08             	mov    0x8(%ebp),%eax
80102537:	0f b6 00             	movzbl (%eax),%eax
8010253a:	3c 2f                	cmp    $0x2f,%al
8010253c:	74 0a                	je     80102548 <skipelem+0x4b>
8010253e:	8b 45 08             	mov    0x8(%ebp),%eax
80102541:	0f b6 00             	movzbl (%eax),%eax
80102544:	84 c0                	test   %al,%al
80102546:	75 e8                	jne    80102530 <skipelem+0x33>
  len = path - s;
80102548:	8b 45 08             	mov    0x8(%ebp),%eax
8010254b:	2b 45 f4             	sub    -0xc(%ebp),%eax
8010254e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(len >= DIRSIZ)
80102551:	83 7d f0 0d          	cmpl   $0xd,-0x10(%ebp)
80102555:	7e 15                	jle    8010256c <skipelem+0x6f>
    memmove(name, s, DIRSIZ);
80102557:	83 ec 04             	sub    $0x4,%esp
8010255a:	6a 0e                	push   $0xe
8010255c:	ff 75 f4             	pushl  -0xc(%ebp)
8010255f:	ff 75 0c             	pushl  0xc(%ebp)
80102562:	e8 46 32 00 00       	call   801057ad <memmove>
80102567:	83 c4 10             	add    $0x10,%esp
8010256a:	eb 26                	jmp    80102592 <skipelem+0x95>
  else {
    memmove(name, s, len);
8010256c:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010256f:	83 ec 04             	sub    $0x4,%esp
80102572:	50                   	push   %eax
80102573:	ff 75 f4             	pushl  -0xc(%ebp)
80102576:	ff 75 0c             	pushl  0xc(%ebp)
80102579:	e8 2f 32 00 00       	call   801057ad <memmove>
8010257e:	83 c4 10             	add    $0x10,%esp
    name[len] = 0;
80102581:	8b 55 f0             	mov    -0x10(%ebp),%edx
80102584:	8b 45 0c             	mov    0xc(%ebp),%eax
80102587:	01 d0                	add    %edx,%eax
80102589:	c6 00 00             	movb   $0x0,(%eax)
  }
  while(*path == '/')
8010258c:	eb 04                	jmp    80102592 <skipelem+0x95>
    path++;
8010258e:	83 45 08 01          	addl   $0x1,0x8(%ebp)
  while(*path == '/')
80102592:	8b 45 08             	mov    0x8(%ebp),%eax
80102595:	0f b6 00             	movzbl (%eax),%eax
80102598:	3c 2f                	cmp    $0x2f,%al
8010259a:	74 f2                	je     8010258e <skipelem+0x91>
  return path;
8010259c:	8b 45 08             	mov    0x8(%ebp),%eax
}
8010259f:	c9                   	leave  
801025a0:	c3                   	ret    

801025a1 <namex>:
// If parent != 0, return the inode for the parent and copy the final
// path element into name, which must have room for DIRSIZ bytes.
// Must be called inside a transaction since it calls iput().
static struct inode*
namex(char *path, int nameiparent, char *name)
{
801025a1:	f3 0f 1e fb          	endbr32 
801025a5:	55                   	push   %ebp
801025a6:	89 e5                	mov    %esp,%ebp
801025a8:	83 ec 18             	sub    $0x18,%esp
  struct inode *ip, *next;

  if(*path == '/')
801025ab:	8b 45 08             	mov    0x8(%ebp),%eax
801025ae:	0f b6 00             	movzbl (%eax),%eax
801025b1:	3c 2f                	cmp    $0x2f,%al
801025b3:	75 17                	jne    801025cc <namex+0x2b>
    ip = iget(ROOTDEV, ROOTINO);
801025b5:	83 ec 08             	sub    $0x8,%esp
801025b8:	6a 01                	push   $0x1
801025ba:	6a 01                	push   $0x1
801025bc:	e8 74 f4 ff ff       	call   80101a35 <iget>
801025c1:	83 c4 10             	add    $0x10,%esp
801025c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
801025c7:	e9 ba 00 00 00       	jmp    80102686 <namex+0xe5>
  else
    ip = idup(myproc()->cwd);
801025cc:	e8 3c 1f 00 00       	call   8010450d <myproc>
801025d1:	8b 40 68             	mov    0x68(%eax),%eax
801025d4:	83 ec 0c             	sub    $0xc,%esp
801025d7:	50                   	push   %eax
801025d8:	e8 3e f5 ff ff       	call   80101b1b <idup>
801025dd:	83 c4 10             	add    $0x10,%esp
801025e0:	89 45 f4             	mov    %eax,-0xc(%ebp)

  while((path = skipelem(path, name)) != 0){
801025e3:	e9 9e 00 00 00       	jmp    80102686 <namex+0xe5>
    ilock(ip);
801025e8:	83 ec 0c             	sub    $0xc,%esp
801025eb:	ff 75 f4             	pushl  -0xc(%ebp)
801025ee:	e8 66 f5 ff ff       	call   80101b59 <ilock>
801025f3:	83 c4 10             	add    $0x10,%esp
    if(ip->type != T_DIR){
801025f6:	8b 45 f4             	mov    -0xc(%ebp),%eax
801025f9:	0f b7 40 50          	movzwl 0x50(%eax),%eax
801025fd:	66 83 f8 01          	cmp    $0x1,%ax
80102601:	74 18                	je     8010261b <namex+0x7a>
      iunlockput(ip);
80102603:	83 ec 0c             	sub    $0xc,%esp
80102606:	ff 75 f4             	pushl  -0xc(%ebp)
80102609:	e8 88 f7 ff ff       	call   80101d96 <iunlockput>
8010260e:	83 c4 10             	add    $0x10,%esp
      return 0;
80102611:	b8 00 00 00 00       	mov    $0x0,%eax
80102616:	e9 a7 00 00 00       	jmp    801026c2 <namex+0x121>
    }
    if(nameiparent && *path == '\0'){
8010261b:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
8010261f:	74 20                	je     80102641 <namex+0xa0>
80102621:	8b 45 08             	mov    0x8(%ebp),%eax
80102624:	0f b6 00             	movzbl (%eax),%eax
80102627:	84 c0                	test   %al,%al
80102629:	75 16                	jne    80102641 <namex+0xa0>
      // Stop one level early.
      iunlock(ip);
8010262b:	83 ec 0c             	sub    $0xc,%esp
8010262e:	ff 75 f4             	pushl  -0xc(%ebp)
80102631:	e8 3a f6 ff ff       	call   80101c70 <iunlock>
80102636:	83 c4 10             	add    $0x10,%esp
      return ip;
80102639:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010263c:	e9 81 00 00 00       	jmp    801026c2 <namex+0x121>
    }
    if((next = dirlookup(ip, name, 0)) == 0){
80102641:	83 ec 04             	sub    $0x4,%esp
80102644:	6a 00                	push   $0x0
80102646:	ff 75 10             	pushl  0x10(%ebp)
80102649:	ff 75 f4             	pushl  -0xc(%ebp)
8010264c:	e8 12 fd ff ff       	call   80102363 <dirlookup>
80102651:	83 c4 10             	add    $0x10,%esp
80102654:	89 45 f0             	mov    %eax,-0x10(%ebp)
80102657:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
8010265b:	75 15                	jne    80102672 <namex+0xd1>
      iunlockput(ip);
8010265d:	83 ec 0c             	sub    $0xc,%esp
80102660:	ff 75 f4             	pushl  -0xc(%ebp)
80102663:	e8 2e f7 ff ff       	call   80101d96 <iunlockput>
80102668:	83 c4 10             	add    $0x10,%esp
      return 0;
8010266b:	b8 00 00 00 00       	mov    $0x0,%eax
80102670:	eb 50                	jmp    801026c2 <namex+0x121>
    }
    iunlockput(ip);
80102672:	83 ec 0c             	sub    $0xc,%esp
80102675:	ff 75 f4             	pushl  -0xc(%ebp)
80102678:	e8 19 f7 ff ff       	call   80101d96 <iunlockput>
8010267d:	83 c4 10             	add    $0x10,%esp
    ip = next;
80102680:	8b 45 f0             	mov    -0x10(%ebp),%eax
80102683:	89 45 f4             	mov    %eax,-0xc(%ebp)
  while((path = skipelem(path, name)) != 0){
80102686:	83 ec 08             	sub    $0x8,%esp
80102689:	ff 75 10             	pushl  0x10(%ebp)
8010268c:	ff 75 08             	pushl  0x8(%ebp)
8010268f:	e8 69 fe ff ff       	call   801024fd <skipelem>
80102694:	83 c4 10             	add    $0x10,%esp
80102697:	89 45 08             	mov    %eax,0x8(%ebp)
8010269a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
8010269e:	0f 85 44 ff ff ff    	jne    801025e8 <namex+0x47>
  }
  if(nameiparent){
801026a4:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
801026a8:	74 15                	je     801026bf <namex+0x11e>
    iput(ip);
801026aa:	83 ec 0c             	sub    $0xc,%esp
801026ad:	ff 75 f4             	pushl  -0xc(%ebp)
801026b0:	e8 0d f6 ff ff       	call   80101cc2 <iput>
801026b5:	83 c4 10             	add    $0x10,%esp
    return 0;
801026b8:	b8 00 00 00 00       	mov    $0x0,%eax
801026bd:	eb 03                	jmp    801026c2 <namex+0x121>
  }
  return ip;
801026bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
801026c2:	c9                   	leave  
801026c3:	c3                   	ret    

801026c4 <namei>:

struct inode*
namei(char *path)
{
801026c4:	f3 0f 1e fb          	endbr32 
801026c8:	55                   	push   %ebp
801026c9:	89 e5                	mov    %esp,%ebp
801026cb:	83 ec 18             	sub    $0x18,%esp
  char name[DIRSIZ];
  return namex(path, 0, name);
801026ce:	83 ec 04             	sub    $0x4,%esp
801026d1:	8d 45 ea             	lea    -0x16(%ebp),%eax
801026d4:	50                   	push   %eax
801026d5:	6a 00                	push   $0x0
801026d7:	ff 75 08             	pushl  0x8(%ebp)
801026da:	e8 c2 fe ff ff       	call   801025a1 <namex>
801026df:	83 c4 10             	add    $0x10,%esp
}
801026e2:	c9                   	leave  
801026e3:	c3                   	ret    

801026e4 <nameiparent>:

struct inode*
nameiparent(char *path, char *name)
{
801026e4:	f3 0f 1e fb          	endbr32 
801026e8:	55                   	push   %ebp
801026e9:	89 e5                	mov    %esp,%ebp
801026eb:	83 ec 08             	sub    $0x8,%esp
  return namex(path, 1, name);
801026ee:	83 ec 04             	sub    $0x4,%esp
801026f1:	ff 75 0c             	pushl  0xc(%ebp)
801026f4:	6a 01                	push   $0x1
801026f6:	ff 75 08             	pushl  0x8(%ebp)
801026f9:	e8 a3 fe ff ff       	call   801025a1 <namex>
801026fe:	83 c4 10             	add    $0x10,%esp
}
80102701:	c9                   	leave  
80102702:	c3                   	ret    

80102703 <inb>:
{
80102703:	55                   	push   %ebp
80102704:	89 e5                	mov    %esp,%ebp
80102706:	83 ec 14             	sub    $0x14,%esp
80102709:	8b 45 08             	mov    0x8(%ebp),%eax
8010270c:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80102710:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
80102714:	89 c2                	mov    %eax,%edx
80102716:	ec                   	in     (%dx),%al
80102717:	88 45 ff             	mov    %al,-0x1(%ebp)
  return data;
8010271a:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
}
8010271e:	c9                   	leave  
8010271f:	c3                   	ret    

80102720 <insl>:
{
80102720:	55                   	push   %ebp
80102721:	89 e5                	mov    %esp,%ebp
80102723:	57                   	push   %edi
80102724:	53                   	push   %ebx
  asm volatile("cld; rep insl" :
80102725:	8b 55 08             	mov    0x8(%ebp),%edx
80102728:	8b 4d 0c             	mov    0xc(%ebp),%ecx
8010272b:	8b 45 10             	mov    0x10(%ebp),%eax
8010272e:	89 cb                	mov    %ecx,%ebx
80102730:	89 df                	mov    %ebx,%edi
80102732:	89 c1                	mov    %eax,%ecx
80102734:	fc                   	cld    
80102735:	f3 6d                	rep insl (%dx),%es:(%edi)
80102737:	89 c8                	mov    %ecx,%eax
80102739:	89 fb                	mov    %edi,%ebx
8010273b:	89 5d 0c             	mov    %ebx,0xc(%ebp)
8010273e:	89 45 10             	mov    %eax,0x10(%ebp)
}
80102741:	90                   	nop
80102742:	5b                   	pop    %ebx
80102743:	5f                   	pop    %edi
80102744:	5d                   	pop    %ebp
80102745:	c3                   	ret    

80102746 <outb>:
{
80102746:	55                   	push   %ebp
80102747:	89 e5                	mov    %esp,%ebp
80102749:	83 ec 08             	sub    $0x8,%esp
8010274c:	8b 45 08             	mov    0x8(%ebp),%eax
8010274f:	8b 55 0c             	mov    0xc(%ebp),%edx
80102752:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80102756:	89 d0                	mov    %edx,%eax
80102758:	88 45 f8             	mov    %al,-0x8(%ebp)
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
8010275b:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
8010275f:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
80102763:	ee                   	out    %al,(%dx)
}
80102764:	90                   	nop
80102765:	c9                   	leave  
80102766:	c3                   	ret    

80102767 <outsl>:
{
80102767:	55                   	push   %ebp
80102768:	89 e5                	mov    %esp,%ebp
8010276a:	56                   	push   %esi
8010276b:	53                   	push   %ebx
  asm volatile("cld; rep outsl" :
8010276c:	8b 55 08             	mov    0x8(%ebp),%edx
8010276f:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80102772:	8b 45 10             	mov    0x10(%ebp),%eax
80102775:	89 cb                	mov    %ecx,%ebx
80102777:	89 de                	mov    %ebx,%esi
80102779:	89 c1                	mov    %eax,%ecx
8010277b:	fc                   	cld    
8010277c:	f3 6f                	rep outsl %ds:(%esi),(%dx)
8010277e:	89 c8                	mov    %ecx,%eax
80102780:	89 f3                	mov    %esi,%ebx
80102782:	89 5d 0c             	mov    %ebx,0xc(%ebp)
80102785:	89 45 10             	mov    %eax,0x10(%ebp)
}
80102788:	90                   	nop
80102789:	5b                   	pop    %ebx
8010278a:	5e                   	pop    %esi
8010278b:	5d                   	pop    %ebp
8010278c:	c3                   	ret    

8010278d <idewait>:
static void idestart(struct buf*);

// Wait for IDE disk to become ready.
static int
idewait(int checkerr)
{
8010278d:	f3 0f 1e fb          	endbr32 
80102791:	55                   	push   %ebp
80102792:	89 e5                	mov    %esp,%ebp
80102794:	83 ec 10             	sub    $0x10,%esp
  int r;

  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
80102797:	90                   	nop
80102798:	68 f7 01 00 00       	push   $0x1f7
8010279d:	e8 61 ff ff ff       	call   80102703 <inb>
801027a2:	83 c4 04             	add    $0x4,%esp
801027a5:	0f b6 c0             	movzbl %al,%eax
801027a8:	89 45 fc             	mov    %eax,-0x4(%ebp)
801027ab:	8b 45 fc             	mov    -0x4(%ebp),%eax
801027ae:	25 c0 00 00 00       	and    $0xc0,%eax
801027b3:	83 f8 40             	cmp    $0x40,%eax
801027b6:	75 e0                	jne    80102798 <idewait+0xb>
    ;
  if(checkerr && (r & (IDE_DF|IDE_ERR)) != 0)
801027b8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
801027bc:	74 11                	je     801027cf <idewait+0x42>
801027be:	8b 45 fc             	mov    -0x4(%ebp),%eax
801027c1:	83 e0 21             	and    $0x21,%eax
801027c4:	85 c0                	test   %eax,%eax
801027c6:	74 07                	je     801027cf <idewait+0x42>
    return -1;
801027c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801027cd:	eb 05                	jmp    801027d4 <idewait+0x47>
  return 0;
801027cf:	b8 00 00 00 00       	mov    $0x0,%eax
}
801027d4:	c9                   	leave  
801027d5:	c3                   	ret    

801027d6 <ideinit>:

void
ideinit(void)
{
801027d6:	f3 0f 1e fb          	endbr32 
801027da:	55                   	push   %ebp
801027db:	89 e5                	mov    %esp,%ebp
801027dd:	83 ec 18             	sub    $0x18,%esp
  int i;

  initlock(&idelock, "ide");
801027e0:	83 ec 08             	sub    $0x8,%esp
801027e3:	68 63 97 10 80       	push   $0x80109763
801027e8:	68 00 d6 10 80       	push   $0x8010d600
801027ed:	e8 2f 2c 00 00       	call   80105421 <initlock>
801027f2:	83 c4 10             	add    $0x10,%esp
  ioapicenable(IRQ_IDE, ncpu - 1);
801027f5:	a1 a0 5d 11 80       	mov    0x80115da0,%eax
801027fa:	83 e8 01             	sub    $0x1,%eax
801027fd:	83 ec 08             	sub    $0x8,%esp
80102800:	50                   	push   %eax
80102801:	6a 0e                	push   $0xe
80102803:	e8 bb 04 00 00       	call   80102cc3 <ioapicenable>
80102808:	83 c4 10             	add    $0x10,%esp
  idewait(0);
8010280b:	83 ec 0c             	sub    $0xc,%esp
8010280e:	6a 00                	push   $0x0
80102810:	e8 78 ff ff ff       	call   8010278d <idewait>
80102815:	83 c4 10             	add    $0x10,%esp

  // Check if disk 1 is present
  outb(0x1f6, 0xe0 | (1<<4));
80102818:	83 ec 08             	sub    $0x8,%esp
8010281b:	68 f0 00 00 00       	push   $0xf0
80102820:	68 f6 01 00 00       	push   $0x1f6
80102825:	e8 1c ff ff ff       	call   80102746 <outb>
8010282a:	83 c4 10             	add    $0x10,%esp
  for(i=0; i<1000; i++){
8010282d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80102834:	eb 24                	jmp    8010285a <ideinit+0x84>
    if(inb(0x1f7) != 0){
80102836:	83 ec 0c             	sub    $0xc,%esp
80102839:	68 f7 01 00 00       	push   $0x1f7
8010283e:	e8 c0 fe ff ff       	call   80102703 <inb>
80102843:	83 c4 10             	add    $0x10,%esp
80102846:	84 c0                	test   %al,%al
80102848:	74 0c                	je     80102856 <ideinit+0x80>
      havedisk1 = 1;
8010284a:	c7 05 38 d6 10 80 01 	movl   $0x1,0x8010d638
80102851:	00 00 00 
      break;
80102854:	eb 0d                	jmp    80102863 <ideinit+0x8d>
  for(i=0; i<1000; i++){
80102856:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
8010285a:	81 7d f4 e7 03 00 00 	cmpl   $0x3e7,-0xc(%ebp)
80102861:	7e d3                	jle    80102836 <ideinit+0x60>
    }
  }

  // Switch back to disk 0.
  outb(0x1f6, 0xe0 | (0<<4));
80102863:	83 ec 08             	sub    $0x8,%esp
80102866:	68 e0 00 00 00       	push   $0xe0
8010286b:	68 f6 01 00 00       	push   $0x1f6
80102870:	e8 d1 fe ff ff       	call   80102746 <outb>
80102875:	83 c4 10             	add    $0x10,%esp
}
80102878:	90                   	nop
80102879:	c9                   	leave  
8010287a:	c3                   	ret    

8010287b <idestart>:

// Start the request for b.  Caller must hold idelock.
static void
idestart(struct buf *b)
{
8010287b:	f3 0f 1e fb          	endbr32 
8010287f:	55                   	push   %ebp
80102880:	89 e5                	mov    %esp,%ebp
80102882:	83 ec 18             	sub    $0x18,%esp
  if(b == 0)
80102885:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80102889:	75 0d                	jne    80102898 <idestart+0x1d>
    panic("idestart");
8010288b:	83 ec 0c             	sub    $0xc,%esp
8010288e:	68 67 97 10 80       	push   $0x80109767
80102893:	e8 70 dd ff ff       	call   80100608 <panic>
  if(b->blockno >= FSSIZE)
80102898:	8b 45 08             	mov    0x8(%ebp),%eax
8010289b:	8b 40 08             	mov    0x8(%eax),%eax
8010289e:	3d 9f 0f 00 00       	cmp    $0xf9f,%eax
801028a3:	76 0d                	jbe    801028b2 <idestart+0x37>
    panic("incorrect blockno");
801028a5:	83 ec 0c             	sub    $0xc,%esp
801028a8:	68 70 97 10 80       	push   $0x80109770
801028ad:	e8 56 dd ff ff       	call   80100608 <panic>
  int sector_per_block =  BSIZE/SECTOR_SIZE;
801028b2:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
  int sector = b->blockno * sector_per_block;
801028b9:	8b 45 08             	mov    0x8(%ebp),%eax
801028bc:	8b 50 08             	mov    0x8(%eax),%edx
801028bf:	8b 45 f4             	mov    -0xc(%ebp),%eax
801028c2:	0f af c2             	imul   %edx,%eax
801028c5:	89 45 f0             	mov    %eax,-0x10(%ebp)
  int read_cmd = (sector_per_block == 1) ? IDE_CMD_READ :  IDE_CMD_RDMUL;
801028c8:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
801028cc:	75 07                	jne    801028d5 <idestart+0x5a>
801028ce:	b8 20 00 00 00       	mov    $0x20,%eax
801028d3:	eb 05                	jmp    801028da <idestart+0x5f>
801028d5:	b8 c4 00 00 00       	mov    $0xc4,%eax
801028da:	89 45 ec             	mov    %eax,-0x14(%ebp)
  int write_cmd = (sector_per_block == 1) ? IDE_CMD_WRITE : IDE_CMD_WRMUL;
801028dd:	83 7d f4 01          	cmpl   $0x1,-0xc(%ebp)
801028e1:	75 07                	jne    801028ea <idestart+0x6f>
801028e3:	b8 30 00 00 00       	mov    $0x30,%eax
801028e8:	eb 05                	jmp    801028ef <idestart+0x74>
801028ea:	b8 c5 00 00 00       	mov    $0xc5,%eax
801028ef:	89 45 e8             	mov    %eax,-0x18(%ebp)

  if (sector_per_block > 7) panic("idestart");
801028f2:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
801028f6:	7e 0d                	jle    80102905 <idestart+0x8a>
801028f8:	83 ec 0c             	sub    $0xc,%esp
801028fb:	68 67 97 10 80       	push   $0x80109767
80102900:	e8 03 dd ff ff       	call   80100608 <panic>

  idewait(0);
80102905:	83 ec 0c             	sub    $0xc,%esp
80102908:	6a 00                	push   $0x0
8010290a:	e8 7e fe ff ff       	call   8010278d <idewait>
8010290f:	83 c4 10             	add    $0x10,%esp
  outb(0x3f6, 0);  // generate interrupt
80102912:	83 ec 08             	sub    $0x8,%esp
80102915:	6a 00                	push   $0x0
80102917:	68 f6 03 00 00       	push   $0x3f6
8010291c:	e8 25 fe ff ff       	call   80102746 <outb>
80102921:	83 c4 10             	add    $0x10,%esp
  outb(0x1f2, sector_per_block);  // number of sectors
80102924:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102927:	0f b6 c0             	movzbl %al,%eax
8010292a:	83 ec 08             	sub    $0x8,%esp
8010292d:	50                   	push   %eax
8010292e:	68 f2 01 00 00       	push   $0x1f2
80102933:	e8 0e fe ff ff       	call   80102746 <outb>
80102938:	83 c4 10             	add    $0x10,%esp
  outb(0x1f3, sector & 0xff);
8010293b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010293e:	0f b6 c0             	movzbl %al,%eax
80102941:	83 ec 08             	sub    $0x8,%esp
80102944:	50                   	push   %eax
80102945:	68 f3 01 00 00       	push   $0x1f3
8010294a:	e8 f7 fd ff ff       	call   80102746 <outb>
8010294f:	83 c4 10             	add    $0x10,%esp
  outb(0x1f4, (sector >> 8) & 0xff);
80102952:	8b 45 f0             	mov    -0x10(%ebp),%eax
80102955:	c1 f8 08             	sar    $0x8,%eax
80102958:	0f b6 c0             	movzbl %al,%eax
8010295b:	83 ec 08             	sub    $0x8,%esp
8010295e:	50                   	push   %eax
8010295f:	68 f4 01 00 00       	push   $0x1f4
80102964:	e8 dd fd ff ff       	call   80102746 <outb>
80102969:	83 c4 10             	add    $0x10,%esp
  outb(0x1f5, (sector >> 16) & 0xff);
8010296c:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010296f:	c1 f8 10             	sar    $0x10,%eax
80102972:	0f b6 c0             	movzbl %al,%eax
80102975:	83 ec 08             	sub    $0x8,%esp
80102978:	50                   	push   %eax
80102979:	68 f5 01 00 00       	push   $0x1f5
8010297e:	e8 c3 fd ff ff       	call   80102746 <outb>
80102983:	83 c4 10             	add    $0x10,%esp
  outb(0x1f6, 0xe0 | ((b->dev&1)<<4) | ((sector>>24)&0x0f));
80102986:	8b 45 08             	mov    0x8(%ebp),%eax
80102989:	8b 40 04             	mov    0x4(%eax),%eax
8010298c:	c1 e0 04             	shl    $0x4,%eax
8010298f:	83 e0 10             	and    $0x10,%eax
80102992:	89 c2                	mov    %eax,%edx
80102994:	8b 45 f0             	mov    -0x10(%ebp),%eax
80102997:	c1 f8 18             	sar    $0x18,%eax
8010299a:	83 e0 0f             	and    $0xf,%eax
8010299d:	09 d0                	or     %edx,%eax
8010299f:	83 c8 e0             	or     $0xffffffe0,%eax
801029a2:	0f b6 c0             	movzbl %al,%eax
801029a5:	83 ec 08             	sub    $0x8,%esp
801029a8:	50                   	push   %eax
801029a9:	68 f6 01 00 00       	push   $0x1f6
801029ae:	e8 93 fd ff ff       	call   80102746 <outb>
801029b3:	83 c4 10             	add    $0x10,%esp
  if(b->flags & B_DIRTY){
801029b6:	8b 45 08             	mov    0x8(%ebp),%eax
801029b9:	8b 00                	mov    (%eax),%eax
801029bb:	83 e0 04             	and    $0x4,%eax
801029be:	85 c0                	test   %eax,%eax
801029c0:	74 35                	je     801029f7 <idestart+0x17c>
    outb(0x1f7, write_cmd);
801029c2:	8b 45 e8             	mov    -0x18(%ebp),%eax
801029c5:	0f b6 c0             	movzbl %al,%eax
801029c8:	83 ec 08             	sub    $0x8,%esp
801029cb:	50                   	push   %eax
801029cc:	68 f7 01 00 00       	push   $0x1f7
801029d1:	e8 70 fd ff ff       	call   80102746 <outb>
801029d6:	83 c4 10             	add    $0x10,%esp
    outsl(0x1f0, b->data, BSIZE/4);
801029d9:	8b 45 08             	mov    0x8(%ebp),%eax
801029dc:	83 c0 5c             	add    $0x5c,%eax
801029df:	83 ec 04             	sub    $0x4,%esp
801029e2:	68 80 00 00 00       	push   $0x80
801029e7:	50                   	push   %eax
801029e8:	68 f0 01 00 00       	push   $0x1f0
801029ed:	e8 75 fd ff ff       	call   80102767 <outsl>
801029f2:	83 c4 10             	add    $0x10,%esp
  } else {
    outb(0x1f7, read_cmd);
  }
}
801029f5:	eb 17                	jmp    80102a0e <idestart+0x193>
    outb(0x1f7, read_cmd);
801029f7:	8b 45 ec             	mov    -0x14(%ebp),%eax
801029fa:	0f b6 c0             	movzbl %al,%eax
801029fd:	83 ec 08             	sub    $0x8,%esp
80102a00:	50                   	push   %eax
80102a01:	68 f7 01 00 00       	push   $0x1f7
80102a06:	e8 3b fd ff ff       	call   80102746 <outb>
80102a0b:	83 c4 10             	add    $0x10,%esp
}
80102a0e:	90                   	nop
80102a0f:	c9                   	leave  
80102a10:	c3                   	ret    

80102a11 <ideintr>:

// Interrupt handler.
void
ideintr(void)
{
80102a11:	f3 0f 1e fb          	endbr32 
80102a15:	55                   	push   %ebp
80102a16:	89 e5                	mov    %esp,%ebp
80102a18:	83 ec 18             	sub    $0x18,%esp
  struct buf *b;

  // First queued buffer is the active request.
  acquire(&idelock);
80102a1b:	83 ec 0c             	sub    $0xc,%esp
80102a1e:	68 00 d6 10 80       	push   $0x8010d600
80102a23:	e8 1f 2a 00 00       	call   80105447 <acquire>
80102a28:	83 c4 10             	add    $0x10,%esp

  if((b = idequeue) == 0){
80102a2b:	a1 34 d6 10 80       	mov    0x8010d634,%eax
80102a30:	89 45 f4             	mov    %eax,-0xc(%ebp)
80102a33:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80102a37:	75 15                	jne    80102a4e <ideintr+0x3d>
    release(&idelock);
80102a39:	83 ec 0c             	sub    $0xc,%esp
80102a3c:	68 00 d6 10 80       	push   $0x8010d600
80102a41:	e8 73 2a 00 00       	call   801054b9 <release>
80102a46:	83 c4 10             	add    $0x10,%esp
    return;
80102a49:	e9 9a 00 00 00       	jmp    80102ae8 <ideintr+0xd7>
  }
  idequeue = b->qnext;
80102a4e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102a51:	8b 40 58             	mov    0x58(%eax),%eax
80102a54:	a3 34 d6 10 80       	mov    %eax,0x8010d634

  // Read data if needed.
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
80102a59:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102a5c:	8b 00                	mov    (%eax),%eax
80102a5e:	83 e0 04             	and    $0x4,%eax
80102a61:	85 c0                	test   %eax,%eax
80102a63:	75 2d                	jne    80102a92 <ideintr+0x81>
80102a65:	83 ec 0c             	sub    $0xc,%esp
80102a68:	6a 01                	push   $0x1
80102a6a:	e8 1e fd ff ff       	call   8010278d <idewait>
80102a6f:	83 c4 10             	add    $0x10,%esp
80102a72:	85 c0                	test   %eax,%eax
80102a74:	78 1c                	js     80102a92 <ideintr+0x81>
    insl(0x1f0, b->data, BSIZE/4);
80102a76:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102a79:	83 c0 5c             	add    $0x5c,%eax
80102a7c:	83 ec 04             	sub    $0x4,%esp
80102a7f:	68 80 00 00 00       	push   $0x80
80102a84:	50                   	push   %eax
80102a85:	68 f0 01 00 00       	push   $0x1f0
80102a8a:	e8 91 fc ff ff       	call   80102720 <insl>
80102a8f:	83 c4 10             	add    $0x10,%esp

  // Wake process waiting for this buf.
  b->flags |= B_VALID;
80102a92:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102a95:	8b 00                	mov    (%eax),%eax
80102a97:	83 c8 02             	or     $0x2,%eax
80102a9a:	89 c2                	mov    %eax,%edx
80102a9c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102a9f:	89 10                	mov    %edx,(%eax)
  b->flags &= ~B_DIRTY;
80102aa1:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102aa4:	8b 00                	mov    (%eax),%eax
80102aa6:	83 e0 fb             	and    $0xfffffffb,%eax
80102aa9:	89 c2                	mov    %eax,%edx
80102aab:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102aae:	89 10                	mov    %edx,(%eax)
  wakeup(b);
80102ab0:	83 ec 0c             	sub    $0xc,%esp
80102ab3:	ff 75 f4             	pushl  -0xc(%ebp)
80102ab6:	e8 0c 26 00 00       	call   801050c7 <wakeup>
80102abb:	83 c4 10             	add    $0x10,%esp

  // Start disk on next buf in queue.
  if(idequeue != 0)
80102abe:	a1 34 d6 10 80       	mov    0x8010d634,%eax
80102ac3:	85 c0                	test   %eax,%eax
80102ac5:	74 11                	je     80102ad8 <ideintr+0xc7>
    idestart(idequeue);
80102ac7:	a1 34 d6 10 80       	mov    0x8010d634,%eax
80102acc:	83 ec 0c             	sub    $0xc,%esp
80102acf:	50                   	push   %eax
80102ad0:	e8 a6 fd ff ff       	call   8010287b <idestart>
80102ad5:	83 c4 10             	add    $0x10,%esp

  release(&idelock);
80102ad8:	83 ec 0c             	sub    $0xc,%esp
80102adb:	68 00 d6 10 80       	push   $0x8010d600
80102ae0:	e8 d4 29 00 00       	call   801054b9 <release>
80102ae5:	83 c4 10             	add    $0x10,%esp
}
80102ae8:	c9                   	leave  
80102ae9:	c3                   	ret    

80102aea <iderw>:
// Sync buf with disk.
// If B_DIRTY is set, write buf to disk, clear B_DIRTY, set B_VALID.
// Else if B_VALID is not set, read buf from disk, set B_VALID.
void
iderw(struct buf *b)
{
80102aea:	f3 0f 1e fb          	endbr32 
80102aee:	55                   	push   %ebp
80102aef:	89 e5                	mov    %esp,%ebp
80102af1:	83 ec 18             	sub    $0x18,%esp
  struct buf **pp;

  if(!holdingsleep(&b->lock))
80102af4:	8b 45 08             	mov    0x8(%ebp),%eax
80102af7:	83 c0 0c             	add    $0xc,%eax
80102afa:	83 ec 0c             	sub    $0xc,%esp
80102afd:	50                   	push   %eax
80102afe:	e8 85 28 00 00       	call   80105388 <holdingsleep>
80102b03:	83 c4 10             	add    $0x10,%esp
80102b06:	85 c0                	test   %eax,%eax
80102b08:	75 0d                	jne    80102b17 <iderw+0x2d>
    panic("iderw: buf not locked");
80102b0a:	83 ec 0c             	sub    $0xc,%esp
80102b0d:	68 82 97 10 80       	push   $0x80109782
80102b12:	e8 f1 da ff ff       	call   80100608 <panic>
  if((b->flags & (B_VALID|B_DIRTY)) == B_VALID)
80102b17:	8b 45 08             	mov    0x8(%ebp),%eax
80102b1a:	8b 00                	mov    (%eax),%eax
80102b1c:	83 e0 06             	and    $0x6,%eax
80102b1f:	83 f8 02             	cmp    $0x2,%eax
80102b22:	75 0d                	jne    80102b31 <iderw+0x47>
    panic("iderw: nothing to do");
80102b24:	83 ec 0c             	sub    $0xc,%esp
80102b27:	68 98 97 10 80       	push   $0x80109798
80102b2c:	e8 d7 da ff ff       	call   80100608 <panic>
  if(b->dev != 0 && !havedisk1)
80102b31:	8b 45 08             	mov    0x8(%ebp),%eax
80102b34:	8b 40 04             	mov    0x4(%eax),%eax
80102b37:	85 c0                	test   %eax,%eax
80102b39:	74 16                	je     80102b51 <iderw+0x67>
80102b3b:	a1 38 d6 10 80       	mov    0x8010d638,%eax
80102b40:	85 c0                	test   %eax,%eax
80102b42:	75 0d                	jne    80102b51 <iderw+0x67>
    panic("iderw: ide disk 1 not present");
80102b44:	83 ec 0c             	sub    $0xc,%esp
80102b47:	68 ad 97 10 80       	push   $0x801097ad
80102b4c:	e8 b7 da ff ff       	call   80100608 <panic>

  acquire(&idelock);  //DOC:acquire-lock
80102b51:	83 ec 0c             	sub    $0xc,%esp
80102b54:	68 00 d6 10 80       	push   $0x8010d600
80102b59:	e8 e9 28 00 00       	call   80105447 <acquire>
80102b5e:	83 c4 10             	add    $0x10,%esp

  // Append b to idequeue.
  b->qnext = 0;
80102b61:	8b 45 08             	mov    0x8(%ebp),%eax
80102b64:	c7 40 58 00 00 00 00 	movl   $0x0,0x58(%eax)
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80102b6b:	c7 45 f4 34 d6 10 80 	movl   $0x8010d634,-0xc(%ebp)
80102b72:	eb 0b                	jmp    80102b7f <iderw+0x95>
80102b74:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102b77:	8b 00                	mov    (%eax),%eax
80102b79:	83 c0 58             	add    $0x58,%eax
80102b7c:	89 45 f4             	mov    %eax,-0xc(%ebp)
80102b7f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102b82:	8b 00                	mov    (%eax),%eax
80102b84:	85 c0                	test   %eax,%eax
80102b86:	75 ec                	jne    80102b74 <iderw+0x8a>
    ;
  *pp = b;
80102b88:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102b8b:	8b 55 08             	mov    0x8(%ebp),%edx
80102b8e:	89 10                	mov    %edx,(%eax)

  // Start disk if necessary.
  if(idequeue == b)
80102b90:	a1 34 d6 10 80       	mov    0x8010d634,%eax
80102b95:	39 45 08             	cmp    %eax,0x8(%ebp)
80102b98:	75 23                	jne    80102bbd <iderw+0xd3>
    idestart(b);
80102b9a:	83 ec 0c             	sub    $0xc,%esp
80102b9d:	ff 75 08             	pushl  0x8(%ebp)
80102ba0:	e8 d6 fc ff ff       	call   8010287b <idestart>
80102ba5:	83 c4 10             	add    $0x10,%esp

  // Wait for request to finish.
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
80102ba8:	eb 13                	jmp    80102bbd <iderw+0xd3>
    sleep(b, &idelock);
80102baa:	83 ec 08             	sub    $0x8,%esp
80102bad:	68 00 d6 10 80       	push   $0x8010d600
80102bb2:	ff 75 08             	pushl  0x8(%ebp)
80102bb5:	e8 1b 24 00 00       	call   80104fd5 <sleep>
80102bba:	83 c4 10             	add    $0x10,%esp
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
80102bbd:	8b 45 08             	mov    0x8(%ebp),%eax
80102bc0:	8b 00                	mov    (%eax),%eax
80102bc2:	83 e0 06             	and    $0x6,%eax
80102bc5:	83 f8 02             	cmp    $0x2,%eax
80102bc8:	75 e0                	jne    80102baa <iderw+0xc0>
  }


  release(&idelock);
80102bca:	83 ec 0c             	sub    $0xc,%esp
80102bcd:	68 00 d6 10 80       	push   $0x8010d600
80102bd2:	e8 e2 28 00 00       	call   801054b9 <release>
80102bd7:	83 c4 10             	add    $0x10,%esp
}
80102bda:	90                   	nop
80102bdb:	c9                   	leave  
80102bdc:	c3                   	ret    

80102bdd <ioapicread>:
80102bdd:	f3 0f 1e fb          	endbr32 
80102be1:	55                   	push   %ebp
80102be2:	89 e5                	mov    %esp,%ebp
80102be4:	a1 d4 56 11 80       	mov    0x801156d4,%eax
80102be9:	8b 55 08             	mov    0x8(%ebp),%edx
80102bec:	89 10                	mov    %edx,(%eax)
80102bee:	a1 d4 56 11 80       	mov    0x801156d4,%eax
80102bf3:	8b 40 10             	mov    0x10(%eax),%eax
80102bf6:	5d                   	pop    %ebp
80102bf7:	c3                   	ret    

80102bf8 <ioapicwrite>:
80102bf8:	f3 0f 1e fb          	endbr32 
80102bfc:	55                   	push   %ebp
80102bfd:	89 e5                	mov    %esp,%ebp
80102bff:	a1 d4 56 11 80       	mov    0x801156d4,%eax
80102c04:	8b 55 08             	mov    0x8(%ebp),%edx
80102c07:	89 10                	mov    %edx,(%eax)
80102c09:	a1 d4 56 11 80       	mov    0x801156d4,%eax
80102c0e:	8b 55 0c             	mov    0xc(%ebp),%edx
80102c11:	89 50 10             	mov    %edx,0x10(%eax)
80102c14:	90                   	nop
80102c15:	5d                   	pop    %ebp
80102c16:	c3                   	ret    

80102c17 <ioapicinit>:
80102c17:	f3 0f 1e fb          	endbr32 
80102c1b:	55                   	push   %ebp
80102c1c:	89 e5                	mov    %esp,%ebp
80102c1e:	83 ec 18             	sub    $0x18,%esp
80102c21:	c7 05 d4 56 11 80 00 	movl   $0xfec00000,0x801156d4
80102c28:	00 c0 fe 
80102c2b:	6a 01                	push   $0x1
80102c2d:	e8 ab ff ff ff       	call   80102bdd <ioapicread>
80102c32:	83 c4 04             	add    $0x4,%esp
80102c35:	c1 e8 10             	shr    $0x10,%eax
80102c38:	25 ff 00 00 00       	and    $0xff,%eax
80102c3d:	89 45 f0             	mov    %eax,-0x10(%ebp)
80102c40:	6a 00                	push   $0x0
80102c42:	e8 96 ff ff ff       	call   80102bdd <ioapicread>
80102c47:	83 c4 04             	add    $0x4,%esp
80102c4a:	c1 e8 18             	shr    $0x18,%eax
80102c4d:	89 45 ec             	mov    %eax,-0x14(%ebp)
80102c50:	0f b6 05 00 58 11 80 	movzbl 0x80115800,%eax
80102c57:	0f b6 c0             	movzbl %al,%eax
80102c5a:	39 45 ec             	cmp    %eax,-0x14(%ebp)
80102c5d:	74 10                	je     80102c6f <ioapicinit+0x58>
80102c5f:	83 ec 0c             	sub    $0xc,%esp
80102c62:	68 cc 97 10 80       	push   $0x801097cc
80102c67:	e8 ac d7 ff ff       	call   80100418 <cprintf>
80102c6c:	83 c4 10             	add    $0x10,%esp
80102c6f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80102c76:	eb 3f                	jmp    80102cb7 <ioapicinit+0xa0>
80102c78:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102c7b:	83 c0 20             	add    $0x20,%eax
80102c7e:	0d 00 00 01 00       	or     $0x10000,%eax
80102c83:	89 c2                	mov    %eax,%edx
80102c85:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102c88:	83 c0 08             	add    $0x8,%eax
80102c8b:	01 c0                	add    %eax,%eax
80102c8d:	83 ec 08             	sub    $0x8,%esp
80102c90:	52                   	push   %edx
80102c91:	50                   	push   %eax
80102c92:	e8 61 ff ff ff       	call   80102bf8 <ioapicwrite>
80102c97:	83 c4 10             	add    $0x10,%esp
80102c9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102c9d:	83 c0 08             	add    $0x8,%eax
80102ca0:	01 c0                	add    %eax,%eax
80102ca2:	83 c0 01             	add    $0x1,%eax
80102ca5:	83 ec 08             	sub    $0x8,%esp
80102ca8:	6a 00                	push   $0x0
80102caa:	50                   	push   %eax
80102cab:	e8 48 ff ff ff       	call   80102bf8 <ioapicwrite>
80102cb0:	83 c4 10             	add    $0x10,%esp
80102cb3:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80102cb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102cba:	3b 45 f0             	cmp    -0x10(%ebp),%eax
80102cbd:	7e b9                	jle    80102c78 <ioapicinit+0x61>
80102cbf:	90                   	nop
80102cc0:	90                   	nop
80102cc1:	c9                   	leave  
80102cc2:	c3                   	ret    

80102cc3 <ioapicenable>:
80102cc3:	f3 0f 1e fb          	endbr32 
80102cc7:	55                   	push   %ebp
80102cc8:	89 e5                	mov    %esp,%ebp
80102cca:	8b 45 08             	mov    0x8(%ebp),%eax
80102ccd:	83 c0 20             	add    $0x20,%eax
80102cd0:	89 c2                	mov    %eax,%edx
80102cd2:	8b 45 08             	mov    0x8(%ebp),%eax
80102cd5:	83 c0 08             	add    $0x8,%eax
80102cd8:	01 c0                	add    %eax,%eax
80102cda:	52                   	push   %edx
80102cdb:	50                   	push   %eax
80102cdc:	e8 17 ff ff ff       	call   80102bf8 <ioapicwrite>
80102ce1:	83 c4 08             	add    $0x8,%esp
80102ce4:	8b 45 0c             	mov    0xc(%ebp),%eax
80102ce7:	c1 e0 18             	shl    $0x18,%eax
80102cea:	89 c2                	mov    %eax,%edx
80102cec:	8b 45 08             	mov    0x8(%ebp),%eax
80102cef:	83 c0 08             	add    $0x8,%eax
80102cf2:	01 c0                	add    %eax,%eax
80102cf4:	83 c0 01             	add    $0x1,%eax
80102cf7:	52                   	push   %edx
80102cf8:	50                   	push   %eax
80102cf9:	e8 fa fe ff ff       	call   80102bf8 <ioapicwrite>
80102cfe:	83 c4 08             	add    $0x8,%esp
80102d01:	90                   	nop
80102d02:	c9                   	leave  
80102d03:	c3                   	ret    

80102d04 <kinit1>:
80102d04:	f3 0f 1e fb          	endbr32 
80102d08:	55                   	push   %ebp
80102d09:	89 e5                	mov    %esp,%ebp
80102d0b:	83 ec 08             	sub    $0x8,%esp
80102d0e:	83 ec 08             	sub    $0x8,%esp
80102d11:	68 00 98 10 80       	push   $0x80109800
80102d16:	68 e0 56 11 80       	push   $0x801156e0
80102d1b:	e8 01 27 00 00       	call   80105421 <initlock>
80102d20:	83 c4 10             	add    $0x10,%esp
80102d23:	c7 05 14 57 11 80 00 	movl   $0x0,0x80115714
80102d2a:	00 00 00 
80102d2d:	83 ec 08             	sub    $0x8,%esp
80102d30:	ff 75 0c             	pushl  0xc(%ebp)
80102d33:	ff 75 08             	pushl  0x8(%ebp)
80102d36:	e8 2e 00 00 00       	call   80102d69 <freerange>
80102d3b:	83 c4 10             	add    $0x10,%esp
80102d3e:	90                   	nop
80102d3f:	c9                   	leave  
80102d40:	c3                   	ret    

80102d41 <kinit2>:
80102d41:	f3 0f 1e fb          	endbr32 
80102d45:	55                   	push   %ebp
80102d46:	89 e5                	mov    %esp,%ebp
80102d48:	83 ec 08             	sub    $0x8,%esp
80102d4b:	83 ec 08             	sub    $0x8,%esp
80102d4e:	ff 75 0c             	pushl  0xc(%ebp)
80102d51:	ff 75 08             	pushl  0x8(%ebp)
80102d54:	e8 10 00 00 00       	call   80102d69 <freerange>
80102d59:	83 c4 10             	add    $0x10,%esp
80102d5c:	c7 05 14 57 11 80 01 	movl   $0x1,0x80115714
80102d63:	00 00 00 
80102d66:	90                   	nop
80102d67:	c9                   	leave  
80102d68:	c3                   	ret    

80102d69 <freerange>:
80102d69:	f3 0f 1e fb          	endbr32 
80102d6d:	55                   	push   %ebp
80102d6e:	89 e5                	mov    %esp,%ebp
80102d70:	83 ec 18             	sub    $0x18,%esp
80102d73:	8b 45 08             	mov    0x8(%ebp),%eax
80102d76:	05 ff 0f 00 00       	add    $0xfff,%eax
80102d7b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80102d80:	89 45 f4             	mov    %eax,-0xc(%ebp)
80102d83:	eb 15                	jmp    80102d9a <freerange+0x31>
80102d85:	83 ec 0c             	sub    $0xc,%esp
80102d88:	ff 75 f4             	pushl  -0xc(%ebp)
80102d8b:	e8 1b 00 00 00       	call   80102dab <kfree>
80102d90:	83 c4 10             	add    $0x10,%esp
80102d93:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
80102d9a:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102d9d:	05 00 10 00 00       	add    $0x1000,%eax
80102da2:	39 45 0c             	cmp    %eax,0xc(%ebp)
80102da5:	73 de                	jae    80102d85 <freerange+0x1c>
80102da7:	90                   	nop
80102da8:	90                   	nop
80102da9:	c9                   	leave  
80102daa:	c3                   	ret    

80102dab <kfree>:
80102dab:	f3 0f 1e fb          	endbr32 
80102daf:	55                   	push   %ebp
80102db0:	89 e5                	mov    %esp,%ebp
80102db2:	83 ec 18             	sub    $0x18,%esp
80102db5:	8b 45 08             	mov    0x8(%ebp),%eax
80102db8:	25 ff 0f 00 00       	and    $0xfff,%eax
80102dbd:	85 c0                	test   %eax,%eax
80102dbf:	75 18                	jne    80102dd9 <kfree+0x2e>
80102dc1:	81 7d 08 48 96 11 80 	cmpl   $0x80119648,0x8(%ebp)
80102dc8:	72 0f                	jb     80102dd9 <kfree+0x2e>
80102dca:	8b 45 08             	mov    0x8(%ebp),%eax
80102dcd:	05 00 00 00 80       	add    $0x80000000,%eax
80102dd2:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
80102dd7:	76 0d                	jbe    80102de6 <kfree+0x3b>
80102dd9:	83 ec 0c             	sub    $0xc,%esp
80102ddc:	68 05 98 10 80       	push   $0x80109805
80102de1:	e8 22 d8 ff ff       	call   80100608 <panic>
80102de6:	83 ec 04             	sub    $0x4,%esp
80102de9:	68 00 10 00 00       	push   $0x1000
80102dee:	6a 01                	push   $0x1
80102df0:	ff 75 08             	pushl  0x8(%ebp)
80102df3:	e8 ee 28 00 00       	call   801056e6 <memset>
80102df8:	83 c4 10             	add    $0x10,%esp
80102dfb:	a1 14 57 11 80       	mov    0x80115714,%eax
80102e00:	85 c0                	test   %eax,%eax
80102e02:	74 10                	je     80102e14 <kfree+0x69>
80102e04:	83 ec 0c             	sub    $0xc,%esp
80102e07:	68 e0 56 11 80       	push   $0x801156e0
80102e0c:	e8 36 26 00 00       	call   80105447 <acquire>
80102e11:	83 c4 10             	add    $0x10,%esp
80102e14:	8b 45 08             	mov    0x8(%ebp),%eax
80102e17:	89 45 f4             	mov    %eax,-0xc(%ebp)
80102e1a:	8b 15 18 57 11 80    	mov    0x80115718,%edx
80102e20:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102e23:	89 10                	mov    %edx,(%eax)
80102e25:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102e28:	a3 18 57 11 80       	mov    %eax,0x80115718
80102e2d:	a1 14 57 11 80       	mov    0x80115714,%eax
80102e32:	85 c0                	test   %eax,%eax
80102e34:	74 10                	je     80102e46 <kfree+0x9b>
80102e36:	83 ec 0c             	sub    $0xc,%esp
80102e39:	68 e0 56 11 80       	push   $0x801156e0
80102e3e:	e8 76 26 00 00       	call   801054b9 <release>
80102e43:	83 c4 10             	add    $0x10,%esp
80102e46:	90                   	nop
80102e47:	c9                   	leave  
80102e48:	c3                   	ret    

80102e49 <kalloc>:
80102e49:	f3 0f 1e fb          	endbr32 
80102e4d:	55                   	push   %ebp
80102e4e:	89 e5                	mov    %esp,%ebp
80102e50:	83 ec 18             	sub    $0x18,%esp
80102e53:	a1 14 57 11 80       	mov    0x80115714,%eax
80102e58:	85 c0                	test   %eax,%eax
80102e5a:	74 10                	je     80102e6c <kalloc+0x23>
80102e5c:	83 ec 0c             	sub    $0xc,%esp
80102e5f:	68 e0 56 11 80       	push   $0x801156e0
80102e64:	e8 de 25 00 00       	call   80105447 <acquire>
80102e69:	83 c4 10             	add    $0x10,%esp
80102e6c:	a1 18 57 11 80       	mov    0x80115718,%eax
80102e71:	89 45 f4             	mov    %eax,-0xc(%ebp)
80102e74:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80102e78:	74 0a                	je     80102e84 <kalloc+0x3b>
80102e7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102e7d:	8b 00                	mov    (%eax),%eax
80102e7f:	a3 18 57 11 80       	mov    %eax,0x80115718
80102e84:	a1 14 57 11 80       	mov    0x80115714,%eax
80102e89:	85 c0                	test   %eax,%eax
80102e8b:	74 10                	je     80102e9d <kalloc+0x54>
80102e8d:	83 ec 0c             	sub    $0xc,%esp
80102e90:	68 e0 56 11 80       	push   $0x801156e0
80102e95:	e8 1f 26 00 00       	call   801054b9 <release>
80102e9a:	83 c4 10             	add    $0x10,%esp
80102e9d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102ea0:	8d 90 00 00 00 80    	lea    -0x80000000(%eax),%edx
80102ea6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102ea9:	05 00 00 00 80       	add    $0x80000000,%eax
80102eae:	c1 e8 0c             	shr    $0xc,%eax
80102eb1:	83 ec 04             	sub    $0x4,%esp
80102eb4:	52                   	push   %edx
80102eb5:	50                   	push   %eax
80102eb6:	68 0c 98 10 80       	push   $0x8010980c
80102ebb:	e8 58 d5 ff ff       	call   80100418 <cprintf>
80102ec0:	83 c4 10             	add    $0x10,%esp
80102ec3:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102ec6:	c9                   	leave  
80102ec7:	c3                   	ret    

80102ec8 <inb>:
80102ec8:	55                   	push   %ebp
80102ec9:	89 e5                	mov    %esp,%ebp
80102ecb:	83 ec 14             	sub    $0x14,%esp
80102ece:	8b 45 08             	mov    0x8(%ebp),%eax
80102ed1:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
80102ed5:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
80102ed9:	89 c2                	mov    %eax,%edx
80102edb:	ec                   	in     (%dx),%al
80102edc:	88 45 ff             	mov    %al,-0x1(%ebp)
80102edf:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
80102ee3:	c9                   	leave  
80102ee4:	c3                   	ret    

80102ee5 <kbdgetc>:
80102ee5:	f3 0f 1e fb          	endbr32 
80102ee9:	55                   	push   %ebp
80102eea:	89 e5                	mov    %esp,%ebp
80102eec:	83 ec 10             	sub    $0x10,%esp
80102eef:	6a 64                	push   $0x64
80102ef1:	e8 d2 ff ff ff       	call   80102ec8 <inb>
80102ef6:	83 c4 04             	add    $0x4,%esp
80102ef9:	0f b6 c0             	movzbl %al,%eax
80102efc:	89 45 f4             	mov    %eax,-0xc(%ebp)
80102eff:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102f02:	83 e0 01             	and    $0x1,%eax
80102f05:	85 c0                	test   %eax,%eax
80102f07:	75 0a                	jne    80102f13 <kbdgetc+0x2e>
80102f09:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102f0e:	e9 23 01 00 00       	jmp    80103036 <kbdgetc+0x151>
80102f13:	6a 60                	push   $0x60
80102f15:	e8 ae ff ff ff       	call   80102ec8 <inb>
80102f1a:	83 c4 04             	add    $0x4,%esp
80102f1d:	0f b6 c0             	movzbl %al,%eax
80102f20:	89 45 fc             	mov    %eax,-0x4(%ebp)
80102f23:	81 7d fc e0 00 00 00 	cmpl   $0xe0,-0x4(%ebp)
80102f2a:	75 17                	jne    80102f43 <kbdgetc+0x5e>
80102f2c:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102f31:	83 c8 40             	or     $0x40,%eax
80102f34:	a3 3c d6 10 80       	mov    %eax,0x8010d63c
80102f39:	b8 00 00 00 00       	mov    $0x0,%eax
80102f3e:	e9 f3 00 00 00       	jmp    80103036 <kbdgetc+0x151>
80102f43:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102f46:	25 80 00 00 00       	and    $0x80,%eax
80102f4b:	85 c0                	test   %eax,%eax
80102f4d:	74 45                	je     80102f94 <kbdgetc+0xaf>
80102f4f:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102f54:	83 e0 40             	and    $0x40,%eax
80102f57:	85 c0                	test   %eax,%eax
80102f59:	75 08                	jne    80102f63 <kbdgetc+0x7e>
80102f5b:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102f5e:	83 e0 7f             	and    $0x7f,%eax
80102f61:	eb 03                	jmp    80102f66 <kbdgetc+0x81>
80102f63:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102f66:	89 45 fc             	mov    %eax,-0x4(%ebp)
80102f69:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102f6c:	05 20 b0 10 80       	add    $0x8010b020,%eax
80102f71:	0f b6 00             	movzbl (%eax),%eax
80102f74:	83 c8 40             	or     $0x40,%eax
80102f77:	0f b6 c0             	movzbl %al,%eax
80102f7a:	f7 d0                	not    %eax
80102f7c:	89 c2                	mov    %eax,%edx
80102f7e:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102f83:	21 d0                	and    %edx,%eax
80102f85:	a3 3c d6 10 80       	mov    %eax,0x8010d63c
80102f8a:	b8 00 00 00 00       	mov    $0x0,%eax
80102f8f:	e9 a2 00 00 00       	jmp    80103036 <kbdgetc+0x151>
80102f94:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102f99:	83 e0 40             	and    $0x40,%eax
80102f9c:	85 c0                	test   %eax,%eax
80102f9e:	74 14                	je     80102fb4 <kbdgetc+0xcf>
80102fa0:	81 4d fc 80 00 00 00 	orl    $0x80,-0x4(%ebp)
80102fa7:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102fac:	83 e0 bf             	and    $0xffffffbf,%eax
80102faf:	a3 3c d6 10 80       	mov    %eax,0x8010d63c
80102fb4:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102fb7:	05 20 b0 10 80       	add    $0x8010b020,%eax
80102fbc:	0f b6 00             	movzbl (%eax),%eax
80102fbf:	0f b6 d0             	movzbl %al,%edx
80102fc2:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102fc7:	09 d0                	or     %edx,%eax
80102fc9:	a3 3c d6 10 80       	mov    %eax,0x8010d63c
80102fce:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102fd1:	05 20 b1 10 80       	add    $0x8010b120,%eax
80102fd6:	0f b6 00             	movzbl (%eax),%eax
80102fd9:	0f b6 d0             	movzbl %al,%edx
80102fdc:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102fe1:	31 d0                	xor    %edx,%eax
80102fe3:	a3 3c d6 10 80       	mov    %eax,0x8010d63c
80102fe8:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
80102fed:	83 e0 03             	and    $0x3,%eax
80102ff0:	8b 14 85 20 b5 10 80 	mov    -0x7fef4ae0(,%eax,4),%edx
80102ff7:	8b 45 fc             	mov    -0x4(%ebp),%eax
80102ffa:	01 d0                	add    %edx,%eax
80102ffc:	0f b6 00             	movzbl (%eax),%eax
80102fff:	0f b6 c0             	movzbl %al,%eax
80103002:	89 45 f8             	mov    %eax,-0x8(%ebp)
80103005:	a1 3c d6 10 80       	mov    0x8010d63c,%eax
8010300a:	83 e0 08             	and    $0x8,%eax
8010300d:	85 c0                	test   %eax,%eax
8010300f:	74 22                	je     80103033 <kbdgetc+0x14e>
80103011:	83 7d f8 60          	cmpl   $0x60,-0x8(%ebp)
80103015:	76 0c                	jbe    80103023 <kbdgetc+0x13e>
80103017:	83 7d f8 7a          	cmpl   $0x7a,-0x8(%ebp)
8010301b:	77 06                	ja     80103023 <kbdgetc+0x13e>
8010301d:	83 6d f8 20          	subl   $0x20,-0x8(%ebp)
80103021:	eb 10                	jmp    80103033 <kbdgetc+0x14e>
80103023:	83 7d f8 40          	cmpl   $0x40,-0x8(%ebp)
80103027:	76 0a                	jbe    80103033 <kbdgetc+0x14e>
80103029:	83 7d f8 5a          	cmpl   $0x5a,-0x8(%ebp)
8010302d:	77 04                	ja     80103033 <kbdgetc+0x14e>
8010302f:	83 45 f8 20          	addl   $0x20,-0x8(%ebp)
80103033:	8b 45 f8             	mov    -0x8(%ebp),%eax
80103036:	c9                   	leave  
80103037:	c3                   	ret    

80103038 <kbdintr>:
80103038:	f3 0f 1e fb          	endbr32 
8010303c:	55                   	push   %ebp
8010303d:	89 e5                	mov    %esp,%ebp
8010303f:	83 ec 08             	sub    $0x8,%esp
80103042:	83 ec 0c             	sub    $0xc,%esp
80103045:	68 e5 2e 10 80       	push   $0x80102ee5
8010304a:	e8 59 d8 ff ff       	call   801008a8 <consoleintr>
8010304f:	83 c4 10             	add    $0x10,%esp
80103052:	90                   	nop
80103053:	c9                   	leave  
80103054:	c3                   	ret    

80103055 <inb>:
80103055:	55                   	push   %ebp
80103056:	89 e5                	mov    %esp,%ebp
80103058:	83 ec 14             	sub    $0x14,%esp
8010305b:	8b 45 08             	mov    0x8(%ebp),%eax
8010305e:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
80103062:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
80103066:	89 c2                	mov    %eax,%edx
80103068:	ec                   	in     (%dx),%al
80103069:	88 45 ff             	mov    %al,-0x1(%ebp)
8010306c:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
80103070:	c9                   	leave  
80103071:	c3                   	ret    

80103072 <outb>:
80103072:	55                   	push   %ebp
80103073:	89 e5                	mov    %esp,%ebp
80103075:	83 ec 08             	sub    $0x8,%esp
80103078:	8b 45 08             	mov    0x8(%ebp),%eax
8010307b:	8b 55 0c             	mov    0xc(%ebp),%edx
8010307e:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80103082:	89 d0                	mov    %edx,%eax
80103084:	88 45 f8             	mov    %al,-0x8(%ebp)
80103087:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
8010308b:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
8010308f:	ee                   	out    %al,(%dx)
80103090:	90                   	nop
80103091:	c9                   	leave  
80103092:	c3                   	ret    

80103093 <lapicw>:
80103093:	f3 0f 1e fb          	endbr32 
80103097:	55                   	push   %ebp
80103098:	89 e5                	mov    %esp,%ebp
8010309a:	a1 1c 57 11 80       	mov    0x8011571c,%eax
8010309f:	8b 55 08             	mov    0x8(%ebp),%edx
801030a2:	c1 e2 02             	shl    $0x2,%edx
801030a5:	01 c2                	add    %eax,%edx
801030a7:	8b 45 0c             	mov    0xc(%ebp),%eax
801030aa:	89 02                	mov    %eax,(%edx)
801030ac:	a1 1c 57 11 80       	mov    0x8011571c,%eax
801030b1:	83 c0 20             	add    $0x20,%eax
801030b4:	8b 00                	mov    (%eax),%eax
801030b6:	90                   	nop
801030b7:	5d                   	pop    %ebp
801030b8:	c3                   	ret    

801030b9 <lapicinit>:
801030b9:	f3 0f 1e fb          	endbr32 
801030bd:	55                   	push   %ebp
801030be:	89 e5                	mov    %esp,%ebp
801030c0:	a1 1c 57 11 80       	mov    0x8011571c,%eax
801030c5:	85 c0                	test   %eax,%eax
801030c7:	0f 84 0c 01 00 00    	je     801031d9 <lapicinit+0x120>
801030cd:	68 3f 01 00 00       	push   $0x13f
801030d2:	6a 3c                	push   $0x3c
801030d4:	e8 ba ff ff ff       	call   80103093 <lapicw>
801030d9:	83 c4 08             	add    $0x8,%esp
801030dc:	6a 0b                	push   $0xb
801030de:	68 f8 00 00 00       	push   $0xf8
801030e3:	e8 ab ff ff ff       	call   80103093 <lapicw>
801030e8:	83 c4 08             	add    $0x8,%esp
801030eb:	68 20 00 02 00       	push   $0x20020
801030f0:	68 c8 00 00 00       	push   $0xc8
801030f5:	e8 99 ff ff ff       	call   80103093 <lapicw>
801030fa:	83 c4 08             	add    $0x8,%esp
801030fd:	68 80 96 98 00       	push   $0x989680
80103102:	68 e0 00 00 00       	push   $0xe0
80103107:	e8 87 ff ff ff       	call   80103093 <lapicw>
8010310c:	83 c4 08             	add    $0x8,%esp
8010310f:	68 00 00 01 00       	push   $0x10000
80103114:	68 d4 00 00 00       	push   $0xd4
80103119:	e8 75 ff ff ff       	call   80103093 <lapicw>
8010311e:	83 c4 08             	add    $0x8,%esp
80103121:	68 00 00 01 00       	push   $0x10000
80103126:	68 d8 00 00 00       	push   $0xd8
8010312b:	e8 63 ff ff ff       	call   80103093 <lapicw>
80103130:	83 c4 08             	add    $0x8,%esp
80103133:	a1 1c 57 11 80       	mov    0x8011571c,%eax
80103138:	83 c0 30             	add    $0x30,%eax
8010313b:	8b 00                	mov    (%eax),%eax
8010313d:	c1 e8 10             	shr    $0x10,%eax
80103140:	25 fc 00 00 00       	and    $0xfc,%eax
80103145:	85 c0                	test   %eax,%eax
80103147:	74 12                	je     8010315b <lapicinit+0xa2>
80103149:	68 00 00 01 00       	push   $0x10000
8010314e:	68 d0 00 00 00       	push   $0xd0
80103153:	e8 3b ff ff ff       	call   80103093 <lapicw>
80103158:	83 c4 08             	add    $0x8,%esp
8010315b:	6a 33                	push   $0x33
8010315d:	68 dc 00 00 00       	push   $0xdc
80103162:	e8 2c ff ff ff       	call   80103093 <lapicw>
80103167:	83 c4 08             	add    $0x8,%esp
8010316a:	6a 00                	push   $0x0
8010316c:	68 a0 00 00 00       	push   $0xa0
80103171:	e8 1d ff ff ff       	call   80103093 <lapicw>
80103176:	83 c4 08             	add    $0x8,%esp
80103179:	6a 00                	push   $0x0
8010317b:	68 a0 00 00 00       	push   $0xa0
80103180:	e8 0e ff ff ff       	call   80103093 <lapicw>
80103185:	83 c4 08             	add    $0x8,%esp
80103188:	6a 00                	push   $0x0
8010318a:	6a 2c                	push   $0x2c
8010318c:	e8 02 ff ff ff       	call   80103093 <lapicw>
80103191:	83 c4 08             	add    $0x8,%esp
80103194:	6a 00                	push   $0x0
80103196:	68 c4 00 00 00       	push   $0xc4
8010319b:	e8 f3 fe ff ff       	call   80103093 <lapicw>
801031a0:	83 c4 08             	add    $0x8,%esp
801031a3:	68 00 85 08 00       	push   $0x88500
801031a8:	68 c0 00 00 00       	push   $0xc0
801031ad:	e8 e1 fe ff ff       	call   80103093 <lapicw>
801031b2:	83 c4 08             	add    $0x8,%esp
801031b5:	90                   	nop
801031b6:	a1 1c 57 11 80       	mov    0x8011571c,%eax
801031bb:	05 00 03 00 00       	add    $0x300,%eax
801031c0:	8b 00                	mov    (%eax),%eax
801031c2:	25 00 10 00 00       	and    $0x1000,%eax
801031c7:	85 c0                	test   %eax,%eax
801031c9:	75 eb                	jne    801031b6 <lapicinit+0xfd>
801031cb:	6a 00                	push   $0x0
801031cd:	6a 20                	push   $0x20
801031cf:	e8 bf fe ff ff       	call   80103093 <lapicw>
801031d4:	83 c4 08             	add    $0x8,%esp
801031d7:	eb 01                	jmp    801031da <lapicinit+0x121>
801031d9:	90                   	nop
801031da:	c9                   	leave  
801031db:	c3                   	ret    

801031dc <lapicid>:
801031dc:	f3 0f 1e fb          	endbr32 
801031e0:	55                   	push   %ebp
801031e1:	89 e5                	mov    %esp,%ebp
801031e3:	a1 1c 57 11 80       	mov    0x8011571c,%eax
801031e8:	85 c0                	test   %eax,%eax
801031ea:	75 07                	jne    801031f3 <lapicid+0x17>
801031ec:	b8 00 00 00 00       	mov    $0x0,%eax
801031f1:	eb 0d                	jmp    80103200 <lapicid+0x24>
801031f3:	a1 1c 57 11 80       	mov    0x8011571c,%eax
801031f8:	83 c0 20             	add    $0x20,%eax
801031fb:	8b 00                	mov    (%eax),%eax
801031fd:	c1 e8 18             	shr    $0x18,%eax
80103200:	5d                   	pop    %ebp
80103201:	c3                   	ret    

80103202 <lapiceoi>:
80103202:	f3 0f 1e fb          	endbr32 
80103206:	55                   	push   %ebp
80103207:	89 e5                	mov    %esp,%ebp
80103209:	a1 1c 57 11 80       	mov    0x8011571c,%eax
8010320e:	85 c0                	test   %eax,%eax
80103210:	74 0c                	je     8010321e <lapiceoi+0x1c>
80103212:	6a 00                	push   $0x0
80103214:	6a 2c                	push   $0x2c
80103216:	e8 78 fe ff ff       	call   80103093 <lapicw>
8010321b:	83 c4 08             	add    $0x8,%esp
8010321e:	90                   	nop
8010321f:	c9                   	leave  
80103220:	c3                   	ret    

80103221 <microdelay>:
80103221:	f3 0f 1e fb          	endbr32 
80103225:	55                   	push   %ebp
80103226:	89 e5                	mov    %esp,%ebp
80103228:	90                   	nop
80103229:	5d                   	pop    %ebp
8010322a:	c3                   	ret    

8010322b <lapicstartap>:
8010322b:	f3 0f 1e fb          	endbr32 
8010322f:	55                   	push   %ebp
80103230:	89 e5                	mov    %esp,%ebp
80103232:	83 ec 14             	sub    $0x14,%esp
80103235:	8b 45 08             	mov    0x8(%ebp),%eax
80103238:	88 45 ec             	mov    %al,-0x14(%ebp)
8010323b:	6a 0f                	push   $0xf
8010323d:	6a 70                	push   $0x70
8010323f:	e8 2e fe ff ff       	call   80103072 <outb>
80103244:	83 c4 08             	add    $0x8,%esp
80103247:	6a 0a                	push   $0xa
80103249:	6a 71                	push   $0x71
8010324b:	e8 22 fe ff ff       	call   80103072 <outb>
80103250:	83 c4 08             	add    $0x8,%esp
80103253:	c7 45 f8 67 04 00 80 	movl   $0x80000467,-0x8(%ebp)
8010325a:	8b 45 f8             	mov    -0x8(%ebp),%eax
8010325d:	66 c7 00 00 00       	movw   $0x0,(%eax)
80103262:	8b 45 0c             	mov    0xc(%ebp),%eax
80103265:	c1 e8 04             	shr    $0x4,%eax
80103268:	89 c2                	mov    %eax,%edx
8010326a:	8b 45 f8             	mov    -0x8(%ebp),%eax
8010326d:	83 c0 02             	add    $0x2,%eax
80103270:	66 89 10             	mov    %dx,(%eax)
80103273:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
80103277:	c1 e0 18             	shl    $0x18,%eax
8010327a:	50                   	push   %eax
8010327b:	68 c4 00 00 00       	push   $0xc4
80103280:	e8 0e fe ff ff       	call   80103093 <lapicw>
80103285:	83 c4 08             	add    $0x8,%esp
80103288:	68 00 c5 00 00       	push   $0xc500
8010328d:	68 c0 00 00 00       	push   $0xc0
80103292:	e8 fc fd ff ff       	call   80103093 <lapicw>
80103297:	83 c4 08             	add    $0x8,%esp
8010329a:	68 c8 00 00 00       	push   $0xc8
8010329f:	e8 7d ff ff ff       	call   80103221 <microdelay>
801032a4:	83 c4 04             	add    $0x4,%esp
801032a7:	68 00 85 00 00       	push   $0x8500
801032ac:	68 c0 00 00 00       	push   $0xc0
801032b1:	e8 dd fd ff ff       	call   80103093 <lapicw>
801032b6:	83 c4 08             	add    $0x8,%esp
801032b9:	6a 64                	push   $0x64
801032bb:	e8 61 ff ff ff       	call   80103221 <microdelay>
801032c0:	83 c4 04             	add    $0x4,%esp
801032c3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
801032ca:	eb 3d                	jmp    80103309 <lapicstartap+0xde>
801032cc:	0f b6 45 ec          	movzbl -0x14(%ebp),%eax
801032d0:	c1 e0 18             	shl    $0x18,%eax
801032d3:	50                   	push   %eax
801032d4:	68 c4 00 00 00       	push   $0xc4
801032d9:	e8 b5 fd ff ff       	call   80103093 <lapicw>
801032de:	83 c4 08             	add    $0x8,%esp
801032e1:	8b 45 0c             	mov    0xc(%ebp),%eax
801032e4:	c1 e8 0c             	shr    $0xc,%eax
801032e7:	80 cc 06             	or     $0x6,%ah
801032ea:	50                   	push   %eax
801032eb:	68 c0 00 00 00       	push   $0xc0
801032f0:	e8 9e fd ff ff       	call   80103093 <lapicw>
801032f5:	83 c4 08             	add    $0x8,%esp
801032f8:	68 c8 00 00 00       	push   $0xc8
801032fd:	e8 1f ff ff ff       	call   80103221 <microdelay>
80103302:	83 c4 04             	add    $0x4,%esp
80103305:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
80103309:	83 7d fc 01          	cmpl   $0x1,-0x4(%ebp)
8010330d:	7e bd                	jle    801032cc <lapicstartap+0xa1>
8010330f:	90                   	nop
80103310:	90                   	nop
80103311:	c9                   	leave  
80103312:	c3                   	ret    

80103313 <cmos_read>:
80103313:	f3 0f 1e fb          	endbr32 
80103317:	55                   	push   %ebp
80103318:	89 e5                	mov    %esp,%ebp
8010331a:	8b 45 08             	mov    0x8(%ebp),%eax
8010331d:	0f b6 c0             	movzbl %al,%eax
80103320:	50                   	push   %eax
80103321:	6a 70                	push   $0x70
80103323:	e8 4a fd ff ff       	call   80103072 <outb>
80103328:	83 c4 08             	add    $0x8,%esp
8010332b:	68 c8 00 00 00       	push   $0xc8
80103330:	e8 ec fe ff ff       	call   80103221 <microdelay>
80103335:	83 c4 04             	add    $0x4,%esp
80103338:	6a 71                	push   $0x71
8010333a:	e8 16 fd ff ff       	call   80103055 <inb>
8010333f:	83 c4 04             	add    $0x4,%esp
80103342:	0f b6 c0             	movzbl %al,%eax
80103345:	c9                   	leave  
80103346:	c3                   	ret    

80103347 <fill_rtcdate>:
80103347:	f3 0f 1e fb          	endbr32 
8010334b:	55                   	push   %ebp
8010334c:	89 e5                	mov    %esp,%ebp
8010334e:	6a 00                	push   $0x0
80103350:	e8 be ff ff ff       	call   80103313 <cmos_read>
80103355:	83 c4 04             	add    $0x4,%esp
80103358:	8b 55 08             	mov    0x8(%ebp),%edx
8010335b:	89 02                	mov    %eax,(%edx)
8010335d:	6a 02                	push   $0x2
8010335f:	e8 af ff ff ff       	call   80103313 <cmos_read>
80103364:	83 c4 04             	add    $0x4,%esp
80103367:	8b 55 08             	mov    0x8(%ebp),%edx
8010336a:	89 42 04             	mov    %eax,0x4(%edx)
8010336d:	6a 04                	push   $0x4
8010336f:	e8 9f ff ff ff       	call   80103313 <cmos_read>
80103374:	83 c4 04             	add    $0x4,%esp
80103377:	8b 55 08             	mov    0x8(%ebp),%edx
8010337a:	89 42 08             	mov    %eax,0x8(%edx)
8010337d:	6a 07                	push   $0x7
8010337f:	e8 8f ff ff ff       	call   80103313 <cmos_read>
80103384:	83 c4 04             	add    $0x4,%esp
80103387:	8b 55 08             	mov    0x8(%ebp),%edx
8010338a:	89 42 0c             	mov    %eax,0xc(%edx)
8010338d:	6a 08                	push   $0x8
8010338f:	e8 7f ff ff ff       	call   80103313 <cmos_read>
80103394:	83 c4 04             	add    $0x4,%esp
80103397:	8b 55 08             	mov    0x8(%ebp),%edx
8010339a:	89 42 10             	mov    %eax,0x10(%edx)
8010339d:	6a 09                	push   $0x9
8010339f:	e8 6f ff ff ff       	call   80103313 <cmos_read>
801033a4:	83 c4 04             	add    $0x4,%esp
801033a7:	8b 55 08             	mov    0x8(%ebp),%edx
801033aa:	89 42 14             	mov    %eax,0x14(%edx)
801033ad:	90                   	nop
801033ae:	c9                   	leave  
801033af:	c3                   	ret    

801033b0 <cmostime>:
801033b0:	f3 0f 1e fb          	endbr32 
801033b4:	55                   	push   %ebp
801033b5:	89 e5                	mov    %esp,%ebp
801033b7:	83 ec 48             	sub    $0x48,%esp
801033ba:	6a 0b                	push   $0xb
801033bc:	e8 52 ff ff ff       	call   80103313 <cmos_read>
801033c1:	83 c4 04             	add    $0x4,%esp
801033c4:	89 45 f4             	mov    %eax,-0xc(%ebp)
801033c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801033ca:	83 e0 04             	and    $0x4,%eax
801033cd:	85 c0                	test   %eax,%eax
801033cf:	0f 94 c0             	sete   %al
801033d2:	0f b6 c0             	movzbl %al,%eax
801033d5:	89 45 f0             	mov    %eax,-0x10(%ebp)
801033d8:	8d 45 d8             	lea    -0x28(%ebp),%eax
801033db:	50                   	push   %eax
801033dc:	e8 66 ff ff ff       	call   80103347 <fill_rtcdate>
801033e1:	83 c4 04             	add    $0x4,%esp
801033e4:	6a 0a                	push   $0xa
801033e6:	e8 28 ff ff ff       	call   80103313 <cmos_read>
801033eb:	83 c4 04             	add    $0x4,%esp
801033ee:	25 80 00 00 00       	and    $0x80,%eax
801033f3:	85 c0                	test   %eax,%eax
801033f5:	75 27                	jne    8010341e <cmostime+0x6e>
801033f7:	8d 45 c0             	lea    -0x40(%ebp),%eax
801033fa:	50                   	push   %eax
801033fb:	e8 47 ff ff ff       	call   80103347 <fill_rtcdate>
80103400:	83 c4 04             	add    $0x4,%esp
80103403:	83 ec 04             	sub    $0x4,%esp
80103406:	6a 18                	push   $0x18
80103408:	8d 45 c0             	lea    -0x40(%ebp),%eax
8010340b:	50                   	push   %eax
8010340c:	8d 45 d8             	lea    -0x28(%ebp),%eax
8010340f:	50                   	push   %eax
80103410:	e8 3c 23 00 00       	call   80105751 <memcmp>
80103415:	83 c4 10             	add    $0x10,%esp
80103418:	85 c0                	test   %eax,%eax
8010341a:	74 05                	je     80103421 <cmostime+0x71>
8010341c:	eb ba                	jmp    801033d8 <cmostime+0x28>
8010341e:	90                   	nop
8010341f:	eb b7                	jmp    801033d8 <cmostime+0x28>
80103421:	90                   	nop
80103422:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80103426:	0f 84 b4 00 00 00    	je     801034e0 <cmostime+0x130>
8010342c:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010342f:	c1 e8 04             	shr    $0x4,%eax
80103432:	89 c2                	mov    %eax,%edx
80103434:	89 d0                	mov    %edx,%eax
80103436:	c1 e0 02             	shl    $0x2,%eax
80103439:	01 d0                	add    %edx,%eax
8010343b:	01 c0                	add    %eax,%eax
8010343d:	89 c2                	mov    %eax,%edx
8010343f:	8b 45 d8             	mov    -0x28(%ebp),%eax
80103442:	83 e0 0f             	and    $0xf,%eax
80103445:	01 d0                	add    %edx,%eax
80103447:	89 45 d8             	mov    %eax,-0x28(%ebp)
8010344a:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010344d:	c1 e8 04             	shr    $0x4,%eax
80103450:	89 c2                	mov    %eax,%edx
80103452:	89 d0                	mov    %edx,%eax
80103454:	c1 e0 02             	shl    $0x2,%eax
80103457:	01 d0                	add    %edx,%eax
80103459:	01 c0                	add    %eax,%eax
8010345b:	89 c2                	mov    %eax,%edx
8010345d:	8b 45 dc             	mov    -0x24(%ebp),%eax
80103460:	83 e0 0f             	and    $0xf,%eax
80103463:	01 d0                	add    %edx,%eax
80103465:	89 45 dc             	mov    %eax,-0x24(%ebp)
80103468:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010346b:	c1 e8 04             	shr    $0x4,%eax
8010346e:	89 c2                	mov    %eax,%edx
80103470:	89 d0                	mov    %edx,%eax
80103472:	c1 e0 02             	shl    $0x2,%eax
80103475:	01 d0                	add    %edx,%eax
80103477:	01 c0                	add    %eax,%eax
80103479:	89 c2                	mov    %eax,%edx
8010347b:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010347e:	83 e0 0f             	and    $0xf,%eax
80103481:	01 d0                	add    %edx,%eax
80103483:	89 45 e0             	mov    %eax,-0x20(%ebp)
80103486:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80103489:	c1 e8 04             	shr    $0x4,%eax
8010348c:	89 c2                	mov    %eax,%edx
8010348e:	89 d0                	mov    %edx,%eax
80103490:	c1 e0 02             	shl    $0x2,%eax
80103493:	01 d0                	add    %edx,%eax
80103495:	01 c0                	add    %eax,%eax
80103497:	89 c2                	mov    %eax,%edx
80103499:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010349c:	83 e0 0f             	and    $0xf,%eax
8010349f:	01 d0                	add    %edx,%eax
801034a1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801034a4:	8b 45 e8             	mov    -0x18(%ebp),%eax
801034a7:	c1 e8 04             	shr    $0x4,%eax
801034aa:	89 c2                	mov    %eax,%edx
801034ac:	89 d0                	mov    %edx,%eax
801034ae:	c1 e0 02             	shl    $0x2,%eax
801034b1:	01 d0                	add    %edx,%eax
801034b3:	01 c0                	add    %eax,%eax
801034b5:	89 c2                	mov    %eax,%edx
801034b7:	8b 45 e8             	mov    -0x18(%ebp),%eax
801034ba:	83 e0 0f             	and    $0xf,%eax
801034bd:	01 d0                	add    %edx,%eax
801034bf:	89 45 e8             	mov    %eax,-0x18(%ebp)
801034c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
801034c5:	c1 e8 04             	shr    $0x4,%eax
801034c8:	89 c2                	mov    %eax,%edx
801034ca:	89 d0                	mov    %edx,%eax
801034cc:	c1 e0 02             	shl    $0x2,%eax
801034cf:	01 d0                	add    %edx,%eax
801034d1:	01 c0                	add    %eax,%eax
801034d3:	89 c2                	mov    %eax,%edx
801034d5:	8b 45 ec             	mov    -0x14(%ebp),%eax
801034d8:	83 e0 0f             	and    $0xf,%eax
801034db:	01 d0                	add    %edx,%eax
801034dd:	89 45 ec             	mov    %eax,-0x14(%ebp)
801034e0:	8b 45 08             	mov    0x8(%ebp),%eax
801034e3:	8b 55 d8             	mov    -0x28(%ebp),%edx
801034e6:	89 10                	mov    %edx,(%eax)
801034e8:	8b 55 dc             	mov    -0x24(%ebp),%edx
801034eb:	89 50 04             	mov    %edx,0x4(%eax)
801034ee:	8b 55 e0             	mov    -0x20(%ebp),%edx
801034f1:	89 50 08             	mov    %edx,0x8(%eax)
801034f4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801034f7:	89 50 0c             	mov    %edx,0xc(%eax)
801034fa:	8b 55 e8             	mov    -0x18(%ebp),%edx
801034fd:	89 50 10             	mov    %edx,0x10(%eax)
80103500:	8b 55 ec             	mov    -0x14(%ebp),%edx
80103503:	89 50 14             	mov    %edx,0x14(%eax)
80103506:	8b 45 08             	mov    0x8(%ebp),%eax
80103509:	8b 40 14             	mov    0x14(%eax),%eax
8010350c:	8d 90 d0 07 00 00    	lea    0x7d0(%eax),%edx
80103512:	8b 45 08             	mov    0x8(%ebp),%eax
80103515:	89 50 14             	mov    %edx,0x14(%eax)
80103518:	90                   	nop
80103519:	c9                   	leave  
8010351a:	c3                   	ret    

8010351b <initlog>:
8010351b:	f3 0f 1e fb          	endbr32 
8010351f:	55                   	push   %ebp
80103520:	89 e5                	mov    %esp,%ebp
80103522:	83 ec 28             	sub    $0x28,%esp
80103525:	83 ec 08             	sub    $0x8,%esp
80103528:	68 2c 98 10 80       	push   $0x8010982c
8010352d:	68 20 57 11 80       	push   $0x80115720
80103532:	e8 ea 1e 00 00       	call   80105421 <initlock>
80103537:	83 c4 10             	add    $0x10,%esp
8010353a:	83 ec 08             	sub    $0x8,%esp
8010353d:	8d 45 dc             	lea    -0x24(%ebp),%eax
80103540:	50                   	push   %eax
80103541:	ff 75 08             	pushl  0x8(%ebp)
80103544:	e8 d3 df ff ff       	call   8010151c <readsb>
80103549:	83 c4 10             	add    $0x10,%esp
8010354c:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010354f:	a3 54 57 11 80       	mov    %eax,0x80115754
80103554:	8b 45 e8             	mov    -0x18(%ebp),%eax
80103557:	a3 58 57 11 80       	mov    %eax,0x80115758
8010355c:	8b 45 08             	mov    0x8(%ebp),%eax
8010355f:	a3 64 57 11 80       	mov    %eax,0x80115764
80103564:	e8 bf 01 00 00       	call   80103728 <recover_from_log>
80103569:	90                   	nop
8010356a:	c9                   	leave  
8010356b:	c3                   	ret    

8010356c <install_trans>:
8010356c:	f3 0f 1e fb          	endbr32 
80103570:	55                   	push   %ebp
80103571:	89 e5                	mov    %esp,%ebp
80103573:	83 ec 18             	sub    $0x18,%esp
80103576:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010357d:	e9 95 00 00 00       	jmp    80103617 <install_trans+0xab>
80103582:	8b 15 54 57 11 80    	mov    0x80115754,%edx
80103588:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010358b:	01 d0                	add    %edx,%eax
8010358d:	83 c0 01             	add    $0x1,%eax
80103590:	89 c2                	mov    %eax,%edx
80103592:	a1 64 57 11 80       	mov    0x80115764,%eax
80103597:	83 ec 08             	sub    $0x8,%esp
8010359a:	52                   	push   %edx
8010359b:	50                   	push   %eax
8010359c:	e8 36 cc ff ff       	call   801001d7 <bread>
801035a1:	83 c4 10             	add    $0x10,%esp
801035a4:	89 45 f0             	mov    %eax,-0x10(%ebp)
801035a7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801035aa:	83 c0 10             	add    $0x10,%eax
801035ad:	8b 04 85 2c 57 11 80 	mov    -0x7feea8d4(,%eax,4),%eax
801035b4:	89 c2                	mov    %eax,%edx
801035b6:	a1 64 57 11 80       	mov    0x80115764,%eax
801035bb:	83 ec 08             	sub    $0x8,%esp
801035be:	52                   	push   %edx
801035bf:	50                   	push   %eax
801035c0:	e8 12 cc ff ff       	call   801001d7 <bread>
801035c5:	83 c4 10             	add    $0x10,%esp
801035c8:	89 45 ec             	mov    %eax,-0x14(%ebp)
801035cb:	8b 45 f0             	mov    -0x10(%ebp),%eax
801035ce:	8d 50 5c             	lea    0x5c(%eax),%edx
801035d1:	8b 45 ec             	mov    -0x14(%ebp),%eax
801035d4:	83 c0 5c             	add    $0x5c,%eax
801035d7:	83 ec 04             	sub    $0x4,%esp
801035da:	68 00 02 00 00       	push   $0x200
801035df:	52                   	push   %edx
801035e0:	50                   	push   %eax
801035e1:	e8 c7 21 00 00       	call   801057ad <memmove>
801035e6:	83 c4 10             	add    $0x10,%esp
801035e9:	83 ec 0c             	sub    $0xc,%esp
801035ec:	ff 75 ec             	pushl  -0x14(%ebp)
801035ef:	e8 20 cc ff ff       	call   80100214 <bwrite>
801035f4:	83 c4 10             	add    $0x10,%esp
801035f7:	83 ec 0c             	sub    $0xc,%esp
801035fa:	ff 75 f0             	pushl  -0x10(%ebp)
801035fd:	e8 5f cc ff ff       	call   80100261 <brelse>
80103602:	83 c4 10             	add    $0x10,%esp
80103605:	83 ec 0c             	sub    $0xc,%esp
80103608:	ff 75 ec             	pushl  -0x14(%ebp)
8010360b:	e8 51 cc ff ff       	call   80100261 <brelse>
80103610:	83 c4 10             	add    $0x10,%esp
80103613:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80103617:	a1 68 57 11 80       	mov    0x80115768,%eax
8010361c:	39 45 f4             	cmp    %eax,-0xc(%ebp)
8010361f:	0f 8c 5d ff ff ff    	jl     80103582 <install_trans+0x16>
80103625:	90                   	nop
80103626:	90                   	nop
80103627:	c9                   	leave  
80103628:	c3                   	ret    

80103629 <read_head>:
80103629:	f3 0f 1e fb          	endbr32 
8010362d:	55                   	push   %ebp
8010362e:	89 e5                	mov    %esp,%ebp
80103630:	83 ec 18             	sub    $0x18,%esp
80103633:	a1 54 57 11 80       	mov    0x80115754,%eax
80103638:	89 c2                	mov    %eax,%edx
8010363a:	a1 64 57 11 80       	mov    0x80115764,%eax
8010363f:	83 ec 08             	sub    $0x8,%esp
80103642:	52                   	push   %edx
80103643:	50                   	push   %eax
80103644:	e8 8e cb ff ff       	call   801001d7 <bread>
80103649:	83 c4 10             	add    $0x10,%esp
8010364c:	89 45 f0             	mov    %eax,-0x10(%ebp)
8010364f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103652:	83 c0 5c             	add    $0x5c,%eax
80103655:	89 45 ec             	mov    %eax,-0x14(%ebp)
80103658:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010365b:	8b 00                	mov    (%eax),%eax
8010365d:	a3 68 57 11 80       	mov    %eax,0x80115768
80103662:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80103669:	eb 1b                	jmp    80103686 <read_head+0x5d>
8010366b:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010366e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80103671:	8b 44 90 04          	mov    0x4(%eax,%edx,4),%eax
80103675:	8b 55 f4             	mov    -0xc(%ebp),%edx
80103678:	83 c2 10             	add    $0x10,%edx
8010367b:	89 04 95 2c 57 11 80 	mov    %eax,-0x7feea8d4(,%edx,4)
80103682:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80103686:	a1 68 57 11 80       	mov    0x80115768,%eax
8010368b:	39 45 f4             	cmp    %eax,-0xc(%ebp)
8010368e:	7c db                	jl     8010366b <read_head+0x42>
80103690:	83 ec 0c             	sub    $0xc,%esp
80103693:	ff 75 f0             	pushl  -0x10(%ebp)
80103696:	e8 c6 cb ff ff       	call   80100261 <brelse>
8010369b:	83 c4 10             	add    $0x10,%esp
8010369e:	90                   	nop
8010369f:	c9                   	leave  
801036a0:	c3                   	ret    

801036a1 <write_head>:
801036a1:	f3 0f 1e fb          	endbr32 
801036a5:	55                   	push   %ebp
801036a6:	89 e5                	mov    %esp,%ebp
801036a8:	83 ec 18             	sub    $0x18,%esp
801036ab:	a1 54 57 11 80       	mov    0x80115754,%eax
801036b0:	89 c2                	mov    %eax,%edx
801036b2:	a1 64 57 11 80       	mov    0x80115764,%eax
801036b7:	83 ec 08             	sub    $0x8,%esp
801036ba:	52                   	push   %edx
801036bb:	50                   	push   %eax
801036bc:	e8 16 cb ff ff       	call   801001d7 <bread>
801036c1:	83 c4 10             	add    $0x10,%esp
801036c4:	89 45 f0             	mov    %eax,-0x10(%ebp)
801036c7:	8b 45 f0             	mov    -0x10(%ebp),%eax
801036ca:	83 c0 5c             	add    $0x5c,%eax
801036cd:	89 45 ec             	mov    %eax,-0x14(%ebp)
801036d0:	8b 15 68 57 11 80    	mov    0x80115768,%edx
801036d6:	8b 45 ec             	mov    -0x14(%ebp),%eax
801036d9:	89 10                	mov    %edx,(%eax)
801036db:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801036e2:	eb 1b                	jmp    801036ff <write_head+0x5e>
801036e4:	8b 45 f4             	mov    -0xc(%ebp),%eax
801036e7:	83 c0 10             	add    $0x10,%eax
801036ea:	8b 0c 85 2c 57 11 80 	mov    -0x7feea8d4(,%eax,4),%ecx
801036f1:	8b 45 ec             	mov    -0x14(%ebp),%eax
801036f4:	8b 55 f4             	mov    -0xc(%ebp),%edx
801036f7:	89 4c 90 04          	mov    %ecx,0x4(%eax,%edx,4)
801036fb:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
801036ff:	a1 68 57 11 80       	mov    0x80115768,%eax
80103704:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80103707:	7c db                	jl     801036e4 <write_head+0x43>
80103709:	83 ec 0c             	sub    $0xc,%esp
8010370c:	ff 75 f0             	pushl  -0x10(%ebp)
8010370f:	e8 00 cb ff ff       	call   80100214 <bwrite>
80103714:	83 c4 10             	add    $0x10,%esp
80103717:	83 ec 0c             	sub    $0xc,%esp
8010371a:	ff 75 f0             	pushl  -0x10(%ebp)
8010371d:	e8 3f cb ff ff       	call   80100261 <brelse>
80103722:	83 c4 10             	add    $0x10,%esp
80103725:	90                   	nop
80103726:	c9                   	leave  
80103727:	c3                   	ret    

80103728 <recover_from_log>:
80103728:	f3 0f 1e fb          	endbr32 
8010372c:	55                   	push   %ebp
8010372d:	89 e5                	mov    %esp,%ebp
8010372f:	83 ec 08             	sub    $0x8,%esp
80103732:	e8 f2 fe ff ff       	call   80103629 <read_head>
80103737:	e8 30 fe ff ff       	call   8010356c <install_trans>
8010373c:	c7 05 68 57 11 80 00 	movl   $0x0,0x80115768
80103743:	00 00 00 
80103746:	e8 56 ff ff ff       	call   801036a1 <write_head>
8010374b:	90                   	nop
8010374c:	c9                   	leave  
8010374d:	c3                   	ret    

8010374e <begin_op>:
8010374e:	f3 0f 1e fb          	endbr32 
80103752:	55                   	push   %ebp
80103753:	89 e5                	mov    %esp,%ebp
80103755:	83 ec 08             	sub    $0x8,%esp
80103758:	83 ec 0c             	sub    $0xc,%esp
8010375b:	68 20 57 11 80       	push   $0x80115720
80103760:	e8 e2 1c 00 00       	call   80105447 <acquire>
80103765:	83 c4 10             	add    $0x10,%esp
80103768:	a1 60 57 11 80       	mov    0x80115760,%eax
8010376d:	85 c0                	test   %eax,%eax
8010376f:	74 17                	je     80103788 <begin_op+0x3a>
80103771:	83 ec 08             	sub    $0x8,%esp
80103774:	68 20 57 11 80       	push   $0x80115720
80103779:	68 20 57 11 80       	push   $0x80115720
8010377e:	e8 52 18 00 00       	call   80104fd5 <sleep>
80103783:	83 c4 10             	add    $0x10,%esp
80103786:	eb e0                	jmp    80103768 <begin_op+0x1a>
80103788:	8b 0d 68 57 11 80    	mov    0x80115768,%ecx
8010378e:	a1 5c 57 11 80       	mov    0x8011575c,%eax
80103793:	8d 50 01             	lea    0x1(%eax),%edx
80103796:	89 d0                	mov    %edx,%eax
80103798:	c1 e0 02             	shl    $0x2,%eax
8010379b:	01 d0                	add    %edx,%eax
8010379d:	01 c0                	add    %eax,%eax
8010379f:	01 c8                	add    %ecx,%eax
801037a1:	83 f8 1e             	cmp    $0x1e,%eax
801037a4:	7e 17                	jle    801037bd <begin_op+0x6f>
801037a6:	83 ec 08             	sub    $0x8,%esp
801037a9:	68 20 57 11 80       	push   $0x80115720
801037ae:	68 20 57 11 80       	push   $0x80115720
801037b3:	e8 1d 18 00 00       	call   80104fd5 <sleep>
801037b8:	83 c4 10             	add    $0x10,%esp
801037bb:	eb ab                	jmp    80103768 <begin_op+0x1a>
801037bd:	a1 5c 57 11 80       	mov    0x8011575c,%eax
801037c2:	83 c0 01             	add    $0x1,%eax
801037c5:	a3 5c 57 11 80       	mov    %eax,0x8011575c
801037ca:	83 ec 0c             	sub    $0xc,%esp
801037cd:	68 20 57 11 80       	push   $0x80115720
801037d2:	e8 e2 1c 00 00       	call   801054b9 <release>
801037d7:	83 c4 10             	add    $0x10,%esp
801037da:	90                   	nop
801037db:	90                   	nop
801037dc:	c9                   	leave  
801037dd:	c3                   	ret    

801037de <end_op>:
801037de:	f3 0f 1e fb          	endbr32 
801037e2:	55                   	push   %ebp
801037e3:	89 e5                	mov    %esp,%ebp
801037e5:	83 ec 18             	sub    $0x18,%esp
801037e8:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801037ef:	83 ec 0c             	sub    $0xc,%esp
801037f2:	68 20 57 11 80       	push   $0x80115720
801037f7:	e8 4b 1c 00 00       	call   80105447 <acquire>
801037fc:	83 c4 10             	add    $0x10,%esp
801037ff:	a1 5c 57 11 80       	mov    0x8011575c,%eax
80103804:	83 e8 01             	sub    $0x1,%eax
80103807:	a3 5c 57 11 80       	mov    %eax,0x8011575c
8010380c:	a1 60 57 11 80       	mov    0x80115760,%eax
80103811:	85 c0                	test   %eax,%eax
80103813:	74 0d                	je     80103822 <end_op+0x44>
80103815:	83 ec 0c             	sub    $0xc,%esp
80103818:	68 30 98 10 80       	push   $0x80109830
8010381d:	e8 e6 cd ff ff       	call   80100608 <panic>
80103822:	a1 5c 57 11 80       	mov    0x8011575c,%eax
80103827:	85 c0                	test   %eax,%eax
80103829:	75 13                	jne    8010383e <end_op+0x60>
8010382b:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
80103832:	c7 05 60 57 11 80 01 	movl   $0x1,0x80115760
80103839:	00 00 00 
8010383c:	eb 10                	jmp    8010384e <end_op+0x70>
8010383e:	83 ec 0c             	sub    $0xc,%esp
80103841:	68 20 57 11 80       	push   $0x80115720
80103846:	e8 7c 18 00 00       	call   801050c7 <wakeup>
8010384b:	83 c4 10             	add    $0x10,%esp
8010384e:	83 ec 0c             	sub    $0xc,%esp
80103851:	68 20 57 11 80       	push   $0x80115720
80103856:	e8 5e 1c 00 00       	call   801054b9 <release>
8010385b:	83 c4 10             	add    $0x10,%esp
8010385e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80103862:	74 3f                	je     801038a3 <end_op+0xc5>
80103864:	e8 fa 00 00 00       	call   80103963 <commit>
80103869:	83 ec 0c             	sub    $0xc,%esp
8010386c:	68 20 57 11 80       	push   $0x80115720
80103871:	e8 d1 1b 00 00       	call   80105447 <acquire>
80103876:	83 c4 10             	add    $0x10,%esp
80103879:	c7 05 60 57 11 80 00 	movl   $0x0,0x80115760
80103880:	00 00 00 
80103883:	83 ec 0c             	sub    $0xc,%esp
80103886:	68 20 57 11 80       	push   $0x80115720
8010388b:	e8 37 18 00 00       	call   801050c7 <wakeup>
80103890:	83 c4 10             	add    $0x10,%esp
80103893:	83 ec 0c             	sub    $0xc,%esp
80103896:	68 20 57 11 80       	push   $0x80115720
8010389b:	e8 19 1c 00 00       	call   801054b9 <release>
801038a0:	83 c4 10             	add    $0x10,%esp
801038a3:	90                   	nop
801038a4:	c9                   	leave  
801038a5:	c3                   	ret    

801038a6 <write_log>:
801038a6:	f3 0f 1e fb          	endbr32 
801038aa:	55                   	push   %ebp
801038ab:	89 e5                	mov    %esp,%ebp
801038ad:	83 ec 18             	sub    $0x18,%esp
801038b0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801038b7:	e9 95 00 00 00       	jmp    80103951 <write_log+0xab>
801038bc:	8b 15 54 57 11 80    	mov    0x80115754,%edx
801038c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
801038c5:	01 d0                	add    %edx,%eax
801038c7:	83 c0 01             	add    $0x1,%eax
801038ca:	89 c2                	mov    %eax,%edx
801038cc:	a1 64 57 11 80       	mov    0x80115764,%eax
801038d1:	83 ec 08             	sub    $0x8,%esp
801038d4:	52                   	push   %edx
801038d5:	50                   	push   %eax
801038d6:	e8 fc c8 ff ff       	call   801001d7 <bread>
801038db:	83 c4 10             	add    $0x10,%esp
801038de:	89 45 f0             	mov    %eax,-0x10(%ebp)
801038e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
801038e4:	83 c0 10             	add    $0x10,%eax
801038e7:	8b 04 85 2c 57 11 80 	mov    -0x7feea8d4(,%eax,4),%eax
801038ee:	89 c2                	mov    %eax,%edx
801038f0:	a1 64 57 11 80       	mov    0x80115764,%eax
801038f5:	83 ec 08             	sub    $0x8,%esp
801038f8:	52                   	push   %edx
801038f9:	50                   	push   %eax
801038fa:	e8 d8 c8 ff ff       	call   801001d7 <bread>
801038ff:	83 c4 10             	add    $0x10,%esp
80103902:	89 45 ec             	mov    %eax,-0x14(%ebp)
80103905:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103908:	8d 50 5c             	lea    0x5c(%eax),%edx
8010390b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010390e:	83 c0 5c             	add    $0x5c,%eax
80103911:	83 ec 04             	sub    $0x4,%esp
80103914:	68 00 02 00 00       	push   $0x200
80103919:	52                   	push   %edx
8010391a:	50                   	push   %eax
8010391b:	e8 8d 1e 00 00       	call   801057ad <memmove>
80103920:	83 c4 10             	add    $0x10,%esp
80103923:	83 ec 0c             	sub    $0xc,%esp
80103926:	ff 75 f0             	pushl  -0x10(%ebp)
80103929:	e8 e6 c8 ff ff       	call   80100214 <bwrite>
8010392e:	83 c4 10             	add    $0x10,%esp
80103931:	83 ec 0c             	sub    $0xc,%esp
80103934:	ff 75 ec             	pushl  -0x14(%ebp)
80103937:	e8 25 c9 ff ff       	call   80100261 <brelse>
8010393c:	83 c4 10             	add    $0x10,%esp
8010393f:	83 ec 0c             	sub    $0xc,%esp
80103942:	ff 75 f0             	pushl  -0x10(%ebp)
80103945:	e8 17 c9 ff ff       	call   80100261 <brelse>
8010394a:	83 c4 10             	add    $0x10,%esp
8010394d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80103951:	a1 68 57 11 80       	mov    0x80115768,%eax
80103956:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80103959:	0f 8c 5d ff ff ff    	jl     801038bc <write_log+0x16>
8010395f:	90                   	nop
80103960:	90                   	nop
80103961:	c9                   	leave  
80103962:	c3                   	ret    

80103963 <commit>:
80103963:	f3 0f 1e fb          	endbr32 
80103967:	55                   	push   %ebp
80103968:	89 e5                	mov    %esp,%ebp
8010396a:	83 ec 08             	sub    $0x8,%esp
8010396d:	a1 68 57 11 80       	mov    0x80115768,%eax
80103972:	85 c0                	test   %eax,%eax
80103974:	7e 1e                	jle    80103994 <commit+0x31>
80103976:	e8 2b ff ff ff       	call   801038a6 <write_log>
8010397b:	e8 21 fd ff ff       	call   801036a1 <write_head>
80103980:	e8 e7 fb ff ff       	call   8010356c <install_trans>
80103985:	c7 05 68 57 11 80 00 	movl   $0x0,0x80115768
8010398c:	00 00 00 
8010398f:	e8 0d fd ff ff       	call   801036a1 <write_head>
80103994:	90                   	nop
80103995:	c9                   	leave  
80103996:	c3                   	ret    

80103997 <log_write>:
80103997:	f3 0f 1e fb          	endbr32 
8010399b:	55                   	push   %ebp
8010399c:	89 e5                	mov    %esp,%ebp
8010399e:	83 ec 18             	sub    $0x18,%esp
801039a1:	a1 68 57 11 80       	mov    0x80115768,%eax
801039a6:	83 f8 1d             	cmp    $0x1d,%eax
801039a9:	7f 12                	jg     801039bd <log_write+0x26>
801039ab:	a1 68 57 11 80       	mov    0x80115768,%eax
801039b0:	8b 15 58 57 11 80    	mov    0x80115758,%edx
801039b6:	83 ea 01             	sub    $0x1,%edx
801039b9:	39 d0                	cmp    %edx,%eax
801039bb:	7c 0d                	jl     801039ca <log_write+0x33>
801039bd:	83 ec 0c             	sub    $0xc,%esp
801039c0:	68 3f 98 10 80       	push   $0x8010983f
801039c5:	e8 3e cc ff ff       	call   80100608 <panic>
801039ca:	a1 5c 57 11 80       	mov    0x8011575c,%eax
801039cf:	85 c0                	test   %eax,%eax
801039d1:	7f 0d                	jg     801039e0 <log_write+0x49>
801039d3:	83 ec 0c             	sub    $0xc,%esp
801039d6:	68 55 98 10 80       	push   $0x80109855
801039db:	e8 28 cc ff ff       	call   80100608 <panic>
801039e0:	83 ec 0c             	sub    $0xc,%esp
801039e3:	68 20 57 11 80       	push   $0x80115720
801039e8:	e8 5a 1a 00 00       	call   80105447 <acquire>
801039ed:	83 c4 10             	add    $0x10,%esp
801039f0:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801039f7:	eb 1d                	jmp    80103a16 <log_write+0x7f>
801039f9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801039fc:	83 c0 10             	add    $0x10,%eax
801039ff:	8b 04 85 2c 57 11 80 	mov    -0x7feea8d4(,%eax,4),%eax
80103a06:	89 c2                	mov    %eax,%edx
80103a08:	8b 45 08             	mov    0x8(%ebp),%eax
80103a0b:	8b 40 08             	mov    0x8(%eax),%eax
80103a0e:	39 c2                	cmp    %eax,%edx
80103a10:	74 10                	je     80103a22 <log_write+0x8b>
80103a12:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80103a16:	a1 68 57 11 80       	mov    0x80115768,%eax
80103a1b:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80103a1e:	7c d9                	jl     801039f9 <log_write+0x62>
80103a20:	eb 01                	jmp    80103a23 <log_write+0x8c>
80103a22:	90                   	nop
80103a23:	8b 45 08             	mov    0x8(%ebp),%eax
80103a26:	8b 40 08             	mov    0x8(%eax),%eax
80103a29:	89 c2                	mov    %eax,%edx
80103a2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103a2e:	83 c0 10             	add    $0x10,%eax
80103a31:	89 14 85 2c 57 11 80 	mov    %edx,-0x7feea8d4(,%eax,4)
80103a38:	a1 68 57 11 80       	mov    0x80115768,%eax
80103a3d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80103a40:	75 0d                	jne    80103a4f <log_write+0xb8>
80103a42:	a1 68 57 11 80       	mov    0x80115768,%eax
80103a47:	83 c0 01             	add    $0x1,%eax
80103a4a:	a3 68 57 11 80       	mov    %eax,0x80115768
80103a4f:	8b 45 08             	mov    0x8(%ebp),%eax
80103a52:	8b 00                	mov    (%eax),%eax
80103a54:	83 c8 04             	or     $0x4,%eax
80103a57:	89 c2                	mov    %eax,%edx
80103a59:	8b 45 08             	mov    0x8(%ebp),%eax
80103a5c:	89 10                	mov    %edx,(%eax)
80103a5e:	83 ec 0c             	sub    $0xc,%esp
80103a61:	68 20 57 11 80       	push   $0x80115720
80103a66:	e8 4e 1a 00 00       	call   801054b9 <release>
80103a6b:	83 c4 10             	add    $0x10,%esp
80103a6e:	90                   	nop
80103a6f:	c9                   	leave  
80103a70:	c3                   	ret    

80103a71 <xchg>:
  asm volatile("sti");
}

static inline uint
xchg(volatile uint *addr, uint newval)
{
80103a71:	55                   	push   %ebp
80103a72:	89 e5                	mov    %esp,%ebp
80103a74:	83 ec 10             	sub    $0x10,%esp
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
80103a77:	8b 55 08             	mov    0x8(%ebp),%edx
80103a7a:	8b 45 0c             	mov    0xc(%ebp),%eax
80103a7d:	8b 4d 08             	mov    0x8(%ebp),%ecx
80103a80:	f0 87 02             	lock xchg %eax,(%edx)
80103a83:	89 45 fc             	mov    %eax,-0x4(%ebp)
               "+m" (*addr), "=a" (result) :
               "1" (newval) :
               "cc");
  return result;
80103a86:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
80103a89:	c9                   	leave  
80103a8a:	c3                   	ret    

80103a8b <main>:
// Bootstrap processor starts running C code here.
// Allocate a real stack and switch to it, first
// doing some setup required for memory allocator to work.
int
main(void)
{
80103a8b:	f3 0f 1e fb          	endbr32 
80103a8f:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80103a93:	83 e4 f0             	and    $0xfffffff0,%esp
80103a96:	ff 71 fc             	pushl  -0x4(%ecx)
80103a99:	55                   	push   %ebp
80103a9a:	89 e5                	mov    %esp,%ebp
80103a9c:	51                   	push   %ecx
80103a9d:	83 ec 04             	sub    $0x4,%esp
  kinit1(end, P2V(4*1024*1024)); // phys page allocator
80103aa0:	83 ec 08             	sub    $0x8,%esp
80103aa3:	68 00 00 40 80       	push   $0x80400000
80103aa8:	68 48 96 11 80       	push   $0x80119648
80103aad:	e8 52 f2 ff ff       	call   80102d04 <kinit1>
80103ab2:	83 c4 10             	add    $0x10,%esp
  kvmalloc();      // kernel page table
80103ab5:	e8 25 48 00 00       	call   801082df <kvmalloc>
  mpinit();        // detect other processors
80103aba:	e8 d9 03 00 00       	call   80103e98 <mpinit>
  lapicinit();     // interrupt controller
80103abf:	e8 f5 f5 ff ff       	call   801030b9 <lapicinit>
  seginit();       // segment descriptors
80103ac4:	e8 ce 42 00 00       	call   80107d97 <seginit>
  picinit();       // disable pic
80103ac9:	e8 35 05 00 00       	call   80104003 <picinit>
  ioapicinit();    // another interrupt controller
80103ace:	e8 44 f1 ff ff       	call   80102c17 <ioapicinit>
  consoleinit();   // console hardware
80103ad3:	e8 09 d1 ff ff       	call   80100be1 <consoleinit>
  uartinit();      // serial port
80103ad8:	e8 43 36 00 00       	call   80107120 <uartinit>
  pinit();         // process table
80103add:	e8 6e 09 00 00       	call   80104450 <pinit>
  tvinit();        // trap vectors
80103ae2:	e8 d1 31 00 00       	call   80106cb8 <tvinit>
  binit();         // buffer cache
80103ae7:	e8 48 c5 ff ff       	call   80100034 <binit>
  fileinit();      // file table
80103aec:	e8 00 d6 ff ff       	call   801010f1 <fileinit>
  ideinit();       // disk 
80103af1:	e8 e0 ec ff ff       	call   801027d6 <ideinit>
  startothers();   // start other processors
80103af6:	e8 88 00 00 00       	call   80103b83 <startothers>
  kinit2(P2V(4*1024*1024), P2V(PHYSTOP)); // must come after startothers()
80103afb:	83 ec 08             	sub    $0x8,%esp
80103afe:	68 00 00 00 8e       	push   $0x8e000000
80103b03:	68 00 00 40 80       	push   $0x80400000
80103b08:	e8 34 f2 ff ff       	call   80102d41 <kinit2>
80103b0d:	83 c4 10             	add    $0x10,%esp
  userinit();      // first user process
80103b10:	e8 34 0b 00 00       	call   80104649 <userinit>
  mpmain();        // finish this processor's setup
80103b15:	e8 1e 00 00 00       	call   80103b38 <mpmain>

80103b1a <mpenter>:
}

// Other CPUs jump here from entryother.S.
static void
mpenter(void)
{
80103b1a:	f3 0f 1e fb          	endbr32 
80103b1e:	55                   	push   %ebp
80103b1f:	89 e5                	mov    %esp,%ebp
80103b21:	83 ec 08             	sub    $0x8,%esp
  switchkvm();
80103b24:	e8 d2 47 00 00       	call   801082fb <switchkvm>
  seginit();
80103b29:	e8 69 42 00 00       	call   80107d97 <seginit>
  lapicinit();
80103b2e:	e8 86 f5 ff ff       	call   801030b9 <lapicinit>
  mpmain();
80103b33:	e8 00 00 00 00       	call   80103b38 <mpmain>

80103b38 <mpmain>:
}

// Common CPU setup code.
static void
mpmain(void)
{
80103b38:	f3 0f 1e fb          	endbr32 
80103b3c:	55                   	push   %ebp
80103b3d:	89 e5                	mov    %esp,%ebp
80103b3f:	53                   	push   %ebx
80103b40:	83 ec 04             	sub    $0x4,%esp
  cprintf("cpu%d: starting %d\n", cpuid(), cpuid());
80103b43:	e8 2a 09 00 00       	call   80104472 <cpuid>
80103b48:	89 c3                	mov    %eax,%ebx
80103b4a:	e8 23 09 00 00       	call   80104472 <cpuid>
80103b4f:	83 ec 04             	sub    $0x4,%esp
80103b52:	53                   	push   %ebx
80103b53:	50                   	push   %eax
80103b54:	68 70 98 10 80       	push   $0x80109870
80103b59:	e8 ba c8 ff ff       	call   80100418 <cprintf>
80103b5e:	83 c4 10             	add    $0x10,%esp
  idtinit();       // load idt register
80103b61:	e8 cc 32 00 00       	call   80106e32 <idtinit>
  xchg(&(mycpu()->started), 1); // tell startothers() we're up
80103b66:	e8 26 09 00 00       	call   80104491 <mycpu>
80103b6b:	05 a0 00 00 00       	add    $0xa0,%eax
80103b70:	83 ec 08             	sub    $0x8,%esp
80103b73:	6a 01                	push   $0x1
80103b75:	50                   	push   %eax
80103b76:	e8 f6 fe ff ff       	call   80103a71 <xchg>
80103b7b:	83 c4 10             	add    $0x10,%esp
  scheduler();     // start running processes
80103b7e:	e8 4e 12 00 00       	call   80104dd1 <scheduler>

80103b83 <startothers>:
pde_t entrypgdir[];  // For entry.S

// Start the non-boot (AP) processors.
static void
startothers(void)
{
80103b83:	f3 0f 1e fb          	endbr32 
80103b87:	55                   	push   %ebp
80103b88:	89 e5                	mov    %esp,%ebp
80103b8a:	83 ec 18             	sub    $0x18,%esp
  char *stack;

  // Write entry code to unused memory at 0x7000.
  // The linker has placed the image of entryother.S in
  // _binary_entryother_start.
  code = P2V(0x7000);
80103b8d:	c7 45 f0 00 70 00 80 	movl   $0x80007000,-0x10(%ebp)
  memmove(code, _binary_entryother_start, (uint)_binary_entryother_size);
80103b94:	b8 8a 00 00 00       	mov    $0x8a,%eax
80103b99:	83 ec 04             	sub    $0x4,%esp
80103b9c:	50                   	push   %eax
80103b9d:	68 0c d5 10 80       	push   $0x8010d50c
80103ba2:	ff 75 f0             	pushl  -0x10(%ebp)
80103ba5:	e8 03 1c 00 00       	call   801057ad <memmove>
80103baa:	83 c4 10             	add    $0x10,%esp

  for(c = cpus; c < cpus+ncpu; c++){
80103bad:	c7 45 f4 20 58 11 80 	movl   $0x80115820,-0xc(%ebp)
80103bb4:	eb 79                	jmp    80103c2f <startothers+0xac>
    if(c == mycpu())  // We've started already.
80103bb6:	e8 d6 08 00 00       	call   80104491 <mycpu>
80103bbb:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80103bbe:	74 67                	je     80103c27 <startothers+0xa4>
      continue;

    // Tell entryother.S what stack to use, where to enter, and what
    // pgdir to use. We cannot use kpgdir yet, because the AP processor
    // is running in low  memory, so we use entrypgdir for the APs too.
    stack = kalloc();
80103bc0:	e8 84 f2 ff ff       	call   80102e49 <kalloc>
80103bc5:	89 45 ec             	mov    %eax,-0x14(%ebp)
    *(void**)(code-4) = stack + KSTACKSIZE;
80103bc8:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103bcb:	83 e8 04             	sub    $0x4,%eax
80103bce:	8b 55 ec             	mov    -0x14(%ebp),%edx
80103bd1:	81 c2 00 10 00 00    	add    $0x1000,%edx
80103bd7:	89 10                	mov    %edx,(%eax)
    *(void(**)(void))(code-8) = mpenter;
80103bd9:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103bdc:	83 e8 08             	sub    $0x8,%eax
80103bdf:	c7 00 1a 3b 10 80    	movl   $0x80103b1a,(%eax)
    *(int**)(code-12) = (void *) V2P(entrypgdir);
80103be5:	b8 00 c0 10 80       	mov    $0x8010c000,%eax
80103bea:	8d 90 00 00 00 80    	lea    -0x80000000(%eax),%edx
80103bf0:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103bf3:	83 e8 0c             	sub    $0xc,%eax
80103bf6:	89 10                	mov    %edx,(%eax)

    lapicstartap(c->apicid, V2P(code));
80103bf8:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103bfb:	8d 90 00 00 00 80    	lea    -0x80000000(%eax),%edx
80103c01:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103c04:	0f b6 00             	movzbl (%eax),%eax
80103c07:	0f b6 c0             	movzbl %al,%eax
80103c0a:	83 ec 08             	sub    $0x8,%esp
80103c0d:	52                   	push   %edx
80103c0e:	50                   	push   %eax
80103c0f:	e8 17 f6 ff ff       	call   8010322b <lapicstartap>
80103c14:	83 c4 10             	add    $0x10,%esp

    // wait for cpu to finish mpmain()
    while(c->started == 0)
80103c17:	90                   	nop
80103c18:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103c1b:	8b 80 a0 00 00 00    	mov    0xa0(%eax),%eax
80103c21:	85 c0                	test   %eax,%eax
80103c23:	74 f3                	je     80103c18 <startothers+0x95>
80103c25:	eb 01                	jmp    80103c28 <startothers+0xa5>
      continue;
80103c27:	90                   	nop
  for(c = cpus; c < cpus+ncpu; c++){
80103c28:	81 45 f4 b0 00 00 00 	addl   $0xb0,-0xc(%ebp)
80103c2f:	a1 a0 5d 11 80       	mov    0x80115da0,%eax
80103c34:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80103c3a:	05 20 58 11 80       	add    $0x80115820,%eax
80103c3f:	39 45 f4             	cmp    %eax,-0xc(%ebp)
80103c42:	0f 82 6e ff ff ff    	jb     80103bb6 <startothers+0x33>
      ;
  }
}
80103c48:	90                   	nop
80103c49:	90                   	nop
80103c4a:	c9                   	leave  
80103c4b:	c3                   	ret    

80103c4c <inb>:
{
80103c4c:	55                   	push   %ebp
80103c4d:	89 e5                	mov    %esp,%ebp
80103c4f:	83 ec 14             	sub    $0x14,%esp
80103c52:	8b 45 08             	mov    0x8(%ebp),%eax
80103c55:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80103c59:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
80103c5d:	89 c2                	mov    %eax,%edx
80103c5f:	ec                   	in     (%dx),%al
80103c60:	88 45 ff             	mov    %al,-0x1(%ebp)
  return data;
80103c63:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
}
80103c67:	c9                   	leave  
80103c68:	c3                   	ret    

80103c69 <outb>:
{
80103c69:	55                   	push   %ebp
80103c6a:	89 e5                	mov    %esp,%ebp
80103c6c:	83 ec 08             	sub    $0x8,%esp
80103c6f:	8b 45 08             	mov    0x8(%ebp),%eax
80103c72:	8b 55 0c             	mov    0xc(%ebp),%edx
80103c75:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80103c79:	89 d0                	mov    %edx,%eax
80103c7b:	88 45 f8             	mov    %al,-0x8(%ebp)
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80103c7e:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80103c82:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
80103c86:	ee                   	out    %al,(%dx)
}
80103c87:	90                   	nop
80103c88:	c9                   	leave  
80103c89:	c3                   	ret    

80103c8a <sum>:
int ncpu;
uchar ioapicid;

static uchar
sum(uchar *addr, int len)
{
80103c8a:	f3 0f 1e fb          	endbr32 
80103c8e:	55                   	push   %ebp
80103c8f:	89 e5                	mov    %esp,%ebp
80103c91:	83 ec 10             	sub    $0x10,%esp
  int i, sum;

  sum = 0;
80103c94:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
  for(i=0; i<len; i++)
80103c9b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
80103ca2:	eb 15                	jmp    80103cb9 <sum+0x2f>
    sum += addr[i];
80103ca4:	8b 55 fc             	mov    -0x4(%ebp),%edx
80103ca7:	8b 45 08             	mov    0x8(%ebp),%eax
80103caa:	01 d0                	add    %edx,%eax
80103cac:	0f b6 00             	movzbl (%eax),%eax
80103caf:	0f b6 c0             	movzbl %al,%eax
80103cb2:	01 45 f8             	add    %eax,-0x8(%ebp)
  for(i=0; i<len; i++)
80103cb5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
80103cb9:	8b 45 fc             	mov    -0x4(%ebp),%eax
80103cbc:	3b 45 0c             	cmp    0xc(%ebp),%eax
80103cbf:	7c e3                	jl     80103ca4 <sum+0x1a>
  return sum;
80103cc1:	8b 45 f8             	mov    -0x8(%ebp),%eax
}
80103cc4:	c9                   	leave  
80103cc5:	c3                   	ret    

80103cc6 <mpsearch1>:

// Look for an MP structure in the len bytes at addr.
static struct mp*
mpsearch1(uint a, int len)
{
80103cc6:	f3 0f 1e fb          	endbr32 
80103cca:	55                   	push   %ebp
80103ccb:	89 e5                	mov    %esp,%ebp
80103ccd:	83 ec 18             	sub    $0x18,%esp
  uchar *e, *p, *addr;

  addr = P2V(a);
80103cd0:	8b 45 08             	mov    0x8(%ebp),%eax
80103cd3:	05 00 00 00 80       	add    $0x80000000,%eax
80103cd8:	89 45 f0             	mov    %eax,-0x10(%ebp)
  e = addr+len;
80103cdb:	8b 55 0c             	mov    0xc(%ebp),%edx
80103cde:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103ce1:	01 d0                	add    %edx,%eax
80103ce3:	89 45 ec             	mov    %eax,-0x14(%ebp)
  for(p = addr; p < e; p += sizeof(struct mp))
80103ce6:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103ce9:	89 45 f4             	mov    %eax,-0xc(%ebp)
80103cec:	eb 36                	jmp    80103d24 <mpsearch1+0x5e>
    if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
80103cee:	83 ec 04             	sub    $0x4,%esp
80103cf1:	6a 04                	push   $0x4
80103cf3:	68 84 98 10 80       	push   $0x80109884
80103cf8:	ff 75 f4             	pushl  -0xc(%ebp)
80103cfb:	e8 51 1a 00 00       	call   80105751 <memcmp>
80103d00:	83 c4 10             	add    $0x10,%esp
80103d03:	85 c0                	test   %eax,%eax
80103d05:	75 19                	jne    80103d20 <mpsearch1+0x5a>
80103d07:	83 ec 08             	sub    $0x8,%esp
80103d0a:	6a 10                	push   $0x10
80103d0c:	ff 75 f4             	pushl  -0xc(%ebp)
80103d0f:	e8 76 ff ff ff       	call   80103c8a <sum>
80103d14:	83 c4 10             	add    $0x10,%esp
80103d17:	84 c0                	test   %al,%al
80103d19:	75 05                	jne    80103d20 <mpsearch1+0x5a>
      return (struct mp*)p;
80103d1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103d1e:	eb 11                	jmp    80103d31 <mpsearch1+0x6b>
  for(p = addr; p < e; p += sizeof(struct mp))
80103d20:	83 45 f4 10          	addl   $0x10,-0xc(%ebp)
80103d24:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103d27:	3b 45 ec             	cmp    -0x14(%ebp),%eax
80103d2a:	72 c2                	jb     80103cee <mpsearch1+0x28>
  return 0;
80103d2c:	b8 00 00 00 00       	mov    $0x0,%eax
}
80103d31:	c9                   	leave  
80103d32:	c3                   	ret    

80103d33 <mpsearch>:
// 1) in the first KB of the EBDA;
// 2) in the last KB of system base memory;
// 3) in the BIOS ROM between 0xE0000 and 0xFFFFF.
static struct mp*
mpsearch(void)
{
80103d33:	f3 0f 1e fb          	endbr32 
80103d37:	55                   	push   %ebp
80103d38:	89 e5                	mov    %esp,%ebp
80103d3a:	83 ec 18             	sub    $0x18,%esp
  uchar *bda;
  uint p;
  struct mp *mp;

  bda = (uchar *) P2V(0x400);
80103d3d:	c7 45 f4 00 04 00 80 	movl   $0x80000400,-0xc(%ebp)
  if((p = ((bda[0x0F]<<8)| bda[0x0E]) << 4)){
80103d44:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103d47:	83 c0 0f             	add    $0xf,%eax
80103d4a:	0f b6 00             	movzbl (%eax),%eax
80103d4d:	0f b6 c0             	movzbl %al,%eax
80103d50:	c1 e0 08             	shl    $0x8,%eax
80103d53:	89 c2                	mov    %eax,%edx
80103d55:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103d58:	83 c0 0e             	add    $0xe,%eax
80103d5b:	0f b6 00             	movzbl (%eax),%eax
80103d5e:	0f b6 c0             	movzbl %al,%eax
80103d61:	09 d0                	or     %edx,%eax
80103d63:	c1 e0 04             	shl    $0x4,%eax
80103d66:	89 45 f0             	mov    %eax,-0x10(%ebp)
80103d69:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80103d6d:	74 21                	je     80103d90 <mpsearch+0x5d>
    if((mp = mpsearch1(p, 1024)))
80103d6f:	83 ec 08             	sub    $0x8,%esp
80103d72:	68 00 04 00 00       	push   $0x400
80103d77:	ff 75 f0             	pushl  -0x10(%ebp)
80103d7a:	e8 47 ff ff ff       	call   80103cc6 <mpsearch1>
80103d7f:	83 c4 10             	add    $0x10,%esp
80103d82:	89 45 ec             	mov    %eax,-0x14(%ebp)
80103d85:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
80103d89:	74 51                	je     80103ddc <mpsearch+0xa9>
      return mp;
80103d8b:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103d8e:	eb 61                	jmp    80103df1 <mpsearch+0xbe>
  } else {
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
80103d90:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103d93:	83 c0 14             	add    $0x14,%eax
80103d96:	0f b6 00             	movzbl (%eax),%eax
80103d99:	0f b6 c0             	movzbl %al,%eax
80103d9c:	c1 e0 08             	shl    $0x8,%eax
80103d9f:	89 c2                	mov    %eax,%edx
80103da1:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103da4:	83 c0 13             	add    $0x13,%eax
80103da7:	0f b6 00             	movzbl (%eax),%eax
80103daa:	0f b6 c0             	movzbl %al,%eax
80103dad:	09 d0                	or     %edx,%eax
80103daf:	c1 e0 0a             	shl    $0xa,%eax
80103db2:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if((mp = mpsearch1(p-1024, 1024)))
80103db5:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103db8:	2d 00 04 00 00       	sub    $0x400,%eax
80103dbd:	83 ec 08             	sub    $0x8,%esp
80103dc0:	68 00 04 00 00       	push   $0x400
80103dc5:	50                   	push   %eax
80103dc6:	e8 fb fe ff ff       	call   80103cc6 <mpsearch1>
80103dcb:	83 c4 10             	add    $0x10,%esp
80103dce:	89 45 ec             	mov    %eax,-0x14(%ebp)
80103dd1:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
80103dd5:	74 05                	je     80103ddc <mpsearch+0xa9>
      return mp;
80103dd7:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103dda:	eb 15                	jmp    80103df1 <mpsearch+0xbe>
  }
  return mpsearch1(0xF0000, 0x10000);
80103ddc:	83 ec 08             	sub    $0x8,%esp
80103ddf:	68 00 00 01 00       	push   $0x10000
80103de4:	68 00 00 0f 00       	push   $0xf0000
80103de9:	e8 d8 fe ff ff       	call   80103cc6 <mpsearch1>
80103dee:	83 c4 10             	add    $0x10,%esp
}
80103df1:	c9                   	leave  
80103df2:	c3                   	ret    

80103df3 <mpconfig>:
// Check for correct signature, calculate the checksum and,
// if correct, check the version.
// To do: check extended table checksum.
static struct mpconf*
mpconfig(struct mp **pmp)
{
80103df3:	f3 0f 1e fb          	endbr32 
80103df7:	55                   	push   %ebp
80103df8:	89 e5                	mov    %esp,%ebp
80103dfa:	83 ec 18             	sub    $0x18,%esp
  struct mpconf *conf;
  struct mp *mp;

  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
80103dfd:	e8 31 ff ff ff       	call   80103d33 <mpsearch>
80103e02:	89 45 f4             	mov    %eax,-0xc(%ebp)
80103e05:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80103e09:	74 0a                	je     80103e15 <mpconfig+0x22>
80103e0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103e0e:	8b 40 04             	mov    0x4(%eax),%eax
80103e11:	85 c0                	test   %eax,%eax
80103e13:	75 07                	jne    80103e1c <mpconfig+0x29>
    return 0;
80103e15:	b8 00 00 00 00       	mov    $0x0,%eax
80103e1a:	eb 7a                	jmp    80103e96 <mpconfig+0xa3>
  conf = (struct mpconf*) P2V((uint) mp->physaddr);
80103e1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103e1f:	8b 40 04             	mov    0x4(%eax),%eax
80103e22:	05 00 00 00 80       	add    $0x80000000,%eax
80103e27:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(memcmp(conf, "PCMP", 4) != 0)
80103e2a:	83 ec 04             	sub    $0x4,%esp
80103e2d:	6a 04                	push   $0x4
80103e2f:	68 89 98 10 80       	push   $0x80109889
80103e34:	ff 75 f0             	pushl  -0x10(%ebp)
80103e37:	e8 15 19 00 00       	call   80105751 <memcmp>
80103e3c:	83 c4 10             	add    $0x10,%esp
80103e3f:	85 c0                	test   %eax,%eax
80103e41:	74 07                	je     80103e4a <mpconfig+0x57>
    return 0;
80103e43:	b8 00 00 00 00       	mov    $0x0,%eax
80103e48:	eb 4c                	jmp    80103e96 <mpconfig+0xa3>
  if(conf->version != 1 && conf->version != 4)
80103e4a:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103e4d:	0f b6 40 06          	movzbl 0x6(%eax),%eax
80103e51:	3c 01                	cmp    $0x1,%al
80103e53:	74 12                	je     80103e67 <mpconfig+0x74>
80103e55:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103e58:	0f b6 40 06          	movzbl 0x6(%eax),%eax
80103e5c:	3c 04                	cmp    $0x4,%al
80103e5e:	74 07                	je     80103e67 <mpconfig+0x74>
    return 0;
80103e60:	b8 00 00 00 00       	mov    $0x0,%eax
80103e65:	eb 2f                	jmp    80103e96 <mpconfig+0xa3>
  if(sum((uchar*)conf, conf->length) != 0)
80103e67:	8b 45 f0             	mov    -0x10(%ebp),%eax
80103e6a:	0f b7 40 04          	movzwl 0x4(%eax),%eax
80103e6e:	0f b7 c0             	movzwl %ax,%eax
80103e71:	83 ec 08             	sub    $0x8,%esp
80103e74:	50                   	push   %eax
80103e75:	ff 75 f0             	pushl  -0x10(%ebp)
80103e78:	e8 0d fe ff ff       	call   80103c8a <sum>
80103e7d:	83 c4 10             	add    $0x10,%esp
80103e80:	84 c0                	test   %al,%al
80103e82:	74 07                	je     80103e8b <mpconfig+0x98>
    return 0;
80103e84:	b8 00 00 00 00       	mov    $0x0,%eax
80103e89:	eb 0b                	jmp    80103e96 <mpconfig+0xa3>
  *pmp = mp;
80103e8b:	8b 45 08             	mov    0x8(%ebp),%eax
80103e8e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80103e91:	89 10                	mov    %edx,(%eax)
  return conf;
80103e93:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
80103e96:	c9                   	leave  
80103e97:	c3                   	ret    

80103e98 <mpinit>:

void
mpinit(void)
{
80103e98:	f3 0f 1e fb          	endbr32 
80103e9c:	55                   	push   %ebp
80103e9d:	89 e5                	mov    %esp,%ebp
80103e9f:	83 ec 28             	sub    $0x28,%esp
  struct mp *mp;
  struct mpconf *conf;
  struct mpproc *proc;
  struct mpioapic *ioapic;

  if((conf = mpconfig(&mp)) == 0)
80103ea2:	83 ec 0c             	sub    $0xc,%esp
80103ea5:	8d 45 dc             	lea    -0x24(%ebp),%eax
80103ea8:	50                   	push   %eax
80103ea9:	e8 45 ff ff ff       	call   80103df3 <mpconfig>
80103eae:	83 c4 10             	add    $0x10,%esp
80103eb1:	89 45 ec             	mov    %eax,-0x14(%ebp)
80103eb4:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
80103eb8:	75 0d                	jne    80103ec7 <mpinit+0x2f>
    panic("Expect to run on an SMP");
80103eba:	83 ec 0c             	sub    $0xc,%esp
80103ebd:	68 8e 98 10 80       	push   $0x8010988e
80103ec2:	e8 41 c7 ff ff       	call   80100608 <panic>
  ismp = 1;
80103ec7:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
  lapic = (uint*)conf->lapicaddr;
80103ece:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103ed1:	8b 40 24             	mov    0x24(%eax),%eax
80103ed4:	a3 1c 57 11 80       	mov    %eax,0x8011571c
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80103ed9:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103edc:	83 c0 2c             	add    $0x2c,%eax
80103edf:	89 45 f4             	mov    %eax,-0xc(%ebp)
80103ee2:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103ee5:	0f b7 40 04          	movzwl 0x4(%eax),%eax
80103ee9:	0f b7 d0             	movzwl %ax,%edx
80103eec:	8b 45 ec             	mov    -0x14(%ebp),%eax
80103eef:	01 d0                	add    %edx,%eax
80103ef1:	89 45 e8             	mov    %eax,-0x18(%ebp)
80103ef4:	e9 8c 00 00 00       	jmp    80103f85 <mpinit+0xed>
    switch(*p){
80103ef9:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103efc:	0f b6 00             	movzbl (%eax),%eax
80103eff:	0f b6 c0             	movzbl %al,%eax
80103f02:	83 f8 04             	cmp    $0x4,%eax
80103f05:	7f 76                	jg     80103f7d <mpinit+0xe5>
80103f07:	83 f8 03             	cmp    $0x3,%eax
80103f0a:	7d 6b                	jge    80103f77 <mpinit+0xdf>
80103f0c:	83 f8 02             	cmp    $0x2,%eax
80103f0f:	74 4e                	je     80103f5f <mpinit+0xc7>
80103f11:	83 f8 02             	cmp    $0x2,%eax
80103f14:	7f 67                	jg     80103f7d <mpinit+0xe5>
80103f16:	85 c0                	test   %eax,%eax
80103f18:	74 07                	je     80103f21 <mpinit+0x89>
80103f1a:	83 f8 01             	cmp    $0x1,%eax
80103f1d:	74 58                	je     80103f77 <mpinit+0xdf>
80103f1f:	eb 5c                	jmp    80103f7d <mpinit+0xe5>
    case MPPROC:
      proc = (struct mpproc*)p;
80103f21:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103f24:	89 45 e0             	mov    %eax,-0x20(%ebp)
      if(ncpu < NCPU) {
80103f27:	a1 a0 5d 11 80       	mov    0x80115da0,%eax
80103f2c:	83 f8 07             	cmp    $0x7,%eax
80103f2f:	7f 28                	jg     80103f59 <mpinit+0xc1>
        cpus[ncpu].apicid = proc->apicid;  // apicid may differ from ncpu
80103f31:	8b 15 a0 5d 11 80    	mov    0x80115da0,%edx
80103f37:	8b 45 e0             	mov    -0x20(%ebp),%eax
80103f3a:	0f b6 40 01          	movzbl 0x1(%eax),%eax
80103f3e:	69 d2 b0 00 00 00    	imul   $0xb0,%edx,%edx
80103f44:	81 c2 20 58 11 80    	add    $0x80115820,%edx
80103f4a:	88 02                	mov    %al,(%edx)
        ncpu++;
80103f4c:	a1 a0 5d 11 80       	mov    0x80115da0,%eax
80103f51:	83 c0 01             	add    $0x1,%eax
80103f54:	a3 a0 5d 11 80       	mov    %eax,0x80115da0
      }
      p += sizeof(struct mpproc);
80103f59:	83 45 f4 14          	addl   $0x14,-0xc(%ebp)
      continue;
80103f5d:	eb 26                	jmp    80103f85 <mpinit+0xed>
    case MPIOAPIC:
      ioapic = (struct mpioapic*)p;
80103f5f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103f62:	89 45 e4             	mov    %eax,-0x1c(%ebp)
      ioapicid = ioapic->apicno;
80103f65:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80103f68:	0f b6 40 01          	movzbl 0x1(%eax),%eax
80103f6c:	a2 00 58 11 80       	mov    %al,0x80115800
      p += sizeof(struct mpioapic);
80103f71:	83 45 f4 08          	addl   $0x8,-0xc(%ebp)
      continue;
80103f75:	eb 0e                	jmp    80103f85 <mpinit+0xed>
    case MPBUS:
    case MPIOINTR:
    case MPLINTR:
      p += 8;
80103f77:	83 45 f4 08          	addl   $0x8,-0xc(%ebp)
      continue;
80103f7b:	eb 08                	jmp    80103f85 <mpinit+0xed>
    default:
      ismp = 0;
80103f7d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
      break;
80103f84:	90                   	nop
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80103f85:	8b 45 f4             	mov    -0xc(%ebp),%eax
80103f88:	3b 45 e8             	cmp    -0x18(%ebp),%eax
80103f8b:	0f 82 68 ff ff ff    	jb     80103ef9 <mpinit+0x61>
    }
  }
  if(!ismp)
80103f91:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80103f95:	75 0d                	jne    80103fa4 <mpinit+0x10c>
    panic("Didn't find a suitable machine");
80103f97:	83 ec 0c             	sub    $0xc,%esp
80103f9a:	68 a8 98 10 80       	push   $0x801098a8
80103f9f:	e8 64 c6 ff ff       	call   80100608 <panic>

  if(mp->imcrp){
80103fa4:	8b 45 dc             	mov    -0x24(%ebp),%eax
80103fa7:	0f b6 40 0c          	movzbl 0xc(%eax),%eax
80103fab:	84 c0                	test   %al,%al
80103fad:	74 30                	je     80103fdf <mpinit+0x147>
    // Bochs doesn't support IMCR, so this doesn't run on Bochs.
    // But it would on real hardware.
    outb(0x22, 0x70);   // Select IMCR
80103faf:	83 ec 08             	sub    $0x8,%esp
80103fb2:	6a 70                	push   $0x70
80103fb4:	6a 22                	push   $0x22
80103fb6:	e8 ae fc ff ff       	call   80103c69 <outb>
80103fbb:	83 c4 10             	add    $0x10,%esp
    outb(0x23, inb(0x23) | 1);  // Mask external interrupts.
80103fbe:	83 ec 0c             	sub    $0xc,%esp
80103fc1:	6a 23                	push   $0x23
80103fc3:	e8 84 fc ff ff       	call   80103c4c <inb>
80103fc8:	83 c4 10             	add    $0x10,%esp
80103fcb:	83 c8 01             	or     $0x1,%eax
80103fce:	0f b6 c0             	movzbl %al,%eax
80103fd1:	83 ec 08             	sub    $0x8,%esp
80103fd4:	50                   	push   %eax
80103fd5:	6a 23                	push   $0x23
80103fd7:	e8 8d fc ff ff       	call   80103c69 <outb>
80103fdc:	83 c4 10             	add    $0x10,%esp
  }
}
80103fdf:	90                   	nop
80103fe0:	c9                   	leave  
80103fe1:	c3                   	ret    

80103fe2 <outb>:
80103fe2:	55                   	push   %ebp
80103fe3:	89 e5                	mov    %esp,%ebp
80103fe5:	83 ec 08             	sub    $0x8,%esp
80103fe8:	8b 45 08             	mov    0x8(%ebp),%eax
80103feb:	8b 55 0c             	mov    0xc(%ebp),%edx
80103fee:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80103ff2:	89 d0                	mov    %edx,%eax
80103ff4:	88 45 f8             	mov    %al,-0x8(%ebp)
80103ff7:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80103ffb:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
80103fff:	ee                   	out    %al,(%dx)
80104000:	90                   	nop
80104001:	c9                   	leave  
80104002:	c3                   	ret    

80104003 <picinit>:
80104003:	f3 0f 1e fb          	endbr32 
80104007:	55                   	push   %ebp
80104008:	89 e5                	mov    %esp,%ebp
8010400a:	68 ff 00 00 00       	push   $0xff
8010400f:	6a 21                	push   $0x21
80104011:	e8 cc ff ff ff       	call   80103fe2 <outb>
80104016:	83 c4 08             	add    $0x8,%esp
80104019:	68 ff 00 00 00       	push   $0xff
8010401e:	68 a1 00 00 00       	push   $0xa1
80104023:	e8 ba ff ff ff       	call   80103fe2 <outb>
80104028:	83 c4 08             	add    $0x8,%esp
8010402b:	90                   	nop
8010402c:	c9                   	leave  
8010402d:	c3                   	ret    

8010402e <pipealloc>:
  int writeopen;  // write fd is still open
};

int
pipealloc(struct file **f0, struct file **f1)
{
8010402e:	f3 0f 1e fb          	endbr32 
80104032:	55                   	push   %ebp
80104033:	89 e5                	mov    %esp,%ebp
80104035:	83 ec 18             	sub    $0x18,%esp
  struct pipe *p;

  p = 0;
80104038:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  *f0 = *f1 = 0;
8010403f:	8b 45 0c             	mov    0xc(%ebp),%eax
80104042:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80104048:	8b 45 0c             	mov    0xc(%ebp),%eax
8010404b:	8b 10                	mov    (%eax),%edx
8010404d:	8b 45 08             	mov    0x8(%ebp),%eax
80104050:	89 10                	mov    %edx,(%eax)
  if((*f0 = filealloc()) == 0 || (*f1 = filealloc()) == 0)
80104052:	e8 bc d0 ff ff       	call   80101113 <filealloc>
80104057:	8b 55 08             	mov    0x8(%ebp),%edx
8010405a:	89 02                	mov    %eax,(%edx)
8010405c:	8b 45 08             	mov    0x8(%ebp),%eax
8010405f:	8b 00                	mov    (%eax),%eax
80104061:	85 c0                	test   %eax,%eax
80104063:	0f 84 c8 00 00 00    	je     80104131 <pipealloc+0x103>
80104069:	e8 a5 d0 ff ff       	call   80101113 <filealloc>
8010406e:	8b 55 0c             	mov    0xc(%ebp),%edx
80104071:	89 02                	mov    %eax,(%edx)
80104073:	8b 45 0c             	mov    0xc(%ebp),%eax
80104076:	8b 00                	mov    (%eax),%eax
80104078:	85 c0                	test   %eax,%eax
8010407a:	0f 84 b1 00 00 00    	je     80104131 <pipealloc+0x103>
    goto bad;
  if((p = (struct pipe*)kalloc()) == 0)
80104080:	e8 c4 ed ff ff       	call   80102e49 <kalloc>
80104085:	89 45 f4             	mov    %eax,-0xc(%ebp)
80104088:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
8010408c:	0f 84 a2 00 00 00    	je     80104134 <pipealloc+0x106>
    goto bad;
  p->readopen = 1;
80104092:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104095:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
8010409c:	00 00 00 
  p->writeopen = 1;
8010409f:	8b 45 f4             	mov    -0xc(%ebp),%eax
801040a2:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
801040a9:	00 00 00 
  p->nwrite = 0;
801040ac:	8b 45 f4             	mov    -0xc(%ebp),%eax
801040af:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
801040b6:	00 00 00 
  p->nread = 0;
801040b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801040bc:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
801040c3:	00 00 00 
  initlock(&p->lock, "pipe");
801040c6:	8b 45 f4             	mov    -0xc(%ebp),%eax
801040c9:	83 ec 08             	sub    $0x8,%esp
801040cc:	68 c7 98 10 80       	push   $0x801098c7
801040d1:	50                   	push   %eax
801040d2:	e8 4a 13 00 00       	call   80105421 <initlock>
801040d7:	83 c4 10             	add    $0x10,%esp
  (*f0)->type = FD_PIPE;
801040da:	8b 45 08             	mov    0x8(%ebp),%eax
801040dd:	8b 00                	mov    (%eax),%eax
801040df:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f0)->readable = 1;
801040e5:	8b 45 08             	mov    0x8(%ebp),%eax
801040e8:	8b 00                	mov    (%eax),%eax
801040ea:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  (*f0)->writable = 0;
801040ee:	8b 45 08             	mov    0x8(%ebp),%eax
801040f1:	8b 00                	mov    (%eax),%eax
801040f3:	c6 40 09 00          	movb   $0x0,0x9(%eax)
  (*f0)->pipe = p;
801040f7:	8b 45 08             	mov    0x8(%ebp),%eax
801040fa:	8b 00                	mov    (%eax),%eax
801040fc:	8b 55 f4             	mov    -0xc(%ebp),%edx
801040ff:	89 50 0c             	mov    %edx,0xc(%eax)
  (*f1)->type = FD_PIPE;
80104102:	8b 45 0c             	mov    0xc(%ebp),%eax
80104105:	8b 00                	mov    (%eax),%eax
80104107:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f1)->readable = 0;
8010410d:	8b 45 0c             	mov    0xc(%ebp),%eax
80104110:	8b 00                	mov    (%eax),%eax
80104112:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  (*f1)->writable = 1;
80104116:	8b 45 0c             	mov    0xc(%ebp),%eax
80104119:	8b 00                	mov    (%eax),%eax
8010411b:	c6 40 09 01          	movb   $0x1,0x9(%eax)
  (*f1)->pipe = p;
8010411f:	8b 45 0c             	mov    0xc(%ebp),%eax
80104122:	8b 00                	mov    (%eax),%eax
80104124:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104127:	89 50 0c             	mov    %edx,0xc(%eax)
  return 0;
8010412a:	b8 00 00 00 00       	mov    $0x0,%eax
8010412f:	eb 51                	jmp    80104182 <pipealloc+0x154>
    goto bad;
80104131:	90                   	nop
80104132:	eb 01                	jmp    80104135 <pipealloc+0x107>
    goto bad;
80104134:	90                   	nop

//PAGEBREAK: 20
 bad:
  if(p)
80104135:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80104139:	74 0e                	je     80104149 <pipealloc+0x11b>
    kfree((char*)p);
8010413b:	83 ec 0c             	sub    $0xc,%esp
8010413e:	ff 75 f4             	pushl  -0xc(%ebp)
80104141:	e8 65 ec ff ff       	call   80102dab <kfree>
80104146:	83 c4 10             	add    $0x10,%esp
  if(*f0)
80104149:	8b 45 08             	mov    0x8(%ebp),%eax
8010414c:	8b 00                	mov    (%eax),%eax
8010414e:	85 c0                	test   %eax,%eax
80104150:	74 11                	je     80104163 <pipealloc+0x135>
    fileclose(*f0);
80104152:	8b 45 08             	mov    0x8(%ebp),%eax
80104155:	8b 00                	mov    (%eax),%eax
80104157:	83 ec 0c             	sub    $0xc,%esp
8010415a:	50                   	push   %eax
8010415b:	e8 79 d0 ff ff       	call   801011d9 <fileclose>
80104160:	83 c4 10             	add    $0x10,%esp
  if(*f1)
80104163:	8b 45 0c             	mov    0xc(%ebp),%eax
80104166:	8b 00                	mov    (%eax),%eax
80104168:	85 c0                	test   %eax,%eax
8010416a:	74 11                	je     8010417d <pipealloc+0x14f>
    fileclose(*f1);
8010416c:	8b 45 0c             	mov    0xc(%ebp),%eax
8010416f:	8b 00                	mov    (%eax),%eax
80104171:	83 ec 0c             	sub    $0xc,%esp
80104174:	50                   	push   %eax
80104175:	e8 5f d0 ff ff       	call   801011d9 <fileclose>
8010417a:	83 c4 10             	add    $0x10,%esp
  return -1;
8010417d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104182:	c9                   	leave  
80104183:	c3                   	ret    

80104184 <pipeclose>:

void
pipeclose(struct pipe *p, int writable)
{
80104184:	f3 0f 1e fb          	endbr32 
80104188:	55                   	push   %ebp
80104189:	89 e5                	mov    %esp,%ebp
8010418b:	83 ec 08             	sub    $0x8,%esp
  acquire(&p->lock);
8010418e:	8b 45 08             	mov    0x8(%ebp),%eax
80104191:	83 ec 0c             	sub    $0xc,%esp
80104194:	50                   	push   %eax
80104195:	e8 ad 12 00 00       	call   80105447 <acquire>
8010419a:	83 c4 10             	add    $0x10,%esp
  if(writable){
8010419d:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
801041a1:	74 23                	je     801041c6 <pipeclose+0x42>
    p->writeopen = 0;
801041a3:	8b 45 08             	mov    0x8(%ebp),%eax
801041a6:	c7 80 40 02 00 00 00 	movl   $0x0,0x240(%eax)
801041ad:	00 00 00 
    wakeup(&p->nread);
801041b0:	8b 45 08             	mov    0x8(%ebp),%eax
801041b3:	05 34 02 00 00       	add    $0x234,%eax
801041b8:	83 ec 0c             	sub    $0xc,%esp
801041bb:	50                   	push   %eax
801041bc:	e8 06 0f 00 00       	call   801050c7 <wakeup>
801041c1:	83 c4 10             	add    $0x10,%esp
801041c4:	eb 21                	jmp    801041e7 <pipeclose+0x63>
  } else {
    p->readopen = 0;
801041c6:	8b 45 08             	mov    0x8(%ebp),%eax
801041c9:	c7 80 3c 02 00 00 00 	movl   $0x0,0x23c(%eax)
801041d0:	00 00 00 
    wakeup(&p->nwrite);
801041d3:	8b 45 08             	mov    0x8(%ebp),%eax
801041d6:	05 38 02 00 00       	add    $0x238,%eax
801041db:	83 ec 0c             	sub    $0xc,%esp
801041de:	50                   	push   %eax
801041df:	e8 e3 0e 00 00       	call   801050c7 <wakeup>
801041e4:	83 c4 10             	add    $0x10,%esp
  }
  if(p->readopen == 0 && p->writeopen == 0){
801041e7:	8b 45 08             	mov    0x8(%ebp),%eax
801041ea:	8b 80 3c 02 00 00    	mov    0x23c(%eax),%eax
801041f0:	85 c0                	test   %eax,%eax
801041f2:	75 2c                	jne    80104220 <pipeclose+0x9c>
801041f4:	8b 45 08             	mov    0x8(%ebp),%eax
801041f7:	8b 80 40 02 00 00    	mov    0x240(%eax),%eax
801041fd:	85 c0                	test   %eax,%eax
801041ff:	75 1f                	jne    80104220 <pipeclose+0x9c>
    release(&p->lock);
80104201:	8b 45 08             	mov    0x8(%ebp),%eax
80104204:	83 ec 0c             	sub    $0xc,%esp
80104207:	50                   	push   %eax
80104208:	e8 ac 12 00 00       	call   801054b9 <release>
8010420d:	83 c4 10             	add    $0x10,%esp
    kfree((char*)p);
80104210:	83 ec 0c             	sub    $0xc,%esp
80104213:	ff 75 08             	pushl  0x8(%ebp)
80104216:	e8 90 eb ff ff       	call   80102dab <kfree>
8010421b:	83 c4 10             	add    $0x10,%esp
8010421e:	eb 10                	jmp    80104230 <pipeclose+0xac>
  } else
    release(&p->lock);
80104220:	8b 45 08             	mov    0x8(%ebp),%eax
80104223:	83 ec 0c             	sub    $0xc,%esp
80104226:	50                   	push   %eax
80104227:	e8 8d 12 00 00       	call   801054b9 <release>
8010422c:	83 c4 10             	add    $0x10,%esp
}
8010422f:	90                   	nop
80104230:	90                   	nop
80104231:	c9                   	leave  
80104232:	c3                   	ret    

80104233 <pipewrite>:

//PAGEBREAK: 40
int
pipewrite(struct pipe *p, char *addr, int n)
{
80104233:	f3 0f 1e fb          	endbr32 
80104237:	55                   	push   %ebp
80104238:	89 e5                	mov    %esp,%ebp
8010423a:	53                   	push   %ebx
8010423b:	83 ec 14             	sub    $0x14,%esp
  int i;

  acquire(&p->lock);
8010423e:	8b 45 08             	mov    0x8(%ebp),%eax
80104241:	83 ec 0c             	sub    $0xc,%esp
80104244:	50                   	push   %eax
80104245:	e8 fd 11 00 00       	call   80105447 <acquire>
8010424a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < n; i++){
8010424d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80104254:	e9 ad 00 00 00       	jmp    80104306 <pipewrite+0xd3>
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
      if(p->readopen == 0 || myproc()->killed){
80104259:	8b 45 08             	mov    0x8(%ebp),%eax
8010425c:	8b 80 3c 02 00 00    	mov    0x23c(%eax),%eax
80104262:	85 c0                	test   %eax,%eax
80104264:	74 0c                	je     80104272 <pipewrite+0x3f>
80104266:	e8 a2 02 00 00       	call   8010450d <myproc>
8010426b:	8b 40 24             	mov    0x24(%eax),%eax
8010426e:	85 c0                	test   %eax,%eax
80104270:	74 19                	je     8010428b <pipewrite+0x58>
        release(&p->lock);
80104272:	8b 45 08             	mov    0x8(%ebp),%eax
80104275:	83 ec 0c             	sub    $0xc,%esp
80104278:	50                   	push   %eax
80104279:	e8 3b 12 00 00       	call   801054b9 <release>
8010427e:	83 c4 10             	add    $0x10,%esp
        return -1;
80104281:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104286:	e9 a9 00 00 00       	jmp    80104334 <pipewrite+0x101>
      }
      wakeup(&p->nread);
8010428b:	8b 45 08             	mov    0x8(%ebp),%eax
8010428e:	05 34 02 00 00       	add    $0x234,%eax
80104293:	83 ec 0c             	sub    $0xc,%esp
80104296:	50                   	push   %eax
80104297:	e8 2b 0e 00 00       	call   801050c7 <wakeup>
8010429c:	83 c4 10             	add    $0x10,%esp
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
8010429f:	8b 45 08             	mov    0x8(%ebp),%eax
801042a2:	8b 55 08             	mov    0x8(%ebp),%edx
801042a5:	81 c2 38 02 00 00    	add    $0x238,%edx
801042ab:	83 ec 08             	sub    $0x8,%esp
801042ae:	50                   	push   %eax
801042af:	52                   	push   %edx
801042b0:	e8 20 0d 00 00       	call   80104fd5 <sleep>
801042b5:	83 c4 10             	add    $0x10,%esp
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
801042b8:	8b 45 08             	mov    0x8(%ebp),%eax
801042bb:	8b 90 38 02 00 00    	mov    0x238(%eax),%edx
801042c1:	8b 45 08             	mov    0x8(%ebp),%eax
801042c4:	8b 80 34 02 00 00    	mov    0x234(%eax),%eax
801042ca:	05 00 02 00 00       	add    $0x200,%eax
801042cf:	39 c2                	cmp    %eax,%edx
801042d1:	74 86                	je     80104259 <pipewrite+0x26>
    }
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
801042d3:	8b 55 f4             	mov    -0xc(%ebp),%edx
801042d6:	8b 45 0c             	mov    0xc(%ebp),%eax
801042d9:	8d 1c 02             	lea    (%edx,%eax,1),%ebx
801042dc:	8b 45 08             	mov    0x8(%ebp),%eax
801042df:	8b 80 38 02 00 00    	mov    0x238(%eax),%eax
801042e5:	8d 48 01             	lea    0x1(%eax),%ecx
801042e8:	8b 55 08             	mov    0x8(%ebp),%edx
801042eb:	89 8a 38 02 00 00    	mov    %ecx,0x238(%edx)
801042f1:	25 ff 01 00 00       	and    $0x1ff,%eax
801042f6:	89 c1                	mov    %eax,%ecx
801042f8:	0f b6 13             	movzbl (%ebx),%edx
801042fb:	8b 45 08             	mov    0x8(%ebp),%eax
801042fe:	88 54 08 34          	mov    %dl,0x34(%eax,%ecx,1)
  for(i = 0; i < n; i++){
80104302:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80104306:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104309:	3b 45 10             	cmp    0x10(%ebp),%eax
8010430c:	7c aa                	jl     801042b8 <pipewrite+0x85>
  }
  wakeup(&p->nread);  //DOC: pipewrite-wakeup1
8010430e:	8b 45 08             	mov    0x8(%ebp),%eax
80104311:	05 34 02 00 00       	add    $0x234,%eax
80104316:	83 ec 0c             	sub    $0xc,%esp
80104319:	50                   	push   %eax
8010431a:	e8 a8 0d 00 00       	call   801050c7 <wakeup>
8010431f:	83 c4 10             	add    $0x10,%esp
  release(&p->lock);
80104322:	8b 45 08             	mov    0x8(%ebp),%eax
80104325:	83 ec 0c             	sub    $0xc,%esp
80104328:	50                   	push   %eax
80104329:	e8 8b 11 00 00       	call   801054b9 <release>
8010432e:	83 c4 10             	add    $0x10,%esp
  return n;
80104331:	8b 45 10             	mov    0x10(%ebp),%eax
}
80104334:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104337:	c9                   	leave  
80104338:	c3                   	ret    

80104339 <piperead>:

int
piperead(struct pipe *p, char *addr, int n)
{
80104339:	f3 0f 1e fb          	endbr32 
8010433d:	55                   	push   %ebp
8010433e:	89 e5                	mov    %esp,%ebp
80104340:	83 ec 18             	sub    $0x18,%esp
  int i;

  acquire(&p->lock);
80104343:	8b 45 08             	mov    0x8(%ebp),%eax
80104346:	83 ec 0c             	sub    $0xc,%esp
80104349:	50                   	push   %eax
8010434a:	e8 f8 10 00 00       	call   80105447 <acquire>
8010434f:	83 c4 10             	add    $0x10,%esp
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80104352:	eb 3e                	jmp    80104392 <piperead+0x59>
    if(myproc()->killed){
80104354:	e8 b4 01 00 00       	call   8010450d <myproc>
80104359:	8b 40 24             	mov    0x24(%eax),%eax
8010435c:	85 c0                	test   %eax,%eax
8010435e:	74 19                	je     80104379 <piperead+0x40>
      release(&p->lock);
80104360:	8b 45 08             	mov    0x8(%ebp),%eax
80104363:	83 ec 0c             	sub    $0xc,%esp
80104366:	50                   	push   %eax
80104367:	e8 4d 11 00 00       	call   801054b9 <release>
8010436c:	83 c4 10             	add    $0x10,%esp
      return -1;
8010436f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104374:	e9 be 00 00 00       	jmp    80104437 <piperead+0xfe>
    }
    sleep(&p->nread, &p->lock); //DOC: piperead-sleep
80104379:	8b 45 08             	mov    0x8(%ebp),%eax
8010437c:	8b 55 08             	mov    0x8(%ebp),%edx
8010437f:	81 c2 34 02 00 00    	add    $0x234,%edx
80104385:	83 ec 08             	sub    $0x8,%esp
80104388:	50                   	push   %eax
80104389:	52                   	push   %edx
8010438a:	e8 46 0c 00 00       	call   80104fd5 <sleep>
8010438f:	83 c4 10             	add    $0x10,%esp
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80104392:	8b 45 08             	mov    0x8(%ebp),%eax
80104395:	8b 90 34 02 00 00    	mov    0x234(%eax),%edx
8010439b:	8b 45 08             	mov    0x8(%ebp),%eax
8010439e:	8b 80 38 02 00 00    	mov    0x238(%eax),%eax
801043a4:	39 c2                	cmp    %eax,%edx
801043a6:	75 0d                	jne    801043b5 <piperead+0x7c>
801043a8:	8b 45 08             	mov    0x8(%ebp),%eax
801043ab:	8b 80 40 02 00 00    	mov    0x240(%eax),%eax
801043b1:	85 c0                	test   %eax,%eax
801043b3:	75 9f                	jne    80104354 <piperead+0x1b>
  }
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801043b5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801043bc:	eb 48                	jmp    80104406 <piperead+0xcd>
    if(p->nread == p->nwrite)
801043be:	8b 45 08             	mov    0x8(%ebp),%eax
801043c1:	8b 90 34 02 00 00    	mov    0x234(%eax),%edx
801043c7:	8b 45 08             	mov    0x8(%ebp),%eax
801043ca:	8b 80 38 02 00 00    	mov    0x238(%eax),%eax
801043d0:	39 c2                	cmp    %eax,%edx
801043d2:	74 3c                	je     80104410 <piperead+0xd7>
      break;
    addr[i] = p->data[p->nread++ % PIPESIZE];
801043d4:	8b 45 08             	mov    0x8(%ebp),%eax
801043d7:	8b 80 34 02 00 00    	mov    0x234(%eax),%eax
801043dd:	8d 48 01             	lea    0x1(%eax),%ecx
801043e0:	8b 55 08             	mov    0x8(%ebp),%edx
801043e3:	89 8a 34 02 00 00    	mov    %ecx,0x234(%edx)
801043e9:	25 ff 01 00 00       	and    $0x1ff,%eax
801043ee:	89 c1                	mov    %eax,%ecx
801043f0:	8b 55 f4             	mov    -0xc(%ebp),%edx
801043f3:	8b 45 0c             	mov    0xc(%ebp),%eax
801043f6:	01 c2                	add    %eax,%edx
801043f8:	8b 45 08             	mov    0x8(%ebp),%eax
801043fb:	0f b6 44 08 34       	movzbl 0x34(%eax,%ecx,1),%eax
80104400:	88 02                	mov    %al,(%edx)
  for(i = 0; i < n; i++){  //DOC: piperead-copy
80104402:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80104406:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104409:	3b 45 10             	cmp    0x10(%ebp),%eax
8010440c:	7c b0                	jl     801043be <piperead+0x85>
8010440e:	eb 01                	jmp    80104411 <piperead+0xd8>
      break;
80104410:	90                   	nop
  }
  wakeup(&p->nwrite);  //DOC: piperead-wakeup
80104411:	8b 45 08             	mov    0x8(%ebp),%eax
80104414:	05 38 02 00 00       	add    $0x238,%eax
80104419:	83 ec 0c             	sub    $0xc,%esp
8010441c:	50                   	push   %eax
8010441d:	e8 a5 0c 00 00       	call   801050c7 <wakeup>
80104422:	83 c4 10             	add    $0x10,%esp
  release(&p->lock);
80104425:	8b 45 08             	mov    0x8(%ebp),%eax
80104428:	83 ec 0c             	sub    $0xc,%esp
8010442b:	50                   	push   %eax
8010442c:	e8 88 10 00 00       	call   801054b9 <release>
80104431:	83 c4 10             	add    $0x10,%esp
  return i;
80104434:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
80104437:	c9                   	leave  
80104438:	c3                   	ret    

80104439 <readeflags>:
{
80104439:	55                   	push   %ebp
8010443a:	89 e5                	mov    %esp,%ebp
8010443c:	83 ec 10             	sub    $0x10,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
8010443f:	9c                   	pushf  
80104440:	58                   	pop    %eax
80104441:	89 45 fc             	mov    %eax,-0x4(%ebp)
  return eflags;
80104444:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
80104447:	c9                   	leave  
80104448:	c3                   	ret    

80104449 <sti>:
{
80104449:	55                   	push   %ebp
8010444a:	89 e5                	mov    %esp,%ebp
  asm volatile("sti");
8010444c:	fb                   	sti    
}
8010444d:	90                   	nop
8010444e:	5d                   	pop    %ebp
8010444f:	c3                   	ret    

80104450 <pinit>:

static void wakeup1(void *chan);

void
pinit(void)
{
80104450:	f3 0f 1e fb          	endbr32 
80104454:	55                   	push   %ebp
80104455:	89 e5                	mov    %esp,%ebp
80104457:	83 ec 08             	sub    $0x8,%esp
  initlock(&ptable.lock, "ptable");
8010445a:	83 ec 08             	sub    $0x8,%esp
8010445d:	68 cc 98 10 80       	push   $0x801098cc
80104462:	68 c0 5d 11 80       	push   $0x80115dc0
80104467:	e8 b5 0f 00 00       	call   80105421 <initlock>
8010446c:	83 c4 10             	add    $0x10,%esp
}
8010446f:	90                   	nop
80104470:	c9                   	leave  
80104471:	c3                   	ret    

80104472 <cpuid>:

// Must be called with interrupts disabled
int
cpuid() {
80104472:	f3 0f 1e fb          	endbr32 
80104476:	55                   	push   %ebp
80104477:	89 e5                	mov    %esp,%ebp
80104479:	83 ec 08             	sub    $0x8,%esp
  return mycpu()-cpus;
8010447c:	e8 10 00 00 00       	call   80104491 <mycpu>
80104481:	2d 20 58 11 80       	sub    $0x80115820,%eax
80104486:	c1 f8 04             	sar    $0x4,%eax
80104489:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
}
8010448f:	c9                   	leave  
80104490:	c3                   	ret    

80104491 <mycpu>:

// Must be called with interrupts disabled to avoid the caller being
// rescheduled between reading lapicid and running through the loop.
struct cpu*
mycpu(void)
{
80104491:	f3 0f 1e fb          	endbr32 
80104495:	55                   	push   %ebp
80104496:	89 e5                	mov    %esp,%ebp
80104498:	83 ec 18             	sub    $0x18,%esp
  int apicid, i;
  
  if(readeflags()&FL_IF)
8010449b:	e8 99 ff ff ff       	call   80104439 <readeflags>
801044a0:	25 00 02 00 00       	and    $0x200,%eax
801044a5:	85 c0                	test   %eax,%eax
801044a7:	74 0d                	je     801044b6 <mycpu+0x25>
    panic("mycpu called with interrupts enabled\n");
801044a9:	83 ec 0c             	sub    $0xc,%esp
801044ac:	68 d4 98 10 80       	push   $0x801098d4
801044b1:	e8 52 c1 ff ff       	call   80100608 <panic>
  
  apicid = lapicid();
801044b6:	e8 21 ed ff ff       	call   801031dc <lapicid>
801044bb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  // APIC IDs are not guaranteed to be contiguous. Maybe we should have
  // a reverse map, or reserve a register to store &cpus[i].
  for (i = 0; i < ncpu; ++i) {
801044be:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801044c5:	eb 2d                	jmp    801044f4 <mycpu+0x63>
    if (cpus[i].apicid == apicid)
801044c7:	8b 45 f4             	mov    -0xc(%ebp),%eax
801044ca:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
801044d0:	05 20 58 11 80       	add    $0x80115820,%eax
801044d5:	0f b6 00             	movzbl (%eax),%eax
801044d8:	0f b6 c0             	movzbl %al,%eax
801044db:	39 45 f0             	cmp    %eax,-0x10(%ebp)
801044de:	75 10                	jne    801044f0 <mycpu+0x5f>
      return &cpus[i];
801044e0:	8b 45 f4             	mov    -0xc(%ebp),%eax
801044e3:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
801044e9:	05 20 58 11 80       	add    $0x80115820,%eax
801044ee:	eb 1b                	jmp    8010450b <mycpu+0x7a>
  for (i = 0; i < ncpu; ++i) {
801044f0:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
801044f4:	a1 a0 5d 11 80       	mov    0x80115da0,%eax
801044f9:	39 45 f4             	cmp    %eax,-0xc(%ebp)
801044fc:	7c c9                	jl     801044c7 <mycpu+0x36>
  }
  panic("unknown apicid\n");
801044fe:	83 ec 0c             	sub    $0xc,%esp
80104501:	68 fa 98 10 80       	push   $0x801098fa
80104506:	e8 fd c0 ff ff       	call   80100608 <panic>
}
8010450b:	c9                   	leave  
8010450c:	c3                   	ret    

8010450d <myproc>:

// Disable interrupts so that we are not rescheduled
// while reading proc from the cpu structure
struct proc*
myproc(void) {
8010450d:	f3 0f 1e fb          	endbr32 
80104511:	55                   	push   %ebp
80104512:	89 e5                	mov    %esp,%ebp
80104514:	83 ec 18             	sub    $0x18,%esp
  struct cpu *c;
  struct proc *p;
  pushcli();
80104517:	e8 b7 10 00 00       	call   801055d3 <pushcli>
  c = mycpu();
8010451c:	e8 70 ff ff ff       	call   80104491 <mycpu>
80104521:	89 45 f4             	mov    %eax,-0xc(%ebp)
  p = c->proc;
80104524:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104527:	8b 80 ac 00 00 00    	mov    0xac(%eax),%eax
8010452d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  popcli();
80104530:	e8 ef 10 00 00       	call   80105624 <popcli>
  return p;
80104535:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
80104538:	c9                   	leave  
80104539:	c3                   	ret    

8010453a <allocproc>:
// If found, change state to EMBRYO and initialize
// state required to run in the kernel.
// Otherwise return 0.
static struct proc*
allocproc(void)
{
8010453a:	f3 0f 1e fb          	endbr32 
8010453e:	55                   	push   %ebp
8010453f:	89 e5                	mov    %esp,%ebp
80104541:	83 ec 18             	sub    $0x18,%esp
  struct proc *p;
  char *sp;

  acquire(&ptable.lock);
80104544:	83 ec 0c             	sub    $0xc,%esp
80104547:	68 c0 5d 11 80       	push   $0x80115dc0
8010454c:	e8 f6 0e 00 00       	call   80105447 <acquire>
80104551:	83 c4 10             	add    $0x10,%esp

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80104554:	c7 45 f4 f4 5d 11 80 	movl   $0x80115df4,-0xc(%ebp)
8010455b:	eb 11                	jmp    8010456e <allocproc+0x34>
    if(p->state == UNUSED)
8010455d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104560:	8b 40 0c             	mov    0xc(%eax),%eax
80104563:	85 c0                	test   %eax,%eax
80104565:	74 2a                	je     80104591 <allocproc+0x57>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80104567:	81 45 f4 c0 00 00 00 	addl   $0xc0,-0xc(%ebp)
8010456e:	81 7d f4 f4 8d 11 80 	cmpl   $0x80118df4,-0xc(%ebp)
80104575:	72 e6                	jb     8010455d <allocproc+0x23>
      goto found;

  release(&ptable.lock);
80104577:	83 ec 0c             	sub    $0xc,%esp
8010457a:	68 c0 5d 11 80       	push   $0x80115dc0
8010457f:	e8 35 0f 00 00       	call   801054b9 <release>
80104584:	83 c4 10             	add    $0x10,%esp
  return 0;
80104587:	b8 00 00 00 00       	mov    $0x0,%eax
8010458c:	e9 b6 00 00 00       	jmp    80104647 <allocproc+0x10d>
      goto found;
80104591:	90                   	nop
80104592:	f3 0f 1e fb          	endbr32 

found:
  p->state = EMBRYO;
80104596:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104599:	c7 40 0c 01 00 00 00 	movl   $0x1,0xc(%eax)
  p->pid = nextpid++;
801045a0:	a1 00 d0 10 80       	mov    0x8010d000,%eax
801045a5:	8d 50 01             	lea    0x1(%eax),%edx
801045a8:	89 15 00 d0 10 80    	mov    %edx,0x8010d000
801045ae:	8b 55 f4             	mov    -0xc(%ebp),%edx
801045b1:	89 42 10             	mov    %eax,0x10(%edx)

  release(&ptable.lock);
801045b4:	83 ec 0c             	sub    $0xc,%esp
801045b7:	68 c0 5d 11 80       	push   $0x80115dc0
801045bc:	e8 f8 0e 00 00       	call   801054b9 <release>
801045c1:	83 c4 10             	add    $0x10,%esp

  // Allocate kernel stack.
  if((p->kstack = kalloc()) == 0){
801045c4:	e8 80 e8 ff ff       	call   80102e49 <kalloc>
801045c9:	8b 55 f4             	mov    -0xc(%ebp),%edx
801045cc:	89 42 08             	mov    %eax,0x8(%edx)
801045cf:	8b 45 f4             	mov    -0xc(%ebp),%eax
801045d2:	8b 40 08             	mov    0x8(%eax),%eax
801045d5:	85 c0                	test   %eax,%eax
801045d7:	75 11                	jne    801045ea <allocproc+0xb0>
    p->state = UNUSED;
801045d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801045dc:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    return 0;
801045e3:	b8 00 00 00 00       	mov    $0x0,%eax
801045e8:	eb 5d                	jmp    80104647 <allocproc+0x10d>
  }
  sp = p->kstack + KSTACKSIZE;
801045ea:	8b 45 f4             	mov    -0xc(%ebp),%eax
801045ed:	8b 40 08             	mov    0x8(%eax),%eax
801045f0:	05 00 10 00 00       	add    $0x1000,%eax
801045f5:	89 45 f0             	mov    %eax,-0x10(%ebp)

  // Leave room for trap frame.
  sp -= sizeof *p->tf;
801045f8:	83 6d f0 4c          	subl   $0x4c,-0x10(%ebp)
  p->tf = (struct trapframe*)sp;
801045fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
801045ff:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104602:	89 50 18             	mov    %edx,0x18(%eax)

  // Set up new context to start executing at forkret,
  // which returns to trapret.
  sp -= 4;
80104605:	83 6d f0 04          	subl   $0x4,-0x10(%ebp)
  *(uint*)sp = (uint)trapret;
80104609:	ba 72 6c 10 80       	mov    $0x80106c72,%edx
8010460e:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104611:	89 10                	mov    %edx,(%eax)

  sp -= sizeof *p->context;
80104613:	83 6d f0 14          	subl   $0x14,-0x10(%ebp)
  p->context = (struct context*)sp;
80104617:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010461a:	8b 55 f0             	mov    -0x10(%ebp),%edx
8010461d:	89 50 1c             	mov    %edx,0x1c(%eax)
  memset(p->context, 0, sizeof *p->context);
80104620:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104623:	8b 40 1c             	mov    0x1c(%eax),%eax
80104626:	83 ec 04             	sub    $0x4,%esp
80104629:	6a 14                	push   $0x14
8010462b:	6a 00                	push   $0x0
8010462d:	50                   	push   %eax
8010462e:	e8 b3 10 00 00       	call   801056e6 <memset>
80104633:	83 c4 10             	add    $0x10,%esp
  p->context->eip = (uint)forkret;
80104636:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104639:	8b 40 1c             	mov    0x1c(%eax),%eax
8010463c:	ba 8b 4f 10 80       	mov    $0x80104f8b,%edx
80104641:	89 50 10             	mov    %edx,0x10(%eax)
  
  // EDIT: hand of clock
  p->clockHand = 0;
  */

  return p;
80104644:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
80104647:	c9                   	leave  
80104648:	c3                   	ret    

80104649 <userinit>:

//PAGEBREAK: 32
// Set up first user process.
void
userinit(void)
{
80104649:	f3 0f 1e fb          	endbr32 
8010464d:	55                   	push   %ebp
8010464e:	89 e5                	mov    %esp,%ebp
80104650:	83 ec 18             	sub    $0x18,%esp
  struct proc *p;
  extern char _binary_initcode_start[], _binary_initcode_size[];

  p = allocproc();
80104653:	e8 e2 fe ff ff       	call   8010453a <allocproc>
80104658:	89 45 f4             	mov    %eax,-0xc(%ebp)
  
  initproc = p;
8010465b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010465e:	a3 40 d6 10 80       	mov    %eax,0x8010d640
  if((p->pgdir = setupkvm()) == 0)
80104663:	e8 da 3b 00 00       	call   80108242 <setupkvm>
80104668:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010466b:	89 42 04             	mov    %eax,0x4(%edx)
8010466e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104671:	8b 40 04             	mov    0x4(%eax),%eax
80104674:	85 c0                	test   %eax,%eax
80104676:	75 0d                	jne    80104685 <userinit+0x3c>
    panic("userinit: out of memory?");
80104678:	83 ec 0c             	sub    $0xc,%esp
8010467b:	68 0a 99 10 80       	push   $0x8010990a
80104680:	e8 83 bf ff ff       	call   80100608 <panic>
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
80104685:	ba 2c 00 00 00       	mov    $0x2c,%edx
8010468a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010468d:	8b 40 04             	mov    0x4(%eax),%eax
80104690:	83 ec 04             	sub    $0x4,%esp
80104693:	52                   	push   %edx
80104694:	68 e0 d4 10 80       	push   $0x8010d4e0
80104699:	50                   	push   %eax
8010469a:	e8 1c 3e 00 00       	call   801084bb <inituvm>
8010469f:	83 c4 10             	add    $0x10,%esp
  p->sz = PGSIZE;
801046a2:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046a5:	c7 00 00 10 00 00    	movl   $0x1000,(%eax)
  memset(p->tf, 0, sizeof(*p->tf));
801046ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046ae:	8b 40 18             	mov    0x18(%eax),%eax
801046b1:	83 ec 04             	sub    $0x4,%esp
801046b4:	6a 4c                	push   $0x4c
801046b6:	6a 00                	push   $0x0
801046b8:	50                   	push   %eax
801046b9:	e8 28 10 00 00       	call   801056e6 <memset>
801046be:	83 c4 10             	add    $0x10,%esp
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
801046c1:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046c4:	8b 40 18             	mov    0x18(%eax),%eax
801046c7:	66 c7 40 3c 1b 00    	movw   $0x1b,0x3c(%eax)
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
801046cd:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046d0:	8b 40 18             	mov    0x18(%eax),%eax
801046d3:	66 c7 40 2c 23 00    	movw   $0x23,0x2c(%eax)
  p->tf->es = p->tf->ds;
801046d9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046dc:	8b 50 18             	mov    0x18(%eax),%edx
801046df:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046e2:	8b 40 18             	mov    0x18(%eax),%eax
801046e5:	0f b7 52 2c          	movzwl 0x2c(%edx),%edx
801046e9:	66 89 50 28          	mov    %dx,0x28(%eax)
  p->tf->ss = p->tf->ds;
801046ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046f0:	8b 50 18             	mov    0x18(%eax),%edx
801046f3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801046f6:	8b 40 18             	mov    0x18(%eax),%eax
801046f9:	0f b7 52 2c          	movzwl 0x2c(%edx),%edx
801046fd:	66 89 50 48          	mov    %dx,0x48(%eax)
  p->tf->eflags = FL_IF;
80104701:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104704:	8b 40 18             	mov    0x18(%eax),%eax
80104707:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
  p->tf->esp = PGSIZE;
8010470e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104711:	8b 40 18             	mov    0x18(%eax),%eax
80104714:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
  p->tf->eip = 0;  // beginning of initcode.S
8010471b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010471e:	8b 40 18             	mov    0x18(%eax),%eax
80104721:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)

  safestrcpy(p->name, "initcode", sizeof(p->name));
80104728:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010472b:	83 c0 6c             	add    $0x6c,%eax
8010472e:	83 ec 04             	sub    $0x4,%esp
80104731:	6a 10                	push   $0x10
80104733:	68 23 99 10 80       	push   $0x80109923
80104738:	50                   	push   %eax
80104739:	e8 c3 11 00 00       	call   80105901 <safestrcpy>
8010473e:	83 c4 10             	add    $0x10,%esp
  p->cwd = namei("/");
80104741:	83 ec 0c             	sub    $0xc,%esp
80104744:	68 2c 99 10 80       	push   $0x8010992c
80104749:	e8 76 df ff ff       	call   801026c4 <namei>
8010474e:	83 c4 10             	add    $0x10,%esp
80104751:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104754:	89 42 68             	mov    %eax,0x68(%edx)

  // this assignment to p->state lets other cores
  // run this process. the acquire forces the above
  // writes to be visible, and the lock is also needed
  // because the assignment might not be atomic.
  acquire(&ptable.lock);
80104757:	83 ec 0c             	sub    $0xc,%esp
8010475a:	68 c0 5d 11 80       	push   $0x80115dc0
8010475f:	e8 e3 0c 00 00       	call   80105447 <acquire>
80104764:	83 c4 10             	add    $0x10,%esp

  p->state = RUNNABLE;
80104767:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010476a:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)

  release(&ptable.lock);
80104771:	83 ec 0c             	sub    $0xc,%esp
80104774:	68 c0 5d 11 80       	push   $0x80115dc0
80104779:	e8 3b 0d 00 00       	call   801054b9 <release>
8010477e:	83 c4 10             	add    $0x10,%esp
}
80104781:	90                   	nop
80104782:	c9                   	leave  
80104783:	c3                   	ret    

80104784 <growproc>:

// Grow current process's memory by n bytes.
// Return 0 on success, -1 on failure.
int
growproc(int n)
{
80104784:	f3 0f 1e fb          	endbr32 
80104788:	55                   	push   %ebp
80104789:	89 e5                	mov    %esp,%ebp
8010478b:	83 ec 38             	sub    $0x38,%esp
  uint sz;
  uint oldsz;
  struct proc *curproc = myproc();
8010478e:	e8 7a fd ff ff       	call   8010450d <myproc>
80104793:	89 45 d8             	mov    %eax,-0x28(%ebp)
  int pages;
  
  // need this because sz gets updated in allocuvm call
  oldsz = curproc->sz;
80104796:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104799:	8b 00                	mov    (%eax),%eax
8010479b:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  sz = curproc->sz;
8010479e:	8b 45 d8             	mov    -0x28(%ebp),%eax
801047a1:	8b 00                	mov    (%eax),%eax
801047a3:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(n > 0){
801047a6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
801047aa:	7e 69                	jle    80104815 <growproc+0x91>
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0) {
801047ac:	8b 55 08             	mov    0x8(%ebp),%edx
801047af:	8b 45 f4             	mov    -0xc(%ebp),%eax
801047b2:	01 c2                	add    %eax,%edx
801047b4:	8b 45 d8             	mov    -0x28(%ebp),%eax
801047b7:	8b 40 04             	mov    0x4(%eax),%eax
801047ba:	83 ec 04             	sub    $0x4,%esp
801047bd:	52                   	push   %edx
801047be:	ff 75 f4             	pushl  -0xc(%ebp)
801047c1:	50                   	push   %eax
801047c2:	e8 39 3e 00 00       	call   80108600 <allocuvm>
801047c7:	83 c4 10             	add    $0x10,%esp
801047ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
801047cd:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
801047d1:	75 0a                	jne    801047dd <growproc+0x59>
      return -1;
801047d3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801047d8:	e9 e8 01 00 00       	jmp    801049c5 <growproc+0x241>
    }
    uint calcN = sz - oldsz;
801047dd:	8b 45 f4             	mov    -0xc(%ebp),%eax
801047e0:	2b 45 d4             	sub    -0x2c(%ebp),%eax
801047e3:	89 45 d0             	mov    %eax,-0x30(%ebp)
    pages = (calcN + (PGSIZE - 1)) / PGSIZE;
801047e6:	8b 45 d0             	mov    -0x30(%ebp),%eax
801047e9:	05 ff 0f 00 00       	add    $0xfff,%eax
801047ee:	c1 e8 0c             	shr    $0xc,%eax
801047f1:	89 45 cc             	mov    %eax,-0x34(%ebp)
    mencrypt((char *)PGROUNDUP(oldsz), pages);
801047f4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801047f7:	05 ff 0f 00 00       	add    $0xfff,%eax
801047fc:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80104801:	83 ec 08             	sub    $0x8,%esp
80104804:	ff 75 cc             	pushl  -0x34(%ebp)
80104807:	50                   	push   %eax
80104808:	e8 c1 47 00 00       	call   80108fce <mencrypt>
8010480d:	83 c4 10             	add    $0x10,%esp
80104810:	e9 95 01 00 00       	jmp    801049aa <growproc+0x226>
  } else if(n < 0){
80104815:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80104819:	0f 89 8b 01 00 00    	jns    801049aa <growproc+0x226>
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
8010481f:	8b 55 08             	mov    0x8(%ebp),%edx
80104822:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104825:	01 c2                	add    %eax,%edx
80104827:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010482a:	8b 40 04             	mov    0x4(%eax),%eax
8010482d:	83 ec 04             	sub    $0x4,%esp
80104830:	52                   	push   %edx
80104831:	ff 75 f4             	pushl  -0xc(%ebp)
80104834:	50                   	push   %eax
80104835:	e8 cf 3e 00 00       	call   80108709 <deallocuvm>
8010483a:	83 c4 10             	add    $0x10,%esp
8010483d:	89 45 f4             	mov    %eax,-0xc(%ebp)
80104840:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80104844:	75 0a                	jne    80104850 <growproc+0xcc>
      return -1;
80104846:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010484b:	e9 75 01 00 00       	jmp    801049c5 <growproc+0x241>
     } // my edit to initialize the dummy array            
     */   
    
    
    // intialize dummy queue
    for(int x = 0 ; x < CLOCKSIZE ; x++) {
80104850:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80104857:	eb 15                	jmp    8010486e <growproc+0xea>
      curproc->dummyQueue[x] = (void *) -1;
80104859:	8b 45 d8             	mov    -0x28(%ebp),%eax
8010485c:	8b 55 f0             	mov    -0x10(%ebp),%edx
8010485f:	83 c2 24             	add    $0x24,%edx
80104862:	c7 44 90 0c ff ff ff 	movl   $0xffffffff,0xc(%eax,%edx,4)
80104869:	ff 
    for(int x = 0 ; x < CLOCKSIZE ; x++) {
8010486a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
8010486e:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
80104872:	7e e5                	jle    80104859 <growproc+0xd5>
    // uint calcN = sz - oldsz;
    // pages = (calcN + (PGSIZE - 1)) / PGSIZE;
    //mdecrypt((char *)PGROUNDUP(oldsz), pages);

    // check if pages in buffer fall under this new size in address space (When page address is greater than address allocated we clear it)
    for (int i = 0; i < CLOCKSIZE; i++) {
80104874:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
8010487b:	e9 85 00 00 00       	jmp    80104905 <growproc+0x181>
    	// page no longer in address space
        //if (!(((void *)curproc->pgQueue[i] < (void *)curproc->sz) || ((void *)curproc->pgQueue[i] > (void *)(sz - n)))) {
    	if (!(((void *)curproc->pgQueue[i] > (void *)PGROUNDUP(curproc->sz)) || ((void *)curproc->pgQueue[i] < (void *)PGROUNDUP(sz + n)))) {
80104880:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104883:	8b 55 ec             	mov    -0x14(%ebp),%edx
80104886:	83 c2 1c             	add    $0x1c,%edx
80104889:	8b 54 90 0c          	mov    0xc(%eax,%edx,4),%edx
8010488d:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104890:	8b 00                	mov    (%eax),%eax
80104892:	05 ff 0f 00 00       	add    $0xfff,%eax
80104897:	25 00 f0 ff ff       	and    $0xfffff000,%eax
8010489c:	39 c2                	cmp    %eax,%edx
8010489e:	77 61                	ja     80104901 <growproc+0x17d>
801048a0:	8b 45 d8             	mov    -0x28(%ebp),%eax
801048a3:	8b 55 ec             	mov    -0x14(%ebp),%edx
801048a6:	83 c2 1c             	add    $0x1c,%edx
801048a9:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
801048ad:	8b 4d 08             	mov    0x8(%ebp),%ecx
801048b0:	8b 55 f4             	mov    -0xc(%ebp),%edx
801048b3:	01 ca                	add    %ecx,%edx
801048b5:	81 c2 ff 0f 00 00    	add    $0xfff,%edx
801048bb:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
801048c1:	39 d0                	cmp    %edx,%eax
801048c3:	72 3c                	jb     80104901 <growproc+0x17d>
            cprintf("THIS PAGE IS BEING TAKEN OUT ----------------------------------------------------------");
801048c5:	83 ec 0c             	sub    $0xc,%esp
801048c8:	68 30 99 10 80       	push   $0x80109930
801048cd:	e8 46 bb ff ff       	call   80100418 <cprintf>
801048d2:	83 c4 10             	add    $0x10,%esp
            //encrypt page at this spot since it will be taken out of the queue
            mencrypt(curproc->pgQueue[i], 1);
801048d5:	8b 45 d8             	mov    -0x28(%ebp),%eax
801048d8:	8b 55 ec             	mov    -0x14(%ebp),%edx
801048db:	83 c2 1c             	add    $0x1c,%edx
801048de:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
801048e2:	83 ec 08             	sub    $0x8,%esp
801048e5:	6a 01                	push   $0x1
801048e7:	50                   	push   %eax
801048e8:	e8 e1 46 00 00       	call   80108fce <mencrypt>
801048ed:	83 c4 10             	add    $0x10,%esp
            // take out page at this spot
            curproc->pgQueue[i] = (void *) -1;
801048f0:	8b 45 d8             	mov    -0x28(%ebp),%eax
801048f3:	8b 55 ec             	mov    -0x14(%ebp),%edx
801048f6:	83 c2 1c             	add    $0x1c,%edx
801048f9:	c7 44 90 0c ff ff ff 	movl   $0xffffffff,0xc(%eax,%edx,4)
80104900:	ff 
    for (int i = 0; i < CLOCKSIZE; i++) {
80104901:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
80104905:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
80104909:	0f 8e 71 ff ff ff    	jle    80104880 <growproc+0xfc>
        }
    }
     
    // put all valid pages at beginning of dummy array (invalid pages at end by default)
    for (int i = 0, a = 0; i < CLOCKSIZE; i++) {
8010490f:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
80104916:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
8010491d:	eb 34                	jmp    80104953 <growproc+0x1cf>
        if ((void *)curproc->pgQueue[i] != (void *)-1) {
8010491f:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104922:	8b 55 e8             	mov    -0x18(%ebp),%edx
80104925:	83 c2 1c             	add    $0x1c,%edx
80104928:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
8010492c:	83 f8 ff             	cmp    $0xffffffff,%eax
8010492f:	74 1e                	je     8010494f <growproc+0x1cb>
            curproc->dummyQueue[a] = curproc->pgQueue[i];
80104931:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104934:	8b 55 e8             	mov    -0x18(%ebp),%edx
80104937:	83 c2 1c             	add    $0x1c,%edx
8010493a:	8b 54 90 0c          	mov    0xc(%eax,%edx,4),%edx
8010493e:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104941:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80104944:	83 c1 24             	add    $0x24,%ecx
80104947:	89 54 88 0c          	mov    %edx,0xc(%eax,%ecx,4)
            //curproc->clockHand = a;
            a++;
8010494b:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
    for (int i = 0, a = 0; i < CLOCKSIZE; i++) {
8010494f:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
80104953:	83 7d e8 07          	cmpl   $0x7,-0x18(%ebp)
80104957:	7e c6                	jle    8010491f <growproc+0x19b>
    }

    //curproc->clockHand = curproc->clockHand-1;
    
    // put correct order back into main array
    for (int i = 0; i < CLOCKSIZE; i++) {
80104959:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
80104960:	eb 1e                	jmp    80104980 <growproc+0x1fc>
        curproc->pgQueue[i] = curproc->dummyQueue[i];
80104962:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104965:	8b 55 e0             	mov    -0x20(%ebp),%edx
80104968:	83 c2 24             	add    $0x24,%edx
8010496b:	8b 54 90 0c          	mov    0xc(%eax,%edx,4),%edx
8010496f:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104972:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80104975:	83 c1 1c             	add    $0x1c,%ecx
80104978:	89 54 88 0c          	mov    %edx,0xc(%eax,%ecx,4)
    for (int i = 0; i < CLOCKSIZE; i++) {
8010497c:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
80104980:	83 7d e0 07          	cmpl   $0x7,-0x20(%ebp)
80104984:	7e dc                	jle    80104962 <growproc+0x1de>
    }

    // reentialize dummy queue
    for (int x = 0 ; x < CLOCKSIZE ; x++) {
80104986:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
8010498d:	eb 15                	jmp    801049a4 <growproc+0x220>
        curproc->dummyQueue[x] = (void *) -1;
8010498f:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104992:	8b 55 dc             	mov    -0x24(%ebp),%edx
80104995:	83 c2 24             	add    $0x24,%edx
80104998:	c7 44 90 0c ff ff ff 	movl   $0xffffffff,0xc(%eax,%edx,4)
8010499f:	ff 
    for (int x = 0 ; x < CLOCKSIZE ; x++) {
801049a0:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
801049a4:	83 7d dc 07          	cmpl   $0x7,-0x24(%ebp)
801049a8:	7e e5                	jle    8010498f <growproc+0x20b>
    }
  } 
  */


  curproc->sz = sz;
801049aa:	8b 45 d8             	mov    -0x28(%ebp),%eax
801049ad:	8b 55 f4             	mov    -0xc(%ebp),%edx
801049b0:	89 10                	mov    %edx,(%eax)
  switchuvm(curproc);
801049b2:	83 ec 0c             	sub    $0xc,%esp
801049b5:	ff 75 d8             	pushl  -0x28(%ebp)
801049b8:	e8 5b 39 00 00       	call   80108318 <switchuvm>
801049bd:	83 c4 10             	add    $0x10,%esp
  return 0;
801049c0:	b8 00 00 00 00       	mov    $0x0,%eax
}
801049c5:	c9                   	leave  
801049c6:	c3                   	ret    

801049c7 <fork>:
// Create a new process copying p as the parent.
// Sets up stack to return as if from system call.
// Caller must set state of returned proc to RUNNABLE.
int
fork(void)
{
801049c7:	f3 0f 1e fb          	endbr32 
801049cb:	55                   	push   %ebp
801049cc:	89 e5                	mov    %esp,%ebp
801049ce:	57                   	push   %edi
801049cf:	56                   	push   %esi
801049d0:	53                   	push   %ebx
801049d1:	83 ec 2c             	sub    $0x2c,%esp
  int i, pid;
  struct proc *np;
  struct proc *curproc = myproc();
801049d4:	e8 34 fb ff ff       	call   8010450d <myproc>
801049d9:	89 45 dc             	mov    %eax,-0x24(%ebp)

  // Allocate process.
  if((np = allocproc()) == 0){
801049dc:	e8 59 fb ff ff       	call   8010453a <allocproc>
801049e1:	89 45 d8             	mov    %eax,-0x28(%ebp)
801049e4:	83 7d d8 00          	cmpl   $0x0,-0x28(%ebp)
801049e8:	75 0a                	jne    801049f4 <fork+0x2d>
    return -1;
801049ea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801049ef:	e9 87 01 00 00       	jmp    80104b7b <fork+0x1b4>
  }

  // Copy process state from proc.
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
801049f4:	8b 45 dc             	mov    -0x24(%ebp),%eax
801049f7:	8b 10                	mov    (%eax),%edx
801049f9:	8b 45 dc             	mov    -0x24(%ebp),%eax
801049fc:	8b 40 04             	mov    0x4(%eax),%eax
801049ff:	83 ec 08             	sub    $0x8,%esp
80104a02:	52                   	push   %edx
80104a03:	50                   	push   %eax
80104a04:	e8 ae 3e 00 00       	call   801088b7 <copyuvm>
80104a09:	83 c4 10             	add    $0x10,%esp
80104a0c:	8b 55 d8             	mov    -0x28(%ebp),%edx
80104a0f:	89 42 04             	mov    %eax,0x4(%edx)
80104a12:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a15:	8b 40 04             	mov    0x4(%eax),%eax
80104a18:	85 c0                	test   %eax,%eax
80104a1a:	75 30                	jne    80104a4c <fork+0x85>
    kfree(np->kstack);
80104a1c:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a1f:	8b 40 08             	mov    0x8(%eax),%eax
80104a22:	83 ec 0c             	sub    $0xc,%esp
80104a25:	50                   	push   %eax
80104a26:	e8 80 e3 ff ff       	call   80102dab <kfree>
80104a2b:	83 c4 10             	add    $0x10,%esp
    np->kstack = 0;
80104a2e:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a31:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    np->state = UNUSED;
80104a38:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a3b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
    return -1;
80104a42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a47:	e9 2f 01 00 00       	jmp    80104b7b <fork+0x1b4>
  }
  np->sz = curproc->sz;
80104a4c:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104a4f:	8b 10                	mov    (%eax),%edx
80104a51:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a54:	89 10                	mov    %edx,(%eax)
  np->parent = curproc;
80104a56:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a59:	8b 55 dc             	mov    -0x24(%ebp),%edx
80104a5c:	89 50 14             	mov    %edx,0x14(%eax)
  *np->tf = *curproc->tf;
80104a5f:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104a62:	8b 48 18             	mov    0x18(%eax),%ecx
80104a65:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a68:	8b 40 18             	mov    0x18(%eax),%eax
80104a6b:	89 c2                	mov    %eax,%edx
80104a6d:	89 cb                	mov    %ecx,%ebx
80104a6f:	b8 13 00 00 00       	mov    $0x13,%eax
80104a74:	89 d7                	mov    %edx,%edi
80104a76:	89 de                	mov    %ebx,%esi
80104a78:	89 c1                	mov    %eax,%ecx
80104a7a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)

  // Clear %eax so that fork returns 0 in the child.
  np->tf->eax = 0;
80104a7c:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104a7f:	8b 40 18             	mov    0x18(%eax),%eax
80104a82:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
  
  // child inherits parent stuff
  for(int x = 0 ; x < CLOCKSIZE ; x++) {
80104a89:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
80104a90:	eb 1e                	jmp    80104ab0 <fork+0xe9>
  	np->pgQueue[x] = curproc->pgQueue[x];
80104a92:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104a95:	8b 55 e0             	mov    -0x20(%ebp),%edx
80104a98:	83 c2 1c             	add    $0x1c,%edx
80104a9b:	8b 54 90 0c          	mov    0xc(%eax,%edx,4),%edx
80104a9f:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104aa2:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80104aa5:	83 c1 1c             	add    $0x1c,%ecx
80104aa8:	89 54 88 0c          	mov    %edx,0xc(%eax,%ecx,4)
  for(int x = 0 ; x < CLOCKSIZE ; x++) {
80104aac:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
80104ab0:	83 7d e0 07          	cmpl   $0x7,-0x20(%ebp)
80104ab4:	7e dc                	jle    80104a92 <fork+0xcb>
  }
  np->clockHand = curproc->clockHand;
80104ab6:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104ab9:	8b 90 bc 00 00 00    	mov    0xbc(%eax),%edx
80104abf:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104ac2:	89 90 bc 00 00 00    	mov    %edx,0xbc(%eax)

  for(i = 0; i < NOFILE; i++)
80104ac8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80104acf:	eb 3b                	jmp    80104b0c <fork+0x145>
    if(curproc->ofile[i])
80104ad1:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104ad4:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80104ad7:	83 c2 08             	add    $0x8,%edx
80104ada:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
80104ade:	85 c0                	test   %eax,%eax
80104ae0:	74 26                	je     80104b08 <fork+0x141>
      np->ofile[i] = filedup(curproc->ofile[i]);
80104ae2:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104ae5:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80104ae8:	83 c2 08             	add    $0x8,%edx
80104aeb:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
80104aef:	83 ec 0c             	sub    $0xc,%esp
80104af2:	50                   	push   %eax
80104af3:	e8 8c c6 ff ff       	call   80101184 <filedup>
80104af8:	83 c4 10             	add    $0x10,%esp
80104afb:	8b 55 d8             	mov    -0x28(%ebp),%edx
80104afe:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80104b01:	83 c1 08             	add    $0x8,%ecx
80104b04:	89 44 8a 08          	mov    %eax,0x8(%edx,%ecx,4)
  for(i = 0; i < NOFILE; i++)
80104b08:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
80104b0c:	83 7d e4 0f          	cmpl   $0xf,-0x1c(%ebp)
80104b10:	7e bf                	jle    80104ad1 <fork+0x10a>
  np->cwd = idup(curproc->cwd);
80104b12:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104b15:	8b 40 68             	mov    0x68(%eax),%eax
80104b18:	83 ec 0c             	sub    $0xc,%esp
80104b1b:	50                   	push   %eax
80104b1c:	e8 fa cf ff ff       	call   80101b1b <idup>
80104b21:	83 c4 10             	add    $0x10,%esp
80104b24:	8b 55 d8             	mov    -0x28(%ebp),%edx
80104b27:	89 42 68             	mov    %eax,0x68(%edx)

  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
80104b2a:	8b 45 dc             	mov    -0x24(%ebp),%eax
80104b2d:	8d 50 6c             	lea    0x6c(%eax),%edx
80104b30:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104b33:	83 c0 6c             	add    $0x6c,%eax
80104b36:	83 ec 04             	sub    $0x4,%esp
80104b39:	6a 10                	push   $0x10
80104b3b:	52                   	push   %edx
80104b3c:	50                   	push   %eax
80104b3d:	e8 bf 0d 00 00       	call   80105901 <safestrcpy>
80104b42:	83 c4 10             	add    $0x10,%esp

  pid = np->pid;
80104b45:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104b48:	8b 40 10             	mov    0x10(%eax),%eax
80104b4b:	89 45 d4             	mov    %eax,-0x2c(%ebp)

  acquire(&ptable.lock);
80104b4e:	83 ec 0c             	sub    $0xc,%esp
80104b51:	68 c0 5d 11 80       	push   $0x80115dc0
80104b56:	e8 ec 08 00 00       	call   80105447 <acquire>
80104b5b:	83 c4 10             	add    $0x10,%esp

  np->state = RUNNABLE;
80104b5e:	8b 45 d8             	mov    -0x28(%ebp),%eax
80104b61:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)

  release(&ptable.lock);
80104b68:	83 ec 0c             	sub    $0xc,%esp
80104b6b:	68 c0 5d 11 80       	push   $0x80115dc0
80104b70:	e8 44 09 00 00       	call   801054b9 <release>
80104b75:	83 c4 10             	add    $0x10,%esp

  return pid;
80104b78:	8b 45 d4             	mov    -0x2c(%ebp),%eax
}
80104b7b:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104b7e:	5b                   	pop    %ebx
80104b7f:	5e                   	pop    %esi
80104b80:	5f                   	pop    %edi
80104b81:	5d                   	pop    %ebp
80104b82:	c3                   	ret    

80104b83 <exit>:
// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.
void
exit(void)
{
80104b83:	f3 0f 1e fb          	endbr32 
80104b87:	55                   	push   %ebp
80104b88:	89 e5                	mov    %esp,%ebp
80104b8a:	83 ec 18             	sub    $0x18,%esp
  struct proc *curproc = myproc();
80104b8d:	e8 7b f9 ff ff       	call   8010450d <myproc>
80104b92:	89 45 ec             	mov    %eax,-0x14(%ebp)
  struct proc *p;
  int fd;

  if(curproc == initproc)
80104b95:	a1 40 d6 10 80       	mov    0x8010d640,%eax
80104b9a:	39 45 ec             	cmp    %eax,-0x14(%ebp)
80104b9d:	75 0d                	jne    80104bac <exit+0x29>
    panic("init exiting");
80104b9f:	83 ec 0c             	sub    $0xc,%esp
80104ba2:	68 88 99 10 80       	push   $0x80109988
80104ba7:	e8 5c ba ff ff       	call   80100608 <panic>

  // Close all open files.
  for(fd = 0; fd < NOFILE; fd++){
80104bac:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80104bb3:	eb 3f                	jmp    80104bf4 <exit+0x71>
    if(curproc->ofile[fd]){
80104bb5:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104bb8:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104bbb:	83 c2 08             	add    $0x8,%edx
80104bbe:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
80104bc2:	85 c0                	test   %eax,%eax
80104bc4:	74 2a                	je     80104bf0 <exit+0x6d>
      fileclose(curproc->ofile[fd]);
80104bc6:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104bc9:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104bcc:	83 c2 08             	add    $0x8,%edx
80104bcf:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
80104bd3:	83 ec 0c             	sub    $0xc,%esp
80104bd6:	50                   	push   %eax
80104bd7:	e8 fd c5 ff ff       	call   801011d9 <fileclose>
80104bdc:	83 c4 10             	add    $0x10,%esp
      curproc->ofile[fd] = 0;
80104bdf:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104be2:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104be5:	83 c2 08             	add    $0x8,%edx
80104be8:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
80104bef:	00 
  for(fd = 0; fd < NOFILE; fd++){
80104bf0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
80104bf4:	83 7d f0 0f          	cmpl   $0xf,-0x10(%ebp)
80104bf8:	7e bb                	jle    80104bb5 <exit+0x32>
    }
  }

  begin_op();
80104bfa:	e8 4f eb ff ff       	call   8010374e <begin_op>
  iput(curproc->cwd);
80104bff:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104c02:	8b 40 68             	mov    0x68(%eax),%eax
80104c05:	83 ec 0c             	sub    $0xc,%esp
80104c08:	50                   	push   %eax
80104c09:	e8 b4 d0 ff ff       	call   80101cc2 <iput>
80104c0e:	83 c4 10             	add    $0x10,%esp
  end_op();
80104c11:	e8 c8 eb ff ff       	call   801037de <end_op>
  curproc->cwd = 0;
80104c16:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104c19:	c7 40 68 00 00 00 00 	movl   $0x0,0x68(%eax)

  acquire(&ptable.lock);
80104c20:	83 ec 0c             	sub    $0xc,%esp
80104c23:	68 c0 5d 11 80       	push   $0x80115dc0
80104c28:	e8 1a 08 00 00       	call   80105447 <acquire>
80104c2d:	83 c4 10             	add    $0x10,%esp

  // Parent might be sleeping in wait().
  wakeup1(curproc->parent);
80104c30:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104c33:	8b 40 14             	mov    0x14(%eax),%eax
80104c36:	83 ec 0c             	sub    $0xc,%esp
80104c39:	50                   	push   %eax
80104c3a:	e8 41 04 00 00       	call   80105080 <wakeup1>
80104c3f:	83 c4 10             	add    $0x10,%esp

  // Pass abandoned children to init.
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80104c42:	c7 45 f4 f4 5d 11 80 	movl   $0x80115df4,-0xc(%ebp)
80104c49:	eb 3a                	jmp    80104c85 <exit+0x102>
    if(p->parent == curproc){
80104c4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104c4e:	8b 40 14             	mov    0x14(%eax),%eax
80104c51:	39 45 ec             	cmp    %eax,-0x14(%ebp)
80104c54:	75 28                	jne    80104c7e <exit+0xfb>
      p->parent = initproc;
80104c56:	8b 15 40 d6 10 80    	mov    0x8010d640,%edx
80104c5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104c5f:	89 50 14             	mov    %edx,0x14(%eax)
      if(p->state == ZOMBIE)
80104c62:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104c65:	8b 40 0c             	mov    0xc(%eax),%eax
80104c68:	83 f8 05             	cmp    $0x5,%eax
80104c6b:	75 11                	jne    80104c7e <exit+0xfb>
        wakeup1(initproc);
80104c6d:	a1 40 d6 10 80       	mov    0x8010d640,%eax
80104c72:	83 ec 0c             	sub    $0xc,%esp
80104c75:	50                   	push   %eax
80104c76:	e8 05 04 00 00       	call   80105080 <wakeup1>
80104c7b:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80104c7e:	81 45 f4 c0 00 00 00 	addl   $0xc0,-0xc(%ebp)
80104c85:	81 7d f4 f4 8d 11 80 	cmpl   $0x80118df4,-0xc(%ebp)
80104c8c:	72 bd                	jb     80104c4b <exit+0xc8>
    }
  }

  // Jump into the scheduler, never to return.
  curproc->state = ZOMBIE;
80104c8e:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104c91:	c7 40 0c 05 00 00 00 	movl   $0x5,0xc(%eax)
  sched();
80104c98:	e8 f3 01 00 00       	call   80104e90 <sched>
  panic("zombie exit");
80104c9d:	83 ec 0c             	sub    $0xc,%esp
80104ca0:	68 95 99 10 80       	push   $0x80109995
80104ca5:	e8 5e b9 ff ff       	call   80100608 <panic>

80104caa <wait>:

// Wait for a child process to exit and return its pid.
// Return -1 if this process has no children.
int
wait(void)
{
80104caa:	f3 0f 1e fb          	endbr32 
80104cae:	55                   	push   %ebp
80104caf:	89 e5                	mov    %esp,%ebp
80104cb1:	83 ec 18             	sub    $0x18,%esp
  struct proc *p;
  int havekids, pid;
  struct proc *curproc = myproc();
80104cb4:	e8 54 f8 ff ff       	call   8010450d <myproc>
80104cb9:	89 45 ec             	mov    %eax,-0x14(%ebp)
  
  acquire(&ptable.lock);
80104cbc:	83 ec 0c             	sub    $0xc,%esp
80104cbf:	68 c0 5d 11 80       	push   $0x80115dc0
80104cc4:	e8 7e 07 00 00       	call   80105447 <acquire>
80104cc9:	83 c4 10             	add    $0x10,%esp
  for(;;){
    // Scan through table looking for exited children.
    havekids = 0;
80104ccc:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80104cd3:	c7 45 f4 f4 5d 11 80 	movl   $0x80115df4,-0xc(%ebp)
80104cda:	e9 a4 00 00 00       	jmp    80104d83 <wait+0xd9>
      if(p->parent != curproc)
80104cdf:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104ce2:	8b 40 14             	mov    0x14(%eax),%eax
80104ce5:	39 45 ec             	cmp    %eax,-0x14(%ebp)
80104ce8:	0f 85 8d 00 00 00    	jne    80104d7b <wait+0xd1>
        continue;
      havekids = 1;
80104cee:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
      if(p->state == ZOMBIE){
80104cf5:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104cf8:	8b 40 0c             	mov    0xc(%eax),%eax
80104cfb:	83 f8 05             	cmp    $0x5,%eax
80104cfe:	75 7c                	jne    80104d7c <wait+0xd2>
        // Found one.
        pid = p->pid;
80104d00:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d03:	8b 40 10             	mov    0x10(%eax),%eax
80104d06:	89 45 e8             	mov    %eax,-0x18(%ebp)
        kfree(p->kstack);
80104d09:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d0c:	8b 40 08             	mov    0x8(%eax),%eax
80104d0f:	83 ec 0c             	sub    $0xc,%esp
80104d12:	50                   	push   %eax
80104d13:	e8 93 e0 ff ff       	call   80102dab <kfree>
80104d18:	83 c4 10             	add    $0x10,%esp
        p->kstack = 0;
80104d1b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d1e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
        freevm(p->pgdir);
80104d25:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d28:	8b 40 04             	mov    0x4(%eax),%eax
80104d2b:	83 ec 0c             	sub    $0xc,%esp
80104d2e:	50                   	push   %eax
80104d2f:	e8 9f 3a 00 00       	call   801087d3 <freevm>
80104d34:	83 c4 10             	add    $0x10,%esp
        p->pid = 0;
80104d37:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d3a:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%eax)
        p->parent = 0;
80104d41:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d44:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
        p->name[0] = 0;
80104d4b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d4e:	c6 40 6c 00          	movb   $0x0,0x6c(%eax)
        p->killed = 0;
80104d52:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d55:	c7 40 24 00 00 00 00 	movl   $0x0,0x24(%eax)
        p->state = UNUSED;
80104d5c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104d5f:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
        release(&ptable.lock);
80104d66:	83 ec 0c             	sub    $0xc,%esp
80104d69:	68 c0 5d 11 80       	push   $0x80115dc0
80104d6e:	e8 46 07 00 00       	call   801054b9 <release>
80104d73:	83 c4 10             	add    $0x10,%esp
        return pid;
80104d76:	8b 45 e8             	mov    -0x18(%ebp),%eax
80104d79:	eb 54                	jmp    80104dcf <wait+0x125>
        continue;
80104d7b:	90                   	nop
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80104d7c:	81 45 f4 c0 00 00 00 	addl   $0xc0,-0xc(%ebp)
80104d83:	81 7d f4 f4 8d 11 80 	cmpl   $0x80118df4,-0xc(%ebp)
80104d8a:	0f 82 4f ff ff ff    	jb     80104cdf <wait+0x35>
      }
    }

    // No point waiting if we don't have any children.
    if(!havekids || curproc->killed){
80104d90:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80104d94:	74 0a                	je     80104da0 <wait+0xf6>
80104d96:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104d99:	8b 40 24             	mov    0x24(%eax),%eax
80104d9c:	85 c0                	test   %eax,%eax
80104d9e:	74 17                	je     80104db7 <wait+0x10d>
      release(&ptable.lock);
80104da0:	83 ec 0c             	sub    $0xc,%esp
80104da3:	68 c0 5d 11 80       	push   $0x80115dc0
80104da8:	e8 0c 07 00 00       	call   801054b9 <release>
80104dad:	83 c4 10             	add    $0x10,%esp
      return -1;
80104db0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104db5:	eb 18                	jmp    80104dcf <wait+0x125>
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
80104db7:	83 ec 08             	sub    $0x8,%esp
80104dba:	68 c0 5d 11 80       	push   $0x80115dc0
80104dbf:	ff 75 ec             	pushl  -0x14(%ebp)
80104dc2:	e8 0e 02 00 00       	call   80104fd5 <sleep>
80104dc7:	83 c4 10             	add    $0x10,%esp
    havekids = 0;
80104dca:	e9 fd fe ff ff       	jmp    80104ccc <wait+0x22>
  }
}
80104dcf:	c9                   	leave  
80104dd0:	c3                   	ret    

80104dd1 <scheduler>:
//  - swtch to start running that process
//  - eventually that process transfers control
//      via swtch back to the scheduler.
void
scheduler(void)
{
80104dd1:	f3 0f 1e fb          	endbr32 
80104dd5:	55                   	push   %ebp
80104dd6:	89 e5                	mov    %esp,%ebp
80104dd8:	83 ec 18             	sub    $0x18,%esp
  struct proc *p;
  struct cpu *c = mycpu();
80104ddb:	e8 b1 f6 ff ff       	call   80104491 <mycpu>
80104de0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  c->proc = 0;
80104de3:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104de6:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80104ded:	00 00 00 
  
  for(;;){
    // Enable interrupts on this processor.
    sti();
80104df0:	e8 54 f6 ff ff       	call   80104449 <sti>

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);
80104df5:	83 ec 0c             	sub    $0xc,%esp
80104df8:	68 c0 5d 11 80       	push   $0x80115dc0
80104dfd:	e8 45 06 00 00       	call   80105447 <acquire>
80104e02:	83 c4 10             	add    $0x10,%esp
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80104e05:	c7 45 f4 f4 5d 11 80 	movl   $0x80115df4,-0xc(%ebp)
80104e0c:	eb 64                	jmp    80104e72 <scheduler+0xa1>
      if(p->state != RUNNABLE)
80104e0e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104e11:	8b 40 0c             	mov    0xc(%eax),%eax
80104e14:	83 f8 03             	cmp    $0x3,%eax
80104e17:	75 51                	jne    80104e6a <scheduler+0x99>
        continue;

      // Switch to chosen process.  It is the process's job
      // to release ptable.lock and then reacquire it
      // before jumping back to us.
      c->proc = p;
80104e19:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104e1c:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104e1f:	89 90 ac 00 00 00    	mov    %edx,0xac(%eax)
      switchuvm(p);
80104e25:	83 ec 0c             	sub    $0xc,%esp
80104e28:	ff 75 f4             	pushl  -0xc(%ebp)
80104e2b:	e8 e8 34 00 00       	call   80108318 <switchuvm>
80104e30:	83 c4 10             	add    $0x10,%esp
      p->state = RUNNING;
80104e33:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104e36:	c7 40 0c 04 00 00 00 	movl   $0x4,0xc(%eax)

      swtch(&(c->scheduler), p->context);
80104e3d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104e40:	8b 40 1c             	mov    0x1c(%eax),%eax
80104e43:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104e46:	83 c2 04             	add    $0x4,%edx
80104e49:	83 ec 08             	sub    $0x8,%esp
80104e4c:	50                   	push   %eax
80104e4d:	52                   	push   %edx
80104e4e:	e8 27 0b 00 00       	call   8010597a <swtch>
80104e53:	83 c4 10             	add    $0x10,%esp
      switchkvm();
80104e56:	e8 a0 34 00 00       	call   801082fb <switchkvm>

      // Process is done running for now.
      // It should have changed its p->state before coming back.
      c->proc = 0;
80104e5b:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104e5e:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80104e65:	00 00 00 
80104e68:	eb 01                	jmp    80104e6b <scheduler+0x9a>
        continue;
80104e6a:	90                   	nop
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80104e6b:	81 45 f4 c0 00 00 00 	addl   $0xc0,-0xc(%ebp)
80104e72:	81 7d f4 f4 8d 11 80 	cmpl   $0x80118df4,-0xc(%ebp)
80104e79:	72 93                	jb     80104e0e <scheduler+0x3d>
    }
    release(&ptable.lock);
80104e7b:	83 ec 0c             	sub    $0xc,%esp
80104e7e:	68 c0 5d 11 80       	push   $0x80115dc0
80104e83:	e8 31 06 00 00       	call   801054b9 <release>
80104e88:	83 c4 10             	add    $0x10,%esp
    sti();
80104e8b:	e9 60 ff ff ff       	jmp    80104df0 <scheduler+0x1f>

80104e90 <sched>:
// be proc->intena and proc->ncli, but that would
// break in the few places where a lock is held but
// there's no process.
void
sched(void)
{
80104e90:	f3 0f 1e fb          	endbr32 
80104e94:	55                   	push   %ebp
80104e95:	89 e5                	mov    %esp,%ebp
80104e97:	83 ec 18             	sub    $0x18,%esp
  int intena;
  struct proc *p = myproc();
80104e9a:	e8 6e f6 ff ff       	call   8010450d <myproc>
80104e9f:	89 45 f4             	mov    %eax,-0xc(%ebp)

  if(!holding(&ptable.lock))
80104ea2:	83 ec 0c             	sub    $0xc,%esp
80104ea5:	68 c0 5d 11 80       	push   $0x80115dc0
80104eaa:	e8 df 06 00 00       	call   8010558e <holding>
80104eaf:	83 c4 10             	add    $0x10,%esp
80104eb2:	85 c0                	test   %eax,%eax
80104eb4:	75 0d                	jne    80104ec3 <sched+0x33>
    panic("sched ptable.lock");
80104eb6:	83 ec 0c             	sub    $0xc,%esp
80104eb9:	68 a1 99 10 80       	push   $0x801099a1
80104ebe:	e8 45 b7 ff ff       	call   80100608 <panic>
  if(mycpu()->ncli != 1)
80104ec3:	e8 c9 f5 ff ff       	call   80104491 <mycpu>
80104ec8:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
80104ece:	83 f8 01             	cmp    $0x1,%eax
80104ed1:	74 0d                	je     80104ee0 <sched+0x50>
    panic("sched locks");
80104ed3:	83 ec 0c             	sub    $0xc,%esp
80104ed6:	68 b3 99 10 80       	push   $0x801099b3
80104edb:	e8 28 b7 ff ff       	call   80100608 <panic>
  if(p->state == RUNNING)
80104ee0:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104ee3:	8b 40 0c             	mov    0xc(%eax),%eax
80104ee6:	83 f8 04             	cmp    $0x4,%eax
80104ee9:	75 0d                	jne    80104ef8 <sched+0x68>
    panic("sched running");
80104eeb:	83 ec 0c             	sub    $0xc,%esp
80104eee:	68 bf 99 10 80       	push   $0x801099bf
80104ef3:	e8 10 b7 ff ff       	call   80100608 <panic>
  if(readeflags()&FL_IF)
80104ef8:	e8 3c f5 ff ff       	call   80104439 <readeflags>
80104efd:	25 00 02 00 00       	and    $0x200,%eax
80104f02:	85 c0                	test   %eax,%eax
80104f04:	74 0d                	je     80104f13 <sched+0x83>
    panic("sched interruptible");
80104f06:	83 ec 0c             	sub    $0xc,%esp
80104f09:	68 cd 99 10 80       	push   $0x801099cd
80104f0e:	e8 f5 b6 ff ff       	call   80100608 <panic>
  intena = mycpu()->intena;
80104f13:	e8 79 f5 ff ff       	call   80104491 <mycpu>
80104f18:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
80104f1e:	89 45 f0             	mov    %eax,-0x10(%ebp)
  swtch(&p->context, mycpu()->scheduler);
80104f21:	e8 6b f5 ff ff       	call   80104491 <mycpu>
80104f26:	8b 40 04             	mov    0x4(%eax),%eax
80104f29:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104f2c:	83 c2 1c             	add    $0x1c,%edx
80104f2f:	83 ec 08             	sub    $0x8,%esp
80104f32:	50                   	push   %eax
80104f33:	52                   	push   %edx
80104f34:	e8 41 0a 00 00       	call   8010597a <swtch>
80104f39:	83 c4 10             	add    $0x10,%esp
  mycpu()->intena = intena;
80104f3c:	e8 50 f5 ff ff       	call   80104491 <mycpu>
80104f41:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104f44:	89 90 a8 00 00 00    	mov    %edx,0xa8(%eax)
}
80104f4a:	90                   	nop
80104f4b:	c9                   	leave  
80104f4c:	c3                   	ret    

80104f4d <yield>:

// Give up the CPU for one scheduling round.
void
yield(void)
{
80104f4d:	f3 0f 1e fb          	endbr32 
80104f51:	55                   	push   %ebp
80104f52:	89 e5                	mov    %esp,%ebp
80104f54:	83 ec 08             	sub    $0x8,%esp
  acquire(&ptable.lock);  //DOC: yieldlock
80104f57:	83 ec 0c             	sub    $0xc,%esp
80104f5a:	68 c0 5d 11 80       	push   $0x80115dc0
80104f5f:	e8 e3 04 00 00       	call   80105447 <acquire>
80104f64:	83 c4 10             	add    $0x10,%esp
  myproc()->state = RUNNABLE;
80104f67:	e8 a1 f5 ff ff       	call   8010450d <myproc>
80104f6c:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  sched();
80104f73:	e8 18 ff ff ff       	call   80104e90 <sched>
  release(&ptable.lock);
80104f78:	83 ec 0c             	sub    $0xc,%esp
80104f7b:	68 c0 5d 11 80       	push   $0x80115dc0
80104f80:	e8 34 05 00 00       	call   801054b9 <release>
80104f85:	83 c4 10             	add    $0x10,%esp
}
80104f88:	90                   	nop
80104f89:	c9                   	leave  
80104f8a:	c3                   	ret    

80104f8b <forkret>:

// A fork child's very first scheduling by scheduler()
// will swtch here.  "Return" to user space.
void
forkret(void)
{
80104f8b:	f3 0f 1e fb          	endbr32 
80104f8f:	55                   	push   %ebp
80104f90:	89 e5                	mov    %esp,%ebp
80104f92:	83 ec 08             	sub    $0x8,%esp
  static int first = 1;
  // Still holding ptable.lock from scheduler.
  release(&ptable.lock);
80104f95:	83 ec 0c             	sub    $0xc,%esp
80104f98:	68 c0 5d 11 80       	push   $0x80115dc0
80104f9d:	e8 17 05 00 00       	call   801054b9 <release>
80104fa2:	83 c4 10             	add    $0x10,%esp

  if (first) {
80104fa5:	a1 04 d0 10 80       	mov    0x8010d004,%eax
80104faa:	85 c0                	test   %eax,%eax
80104fac:	74 24                	je     80104fd2 <forkret+0x47>
    // Some initialization functions must be run in the context
    // of a regular process (e.g., they call sleep), and thus cannot
    // be run from main().
    first = 0;
80104fae:	c7 05 04 d0 10 80 00 	movl   $0x0,0x8010d004
80104fb5:	00 00 00 
    iinit(ROOTDEV);
80104fb8:	83 ec 0c             	sub    $0xc,%esp
80104fbb:	6a 01                	push   $0x1
80104fbd:	e8 11 c8 ff ff       	call   801017d3 <iinit>
80104fc2:	83 c4 10             	add    $0x10,%esp
    initlog(ROOTDEV);
80104fc5:	83 ec 0c             	sub    $0xc,%esp
80104fc8:	6a 01                	push   $0x1
80104fca:	e8 4c e5 ff ff       	call   8010351b <initlog>
80104fcf:	83 c4 10             	add    $0x10,%esp
  }

  // Return to "caller", actually trapret (see allocproc).
}
80104fd2:	90                   	nop
80104fd3:	c9                   	leave  
80104fd4:	c3                   	ret    

80104fd5 <sleep>:

// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void
sleep(void *chan, struct spinlock *lk)
{
80104fd5:	f3 0f 1e fb          	endbr32 
80104fd9:	55                   	push   %ebp
80104fda:	89 e5                	mov    %esp,%ebp
80104fdc:	83 ec 18             	sub    $0x18,%esp
  struct proc *p = myproc();
80104fdf:	e8 29 f5 ff ff       	call   8010450d <myproc>
80104fe4:	89 45 f4             	mov    %eax,-0xc(%ebp)
  
  if(p == 0)
80104fe7:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80104feb:	75 0d                	jne    80104ffa <sleep+0x25>
    panic("sleep");
80104fed:	83 ec 0c             	sub    $0xc,%esp
80104ff0:	68 e1 99 10 80       	push   $0x801099e1
80104ff5:	e8 0e b6 ff ff       	call   80100608 <panic>

  if(lk == 0)
80104ffa:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80104ffe:	75 0d                	jne    8010500d <sleep+0x38>
    panic("sleep without lk");
80105000:	83 ec 0c             	sub    $0xc,%esp
80105003:	68 e7 99 10 80       	push   $0x801099e7
80105008:	e8 fb b5 ff ff       	call   80100608 <panic>
  // change p->state and then call sched.
  // Once we hold ptable.lock, we can be
  // guaranteed that we won't miss any wakeup
  // (wakeup runs with ptable.lock locked),
  // so it's okay to release lk.
  if(lk != &ptable.lock){  //DOC: sleeplock0
8010500d:	81 7d 0c c0 5d 11 80 	cmpl   $0x80115dc0,0xc(%ebp)
80105014:	74 1e                	je     80105034 <sleep+0x5f>
    acquire(&ptable.lock);  //DOC: sleeplock1
80105016:	83 ec 0c             	sub    $0xc,%esp
80105019:	68 c0 5d 11 80       	push   $0x80115dc0
8010501e:	e8 24 04 00 00       	call   80105447 <acquire>
80105023:	83 c4 10             	add    $0x10,%esp
    release(lk);
80105026:	83 ec 0c             	sub    $0xc,%esp
80105029:	ff 75 0c             	pushl  0xc(%ebp)
8010502c:	e8 88 04 00 00       	call   801054b9 <release>
80105031:	83 c4 10             	add    $0x10,%esp
  }
  // Go to sleep.
  p->chan = chan;
80105034:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105037:	8b 55 08             	mov    0x8(%ebp),%edx
8010503a:	89 50 20             	mov    %edx,0x20(%eax)
  p->state = SLEEPING;
8010503d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105040:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)

  sched();
80105047:	e8 44 fe ff ff       	call   80104e90 <sched>

  // Tidy up.
  p->chan = 0;
8010504c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010504f:	c7 40 20 00 00 00 00 	movl   $0x0,0x20(%eax)

  // Reacquire original lock.
  if(lk != &ptable.lock){  //DOC: sleeplock2
80105056:	81 7d 0c c0 5d 11 80 	cmpl   $0x80115dc0,0xc(%ebp)
8010505d:	74 1e                	je     8010507d <sleep+0xa8>
    release(&ptable.lock);
8010505f:	83 ec 0c             	sub    $0xc,%esp
80105062:	68 c0 5d 11 80       	push   $0x80115dc0
80105067:	e8 4d 04 00 00       	call   801054b9 <release>
8010506c:	83 c4 10             	add    $0x10,%esp
    acquire(lk);
8010506f:	83 ec 0c             	sub    $0xc,%esp
80105072:	ff 75 0c             	pushl  0xc(%ebp)
80105075:	e8 cd 03 00 00       	call   80105447 <acquire>
8010507a:	83 c4 10             	add    $0x10,%esp
  }
}
8010507d:	90                   	nop
8010507e:	c9                   	leave  
8010507f:	c3                   	ret    

80105080 <wakeup1>:
//PAGEBREAK!
// Wake up all processes sleeping on chan.
// The ptable lock must be held.
static void
wakeup1(void *chan)
{
80105080:	f3 0f 1e fb          	endbr32 
80105084:	55                   	push   %ebp
80105085:	89 e5                	mov    %esp,%ebp
80105087:	83 ec 10             	sub    $0x10,%esp
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
8010508a:	c7 45 fc f4 5d 11 80 	movl   $0x80115df4,-0x4(%ebp)
80105091:	eb 27                	jmp    801050ba <wakeup1+0x3a>
    if(p->state == SLEEPING && p->chan == chan)
80105093:	8b 45 fc             	mov    -0x4(%ebp),%eax
80105096:	8b 40 0c             	mov    0xc(%eax),%eax
80105099:	83 f8 02             	cmp    $0x2,%eax
8010509c:	75 15                	jne    801050b3 <wakeup1+0x33>
8010509e:	8b 45 fc             	mov    -0x4(%ebp),%eax
801050a1:	8b 40 20             	mov    0x20(%eax),%eax
801050a4:	39 45 08             	cmp    %eax,0x8(%ebp)
801050a7:	75 0a                	jne    801050b3 <wakeup1+0x33>
      p->state = RUNNABLE;
801050a9:	8b 45 fc             	mov    -0x4(%ebp),%eax
801050ac:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
801050b3:	81 45 fc c0 00 00 00 	addl   $0xc0,-0x4(%ebp)
801050ba:	81 7d fc f4 8d 11 80 	cmpl   $0x80118df4,-0x4(%ebp)
801050c1:	72 d0                	jb     80105093 <wakeup1+0x13>
}
801050c3:	90                   	nop
801050c4:	90                   	nop
801050c5:	c9                   	leave  
801050c6:	c3                   	ret    

801050c7 <wakeup>:

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
801050c7:	f3 0f 1e fb          	endbr32 
801050cb:	55                   	push   %ebp
801050cc:	89 e5                	mov    %esp,%ebp
801050ce:	83 ec 08             	sub    $0x8,%esp
  acquire(&ptable.lock);
801050d1:	83 ec 0c             	sub    $0xc,%esp
801050d4:	68 c0 5d 11 80       	push   $0x80115dc0
801050d9:	e8 69 03 00 00       	call   80105447 <acquire>
801050de:	83 c4 10             	add    $0x10,%esp
  wakeup1(chan);
801050e1:	83 ec 0c             	sub    $0xc,%esp
801050e4:	ff 75 08             	pushl  0x8(%ebp)
801050e7:	e8 94 ff ff ff       	call   80105080 <wakeup1>
801050ec:	83 c4 10             	add    $0x10,%esp
  release(&ptable.lock);
801050ef:	83 ec 0c             	sub    $0xc,%esp
801050f2:	68 c0 5d 11 80       	push   $0x80115dc0
801050f7:	e8 bd 03 00 00       	call   801054b9 <release>
801050fc:	83 c4 10             	add    $0x10,%esp
}
801050ff:	90                   	nop
80105100:	c9                   	leave  
80105101:	c3                   	ret    

80105102 <kill>:
// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
80105102:	f3 0f 1e fb          	endbr32 
80105106:	55                   	push   %ebp
80105107:	89 e5                	mov    %esp,%ebp
80105109:	83 ec 18             	sub    $0x18,%esp
  struct proc *p;

  acquire(&ptable.lock);
8010510c:	83 ec 0c             	sub    $0xc,%esp
8010510f:	68 c0 5d 11 80       	push   $0x80115dc0
80105114:	e8 2e 03 00 00       	call   80105447 <acquire>
80105119:	83 c4 10             	add    $0x10,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
8010511c:	c7 45 f4 f4 5d 11 80 	movl   $0x80115df4,-0xc(%ebp)
80105123:	eb 48                	jmp    8010516d <kill+0x6b>
    if(p->pid == pid){
80105125:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105128:	8b 40 10             	mov    0x10(%eax),%eax
8010512b:	39 45 08             	cmp    %eax,0x8(%ebp)
8010512e:	75 36                	jne    80105166 <kill+0x64>
      p->killed = 1;
80105130:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105133:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
8010513a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010513d:	8b 40 0c             	mov    0xc(%eax),%eax
80105140:	83 f8 02             	cmp    $0x2,%eax
80105143:	75 0a                	jne    8010514f <kill+0x4d>
        p->state = RUNNABLE;
80105145:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105148:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
      release(&ptable.lock);
8010514f:	83 ec 0c             	sub    $0xc,%esp
80105152:	68 c0 5d 11 80       	push   $0x80115dc0
80105157:	e8 5d 03 00 00       	call   801054b9 <release>
8010515c:	83 c4 10             	add    $0x10,%esp
      return 0;
8010515f:	b8 00 00 00 00       	mov    $0x0,%eax
80105164:	eb 25                	jmp    8010518b <kill+0x89>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80105166:	81 45 f4 c0 00 00 00 	addl   $0xc0,-0xc(%ebp)
8010516d:	81 7d f4 f4 8d 11 80 	cmpl   $0x80118df4,-0xc(%ebp)
80105174:	72 af                	jb     80105125 <kill+0x23>
    }
  }
  release(&ptable.lock);
80105176:	83 ec 0c             	sub    $0xc,%esp
80105179:	68 c0 5d 11 80       	push   $0x80115dc0
8010517e:	e8 36 03 00 00       	call   801054b9 <release>
80105183:	83 c4 10             	add    $0x10,%esp
  return -1;
80105186:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
8010518b:	c9                   	leave  
8010518c:	c3                   	ret    

8010518d <procdump>:
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
8010518d:	f3 0f 1e fb          	endbr32 
80105191:	55                   	push   %ebp
80105192:	89 e5                	mov    %esp,%ebp
80105194:	83 ec 48             	sub    $0x48,%esp
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80105197:	c7 45 f0 f4 5d 11 80 	movl   $0x80115df4,-0x10(%ebp)
8010519e:	e9 da 00 00 00       	jmp    8010527d <procdump+0xf0>
    if(p->state == UNUSED)
801051a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051a6:	8b 40 0c             	mov    0xc(%eax),%eax
801051a9:	85 c0                	test   %eax,%eax
801051ab:	0f 84 c4 00 00 00    	je     80105275 <procdump+0xe8>
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
801051b1:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051b4:	8b 40 0c             	mov    0xc(%eax),%eax
801051b7:	83 f8 05             	cmp    $0x5,%eax
801051ba:	77 23                	ja     801051df <procdump+0x52>
801051bc:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051bf:	8b 40 0c             	mov    0xc(%eax),%eax
801051c2:	8b 04 85 08 d0 10 80 	mov    -0x7fef2ff8(,%eax,4),%eax
801051c9:	85 c0                	test   %eax,%eax
801051cb:	74 12                	je     801051df <procdump+0x52>
      state = states[p->state];
801051cd:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051d0:	8b 40 0c             	mov    0xc(%eax),%eax
801051d3:	8b 04 85 08 d0 10 80 	mov    -0x7fef2ff8(,%eax,4),%eax
801051da:	89 45 ec             	mov    %eax,-0x14(%ebp)
801051dd:	eb 07                	jmp    801051e6 <procdump+0x59>
    else
      state = "???";
801051df:	c7 45 ec f8 99 10 80 	movl   $0x801099f8,-0x14(%ebp)
    cprintf("%d %s %s", p->pid, state, p->name);
801051e6:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051e9:	8d 50 6c             	lea    0x6c(%eax),%edx
801051ec:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051ef:	8b 40 10             	mov    0x10(%eax),%eax
801051f2:	52                   	push   %edx
801051f3:	ff 75 ec             	pushl  -0x14(%ebp)
801051f6:	50                   	push   %eax
801051f7:	68 fc 99 10 80       	push   $0x801099fc
801051fc:	e8 17 b2 ff ff       	call   80100418 <cprintf>
80105201:	83 c4 10             	add    $0x10,%esp
    if(p->state == SLEEPING){
80105204:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105207:	8b 40 0c             	mov    0xc(%eax),%eax
8010520a:	83 f8 02             	cmp    $0x2,%eax
8010520d:	75 54                	jne    80105263 <procdump+0xd6>
      getcallerpcs((uint*)p->context->ebp+2, pc);
8010520f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105212:	8b 40 1c             	mov    0x1c(%eax),%eax
80105215:	8b 40 0c             	mov    0xc(%eax),%eax
80105218:	83 c0 08             	add    $0x8,%eax
8010521b:	89 c2                	mov    %eax,%edx
8010521d:	83 ec 08             	sub    $0x8,%esp
80105220:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80105223:	50                   	push   %eax
80105224:	52                   	push   %edx
80105225:	e8 e5 02 00 00       	call   8010550f <getcallerpcs>
8010522a:	83 c4 10             	add    $0x10,%esp
      for(i=0; i<10 && pc[i] != 0; i++)
8010522d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80105234:	eb 1c                	jmp    80105252 <procdump+0xc5>
        cprintf(" %p", pc[i]);
80105236:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105239:	8b 44 85 c4          	mov    -0x3c(%ebp,%eax,4),%eax
8010523d:	83 ec 08             	sub    $0x8,%esp
80105240:	50                   	push   %eax
80105241:	68 05 9a 10 80       	push   $0x80109a05
80105246:	e8 cd b1 ff ff       	call   80100418 <cprintf>
8010524b:	83 c4 10             	add    $0x10,%esp
      for(i=0; i<10 && pc[i] != 0; i++)
8010524e:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80105252:	83 7d f4 09          	cmpl   $0x9,-0xc(%ebp)
80105256:	7f 0b                	jg     80105263 <procdump+0xd6>
80105258:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010525b:	8b 44 85 c4          	mov    -0x3c(%ebp,%eax,4),%eax
8010525f:	85 c0                	test   %eax,%eax
80105261:	75 d3                	jne    80105236 <procdump+0xa9>
    }
    cprintf("\n");
80105263:	83 ec 0c             	sub    $0xc,%esp
80105266:	68 09 9a 10 80       	push   $0x80109a09
8010526b:	e8 a8 b1 ff ff       	call   80100418 <cprintf>
80105270:	83 c4 10             	add    $0x10,%esp
80105273:	eb 01                	jmp    80105276 <procdump+0xe9>
      continue;
80105275:	90                   	nop
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80105276:	81 45 f0 c0 00 00 00 	addl   $0xc0,-0x10(%ebp)
8010527d:	81 7d f0 f4 8d 11 80 	cmpl   $0x80118df4,-0x10(%ebp)
80105284:	0f 82 19 ff ff ff    	jb     801051a3 <procdump+0x16>
  }
}
8010528a:	90                   	nop
8010528b:	90                   	nop
8010528c:	c9                   	leave  
8010528d:	c3                   	ret    

8010528e <initsleeplock>:
#include "spinlock.h"
#include "sleeplock.h"

void
initsleeplock(struct sleeplock *lk, char *name)
{
8010528e:	f3 0f 1e fb          	endbr32 
80105292:	55                   	push   %ebp
80105293:	89 e5                	mov    %esp,%ebp
80105295:	83 ec 08             	sub    $0x8,%esp
  initlock(&lk->lk, "sleep lock");
80105298:	8b 45 08             	mov    0x8(%ebp),%eax
8010529b:	83 c0 04             	add    $0x4,%eax
8010529e:	83 ec 08             	sub    $0x8,%esp
801052a1:	68 35 9a 10 80       	push   $0x80109a35
801052a6:	50                   	push   %eax
801052a7:	e8 75 01 00 00       	call   80105421 <initlock>
801052ac:	83 c4 10             	add    $0x10,%esp
  lk->name = name;
801052af:	8b 45 08             	mov    0x8(%ebp),%eax
801052b2:	8b 55 0c             	mov    0xc(%ebp),%edx
801052b5:	89 50 38             	mov    %edx,0x38(%eax)
  lk->locked = 0;
801052b8:	8b 45 08             	mov    0x8(%ebp),%eax
801052bb:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lk->pid = 0;
801052c1:	8b 45 08             	mov    0x8(%ebp),%eax
801052c4:	c7 40 3c 00 00 00 00 	movl   $0x0,0x3c(%eax)
}
801052cb:	90                   	nop
801052cc:	c9                   	leave  
801052cd:	c3                   	ret    

801052ce <acquiresleep>:

void
acquiresleep(struct sleeplock *lk)
{
801052ce:	f3 0f 1e fb          	endbr32 
801052d2:	55                   	push   %ebp
801052d3:	89 e5                	mov    %esp,%ebp
801052d5:	83 ec 08             	sub    $0x8,%esp
  acquire(&lk->lk);
801052d8:	8b 45 08             	mov    0x8(%ebp),%eax
801052db:	83 c0 04             	add    $0x4,%eax
801052de:	83 ec 0c             	sub    $0xc,%esp
801052e1:	50                   	push   %eax
801052e2:	e8 60 01 00 00       	call   80105447 <acquire>
801052e7:	83 c4 10             	add    $0x10,%esp
  while (lk->locked) {
801052ea:	eb 15                	jmp    80105301 <acquiresleep+0x33>
    sleep(lk, &lk->lk);
801052ec:	8b 45 08             	mov    0x8(%ebp),%eax
801052ef:	83 c0 04             	add    $0x4,%eax
801052f2:	83 ec 08             	sub    $0x8,%esp
801052f5:	50                   	push   %eax
801052f6:	ff 75 08             	pushl  0x8(%ebp)
801052f9:	e8 d7 fc ff ff       	call   80104fd5 <sleep>
801052fe:	83 c4 10             	add    $0x10,%esp
  while (lk->locked) {
80105301:	8b 45 08             	mov    0x8(%ebp),%eax
80105304:	8b 00                	mov    (%eax),%eax
80105306:	85 c0                	test   %eax,%eax
80105308:	75 e2                	jne    801052ec <acquiresleep+0x1e>
  }
  lk->locked = 1;
8010530a:	8b 45 08             	mov    0x8(%ebp),%eax
8010530d:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  lk->pid = myproc()->pid;
80105313:	e8 f5 f1 ff ff       	call   8010450d <myproc>
80105318:	8b 50 10             	mov    0x10(%eax),%edx
8010531b:	8b 45 08             	mov    0x8(%ebp),%eax
8010531e:	89 50 3c             	mov    %edx,0x3c(%eax)
  release(&lk->lk);
80105321:	8b 45 08             	mov    0x8(%ebp),%eax
80105324:	83 c0 04             	add    $0x4,%eax
80105327:	83 ec 0c             	sub    $0xc,%esp
8010532a:	50                   	push   %eax
8010532b:	e8 89 01 00 00       	call   801054b9 <release>
80105330:	83 c4 10             	add    $0x10,%esp
}
80105333:	90                   	nop
80105334:	c9                   	leave  
80105335:	c3                   	ret    

80105336 <releasesleep>:

void
releasesleep(struct sleeplock *lk)
{
80105336:	f3 0f 1e fb          	endbr32 
8010533a:	55                   	push   %ebp
8010533b:	89 e5                	mov    %esp,%ebp
8010533d:	83 ec 08             	sub    $0x8,%esp
  acquire(&lk->lk);
80105340:	8b 45 08             	mov    0x8(%ebp),%eax
80105343:	83 c0 04             	add    $0x4,%eax
80105346:	83 ec 0c             	sub    $0xc,%esp
80105349:	50                   	push   %eax
8010534a:	e8 f8 00 00 00       	call   80105447 <acquire>
8010534f:	83 c4 10             	add    $0x10,%esp
  lk->locked = 0;
80105352:	8b 45 08             	mov    0x8(%ebp),%eax
80105355:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lk->pid = 0;
8010535b:	8b 45 08             	mov    0x8(%ebp),%eax
8010535e:	c7 40 3c 00 00 00 00 	movl   $0x0,0x3c(%eax)
  wakeup(lk);
80105365:	83 ec 0c             	sub    $0xc,%esp
80105368:	ff 75 08             	pushl  0x8(%ebp)
8010536b:	e8 57 fd ff ff       	call   801050c7 <wakeup>
80105370:	83 c4 10             	add    $0x10,%esp
  release(&lk->lk);
80105373:	8b 45 08             	mov    0x8(%ebp),%eax
80105376:	83 c0 04             	add    $0x4,%eax
80105379:	83 ec 0c             	sub    $0xc,%esp
8010537c:	50                   	push   %eax
8010537d:	e8 37 01 00 00       	call   801054b9 <release>
80105382:	83 c4 10             	add    $0x10,%esp
}
80105385:	90                   	nop
80105386:	c9                   	leave  
80105387:	c3                   	ret    

80105388 <holdingsleep>:

int
holdingsleep(struct sleeplock *lk)
{
80105388:	f3 0f 1e fb          	endbr32 
8010538c:	55                   	push   %ebp
8010538d:	89 e5                	mov    %esp,%ebp
8010538f:	53                   	push   %ebx
80105390:	83 ec 14             	sub    $0x14,%esp
  int r;
  
  acquire(&lk->lk);
80105393:	8b 45 08             	mov    0x8(%ebp),%eax
80105396:	83 c0 04             	add    $0x4,%eax
80105399:	83 ec 0c             	sub    $0xc,%esp
8010539c:	50                   	push   %eax
8010539d:	e8 a5 00 00 00       	call   80105447 <acquire>
801053a2:	83 c4 10             	add    $0x10,%esp
  r = lk->locked && (lk->pid == myproc()->pid);
801053a5:	8b 45 08             	mov    0x8(%ebp),%eax
801053a8:	8b 00                	mov    (%eax),%eax
801053aa:	85 c0                	test   %eax,%eax
801053ac:	74 19                	je     801053c7 <holdingsleep+0x3f>
801053ae:	8b 45 08             	mov    0x8(%ebp),%eax
801053b1:	8b 58 3c             	mov    0x3c(%eax),%ebx
801053b4:	e8 54 f1 ff ff       	call   8010450d <myproc>
801053b9:	8b 40 10             	mov    0x10(%eax),%eax
801053bc:	39 c3                	cmp    %eax,%ebx
801053be:	75 07                	jne    801053c7 <holdingsleep+0x3f>
801053c0:	b8 01 00 00 00       	mov    $0x1,%eax
801053c5:	eb 05                	jmp    801053cc <holdingsleep+0x44>
801053c7:	b8 00 00 00 00       	mov    $0x0,%eax
801053cc:	89 45 f4             	mov    %eax,-0xc(%ebp)
  release(&lk->lk);
801053cf:	8b 45 08             	mov    0x8(%ebp),%eax
801053d2:	83 c0 04             	add    $0x4,%eax
801053d5:	83 ec 0c             	sub    $0xc,%esp
801053d8:	50                   	push   %eax
801053d9:	e8 db 00 00 00       	call   801054b9 <release>
801053de:	83 c4 10             	add    $0x10,%esp
  return r;
801053e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
801053e4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801053e7:	c9                   	leave  
801053e8:	c3                   	ret    

801053e9 <readeflags>:
{
801053e9:	55                   	push   %ebp
801053ea:	89 e5                	mov    %esp,%ebp
801053ec:	83 ec 10             	sub    $0x10,%esp
  asm volatile("pushfl; popl %0" : "=r" (eflags));
801053ef:	9c                   	pushf  
801053f0:	58                   	pop    %eax
801053f1:	89 45 fc             	mov    %eax,-0x4(%ebp)
  return eflags;
801053f4:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
801053f7:	c9                   	leave  
801053f8:	c3                   	ret    

801053f9 <cli>:
{
801053f9:	55                   	push   %ebp
801053fa:	89 e5                	mov    %esp,%ebp
  asm volatile("cli");
801053fc:	fa                   	cli    
}
801053fd:	90                   	nop
801053fe:	5d                   	pop    %ebp
801053ff:	c3                   	ret    

80105400 <sti>:
{
80105400:	55                   	push   %ebp
80105401:	89 e5                	mov    %esp,%ebp
  asm volatile("sti");
80105403:	fb                   	sti    
}
80105404:	90                   	nop
80105405:	5d                   	pop    %ebp
80105406:	c3                   	ret    

80105407 <xchg>:
{
80105407:	55                   	push   %ebp
80105408:	89 e5                	mov    %esp,%ebp
8010540a:	83 ec 10             	sub    $0x10,%esp
  asm volatile("lock; xchgl %0, %1" :
8010540d:	8b 55 08             	mov    0x8(%ebp),%edx
80105410:	8b 45 0c             	mov    0xc(%ebp),%eax
80105413:	8b 4d 08             	mov    0x8(%ebp),%ecx
80105416:	f0 87 02             	lock xchg %eax,(%edx)
80105419:	89 45 fc             	mov    %eax,-0x4(%ebp)
  return result;
8010541c:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
8010541f:	c9                   	leave  
80105420:	c3                   	ret    

80105421 <initlock>:
#include "proc.h"
#include "spinlock.h"

void
initlock(struct spinlock *lk, char *name)
{
80105421:	f3 0f 1e fb          	endbr32 
80105425:	55                   	push   %ebp
80105426:	89 e5                	mov    %esp,%ebp
  lk->name = name;
80105428:	8b 45 08             	mov    0x8(%ebp),%eax
8010542b:	8b 55 0c             	mov    0xc(%ebp),%edx
8010542e:	89 50 04             	mov    %edx,0x4(%eax)
  lk->locked = 0;
80105431:	8b 45 08             	mov    0x8(%ebp),%eax
80105434:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  lk->cpu = 0;
8010543a:	8b 45 08             	mov    0x8(%ebp),%eax
8010543d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
}
80105444:	90                   	nop
80105445:	5d                   	pop    %ebp
80105446:	c3                   	ret    

80105447 <acquire>:
// Loops (spins) until the lock is acquired.
// Holding a lock for a long time may cause
// other CPUs to waste time spinning to acquire it.
void
acquire(struct spinlock *lk)
{
80105447:	f3 0f 1e fb          	endbr32 
8010544b:	55                   	push   %ebp
8010544c:	89 e5                	mov    %esp,%ebp
8010544e:	53                   	push   %ebx
8010544f:	83 ec 04             	sub    $0x4,%esp
  pushcli(); // disable interrupts to avoid deadlock.
80105452:	e8 7c 01 00 00       	call   801055d3 <pushcli>
  if(holding(lk))
80105457:	8b 45 08             	mov    0x8(%ebp),%eax
8010545a:	83 ec 0c             	sub    $0xc,%esp
8010545d:	50                   	push   %eax
8010545e:	e8 2b 01 00 00       	call   8010558e <holding>
80105463:	83 c4 10             	add    $0x10,%esp
80105466:	85 c0                	test   %eax,%eax
80105468:	74 0d                	je     80105477 <acquire+0x30>
    panic("acquire");
8010546a:	83 ec 0c             	sub    $0xc,%esp
8010546d:	68 40 9a 10 80       	push   $0x80109a40
80105472:	e8 91 b1 ff ff       	call   80100608 <panic>

  // The xchg is atomic.
  while(xchg(&lk->locked, 1) != 0)
80105477:	90                   	nop
80105478:	8b 45 08             	mov    0x8(%ebp),%eax
8010547b:	83 ec 08             	sub    $0x8,%esp
8010547e:	6a 01                	push   $0x1
80105480:	50                   	push   %eax
80105481:	e8 81 ff ff ff       	call   80105407 <xchg>
80105486:	83 c4 10             	add    $0x10,%esp
80105489:	85 c0                	test   %eax,%eax
8010548b:	75 eb                	jne    80105478 <acquire+0x31>
    ;

  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that the critical section's memory
  // references happen after the lock is acquired.
  __sync_synchronize();
8010548d:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Record info about lock acquisition for debugging.
  lk->cpu = mycpu();
80105492:	8b 5d 08             	mov    0x8(%ebp),%ebx
80105495:	e8 f7 ef ff ff       	call   80104491 <mycpu>
8010549a:	89 43 08             	mov    %eax,0x8(%ebx)
  getcallerpcs(&lk, lk->pcs);
8010549d:	8b 45 08             	mov    0x8(%ebp),%eax
801054a0:	83 c0 0c             	add    $0xc,%eax
801054a3:	83 ec 08             	sub    $0x8,%esp
801054a6:	50                   	push   %eax
801054a7:	8d 45 08             	lea    0x8(%ebp),%eax
801054aa:	50                   	push   %eax
801054ab:	e8 5f 00 00 00       	call   8010550f <getcallerpcs>
801054b0:	83 c4 10             	add    $0x10,%esp
}
801054b3:	90                   	nop
801054b4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801054b7:	c9                   	leave  
801054b8:	c3                   	ret    

801054b9 <release>:

// Release the lock.
void
release(struct spinlock *lk)
{
801054b9:	f3 0f 1e fb          	endbr32 
801054bd:	55                   	push   %ebp
801054be:	89 e5                	mov    %esp,%ebp
801054c0:	83 ec 08             	sub    $0x8,%esp
  if(!holding(lk))
801054c3:	83 ec 0c             	sub    $0xc,%esp
801054c6:	ff 75 08             	pushl  0x8(%ebp)
801054c9:	e8 c0 00 00 00       	call   8010558e <holding>
801054ce:	83 c4 10             	add    $0x10,%esp
801054d1:	85 c0                	test   %eax,%eax
801054d3:	75 0d                	jne    801054e2 <release+0x29>
    panic("release");
801054d5:	83 ec 0c             	sub    $0xc,%esp
801054d8:	68 48 9a 10 80       	push   $0x80109a48
801054dd:	e8 26 b1 ff ff       	call   80100608 <panic>

  lk->pcs[0] = 0;
801054e2:	8b 45 08             	mov    0x8(%ebp),%eax
801054e5:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
  lk->cpu = 0;
801054ec:	8b 45 08             	mov    0x8(%ebp),%eax
801054ef:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
  // Tell the C compiler and the processor to not move loads or stores
  // past this point, to ensure that all the stores in the critical
  // section are visible to other cores before the lock is released.
  // Both the C compiler and the hardware may re-order loads and
  // stores; __sync_synchronize() tells them both not to.
  __sync_synchronize();
801054f6:	f0 83 0c 24 00       	lock orl $0x0,(%esp)

  // Release the lock, equivalent to lk->locked = 0.
  // This code can't use a C assignment, since it might
  // not be atomic. A real OS would use C atomics here.
  asm volatile("movl $0, %0" : "+m" (lk->locked) : );
801054fb:	8b 45 08             	mov    0x8(%ebp),%eax
801054fe:	8b 55 08             	mov    0x8(%ebp),%edx
80105501:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

  popcli();
80105507:	e8 18 01 00 00       	call   80105624 <popcli>
}
8010550c:	90                   	nop
8010550d:	c9                   	leave  
8010550e:	c3                   	ret    

8010550f <getcallerpcs>:

// Record the current call stack in pcs[] by following the %ebp chain.
void
getcallerpcs(void *v, uint pcs[])
{
8010550f:	f3 0f 1e fb          	endbr32 
80105513:	55                   	push   %ebp
80105514:	89 e5                	mov    %esp,%ebp
80105516:	83 ec 10             	sub    $0x10,%esp
  uint *ebp;
  int i;

  ebp = (uint*)v - 2;
80105519:	8b 45 08             	mov    0x8(%ebp),%eax
8010551c:	83 e8 08             	sub    $0x8,%eax
8010551f:	89 45 fc             	mov    %eax,-0x4(%ebp)
  for(i = 0; i < 10; i++){
80105522:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
80105529:	eb 38                	jmp    80105563 <getcallerpcs+0x54>
    if(ebp == 0 || ebp < (uint*)KERNBASE || ebp == (uint*)0xffffffff)
8010552b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
8010552f:	74 53                	je     80105584 <getcallerpcs+0x75>
80105531:	81 7d fc ff ff ff 7f 	cmpl   $0x7fffffff,-0x4(%ebp)
80105538:	76 4a                	jbe    80105584 <getcallerpcs+0x75>
8010553a:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%ebp)
8010553e:	74 44                	je     80105584 <getcallerpcs+0x75>
      break;
    pcs[i] = ebp[1];     // saved %eip
80105540:	8b 45 f8             	mov    -0x8(%ebp),%eax
80105543:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
8010554a:	8b 45 0c             	mov    0xc(%ebp),%eax
8010554d:	01 c2                	add    %eax,%edx
8010554f:	8b 45 fc             	mov    -0x4(%ebp),%eax
80105552:	8b 40 04             	mov    0x4(%eax),%eax
80105555:	89 02                	mov    %eax,(%edx)
    ebp = (uint*)ebp[0]; // saved %ebp
80105557:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010555a:	8b 00                	mov    (%eax),%eax
8010555c:	89 45 fc             	mov    %eax,-0x4(%ebp)
  for(i = 0; i < 10; i++){
8010555f:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
80105563:	83 7d f8 09          	cmpl   $0x9,-0x8(%ebp)
80105567:	7e c2                	jle    8010552b <getcallerpcs+0x1c>
  }
  for(; i < 10; i++)
80105569:	eb 19                	jmp    80105584 <getcallerpcs+0x75>
    pcs[i] = 0;
8010556b:	8b 45 f8             	mov    -0x8(%ebp),%eax
8010556e:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80105575:	8b 45 0c             	mov    0xc(%ebp),%eax
80105578:	01 d0                	add    %edx,%eax
8010557a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(; i < 10; i++)
80105580:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
80105584:	83 7d f8 09          	cmpl   $0x9,-0x8(%ebp)
80105588:	7e e1                	jle    8010556b <getcallerpcs+0x5c>
}
8010558a:	90                   	nop
8010558b:	90                   	nop
8010558c:	c9                   	leave  
8010558d:	c3                   	ret    

8010558e <holding>:

// Check whether this cpu is holding the lock.
int
holding(struct spinlock *lock)
{
8010558e:	f3 0f 1e fb          	endbr32 
80105592:	55                   	push   %ebp
80105593:	89 e5                	mov    %esp,%ebp
80105595:	53                   	push   %ebx
80105596:	83 ec 14             	sub    $0x14,%esp
  int r;
  pushcli();
80105599:	e8 35 00 00 00       	call   801055d3 <pushcli>
  r = lock->locked && lock->cpu == mycpu();
8010559e:	8b 45 08             	mov    0x8(%ebp),%eax
801055a1:	8b 00                	mov    (%eax),%eax
801055a3:	85 c0                	test   %eax,%eax
801055a5:	74 16                	je     801055bd <holding+0x2f>
801055a7:	8b 45 08             	mov    0x8(%ebp),%eax
801055aa:	8b 58 08             	mov    0x8(%eax),%ebx
801055ad:	e8 df ee ff ff       	call   80104491 <mycpu>
801055b2:	39 c3                	cmp    %eax,%ebx
801055b4:	75 07                	jne    801055bd <holding+0x2f>
801055b6:	b8 01 00 00 00       	mov    $0x1,%eax
801055bb:	eb 05                	jmp    801055c2 <holding+0x34>
801055bd:	b8 00 00 00 00       	mov    $0x0,%eax
801055c2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  popcli();
801055c5:	e8 5a 00 00 00       	call   80105624 <popcli>
  return r;
801055ca:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
801055cd:	83 c4 14             	add    $0x14,%esp
801055d0:	5b                   	pop    %ebx
801055d1:	5d                   	pop    %ebp
801055d2:	c3                   	ret    

801055d3 <pushcli>:
// it takes two popcli to undo two pushcli.  Also, if interrupts
// are off, then pushcli, popcli leaves them off.

void
pushcli(void)
{
801055d3:	f3 0f 1e fb          	endbr32 
801055d7:	55                   	push   %ebp
801055d8:	89 e5                	mov    %esp,%ebp
801055da:	83 ec 18             	sub    $0x18,%esp
  int eflags;

  eflags = readeflags();
801055dd:	e8 07 fe ff ff       	call   801053e9 <readeflags>
801055e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  cli();
801055e5:	e8 0f fe ff ff       	call   801053f9 <cli>
  if(mycpu()->ncli == 0)
801055ea:	e8 a2 ee ff ff       	call   80104491 <mycpu>
801055ef:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
801055f5:	85 c0                	test   %eax,%eax
801055f7:	75 14                	jne    8010560d <pushcli+0x3a>
    mycpu()->intena = eflags & FL_IF;
801055f9:	e8 93 ee ff ff       	call   80104491 <mycpu>
801055fe:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105601:	81 e2 00 02 00 00    	and    $0x200,%edx
80105607:	89 90 a8 00 00 00    	mov    %edx,0xa8(%eax)
  mycpu()->ncli += 1;
8010560d:	e8 7f ee ff ff       	call   80104491 <mycpu>
80105612:	8b 90 a4 00 00 00    	mov    0xa4(%eax),%edx
80105618:	83 c2 01             	add    $0x1,%edx
8010561b:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
}
80105621:	90                   	nop
80105622:	c9                   	leave  
80105623:	c3                   	ret    

80105624 <popcli>:

void
popcli(void)
{
80105624:	f3 0f 1e fb          	endbr32 
80105628:	55                   	push   %ebp
80105629:	89 e5                	mov    %esp,%ebp
8010562b:	83 ec 08             	sub    $0x8,%esp
  if(readeflags()&FL_IF)
8010562e:	e8 b6 fd ff ff       	call   801053e9 <readeflags>
80105633:	25 00 02 00 00       	and    $0x200,%eax
80105638:	85 c0                	test   %eax,%eax
8010563a:	74 0d                	je     80105649 <popcli+0x25>
    panic("popcli - interruptible");
8010563c:	83 ec 0c             	sub    $0xc,%esp
8010563f:	68 50 9a 10 80       	push   $0x80109a50
80105644:	e8 bf af ff ff       	call   80100608 <panic>
  if(--mycpu()->ncli < 0)
80105649:	e8 43 ee ff ff       	call   80104491 <mycpu>
8010564e:	8b 90 a4 00 00 00    	mov    0xa4(%eax),%edx
80105654:	83 ea 01             	sub    $0x1,%edx
80105657:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
8010565d:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
80105663:	85 c0                	test   %eax,%eax
80105665:	79 0d                	jns    80105674 <popcli+0x50>
    panic("popcli");
80105667:	83 ec 0c             	sub    $0xc,%esp
8010566a:	68 67 9a 10 80       	push   $0x80109a67
8010566f:	e8 94 af ff ff       	call   80100608 <panic>
  if(mycpu()->ncli == 0 && mycpu()->intena)
80105674:	e8 18 ee ff ff       	call   80104491 <mycpu>
80105679:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
8010567f:	85 c0                	test   %eax,%eax
80105681:	75 14                	jne    80105697 <popcli+0x73>
80105683:	e8 09 ee ff ff       	call   80104491 <mycpu>
80105688:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
8010568e:	85 c0                	test   %eax,%eax
80105690:	74 05                	je     80105697 <popcli+0x73>
    sti();
80105692:	e8 69 fd ff ff       	call   80105400 <sti>
}
80105697:	90                   	nop
80105698:	c9                   	leave  
80105699:	c3                   	ret    

8010569a <stosb>:
8010569a:	55                   	push   %ebp
8010569b:	89 e5                	mov    %esp,%ebp
8010569d:	57                   	push   %edi
8010569e:	53                   	push   %ebx
8010569f:	8b 4d 08             	mov    0x8(%ebp),%ecx
801056a2:	8b 55 10             	mov    0x10(%ebp),%edx
801056a5:	8b 45 0c             	mov    0xc(%ebp),%eax
801056a8:	89 cb                	mov    %ecx,%ebx
801056aa:	89 df                	mov    %ebx,%edi
801056ac:	89 d1                	mov    %edx,%ecx
801056ae:	fc                   	cld    
801056af:	f3 aa                	rep stos %al,%es:(%edi)
801056b1:	89 ca                	mov    %ecx,%edx
801056b3:	89 fb                	mov    %edi,%ebx
801056b5:	89 5d 08             	mov    %ebx,0x8(%ebp)
801056b8:	89 55 10             	mov    %edx,0x10(%ebp)
801056bb:	90                   	nop
801056bc:	5b                   	pop    %ebx
801056bd:	5f                   	pop    %edi
801056be:	5d                   	pop    %ebp
801056bf:	c3                   	ret    

801056c0 <stosl>:
801056c0:	55                   	push   %ebp
801056c1:	89 e5                	mov    %esp,%ebp
801056c3:	57                   	push   %edi
801056c4:	53                   	push   %ebx
801056c5:	8b 4d 08             	mov    0x8(%ebp),%ecx
801056c8:	8b 55 10             	mov    0x10(%ebp),%edx
801056cb:	8b 45 0c             	mov    0xc(%ebp),%eax
801056ce:	89 cb                	mov    %ecx,%ebx
801056d0:	89 df                	mov    %ebx,%edi
801056d2:	89 d1                	mov    %edx,%ecx
801056d4:	fc                   	cld    
801056d5:	f3 ab                	rep stos %eax,%es:(%edi)
801056d7:	89 ca                	mov    %ecx,%edx
801056d9:	89 fb                	mov    %edi,%ebx
801056db:	89 5d 08             	mov    %ebx,0x8(%ebp)
801056de:	89 55 10             	mov    %edx,0x10(%ebp)
801056e1:	90                   	nop
801056e2:	5b                   	pop    %ebx
801056e3:	5f                   	pop    %edi
801056e4:	5d                   	pop    %ebp
801056e5:	c3                   	ret    

801056e6 <memset>:
801056e6:	f3 0f 1e fb          	endbr32 
801056ea:	55                   	push   %ebp
801056eb:	89 e5                	mov    %esp,%ebp
801056ed:	8b 45 08             	mov    0x8(%ebp),%eax
801056f0:	83 e0 03             	and    $0x3,%eax
801056f3:	85 c0                	test   %eax,%eax
801056f5:	75 43                	jne    8010573a <memset+0x54>
801056f7:	8b 45 10             	mov    0x10(%ebp),%eax
801056fa:	83 e0 03             	and    $0x3,%eax
801056fd:	85 c0                	test   %eax,%eax
801056ff:	75 39                	jne    8010573a <memset+0x54>
80105701:	81 65 0c ff 00 00 00 	andl   $0xff,0xc(%ebp)
80105708:	8b 45 10             	mov    0x10(%ebp),%eax
8010570b:	c1 e8 02             	shr    $0x2,%eax
8010570e:	89 c1                	mov    %eax,%ecx
80105710:	8b 45 0c             	mov    0xc(%ebp),%eax
80105713:	c1 e0 18             	shl    $0x18,%eax
80105716:	89 c2                	mov    %eax,%edx
80105718:	8b 45 0c             	mov    0xc(%ebp),%eax
8010571b:	c1 e0 10             	shl    $0x10,%eax
8010571e:	09 c2                	or     %eax,%edx
80105720:	8b 45 0c             	mov    0xc(%ebp),%eax
80105723:	c1 e0 08             	shl    $0x8,%eax
80105726:	09 d0                	or     %edx,%eax
80105728:	0b 45 0c             	or     0xc(%ebp),%eax
8010572b:	51                   	push   %ecx
8010572c:	50                   	push   %eax
8010572d:	ff 75 08             	pushl  0x8(%ebp)
80105730:	e8 8b ff ff ff       	call   801056c0 <stosl>
80105735:	83 c4 0c             	add    $0xc,%esp
80105738:	eb 12                	jmp    8010574c <memset+0x66>
8010573a:	8b 45 10             	mov    0x10(%ebp),%eax
8010573d:	50                   	push   %eax
8010573e:	ff 75 0c             	pushl  0xc(%ebp)
80105741:	ff 75 08             	pushl  0x8(%ebp)
80105744:	e8 51 ff ff ff       	call   8010569a <stosb>
80105749:	83 c4 0c             	add    $0xc,%esp
8010574c:	8b 45 08             	mov    0x8(%ebp),%eax
8010574f:	c9                   	leave  
80105750:	c3                   	ret    

80105751 <memcmp>:
80105751:	f3 0f 1e fb          	endbr32 
80105755:	55                   	push   %ebp
80105756:	89 e5                	mov    %esp,%ebp
80105758:	83 ec 10             	sub    $0x10,%esp
8010575b:	8b 45 08             	mov    0x8(%ebp),%eax
8010575e:	89 45 fc             	mov    %eax,-0x4(%ebp)
80105761:	8b 45 0c             	mov    0xc(%ebp),%eax
80105764:	89 45 f8             	mov    %eax,-0x8(%ebp)
80105767:	eb 30                	jmp    80105799 <memcmp+0x48>
80105769:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010576c:	0f b6 10             	movzbl (%eax),%edx
8010576f:	8b 45 f8             	mov    -0x8(%ebp),%eax
80105772:	0f b6 00             	movzbl (%eax),%eax
80105775:	38 c2                	cmp    %al,%dl
80105777:	74 18                	je     80105791 <memcmp+0x40>
80105779:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010577c:	0f b6 00             	movzbl (%eax),%eax
8010577f:	0f b6 d0             	movzbl %al,%edx
80105782:	8b 45 f8             	mov    -0x8(%ebp),%eax
80105785:	0f b6 00             	movzbl (%eax),%eax
80105788:	0f b6 c0             	movzbl %al,%eax
8010578b:	29 c2                	sub    %eax,%edx
8010578d:	89 d0                	mov    %edx,%eax
8010578f:	eb 1a                	jmp    801057ab <memcmp+0x5a>
80105791:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
80105795:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
80105799:	8b 45 10             	mov    0x10(%ebp),%eax
8010579c:	8d 50 ff             	lea    -0x1(%eax),%edx
8010579f:	89 55 10             	mov    %edx,0x10(%ebp)
801057a2:	85 c0                	test   %eax,%eax
801057a4:	75 c3                	jne    80105769 <memcmp+0x18>
801057a6:	b8 00 00 00 00       	mov    $0x0,%eax
801057ab:	c9                   	leave  
801057ac:	c3                   	ret    

801057ad <memmove>:
801057ad:	f3 0f 1e fb          	endbr32 
801057b1:	55                   	push   %ebp
801057b2:	89 e5                	mov    %esp,%ebp
801057b4:	83 ec 10             	sub    $0x10,%esp
801057b7:	8b 45 0c             	mov    0xc(%ebp),%eax
801057ba:	89 45 fc             	mov    %eax,-0x4(%ebp)
801057bd:	8b 45 08             	mov    0x8(%ebp),%eax
801057c0:	89 45 f8             	mov    %eax,-0x8(%ebp)
801057c3:	8b 45 fc             	mov    -0x4(%ebp),%eax
801057c6:	3b 45 f8             	cmp    -0x8(%ebp),%eax
801057c9:	73 54                	jae    8010581f <memmove+0x72>
801057cb:	8b 55 fc             	mov    -0x4(%ebp),%edx
801057ce:	8b 45 10             	mov    0x10(%ebp),%eax
801057d1:	01 d0                	add    %edx,%eax
801057d3:	39 45 f8             	cmp    %eax,-0x8(%ebp)
801057d6:	73 47                	jae    8010581f <memmove+0x72>
801057d8:	8b 45 10             	mov    0x10(%ebp),%eax
801057db:	01 45 fc             	add    %eax,-0x4(%ebp)
801057de:	8b 45 10             	mov    0x10(%ebp),%eax
801057e1:	01 45 f8             	add    %eax,-0x8(%ebp)
801057e4:	eb 13                	jmp    801057f9 <memmove+0x4c>
801057e6:	83 6d fc 01          	subl   $0x1,-0x4(%ebp)
801057ea:	83 6d f8 01          	subl   $0x1,-0x8(%ebp)
801057ee:	8b 45 fc             	mov    -0x4(%ebp),%eax
801057f1:	0f b6 10             	movzbl (%eax),%edx
801057f4:	8b 45 f8             	mov    -0x8(%ebp),%eax
801057f7:	88 10                	mov    %dl,(%eax)
801057f9:	8b 45 10             	mov    0x10(%ebp),%eax
801057fc:	8d 50 ff             	lea    -0x1(%eax),%edx
801057ff:	89 55 10             	mov    %edx,0x10(%ebp)
80105802:	85 c0                	test   %eax,%eax
80105804:	75 e0                	jne    801057e6 <memmove+0x39>
80105806:	eb 24                	jmp    8010582c <memmove+0x7f>
80105808:	8b 55 fc             	mov    -0x4(%ebp),%edx
8010580b:	8d 42 01             	lea    0x1(%edx),%eax
8010580e:	89 45 fc             	mov    %eax,-0x4(%ebp)
80105811:	8b 45 f8             	mov    -0x8(%ebp),%eax
80105814:	8d 48 01             	lea    0x1(%eax),%ecx
80105817:	89 4d f8             	mov    %ecx,-0x8(%ebp)
8010581a:	0f b6 12             	movzbl (%edx),%edx
8010581d:	88 10                	mov    %dl,(%eax)
8010581f:	8b 45 10             	mov    0x10(%ebp),%eax
80105822:	8d 50 ff             	lea    -0x1(%eax),%edx
80105825:	89 55 10             	mov    %edx,0x10(%ebp)
80105828:	85 c0                	test   %eax,%eax
8010582a:	75 dc                	jne    80105808 <memmove+0x5b>
8010582c:	8b 45 08             	mov    0x8(%ebp),%eax
8010582f:	c9                   	leave  
80105830:	c3                   	ret    

80105831 <memcpy>:
80105831:	f3 0f 1e fb          	endbr32 
80105835:	55                   	push   %ebp
80105836:	89 e5                	mov    %esp,%ebp
80105838:	ff 75 10             	pushl  0x10(%ebp)
8010583b:	ff 75 0c             	pushl  0xc(%ebp)
8010583e:	ff 75 08             	pushl  0x8(%ebp)
80105841:	e8 67 ff ff ff       	call   801057ad <memmove>
80105846:	83 c4 0c             	add    $0xc,%esp
80105849:	c9                   	leave  
8010584a:	c3                   	ret    

8010584b <strncmp>:
8010584b:	f3 0f 1e fb          	endbr32 
8010584f:	55                   	push   %ebp
80105850:	89 e5                	mov    %esp,%ebp
80105852:	eb 0c                	jmp    80105860 <strncmp+0x15>
80105854:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
80105858:	83 45 08 01          	addl   $0x1,0x8(%ebp)
8010585c:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
80105860:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80105864:	74 1a                	je     80105880 <strncmp+0x35>
80105866:	8b 45 08             	mov    0x8(%ebp),%eax
80105869:	0f b6 00             	movzbl (%eax),%eax
8010586c:	84 c0                	test   %al,%al
8010586e:	74 10                	je     80105880 <strncmp+0x35>
80105870:	8b 45 08             	mov    0x8(%ebp),%eax
80105873:	0f b6 10             	movzbl (%eax),%edx
80105876:	8b 45 0c             	mov    0xc(%ebp),%eax
80105879:	0f b6 00             	movzbl (%eax),%eax
8010587c:	38 c2                	cmp    %al,%dl
8010587e:	74 d4                	je     80105854 <strncmp+0x9>
80105880:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80105884:	75 07                	jne    8010588d <strncmp+0x42>
80105886:	b8 00 00 00 00       	mov    $0x0,%eax
8010588b:	eb 16                	jmp    801058a3 <strncmp+0x58>
8010588d:	8b 45 08             	mov    0x8(%ebp),%eax
80105890:	0f b6 00             	movzbl (%eax),%eax
80105893:	0f b6 d0             	movzbl %al,%edx
80105896:	8b 45 0c             	mov    0xc(%ebp),%eax
80105899:	0f b6 00             	movzbl (%eax),%eax
8010589c:	0f b6 c0             	movzbl %al,%eax
8010589f:	29 c2                	sub    %eax,%edx
801058a1:	89 d0                	mov    %edx,%eax
801058a3:	5d                   	pop    %ebp
801058a4:	c3                   	ret    

801058a5 <strncpy>:
801058a5:	f3 0f 1e fb          	endbr32 
801058a9:	55                   	push   %ebp
801058aa:	89 e5                	mov    %esp,%ebp
801058ac:	83 ec 10             	sub    $0x10,%esp
801058af:	8b 45 08             	mov    0x8(%ebp),%eax
801058b2:	89 45 fc             	mov    %eax,-0x4(%ebp)
801058b5:	90                   	nop
801058b6:	8b 45 10             	mov    0x10(%ebp),%eax
801058b9:	8d 50 ff             	lea    -0x1(%eax),%edx
801058bc:	89 55 10             	mov    %edx,0x10(%ebp)
801058bf:	85 c0                	test   %eax,%eax
801058c1:	7e 2c                	jle    801058ef <strncpy+0x4a>
801058c3:	8b 55 0c             	mov    0xc(%ebp),%edx
801058c6:	8d 42 01             	lea    0x1(%edx),%eax
801058c9:	89 45 0c             	mov    %eax,0xc(%ebp)
801058cc:	8b 45 08             	mov    0x8(%ebp),%eax
801058cf:	8d 48 01             	lea    0x1(%eax),%ecx
801058d2:	89 4d 08             	mov    %ecx,0x8(%ebp)
801058d5:	0f b6 12             	movzbl (%edx),%edx
801058d8:	88 10                	mov    %dl,(%eax)
801058da:	0f b6 00             	movzbl (%eax),%eax
801058dd:	84 c0                	test   %al,%al
801058df:	75 d5                	jne    801058b6 <strncpy+0x11>
801058e1:	eb 0c                	jmp    801058ef <strncpy+0x4a>
801058e3:	8b 45 08             	mov    0x8(%ebp),%eax
801058e6:	8d 50 01             	lea    0x1(%eax),%edx
801058e9:	89 55 08             	mov    %edx,0x8(%ebp)
801058ec:	c6 00 00             	movb   $0x0,(%eax)
801058ef:	8b 45 10             	mov    0x10(%ebp),%eax
801058f2:	8d 50 ff             	lea    -0x1(%eax),%edx
801058f5:	89 55 10             	mov    %edx,0x10(%ebp)
801058f8:	85 c0                	test   %eax,%eax
801058fa:	7f e7                	jg     801058e3 <strncpy+0x3e>
801058fc:	8b 45 fc             	mov    -0x4(%ebp),%eax
801058ff:	c9                   	leave  
80105900:	c3                   	ret    

80105901 <safestrcpy>:
80105901:	f3 0f 1e fb          	endbr32 
80105905:	55                   	push   %ebp
80105906:	89 e5                	mov    %esp,%ebp
80105908:	83 ec 10             	sub    $0x10,%esp
8010590b:	8b 45 08             	mov    0x8(%ebp),%eax
8010590e:	89 45 fc             	mov    %eax,-0x4(%ebp)
80105911:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80105915:	7f 05                	jg     8010591c <safestrcpy+0x1b>
80105917:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010591a:	eb 31                	jmp    8010594d <safestrcpy+0x4c>
8010591c:	83 6d 10 01          	subl   $0x1,0x10(%ebp)
80105920:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80105924:	7e 1e                	jle    80105944 <safestrcpy+0x43>
80105926:	8b 55 0c             	mov    0xc(%ebp),%edx
80105929:	8d 42 01             	lea    0x1(%edx),%eax
8010592c:	89 45 0c             	mov    %eax,0xc(%ebp)
8010592f:	8b 45 08             	mov    0x8(%ebp),%eax
80105932:	8d 48 01             	lea    0x1(%eax),%ecx
80105935:	89 4d 08             	mov    %ecx,0x8(%ebp)
80105938:	0f b6 12             	movzbl (%edx),%edx
8010593b:	88 10                	mov    %dl,(%eax)
8010593d:	0f b6 00             	movzbl (%eax),%eax
80105940:	84 c0                	test   %al,%al
80105942:	75 d8                	jne    8010591c <safestrcpy+0x1b>
80105944:	8b 45 08             	mov    0x8(%ebp),%eax
80105947:	c6 00 00             	movb   $0x0,(%eax)
8010594a:	8b 45 fc             	mov    -0x4(%ebp),%eax
8010594d:	c9                   	leave  
8010594e:	c3                   	ret    

8010594f <strlen>:
8010594f:	f3 0f 1e fb          	endbr32 
80105953:	55                   	push   %ebp
80105954:	89 e5                	mov    %esp,%ebp
80105956:	83 ec 10             	sub    $0x10,%esp
80105959:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
80105960:	eb 04                	jmp    80105966 <strlen+0x17>
80105962:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
80105966:	8b 55 fc             	mov    -0x4(%ebp),%edx
80105969:	8b 45 08             	mov    0x8(%ebp),%eax
8010596c:	01 d0                	add    %edx,%eax
8010596e:	0f b6 00             	movzbl (%eax),%eax
80105971:	84 c0                	test   %al,%al
80105973:	75 ed                	jne    80105962 <strlen+0x13>
80105975:	8b 45 fc             	mov    -0x4(%ebp),%eax
80105978:	c9                   	leave  
80105979:	c3                   	ret    

8010597a <swtch>:
8010597a:	8b 44 24 04          	mov    0x4(%esp),%eax
8010597e:	8b 54 24 08          	mov    0x8(%esp),%edx
80105982:	55                   	push   %ebp
80105983:	53                   	push   %ebx
80105984:	56                   	push   %esi
80105985:	57                   	push   %edi
80105986:	89 20                	mov    %esp,(%eax)
80105988:	89 d4                	mov    %edx,%esp
8010598a:	5f                   	pop    %edi
8010598b:	5e                   	pop    %esi
8010598c:	5b                   	pop    %ebx
8010598d:	5d                   	pop    %ebp
8010598e:	c3                   	ret    

8010598f <fetchint>:
// to a saved program counter, and then the first argument.

// Fetch the int at addr from the current process.
int
fetchint(uint addr, int *ip)
{
8010598f:	f3 0f 1e fb          	endbr32 
80105993:	55                   	push   %ebp
80105994:	89 e5                	mov    %esp,%ebp
80105996:	83 ec 18             	sub    $0x18,%esp
  struct proc *curproc = myproc();
80105999:	e8 6f eb ff ff       	call   8010450d <myproc>
8010599e:	89 45 f4             	mov    %eax,-0xc(%ebp)

  if(addr >= curproc->sz || addr+4 > curproc->sz)
801059a1:	8b 45 f4             	mov    -0xc(%ebp),%eax
801059a4:	8b 00                	mov    (%eax),%eax
801059a6:	39 45 08             	cmp    %eax,0x8(%ebp)
801059a9:	73 0f                	jae    801059ba <fetchint+0x2b>
801059ab:	8b 45 08             	mov    0x8(%ebp),%eax
801059ae:	8d 50 04             	lea    0x4(%eax),%edx
801059b1:	8b 45 f4             	mov    -0xc(%ebp),%eax
801059b4:	8b 00                	mov    (%eax),%eax
801059b6:	39 c2                	cmp    %eax,%edx
801059b8:	76 07                	jbe    801059c1 <fetchint+0x32>
    return -1;
801059ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801059bf:	eb 0f                	jmp    801059d0 <fetchint+0x41>
  *ip = *(int*)(addr);
801059c1:	8b 45 08             	mov    0x8(%ebp),%eax
801059c4:	8b 10                	mov    (%eax),%edx
801059c6:	8b 45 0c             	mov    0xc(%ebp),%eax
801059c9:	89 10                	mov    %edx,(%eax)
  return 0;
801059cb:	b8 00 00 00 00       	mov    $0x0,%eax
}
801059d0:	c9                   	leave  
801059d1:	c3                   	ret    

801059d2 <fetchstr>:
// Fetch the nul-terminated string at addr from the current process.
// Doesn't actually copy the string - just sets *pp to point at it.
// Returns length of string, not including nul.
int
fetchstr(uint addr, char **pp)
{
801059d2:	f3 0f 1e fb          	endbr32 
801059d6:	55                   	push   %ebp
801059d7:	89 e5                	mov    %esp,%ebp
801059d9:	83 ec 18             	sub    $0x18,%esp
  char *s, *ep;
  struct proc *curproc = myproc();
801059dc:	e8 2c eb ff ff       	call   8010450d <myproc>
801059e1:	89 45 f0             	mov    %eax,-0x10(%ebp)

  if(addr >= curproc->sz)
801059e4:	8b 45 f0             	mov    -0x10(%ebp),%eax
801059e7:	8b 00                	mov    (%eax),%eax
801059e9:	39 45 08             	cmp    %eax,0x8(%ebp)
801059ec:	72 07                	jb     801059f5 <fetchstr+0x23>
    return -1;
801059ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801059f3:	eb 43                	jmp    80105a38 <fetchstr+0x66>
  *pp = (char*)addr;
801059f5:	8b 55 08             	mov    0x8(%ebp),%edx
801059f8:	8b 45 0c             	mov    0xc(%ebp),%eax
801059fb:	89 10                	mov    %edx,(%eax)
  ep = (char*)curproc->sz;
801059fd:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105a00:	8b 00                	mov    (%eax),%eax
80105a02:	89 45 ec             	mov    %eax,-0x14(%ebp)
  for(s = *pp; s < ep; s++){
80105a05:	8b 45 0c             	mov    0xc(%ebp),%eax
80105a08:	8b 00                	mov    (%eax),%eax
80105a0a:	89 45 f4             	mov    %eax,-0xc(%ebp)
80105a0d:	eb 1c                	jmp    80105a2b <fetchstr+0x59>
    if(*s == 0)
80105a0f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105a12:	0f b6 00             	movzbl (%eax),%eax
80105a15:	84 c0                	test   %al,%al
80105a17:	75 0e                	jne    80105a27 <fetchstr+0x55>
      return s - *pp;
80105a19:	8b 45 0c             	mov    0xc(%ebp),%eax
80105a1c:	8b 00                	mov    (%eax),%eax
80105a1e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105a21:	29 c2                	sub    %eax,%edx
80105a23:	89 d0                	mov    %edx,%eax
80105a25:	eb 11                	jmp    80105a38 <fetchstr+0x66>
  for(s = *pp; s < ep; s++){
80105a27:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80105a2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105a2e:	3b 45 ec             	cmp    -0x14(%ebp),%eax
80105a31:	72 dc                	jb     80105a0f <fetchstr+0x3d>
  }
  return -1;
80105a33:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80105a38:	c9                   	leave  
80105a39:	c3                   	ret    

80105a3a <argint>:

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
80105a3a:	f3 0f 1e fb          	endbr32 
80105a3e:	55                   	push   %ebp
80105a3f:	89 e5                	mov    %esp,%ebp
80105a41:	83 ec 08             	sub    $0x8,%esp
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80105a44:	e8 c4 ea ff ff       	call   8010450d <myproc>
80105a49:	8b 40 18             	mov    0x18(%eax),%eax
80105a4c:	8b 40 44             	mov    0x44(%eax),%eax
80105a4f:	8b 55 08             	mov    0x8(%ebp),%edx
80105a52:	c1 e2 02             	shl    $0x2,%edx
80105a55:	01 d0                	add    %edx,%eax
80105a57:	83 c0 04             	add    $0x4,%eax
80105a5a:	83 ec 08             	sub    $0x8,%esp
80105a5d:	ff 75 0c             	pushl  0xc(%ebp)
80105a60:	50                   	push   %eax
80105a61:	e8 29 ff ff ff       	call   8010598f <fetchint>
80105a66:	83 c4 10             	add    $0x10,%esp
}
80105a69:	c9                   	leave  
80105a6a:	c3                   	ret    

80105a6b <argptr>:
// Fetch the nth word-sized system call argument as a pointer
// to a block of memory of size bytes.  Check that the pointer
// lies within the process address space.
int
argptr(int n, char **pp, int size)
{
80105a6b:	f3 0f 1e fb          	endbr32 
80105a6f:	55                   	push   %ebp
80105a70:	89 e5                	mov    %esp,%ebp
80105a72:	83 ec 18             	sub    $0x18,%esp
  int i;
  struct proc *curproc = myproc();
80105a75:	e8 93 ea ff ff       	call   8010450d <myproc>
80105a7a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 
  if(argint(n, &i) < 0)
80105a7d:	83 ec 08             	sub    $0x8,%esp
80105a80:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105a83:	50                   	push   %eax
80105a84:	ff 75 08             	pushl  0x8(%ebp)
80105a87:	e8 ae ff ff ff       	call   80105a3a <argint>
80105a8c:	83 c4 10             	add    $0x10,%esp
80105a8f:	85 c0                	test   %eax,%eax
80105a91:	79 07                	jns    80105a9a <argptr+0x2f>
    return -1;
80105a93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105a98:	eb 3b                	jmp    80105ad5 <argptr+0x6a>
  if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
80105a9a:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80105a9e:	78 1f                	js     80105abf <argptr+0x54>
80105aa0:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105aa3:	8b 00                	mov    (%eax),%eax
80105aa5:	8b 55 f0             	mov    -0x10(%ebp),%edx
80105aa8:	39 d0                	cmp    %edx,%eax
80105aaa:	76 13                	jbe    80105abf <argptr+0x54>
80105aac:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105aaf:	89 c2                	mov    %eax,%edx
80105ab1:	8b 45 10             	mov    0x10(%ebp),%eax
80105ab4:	01 c2                	add    %eax,%edx
80105ab6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105ab9:	8b 00                	mov    (%eax),%eax
80105abb:	39 c2                	cmp    %eax,%edx
80105abd:	76 07                	jbe    80105ac6 <argptr+0x5b>
    return -1;
80105abf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105ac4:	eb 0f                	jmp    80105ad5 <argptr+0x6a>
  *pp = (char*)i;
80105ac6:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105ac9:	89 c2                	mov    %eax,%edx
80105acb:	8b 45 0c             	mov    0xc(%ebp),%eax
80105ace:	89 10                	mov    %edx,(%eax)
  return 0;
80105ad0:	b8 00 00 00 00       	mov    $0x0,%eax
}
80105ad5:	c9                   	leave  
80105ad6:	c3                   	ret    

80105ad7 <argstr>:
// Check that the pointer is valid and the string is nul-terminated.
// (There is no shared writable memory, so the string can't change
// between this check and being used by the kernel.)
int
argstr(int n, char **pp)
{
80105ad7:	f3 0f 1e fb          	endbr32 
80105adb:	55                   	push   %ebp
80105adc:	89 e5                	mov    %esp,%ebp
80105ade:	83 ec 18             	sub    $0x18,%esp
  int addr;
  if(argint(n, &addr) < 0)
80105ae1:	83 ec 08             	sub    $0x8,%esp
80105ae4:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105ae7:	50                   	push   %eax
80105ae8:	ff 75 08             	pushl  0x8(%ebp)
80105aeb:	e8 4a ff ff ff       	call   80105a3a <argint>
80105af0:	83 c4 10             	add    $0x10,%esp
80105af3:	85 c0                	test   %eax,%eax
80105af5:	79 07                	jns    80105afe <argstr+0x27>
    return -1;
80105af7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105afc:	eb 12                	jmp    80105b10 <argstr+0x39>
  return fetchstr(addr, pp);
80105afe:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105b01:	83 ec 08             	sub    $0x8,%esp
80105b04:	ff 75 0c             	pushl  0xc(%ebp)
80105b07:	50                   	push   %eax
80105b08:	e8 c5 fe ff ff       	call   801059d2 <fetchstr>
80105b0d:	83 c4 10             	add    $0x10,%esp
}
80105b10:	c9                   	leave  
80105b11:	c3                   	ret    

80105b12 <syscall>:
[SYS_dump_rawphymem] sys_dump_rawphymem,
};

void
syscall(void)
{
80105b12:	f3 0f 1e fb          	endbr32 
80105b16:	55                   	push   %ebp
80105b17:	89 e5                	mov    %esp,%ebp
80105b19:	83 ec 18             	sub    $0x18,%esp
  int num;
  struct proc *curproc = myproc();
80105b1c:	e8 ec e9 ff ff       	call   8010450d <myproc>
80105b21:	89 45 f4             	mov    %eax,-0xc(%ebp)

  num = curproc->tf->eax;
80105b24:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105b27:	8b 40 18             	mov    0x18(%eax),%eax
80105b2a:	8b 40 1c             	mov    0x1c(%eax),%eax
80105b2d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
80105b30:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80105b34:	7e 2f                	jle    80105b65 <syscall+0x53>
80105b36:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105b39:	83 f8 18             	cmp    $0x18,%eax
80105b3c:	77 27                	ja     80105b65 <syscall+0x53>
80105b3e:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105b41:	8b 04 85 20 d0 10 80 	mov    -0x7fef2fe0(,%eax,4),%eax
80105b48:	85 c0                	test   %eax,%eax
80105b4a:	74 19                	je     80105b65 <syscall+0x53>
    curproc->tf->eax = syscalls[num]();
80105b4c:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105b4f:	8b 04 85 20 d0 10 80 	mov    -0x7fef2fe0(,%eax,4),%eax
80105b56:	ff d0                	call   *%eax
80105b58:	89 c2                	mov    %eax,%edx
80105b5a:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105b5d:	8b 40 18             	mov    0x18(%eax),%eax
80105b60:	89 50 1c             	mov    %edx,0x1c(%eax)
80105b63:	eb 2c                	jmp    80105b91 <syscall+0x7f>
  } else {
    cprintf("%d %s: unknown sys call %d\n",
            curproc->pid, curproc->name, num);
80105b65:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105b68:	8d 50 6c             	lea    0x6c(%eax),%edx
    cprintf("%d %s: unknown sys call %d\n",
80105b6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105b6e:	8b 40 10             	mov    0x10(%eax),%eax
80105b71:	ff 75 f0             	pushl  -0x10(%ebp)
80105b74:	52                   	push   %edx
80105b75:	50                   	push   %eax
80105b76:	68 6e 9a 10 80       	push   $0x80109a6e
80105b7b:	e8 98 a8 ff ff       	call   80100418 <cprintf>
80105b80:	83 c4 10             	add    $0x10,%esp
    curproc->tf->eax = -1;
80105b83:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105b86:	8b 40 18             	mov    0x18(%eax),%eax
80105b89:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
  }
}
80105b90:	90                   	nop
80105b91:	90                   	nop
80105b92:	c9                   	leave  
80105b93:	c3                   	ret    

80105b94 <argfd>:

// Fetch the nth word-sized system call argument as a file descriptor
// and return both the descriptor and the corresponding struct file.
static int
argfd(int n, int *pfd, struct file **pf)
{
80105b94:	f3 0f 1e fb          	endbr32 
80105b98:	55                   	push   %ebp
80105b99:	89 e5                	mov    %esp,%ebp
80105b9b:	83 ec 18             	sub    $0x18,%esp
  int fd;
  struct file *f;

  if(argint(n, &fd) < 0)
80105b9e:	83 ec 08             	sub    $0x8,%esp
80105ba1:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105ba4:	50                   	push   %eax
80105ba5:	ff 75 08             	pushl  0x8(%ebp)
80105ba8:	e8 8d fe ff ff       	call   80105a3a <argint>
80105bad:	83 c4 10             	add    $0x10,%esp
80105bb0:	85 c0                	test   %eax,%eax
80105bb2:	79 07                	jns    80105bbb <argfd+0x27>
    return -1;
80105bb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105bb9:	eb 4f                	jmp    80105c0a <argfd+0x76>
  if(fd < 0 || fd >= NOFILE || (f=myproc()->ofile[fd]) == 0)
80105bbb:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105bbe:	85 c0                	test   %eax,%eax
80105bc0:	78 20                	js     80105be2 <argfd+0x4e>
80105bc2:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105bc5:	83 f8 0f             	cmp    $0xf,%eax
80105bc8:	7f 18                	jg     80105be2 <argfd+0x4e>
80105bca:	e8 3e e9 ff ff       	call   8010450d <myproc>
80105bcf:	8b 55 f0             	mov    -0x10(%ebp),%edx
80105bd2:	83 c2 08             	add    $0x8,%edx
80105bd5:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
80105bd9:	89 45 f4             	mov    %eax,-0xc(%ebp)
80105bdc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80105be0:	75 07                	jne    80105be9 <argfd+0x55>
    return -1;
80105be2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105be7:	eb 21                	jmp    80105c0a <argfd+0x76>
  if(pfd)
80105be9:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
80105bed:	74 08                	je     80105bf7 <argfd+0x63>
    *pfd = fd;
80105bef:	8b 55 f0             	mov    -0x10(%ebp),%edx
80105bf2:	8b 45 0c             	mov    0xc(%ebp),%eax
80105bf5:	89 10                	mov    %edx,(%eax)
  if(pf)
80105bf7:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80105bfb:	74 08                	je     80105c05 <argfd+0x71>
    *pf = f;
80105bfd:	8b 45 10             	mov    0x10(%ebp),%eax
80105c00:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105c03:	89 10                	mov    %edx,(%eax)
  return 0;
80105c05:	b8 00 00 00 00       	mov    $0x0,%eax
}
80105c0a:	c9                   	leave  
80105c0b:	c3                   	ret    

80105c0c <fdalloc>:

// Allocate a file descriptor for the given file.
// Takes over file reference from caller on success.
static int
fdalloc(struct file *f)
{
80105c0c:	f3 0f 1e fb          	endbr32 
80105c10:	55                   	push   %ebp
80105c11:	89 e5                	mov    %esp,%ebp
80105c13:	83 ec 18             	sub    $0x18,%esp
  int fd;
  struct proc *curproc = myproc();
80105c16:	e8 f2 e8 ff ff       	call   8010450d <myproc>
80105c1b:	89 45 f0             	mov    %eax,-0x10(%ebp)

  for(fd = 0; fd < NOFILE; fd++){
80105c1e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80105c25:	eb 2a                	jmp    80105c51 <fdalloc+0x45>
    if(curproc->ofile[fd] == 0){
80105c27:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105c2a:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105c2d:	83 c2 08             	add    $0x8,%edx
80105c30:	8b 44 90 08          	mov    0x8(%eax,%edx,4),%eax
80105c34:	85 c0                	test   %eax,%eax
80105c36:	75 15                	jne    80105c4d <fdalloc+0x41>
      curproc->ofile[fd] = f;
80105c38:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105c3b:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105c3e:	8d 4a 08             	lea    0x8(%edx),%ecx
80105c41:	8b 55 08             	mov    0x8(%ebp),%edx
80105c44:	89 54 88 08          	mov    %edx,0x8(%eax,%ecx,4)
      return fd;
80105c48:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105c4b:	eb 0f                	jmp    80105c5c <fdalloc+0x50>
  for(fd = 0; fd < NOFILE; fd++){
80105c4d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80105c51:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80105c55:	7e d0                	jle    80105c27 <fdalloc+0x1b>
    }
  }
  return -1;
80105c57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80105c5c:	c9                   	leave  
80105c5d:	c3                   	ret    

80105c5e <sys_dup>:

int
sys_dup(void)
{
80105c5e:	f3 0f 1e fb          	endbr32 
80105c62:	55                   	push   %ebp
80105c63:	89 e5                	mov    %esp,%ebp
80105c65:	83 ec 18             	sub    $0x18,%esp
  struct file *f;
  int fd;

  if(argfd(0, 0, &f) < 0)
80105c68:	83 ec 04             	sub    $0x4,%esp
80105c6b:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105c6e:	50                   	push   %eax
80105c6f:	6a 00                	push   $0x0
80105c71:	6a 00                	push   $0x0
80105c73:	e8 1c ff ff ff       	call   80105b94 <argfd>
80105c78:	83 c4 10             	add    $0x10,%esp
80105c7b:	85 c0                	test   %eax,%eax
80105c7d:	79 07                	jns    80105c86 <sys_dup+0x28>
    return -1;
80105c7f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105c84:	eb 31                	jmp    80105cb7 <sys_dup+0x59>
  if((fd=fdalloc(f)) < 0)
80105c86:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105c89:	83 ec 0c             	sub    $0xc,%esp
80105c8c:	50                   	push   %eax
80105c8d:	e8 7a ff ff ff       	call   80105c0c <fdalloc>
80105c92:	83 c4 10             	add    $0x10,%esp
80105c95:	89 45 f4             	mov    %eax,-0xc(%ebp)
80105c98:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80105c9c:	79 07                	jns    80105ca5 <sys_dup+0x47>
    return -1;
80105c9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105ca3:	eb 12                	jmp    80105cb7 <sys_dup+0x59>
  filedup(f);
80105ca5:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105ca8:	83 ec 0c             	sub    $0xc,%esp
80105cab:	50                   	push   %eax
80105cac:	e8 d3 b4 ff ff       	call   80101184 <filedup>
80105cb1:	83 c4 10             	add    $0x10,%esp
  return fd;
80105cb4:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
80105cb7:	c9                   	leave  
80105cb8:	c3                   	ret    

80105cb9 <sys_read>:

int
sys_read(void)
{
80105cb9:	f3 0f 1e fb          	endbr32 
80105cbd:	55                   	push   %ebp
80105cbe:	89 e5                	mov    %esp,%ebp
80105cc0:	83 ec 18             	sub    $0x18,%esp
  struct file *f;
  int n;
  char *p;

  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, &p, n) < 0)
80105cc3:	83 ec 04             	sub    $0x4,%esp
80105cc6:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105cc9:	50                   	push   %eax
80105cca:	6a 00                	push   $0x0
80105ccc:	6a 00                	push   $0x0
80105cce:	e8 c1 fe ff ff       	call   80105b94 <argfd>
80105cd3:	83 c4 10             	add    $0x10,%esp
80105cd6:	85 c0                	test   %eax,%eax
80105cd8:	78 2e                	js     80105d08 <sys_read+0x4f>
80105cda:	83 ec 08             	sub    $0x8,%esp
80105cdd:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105ce0:	50                   	push   %eax
80105ce1:	6a 02                	push   $0x2
80105ce3:	e8 52 fd ff ff       	call   80105a3a <argint>
80105ce8:	83 c4 10             	add    $0x10,%esp
80105ceb:	85 c0                	test   %eax,%eax
80105ced:	78 19                	js     80105d08 <sys_read+0x4f>
80105cef:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105cf2:	83 ec 04             	sub    $0x4,%esp
80105cf5:	50                   	push   %eax
80105cf6:	8d 45 ec             	lea    -0x14(%ebp),%eax
80105cf9:	50                   	push   %eax
80105cfa:	6a 01                	push   $0x1
80105cfc:	e8 6a fd ff ff       	call   80105a6b <argptr>
80105d01:	83 c4 10             	add    $0x10,%esp
80105d04:	85 c0                	test   %eax,%eax
80105d06:	79 07                	jns    80105d0f <sys_read+0x56>
    return -1;
80105d08:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105d0d:	eb 17                	jmp    80105d26 <sys_read+0x6d>
  return fileread(f, p, n);
80105d0f:	8b 4d f0             	mov    -0x10(%ebp),%ecx
80105d12:	8b 55 ec             	mov    -0x14(%ebp),%edx
80105d15:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105d18:	83 ec 04             	sub    $0x4,%esp
80105d1b:	51                   	push   %ecx
80105d1c:	52                   	push   %edx
80105d1d:	50                   	push   %eax
80105d1e:	e8 fd b5 ff ff       	call   80101320 <fileread>
80105d23:	83 c4 10             	add    $0x10,%esp
}
80105d26:	c9                   	leave  
80105d27:	c3                   	ret    

80105d28 <sys_write>:

int
sys_write(void)
{
80105d28:	f3 0f 1e fb          	endbr32 
80105d2c:	55                   	push   %ebp
80105d2d:	89 e5                	mov    %esp,%ebp
80105d2f:	83 ec 18             	sub    $0x18,%esp
  struct file *f;
  int n;
  char *p;

  if(argfd(0, 0, &f) < 0 || argint(2, &n) < 0 || argptr(1, &p, n) < 0)
80105d32:	83 ec 04             	sub    $0x4,%esp
80105d35:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105d38:	50                   	push   %eax
80105d39:	6a 00                	push   $0x0
80105d3b:	6a 00                	push   $0x0
80105d3d:	e8 52 fe ff ff       	call   80105b94 <argfd>
80105d42:	83 c4 10             	add    $0x10,%esp
80105d45:	85 c0                	test   %eax,%eax
80105d47:	78 2e                	js     80105d77 <sys_write+0x4f>
80105d49:	83 ec 08             	sub    $0x8,%esp
80105d4c:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105d4f:	50                   	push   %eax
80105d50:	6a 02                	push   $0x2
80105d52:	e8 e3 fc ff ff       	call   80105a3a <argint>
80105d57:	83 c4 10             	add    $0x10,%esp
80105d5a:	85 c0                	test   %eax,%eax
80105d5c:	78 19                	js     80105d77 <sys_write+0x4f>
80105d5e:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105d61:	83 ec 04             	sub    $0x4,%esp
80105d64:	50                   	push   %eax
80105d65:	8d 45 ec             	lea    -0x14(%ebp),%eax
80105d68:	50                   	push   %eax
80105d69:	6a 01                	push   $0x1
80105d6b:	e8 fb fc ff ff       	call   80105a6b <argptr>
80105d70:	83 c4 10             	add    $0x10,%esp
80105d73:	85 c0                	test   %eax,%eax
80105d75:	79 07                	jns    80105d7e <sys_write+0x56>
    return -1;
80105d77:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105d7c:	eb 17                	jmp    80105d95 <sys_write+0x6d>
  return filewrite(f, p, n);
80105d7e:	8b 4d f0             	mov    -0x10(%ebp),%ecx
80105d81:	8b 55 ec             	mov    -0x14(%ebp),%edx
80105d84:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105d87:	83 ec 04             	sub    $0x4,%esp
80105d8a:	51                   	push   %ecx
80105d8b:	52                   	push   %edx
80105d8c:	50                   	push   %eax
80105d8d:	e8 4a b6 ff ff       	call   801013dc <filewrite>
80105d92:	83 c4 10             	add    $0x10,%esp
}
80105d95:	c9                   	leave  
80105d96:	c3                   	ret    

80105d97 <sys_close>:

int
sys_close(void)
{
80105d97:	f3 0f 1e fb          	endbr32 
80105d9b:	55                   	push   %ebp
80105d9c:	89 e5                	mov    %esp,%ebp
80105d9e:	83 ec 18             	sub    $0x18,%esp
  int fd;
  struct file *f;

  if(argfd(0, &fd, &f) < 0)
80105da1:	83 ec 04             	sub    $0x4,%esp
80105da4:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105da7:	50                   	push   %eax
80105da8:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105dab:	50                   	push   %eax
80105dac:	6a 00                	push   $0x0
80105dae:	e8 e1 fd ff ff       	call   80105b94 <argfd>
80105db3:	83 c4 10             	add    $0x10,%esp
80105db6:	85 c0                	test   %eax,%eax
80105db8:	79 07                	jns    80105dc1 <sys_close+0x2a>
    return -1;
80105dba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105dbf:	eb 27                	jmp    80105de8 <sys_close+0x51>
  myproc()->ofile[fd] = 0;
80105dc1:	e8 47 e7 ff ff       	call   8010450d <myproc>
80105dc6:	8b 55 f4             	mov    -0xc(%ebp),%edx
80105dc9:	83 c2 08             	add    $0x8,%edx
80105dcc:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
80105dd3:	00 
  fileclose(f);
80105dd4:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105dd7:	83 ec 0c             	sub    $0xc,%esp
80105dda:	50                   	push   %eax
80105ddb:	e8 f9 b3 ff ff       	call   801011d9 <fileclose>
80105de0:	83 c4 10             	add    $0x10,%esp
  return 0;
80105de3:	b8 00 00 00 00       	mov    $0x0,%eax
}
80105de8:	c9                   	leave  
80105de9:	c3                   	ret    

80105dea <sys_fstat>:

int
sys_fstat(void)
{
80105dea:	f3 0f 1e fb          	endbr32 
80105dee:	55                   	push   %ebp
80105def:	89 e5                	mov    %esp,%ebp
80105df1:	83 ec 18             	sub    $0x18,%esp
  struct file *f;
  struct stat *st;

  if(argfd(0, 0, &f) < 0 || argptr(1, (void*)&st, sizeof(*st)) < 0)
80105df4:	83 ec 04             	sub    $0x4,%esp
80105df7:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105dfa:	50                   	push   %eax
80105dfb:	6a 00                	push   $0x0
80105dfd:	6a 00                	push   $0x0
80105dff:	e8 90 fd ff ff       	call   80105b94 <argfd>
80105e04:	83 c4 10             	add    $0x10,%esp
80105e07:	85 c0                	test   %eax,%eax
80105e09:	78 17                	js     80105e22 <sys_fstat+0x38>
80105e0b:	83 ec 04             	sub    $0x4,%esp
80105e0e:	6a 14                	push   $0x14
80105e10:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105e13:	50                   	push   %eax
80105e14:	6a 01                	push   $0x1
80105e16:	e8 50 fc ff ff       	call   80105a6b <argptr>
80105e1b:	83 c4 10             	add    $0x10,%esp
80105e1e:	85 c0                	test   %eax,%eax
80105e20:	79 07                	jns    80105e29 <sys_fstat+0x3f>
    return -1;
80105e22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105e27:	eb 13                	jmp    80105e3c <sys_fstat+0x52>
  return filestat(f, st);
80105e29:	8b 55 f0             	mov    -0x10(%ebp),%edx
80105e2c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105e2f:	83 ec 08             	sub    $0x8,%esp
80105e32:	52                   	push   %edx
80105e33:	50                   	push   %eax
80105e34:	e8 8c b4 ff ff       	call   801012c5 <filestat>
80105e39:	83 c4 10             	add    $0x10,%esp
}
80105e3c:	c9                   	leave  
80105e3d:	c3                   	ret    

80105e3e <sys_link>:

// Create the path new as a link to the same inode as old.
int
sys_link(void)
{
80105e3e:	f3 0f 1e fb          	endbr32 
80105e42:	55                   	push   %ebp
80105e43:	89 e5                	mov    %esp,%ebp
80105e45:	83 ec 28             	sub    $0x28,%esp
  char name[DIRSIZ], *new, *old;
  struct inode *dp, *ip;

  if(argstr(0, &old) < 0 || argstr(1, &new) < 0)
80105e48:	83 ec 08             	sub    $0x8,%esp
80105e4b:	8d 45 d8             	lea    -0x28(%ebp),%eax
80105e4e:	50                   	push   %eax
80105e4f:	6a 00                	push   $0x0
80105e51:	e8 81 fc ff ff       	call   80105ad7 <argstr>
80105e56:	83 c4 10             	add    $0x10,%esp
80105e59:	85 c0                	test   %eax,%eax
80105e5b:	78 15                	js     80105e72 <sys_link+0x34>
80105e5d:	83 ec 08             	sub    $0x8,%esp
80105e60:	8d 45 dc             	lea    -0x24(%ebp),%eax
80105e63:	50                   	push   %eax
80105e64:	6a 01                	push   $0x1
80105e66:	e8 6c fc ff ff       	call   80105ad7 <argstr>
80105e6b:	83 c4 10             	add    $0x10,%esp
80105e6e:	85 c0                	test   %eax,%eax
80105e70:	79 0a                	jns    80105e7c <sys_link+0x3e>
    return -1;
80105e72:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105e77:	e9 68 01 00 00       	jmp    80105fe4 <sys_link+0x1a6>

  begin_op();
80105e7c:	e8 cd d8 ff ff       	call   8010374e <begin_op>
  if((ip = namei(old)) == 0){
80105e81:	8b 45 d8             	mov    -0x28(%ebp),%eax
80105e84:	83 ec 0c             	sub    $0xc,%esp
80105e87:	50                   	push   %eax
80105e88:	e8 37 c8 ff ff       	call   801026c4 <namei>
80105e8d:	83 c4 10             	add    $0x10,%esp
80105e90:	89 45 f4             	mov    %eax,-0xc(%ebp)
80105e93:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80105e97:	75 0f                	jne    80105ea8 <sys_link+0x6a>
    end_op();
80105e99:	e8 40 d9 ff ff       	call   801037de <end_op>
    return -1;
80105e9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105ea3:	e9 3c 01 00 00       	jmp    80105fe4 <sys_link+0x1a6>
  }

  ilock(ip);
80105ea8:	83 ec 0c             	sub    $0xc,%esp
80105eab:	ff 75 f4             	pushl  -0xc(%ebp)
80105eae:	e8 a6 bc ff ff       	call   80101b59 <ilock>
80105eb3:	83 c4 10             	add    $0x10,%esp
  if(ip->type == T_DIR){
80105eb6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105eb9:	0f b7 40 50          	movzwl 0x50(%eax),%eax
80105ebd:	66 83 f8 01          	cmp    $0x1,%ax
80105ec1:	75 1d                	jne    80105ee0 <sys_link+0xa2>
    iunlockput(ip);
80105ec3:	83 ec 0c             	sub    $0xc,%esp
80105ec6:	ff 75 f4             	pushl  -0xc(%ebp)
80105ec9:	e8 c8 be ff ff       	call   80101d96 <iunlockput>
80105ece:	83 c4 10             	add    $0x10,%esp
    end_op();
80105ed1:	e8 08 d9 ff ff       	call   801037de <end_op>
    return -1;
80105ed6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105edb:	e9 04 01 00 00       	jmp    80105fe4 <sys_link+0x1a6>
  }

  ip->nlink++;
80105ee0:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105ee3:	0f b7 40 56          	movzwl 0x56(%eax),%eax
80105ee7:	83 c0 01             	add    $0x1,%eax
80105eea:	89 c2                	mov    %eax,%edx
80105eec:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105eef:	66 89 50 56          	mov    %dx,0x56(%eax)
  iupdate(ip);
80105ef3:	83 ec 0c             	sub    $0xc,%esp
80105ef6:	ff 75 f4             	pushl  -0xc(%ebp)
80105ef9:	e8 72 ba ff ff       	call   80101970 <iupdate>
80105efe:	83 c4 10             	add    $0x10,%esp
  iunlock(ip);
80105f01:	83 ec 0c             	sub    $0xc,%esp
80105f04:	ff 75 f4             	pushl  -0xc(%ebp)
80105f07:	e8 64 bd ff ff       	call   80101c70 <iunlock>
80105f0c:	83 c4 10             	add    $0x10,%esp

  if((dp = nameiparent(new, name)) == 0)
80105f0f:	8b 45 dc             	mov    -0x24(%ebp),%eax
80105f12:	83 ec 08             	sub    $0x8,%esp
80105f15:	8d 55 e2             	lea    -0x1e(%ebp),%edx
80105f18:	52                   	push   %edx
80105f19:	50                   	push   %eax
80105f1a:	e8 c5 c7 ff ff       	call   801026e4 <nameiparent>
80105f1f:	83 c4 10             	add    $0x10,%esp
80105f22:	89 45 f0             	mov    %eax,-0x10(%ebp)
80105f25:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80105f29:	74 71                	je     80105f9c <sys_link+0x15e>
    goto bad;
  ilock(dp);
80105f2b:	83 ec 0c             	sub    $0xc,%esp
80105f2e:	ff 75 f0             	pushl  -0x10(%ebp)
80105f31:	e8 23 bc ff ff       	call   80101b59 <ilock>
80105f36:	83 c4 10             	add    $0x10,%esp
  if(dp->dev != ip->dev || dirlink(dp, name, ip->inum) < 0){
80105f39:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105f3c:	8b 10                	mov    (%eax),%edx
80105f3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105f41:	8b 00                	mov    (%eax),%eax
80105f43:	39 c2                	cmp    %eax,%edx
80105f45:	75 1d                	jne    80105f64 <sys_link+0x126>
80105f47:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105f4a:	8b 40 04             	mov    0x4(%eax),%eax
80105f4d:	83 ec 04             	sub    $0x4,%esp
80105f50:	50                   	push   %eax
80105f51:	8d 45 e2             	lea    -0x1e(%ebp),%eax
80105f54:	50                   	push   %eax
80105f55:	ff 75 f0             	pushl  -0x10(%ebp)
80105f58:	e8 c4 c4 ff ff       	call   80102421 <dirlink>
80105f5d:	83 c4 10             	add    $0x10,%esp
80105f60:	85 c0                	test   %eax,%eax
80105f62:	79 10                	jns    80105f74 <sys_link+0x136>
    iunlockput(dp);
80105f64:	83 ec 0c             	sub    $0xc,%esp
80105f67:	ff 75 f0             	pushl  -0x10(%ebp)
80105f6a:	e8 27 be ff ff       	call   80101d96 <iunlockput>
80105f6f:	83 c4 10             	add    $0x10,%esp
    goto bad;
80105f72:	eb 29                	jmp    80105f9d <sys_link+0x15f>
  }
  iunlockput(dp);
80105f74:	83 ec 0c             	sub    $0xc,%esp
80105f77:	ff 75 f0             	pushl  -0x10(%ebp)
80105f7a:	e8 17 be ff ff       	call   80101d96 <iunlockput>
80105f7f:	83 c4 10             	add    $0x10,%esp
  iput(ip);
80105f82:	83 ec 0c             	sub    $0xc,%esp
80105f85:	ff 75 f4             	pushl  -0xc(%ebp)
80105f88:	e8 35 bd ff ff       	call   80101cc2 <iput>
80105f8d:	83 c4 10             	add    $0x10,%esp

  end_op();
80105f90:	e8 49 d8 ff ff       	call   801037de <end_op>

  return 0;
80105f95:	b8 00 00 00 00       	mov    $0x0,%eax
80105f9a:	eb 48                	jmp    80105fe4 <sys_link+0x1a6>
    goto bad;
80105f9c:	90                   	nop

bad:
  ilock(ip);
80105f9d:	83 ec 0c             	sub    $0xc,%esp
80105fa0:	ff 75 f4             	pushl  -0xc(%ebp)
80105fa3:	e8 b1 bb ff ff       	call   80101b59 <ilock>
80105fa8:	83 c4 10             	add    $0x10,%esp
  ip->nlink--;
80105fab:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105fae:	0f b7 40 56          	movzwl 0x56(%eax),%eax
80105fb2:	83 e8 01             	sub    $0x1,%eax
80105fb5:	89 c2                	mov    %eax,%edx
80105fb7:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105fba:	66 89 50 56          	mov    %dx,0x56(%eax)
  iupdate(ip);
80105fbe:	83 ec 0c             	sub    $0xc,%esp
80105fc1:	ff 75 f4             	pushl  -0xc(%ebp)
80105fc4:	e8 a7 b9 ff ff       	call   80101970 <iupdate>
80105fc9:	83 c4 10             	add    $0x10,%esp
  iunlockput(ip);
80105fcc:	83 ec 0c             	sub    $0xc,%esp
80105fcf:	ff 75 f4             	pushl  -0xc(%ebp)
80105fd2:	e8 bf bd ff ff       	call   80101d96 <iunlockput>
80105fd7:	83 c4 10             	add    $0x10,%esp
  end_op();
80105fda:	e8 ff d7 ff ff       	call   801037de <end_op>
  return -1;
80105fdf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80105fe4:	c9                   	leave  
80105fe5:	c3                   	ret    

80105fe6 <isdirempty>:

// Is the directory dp empty except for "." and ".." ?
static int
isdirempty(struct inode *dp)
{
80105fe6:	f3 0f 1e fb          	endbr32 
80105fea:	55                   	push   %ebp
80105feb:	89 e5                	mov    %esp,%ebp
80105fed:	83 ec 28             	sub    $0x28,%esp
  int off;
  struct dirent de;

  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
80105ff0:	c7 45 f4 20 00 00 00 	movl   $0x20,-0xc(%ebp)
80105ff7:	eb 40                	jmp    80106039 <isdirempty+0x53>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80105ff9:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105ffc:	6a 10                	push   $0x10
80105ffe:	50                   	push   %eax
80105fff:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80106002:	50                   	push   %eax
80106003:	ff 75 08             	pushl  0x8(%ebp)
80106006:	e8 56 c0 ff ff       	call   80102061 <readi>
8010600b:	83 c4 10             	add    $0x10,%esp
8010600e:	83 f8 10             	cmp    $0x10,%eax
80106011:	74 0d                	je     80106020 <isdirempty+0x3a>
      panic("isdirempty: readi");
80106013:	83 ec 0c             	sub    $0xc,%esp
80106016:	68 8a 9a 10 80       	push   $0x80109a8a
8010601b:	e8 e8 a5 ff ff       	call   80100608 <panic>
    if(de.inum != 0)
80106020:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
80106024:	66 85 c0             	test   %ax,%ax
80106027:	74 07                	je     80106030 <isdirempty+0x4a>
      return 0;
80106029:	b8 00 00 00 00       	mov    $0x0,%eax
8010602e:	eb 1b                	jmp    8010604b <isdirempty+0x65>
  for(off=2*sizeof(de); off<dp->size; off+=sizeof(de)){
80106030:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106033:	83 c0 10             	add    $0x10,%eax
80106036:	89 45 f4             	mov    %eax,-0xc(%ebp)
80106039:	8b 45 08             	mov    0x8(%ebp),%eax
8010603c:	8b 50 58             	mov    0x58(%eax),%edx
8010603f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106042:	39 c2                	cmp    %eax,%edx
80106044:	77 b3                	ja     80105ff9 <isdirempty+0x13>
  }
  return 1;
80106046:	b8 01 00 00 00       	mov    $0x1,%eax
}
8010604b:	c9                   	leave  
8010604c:	c3                   	ret    

8010604d <sys_unlink>:

//PAGEBREAK!
int
sys_unlink(void)
{
8010604d:	f3 0f 1e fb          	endbr32 
80106051:	55                   	push   %ebp
80106052:	89 e5                	mov    %esp,%ebp
80106054:	83 ec 38             	sub    $0x38,%esp
  struct inode *ip, *dp;
  struct dirent de;
  char name[DIRSIZ], *path;
  uint off;

  if(argstr(0, &path) < 0)
80106057:	83 ec 08             	sub    $0x8,%esp
8010605a:	8d 45 cc             	lea    -0x34(%ebp),%eax
8010605d:	50                   	push   %eax
8010605e:	6a 00                	push   $0x0
80106060:	e8 72 fa ff ff       	call   80105ad7 <argstr>
80106065:	83 c4 10             	add    $0x10,%esp
80106068:	85 c0                	test   %eax,%eax
8010606a:	79 0a                	jns    80106076 <sys_unlink+0x29>
    return -1;
8010606c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106071:	e9 bf 01 00 00       	jmp    80106235 <sys_unlink+0x1e8>

  begin_op();
80106076:	e8 d3 d6 ff ff       	call   8010374e <begin_op>
  if((dp = nameiparent(path, name)) == 0){
8010607b:	8b 45 cc             	mov    -0x34(%ebp),%eax
8010607e:	83 ec 08             	sub    $0x8,%esp
80106081:	8d 55 d2             	lea    -0x2e(%ebp),%edx
80106084:	52                   	push   %edx
80106085:	50                   	push   %eax
80106086:	e8 59 c6 ff ff       	call   801026e4 <nameiparent>
8010608b:	83 c4 10             	add    $0x10,%esp
8010608e:	89 45 f4             	mov    %eax,-0xc(%ebp)
80106091:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80106095:	75 0f                	jne    801060a6 <sys_unlink+0x59>
    end_op();
80106097:	e8 42 d7 ff ff       	call   801037de <end_op>
    return -1;
8010609c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801060a1:	e9 8f 01 00 00       	jmp    80106235 <sys_unlink+0x1e8>
  }

  ilock(dp);
801060a6:	83 ec 0c             	sub    $0xc,%esp
801060a9:	ff 75 f4             	pushl  -0xc(%ebp)
801060ac:	e8 a8 ba ff ff       	call   80101b59 <ilock>
801060b1:	83 c4 10             	add    $0x10,%esp

  // Cannot unlink "." or "..".
  if(namecmp(name, ".") == 0 || namecmp(name, "..") == 0)
801060b4:	83 ec 08             	sub    $0x8,%esp
801060b7:	68 9c 9a 10 80       	push   $0x80109a9c
801060bc:	8d 45 d2             	lea    -0x2e(%ebp),%eax
801060bf:	50                   	push   %eax
801060c0:	e8 7f c2 ff ff       	call   80102344 <namecmp>
801060c5:	83 c4 10             	add    $0x10,%esp
801060c8:	85 c0                	test   %eax,%eax
801060ca:	0f 84 49 01 00 00    	je     80106219 <sys_unlink+0x1cc>
801060d0:	83 ec 08             	sub    $0x8,%esp
801060d3:	68 9e 9a 10 80       	push   $0x80109a9e
801060d8:	8d 45 d2             	lea    -0x2e(%ebp),%eax
801060db:	50                   	push   %eax
801060dc:	e8 63 c2 ff ff       	call   80102344 <namecmp>
801060e1:	83 c4 10             	add    $0x10,%esp
801060e4:	85 c0                	test   %eax,%eax
801060e6:	0f 84 2d 01 00 00    	je     80106219 <sys_unlink+0x1cc>
    goto bad;

  if((ip = dirlookup(dp, name, &off)) == 0)
801060ec:	83 ec 04             	sub    $0x4,%esp
801060ef:	8d 45 c8             	lea    -0x38(%ebp),%eax
801060f2:	50                   	push   %eax
801060f3:	8d 45 d2             	lea    -0x2e(%ebp),%eax
801060f6:	50                   	push   %eax
801060f7:	ff 75 f4             	pushl  -0xc(%ebp)
801060fa:	e8 64 c2 ff ff       	call   80102363 <dirlookup>
801060ff:	83 c4 10             	add    $0x10,%esp
80106102:	89 45 f0             	mov    %eax,-0x10(%ebp)
80106105:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80106109:	0f 84 0d 01 00 00    	je     8010621c <sys_unlink+0x1cf>
    goto bad;
  ilock(ip);
8010610f:	83 ec 0c             	sub    $0xc,%esp
80106112:	ff 75 f0             	pushl  -0x10(%ebp)
80106115:	e8 3f ba ff ff       	call   80101b59 <ilock>
8010611a:	83 c4 10             	add    $0x10,%esp

  if(ip->nlink < 1)
8010611d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106120:	0f b7 40 56          	movzwl 0x56(%eax),%eax
80106124:	66 85 c0             	test   %ax,%ax
80106127:	7f 0d                	jg     80106136 <sys_unlink+0xe9>
    panic("unlink: nlink < 1");
80106129:	83 ec 0c             	sub    $0xc,%esp
8010612c:	68 a1 9a 10 80       	push   $0x80109aa1
80106131:	e8 d2 a4 ff ff       	call   80100608 <panic>
  if(ip->type == T_DIR && !isdirempty(ip)){
80106136:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106139:	0f b7 40 50          	movzwl 0x50(%eax),%eax
8010613d:	66 83 f8 01          	cmp    $0x1,%ax
80106141:	75 25                	jne    80106168 <sys_unlink+0x11b>
80106143:	83 ec 0c             	sub    $0xc,%esp
80106146:	ff 75 f0             	pushl  -0x10(%ebp)
80106149:	e8 98 fe ff ff       	call   80105fe6 <isdirempty>
8010614e:	83 c4 10             	add    $0x10,%esp
80106151:	85 c0                	test   %eax,%eax
80106153:	75 13                	jne    80106168 <sys_unlink+0x11b>
    iunlockput(ip);
80106155:	83 ec 0c             	sub    $0xc,%esp
80106158:	ff 75 f0             	pushl  -0x10(%ebp)
8010615b:	e8 36 bc ff ff       	call   80101d96 <iunlockput>
80106160:	83 c4 10             	add    $0x10,%esp
    goto bad;
80106163:	e9 b5 00 00 00       	jmp    8010621d <sys_unlink+0x1d0>
  }

  memset(&de, 0, sizeof(de));
80106168:	83 ec 04             	sub    $0x4,%esp
8010616b:	6a 10                	push   $0x10
8010616d:	6a 00                	push   $0x0
8010616f:	8d 45 e0             	lea    -0x20(%ebp),%eax
80106172:	50                   	push   %eax
80106173:	e8 6e f5 ff ff       	call   801056e6 <memset>
80106178:	83 c4 10             	add    $0x10,%esp
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
8010617b:	8b 45 c8             	mov    -0x38(%ebp),%eax
8010617e:	6a 10                	push   $0x10
80106180:	50                   	push   %eax
80106181:	8d 45 e0             	lea    -0x20(%ebp),%eax
80106184:	50                   	push   %eax
80106185:	ff 75 f4             	pushl  -0xc(%ebp)
80106188:	e8 2d c0 ff ff       	call   801021ba <writei>
8010618d:	83 c4 10             	add    $0x10,%esp
80106190:	83 f8 10             	cmp    $0x10,%eax
80106193:	74 0d                	je     801061a2 <sys_unlink+0x155>
    panic("unlink: writei");
80106195:	83 ec 0c             	sub    $0xc,%esp
80106198:	68 b3 9a 10 80       	push   $0x80109ab3
8010619d:	e8 66 a4 ff ff       	call   80100608 <panic>
  if(ip->type == T_DIR){
801061a2:	8b 45 f0             	mov    -0x10(%ebp),%eax
801061a5:	0f b7 40 50          	movzwl 0x50(%eax),%eax
801061a9:	66 83 f8 01          	cmp    $0x1,%ax
801061ad:	75 21                	jne    801061d0 <sys_unlink+0x183>
    dp->nlink--;
801061af:	8b 45 f4             	mov    -0xc(%ebp),%eax
801061b2:	0f b7 40 56          	movzwl 0x56(%eax),%eax
801061b6:	83 e8 01             	sub    $0x1,%eax
801061b9:	89 c2                	mov    %eax,%edx
801061bb:	8b 45 f4             	mov    -0xc(%ebp),%eax
801061be:	66 89 50 56          	mov    %dx,0x56(%eax)
    iupdate(dp);
801061c2:	83 ec 0c             	sub    $0xc,%esp
801061c5:	ff 75 f4             	pushl  -0xc(%ebp)
801061c8:	e8 a3 b7 ff ff       	call   80101970 <iupdate>
801061cd:	83 c4 10             	add    $0x10,%esp
  }
  iunlockput(dp);
801061d0:	83 ec 0c             	sub    $0xc,%esp
801061d3:	ff 75 f4             	pushl  -0xc(%ebp)
801061d6:	e8 bb bb ff ff       	call   80101d96 <iunlockput>
801061db:	83 c4 10             	add    $0x10,%esp

  ip->nlink--;
801061de:	8b 45 f0             	mov    -0x10(%ebp),%eax
801061e1:	0f b7 40 56          	movzwl 0x56(%eax),%eax
801061e5:	83 e8 01             	sub    $0x1,%eax
801061e8:	89 c2                	mov    %eax,%edx
801061ea:	8b 45 f0             	mov    -0x10(%ebp),%eax
801061ed:	66 89 50 56          	mov    %dx,0x56(%eax)
  iupdate(ip);
801061f1:	83 ec 0c             	sub    $0xc,%esp
801061f4:	ff 75 f0             	pushl  -0x10(%ebp)
801061f7:	e8 74 b7 ff ff       	call   80101970 <iupdate>
801061fc:	83 c4 10             	add    $0x10,%esp
  iunlockput(ip);
801061ff:	83 ec 0c             	sub    $0xc,%esp
80106202:	ff 75 f0             	pushl  -0x10(%ebp)
80106205:	e8 8c bb ff ff       	call   80101d96 <iunlockput>
8010620a:	83 c4 10             	add    $0x10,%esp

  end_op();
8010620d:	e8 cc d5 ff ff       	call   801037de <end_op>

  return 0;
80106212:	b8 00 00 00 00       	mov    $0x0,%eax
80106217:	eb 1c                	jmp    80106235 <sys_unlink+0x1e8>
    goto bad;
80106219:	90                   	nop
8010621a:	eb 01                	jmp    8010621d <sys_unlink+0x1d0>
    goto bad;
8010621c:	90                   	nop

bad:
  iunlockput(dp);
8010621d:	83 ec 0c             	sub    $0xc,%esp
80106220:	ff 75 f4             	pushl  -0xc(%ebp)
80106223:	e8 6e bb ff ff       	call   80101d96 <iunlockput>
80106228:	83 c4 10             	add    $0x10,%esp
  end_op();
8010622b:	e8 ae d5 ff ff       	call   801037de <end_op>
  return -1;
80106230:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80106235:	c9                   	leave  
80106236:	c3                   	ret    

80106237 <create>:

static struct inode*
create(char *path, short type, short major, short minor)
{
80106237:	f3 0f 1e fb          	endbr32 
8010623b:	55                   	push   %ebp
8010623c:	89 e5                	mov    %esp,%ebp
8010623e:	83 ec 38             	sub    $0x38,%esp
80106241:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80106244:	8b 55 10             	mov    0x10(%ebp),%edx
80106247:	8b 45 14             	mov    0x14(%ebp),%eax
8010624a:	66 89 4d d4          	mov    %cx,-0x2c(%ebp)
8010624e:	66 89 55 d0          	mov    %dx,-0x30(%ebp)
80106252:	66 89 45 cc          	mov    %ax,-0x34(%ebp)
  struct inode *ip, *dp;
  char name[DIRSIZ];

  if((dp = nameiparent(path, name)) == 0)
80106256:	83 ec 08             	sub    $0x8,%esp
80106259:	8d 45 e2             	lea    -0x1e(%ebp),%eax
8010625c:	50                   	push   %eax
8010625d:	ff 75 08             	pushl  0x8(%ebp)
80106260:	e8 7f c4 ff ff       	call   801026e4 <nameiparent>
80106265:	83 c4 10             	add    $0x10,%esp
80106268:	89 45 f4             	mov    %eax,-0xc(%ebp)
8010626b:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
8010626f:	75 0a                	jne    8010627b <create+0x44>
    return 0;
80106271:	b8 00 00 00 00       	mov    $0x0,%eax
80106276:	e9 8e 01 00 00       	jmp    80106409 <create+0x1d2>
  ilock(dp);
8010627b:	83 ec 0c             	sub    $0xc,%esp
8010627e:	ff 75 f4             	pushl  -0xc(%ebp)
80106281:	e8 d3 b8 ff ff       	call   80101b59 <ilock>
80106286:	83 c4 10             	add    $0x10,%esp

  if((ip = dirlookup(dp, name, 0)) != 0){
80106289:	83 ec 04             	sub    $0x4,%esp
8010628c:	6a 00                	push   $0x0
8010628e:	8d 45 e2             	lea    -0x1e(%ebp),%eax
80106291:	50                   	push   %eax
80106292:	ff 75 f4             	pushl  -0xc(%ebp)
80106295:	e8 c9 c0 ff ff       	call   80102363 <dirlookup>
8010629a:	83 c4 10             	add    $0x10,%esp
8010629d:	89 45 f0             	mov    %eax,-0x10(%ebp)
801062a0:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801062a4:	74 50                	je     801062f6 <create+0xbf>
    iunlockput(dp);
801062a6:	83 ec 0c             	sub    $0xc,%esp
801062a9:	ff 75 f4             	pushl  -0xc(%ebp)
801062ac:	e8 e5 ba ff ff       	call   80101d96 <iunlockput>
801062b1:	83 c4 10             	add    $0x10,%esp
    ilock(ip);
801062b4:	83 ec 0c             	sub    $0xc,%esp
801062b7:	ff 75 f0             	pushl  -0x10(%ebp)
801062ba:	e8 9a b8 ff ff       	call   80101b59 <ilock>
801062bf:	83 c4 10             	add    $0x10,%esp
    if(type == T_FILE && ip->type == T_FILE)
801062c2:	66 83 7d d4 02       	cmpw   $0x2,-0x2c(%ebp)
801062c7:	75 15                	jne    801062de <create+0xa7>
801062c9:	8b 45 f0             	mov    -0x10(%ebp),%eax
801062cc:	0f b7 40 50          	movzwl 0x50(%eax),%eax
801062d0:	66 83 f8 02          	cmp    $0x2,%ax
801062d4:	75 08                	jne    801062de <create+0xa7>
      return ip;
801062d6:	8b 45 f0             	mov    -0x10(%ebp),%eax
801062d9:	e9 2b 01 00 00       	jmp    80106409 <create+0x1d2>
    iunlockput(ip);
801062de:	83 ec 0c             	sub    $0xc,%esp
801062e1:	ff 75 f0             	pushl  -0x10(%ebp)
801062e4:	e8 ad ba ff ff       	call   80101d96 <iunlockput>
801062e9:	83 c4 10             	add    $0x10,%esp
    return 0;
801062ec:	b8 00 00 00 00       	mov    $0x0,%eax
801062f1:	e9 13 01 00 00       	jmp    80106409 <create+0x1d2>
  }

  if((ip = ialloc(dp->dev, type)) == 0)
801062f6:	0f bf 55 d4          	movswl -0x2c(%ebp),%edx
801062fa:	8b 45 f4             	mov    -0xc(%ebp),%eax
801062fd:	8b 00                	mov    (%eax),%eax
801062ff:	83 ec 08             	sub    $0x8,%esp
80106302:	52                   	push   %edx
80106303:	50                   	push   %eax
80106304:	e8 8c b5 ff ff       	call   80101895 <ialloc>
80106309:	83 c4 10             	add    $0x10,%esp
8010630c:	89 45 f0             	mov    %eax,-0x10(%ebp)
8010630f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80106313:	75 0d                	jne    80106322 <create+0xeb>
    panic("create: ialloc");
80106315:	83 ec 0c             	sub    $0xc,%esp
80106318:	68 c2 9a 10 80       	push   $0x80109ac2
8010631d:	e8 e6 a2 ff ff       	call   80100608 <panic>

  ilock(ip);
80106322:	83 ec 0c             	sub    $0xc,%esp
80106325:	ff 75 f0             	pushl  -0x10(%ebp)
80106328:	e8 2c b8 ff ff       	call   80101b59 <ilock>
8010632d:	83 c4 10             	add    $0x10,%esp
  ip->major = major;
80106330:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106333:	0f b7 55 d0          	movzwl -0x30(%ebp),%edx
80106337:	66 89 50 52          	mov    %dx,0x52(%eax)
  ip->minor = minor;
8010633b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010633e:	0f b7 55 cc          	movzwl -0x34(%ebp),%edx
80106342:	66 89 50 54          	mov    %dx,0x54(%eax)
  ip->nlink = 1;
80106346:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106349:	66 c7 40 56 01 00    	movw   $0x1,0x56(%eax)
  iupdate(ip);
8010634f:	83 ec 0c             	sub    $0xc,%esp
80106352:	ff 75 f0             	pushl  -0x10(%ebp)
80106355:	e8 16 b6 ff ff       	call   80101970 <iupdate>
8010635a:	83 c4 10             	add    $0x10,%esp

  if(type == T_DIR){  // Create . and .. entries.
8010635d:	66 83 7d d4 01       	cmpw   $0x1,-0x2c(%ebp)
80106362:	75 6a                	jne    801063ce <create+0x197>
    dp->nlink++;  // for ".."
80106364:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106367:	0f b7 40 56          	movzwl 0x56(%eax),%eax
8010636b:	83 c0 01             	add    $0x1,%eax
8010636e:	89 c2                	mov    %eax,%edx
80106370:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106373:	66 89 50 56          	mov    %dx,0x56(%eax)
    iupdate(dp);
80106377:	83 ec 0c             	sub    $0xc,%esp
8010637a:	ff 75 f4             	pushl  -0xc(%ebp)
8010637d:	e8 ee b5 ff ff       	call   80101970 <iupdate>
80106382:	83 c4 10             	add    $0x10,%esp
    // No ip->nlink++ for ".": avoid cyclic ref count.
    if(dirlink(ip, ".", ip->inum) < 0 || dirlink(ip, "..", dp->inum) < 0)
80106385:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106388:	8b 40 04             	mov    0x4(%eax),%eax
8010638b:	83 ec 04             	sub    $0x4,%esp
8010638e:	50                   	push   %eax
8010638f:	68 9c 9a 10 80       	push   $0x80109a9c
80106394:	ff 75 f0             	pushl  -0x10(%ebp)
80106397:	e8 85 c0 ff ff       	call   80102421 <dirlink>
8010639c:	83 c4 10             	add    $0x10,%esp
8010639f:	85 c0                	test   %eax,%eax
801063a1:	78 1e                	js     801063c1 <create+0x18a>
801063a3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801063a6:	8b 40 04             	mov    0x4(%eax),%eax
801063a9:	83 ec 04             	sub    $0x4,%esp
801063ac:	50                   	push   %eax
801063ad:	68 9e 9a 10 80       	push   $0x80109a9e
801063b2:	ff 75 f0             	pushl  -0x10(%ebp)
801063b5:	e8 67 c0 ff ff       	call   80102421 <dirlink>
801063ba:	83 c4 10             	add    $0x10,%esp
801063bd:	85 c0                	test   %eax,%eax
801063bf:	79 0d                	jns    801063ce <create+0x197>
      panic("create dots");
801063c1:	83 ec 0c             	sub    $0xc,%esp
801063c4:	68 d1 9a 10 80       	push   $0x80109ad1
801063c9:	e8 3a a2 ff ff       	call   80100608 <panic>
  }

  if(dirlink(dp, name, ip->inum) < 0)
801063ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
801063d1:	8b 40 04             	mov    0x4(%eax),%eax
801063d4:	83 ec 04             	sub    $0x4,%esp
801063d7:	50                   	push   %eax
801063d8:	8d 45 e2             	lea    -0x1e(%ebp),%eax
801063db:	50                   	push   %eax
801063dc:	ff 75 f4             	pushl  -0xc(%ebp)
801063df:	e8 3d c0 ff ff       	call   80102421 <dirlink>
801063e4:	83 c4 10             	add    $0x10,%esp
801063e7:	85 c0                	test   %eax,%eax
801063e9:	79 0d                	jns    801063f8 <create+0x1c1>
    panic("create: dirlink");
801063eb:	83 ec 0c             	sub    $0xc,%esp
801063ee:	68 dd 9a 10 80       	push   $0x80109add
801063f3:	e8 10 a2 ff ff       	call   80100608 <panic>

  iunlockput(dp);
801063f8:	83 ec 0c             	sub    $0xc,%esp
801063fb:	ff 75 f4             	pushl  -0xc(%ebp)
801063fe:	e8 93 b9 ff ff       	call   80101d96 <iunlockput>
80106403:	83 c4 10             	add    $0x10,%esp

  return ip;
80106406:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
80106409:	c9                   	leave  
8010640a:	c3                   	ret    

8010640b <sys_open>:

int
sys_open(void)
{
8010640b:	f3 0f 1e fb          	endbr32 
8010640f:	55                   	push   %ebp
80106410:	89 e5                	mov    %esp,%ebp
80106412:	83 ec 28             	sub    $0x28,%esp
  char *path;
  int fd, omode;
  struct file *f;
  struct inode *ip;

  if(argstr(0, &path) < 0 || argint(1, &omode) < 0)
80106415:	83 ec 08             	sub    $0x8,%esp
80106418:	8d 45 e8             	lea    -0x18(%ebp),%eax
8010641b:	50                   	push   %eax
8010641c:	6a 00                	push   $0x0
8010641e:	e8 b4 f6 ff ff       	call   80105ad7 <argstr>
80106423:	83 c4 10             	add    $0x10,%esp
80106426:	85 c0                	test   %eax,%eax
80106428:	78 15                	js     8010643f <sys_open+0x34>
8010642a:	83 ec 08             	sub    $0x8,%esp
8010642d:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80106430:	50                   	push   %eax
80106431:	6a 01                	push   $0x1
80106433:	e8 02 f6 ff ff       	call   80105a3a <argint>
80106438:	83 c4 10             	add    $0x10,%esp
8010643b:	85 c0                	test   %eax,%eax
8010643d:	79 0a                	jns    80106449 <sys_open+0x3e>
    return -1;
8010643f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106444:	e9 61 01 00 00       	jmp    801065aa <sys_open+0x19f>

  begin_op();
80106449:	e8 00 d3 ff ff       	call   8010374e <begin_op>

  if(omode & O_CREATE){
8010644e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106451:	25 00 02 00 00       	and    $0x200,%eax
80106456:	85 c0                	test   %eax,%eax
80106458:	74 2a                	je     80106484 <sys_open+0x79>
    ip = create(path, T_FILE, 0, 0);
8010645a:	8b 45 e8             	mov    -0x18(%ebp),%eax
8010645d:	6a 00                	push   $0x0
8010645f:	6a 00                	push   $0x0
80106461:	6a 02                	push   $0x2
80106463:	50                   	push   %eax
80106464:	e8 ce fd ff ff       	call   80106237 <create>
80106469:	83 c4 10             	add    $0x10,%esp
8010646c:	89 45 f4             	mov    %eax,-0xc(%ebp)
    if(ip == 0){
8010646f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80106473:	75 75                	jne    801064ea <sys_open+0xdf>
      end_op();
80106475:	e8 64 d3 ff ff       	call   801037de <end_op>
      return -1;
8010647a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010647f:	e9 26 01 00 00       	jmp    801065aa <sys_open+0x19f>
    }
  } else {
    if((ip = namei(path)) == 0){
80106484:	8b 45 e8             	mov    -0x18(%ebp),%eax
80106487:	83 ec 0c             	sub    $0xc,%esp
8010648a:	50                   	push   %eax
8010648b:	e8 34 c2 ff ff       	call   801026c4 <namei>
80106490:	83 c4 10             	add    $0x10,%esp
80106493:	89 45 f4             	mov    %eax,-0xc(%ebp)
80106496:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
8010649a:	75 0f                	jne    801064ab <sys_open+0xa0>
      end_op();
8010649c:	e8 3d d3 ff ff       	call   801037de <end_op>
      return -1;
801064a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801064a6:	e9 ff 00 00 00       	jmp    801065aa <sys_open+0x19f>
    }
    ilock(ip);
801064ab:	83 ec 0c             	sub    $0xc,%esp
801064ae:	ff 75 f4             	pushl  -0xc(%ebp)
801064b1:	e8 a3 b6 ff ff       	call   80101b59 <ilock>
801064b6:	83 c4 10             	add    $0x10,%esp
    if(ip->type == T_DIR && omode != O_RDONLY){
801064b9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801064bc:	0f b7 40 50          	movzwl 0x50(%eax),%eax
801064c0:	66 83 f8 01          	cmp    $0x1,%ax
801064c4:	75 24                	jne    801064ea <sys_open+0xdf>
801064c6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801064c9:	85 c0                	test   %eax,%eax
801064cb:	74 1d                	je     801064ea <sys_open+0xdf>
      iunlockput(ip);
801064cd:	83 ec 0c             	sub    $0xc,%esp
801064d0:	ff 75 f4             	pushl  -0xc(%ebp)
801064d3:	e8 be b8 ff ff       	call   80101d96 <iunlockput>
801064d8:	83 c4 10             	add    $0x10,%esp
      end_op();
801064db:	e8 fe d2 ff ff       	call   801037de <end_op>
      return -1;
801064e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801064e5:	e9 c0 00 00 00       	jmp    801065aa <sys_open+0x19f>
    }
  }

  if((f = filealloc()) == 0 || (fd = fdalloc(f)) < 0){
801064ea:	e8 24 ac ff ff       	call   80101113 <filealloc>
801064ef:	89 45 f0             	mov    %eax,-0x10(%ebp)
801064f2:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801064f6:	74 17                	je     8010650f <sys_open+0x104>
801064f8:	83 ec 0c             	sub    $0xc,%esp
801064fb:	ff 75 f0             	pushl  -0x10(%ebp)
801064fe:	e8 09 f7 ff ff       	call   80105c0c <fdalloc>
80106503:	83 c4 10             	add    $0x10,%esp
80106506:	89 45 ec             	mov    %eax,-0x14(%ebp)
80106509:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
8010650d:	79 2e                	jns    8010653d <sys_open+0x132>
    if(f)
8010650f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80106513:	74 0e                	je     80106523 <sys_open+0x118>
      fileclose(f);
80106515:	83 ec 0c             	sub    $0xc,%esp
80106518:	ff 75 f0             	pushl  -0x10(%ebp)
8010651b:	e8 b9 ac ff ff       	call   801011d9 <fileclose>
80106520:	83 c4 10             	add    $0x10,%esp
    iunlockput(ip);
80106523:	83 ec 0c             	sub    $0xc,%esp
80106526:	ff 75 f4             	pushl  -0xc(%ebp)
80106529:	e8 68 b8 ff ff       	call   80101d96 <iunlockput>
8010652e:	83 c4 10             	add    $0x10,%esp
    end_op();
80106531:	e8 a8 d2 ff ff       	call   801037de <end_op>
    return -1;
80106536:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010653b:	eb 6d                	jmp    801065aa <sys_open+0x19f>
  }
  iunlock(ip);
8010653d:	83 ec 0c             	sub    $0xc,%esp
80106540:	ff 75 f4             	pushl  -0xc(%ebp)
80106543:	e8 28 b7 ff ff       	call   80101c70 <iunlock>
80106548:	83 c4 10             	add    $0x10,%esp
  end_op();
8010654b:	e8 8e d2 ff ff       	call   801037de <end_op>

  f->type = FD_INODE;
80106550:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106553:	c7 00 02 00 00 00    	movl   $0x2,(%eax)
  f->ip = ip;
80106559:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010655c:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010655f:	89 50 10             	mov    %edx,0x10(%eax)
  f->off = 0;
80106562:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106565:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%eax)
  f->readable = !(omode & O_WRONLY);
8010656c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010656f:	83 e0 01             	and    $0x1,%eax
80106572:	85 c0                	test   %eax,%eax
80106574:	0f 94 c0             	sete   %al
80106577:	89 c2                	mov    %eax,%edx
80106579:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010657c:	88 50 08             	mov    %dl,0x8(%eax)
  f->writable = (omode & O_WRONLY) || (omode & O_RDWR);
8010657f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106582:	83 e0 01             	and    $0x1,%eax
80106585:	85 c0                	test   %eax,%eax
80106587:	75 0a                	jne    80106593 <sys_open+0x188>
80106589:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010658c:	83 e0 02             	and    $0x2,%eax
8010658f:	85 c0                	test   %eax,%eax
80106591:	74 07                	je     8010659a <sys_open+0x18f>
80106593:	b8 01 00 00 00       	mov    $0x1,%eax
80106598:	eb 05                	jmp    8010659f <sys_open+0x194>
8010659a:	b8 00 00 00 00       	mov    $0x0,%eax
8010659f:	89 c2                	mov    %eax,%edx
801065a1:	8b 45 f0             	mov    -0x10(%ebp),%eax
801065a4:	88 50 09             	mov    %dl,0x9(%eax)
  return fd;
801065a7:	8b 45 ec             	mov    -0x14(%ebp),%eax
}
801065aa:	c9                   	leave  
801065ab:	c3                   	ret    

801065ac <sys_mkdir>:

int
sys_mkdir(void)
{
801065ac:	f3 0f 1e fb          	endbr32 
801065b0:	55                   	push   %ebp
801065b1:	89 e5                	mov    %esp,%ebp
801065b3:	83 ec 18             	sub    $0x18,%esp
  char *path;
  struct inode *ip;

  begin_op();
801065b6:	e8 93 d1 ff ff       	call   8010374e <begin_op>
  if(argstr(0, &path) < 0 || (ip = create(path, T_DIR, 0, 0)) == 0){
801065bb:	83 ec 08             	sub    $0x8,%esp
801065be:	8d 45 f0             	lea    -0x10(%ebp),%eax
801065c1:	50                   	push   %eax
801065c2:	6a 00                	push   $0x0
801065c4:	e8 0e f5 ff ff       	call   80105ad7 <argstr>
801065c9:	83 c4 10             	add    $0x10,%esp
801065cc:	85 c0                	test   %eax,%eax
801065ce:	78 1b                	js     801065eb <sys_mkdir+0x3f>
801065d0:	8b 45 f0             	mov    -0x10(%ebp),%eax
801065d3:	6a 00                	push   $0x0
801065d5:	6a 00                	push   $0x0
801065d7:	6a 01                	push   $0x1
801065d9:	50                   	push   %eax
801065da:	e8 58 fc ff ff       	call   80106237 <create>
801065df:	83 c4 10             	add    $0x10,%esp
801065e2:	89 45 f4             	mov    %eax,-0xc(%ebp)
801065e5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
801065e9:	75 0c                	jne    801065f7 <sys_mkdir+0x4b>
    end_op();
801065eb:	e8 ee d1 ff ff       	call   801037de <end_op>
    return -1;
801065f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801065f5:	eb 18                	jmp    8010660f <sys_mkdir+0x63>
  }
  iunlockput(ip);
801065f7:	83 ec 0c             	sub    $0xc,%esp
801065fa:	ff 75 f4             	pushl  -0xc(%ebp)
801065fd:	e8 94 b7 ff ff       	call   80101d96 <iunlockput>
80106602:	83 c4 10             	add    $0x10,%esp
  end_op();
80106605:	e8 d4 d1 ff ff       	call   801037de <end_op>
  return 0;
8010660a:	b8 00 00 00 00       	mov    $0x0,%eax
}
8010660f:	c9                   	leave  
80106610:	c3                   	ret    

80106611 <sys_mknod>:

int
sys_mknod(void)
{
80106611:	f3 0f 1e fb          	endbr32 
80106615:	55                   	push   %ebp
80106616:	89 e5                	mov    %esp,%ebp
80106618:	83 ec 18             	sub    $0x18,%esp
  struct inode *ip;
  char *path;
  int major, minor;

  begin_op();
8010661b:	e8 2e d1 ff ff       	call   8010374e <begin_op>
  if((argstr(0, &path)) < 0 ||
80106620:	83 ec 08             	sub    $0x8,%esp
80106623:	8d 45 f0             	lea    -0x10(%ebp),%eax
80106626:	50                   	push   %eax
80106627:	6a 00                	push   $0x0
80106629:	e8 a9 f4 ff ff       	call   80105ad7 <argstr>
8010662e:	83 c4 10             	add    $0x10,%esp
80106631:	85 c0                	test   %eax,%eax
80106633:	78 4f                	js     80106684 <sys_mknod+0x73>
     argint(1, &major) < 0 ||
80106635:	83 ec 08             	sub    $0x8,%esp
80106638:	8d 45 ec             	lea    -0x14(%ebp),%eax
8010663b:	50                   	push   %eax
8010663c:	6a 01                	push   $0x1
8010663e:	e8 f7 f3 ff ff       	call   80105a3a <argint>
80106643:	83 c4 10             	add    $0x10,%esp
  if((argstr(0, &path)) < 0 ||
80106646:	85 c0                	test   %eax,%eax
80106648:	78 3a                	js     80106684 <sys_mknod+0x73>
     argint(2, &minor) < 0 ||
8010664a:	83 ec 08             	sub    $0x8,%esp
8010664d:	8d 45 e8             	lea    -0x18(%ebp),%eax
80106650:	50                   	push   %eax
80106651:	6a 02                	push   $0x2
80106653:	e8 e2 f3 ff ff       	call   80105a3a <argint>
80106658:	83 c4 10             	add    $0x10,%esp
     argint(1, &major) < 0 ||
8010665b:	85 c0                	test   %eax,%eax
8010665d:	78 25                	js     80106684 <sys_mknod+0x73>
     (ip = create(path, T_DEV, major, minor)) == 0){
8010665f:	8b 45 e8             	mov    -0x18(%ebp),%eax
80106662:	0f bf c8             	movswl %ax,%ecx
80106665:	8b 45 ec             	mov    -0x14(%ebp),%eax
80106668:	0f bf d0             	movswl %ax,%edx
8010666b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010666e:	51                   	push   %ecx
8010666f:	52                   	push   %edx
80106670:	6a 03                	push   $0x3
80106672:	50                   	push   %eax
80106673:	e8 bf fb ff ff       	call   80106237 <create>
80106678:	83 c4 10             	add    $0x10,%esp
8010667b:	89 45 f4             	mov    %eax,-0xc(%ebp)
     argint(2, &minor) < 0 ||
8010667e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80106682:	75 0c                	jne    80106690 <sys_mknod+0x7f>
    end_op();
80106684:	e8 55 d1 ff ff       	call   801037de <end_op>
    return -1;
80106689:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010668e:	eb 18                	jmp    801066a8 <sys_mknod+0x97>
  }
  iunlockput(ip);
80106690:	83 ec 0c             	sub    $0xc,%esp
80106693:	ff 75 f4             	pushl  -0xc(%ebp)
80106696:	e8 fb b6 ff ff       	call   80101d96 <iunlockput>
8010669b:	83 c4 10             	add    $0x10,%esp
  end_op();
8010669e:	e8 3b d1 ff ff       	call   801037de <end_op>
  return 0;
801066a3:	b8 00 00 00 00       	mov    $0x0,%eax
}
801066a8:	c9                   	leave  
801066a9:	c3                   	ret    

801066aa <sys_chdir>:

int
sys_chdir(void)
{
801066aa:	f3 0f 1e fb          	endbr32 
801066ae:	55                   	push   %ebp
801066af:	89 e5                	mov    %esp,%ebp
801066b1:	83 ec 18             	sub    $0x18,%esp
  char *path;
  struct inode *ip;
  struct proc *curproc = myproc();
801066b4:	e8 54 de ff ff       	call   8010450d <myproc>
801066b9:	89 45 f4             	mov    %eax,-0xc(%ebp)
  
  begin_op();
801066bc:	e8 8d d0 ff ff       	call   8010374e <begin_op>
  if(argstr(0, &path) < 0 || (ip = namei(path)) == 0){
801066c1:	83 ec 08             	sub    $0x8,%esp
801066c4:	8d 45 ec             	lea    -0x14(%ebp),%eax
801066c7:	50                   	push   %eax
801066c8:	6a 00                	push   $0x0
801066ca:	e8 08 f4 ff ff       	call   80105ad7 <argstr>
801066cf:	83 c4 10             	add    $0x10,%esp
801066d2:	85 c0                	test   %eax,%eax
801066d4:	78 18                	js     801066ee <sys_chdir+0x44>
801066d6:	8b 45 ec             	mov    -0x14(%ebp),%eax
801066d9:	83 ec 0c             	sub    $0xc,%esp
801066dc:	50                   	push   %eax
801066dd:	e8 e2 bf ff ff       	call   801026c4 <namei>
801066e2:	83 c4 10             	add    $0x10,%esp
801066e5:	89 45 f0             	mov    %eax,-0x10(%ebp)
801066e8:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801066ec:	75 0c                	jne    801066fa <sys_chdir+0x50>
    end_op();
801066ee:	e8 eb d0 ff ff       	call   801037de <end_op>
    return -1;
801066f3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801066f8:	eb 68                	jmp    80106762 <sys_chdir+0xb8>
  }
  ilock(ip);
801066fa:	83 ec 0c             	sub    $0xc,%esp
801066fd:	ff 75 f0             	pushl  -0x10(%ebp)
80106700:	e8 54 b4 ff ff       	call   80101b59 <ilock>
80106705:	83 c4 10             	add    $0x10,%esp
  if(ip->type != T_DIR){
80106708:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010670b:	0f b7 40 50          	movzwl 0x50(%eax),%eax
8010670f:	66 83 f8 01          	cmp    $0x1,%ax
80106713:	74 1a                	je     8010672f <sys_chdir+0x85>
    iunlockput(ip);
80106715:	83 ec 0c             	sub    $0xc,%esp
80106718:	ff 75 f0             	pushl  -0x10(%ebp)
8010671b:	e8 76 b6 ff ff       	call   80101d96 <iunlockput>
80106720:	83 c4 10             	add    $0x10,%esp
    end_op();
80106723:	e8 b6 d0 ff ff       	call   801037de <end_op>
    return -1;
80106728:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010672d:	eb 33                	jmp    80106762 <sys_chdir+0xb8>
  }
  iunlock(ip);
8010672f:	83 ec 0c             	sub    $0xc,%esp
80106732:	ff 75 f0             	pushl  -0x10(%ebp)
80106735:	e8 36 b5 ff ff       	call   80101c70 <iunlock>
8010673a:	83 c4 10             	add    $0x10,%esp
  iput(curproc->cwd);
8010673d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106740:	8b 40 68             	mov    0x68(%eax),%eax
80106743:	83 ec 0c             	sub    $0xc,%esp
80106746:	50                   	push   %eax
80106747:	e8 76 b5 ff ff       	call   80101cc2 <iput>
8010674c:	83 c4 10             	add    $0x10,%esp
  end_op();
8010674f:	e8 8a d0 ff ff       	call   801037de <end_op>
  curproc->cwd = ip;
80106754:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106757:	8b 55 f0             	mov    -0x10(%ebp),%edx
8010675a:	89 50 68             	mov    %edx,0x68(%eax)
  return 0;
8010675d:	b8 00 00 00 00       	mov    $0x0,%eax
}
80106762:	c9                   	leave  
80106763:	c3                   	ret    

80106764 <sys_exec>:

int
sys_exec(void)
{
80106764:	f3 0f 1e fb          	endbr32 
80106768:	55                   	push   %ebp
80106769:	89 e5                	mov    %esp,%ebp
8010676b:	81 ec 98 00 00 00    	sub    $0x98,%esp
  char *path, *argv[MAXARG];
  int i;
  uint uargv, uarg;

  if(argstr(0, &path) < 0 || argint(1, (int*)&uargv) < 0){
80106771:	83 ec 08             	sub    $0x8,%esp
80106774:	8d 45 f0             	lea    -0x10(%ebp),%eax
80106777:	50                   	push   %eax
80106778:	6a 00                	push   $0x0
8010677a:	e8 58 f3 ff ff       	call   80105ad7 <argstr>
8010677f:	83 c4 10             	add    $0x10,%esp
80106782:	85 c0                	test   %eax,%eax
80106784:	78 18                	js     8010679e <sys_exec+0x3a>
80106786:	83 ec 08             	sub    $0x8,%esp
80106789:	8d 85 6c ff ff ff    	lea    -0x94(%ebp),%eax
8010678f:	50                   	push   %eax
80106790:	6a 01                	push   $0x1
80106792:	e8 a3 f2 ff ff       	call   80105a3a <argint>
80106797:	83 c4 10             	add    $0x10,%esp
8010679a:	85 c0                	test   %eax,%eax
8010679c:	79 0a                	jns    801067a8 <sys_exec+0x44>
    return -1;
8010679e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801067a3:	e9 c6 00 00 00       	jmp    8010686e <sys_exec+0x10a>
  }
  memset(argv, 0, sizeof(argv));
801067a8:	83 ec 04             	sub    $0x4,%esp
801067ab:	68 80 00 00 00       	push   $0x80
801067b0:	6a 00                	push   $0x0
801067b2:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
801067b8:	50                   	push   %eax
801067b9:	e8 28 ef ff ff       	call   801056e6 <memset>
801067be:	83 c4 10             	add    $0x10,%esp
  for(i=0;; i++){
801067c1:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
    if(i >= NELEM(argv))
801067c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
801067cb:	83 f8 1f             	cmp    $0x1f,%eax
801067ce:	76 0a                	jbe    801067da <sys_exec+0x76>
      return -1;
801067d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801067d5:	e9 94 00 00 00       	jmp    8010686e <sys_exec+0x10a>
    if(fetchint(uargv+4*i, (int*)&uarg) < 0)
801067da:	8b 45 f4             	mov    -0xc(%ebp),%eax
801067dd:	c1 e0 02             	shl    $0x2,%eax
801067e0:	89 c2                	mov    %eax,%edx
801067e2:	8b 85 6c ff ff ff    	mov    -0x94(%ebp),%eax
801067e8:	01 c2                	add    %eax,%edx
801067ea:	83 ec 08             	sub    $0x8,%esp
801067ed:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
801067f3:	50                   	push   %eax
801067f4:	52                   	push   %edx
801067f5:	e8 95 f1 ff ff       	call   8010598f <fetchint>
801067fa:	83 c4 10             	add    $0x10,%esp
801067fd:	85 c0                	test   %eax,%eax
801067ff:	79 07                	jns    80106808 <sys_exec+0xa4>
      return -1;
80106801:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106806:	eb 66                	jmp    8010686e <sys_exec+0x10a>
    if(uarg == 0){
80106808:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
8010680e:	85 c0                	test   %eax,%eax
80106810:	75 27                	jne    80106839 <sys_exec+0xd5>
      argv[i] = 0;
80106812:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106815:	c7 84 85 70 ff ff ff 	movl   $0x0,-0x90(%ebp,%eax,4)
8010681c:	00 00 00 00 
      break;
80106820:	90                   	nop
    }
    if(fetchstr(uarg, &argv[i]) < 0)
      return -1;
  }
  return exec(path, argv);
80106821:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106824:	83 ec 08             	sub    $0x8,%esp
80106827:	8d 95 70 ff ff ff    	lea    -0x90(%ebp),%edx
8010682d:	52                   	push   %edx
8010682e:	50                   	push   %eax
8010682f:	e8 fc a3 ff ff       	call   80100c30 <exec>
80106834:	83 c4 10             	add    $0x10,%esp
80106837:	eb 35                	jmp    8010686e <sys_exec+0x10a>
    if(fetchstr(uarg, &argv[i]) < 0)
80106839:	8d 85 70 ff ff ff    	lea    -0x90(%ebp),%eax
8010683f:	8b 55 f4             	mov    -0xc(%ebp),%edx
80106842:	c1 e2 02             	shl    $0x2,%edx
80106845:	01 c2                	add    %eax,%edx
80106847:	8b 85 68 ff ff ff    	mov    -0x98(%ebp),%eax
8010684d:	83 ec 08             	sub    $0x8,%esp
80106850:	52                   	push   %edx
80106851:	50                   	push   %eax
80106852:	e8 7b f1 ff ff       	call   801059d2 <fetchstr>
80106857:	83 c4 10             	add    $0x10,%esp
8010685a:	85 c0                	test   %eax,%eax
8010685c:	79 07                	jns    80106865 <sys_exec+0x101>
      return -1;
8010685e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106863:	eb 09                	jmp    8010686e <sys_exec+0x10a>
  for(i=0;; i++){
80106865:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    if(i >= NELEM(argv))
80106869:	e9 5a ff ff ff       	jmp    801067c8 <sys_exec+0x64>
}
8010686e:	c9                   	leave  
8010686f:	c3                   	ret    

80106870 <sys_pipe>:

int
sys_pipe(void)
{
80106870:	f3 0f 1e fb          	endbr32 
80106874:	55                   	push   %ebp
80106875:	89 e5                	mov    %esp,%ebp
80106877:	83 ec 28             	sub    $0x28,%esp
  int *fd;
  struct file *rf, *wf;
  int fd0, fd1;

  if(argptr(0, (void*)&fd, 2*sizeof(fd[0])) < 0)
8010687a:	83 ec 04             	sub    $0x4,%esp
8010687d:	6a 08                	push   $0x8
8010687f:	8d 45 ec             	lea    -0x14(%ebp),%eax
80106882:	50                   	push   %eax
80106883:	6a 00                	push   $0x0
80106885:	e8 e1 f1 ff ff       	call   80105a6b <argptr>
8010688a:	83 c4 10             	add    $0x10,%esp
8010688d:	85 c0                	test   %eax,%eax
8010688f:	79 0a                	jns    8010689b <sys_pipe+0x2b>
    return -1;
80106891:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106896:	e9 ae 00 00 00       	jmp    80106949 <sys_pipe+0xd9>
  if(pipealloc(&rf, &wf) < 0)
8010689b:	83 ec 08             	sub    $0x8,%esp
8010689e:	8d 45 e4             	lea    -0x1c(%ebp),%eax
801068a1:	50                   	push   %eax
801068a2:	8d 45 e8             	lea    -0x18(%ebp),%eax
801068a5:	50                   	push   %eax
801068a6:	e8 83 d7 ff ff       	call   8010402e <pipealloc>
801068ab:	83 c4 10             	add    $0x10,%esp
801068ae:	85 c0                	test   %eax,%eax
801068b0:	79 0a                	jns    801068bc <sys_pipe+0x4c>
    return -1;
801068b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801068b7:	e9 8d 00 00 00       	jmp    80106949 <sys_pipe+0xd9>
  fd0 = -1;
801068bc:	c7 45 f4 ff ff ff ff 	movl   $0xffffffff,-0xc(%ebp)
  if((fd0 = fdalloc(rf)) < 0 || (fd1 = fdalloc(wf)) < 0){
801068c3:	8b 45 e8             	mov    -0x18(%ebp),%eax
801068c6:	83 ec 0c             	sub    $0xc,%esp
801068c9:	50                   	push   %eax
801068ca:	e8 3d f3 ff ff       	call   80105c0c <fdalloc>
801068cf:	83 c4 10             	add    $0x10,%esp
801068d2:	89 45 f4             	mov    %eax,-0xc(%ebp)
801068d5:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
801068d9:	78 18                	js     801068f3 <sys_pipe+0x83>
801068db:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801068de:	83 ec 0c             	sub    $0xc,%esp
801068e1:	50                   	push   %eax
801068e2:	e8 25 f3 ff ff       	call   80105c0c <fdalloc>
801068e7:	83 c4 10             	add    $0x10,%esp
801068ea:	89 45 f0             	mov    %eax,-0x10(%ebp)
801068ed:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801068f1:	79 3e                	jns    80106931 <sys_pipe+0xc1>
    if(fd0 >= 0)
801068f3:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
801068f7:	78 13                	js     8010690c <sys_pipe+0x9c>
      myproc()->ofile[fd0] = 0;
801068f9:	e8 0f dc ff ff       	call   8010450d <myproc>
801068fe:	8b 55 f4             	mov    -0xc(%ebp),%edx
80106901:	83 c2 08             	add    $0x8,%edx
80106904:	c7 44 90 08 00 00 00 	movl   $0x0,0x8(%eax,%edx,4)
8010690b:	00 
    fileclose(rf);
8010690c:	8b 45 e8             	mov    -0x18(%ebp),%eax
8010690f:	83 ec 0c             	sub    $0xc,%esp
80106912:	50                   	push   %eax
80106913:	e8 c1 a8 ff ff       	call   801011d9 <fileclose>
80106918:	83 c4 10             	add    $0x10,%esp
    fileclose(wf);
8010691b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010691e:	83 ec 0c             	sub    $0xc,%esp
80106921:	50                   	push   %eax
80106922:	e8 b2 a8 ff ff       	call   801011d9 <fileclose>
80106927:	83 c4 10             	add    $0x10,%esp
    return -1;
8010692a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010692f:	eb 18                	jmp    80106949 <sys_pipe+0xd9>
  }
  fd[0] = fd0;
80106931:	8b 45 ec             	mov    -0x14(%ebp),%eax
80106934:	8b 55 f4             	mov    -0xc(%ebp),%edx
80106937:	89 10                	mov    %edx,(%eax)
  fd[1] = fd1;
80106939:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010693c:	8d 50 04             	lea    0x4(%eax),%edx
8010693f:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106942:	89 02                	mov    %eax,(%edx)
  return 0;
80106944:	b8 00 00 00 00       	mov    $0x0,%eax
}
80106949:	c9                   	leave  
8010694a:	c3                   	ret    

8010694b <sys_fork>:
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
8010694b:	f3 0f 1e fb          	endbr32 
8010694f:	55                   	push   %ebp
80106950:	89 e5                	mov    %esp,%ebp
80106952:	83 ec 08             	sub    $0x8,%esp
  return fork();
80106955:	e8 6d e0 ff ff       	call   801049c7 <fork>
}
8010695a:	c9                   	leave  
8010695b:	c3                   	ret    

8010695c <sys_exit>:

int
sys_exit(void)
{
8010695c:	f3 0f 1e fb          	endbr32 
80106960:	55                   	push   %ebp
80106961:	89 e5                	mov    %esp,%ebp
80106963:	83 ec 08             	sub    $0x8,%esp
  exit();
80106966:	e8 18 e2 ff ff       	call   80104b83 <exit>
  return 0;  // not reached
8010696b:	b8 00 00 00 00       	mov    $0x0,%eax
}
80106970:	c9                   	leave  
80106971:	c3                   	ret    

80106972 <sys_wait>:

int
sys_wait(void)
{
80106972:	f3 0f 1e fb          	endbr32 
80106976:	55                   	push   %ebp
80106977:	89 e5                	mov    %esp,%ebp
80106979:	83 ec 08             	sub    $0x8,%esp
  return wait();
8010697c:	e8 29 e3 ff ff       	call   80104caa <wait>
}
80106981:	c9                   	leave  
80106982:	c3                   	ret    

80106983 <sys_kill>:

int
sys_kill(void)
{
80106983:	f3 0f 1e fb          	endbr32 
80106987:	55                   	push   %ebp
80106988:	89 e5                	mov    %esp,%ebp
8010698a:	83 ec 18             	sub    $0x18,%esp
  int pid;

  if(argint(0, &pid) < 0)
8010698d:	83 ec 08             	sub    $0x8,%esp
80106990:	8d 45 f4             	lea    -0xc(%ebp),%eax
80106993:	50                   	push   %eax
80106994:	6a 00                	push   $0x0
80106996:	e8 9f f0 ff ff       	call   80105a3a <argint>
8010699b:	83 c4 10             	add    $0x10,%esp
8010699e:	85 c0                	test   %eax,%eax
801069a0:	79 07                	jns    801069a9 <sys_kill+0x26>
    return -1;
801069a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801069a7:	eb 0f                	jmp    801069b8 <sys_kill+0x35>
  return kill(pid);
801069a9:	8b 45 f4             	mov    -0xc(%ebp),%eax
801069ac:	83 ec 0c             	sub    $0xc,%esp
801069af:	50                   	push   %eax
801069b0:	e8 4d e7 ff ff       	call   80105102 <kill>
801069b5:	83 c4 10             	add    $0x10,%esp
}
801069b8:	c9                   	leave  
801069b9:	c3                   	ret    

801069ba <sys_getpid>:

int
sys_getpid(void)
{
801069ba:	f3 0f 1e fb          	endbr32 
801069be:	55                   	push   %ebp
801069bf:	89 e5                	mov    %esp,%ebp
801069c1:	83 ec 08             	sub    $0x8,%esp
  return myproc()->pid;
801069c4:	e8 44 db ff ff       	call   8010450d <myproc>
801069c9:	8b 40 10             	mov    0x10(%eax),%eax
}
801069cc:	c9                   	leave  
801069cd:	c3                   	ret    

801069ce <sys_sbrk>:

int
sys_sbrk(void)
{
801069ce:	f3 0f 1e fb          	endbr32 
801069d2:	55                   	push   %ebp
801069d3:	89 e5                	mov    %esp,%ebp
801069d5:	83 ec 18             	sub    $0x18,%esp
  int addr;
  int n;

  if(argint(0, &n) < 0)
801069d8:	83 ec 08             	sub    $0x8,%esp
801069db:	8d 45 f0             	lea    -0x10(%ebp),%eax
801069de:	50                   	push   %eax
801069df:	6a 00                	push   $0x0
801069e1:	e8 54 f0 ff ff       	call   80105a3a <argint>
801069e6:	83 c4 10             	add    $0x10,%esp
801069e9:	85 c0                	test   %eax,%eax
801069eb:	79 07                	jns    801069f4 <sys_sbrk+0x26>
    return -1;
801069ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801069f2:	eb 27                	jmp    80106a1b <sys_sbrk+0x4d>
  addr = myproc()->sz;
801069f4:	e8 14 db ff ff       	call   8010450d <myproc>
801069f9:	8b 00                	mov    (%eax),%eax
801069fb:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(growproc(n) < 0)
801069fe:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106a01:	83 ec 0c             	sub    $0xc,%esp
80106a04:	50                   	push   %eax
80106a05:	e8 7a dd ff ff       	call   80104784 <growproc>
80106a0a:	83 c4 10             	add    $0x10,%esp
80106a0d:	85 c0                	test   %eax,%eax
80106a0f:	79 07                	jns    80106a18 <sys_sbrk+0x4a>
    return -1;
80106a11:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106a16:	eb 03                	jmp    80106a1b <sys_sbrk+0x4d>
  return addr;
80106a18:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
80106a1b:	c9                   	leave  
80106a1c:	c3                   	ret    

80106a1d <sys_sleep>:

int
sys_sleep(void)
{
80106a1d:	f3 0f 1e fb          	endbr32 
80106a21:	55                   	push   %ebp
80106a22:	89 e5                	mov    %esp,%ebp
80106a24:	83 ec 18             	sub    $0x18,%esp
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
80106a27:	83 ec 08             	sub    $0x8,%esp
80106a2a:	8d 45 f0             	lea    -0x10(%ebp),%eax
80106a2d:	50                   	push   %eax
80106a2e:	6a 00                	push   $0x0
80106a30:	e8 05 f0 ff ff       	call   80105a3a <argint>
80106a35:	83 c4 10             	add    $0x10,%esp
80106a38:	85 c0                	test   %eax,%eax
80106a3a:	79 07                	jns    80106a43 <sys_sleep+0x26>
    return -1;
80106a3c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106a41:	eb 76                	jmp    80106ab9 <sys_sleep+0x9c>
  acquire(&tickslock);
80106a43:	83 ec 0c             	sub    $0xc,%esp
80106a46:	68 00 8e 11 80       	push   $0x80118e00
80106a4b:	e8 f7 e9 ff ff       	call   80105447 <acquire>
80106a50:	83 c4 10             	add    $0x10,%esp
  ticks0 = ticks;
80106a53:	a1 40 96 11 80       	mov    0x80119640,%eax
80106a58:	89 45 f4             	mov    %eax,-0xc(%ebp)
  while(ticks - ticks0 < n){
80106a5b:	eb 38                	jmp    80106a95 <sys_sleep+0x78>
    if(myproc()->killed){
80106a5d:	e8 ab da ff ff       	call   8010450d <myproc>
80106a62:	8b 40 24             	mov    0x24(%eax),%eax
80106a65:	85 c0                	test   %eax,%eax
80106a67:	74 17                	je     80106a80 <sys_sleep+0x63>
      release(&tickslock);
80106a69:	83 ec 0c             	sub    $0xc,%esp
80106a6c:	68 00 8e 11 80       	push   $0x80118e00
80106a71:	e8 43 ea ff ff       	call   801054b9 <release>
80106a76:	83 c4 10             	add    $0x10,%esp
      return -1;
80106a79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106a7e:	eb 39                	jmp    80106ab9 <sys_sleep+0x9c>
    }
    sleep(&ticks, &tickslock);
80106a80:	83 ec 08             	sub    $0x8,%esp
80106a83:	68 00 8e 11 80       	push   $0x80118e00
80106a88:	68 40 96 11 80       	push   $0x80119640
80106a8d:	e8 43 e5 ff ff       	call   80104fd5 <sleep>
80106a92:	83 c4 10             	add    $0x10,%esp
  while(ticks - ticks0 < n){
80106a95:	a1 40 96 11 80       	mov    0x80119640,%eax
80106a9a:	2b 45 f4             	sub    -0xc(%ebp),%eax
80106a9d:	8b 55 f0             	mov    -0x10(%ebp),%edx
80106aa0:	39 d0                	cmp    %edx,%eax
80106aa2:	72 b9                	jb     80106a5d <sys_sleep+0x40>
  }
  release(&tickslock);
80106aa4:	83 ec 0c             	sub    $0xc,%esp
80106aa7:	68 00 8e 11 80       	push   $0x80118e00
80106aac:	e8 08 ea ff ff       	call   801054b9 <release>
80106ab1:	83 c4 10             	add    $0x10,%esp
  return 0;
80106ab4:	b8 00 00 00 00       	mov    $0x0,%eax
}
80106ab9:	c9                   	leave  
80106aba:	c3                   	ret    

80106abb <sys_uptime>:

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
80106abb:	f3 0f 1e fb          	endbr32 
80106abf:	55                   	push   %ebp
80106ac0:	89 e5                	mov    %esp,%ebp
80106ac2:	83 ec 18             	sub    $0x18,%esp
  uint xticks;

  acquire(&tickslock);
80106ac5:	83 ec 0c             	sub    $0xc,%esp
80106ac8:	68 00 8e 11 80       	push   $0x80118e00
80106acd:	e8 75 e9 ff ff       	call   80105447 <acquire>
80106ad2:	83 c4 10             	add    $0x10,%esp
  xticks = ticks;
80106ad5:	a1 40 96 11 80       	mov    0x80119640,%eax
80106ada:	89 45 f4             	mov    %eax,-0xc(%ebp)
  release(&tickslock);
80106add:	83 ec 0c             	sub    $0xc,%esp
80106ae0:	68 00 8e 11 80       	push   $0x80118e00
80106ae5:	e8 cf e9 ff ff       	call   801054b9 <release>
80106aea:	83 c4 10             	add    $0x10,%esp
  return xticks;
80106aed:	8b 45 f4             	mov    -0xc(%ebp),%eax
}
80106af0:	c9                   	leave  
80106af1:	c3                   	ret    

80106af2 <sys_mencrypt>:

//changed: added wrapper here
int sys_mencrypt(void) {
80106af2:	f3 0f 1e fb          	endbr32 
80106af6:	55                   	push   %ebp
80106af7:	89 e5                	mov    %esp,%ebp
80106af9:	83 ec 18             	sub    $0x18,%esp
  int len;
  char * virtual_addr;

  if(argint(1, &len) < 0)
80106afc:	83 ec 08             	sub    $0x8,%esp
80106aff:	8d 45 f4             	lea    -0xc(%ebp),%eax
80106b02:	50                   	push   %eax
80106b03:	6a 01                	push   $0x1
80106b05:	e8 30 ef ff ff       	call   80105a3a <argint>
80106b0a:	83 c4 10             	add    $0x10,%esp
80106b0d:	85 c0                	test   %eax,%eax
80106b0f:	79 07                	jns    80106b18 <sys_mencrypt+0x26>
    return -1;
80106b11:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106b16:	eb 50                	jmp    80106b68 <sys_mencrypt+0x76>
  if (len <= 0) {
80106b18:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106b1b:	85 c0                	test   %eax,%eax
80106b1d:	7f 07                	jg     80106b26 <sys_mencrypt+0x34>
    return -1;
80106b1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106b24:	eb 42                	jmp    80106b68 <sys_mencrypt+0x76>
  }
  if(argptr(0, &virtual_addr, 1) < 0)
80106b26:	83 ec 04             	sub    $0x4,%esp
80106b29:	6a 01                	push   $0x1
80106b2b:	8d 45 f0             	lea    -0x10(%ebp),%eax
80106b2e:	50                   	push   %eax
80106b2f:	6a 00                	push   $0x0
80106b31:	e8 35 ef ff ff       	call   80105a6b <argptr>
80106b36:	83 c4 10             	add    $0x10,%esp
80106b39:	85 c0                	test   %eax,%eax
80106b3b:	79 07                	jns    80106b44 <sys_mencrypt+0x52>
    return -1;
80106b3d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106b42:	eb 24                	jmp    80106b68 <sys_mencrypt+0x76>
  if ((void *) virtual_addr >= P2V(PHYSTOP)) {
80106b44:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106b47:	3d ff ff ff 8d       	cmp    $0x8dffffff,%eax
80106b4c:	76 07                	jbe    80106b55 <sys_mencrypt+0x63>
    return -1;
80106b4e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106b53:	eb 13                	jmp    80106b68 <sys_mencrypt+0x76>
  }
  return mencrypt(virtual_addr, len);
80106b55:	8b 55 f4             	mov    -0xc(%ebp),%edx
80106b58:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106b5b:	83 ec 08             	sub    $0x8,%esp
80106b5e:	52                   	push   %edx
80106b5f:	50                   	push   %eax
80106b60:	e8 69 24 00 00       	call   80108fce <mencrypt>
80106b65:	83 c4 10             	add    $0x10,%esp
}
80106b68:	c9                   	leave  
80106b69:	c3                   	ret    

80106b6a <sys_getpgtable>:

int sys_getpgtable(void) {
80106b6a:	f3 0f 1e fb          	endbr32 
80106b6e:	55                   	push   %ebp
80106b6f:	89 e5                	mov    %esp,%ebp
80106b71:	83 ec 18             	sub    $0x18,%esp
  struct pt_entry * entries; 
  int num;
  int wsetOnly;

  if(argint(1, &num) < 0)
80106b74:	83 ec 08             	sub    $0x8,%esp
80106b77:	8d 45 f0             	lea    -0x10(%ebp),%eax
80106b7a:	50                   	push   %eax
80106b7b:	6a 01                	push   $0x1
80106b7d:	e8 b8 ee ff ff       	call   80105a3a <argint>
80106b82:	83 c4 10             	add    $0x10,%esp
80106b85:	85 c0                	test   %eax,%eax
80106b87:	79 07                	jns    80106b90 <sys_getpgtable+0x26>
    return -1;
80106b89:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106b8e:	eb 6c                	jmp    80106bfc <sys_getpgtable+0x92>
  if(argptr(0, (char**)&entries, num*sizeof(struct pt_entry)) < 0){
80106b90:	8b 45 f0             	mov    -0x10(%ebp),%eax
80106b93:	c1 e0 03             	shl    $0x3,%eax
80106b96:	83 ec 04             	sub    $0x4,%esp
80106b99:	50                   	push   %eax
80106b9a:	8d 45 f4             	lea    -0xc(%ebp),%eax
80106b9d:	50                   	push   %eax
80106b9e:	6a 00                	push   $0x0
80106ba0:	e8 c6 ee ff ff       	call   80105a6b <argptr>
80106ba5:	83 c4 10             	add    $0x10,%esp
80106ba8:	85 c0                	test   %eax,%eax
80106baa:	79 07                	jns    80106bb3 <sys_getpgtable+0x49>
    return -1;
80106bac:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106bb1:	eb 49                	jmp    80106bfc <sys_getpgtable+0x92>
  }
  // error thrown if wsetOnly is not 0 or 1
  if(!((argint(2, &wsetOnly) == 0) || (argint(2, &wsetOnly) == 1))){
80106bb3:	83 ec 08             	sub    $0x8,%esp
80106bb6:	8d 45 ec             	lea    -0x14(%ebp),%eax
80106bb9:	50                   	push   %eax
80106bba:	6a 02                	push   $0x2
80106bbc:	e8 79 ee ff ff       	call   80105a3a <argint>
80106bc1:	83 c4 10             	add    $0x10,%esp
80106bc4:	85 c0                	test   %eax,%eax
80106bc6:	74 1d                	je     80106be5 <sys_getpgtable+0x7b>
80106bc8:	83 ec 08             	sub    $0x8,%esp
80106bcb:	8d 45 ec             	lea    -0x14(%ebp),%eax
80106bce:	50                   	push   %eax
80106bcf:	6a 02                	push   $0x2
80106bd1:	e8 64 ee ff ff       	call   80105a3a <argint>
80106bd6:	83 c4 10             	add    $0x10,%esp
80106bd9:	83 f8 01             	cmp    $0x1,%eax
80106bdc:	74 07                	je     80106be5 <sys_getpgtable+0x7b>
    return -1;
80106bde:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106be3:	eb 17                	jmp    80106bfc <sys_getpgtable+0x92>
  }
  return getpgtable(entries, num, wsetOnly);
80106be5:	8b 4d ec             	mov    -0x14(%ebp),%ecx
80106be8:	8b 55 f0             	mov    -0x10(%ebp),%edx
80106beb:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106bee:	83 ec 04             	sub    $0x4,%esp
80106bf1:	51                   	push   %ecx
80106bf2:	52                   	push   %edx
80106bf3:	50                   	push   %eax
80106bf4:	e8 ab 25 00 00       	call   801091a4 <getpgtable>
80106bf9:	83 c4 10             	add    $0x10,%esp
}
80106bfc:	c9                   	leave  
80106bfd:	c3                   	ret    

80106bfe <sys_dump_rawphymem>:


int sys_dump_rawphymem(void) {
80106bfe:	f3 0f 1e fb          	endbr32 
80106c02:	55                   	push   %ebp
80106c03:	89 e5                	mov    %esp,%ebp
80106c05:	83 ec 18             	sub    $0x18,%esp
  char * physical_addr; 
  char * buffer;

  if(argptr(1, &buffer, PGSIZE) < 0)
80106c08:	83 ec 04             	sub    $0x4,%esp
80106c0b:	68 00 10 00 00       	push   $0x1000
80106c10:	8d 45 f0             	lea    -0x10(%ebp),%eax
80106c13:	50                   	push   %eax
80106c14:	6a 01                	push   $0x1
80106c16:	e8 50 ee ff ff       	call   80105a6b <argptr>
80106c1b:	83 c4 10             	add    $0x10,%esp
80106c1e:	85 c0                	test   %eax,%eax
80106c20:	79 07                	jns    80106c29 <sys_dump_rawphymem+0x2b>
    return -1;
80106c22:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106c27:	eb 2f                	jmp    80106c58 <sys_dump_rawphymem+0x5a>
  if(argint(0, (int*)&physical_addr) < 0)
80106c29:	83 ec 08             	sub    $0x8,%esp
80106c2c:	8d 45 f4             	lea    -0xc(%ebp),%eax
80106c2f:	50                   	push   %eax
80106c30:	6a 00                	push   $0x0
80106c32:	e8 03 ee ff ff       	call   80105a3a <argint>
80106c37:	83 c4 10             	add    $0x10,%esp
80106c3a:	85 c0                	test   %eax,%eax
80106c3c:	79 07                	jns    80106c45 <sys_dump_rawphymem+0x47>
    return -1;
80106c3e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106c43:	eb 13                	jmp    80106c58 <sys_dump_rawphymem+0x5a>
  return dump_rawphymem(physical_addr, buffer);
80106c45:	8b 55 f0             	mov    -0x10(%ebp),%edx
80106c48:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106c4b:	83 ec 08             	sub    $0x8,%esp
80106c4e:	52                   	push   %edx
80106c4f:	50                   	push   %eax
80106c50:	e8 70 28 00 00       	call   801094c5 <dump_rawphymem>
80106c55:	83 c4 10             	add    $0x10,%esp
}
80106c58:	c9                   	leave  
80106c59:	c3                   	ret    

80106c5a <alltraps>:
80106c5a:	1e                   	push   %ds
80106c5b:	06                   	push   %es
80106c5c:	0f a0                	push   %fs
80106c5e:	0f a8                	push   %gs
80106c60:	60                   	pusha  
80106c61:	66 b8 10 00          	mov    $0x10,%ax
80106c65:	8e d8                	mov    %eax,%ds
80106c67:	8e c0                	mov    %eax,%es
80106c69:	54                   	push   %esp
80106c6a:	e8 df 01 00 00       	call   80106e4e <trap>
80106c6f:	83 c4 04             	add    $0x4,%esp

80106c72 <trapret>:
80106c72:	61                   	popa   
80106c73:	0f a9                	pop    %gs
80106c75:	0f a1                	pop    %fs
80106c77:	07                   	pop    %es
80106c78:	1f                   	pop    %ds
80106c79:	83 c4 08             	add    $0x8,%esp
80106c7c:	cf                   	iret   

80106c7d <lidt>:
{
80106c7d:	55                   	push   %ebp
80106c7e:	89 e5                	mov    %esp,%ebp
80106c80:	83 ec 10             	sub    $0x10,%esp
  pd[0] = size-1;
80106c83:	8b 45 0c             	mov    0xc(%ebp),%eax
80106c86:	83 e8 01             	sub    $0x1,%eax
80106c89:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
  pd[1] = (uint)p;
80106c8d:	8b 45 08             	mov    0x8(%ebp),%eax
80106c90:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  pd[2] = (uint)p >> 16;
80106c94:	8b 45 08             	mov    0x8(%ebp),%eax
80106c97:	c1 e8 10             	shr    $0x10,%eax
80106c9a:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  asm volatile("lidt (%0)" : : "r" (pd));
80106c9e:	8d 45 fa             	lea    -0x6(%ebp),%eax
80106ca1:	0f 01 18             	lidtl  (%eax)
}
80106ca4:	90                   	nop
80106ca5:	c9                   	leave  
80106ca6:	c3                   	ret    

80106ca7 <rcr2>:

static inline uint
rcr2(void)
{
80106ca7:	55                   	push   %ebp
80106ca8:	89 e5                	mov    %esp,%ebp
80106caa:	83 ec 10             	sub    $0x10,%esp
  uint val;
  asm volatile("movl %%cr2,%0" : "=r" (val));
80106cad:	0f 20 d0             	mov    %cr2,%eax
80106cb0:	89 45 fc             	mov    %eax,-0x4(%ebp)
  return val;
80106cb3:	8b 45 fc             	mov    -0x4(%ebp),%eax
}
80106cb6:	c9                   	leave  
80106cb7:	c3                   	ret    

80106cb8 <tvinit>:
struct spinlock tickslock;
uint ticks;

void
tvinit(void)
{
80106cb8:	f3 0f 1e fb          	endbr32 
80106cbc:	55                   	push   %ebp
80106cbd:	89 e5                	mov    %esp,%ebp
80106cbf:	83 ec 18             	sub    $0x18,%esp
  int i;

  for(i = 0; i < 256; i++)
80106cc2:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80106cc9:	e9 c3 00 00 00       	jmp    80106d91 <tvinit+0xd9>
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
80106cce:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106cd1:	8b 04 85 84 d0 10 80 	mov    -0x7fef2f7c(,%eax,4),%eax
80106cd8:	89 c2                	mov    %eax,%edx
80106cda:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106cdd:	66 89 14 c5 40 8e 11 	mov    %dx,-0x7fee71c0(,%eax,8)
80106ce4:	80 
80106ce5:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106ce8:	66 c7 04 c5 42 8e 11 	movw   $0x8,-0x7fee71be(,%eax,8)
80106cef:	80 08 00 
80106cf2:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106cf5:	0f b6 14 c5 44 8e 11 	movzbl -0x7fee71bc(,%eax,8),%edx
80106cfc:	80 
80106cfd:	83 e2 e0             	and    $0xffffffe0,%edx
80106d00:	88 14 c5 44 8e 11 80 	mov    %dl,-0x7fee71bc(,%eax,8)
80106d07:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d0a:	0f b6 14 c5 44 8e 11 	movzbl -0x7fee71bc(,%eax,8),%edx
80106d11:	80 
80106d12:	83 e2 1f             	and    $0x1f,%edx
80106d15:	88 14 c5 44 8e 11 80 	mov    %dl,-0x7fee71bc(,%eax,8)
80106d1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d1f:	0f b6 14 c5 45 8e 11 	movzbl -0x7fee71bb(,%eax,8),%edx
80106d26:	80 
80106d27:	83 e2 f0             	and    $0xfffffff0,%edx
80106d2a:	83 ca 0e             	or     $0xe,%edx
80106d2d:	88 14 c5 45 8e 11 80 	mov    %dl,-0x7fee71bb(,%eax,8)
80106d34:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d37:	0f b6 14 c5 45 8e 11 	movzbl -0x7fee71bb(,%eax,8),%edx
80106d3e:	80 
80106d3f:	83 e2 ef             	and    $0xffffffef,%edx
80106d42:	88 14 c5 45 8e 11 80 	mov    %dl,-0x7fee71bb(,%eax,8)
80106d49:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d4c:	0f b6 14 c5 45 8e 11 	movzbl -0x7fee71bb(,%eax,8),%edx
80106d53:	80 
80106d54:	83 e2 9f             	and    $0xffffff9f,%edx
80106d57:	88 14 c5 45 8e 11 80 	mov    %dl,-0x7fee71bb(,%eax,8)
80106d5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d61:	0f b6 14 c5 45 8e 11 	movzbl -0x7fee71bb(,%eax,8),%edx
80106d68:	80 
80106d69:	83 ca 80             	or     $0xffffff80,%edx
80106d6c:	88 14 c5 45 8e 11 80 	mov    %dl,-0x7fee71bb(,%eax,8)
80106d73:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d76:	8b 04 85 84 d0 10 80 	mov    -0x7fef2f7c(,%eax,4),%eax
80106d7d:	c1 e8 10             	shr    $0x10,%eax
80106d80:	89 c2                	mov    %eax,%edx
80106d82:	8b 45 f4             	mov    -0xc(%ebp),%eax
80106d85:	66 89 14 c5 46 8e 11 	mov    %dx,-0x7fee71ba(,%eax,8)
80106d8c:	80 
  for(i = 0; i < 256; i++)
80106d8d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80106d91:	81 7d f4 ff 00 00 00 	cmpl   $0xff,-0xc(%ebp)
80106d98:	0f 8e 30 ff ff ff    	jle    80106cce <tvinit+0x16>
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
80106d9e:	a1 84 d1 10 80       	mov    0x8010d184,%eax
80106da3:	66 a3 40 90 11 80    	mov    %ax,0x80119040
80106da9:	66 c7 05 42 90 11 80 	movw   $0x8,0x80119042
80106db0:	08 00 
80106db2:	0f b6 05 44 90 11 80 	movzbl 0x80119044,%eax
80106db9:	83 e0 e0             	and    $0xffffffe0,%eax
80106dbc:	a2 44 90 11 80       	mov    %al,0x80119044
80106dc1:	0f b6 05 44 90 11 80 	movzbl 0x80119044,%eax
80106dc8:	83 e0 1f             	and    $0x1f,%eax
80106dcb:	a2 44 90 11 80       	mov    %al,0x80119044
80106dd0:	0f b6 05 45 90 11 80 	movzbl 0x80119045,%eax
80106dd7:	83 c8 0f             	or     $0xf,%eax
80106dda:	a2 45 90 11 80       	mov    %al,0x80119045
80106ddf:	0f b6 05 45 90 11 80 	movzbl 0x80119045,%eax
80106de6:	83 e0 ef             	and    $0xffffffef,%eax
80106de9:	a2 45 90 11 80       	mov    %al,0x80119045
80106dee:	0f b6 05 45 90 11 80 	movzbl 0x80119045,%eax
80106df5:	83 c8 60             	or     $0x60,%eax
80106df8:	a2 45 90 11 80       	mov    %al,0x80119045
80106dfd:	0f b6 05 45 90 11 80 	movzbl 0x80119045,%eax
80106e04:	83 c8 80             	or     $0xffffff80,%eax
80106e07:	a2 45 90 11 80       	mov    %al,0x80119045
80106e0c:	a1 84 d1 10 80       	mov    0x8010d184,%eax
80106e11:	c1 e8 10             	shr    $0x10,%eax
80106e14:	66 a3 46 90 11 80    	mov    %ax,0x80119046

  initlock(&tickslock, "time");
80106e1a:	83 ec 08             	sub    $0x8,%esp
80106e1d:	68 f0 9a 10 80       	push   $0x80109af0
80106e22:	68 00 8e 11 80       	push   $0x80118e00
80106e27:	e8 f5 e5 ff ff       	call   80105421 <initlock>
80106e2c:	83 c4 10             	add    $0x10,%esp
}
80106e2f:	90                   	nop
80106e30:	c9                   	leave  
80106e31:	c3                   	ret    

80106e32 <idtinit>:

void
idtinit(void)
{
80106e32:	f3 0f 1e fb          	endbr32 
80106e36:	55                   	push   %ebp
80106e37:	89 e5                	mov    %esp,%ebp
  lidt(idt, sizeof(idt));
80106e39:	68 00 08 00 00       	push   $0x800
80106e3e:	68 40 8e 11 80       	push   $0x80118e40
80106e43:	e8 35 fe ff ff       	call   80106c7d <lidt>
80106e48:	83 c4 08             	add    $0x8,%esp
}
80106e4b:	90                   	nop
80106e4c:	c9                   	leave  
80106e4d:	c3                   	ret    

80106e4e <trap>:

//PAGEBREAK: 41
void
trap(struct trapframe *tf)
{
80106e4e:	f3 0f 1e fb          	endbr32 
80106e52:	55                   	push   %ebp
80106e53:	89 e5                	mov    %esp,%ebp
80106e55:	57                   	push   %edi
80106e56:	56                   	push   %esi
80106e57:	53                   	push   %ebx
80106e58:	83 ec 2c             	sub    $0x2c,%esp
  if(tf->trapno == T_SYSCALL){
80106e5b:	8b 45 08             	mov    0x8(%ebp),%eax
80106e5e:	8b 40 30             	mov    0x30(%eax),%eax
80106e61:	83 f8 40             	cmp    $0x40,%eax
80106e64:	75 3b                	jne    80106ea1 <trap+0x53>
    if(myproc()->killed)
80106e66:	e8 a2 d6 ff ff       	call   8010450d <myproc>
80106e6b:	8b 40 24             	mov    0x24(%eax),%eax
80106e6e:	85 c0                	test   %eax,%eax
80106e70:	74 05                	je     80106e77 <trap+0x29>
      exit();
80106e72:	e8 0c dd ff ff       	call   80104b83 <exit>
    myproc()->tf = tf;
80106e77:	e8 91 d6 ff ff       	call   8010450d <myproc>
80106e7c:	8b 55 08             	mov    0x8(%ebp),%edx
80106e7f:	89 50 18             	mov    %edx,0x18(%eax)
    syscall();
80106e82:	e8 8b ec ff ff       	call   80105b12 <syscall>
    if(myproc()->killed)
80106e87:	e8 81 d6 ff ff       	call   8010450d <myproc>
80106e8c:	8b 40 24             	mov    0x24(%eax),%eax
80106e8f:	85 c0                	test   %eax,%eax
80106e91:	0f 84 42 02 00 00    	je     801070d9 <trap+0x28b>
      exit();
80106e97:	e8 e7 dc ff ff       	call   80104b83 <exit>
    return;
80106e9c:	e9 38 02 00 00       	jmp    801070d9 <trap+0x28b>
  }
  char *addr;
  switch(tf->trapno){
80106ea1:	8b 45 08             	mov    0x8(%ebp),%eax
80106ea4:	8b 40 30             	mov    0x30(%eax),%eax
80106ea7:	83 e8 0e             	sub    $0xe,%eax
80106eaa:	83 f8 31             	cmp    $0x31,%eax
80106ead:	0f 87 ee 00 00 00    	ja     80106fa1 <trap+0x153>
80106eb3:	8b 04 85 b0 9b 10 80 	mov    -0x7fef6450(,%eax,4),%eax
80106eba:	3e ff e0             	notrack jmp *%eax
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
80106ebd:	e8 b0 d5 ff ff       	call   80104472 <cpuid>
80106ec2:	85 c0                	test   %eax,%eax
80106ec4:	75 3d                	jne    80106f03 <trap+0xb5>
      acquire(&tickslock);
80106ec6:	83 ec 0c             	sub    $0xc,%esp
80106ec9:	68 00 8e 11 80       	push   $0x80118e00
80106ece:	e8 74 e5 ff ff       	call   80105447 <acquire>
80106ed3:	83 c4 10             	add    $0x10,%esp
      ticks++;
80106ed6:	a1 40 96 11 80       	mov    0x80119640,%eax
80106edb:	83 c0 01             	add    $0x1,%eax
80106ede:	a3 40 96 11 80       	mov    %eax,0x80119640
      wakeup(&ticks);
80106ee3:	83 ec 0c             	sub    $0xc,%esp
80106ee6:	68 40 96 11 80       	push   $0x80119640
80106eeb:	e8 d7 e1 ff ff       	call   801050c7 <wakeup>
80106ef0:	83 c4 10             	add    $0x10,%esp
      release(&tickslock);
80106ef3:	83 ec 0c             	sub    $0xc,%esp
80106ef6:	68 00 8e 11 80       	push   $0x80118e00
80106efb:	e8 b9 e5 ff ff       	call   801054b9 <release>
80106f00:	83 c4 10             	add    $0x10,%esp
    }
    lapiceoi();
80106f03:	e8 fa c2 ff ff       	call   80103202 <lapiceoi>
    break;
80106f08:	e9 4c 01 00 00       	jmp    80107059 <trap+0x20b>
  case T_IRQ0 + IRQ_IDE:
    ideintr();
80106f0d:	e8 ff ba ff ff       	call   80102a11 <ideintr>
    lapiceoi();
80106f12:	e8 eb c2 ff ff       	call   80103202 <lapiceoi>
    break;
80106f17:	e9 3d 01 00 00       	jmp    80107059 <trap+0x20b>
  case T_IRQ0 + IRQ_IDE+1:
    // Bochs generates spurious IDE1 interrupts.
    break;
  case T_IRQ0 + IRQ_KBD:
    kbdintr();
80106f1c:	e8 17 c1 ff ff       	call   80103038 <kbdintr>
    lapiceoi();
80106f21:	e8 dc c2 ff ff       	call   80103202 <lapiceoi>
    break;
80106f26:	e9 2e 01 00 00       	jmp    80107059 <trap+0x20b>
  case T_IRQ0 + IRQ_COM1:
    uartintr();
80106f2b:	e8 8b 03 00 00       	call   801072bb <uartintr>
    lapiceoi();
80106f30:	e8 cd c2 ff ff       	call   80103202 <lapiceoi>
    break;
80106f35:	e9 1f 01 00 00       	jmp    80107059 <trap+0x20b>
  case T_IRQ0 + 7:
  case T_IRQ0 + IRQ_SPURIOUS:
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
80106f3a:	8b 45 08             	mov    0x8(%ebp),%eax
80106f3d:	8b 70 38             	mov    0x38(%eax),%esi
            cpuid(), tf->cs, tf->eip);
80106f40:	8b 45 08             	mov    0x8(%ebp),%eax
80106f43:	0f b7 40 3c          	movzwl 0x3c(%eax),%eax
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
80106f47:	0f b7 d8             	movzwl %ax,%ebx
80106f4a:	e8 23 d5 ff ff       	call   80104472 <cpuid>
80106f4f:	56                   	push   %esi
80106f50:	53                   	push   %ebx
80106f51:	50                   	push   %eax
80106f52:	68 f8 9a 10 80       	push   $0x80109af8
80106f57:	e8 bc 94 ff ff       	call   80100418 <cprintf>
80106f5c:	83 c4 10             	add    $0x10,%esp
    lapiceoi();
80106f5f:	e8 9e c2 ff ff       	call   80103202 <lapiceoi>
    break;
80106f64:	e9 f0 00 00 00       	jmp    80107059 <trap+0x20b>
  case T_PGFLT:
    //Food for thought: How can one distinguish between a regular page fault and a decryption request?
    cprintf("p4Debug : Page fault !\n");
80106f69:	83 ec 0c             	sub    $0xc,%esp
80106f6c:	68 1c 9b 10 80       	push   $0x80109b1c
80106f71:	e8 a2 94 ff ff       	call   80100418 <cprintf>
80106f76:	83 c4 10             	add    $0x10,%esp
    addr = (char*)rcr2();
80106f79:	e8 29 fd ff ff       	call   80106ca7 <rcr2>
80106f7e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if (mdecrypt(addr))
80106f81:	83 ec 0c             	sub    $0xc,%esp
80106f84:	ff 75 e4             	pushl  -0x1c(%ebp)
80106f87:	e8 bc 1e 00 00       	call   80108e48 <mdecrypt>
80106f8c:	83 c4 10             	add    $0x10,%esp
80106f8f:	85 c0                	test   %eax,%eax
80106f91:	0f 84 c1 00 00 00    	je     80107058 <trap+0x20a>
    {
        //panic("p4Debug: Memory fault");
        exit();
80106f97:	e8 e7 db ff ff       	call   80104b83 <exit>
    };
    break;
80106f9c:	e9 b7 00 00 00       	jmp    80107058 <trap+0x20a>
  //PAGEBREAK: 13
  default:
    if(myproc() == 0 || (tf->cs&3) == 0){
80106fa1:	e8 67 d5 ff ff       	call   8010450d <myproc>
80106fa6:	85 c0                	test   %eax,%eax
80106fa8:	74 11                	je     80106fbb <trap+0x16d>
80106faa:	8b 45 08             	mov    0x8(%ebp),%eax
80106fad:	0f b7 40 3c          	movzwl 0x3c(%eax),%eax
80106fb1:	0f b7 c0             	movzwl %ax,%eax
80106fb4:	83 e0 03             	and    $0x3,%eax
80106fb7:	85 c0                	test   %eax,%eax
80106fb9:	75 39                	jne    80106ff4 <trap+0x1a6>
      // In kernel, it must be our mistake.
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
80106fbb:	e8 e7 fc ff ff       	call   80106ca7 <rcr2>
80106fc0:	89 c3                	mov    %eax,%ebx
80106fc2:	8b 45 08             	mov    0x8(%ebp),%eax
80106fc5:	8b 70 38             	mov    0x38(%eax),%esi
80106fc8:	e8 a5 d4 ff ff       	call   80104472 <cpuid>
80106fcd:	8b 55 08             	mov    0x8(%ebp),%edx
80106fd0:	8b 52 30             	mov    0x30(%edx),%edx
80106fd3:	83 ec 0c             	sub    $0xc,%esp
80106fd6:	53                   	push   %ebx
80106fd7:	56                   	push   %esi
80106fd8:	50                   	push   %eax
80106fd9:	52                   	push   %edx
80106fda:	68 34 9b 10 80       	push   $0x80109b34
80106fdf:	e8 34 94 ff ff       	call   80100418 <cprintf>
80106fe4:	83 c4 20             	add    $0x20,%esp
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
80106fe7:	83 ec 0c             	sub    $0xc,%esp
80106fea:	68 66 9b 10 80       	push   $0x80109b66
80106fef:	e8 14 96 ff ff       	call   80100608 <panic>
    }
    // In user space, assume process misbehaved.
    cprintf("pid %d %s: trap %d err %d on cpu %d "
80106ff4:	e8 ae fc ff ff       	call   80106ca7 <rcr2>
80106ff9:	89 c6                	mov    %eax,%esi
80106ffb:	8b 45 08             	mov    0x8(%ebp),%eax
80106ffe:	8b 40 38             	mov    0x38(%eax),%eax
80107001:	89 45 d4             	mov    %eax,-0x2c(%ebp)
80107004:	e8 69 d4 ff ff       	call   80104472 <cpuid>
80107009:	89 c3                	mov    %eax,%ebx
8010700b:	8b 45 08             	mov    0x8(%ebp),%eax
8010700e:	8b 48 34             	mov    0x34(%eax),%ecx
80107011:	89 4d d0             	mov    %ecx,-0x30(%ebp)
80107014:	8b 45 08             	mov    0x8(%ebp),%eax
80107017:	8b 78 30             	mov    0x30(%eax),%edi
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
8010701a:	e8 ee d4 ff ff       	call   8010450d <myproc>
8010701f:	8d 50 6c             	lea    0x6c(%eax),%edx
80107022:	89 55 cc             	mov    %edx,-0x34(%ebp)
80107025:	e8 e3 d4 ff ff       	call   8010450d <myproc>
    cprintf("pid %d %s: trap %d err %d on cpu %d "
8010702a:	8b 40 10             	mov    0x10(%eax),%eax
8010702d:	56                   	push   %esi
8010702e:	ff 75 d4             	pushl  -0x2c(%ebp)
80107031:	53                   	push   %ebx
80107032:	ff 75 d0             	pushl  -0x30(%ebp)
80107035:	57                   	push   %edi
80107036:	ff 75 cc             	pushl  -0x34(%ebp)
80107039:	50                   	push   %eax
8010703a:	68 6c 9b 10 80       	push   $0x80109b6c
8010703f:	e8 d4 93 ff ff       	call   80100418 <cprintf>
80107044:	83 c4 20             	add    $0x20,%esp
            tf->err, cpuid(), tf->eip, rcr2());
    myproc()->killed = 1;
80107047:	e8 c1 d4 ff ff       	call   8010450d <myproc>
8010704c:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
80107053:	eb 04                	jmp    80107059 <trap+0x20b>
    break;
80107055:	90                   	nop
80107056:	eb 01                	jmp    80107059 <trap+0x20b>
    break;
80107058:	90                   	nop
  }

  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
80107059:	e8 af d4 ff ff       	call   8010450d <myproc>
8010705e:	85 c0                	test   %eax,%eax
80107060:	74 23                	je     80107085 <trap+0x237>
80107062:	e8 a6 d4 ff ff       	call   8010450d <myproc>
80107067:	8b 40 24             	mov    0x24(%eax),%eax
8010706a:	85 c0                	test   %eax,%eax
8010706c:	74 17                	je     80107085 <trap+0x237>
8010706e:	8b 45 08             	mov    0x8(%ebp),%eax
80107071:	0f b7 40 3c          	movzwl 0x3c(%eax),%eax
80107075:	0f b7 c0             	movzwl %ax,%eax
80107078:	83 e0 03             	and    $0x3,%eax
8010707b:	83 f8 03             	cmp    $0x3,%eax
8010707e:	75 05                	jne    80107085 <trap+0x237>
    exit();
80107080:	e8 fe da ff ff       	call   80104b83 <exit>

  // Force process to give up CPU on clock tick.
  // If interrupts were on while locks held, would need to check nlock.
  if(myproc() && myproc()->state == RUNNING &&
80107085:	e8 83 d4 ff ff       	call   8010450d <myproc>
8010708a:	85 c0                	test   %eax,%eax
8010708c:	74 1d                	je     801070ab <trap+0x25d>
8010708e:	e8 7a d4 ff ff       	call   8010450d <myproc>
80107093:	8b 40 0c             	mov    0xc(%eax),%eax
80107096:	83 f8 04             	cmp    $0x4,%eax
80107099:	75 10                	jne    801070ab <trap+0x25d>
     tf->trapno == T_IRQ0+IRQ_TIMER)
8010709b:	8b 45 08             	mov    0x8(%ebp),%eax
8010709e:	8b 40 30             	mov    0x30(%eax),%eax
  if(myproc() && myproc()->state == RUNNING &&
801070a1:	83 f8 20             	cmp    $0x20,%eax
801070a4:	75 05                	jne    801070ab <trap+0x25d>
    yield();
801070a6:	e8 a2 de ff ff       	call   80104f4d <yield>

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
801070ab:	e8 5d d4 ff ff       	call   8010450d <myproc>
801070b0:	85 c0                	test   %eax,%eax
801070b2:	74 26                	je     801070da <trap+0x28c>
801070b4:	e8 54 d4 ff ff       	call   8010450d <myproc>
801070b9:	8b 40 24             	mov    0x24(%eax),%eax
801070bc:	85 c0                	test   %eax,%eax
801070be:	74 1a                	je     801070da <trap+0x28c>
801070c0:	8b 45 08             	mov    0x8(%ebp),%eax
801070c3:	0f b7 40 3c          	movzwl 0x3c(%eax),%eax
801070c7:	0f b7 c0             	movzwl %ax,%eax
801070ca:	83 e0 03             	and    $0x3,%eax
801070cd:	83 f8 03             	cmp    $0x3,%eax
801070d0:	75 08                	jne    801070da <trap+0x28c>
    exit();
801070d2:	e8 ac da ff ff       	call   80104b83 <exit>
801070d7:	eb 01                	jmp    801070da <trap+0x28c>
    return;
801070d9:	90                   	nop
}
801070da:	8d 65 f4             	lea    -0xc(%ebp),%esp
801070dd:	5b                   	pop    %ebx
801070de:	5e                   	pop    %esi
801070df:	5f                   	pop    %edi
801070e0:	5d                   	pop    %ebp
801070e1:	c3                   	ret    

801070e2 <inb>:
{
801070e2:	55                   	push   %ebp
801070e3:	89 e5                	mov    %esp,%ebp
801070e5:	83 ec 14             	sub    $0x14,%esp
801070e8:	8b 45 08             	mov    0x8(%ebp),%eax
801070eb:	66 89 45 ec          	mov    %ax,-0x14(%ebp)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801070ef:	0f b7 45 ec          	movzwl -0x14(%ebp),%eax
801070f3:	89 c2                	mov    %eax,%edx
801070f5:	ec                   	in     (%dx),%al
801070f6:	88 45 ff             	mov    %al,-0x1(%ebp)
  return data;
801070f9:	0f b6 45 ff          	movzbl -0x1(%ebp),%eax
}
801070fd:	c9                   	leave  
801070fe:	c3                   	ret    

801070ff <outb>:
{
801070ff:	55                   	push   %ebp
80107100:	89 e5                	mov    %esp,%ebp
80107102:	83 ec 08             	sub    $0x8,%esp
80107105:	8b 45 08             	mov    0x8(%ebp),%eax
80107108:	8b 55 0c             	mov    0xc(%ebp),%edx
8010710b:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
8010710f:	89 d0                	mov    %edx,%eax
80107111:	88 45 f8             	mov    %al,-0x8(%ebp)
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80107114:	0f b6 45 f8          	movzbl -0x8(%ebp),%eax
80107118:	0f b7 55 fc          	movzwl -0x4(%ebp),%edx
8010711c:	ee                   	out    %al,(%dx)
}
8010711d:	90                   	nop
8010711e:	c9                   	leave  
8010711f:	c3                   	ret    

80107120 <uartinit>:

static int uart;    // is there a uart?

void
uartinit(void)
{
80107120:	f3 0f 1e fb          	endbr32 
80107124:	55                   	push   %ebp
80107125:	89 e5                	mov    %esp,%ebp
80107127:	83 ec 18             	sub    $0x18,%esp
  char *p;

  // Turn off the FIFO
  outb(COM1+2, 0);
8010712a:	6a 00                	push   $0x0
8010712c:	68 fa 03 00 00       	push   $0x3fa
80107131:	e8 c9 ff ff ff       	call   801070ff <outb>
80107136:	83 c4 08             	add    $0x8,%esp

  // 9600 baud, 8 data bits, 1 stop bit, parity off.
  outb(COM1+3, 0x80);    // Unlock divisor
80107139:	68 80 00 00 00       	push   $0x80
8010713e:	68 fb 03 00 00       	push   $0x3fb
80107143:	e8 b7 ff ff ff       	call   801070ff <outb>
80107148:	83 c4 08             	add    $0x8,%esp
  outb(COM1+0, 115200/9600);
8010714b:	6a 0c                	push   $0xc
8010714d:	68 f8 03 00 00       	push   $0x3f8
80107152:	e8 a8 ff ff ff       	call   801070ff <outb>
80107157:	83 c4 08             	add    $0x8,%esp
  outb(COM1+1, 0);
8010715a:	6a 00                	push   $0x0
8010715c:	68 f9 03 00 00       	push   $0x3f9
80107161:	e8 99 ff ff ff       	call   801070ff <outb>
80107166:	83 c4 08             	add    $0x8,%esp
  outb(COM1+3, 0x03);    // Lock divisor, 8 data bits.
80107169:	6a 03                	push   $0x3
8010716b:	68 fb 03 00 00       	push   $0x3fb
80107170:	e8 8a ff ff ff       	call   801070ff <outb>
80107175:	83 c4 08             	add    $0x8,%esp
  outb(COM1+4, 0);
80107178:	6a 00                	push   $0x0
8010717a:	68 fc 03 00 00       	push   $0x3fc
8010717f:	e8 7b ff ff ff       	call   801070ff <outb>
80107184:	83 c4 08             	add    $0x8,%esp
  outb(COM1+1, 0x01);    // Enable receive interrupts.
80107187:	6a 01                	push   $0x1
80107189:	68 f9 03 00 00       	push   $0x3f9
8010718e:	e8 6c ff ff ff       	call   801070ff <outb>
80107193:	83 c4 08             	add    $0x8,%esp

  // If status is 0xFF, no serial port.
  if(inb(COM1+5) == 0xFF)
80107196:	68 fd 03 00 00       	push   $0x3fd
8010719b:	e8 42 ff ff ff       	call   801070e2 <inb>
801071a0:	83 c4 04             	add    $0x4,%esp
801071a3:	3c ff                	cmp    $0xff,%al
801071a5:	74 61                	je     80107208 <uartinit+0xe8>
    return;
  uart = 1;
801071a7:	c7 05 44 d6 10 80 01 	movl   $0x1,0x8010d644
801071ae:	00 00 00 

  // Acknowledge pre-existing interrupt conditions;
  // enable interrupts.
  inb(COM1+2);
801071b1:	68 fa 03 00 00       	push   $0x3fa
801071b6:	e8 27 ff ff ff       	call   801070e2 <inb>
801071bb:	83 c4 04             	add    $0x4,%esp
  inb(COM1+0);
801071be:	68 f8 03 00 00       	push   $0x3f8
801071c3:	e8 1a ff ff ff       	call   801070e2 <inb>
801071c8:	83 c4 04             	add    $0x4,%esp
  ioapicenable(IRQ_COM1, 0);
801071cb:	83 ec 08             	sub    $0x8,%esp
801071ce:	6a 00                	push   $0x0
801071d0:	6a 04                	push   $0x4
801071d2:	e8 ec ba ff ff       	call   80102cc3 <ioapicenable>
801071d7:	83 c4 10             	add    $0x10,%esp

  // Announce that we're here.
  for(p="xv6...\n"; *p; p++)
801071da:	c7 45 f4 78 9c 10 80 	movl   $0x80109c78,-0xc(%ebp)
801071e1:	eb 19                	jmp    801071fc <uartinit+0xdc>
    uartputc(*p);
801071e3:	8b 45 f4             	mov    -0xc(%ebp),%eax
801071e6:	0f b6 00             	movzbl (%eax),%eax
801071e9:	0f be c0             	movsbl %al,%eax
801071ec:	83 ec 0c             	sub    $0xc,%esp
801071ef:	50                   	push   %eax
801071f0:	e8 16 00 00 00       	call   8010720b <uartputc>
801071f5:	83 c4 10             	add    $0x10,%esp
  for(p="xv6...\n"; *p; p++)
801071f8:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
801071fc:	8b 45 f4             	mov    -0xc(%ebp),%eax
801071ff:	0f b6 00             	movzbl (%eax),%eax
80107202:	84 c0                	test   %al,%al
80107204:	75 dd                	jne    801071e3 <uartinit+0xc3>
80107206:	eb 01                	jmp    80107209 <uartinit+0xe9>
    return;
80107208:	90                   	nop
}
80107209:	c9                   	leave  
8010720a:	c3                   	ret    

8010720b <uartputc>:

void
uartputc(int c)
{
8010720b:	f3 0f 1e fb          	endbr32 
8010720f:	55                   	push   %ebp
80107210:	89 e5                	mov    %esp,%ebp
80107212:	83 ec 18             	sub    $0x18,%esp
  int i;

  if(!uart)
80107215:	a1 44 d6 10 80       	mov    0x8010d644,%eax
8010721a:	85 c0                	test   %eax,%eax
8010721c:	74 53                	je     80107271 <uartputc+0x66>
    return;
  for(i = 0; i < 128 && !(inb(COM1+5) & 0x20); i++)
8010721e:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80107225:	eb 11                	jmp    80107238 <uartputc+0x2d>
    microdelay(10);
80107227:	83 ec 0c             	sub    $0xc,%esp
8010722a:	6a 0a                	push   $0xa
8010722c:	e8 f0 bf ff ff       	call   80103221 <microdelay>
80107231:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 128 && !(inb(COM1+5) & 0x20); i++)
80107234:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80107238:	83 7d f4 7f          	cmpl   $0x7f,-0xc(%ebp)
8010723c:	7f 1a                	jg     80107258 <uartputc+0x4d>
8010723e:	83 ec 0c             	sub    $0xc,%esp
80107241:	68 fd 03 00 00       	push   $0x3fd
80107246:	e8 97 fe ff ff       	call   801070e2 <inb>
8010724b:	83 c4 10             	add    $0x10,%esp
8010724e:	0f b6 c0             	movzbl %al,%eax
80107251:	83 e0 20             	and    $0x20,%eax
80107254:	85 c0                	test   %eax,%eax
80107256:	74 cf                	je     80107227 <uartputc+0x1c>
  outb(COM1+0, c);
80107258:	8b 45 08             	mov    0x8(%ebp),%eax
8010725b:	0f b6 c0             	movzbl %al,%eax
8010725e:	83 ec 08             	sub    $0x8,%esp
80107261:	50                   	push   %eax
80107262:	68 f8 03 00 00       	push   $0x3f8
80107267:	e8 93 fe ff ff       	call   801070ff <outb>
8010726c:	83 c4 10             	add    $0x10,%esp
8010726f:	eb 01                	jmp    80107272 <uartputc+0x67>
    return;
80107271:	90                   	nop
}
80107272:	c9                   	leave  
80107273:	c3                   	ret    

80107274 <uartgetc>:

static int
uartgetc(void)
{
80107274:	f3 0f 1e fb          	endbr32 
80107278:	55                   	push   %ebp
80107279:	89 e5                	mov    %esp,%ebp
  if(!uart)
8010727b:	a1 44 d6 10 80       	mov    0x8010d644,%eax
80107280:	85 c0                	test   %eax,%eax
80107282:	75 07                	jne    8010728b <uartgetc+0x17>
    return -1;
80107284:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80107289:	eb 2e                	jmp    801072b9 <uartgetc+0x45>
  if(!(inb(COM1+5) & 0x01))
8010728b:	68 fd 03 00 00       	push   $0x3fd
80107290:	e8 4d fe ff ff       	call   801070e2 <inb>
80107295:	83 c4 04             	add    $0x4,%esp
80107298:	0f b6 c0             	movzbl %al,%eax
8010729b:	83 e0 01             	and    $0x1,%eax
8010729e:	85 c0                	test   %eax,%eax
801072a0:	75 07                	jne    801072a9 <uartgetc+0x35>
    return -1;
801072a2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801072a7:	eb 10                	jmp    801072b9 <uartgetc+0x45>
  return inb(COM1+0);
801072a9:	68 f8 03 00 00       	push   $0x3f8
801072ae:	e8 2f fe ff ff       	call   801070e2 <inb>
801072b3:	83 c4 04             	add    $0x4,%esp
801072b6:	0f b6 c0             	movzbl %al,%eax
}
801072b9:	c9                   	leave  
801072ba:	c3                   	ret    

801072bb <uartintr>:

void
uartintr(void)
{
801072bb:	f3 0f 1e fb          	endbr32 
801072bf:	55                   	push   %ebp
801072c0:	89 e5                	mov    %esp,%ebp
801072c2:	83 ec 08             	sub    $0x8,%esp
  consoleintr(uartgetc);
801072c5:	83 ec 0c             	sub    $0xc,%esp
801072c8:	68 74 72 10 80       	push   $0x80107274
801072cd:	e8 d6 95 ff ff       	call   801008a8 <consoleintr>
801072d2:	83 c4 10             	add    $0x10,%esp
}
801072d5:	90                   	nop
801072d6:	c9                   	leave  
801072d7:	c3                   	ret    

801072d8 <vector0>:
801072d8:	6a 00                	push   $0x0
801072da:	6a 00                	push   $0x0
801072dc:	e9 79 f9 ff ff       	jmp    80106c5a <alltraps>

801072e1 <vector1>:
801072e1:	6a 00                	push   $0x0
801072e3:	6a 01                	push   $0x1
801072e5:	e9 70 f9 ff ff       	jmp    80106c5a <alltraps>

801072ea <vector2>:
801072ea:	6a 00                	push   $0x0
801072ec:	6a 02                	push   $0x2
801072ee:	e9 67 f9 ff ff       	jmp    80106c5a <alltraps>

801072f3 <vector3>:
801072f3:	6a 00                	push   $0x0
801072f5:	6a 03                	push   $0x3
801072f7:	e9 5e f9 ff ff       	jmp    80106c5a <alltraps>

801072fc <vector4>:
801072fc:	6a 00                	push   $0x0
801072fe:	6a 04                	push   $0x4
80107300:	e9 55 f9 ff ff       	jmp    80106c5a <alltraps>

80107305 <vector5>:
80107305:	6a 00                	push   $0x0
80107307:	6a 05                	push   $0x5
80107309:	e9 4c f9 ff ff       	jmp    80106c5a <alltraps>

8010730e <vector6>:
8010730e:	6a 00                	push   $0x0
80107310:	6a 06                	push   $0x6
80107312:	e9 43 f9 ff ff       	jmp    80106c5a <alltraps>

80107317 <vector7>:
80107317:	6a 00                	push   $0x0
80107319:	6a 07                	push   $0x7
8010731b:	e9 3a f9 ff ff       	jmp    80106c5a <alltraps>

80107320 <vector8>:
80107320:	6a 08                	push   $0x8
80107322:	e9 33 f9 ff ff       	jmp    80106c5a <alltraps>

80107327 <vector9>:
80107327:	6a 00                	push   $0x0
80107329:	6a 09                	push   $0x9
8010732b:	e9 2a f9 ff ff       	jmp    80106c5a <alltraps>

80107330 <vector10>:
80107330:	6a 0a                	push   $0xa
80107332:	e9 23 f9 ff ff       	jmp    80106c5a <alltraps>

80107337 <vector11>:
80107337:	6a 0b                	push   $0xb
80107339:	e9 1c f9 ff ff       	jmp    80106c5a <alltraps>

8010733e <vector12>:
8010733e:	6a 0c                	push   $0xc
80107340:	e9 15 f9 ff ff       	jmp    80106c5a <alltraps>

80107345 <vector13>:
80107345:	6a 0d                	push   $0xd
80107347:	e9 0e f9 ff ff       	jmp    80106c5a <alltraps>

8010734c <vector14>:
8010734c:	6a 0e                	push   $0xe
8010734e:	e9 07 f9 ff ff       	jmp    80106c5a <alltraps>

80107353 <vector15>:
80107353:	6a 00                	push   $0x0
80107355:	6a 0f                	push   $0xf
80107357:	e9 fe f8 ff ff       	jmp    80106c5a <alltraps>

8010735c <vector16>:
8010735c:	6a 00                	push   $0x0
8010735e:	6a 10                	push   $0x10
80107360:	e9 f5 f8 ff ff       	jmp    80106c5a <alltraps>

80107365 <vector17>:
80107365:	6a 11                	push   $0x11
80107367:	e9 ee f8 ff ff       	jmp    80106c5a <alltraps>

8010736c <vector18>:
8010736c:	6a 00                	push   $0x0
8010736e:	6a 12                	push   $0x12
80107370:	e9 e5 f8 ff ff       	jmp    80106c5a <alltraps>

80107375 <vector19>:
80107375:	6a 00                	push   $0x0
80107377:	6a 13                	push   $0x13
80107379:	e9 dc f8 ff ff       	jmp    80106c5a <alltraps>

8010737e <vector20>:
8010737e:	6a 00                	push   $0x0
80107380:	6a 14                	push   $0x14
80107382:	e9 d3 f8 ff ff       	jmp    80106c5a <alltraps>

80107387 <vector21>:
80107387:	6a 00                	push   $0x0
80107389:	6a 15                	push   $0x15
8010738b:	e9 ca f8 ff ff       	jmp    80106c5a <alltraps>

80107390 <vector22>:
80107390:	6a 00                	push   $0x0
80107392:	6a 16                	push   $0x16
80107394:	e9 c1 f8 ff ff       	jmp    80106c5a <alltraps>

80107399 <vector23>:
80107399:	6a 00                	push   $0x0
8010739b:	6a 17                	push   $0x17
8010739d:	e9 b8 f8 ff ff       	jmp    80106c5a <alltraps>

801073a2 <vector24>:
801073a2:	6a 00                	push   $0x0
801073a4:	6a 18                	push   $0x18
801073a6:	e9 af f8 ff ff       	jmp    80106c5a <alltraps>

801073ab <vector25>:
801073ab:	6a 00                	push   $0x0
801073ad:	6a 19                	push   $0x19
801073af:	e9 a6 f8 ff ff       	jmp    80106c5a <alltraps>

801073b4 <vector26>:
801073b4:	6a 00                	push   $0x0
801073b6:	6a 1a                	push   $0x1a
801073b8:	e9 9d f8 ff ff       	jmp    80106c5a <alltraps>

801073bd <vector27>:
801073bd:	6a 00                	push   $0x0
801073bf:	6a 1b                	push   $0x1b
801073c1:	e9 94 f8 ff ff       	jmp    80106c5a <alltraps>

801073c6 <vector28>:
801073c6:	6a 00                	push   $0x0
801073c8:	6a 1c                	push   $0x1c
801073ca:	e9 8b f8 ff ff       	jmp    80106c5a <alltraps>

801073cf <vector29>:
801073cf:	6a 00                	push   $0x0
801073d1:	6a 1d                	push   $0x1d
801073d3:	e9 82 f8 ff ff       	jmp    80106c5a <alltraps>

801073d8 <vector30>:
801073d8:	6a 00                	push   $0x0
801073da:	6a 1e                	push   $0x1e
801073dc:	e9 79 f8 ff ff       	jmp    80106c5a <alltraps>

801073e1 <vector31>:
801073e1:	6a 00                	push   $0x0
801073e3:	6a 1f                	push   $0x1f
801073e5:	e9 70 f8 ff ff       	jmp    80106c5a <alltraps>

801073ea <vector32>:
801073ea:	6a 00                	push   $0x0
801073ec:	6a 20                	push   $0x20
801073ee:	e9 67 f8 ff ff       	jmp    80106c5a <alltraps>

801073f3 <vector33>:
801073f3:	6a 00                	push   $0x0
801073f5:	6a 21                	push   $0x21
801073f7:	e9 5e f8 ff ff       	jmp    80106c5a <alltraps>

801073fc <vector34>:
801073fc:	6a 00                	push   $0x0
801073fe:	6a 22                	push   $0x22
80107400:	e9 55 f8 ff ff       	jmp    80106c5a <alltraps>

80107405 <vector35>:
80107405:	6a 00                	push   $0x0
80107407:	6a 23                	push   $0x23
80107409:	e9 4c f8 ff ff       	jmp    80106c5a <alltraps>

8010740e <vector36>:
8010740e:	6a 00                	push   $0x0
80107410:	6a 24                	push   $0x24
80107412:	e9 43 f8 ff ff       	jmp    80106c5a <alltraps>

80107417 <vector37>:
80107417:	6a 00                	push   $0x0
80107419:	6a 25                	push   $0x25
8010741b:	e9 3a f8 ff ff       	jmp    80106c5a <alltraps>

80107420 <vector38>:
80107420:	6a 00                	push   $0x0
80107422:	6a 26                	push   $0x26
80107424:	e9 31 f8 ff ff       	jmp    80106c5a <alltraps>

80107429 <vector39>:
80107429:	6a 00                	push   $0x0
8010742b:	6a 27                	push   $0x27
8010742d:	e9 28 f8 ff ff       	jmp    80106c5a <alltraps>

80107432 <vector40>:
80107432:	6a 00                	push   $0x0
80107434:	6a 28                	push   $0x28
80107436:	e9 1f f8 ff ff       	jmp    80106c5a <alltraps>

8010743b <vector41>:
8010743b:	6a 00                	push   $0x0
8010743d:	6a 29                	push   $0x29
8010743f:	e9 16 f8 ff ff       	jmp    80106c5a <alltraps>

80107444 <vector42>:
80107444:	6a 00                	push   $0x0
80107446:	6a 2a                	push   $0x2a
80107448:	e9 0d f8 ff ff       	jmp    80106c5a <alltraps>

8010744d <vector43>:
8010744d:	6a 00                	push   $0x0
8010744f:	6a 2b                	push   $0x2b
80107451:	e9 04 f8 ff ff       	jmp    80106c5a <alltraps>

80107456 <vector44>:
80107456:	6a 00                	push   $0x0
80107458:	6a 2c                	push   $0x2c
8010745a:	e9 fb f7 ff ff       	jmp    80106c5a <alltraps>

8010745f <vector45>:
8010745f:	6a 00                	push   $0x0
80107461:	6a 2d                	push   $0x2d
80107463:	e9 f2 f7 ff ff       	jmp    80106c5a <alltraps>

80107468 <vector46>:
80107468:	6a 00                	push   $0x0
8010746a:	6a 2e                	push   $0x2e
8010746c:	e9 e9 f7 ff ff       	jmp    80106c5a <alltraps>

80107471 <vector47>:
80107471:	6a 00                	push   $0x0
80107473:	6a 2f                	push   $0x2f
80107475:	e9 e0 f7 ff ff       	jmp    80106c5a <alltraps>

8010747a <vector48>:
8010747a:	6a 00                	push   $0x0
8010747c:	6a 30                	push   $0x30
8010747e:	e9 d7 f7 ff ff       	jmp    80106c5a <alltraps>

80107483 <vector49>:
80107483:	6a 00                	push   $0x0
80107485:	6a 31                	push   $0x31
80107487:	e9 ce f7 ff ff       	jmp    80106c5a <alltraps>

8010748c <vector50>:
8010748c:	6a 00                	push   $0x0
8010748e:	6a 32                	push   $0x32
80107490:	e9 c5 f7 ff ff       	jmp    80106c5a <alltraps>

80107495 <vector51>:
80107495:	6a 00                	push   $0x0
80107497:	6a 33                	push   $0x33
80107499:	e9 bc f7 ff ff       	jmp    80106c5a <alltraps>

8010749e <vector52>:
8010749e:	6a 00                	push   $0x0
801074a0:	6a 34                	push   $0x34
801074a2:	e9 b3 f7 ff ff       	jmp    80106c5a <alltraps>

801074a7 <vector53>:
801074a7:	6a 00                	push   $0x0
801074a9:	6a 35                	push   $0x35
801074ab:	e9 aa f7 ff ff       	jmp    80106c5a <alltraps>

801074b0 <vector54>:
801074b0:	6a 00                	push   $0x0
801074b2:	6a 36                	push   $0x36
801074b4:	e9 a1 f7 ff ff       	jmp    80106c5a <alltraps>

801074b9 <vector55>:
801074b9:	6a 00                	push   $0x0
801074bb:	6a 37                	push   $0x37
801074bd:	e9 98 f7 ff ff       	jmp    80106c5a <alltraps>

801074c2 <vector56>:
801074c2:	6a 00                	push   $0x0
801074c4:	6a 38                	push   $0x38
801074c6:	e9 8f f7 ff ff       	jmp    80106c5a <alltraps>

801074cb <vector57>:
801074cb:	6a 00                	push   $0x0
801074cd:	6a 39                	push   $0x39
801074cf:	e9 86 f7 ff ff       	jmp    80106c5a <alltraps>

801074d4 <vector58>:
801074d4:	6a 00                	push   $0x0
801074d6:	6a 3a                	push   $0x3a
801074d8:	e9 7d f7 ff ff       	jmp    80106c5a <alltraps>

801074dd <vector59>:
801074dd:	6a 00                	push   $0x0
801074df:	6a 3b                	push   $0x3b
801074e1:	e9 74 f7 ff ff       	jmp    80106c5a <alltraps>

801074e6 <vector60>:
801074e6:	6a 00                	push   $0x0
801074e8:	6a 3c                	push   $0x3c
801074ea:	e9 6b f7 ff ff       	jmp    80106c5a <alltraps>

801074ef <vector61>:
801074ef:	6a 00                	push   $0x0
801074f1:	6a 3d                	push   $0x3d
801074f3:	e9 62 f7 ff ff       	jmp    80106c5a <alltraps>

801074f8 <vector62>:
801074f8:	6a 00                	push   $0x0
801074fa:	6a 3e                	push   $0x3e
801074fc:	e9 59 f7 ff ff       	jmp    80106c5a <alltraps>

80107501 <vector63>:
80107501:	6a 00                	push   $0x0
80107503:	6a 3f                	push   $0x3f
80107505:	e9 50 f7 ff ff       	jmp    80106c5a <alltraps>

8010750a <vector64>:
8010750a:	6a 00                	push   $0x0
8010750c:	6a 40                	push   $0x40
8010750e:	e9 47 f7 ff ff       	jmp    80106c5a <alltraps>

80107513 <vector65>:
80107513:	6a 00                	push   $0x0
80107515:	6a 41                	push   $0x41
80107517:	e9 3e f7 ff ff       	jmp    80106c5a <alltraps>

8010751c <vector66>:
8010751c:	6a 00                	push   $0x0
8010751e:	6a 42                	push   $0x42
80107520:	e9 35 f7 ff ff       	jmp    80106c5a <alltraps>

80107525 <vector67>:
80107525:	6a 00                	push   $0x0
80107527:	6a 43                	push   $0x43
80107529:	e9 2c f7 ff ff       	jmp    80106c5a <alltraps>

8010752e <vector68>:
8010752e:	6a 00                	push   $0x0
80107530:	6a 44                	push   $0x44
80107532:	e9 23 f7 ff ff       	jmp    80106c5a <alltraps>

80107537 <vector69>:
80107537:	6a 00                	push   $0x0
80107539:	6a 45                	push   $0x45
8010753b:	e9 1a f7 ff ff       	jmp    80106c5a <alltraps>

80107540 <vector70>:
80107540:	6a 00                	push   $0x0
80107542:	6a 46                	push   $0x46
80107544:	e9 11 f7 ff ff       	jmp    80106c5a <alltraps>

80107549 <vector71>:
80107549:	6a 00                	push   $0x0
8010754b:	6a 47                	push   $0x47
8010754d:	e9 08 f7 ff ff       	jmp    80106c5a <alltraps>

80107552 <vector72>:
80107552:	6a 00                	push   $0x0
80107554:	6a 48                	push   $0x48
80107556:	e9 ff f6 ff ff       	jmp    80106c5a <alltraps>

8010755b <vector73>:
8010755b:	6a 00                	push   $0x0
8010755d:	6a 49                	push   $0x49
8010755f:	e9 f6 f6 ff ff       	jmp    80106c5a <alltraps>

80107564 <vector74>:
80107564:	6a 00                	push   $0x0
80107566:	6a 4a                	push   $0x4a
80107568:	e9 ed f6 ff ff       	jmp    80106c5a <alltraps>

8010756d <vector75>:
8010756d:	6a 00                	push   $0x0
8010756f:	6a 4b                	push   $0x4b
80107571:	e9 e4 f6 ff ff       	jmp    80106c5a <alltraps>

80107576 <vector76>:
80107576:	6a 00                	push   $0x0
80107578:	6a 4c                	push   $0x4c
8010757a:	e9 db f6 ff ff       	jmp    80106c5a <alltraps>

8010757f <vector77>:
8010757f:	6a 00                	push   $0x0
80107581:	6a 4d                	push   $0x4d
80107583:	e9 d2 f6 ff ff       	jmp    80106c5a <alltraps>

80107588 <vector78>:
80107588:	6a 00                	push   $0x0
8010758a:	6a 4e                	push   $0x4e
8010758c:	e9 c9 f6 ff ff       	jmp    80106c5a <alltraps>

80107591 <vector79>:
80107591:	6a 00                	push   $0x0
80107593:	6a 4f                	push   $0x4f
80107595:	e9 c0 f6 ff ff       	jmp    80106c5a <alltraps>

8010759a <vector80>:
8010759a:	6a 00                	push   $0x0
8010759c:	6a 50                	push   $0x50
8010759e:	e9 b7 f6 ff ff       	jmp    80106c5a <alltraps>

801075a3 <vector81>:
801075a3:	6a 00                	push   $0x0
801075a5:	6a 51                	push   $0x51
801075a7:	e9 ae f6 ff ff       	jmp    80106c5a <alltraps>

801075ac <vector82>:
801075ac:	6a 00                	push   $0x0
801075ae:	6a 52                	push   $0x52
801075b0:	e9 a5 f6 ff ff       	jmp    80106c5a <alltraps>

801075b5 <vector83>:
801075b5:	6a 00                	push   $0x0
801075b7:	6a 53                	push   $0x53
801075b9:	e9 9c f6 ff ff       	jmp    80106c5a <alltraps>

801075be <vector84>:
801075be:	6a 00                	push   $0x0
801075c0:	6a 54                	push   $0x54
801075c2:	e9 93 f6 ff ff       	jmp    80106c5a <alltraps>

801075c7 <vector85>:
801075c7:	6a 00                	push   $0x0
801075c9:	6a 55                	push   $0x55
801075cb:	e9 8a f6 ff ff       	jmp    80106c5a <alltraps>

801075d0 <vector86>:
801075d0:	6a 00                	push   $0x0
801075d2:	6a 56                	push   $0x56
801075d4:	e9 81 f6 ff ff       	jmp    80106c5a <alltraps>

801075d9 <vector87>:
801075d9:	6a 00                	push   $0x0
801075db:	6a 57                	push   $0x57
801075dd:	e9 78 f6 ff ff       	jmp    80106c5a <alltraps>

801075e2 <vector88>:
801075e2:	6a 00                	push   $0x0
801075e4:	6a 58                	push   $0x58
801075e6:	e9 6f f6 ff ff       	jmp    80106c5a <alltraps>

801075eb <vector89>:
801075eb:	6a 00                	push   $0x0
801075ed:	6a 59                	push   $0x59
801075ef:	e9 66 f6 ff ff       	jmp    80106c5a <alltraps>

801075f4 <vector90>:
801075f4:	6a 00                	push   $0x0
801075f6:	6a 5a                	push   $0x5a
801075f8:	e9 5d f6 ff ff       	jmp    80106c5a <alltraps>

801075fd <vector91>:
801075fd:	6a 00                	push   $0x0
801075ff:	6a 5b                	push   $0x5b
80107601:	e9 54 f6 ff ff       	jmp    80106c5a <alltraps>

80107606 <vector92>:
80107606:	6a 00                	push   $0x0
80107608:	6a 5c                	push   $0x5c
8010760a:	e9 4b f6 ff ff       	jmp    80106c5a <alltraps>

8010760f <vector93>:
8010760f:	6a 00                	push   $0x0
80107611:	6a 5d                	push   $0x5d
80107613:	e9 42 f6 ff ff       	jmp    80106c5a <alltraps>

80107618 <vector94>:
80107618:	6a 00                	push   $0x0
8010761a:	6a 5e                	push   $0x5e
8010761c:	e9 39 f6 ff ff       	jmp    80106c5a <alltraps>

80107621 <vector95>:
80107621:	6a 00                	push   $0x0
80107623:	6a 5f                	push   $0x5f
80107625:	e9 30 f6 ff ff       	jmp    80106c5a <alltraps>

8010762a <vector96>:
8010762a:	6a 00                	push   $0x0
8010762c:	6a 60                	push   $0x60
8010762e:	e9 27 f6 ff ff       	jmp    80106c5a <alltraps>

80107633 <vector97>:
80107633:	6a 00                	push   $0x0
80107635:	6a 61                	push   $0x61
80107637:	e9 1e f6 ff ff       	jmp    80106c5a <alltraps>

8010763c <vector98>:
8010763c:	6a 00                	push   $0x0
8010763e:	6a 62                	push   $0x62
80107640:	e9 15 f6 ff ff       	jmp    80106c5a <alltraps>

80107645 <vector99>:
80107645:	6a 00                	push   $0x0
80107647:	6a 63                	push   $0x63
80107649:	e9 0c f6 ff ff       	jmp    80106c5a <alltraps>

8010764e <vector100>:
8010764e:	6a 00                	push   $0x0
80107650:	6a 64                	push   $0x64
80107652:	e9 03 f6 ff ff       	jmp    80106c5a <alltraps>

80107657 <vector101>:
80107657:	6a 00                	push   $0x0
80107659:	6a 65                	push   $0x65
8010765b:	e9 fa f5 ff ff       	jmp    80106c5a <alltraps>

80107660 <vector102>:
80107660:	6a 00                	push   $0x0
80107662:	6a 66                	push   $0x66
80107664:	e9 f1 f5 ff ff       	jmp    80106c5a <alltraps>

80107669 <vector103>:
80107669:	6a 00                	push   $0x0
8010766b:	6a 67                	push   $0x67
8010766d:	e9 e8 f5 ff ff       	jmp    80106c5a <alltraps>

80107672 <vector104>:
80107672:	6a 00                	push   $0x0
80107674:	6a 68                	push   $0x68
80107676:	e9 df f5 ff ff       	jmp    80106c5a <alltraps>

8010767b <vector105>:
8010767b:	6a 00                	push   $0x0
8010767d:	6a 69                	push   $0x69
8010767f:	e9 d6 f5 ff ff       	jmp    80106c5a <alltraps>

80107684 <vector106>:
80107684:	6a 00                	push   $0x0
80107686:	6a 6a                	push   $0x6a
80107688:	e9 cd f5 ff ff       	jmp    80106c5a <alltraps>

8010768d <vector107>:
8010768d:	6a 00                	push   $0x0
8010768f:	6a 6b                	push   $0x6b
80107691:	e9 c4 f5 ff ff       	jmp    80106c5a <alltraps>

80107696 <vector108>:
80107696:	6a 00                	push   $0x0
80107698:	6a 6c                	push   $0x6c
8010769a:	e9 bb f5 ff ff       	jmp    80106c5a <alltraps>

8010769f <vector109>:
8010769f:	6a 00                	push   $0x0
801076a1:	6a 6d                	push   $0x6d
801076a3:	e9 b2 f5 ff ff       	jmp    80106c5a <alltraps>

801076a8 <vector110>:
801076a8:	6a 00                	push   $0x0
801076aa:	6a 6e                	push   $0x6e
801076ac:	e9 a9 f5 ff ff       	jmp    80106c5a <alltraps>

801076b1 <vector111>:
801076b1:	6a 00                	push   $0x0
801076b3:	6a 6f                	push   $0x6f
801076b5:	e9 a0 f5 ff ff       	jmp    80106c5a <alltraps>

801076ba <vector112>:
801076ba:	6a 00                	push   $0x0
801076bc:	6a 70                	push   $0x70
801076be:	e9 97 f5 ff ff       	jmp    80106c5a <alltraps>

801076c3 <vector113>:
801076c3:	6a 00                	push   $0x0
801076c5:	6a 71                	push   $0x71
801076c7:	e9 8e f5 ff ff       	jmp    80106c5a <alltraps>

801076cc <vector114>:
801076cc:	6a 00                	push   $0x0
801076ce:	6a 72                	push   $0x72
801076d0:	e9 85 f5 ff ff       	jmp    80106c5a <alltraps>

801076d5 <vector115>:
801076d5:	6a 00                	push   $0x0
801076d7:	6a 73                	push   $0x73
801076d9:	e9 7c f5 ff ff       	jmp    80106c5a <alltraps>

801076de <vector116>:
801076de:	6a 00                	push   $0x0
801076e0:	6a 74                	push   $0x74
801076e2:	e9 73 f5 ff ff       	jmp    80106c5a <alltraps>

801076e7 <vector117>:
801076e7:	6a 00                	push   $0x0
801076e9:	6a 75                	push   $0x75
801076eb:	e9 6a f5 ff ff       	jmp    80106c5a <alltraps>

801076f0 <vector118>:
801076f0:	6a 00                	push   $0x0
801076f2:	6a 76                	push   $0x76
801076f4:	e9 61 f5 ff ff       	jmp    80106c5a <alltraps>

801076f9 <vector119>:
801076f9:	6a 00                	push   $0x0
801076fb:	6a 77                	push   $0x77
801076fd:	e9 58 f5 ff ff       	jmp    80106c5a <alltraps>

80107702 <vector120>:
80107702:	6a 00                	push   $0x0
80107704:	6a 78                	push   $0x78
80107706:	e9 4f f5 ff ff       	jmp    80106c5a <alltraps>

8010770b <vector121>:
8010770b:	6a 00                	push   $0x0
8010770d:	6a 79                	push   $0x79
8010770f:	e9 46 f5 ff ff       	jmp    80106c5a <alltraps>

80107714 <vector122>:
80107714:	6a 00                	push   $0x0
80107716:	6a 7a                	push   $0x7a
80107718:	e9 3d f5 ff ff       	jmp    80106c5a <alltraps>

8010771d <vector123>:
8010771d:	6a 00                	push   $0x0
8010771f:	6a 7b                	push   $0x7b
80107721:	e9 34 f5 ff ff       	jmp    80106c5a <alltraps>

80107726 <vector124>:
80107726:	6a 00                	push   $0x0
80107728:	6a 7c                	push   $0x7c
8010772a:	e9 2b f5 ff ff       	jmp    80106c5a <alltraps>

8010772f <vector125>:
8010772f:	6a 00                	push   $0x0
80107731:	6a 7d                	push   $0x7d
80107733:	e9 22 f5 ff ff       	jmp    80106c5a <alltraps>

80107738 <vector126>:
80107738:	6a 00                	push   $0x0
8010773a:	6a 7e                	push   $0x7e
8010773c:	e9 19 f5 ff ff       	jmp    80106c5a <alltraps>

80107741 <vector127>:
80107741:	6a 00                	push   $0x0
80107743:	6a 7f                	push   $0x7f
80107745:	e9 10 f5 ff ff       	jmp    80106c5a <alltraps>

8010774a <vector128>:
8010774a:	6a 00                	push   $0x0
8010774c:	68 80 00 00 00       	push   $0x80
80107751:	e9 04 f5 ff ff       	jmp    80106c5a <alltraps>

80107756 <vector129>:
80107756:	6a 00                	push   $0x0
80107758:	68 81 00 00 00       	push   $0x81
8010775d:	e9 f8 f4 ff ff       	jmp    80106c5a <alltraps>

80107762 <vector130>:
80107762:	6a 00                	push   $0x0
80107764:	68 82 00 00 00       	push   $0x82
80107769:	e9 ec f4 ff ff       	jmp    80106c5a <alltraps>

8010776e <vector131>:
8010776e:	6a 00                	push   $0x0
80107770:	68 83 00 00 00       	push   $0x83
80107775:	e9 e0 f4 ff ff       	jmp    80106c5a <alltraps>

8010777a <vector132>:
8010777a:	6a 00                	push   $0x0
8010777c:	68 84 00 00 00       	push   $0x84
80107781:	e9 d4 f4 ff ff       	jmp    80106c5a <alltraps>

80107786 <vector133>:
80107786:	6a 00                	push   $0x0
80107788:	68 85 00 00 00       	push   $0x85
8010778d:	e9 c8 f4 ff ff       	jmp    80106c5a <alltraps>

80107792 <vector134>:
80107792:	6a 00                	push   $0x0
80107794:	68 86 00 00 00       	push   $0x86
80107799:	e9 bc f4 ff ff       	jmp    80106c5a <alltraps>

8010779e <vector135>:
8010779e:	6a 00                	push   $0x0
801077a0:	68 87 00 00 00       	push   $0x87
801077a5:	e9 b0 f4 ff ff       	jmp    80106c5a <alltraps>

801077aa <vector136>:
801077aa:	6a 00                	push   $0x0
801077ac:	68 88 00 00 00       	push   $0x88
801077b1:	e9 a4 f4 ff ff       	jmp    80106c5a <alltraps>

801077b6 <vector137>:
801077b6:	6a 00                	push   $0x0
801077b8:	68 89 00 00 00       	push   $0x89
801077bd:	e9 98 f4 ff ff       	jmp    80106c5a <alltraps>

801077c2 <vector138>:
801077c2:	6a 00                	push   $0x0
801077c4:	68 8a 00 00 00       	push   $0x8a
801077c9:	e9 8c f4 ff ff       	jmp    80106c5a <alltraps>

801077ce <vector139>:
801077ce:	6a 00                	push   $0x0
801077d0:	68 8b 00 00 00       	push   $0x8b
801077d5:	e9 80 f4 ff ff       	jmp    80106c5a <alltraps>

801077da <vector140>:
801077da:	6a 00                	push   $0x0
801077dc:	68 8c 00 00 00       	push   $0x8c
801077e1:	e9 74 f4 ff ff       	jmp    80106c5a <alltraps>

801077e6 <vector141>:
801077e6:	6a 00                	push   $0x0
801077e8:	68 8d 00 00 00       	push   $0x8d
801077ed:	e9 68 f4 ff ff       	jmp    80106c5a <alltraps>

801077f2 <vector142>:
801077f2:	6a 00                	push   $0x0
801077f4:	68 8e 00 00 00       	push   $0x8e
801077f9:	e9 5c f4 ff ff       	jmp    80106c5a <alltraps>

801077fe <vector143>:
801077fe:	6a 00                	push   $0x0
80107800:	68 8f 00 00 00       	push   $0x8f
80107805:	e9 50 f4 ff ff       	jmp    80106c5a <alltraps>

8010780a <vector144>:
8010780a:	6a 00                	push   $0x0
8010780c:	68 90 00 00 00       	push   $0x90
80107811:	e9 44 f4 ff ff       	jmp    80106c5a <alltraps>

80107816 <vector145>:
80107816:	6a 00                	push   $0x0
80107818:	68 91 00 00 00       	push   $0x91
8010781d:	e9 38 f4 ff ff       	jmp    80106c5a <alltraps>

80107822 <vector146>:
80107822:	6a 00                	push   $0x0
80107824:	68 92 00 00 00       	push   $0x92
80107829:	e9 2c f4 ff ff       	jmp    80106c5a <alltraps>

8010782e <vector147>:
8010782e:	6a 00                	push   $0x0
80107830:	68 93 00 00 00       	push   $0x93
80107835:	e9 20 f4 ff ff       	jmp    80106c5a <alltraps>

8010783a <vector148>:
8010783a:	6a 00                	push   $0x0
8010783c:	68 94 00 00 00       	push   $0x94
80107841:	e9 14 f4 ff ff       	jmp    80106c5a <alltraps>

80107846 <vector149>:
80107846:	6a 00                	push   $0x0
80107848:	68 95 00 00 00       	push   $0x95
8010784d:	e9 08 f4 ff ff       	jmp    80106c5a <alltraps>

80107852 <vector150>:
80107852:	6a 00                	push   $0x0
80107854:	68 96 00 00 00       	push   $0x96
80107859:	e9 fc f3 ff ff       	jmp    80106c5a <alltraps>

8010785e <vector151>:
8010785e:	6a 00                	push   $0x0
80107860:	68 97 00 00 00       	push   $0x97
80107865:	e9 f0 f3 ff ff       	jmp    80106c5a <alltraps>

8010786a <vector152>:
8010786a:	6a 00                	push   $0x0
8010786c:	68 98 00 00 00       	push   $0x98
80107871:	e9 e4 f3 ff ff       	jmp    80106c5a <alltraps>

80107876 <vector153>:
80107876:	6a 00                	push   $0x0
80107878:	68 99 00 00 00       	push   $0x99
8010787d:	e9 d8 f3 ff ff       	jmp    80106c5a <alltraps>

80107882 <vector154>:
80107882:	6a 00                	push   $0x0
80107884:	68 9a 00 00 00       	push   $0x9a
80107889:	e9 cc f3 ff ff       	jmp    80106c5a <alltraps>

8010788e <vector155>:
8010788e:	6a 00                	push   $0x0
80107890:	68 9b 00 00 00       	push   $0x9b
80107895:	e9 c0 f3 ff ff       	jmp    80106c5a <alltraps>

8010789a <vector156>:
8010789a:	6a 00                	push   $0x0
8010789c:	68 9c 00 00 00       	push   $0x9c
801078a1:	e9 b4 f3 ff ff       	jmp    80106c5a <alltraps>

801078a6 <vector157>:
801078a6:	6a 00                	push   $0x0
801078a8:	68 9d 00 00 00       	push   $0x9d
801078ad:	e9 a8 f3 ff ff       	jmp    80106c5a <alltraps>

801078b2 <vector158>:
801078b2:	6a 00                	push   $0x0
801078b4:	68 9e 00 00 00       	push   $0x9e
801078b9:	e9 9c f3 ff ff       	jmp    80106c5a <alltraps>

801078be <vector159>:
801078be:	6a 00                	push   $0x0
801078c0:	68 9f 00 00 00       	push   $0x9f
801078c5:	e9 90 f3 ff ff       	jmp    80106c5a <alltraps>

801078ca <vector160>:
801078ca:	6a 00                	push   $0x0
801078cc:	68 a0 00 00 00       	push   $0xa0
801078d1:	e9 84 f3 ff ff       	jmp    80106c5a <alltraps>

801078d6 <vector161>:
801078d6:	6a 00                	push   $0x0
801078d8:	68 a1 00 00 00       	push   $0xa1
801078dd:	e9 78 f3 ff ff       	jmp    80106c5a <alltraps>

801078e2 <vector162>:
801078e2:	6a 00                	push   $0x0
801078e4:	68 a2 00 00 00       	push   $0xa2
801078e9:	e9 6c f3 ff ff       	jmp    80106c5a <alltraps>

801078ee <vector163>:
801078ee:	6a 00                	push   $0x0
801078f0:	68 a3 00 00 00       	push   $0xa3
801078f5:	e9 60 f3 ff ff       	jmp    80106c5a <alltraps>

801078fa <vector164>:
801078fa:	6a 00                	push   $0x0
801078fc:	68 a4 00 00 00       	push   $0xa4
80107901:	e9 54 f3 ff ff       	jmp    80106c5a <alltraps>

80107906 <vector165>:
80107906:	6a 00                	push   $0x0
80107908:	68 a5 00 00 00       	push   $0xa5
8010790d:	e9 48 f3 ff ff       	jmp    80106c5a <alltraps>

80107912 <vector166>:
80107912:	6a 00                	push   $0x0
80107914:	68 a6 00 00 00       	push   $0xa6
80107919:	e9 3c f3 ff ff       	jmp    80106c5a <alltraps>

8010791e <vector167>:
8010791e:	6a 00                	push   $0x0
80107920:	68 a7 00 00 00       	push   $0xa7
80107925:	e9 30 f3 ff ff       	jmp    80106c5a <alltraps>

8010792a <vector168>:
8010792a:	6a 00                	push   $0x0
8010792c:	68 a8 00 00 00       	push   $0xa8
80107931:	e9 24 f3 ff ff       	jmp    80106c5a <alltraps>

80107936 <vector169>:
80107936:	6a 00                	push   $0x0
80107938:	68 a9 00 00 00       	push   $0xa9
8010793d:	e9 18 f3 ff ff       	jmp    80106c5a <alltraps>

80107942 <vector170>:
80107942:	6a 00                	push   $0x0
80107944:	68 aa 00 00 00       	push   $0xaa
80107949:	e9 0c f3 ff ff       	jmp    80106c5a <alltraps>

8010794e <vector171>:
8010794e:	6a 00                	push   $0x0
80107950:	68 ab 00 00 00       	push   $0xab
80107955:	e9 00 f3 ff ff       	jmp    80106c5a <alltraps>

8010795a <vector172>:
8010795a:	6a 00                	push   $0x0
8010795c:	68 ac 00 00 00       	push   $0xac
80107961:	e9 f4 f2 ff ff       	jmp    80106c5a <alltraps>

80107966 <vector173>:
80107966:	6a 00                	push   $0x0
80107968:	68 ad 00 00 00       	push   $0xad
8010796d:	e9 e8 f2 ff ff       	jmp    80106c5a <alltraps>

80107972 <vector174>:
80107972:	6a 00                	push   $0x0
80107974:	68 ae 00 00 00       	push   $0xae
80107979:	e9 dc f2 ff ff       	jmp    80106c5a <alltraps>

8010797e <vector175>:
8010797e:	6a 00                	push   $0x0
80107980:	68 af 00 00 00       	push   $0xaf
80107985:	e9 d0 f2 ff ff       	jmp    80106c5a <alltraps>

8010798a <vector176>:
8010798a:	6a 00                	push   $0x0
8010798c:	68 b0 00 00 00       	push   $0xb0
80107991:	e9 c4 f2 ff ff       	jmp    80106c5a <alltraps>

80107996 <vector177>:
80107996:	6a 00                	push   $0x0
80107998:	68 b1 00 00 00       	push   $0xb1
8010799d:	e9 b8 f2 ff ff       	jmp    80106c5a <alltraps>

801079a2 <vector178>:
801079a2:	6a 00                	push   $0x0
801079a4:	68 b2 00 00 00       	push   $0xb2
801079a9:	e9 ac f2 ff ff       	jmp    80106c5a <alltraps>

801079ae <vector179>:
801079ae:	6a 00                	push   $0x0
801079b0:	68 b3 00 00 00       	push   $0xb3
801079b5:	e9 a0 f2 ff ff       	jmp    80106c5a <alltraps>

801079ba <vector180>:
801079ba:	6a 00                	push   $0x0
801079bc:	68 b4 00 00 00       	push   $0xb4
801079c1:	e9 94 f2 ff ff       	jmp    80106c5a <alltraps>

801079c6 <vector181>:
801079c6:	6a 00                	push   $0x0
801079c8:	68 b5 00 00 00       	push   $0xb5
801079cd:	e9 88 f2 ff ff       	jmp    80106c5a <alltraps>

801079d2 <vector182>:
801079d2:	6a 00                	push   $0x0
801079d4:	68 b6 00 00 00       	push   $0xb6
801079d9:	e9 7c f2 ff ff       	jmp    80106c5a <alltraps>

801079de <vector183>:
801079de:	6a 00                	push   $0x0
801079e0:	68 b7 00 00 00       	push   $0xb7
801079e5:	e9 70 f2 ff ff       	jmp    80106c5a <alltraps>

801079ea <vector184>:
801079ea:	6a 00                	push   $0x0
801079ec:	68 b8 00 00 00       	push   $0xb8
801079f1:	e9 64 f2 ff ff       	jmp    80106c5a <alltraps>

801079f6 <vector185>:
801079f6:	6a 00                	push   $0x0
801079f8:	68 b9 00 00 00       	push   $0xb9
801079fd:	e9 58 f2 ff ff       	jmp    80106c5a <alltraps>

80107a02 <vector186>:
80107a02:	6a 00                	push   $0x0
80107a04:	68 ba 00 00 00       	push   $0xba
80107a09:	e9 4c f2 ff ff       	jmp    80106c5a <alltraps>

80107a0e <vector187>:
80107a0e:	6a 00                	push   $0x0
80107a10:	68 bb 00 00 00       	push   $0xbb
80107a15:	e9 40 f2 ff ff       	jmp    80106c5a <alltraps>

80107a1a <vector188>:
80107a1a:	6a 00                	push   $0x0
80107a1c:	68 bc 00 00 00       	push   $0xbc
80107a21:	e9 34 f2 ff ff       	jmp    80106c5a <alltraps>

80107a26 <vector189>:
80107a26:	6a 00                	push   $0x0
80107a28:	68 bd 00 00 00       	push   $0xbd
80107a2d:	e9 28 f2 ff ff       	jmp    80106c5a <alltraps>

80107a32 <vector190>:
80107a32:	6a 00                	push   $0x0
80107a34:	68 be 00 00 00       	push   $0xbe
80107a39:	e9 1c f2 ff ff       	jmp    80106c5a <alltraps>

80107a3e <vector191>:
80107a3e:	6a 00                	push   $0x0
80107a40:	68 bf 00 00 00       	push   $0xbf
80107a45:	e9 10 f2 ff ff       	jmp    80106c5a <alltraps>

80107a4a <vector192>:
80107a4a:	6a 00                	push   $0x0
80107a4c:	68 c0 00 00 00       	push   $0xc0
80107a51:	e9 04 f2 ff ff       	jmp    80106c5a <alltraps>

80107a56 <vector193>:
80107a56:	6a 00                	push   $0x0
80107a58:	68 c1 00 00 00       	push   $0xc1
80107a5d:	e9 f8 f1 ff ff       	jmp    80106c5a <alltraps>

80107a62 <vector194>:
80107a62:	6a 00                	push   $0x0
80107a64:	68 c2 00 00 00       	push   $0xc2
80107a69:	e9 ec f1 ff ff       	jmp    80106c5a <alltraps>

80107a6e <vector195>:
80107a6e:	6a 00                	push   $0x0
80107a70:	68 c3 00 00 00       	push   $0xc3
80107a75:	e9 e0 f1 ff ff       	jmp    80106c5a <alltraps>

80107a7a <vector196>:
80107a7a:	6a 00                	push   $0x0
80107a7c:	68 c4 00 00 00       	push   $0xc4
80107a81:	e9 d4 f1 ff ff       	jmp    80106c5a <alltraps>

80107a86 <vector197>:
80107a86:	6a 00                	push   $0x0
80107a88:	68 c5 00 00 00       	push   $0xc5
80107a8d:	e9 c8 f1 ff ff       	jmp    80106c5a <alltraps>

80107a92 <vector198>:
80107a92:	6a 00                	push   $0x0
80107a94:	68 c6 00 00 00       	push   $0xc6
80107a99:	e9 bc f1 ff ff       	jmp    80106c5a <alltraps>

80107a9e <vector199>:
80107a9e:	6a 00                	push   $0x0
80107aa0:	68 c7 00 00 00       	push   $0xc7
80107aa5:	e9 b0 f1 ff ff       	jmp    80106c5a <alltraps>

80107aaa <vector200>:
80107aaa:	6a 00                	push   $0x0
80107aac:	68 c8 00 00 00       	push   $0xc8
80107ab1:	e9 a4 f1 ff ff       	jmp    80106c5a <alltraps>

80107ab6 <vector201>:
80107ab6:	6a 00                	push   $0x0
80107ab8:	68 c9 00 00 00       	push   $0xc9
80107abd:	e9 98 f1 ff ff       	jmp    80106c5a <alltraps>

80107ac2 <vector202>:
80107ac2:	6a 00                	push   $0x0
80107ac4:	68 ca 00 00 00       	push   $0xca
80107ac9:	e9 8c f1 ff ff       	jmp    80106c5a <alltraps>

80107ace <vector203>:
80107ace:	6a 00                	push   $0x0
80107ad0:	68 cb 00 00 00       	push   $0xcb
80107ad5:	e9 80 f1 ff ff       	jmp    80106c5a <alltraps>

80107ada <vector204>:
80107ada:	6a 00                	push   $0x0
80107adc:	68 cc 00 00 00       	push   $0xcc
80107ae1:	e9 74 f1 ff ff       	jmp    80106c5a <alltraps>

80107ae6 <vector205>:
80107ae6:	6a 00                	push   $0x0
80107ae8:	68 cd 00 00 00       	push   $0xcd
80107aed:	e9 68 f1 ff ff       	jmp    80106c5a <alltraps>

80107af2 <vector206>:
80107af2:	6a 00                	push   $0x0
80107af4:	68 ce 00 00 00       	push   $0xce
80107af9:	e9 5c f1 ff ff       	jmp    80106c5a <alltraps>

80107afe <vector207>:
80107afe:	6a 00                	push   $0x0
80107b00:	68 cf 00 00 00       	push   $0xcf
80107b05:	e9 50 f1 ff ff       	jmp    80106c5a <alltraps>

80107b0a <vector208>:
80107b0a:	6a 00                	push   $0x0
80107b0c:	68 d0 00 00 00       	push   $0xd0
80107b11:	e9 44 f1 ff ff       	jmp    80106c5a <alltraps>

80107b16 <vector209>:
80107b16:	6a 00                	push   $0x0
80107b18:	68 d1 00 00 00       	push   $0xd1
80107b1d:	e9 38 f1 ff ff       	jmp    80106c5a <alltraps>

80107b22 <vector210>:
80107b22:	6a 00                	push   $0x0
80107b24:	68 d2 00 00 00       	push   $0xd2
80107b29:	e9 2c f1 ff ff       	jmp    80106c5a <alltraps>

80107b2e <vector211>:
80107b2e:	6a 00                	push   $0x0
80107b30:	68 d3 00 00 00       	push   $0xd3
80107b35:	e9 20 f1 ff ff       	jmp    80106c5a <alltraps>

80107b3a <vector212>:
80107b3a:	6a 00                	push   $0x0
80107b3c:	68 d4 00 00 00       	push   $0xd4
80107b41:	e9 14 f1 ff ff       	jmp    80106c5a <alltraps>

80107b46 <vector213>:
80107b46:	6a 00                	push   $0x0
80107b48:	68 d5 00 00 00       	push   $0xd5
80107b4d:	e9 08 f1 ff ff       	jmp    80106c5a <alltraps>

80107b52 <vector214>:
80107b52:	6a 00                	push   $0x0
80107b54:	68 d6 00 00 00       	push   $0xd6
80107b59:	e9 fc f0 ff ff       	jmp    80106c5a <alltraps>

80107b5e <vector215>:
80107b5e:	6a 00                	push   $0x0
80107b60:	68 d7 00 00 00       	push   $0xd7
80107b65:	e9 f0 f0 ff ff       	jmp    80106c5a <alltraps>

80107b6a <vector216>:
80107b6a:	6a 00                	push   $0x0
80107b6c:	68 d8 00 00 00       	push   $0xd8
80107b71:	e9 e4 f0 ff ff       	jmp    80106c5a <alltraps>

80107b76 <vector217>:
80107b76:	6a 00                	push   $0x0
80107b78:	68 d9 00 00 00       	push   $0xd9
80107b7d:	e9 d8 f0 ff ff       	jmp    80106c5a <alltraps>

80107b82 <vector218>:
80107b82:	6a 00                	push   $0x0
80107b84:	68 da 00 00 00       	push   $0xda
80107b89:	e9 cc f0 ff ff       	jmp    80106c5a <alltraps>

80107b8e <vector219>:
80107b8e:	6a 00                	push   $0x0
80107b90:	68 db 00 00 00       	push   $0xdb
80107b95:	e9 c0 f0 ff ff       	jmp    80106c5a <alltraps>

80107b9a <vector220>:
80107b9a:	6a 00                	push   $0x0
80107b9c:	68 dc 00 00 00       	push   $0xdc
80107ba1:	e9 b4 f0 ff ff       	jmp    80106c5a <alltraps>

80107ba6 <vector221>:
80107ba6:	6a 00                	push   $0x0
80107ba8:	68 dd 00 00 00       	push   $0xdd
80107bad:	e9 a8 f0 ff ff       	jmp    80106c5a <alltraps>

80107bb2 <vector222>:
80107bb2:	6a 00                	push   $0x0
80107bb4:	68 de 00 00 00       	push   $0xde
80107bb9:	e9 9c f0 ff ff       	jmp    80106c5a <alltraps>

80107bbe <vector223>:
80107bbe:	6a 00                	push   $0x0
80107bc0:	68 df 00 00 00       	push   $0xdf
80107bc5:	e9 90 f0 ff ff       	jmp    80106c5a <alltraps>

80107bca <vector224>:
80107bca:	6a 00                	push   $0x0
80107bcc:	68 e0 00 00 00       	push   $0xe0
80107bd1:	e9 84 f0 ff ff       	jmp    80106c5a <alltraps>

80107bd6 <vector225>:
80107bd6:	6a 00                	push   $0x0
80107bd8:	68 e1 00 00 00       	push   $0xe1
80107bdd:	e9 78 f0 ff ff       	jmp    80106c5a <alltraps>

80107be2 <vector226>:
80107be2:	6a 00                	push   $0x0
80107be4:	68 e2 00 00 00       	push   $0xe2
80107be9:	e9 6c f0 ff ff       	jmp    80106c5a <alltraps>

80107bee <vector227>:
80107bee:	6a 00                	push   $0x0
80107bf0:	68 e3 00 00 00       	push   $0xe3
80107bf5:	e9 60 f0 ff ff       	jmp    80106c5a <alltraps>

80107bfa <vector228>:
80107bfa:	6a 00                	push   $0x0
80107bfc:	68 e4 00 00 00       	push   $0xe4
80107c01:	e9 54 f0 ff ff       	jmp    80106c5a <alltraps>

80107c06 <vector229>:
80107c06:	6a 00                	push   $0x0
80107c08:	68 e5 00 00 00       	push   $0xe5
80107c0d:	e9 48 f0 ff ff       	jmp    80106c5a <alltraps>

80107c12 <vector230>:
80107c12:	6a 00                	push   $0x0
80107c14:	68 e6 00 00 00       	push   $0xe6
80107c19:	e9 3c f0 ff ff       	jmp    80106c5a <alltraps>

80107c1e <vector231>:
80107c1e:	6a 00                	push   $0x0
80107c20:	68 e7 00 00 00       	push   $0xe7
80107c25:	e9 30 f0 ff ff       	jmp    80106c5a <alltraps>

80107c2a <vector232>:
80107c2a:	6a 00                	push   $0x0
80107c2c:	68 e8 00 00 00       	push   $0xe8
80107c31:	e9 24 f0 ff ff       	jmp    80106c5a <alltraps>

80107c36 <vector233>:
80107c36:	6a 00                	push   $0x0
80107c38:	68 e9 00 00 00       	push   $0xe9
80107c3d:	e9 18 f0 ff ff       	jmp    80106c5a <alltraps>

80107c42 <vector234>:
80107c42:	6a 00                	push   $0x0
80107c44:	68 ea 00 00 00       	push   $0xea
80107c49:	e9 0c f0 ff ff       	jmp    80106c5a <alltraps>

80107c4e <vector235>:
80107c4e:	6a 00                	push   $0x0
80107c50:	68 eb 00 00 00       	push   $0xeb
80107c55:	e9 00 f0 ff ff       	jmp    80106c5a <alltraps>

80107c5a <vector236>:
80107c5a:	6a 00                	push   $0x0
80107c5c:	68 ec 00 00 00       	push   $0xec
80107c61:	e9 f4 ef ff ff       	jmp    80106c5a <alltraps>

80107c66 <vector237>:
80107c66:	6a 00                	push   $0x0
80107c68:	68 ed 00 00 00       	push   $0xed
80107c6d:	e9 e8 ef ff ff       	jmp    80106c5a <alltraps>

80107c72 <vector238>:
80107c72:	6a 00                	push   $0x0
80107c74:	68 ee 00 00 00       	push   $0xee
80107c79:	e9 dc ef ff ff       	jmp    80106c5a <alltraps>

80107c7e <vector239>:
80107c7e:	6a 00                	push   $0x0
80107c80:	68 ef 00 00 00       	push   $0xef
80107c85:	e9 d0 ef ff ff       	jmp    80106c5a <alltraps>

80107c8a <vector240>:
80107c8a:	6a 00                	push   $0x0
80107c8c:	68 f0 00 00 00       	push   $0xf0
80107c91:	e9 c4 ef ff ff       	jmp    80106c5a <alltraps>

80107c96 <vector241>:
80107c96:	6a 00                	push   $0x0
80107c98:	68 f1 00 00 00       	push   $0xf1
80107c9d:	e9 b8 ef ff ff       	jmp    80106c5a <alltraps>

80107ca2 <vector242>:
80107ca2:	6a 00                	push   $0x0
80107ca4:	68 f2 00 00 00       	push   $0xf2
80107ca9:	e9 ac ef ff ff       	jmp    80106c5a <alltraps>

80107cae <vector243>:
80107cae:	6a 00                	push   $0x0
80107cb0:	68 f3 00 00 00       	push   $0xf3
80107cb5:	e9 a0 ef ff ff       	jmp    80106c5a <alltraps>

80107cba <vector244>:
80107cba:	6a 00                	push   $0x0
80107cbc:	68 f4 00 00 00       	push   $0xf4
80107cc1:	e9 94 ef ff ff       	jmp    80106c5a <alltraps>

80107cc6 <vector245>:
80107cc6:	6a 00                	push   $0x0
80107cc8:	68 f5 00 00 00       	push   $0xf5
80107ccd:	e9 88 ef ff ff       	jmp    80106c5a <alltraps>

80107cd2 <vector246>:
80107cd2:	6a 00                	push   $0x0
80107cd4:	68 f6 00 00 00       	push   $0xf6
80107cd9:	e9 7c ef ff ff       	jmp    80106c5a <alltraps>

80107cde <vector247>:
80107cde:	6a 00                	push   $0x0
80107ce0:	68 f7 00 00 00       	push   $0xf7
80107ce5:	e9 70 ef ff ff       	jmp    80106c5a <alltraps>

80107cea <vector248>:
80107cea:	6a 00                	push   $0x0
80107cec:	68 f8 00 00 00       	push   $0xf8
80107cf1:	e9 64 ef ff ff       	jmp    80106c5a <alltraps>

80107cf6 <vector249>:
80107cf6:	6a 00                	push   $0x0
80107cf8:	68 f9 00 00 00       	push   $0xf9
80107cfd:	e9 58 ef ff ff       	jmp    80106c5a <alltraps>

80107d02 <vector250>:
80107d02:	6a 00                	push   $0x0
80107d04:	68 fa 00 00 00       	push   $0xfa
80107d09:	e9 4c ef ff ff       	jmp    80106c5a <alltraps>

80107d0e <vector251>:
80107d0e:	6a 00                	push   $0x0
80107d10:	68 fb 00 00 00       	push   $0xfb
80107d15:	e9 40 ef ff ff       	jmp    80106c5a <alltraps>

80107d1a <vector252>:
80107d1a:	6a 00                	push   $0x0
80107d1c:	68 fc 00 00 00       	push   $0xfc
80107d21:	e9 34 ef ff ff       	jmp    80106c5a <alltraps>

80107d26 <vector253>:
80107d26:	6a 00                	push   $0x0
80107d28:	68 fd 00 00 00       	push   $0xfd
80107d2d:	e9 28 ef ff ff       	jmp    80106c5a <alltraps>

80107d32 <vector254>:
80107d32:	6a 00                	push   $0x0
80107d34:	68 fe 00 00 00       	push   $0xfe
80107d39:	e9 1c ef ff ff       	jmp    80106c5a <alltraps>

80107d3e <vector255>:
80107d3e:	6a 00                	push   $0x0
80107d40:	68 ff 00 00 00       	push   $0xff
80107d45:	e9 10 ef ff ff       	jmp    80106c5a <alltraps>

80107d4a <lgdt>:
{
80107d4a:	55                   	push   %ebp
80107d4b:	89 e5                	mov    %esp,%ebp
80107d4d:	83 ec 10             	sub    $0x10,%esp
  pd[0] = size-1;
80107d50:	8b 45 0c             	mov    0xc(%ebp),%eax
80107d53:	83 e8 01             	sub    $0x1,%eax
80107d56:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
  pd[1] = (uint)p;
80107d5a:	8b 45 08             	mov    0x8(%ebp),%eax
80107d5d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  pd[2] = (uint)p >> 16;
80107d61:	8b 45 08             	mov    0x8(%ebp),%eax
80107d64:	c1 e8 10             	shr    $0x10,%eax
80107d67:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
  asm volatile("lgdt (%0)" : : "r" (pd));
80107d6b:	8d 45 fa             	lea    -0x6(%ebp),%eax
80107d6e:	0f 01 10             	lgdtl  (%eax)
}
80107d71:	90                   	nop
80107d72:	c9                   	leave  
80107d73:	c3                   	ret    

80107d74 <ltr>:
{
80107d74:	55                   	push   %ebp
80107d75:	89 e5                	mov    %esp,%ebp
80107d77:	83 ec 04             	sub    $0x4,%esp
80107d7a:	8b 45 08             	mov    0x8(%ebp),%eax
80107d7d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  asm volatile("ltr %0" : : "r" (sel));
80107d81:	0f b7 45 fc          	movzwl -0x4(%ebp),%eax
80107d85:	0f 00 d8             	ltr    %ax
}
80107d88:	90                   	nop
80107d89:	c9                   	leave  
80107d8a:	c3                   	ret    

80107d8b <lcr3>:

static inline void
lcr3(uint val)
{
80107d8b:	55                   	push   %ebp
80107d8c:	89 e5                	mov    %esp,%ebp
  asm volatile("movl %0,%%cr3" : : "r" (val));
80107d8e:	8b 45 08             	mov    0x8(%ebp),%eax
80107d91:	0f 22 d8             	mov    %eax,%cr3
}
80107d94:	90                   	nop
80107d95:	5d                   	pop    %ebp
80107d96:	c3                   	ret    

80107d97 <seginit>:

// Set up CPU's kernel segment descriptors.
// Run once on entry on each CPU.
void
seginit(void)
{
80107d97:	f3 0f 1e fb          	endbr32 
80107d9b:	55                   	push   %ebp
80107d9c:	89 e5                	mov    %esp,%ebp
80107d9e:	83 ec 18             	sub    $0x18,%esp

  // Map "logical" addresses to virtual addresses using identity map.
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
80107da1:	e8 cc c6 ff ff       	call   80104472 <cpuid>
80107da6:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80107dac:	05 20 58 11 80       	add    $0x80115820,%eax
80107db1:	89 45 f4             	mov    %eax,-0xc(%ebp)
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
80107db4:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107db7:	66 c7 40 78 ff ff    	movw   $0xffff,0x78(%eax)
80107dbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107dc0:	66 c7 40 7a 00 00    	movw   $0x0,0x7a(%eax)
80107dc6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107dc9:	c6 40 7c 00          	movb   $0x0,0x7c(%eax)
80107dcd:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107dd0:	0f b6 50 7d          	movzbl 0x7d(%eax),%edx
80107dd4:	83 e2 f0             	and    $0xfffffff0,%edx
80107dd7:	83 ca 0a             	or     $0xa,%edx
80107dda:	88 50 7d             	mov    %dl,0x7d(%eax)
80107ddd:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107de0:	0f b6 50 7d          	movzbl 0x7d(%eax),%edx
80107de4:	83 ca 10             	or     $0x10,%edx
80107de7:	88 50 7d             	mov    %dl,0x7d(%eax)
80107dea:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ded:	0f b6 50 7d          	movzbl 0x7d(%eax),%edx
80107df1:	83 e2 9f             	and    $0xffffff9f,%edx
80107df4:	88 50 7d             	mov    %dl,0x7d(%eax)
80107df7:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107dfa:	0f b6 50 7d          	movzbl 0x7d(%eax),%edx
80107dfe:	83 ca 80             	or     $0xffffff80,%edx
80107e01:	88 50 7d             	mov    %dl,0x7d(%eax)
80107e04:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e07:	0f b6 50 7e          	movzbl 0x7e(%eax),%edx
80107e0b:	83 ca 0f             	or     $0xf,%edx
80107e0e:	88 50 7e             	mov    %dl,0x7e(%eax)
80107e11:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e14:	0f b6 50 7e          	movzbl 0x7e(%eax),%edx
80107e18:	83 e2 ef             	and    $0xffffffef,%edx
80107e1b:	88 50 7e             	mov    %dl,0x7e(%eax)
80107e1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e21:	0f b6 50 7e          	movzbl 0x7e(%eax),%edx
80107e25:	83 e2 df             	and    $0xffffffdf,%edx
80107e28:	88 50 7e             	mov    %dl,0x7e(%eax)
80107e2b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e2e:	0f b6 50 7e          	movzbl 0x7e(%eax),%edx
80107e32:	83 ca 40             	or     $0x40,%edx
80107e35:	88 50 7e             	mov    %dl,0x7e(%eax)
80107e38:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e3b:	0f b6 50 7e          	movzbl 0x7e(%eax),%edx
80107e3f:	83 ca 80             	or     $0xffffff80,%edx
80107e42:	88 50 7e             	mov    %dl,0x7e(%eax)
80107e45:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e48:	c6 40 7f 00          	movb   $0x0,0x7f(%eax)
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
80107e4c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e4f:	66 c7 80 80 00 00 00 	movw   $0xffff,0x80(%eax)
80107e56:	ff ff 
80107e58:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e5b:	66 c7 80 82 00 00 00 	movw   $0x0,0x82(%eax)
80107e62:	00 00 
80107e64:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e67:	c6 80 84 00 00 00 00 	movb   $0x0,0x84(%eax)
80107e6e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e71:	0f b6 90 85 00 00 00 	movzbl 0x85(%eax),%edx
80107e78:	83 e2 f0             	and    $0xfffffff0,%edx
80107e7b:	83 ca 02             	or     $0x2,%edx
80107e7e:	88 90 85 00 00 00    	mov    %dl,0x85(%eax)
80107e84:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e87:	0f b6 90 85 00 00 00 	movzbl 0x85(%eax),%edx
80107e8e:	83 ca 10             	or     $0x10,%edx
80107e91:	88 90 85 00 00 00    	mov    %dl,0x85(%eax)
80107e97:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107e9a:	0f b6 90 85 00 00 00 	movzbl 0x85(%eax),%edx
80107ea1:	83 e2 9f             	and    $0xffffff9f,%edx
80107ea4:	88 90 85 00 00 00    	mov    %dl,0x85(%eax)
80107eaa:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ead:	0f b6 90 85 00 00 00 	movzbl 0x85(%eax),%edx
80107eb4:	83 ca 80             	or     $0xffffff80,%edx
80107eb7:	88 90 85 00 00 00    	mov    %dl,0x85(%eax)
80107ebd:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ec0:	0f b6 90 86 00 00 00 	movzbl 0x86(%eax),%edx
80107ec7:	83 ca 0f             	or     $0xf,%edx
80107eca:	88 90 86 00 00 00    	mov    %dl,0x86(%eax)
80107ed0:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ed3:	0f b6 90 86 00 00 00 	movzbl 0x86(%eax),%edx
80107eda:	83 e2 ef             	and    $0xffffffef,%edx
80107edd:	88 90 86 00 00 00    	mov    %dl,0x86(%eax)
80107ee3:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ee6:	0f b6 90 86 00 00 00 	movzbl 0x86(%eax),%edx
80107eed:	83 e2 df             	and    $0xffffffdf,%edx
80107ef0:	88 90 86 00 00 00    	mov    %dl,0x86(%eax)
80107ef6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ef9:	0f b6 90 86 00 00 00 	movzbl 0x86(%eax),%edx
80107f00:	83 ca 40             	or     $0x40,%edx
80107f03:	88 90 86 00 00 00    	mov    %dl,0x86(%eax)
80107f09:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f0c:	0f b6 90 86 00 00 00 	movzbl 0x86(%eax),%edx
80107f13:	83 ca 80             	or     $0xffffff80,%edx
80107f16:	88 90 86 00 00 00    	mov    %dl,0x86(%eax)
80107f1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f1f:	c6 80 87 00 00 00 00 	movb   $0x0,0x87(%eax)
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
80107f26:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f29:	66 c7 80 88 00 00 00 	movw   $0xffff,0x88(%eax)
80107f30:	ff ff 
80107f32:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f35:	66 c7 80 8a 00 00 00 	movw   $0x0,0x8a(%eax)
80107f3c:	00 00 
80107f3e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f41:	c6 80 8c 00 00 00 00 	movb   $0x0,0x8c(%eax)
80107f48:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f4b:	0f b6 90 8d 00 00 00 	movzbl 0x8d(%eax),%edx
80107f52:	83 e2 f0             	and    $0xfffffff0,%edx
80107f55:	83 ca 0a             	or     $0xa,%edx
80107f58:	88 90 8d 00 00 00    	mov    %dl,0x8d(%eax)
80107f5e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f61:	0f b6 90 8d 00 00 00 	movzbl 0x8d(%eax),%edx
80107f68:	83 ca 10             	or     $0x10,%edx
80107f6b:	88 90 8d 00 00 00    	mov    %dl,0x8d(%eax)
80107f71:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f74:	0f b6 90 8d 00 00 00 	movzbl 0x8d(%eax),%edx
80107f7b:	83 ca 60             	or     $0x60,%edx
80107f7e:	88 90 8d 00 00 00    	mov    %dl,0x8d(%eax)
80107f84:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f87:	0f b6 90 8d 00 00 00 	movzbl 0x8d(%eax),%edx
80107f8e:	83 ca 80             	or     $0xffffff80,%edx
80107f91:	88 90 8d 00 00 00    	mov    %dl,0x8d(%eax)
80107f97:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107f9a:	0f b6 90 8e 00 00 00 	movzbl 0x8e(%eax),%edx
80107fa1:	83 ca 0f             	or     $0xf,%edx
80107fa4:	88 90 8e 00 00 00    	mov    %dl,0x8e(%eax)
80107faa:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107fad:	0f b6 90 8e 00 00 00 	movzbl 0x8e(%eax),%edx
80107fb4:	83 e2 ef             	and    $0xffffffef,%edx
80107fb7:	88 90 8e 00 00 00    	mov    %dl,0x8e(%eax)
80107fbd:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107fc0:	0f b6 90 8e 00 00 00 	movzbl 0x8e(%eax),%edx
80107fc7:	83 e2 df             	and    $0xffffffdf,%edx
80107fca:	88 90 8e 00 00 00    	mov    %dl,0x8e(%eax)
80107fd0:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107fd3:	0f b6 90 8e 00 00 00 	movzbl 0x8e(%eax),%edx
80107fda:	83 ca 40             	or     $0x40,%edx
80107fdd:	88 90 8e 00 00 00    	mov    %dl,0x8e(%eax)
80107fe3:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107fe6:	0f b6 90 8e 00 00 00 	movzbl 0x8e(%eax),%edx
80107fed:	83 ca 80             	or     $0xffffff80,%edx
80107ff0:	88 90 8e 00 00 00    	mov    %dl,0x8e(%eax)
80107ff6:	8b 45 f4             	mov    -0xc(%ebp),%eax
80107ff9:	c6 80 8f 00 00 00 00 	movb   $0x0,0x8f(%eax)
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
80108000:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108003:	66 c7 80 90 00 00 00 	movw   $0xffff,0x90(%eax)
8010800a:	ff ff 
8010800c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010800f:	66 c7 80 92 00 00 00 	movw   $0x0,0x92(%eax)
80108016:	00 00 
80108018:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010801b:	c6 80 94 00 00 00 00 	movb   $0x0,0x94(%eax)
80108022:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108025:	0f b6 90 95 00 00 00 	movzbl 0x95(%eax),%edx
8010802c:	83 e2 f0             	and    $0xfffffff0,%edx
8010802f:	83 ca 02             	or     $0x2,%edx
80108032:	88 90 95 00 00 00    	mov    %dl,0x95(%eax)
80108038:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010803b:	0f b6 90 95 00 00 00 	movzbl 0x95(%eax),%edx
80108042:	83 ca 10             	or     $0x10,%edx
80108045:	88 90 95 00 00 00    	mov    %dl,0x95(%eax)
8010804b:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010804e:	0f b6 90 95 00 00 00 	movzbl 0x95(%eax),%edx
80108055:	83 ca 60             	or     $0x60,%edx
80108058:	88 90 95 00 00 00    	mov    %dl,0x95(%eax)
8010805e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108061:	0f b6 90 95 00 00 00 	movzbl 0x95(%eax),%edx
80108068:	83 ca 80             	or     $0xffffff80,%edx
8010806b:	88 90 95 00 00 00    	mov    %dl,0x95(%eax)
80108071:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108074:	0f b6 90 96 00 00 00 	movzbl 0x96(%eax),%edx
8010807b:	83 ca 0f             	or     $0xf,%edx
8010807e:	88 90 96 00 00 00    	mov    %dl,0x96(%eax)
80108084:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108087:	0f b6 90 96 00 00 00 	movzbl 0x96(%eax),%edx
8010808e:	83 e2 ef             	and    $0xffffffef,%edx
80108091:	88 90 96 00 00 00    	mov    %dl,0x96(%eax)
80108097:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010809a:	0f b6 90 96 00 00 00 	movzbl 0x96(%eax),%edx
801080a1:	83 e2 df             	and    $0xffffffdf,%edx
801080a4:	88 90 96 00 00 00    	mov    %dl,0x96(%eax)
801080aa:	8b 45 f4             	mov    -0xc(%ebp),%eax
801080ad:	0f b6 90 96 00 00 00 	movzbl 0x96(%eax),%edx
801080b4:	83 ca 40             	or     $0x40,%edx
801080b7:	88 90 96 00 00 00    	mov    %dl,0x96(%eax)
801080bd:	8b 45 f4             	mov    -0xc(%ebp),%eax
801080c0:	0f b6 90 96 00 00 00 	movzbl 0x96(%eax),%edx
801080c7:	83 ca 80             	or     $0xffffff80,%edx
801080ca:	88 90 96 00 00 00    	mov    %dl,0x96(%eax)
801080d0:	8b 45 f4             	mov    -0xc(%ebp),%eax
801080d3:	c6 80 97 00 00 00 00 	movb   $0x0,0x97(%eax)
  lgdt(c->gdt, sizeof(c->gdt));
801080da:	8b 45 f4             	mov    -0xc(%ebp),%eax
801080dd:	83 c0 70             	add    $0x70,%eax
801080e0:	83 ec 08             	sub    $0x8,%esp
801080e3:	6a 30                	push   $0x30
801080e5:	50                   	push   %eax
801080e6:	e8 5f fc ff ff       	call   80107d4a <lgdt>
801080eb:	83 c4 10             	add    $0x10,%esp
}
801080ee:	90                   	nop
801080ef:	c9                   	leave  
801080f0:	c3                   	ret    

801080f1 <walkpgdir>:
// Return the address of the PTE in page table pgdir
// that corresponds to virtual address va.  If alloc!=0,
// create any required page table pages.
static pte_t *
walkpgdir(pde_t *pgdir, const void *va, int alloc)
{
801080f1:	f3 0f 1e fb          	endbr32 
801080f5:	55                   	push   %ebp
801080f6:	89 e5                	mov    %esp,%ebp
801080f8:	83 ec 18             	sub    $0x18,%esp
  pde_t *pde;
  pte_t *pgtab;

  pde = &pgdir[PDX(va)];
801080fb:	8b 45 0c             	mov    0xc(%ebp),%eax
801080fe:	c1 e8 16             	shr    $0x16,%eax
80108101:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80108108:	8b 45 08             	mov    0x8(%ebp),%eax
8010810b:	01 d0                	add    %edx,%eax
8010810d:	89 45 f0             	mov    %eax,-0x10(%ebp)
  if(*pde & PTE_P){
80108110:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108113:	8b 00                	mov    (%eax),%eax
80108115:	83 e0 01             	and    $0x1,%eax
80108118:	85 c0                	test   %eax,%eax
8010811a:	74 14                	je     80108130 <walkpgdir+0x3f>
    //if (!alloc)
      //cprintf("page directory is good\n");
    pgtab = (pte_t*)P2V(PTE_ADDR(*pde));
8010811c:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010811f:	8b 00                	mov    (%eax),%eax
80108121:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108126:	05 00 00 00 80       	add    $0x80000000,%eax
8010812b:	89 45 f4             	mov    %eax,-0xc(%ebp)
8010812e:	eb 42                	jmp    80108172 <walkpgdir+0x81>
  } else {
    if(!alloc || (pgtab = (pte_t*)kalloc()) == 0)
80108130:	83 7d 10 00          	cmpl   $0x0,0x10(%ebp)
80108134:	74 0e                	je     80108144 <walkpgdir+0x53>
80108136:	e8 0e ad ff ff       	call   80102e49 <kalloc>
8010813b:	89 45 f4             	mov    %eax,-0xc(%ebp)
8010813e:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80108142:	75 07                	jne    8010814b <walkpgdir+0x5a>
      return 0;
80108144:	b8 00 00 00 00       	mov    $0x0,%eax
80108149:	eb 3e                	jmp    80108189 <walkpgdir+0x98>
    // Make sure all those PTE_P bits are zero.
    memset(pgtab, 0, PGSIZE);
8010814b:	83 ec 04             	sub    $0x4,%esp
8010814e:	68 00 10 00 00       	push   $0x1000
80108153:	6a 00                	push   $0x0
80108155:	ff 75 f4             	pushl  -0xc(%ebp)
80108158:	e8 89 d5 ff ff       	call   801056e6 <memset>
8010815d:	83 c4 10             	add    $0x10,%esp
    // The permissions here are overly generous, but they can
    // be further restricted by the permissions in the page table
    // entries, if necessary.
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
80108160:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108163:	05 00 00 00 80       	add    $0x80000000,%eax
80108168:	83 c8 07             	or     $0x7,%eax
8010816b:	89 c2                	mov    %eax,%edx
8010816d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108170:	89 10                	mov    %edx,(%eax)
  }
  return &pgtab[PTX(va)];
80108172:	8b 45 0c             	mov    0xc(%ebp),%eax
80108175:	c1 e8 0c             	shr    $0xc,%eax
80108178:	25 ff 03 00 00       	and    $0x3ff,%eax
8010817d:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80108184:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108187:	01 d0                	add    %edx,%eax
}
80108189:	c9                   	leave  
8010818a:	c3                   	ret    

8010818b <mappages>:
// Create PTEs for virtual addresses starting at va that refer to
// physical addresses starting at pa. va and size might not
// be page-aligned.
static int
mappages(pde_t *pgdir, void *va, uint size, uint pa, int perm)
{
8010818b:	f3 0f 1e fb          	endbr32 
8010818f:	55                   	push   %ebp
80108190:	89 e5                	mov    %esp,%ebp
80108192:	83 ec 18             	sub    $0x18,%esp
  char *a, *last;
  pte_t *pte;

  a = (char*)PGROUNDDOWN((uint)va);
80108195:	8b 45 0c             	mov    0xc(%ebp),%eax
80108198:	25 00 f0 ff ff       	and    $0xfffff000,%eax
8010819d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
801081a0:	8b 55 0c             	mov    0xc(%ebp),%edx
801081a3:	8b 45 10             	mov    0x10(%ebp),%eax
801081a6:	01 d0                	add    %edx,%eax
801081a8:	83 e8 01             	sub    $0x1,%eax
801081ab:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801081b0:	89 45 f0             	mov    %eax,-0x10(%ebp)
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
801081b3:	83 ec 04             	sub    $0x4,%esp
801081b6:	6a 01                	push   $0x1
801081b8:	ff 75 f4             	pushl  -0xc(%ebp)
801081bb:	ff 75 08             	pushl  0x8(%ebp)
801081be:	e8 2e ff ff ff       	call   801080f1 <walkpgdir>
801081c3:	83 c4 10             	add    $0x10,%esp
801081c6:	89 45 ec             	mov    %eax,-0x14(%ebp)
801081c9:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
801081cd:	75 07                	jne    801081d6 <mappages+0x4b>
      return -1;
801081cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801081d4:	eb 6a                	jmp    80108240 <mappages+0xb5>
    if(*pte & (PTE_P | PTE_E))
801081d6:	8b 45 ec             	mov    -0x14(%ebp),%eax
801081d9:	8b 00                	mov    (%eax),%eax
801081db:	25 01 04 00 00       	and    $0x401,%eax
801081e0:	85 c0                	test   %eax,%eax
801081e2:	74 0d                	je     801081f1 <mappages+0x66>
      panic("p4Debug, remapping page");
801081e4:	83 ec 0c             	sub    $0xc,%esp
801081e7:	68 80 9c 10 80       	push   $0x80109c80
801081ec:	e8 17 84 ff ff       	call   80100608 <panic>

    if (perm & PTE_E)
801081f1:	8b 45 18             	mov    0x18(%ebp),%eax
801081f4:	25 00 04 00 00       	and    $0x400,%eax
801081f9:	85 c0                	test   %eax,%eax
801081fb:	74 12                	je     8010820f <mappages+0x84>
      *pte = pa | perm | PTE_E;
801081fd:	8b 45 18             	mov    0x18(%ebp),%eax
80108200:	0b 45 14             	or     0x14(%ebp),%eax
80108203:	80 cc 04             	or     $0x4,%ah
80108206:	89 c2                	mov    %eax,%edx
80108208:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010820b:	89 10                	mov    %edx,(%eax)
8010820d:	eb 10                	jmp    8010821f <mappages+0x94>
    else
      *pte = pa | perm | PTE_P;
8010820f:	8b 45 18             	mov    0x18(%ebp),%eax
80108212:	0b 45 14             	or     0x14(%ebp),%eax
80108215:	83 c8 01             	or     $0x1,%eax
80108218:	89 c2                	mov    %eax,%edx
8010821a:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010821d:	89 10                	mov    %edx,(%eax)


    if(a == last)
8010821f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108222:	3b 45 f0             	cmp    -0x10(%ebp),%eax
80108225:	74 13                	je     8010823a <mappages+0xaf>
      break;
    a += PGSIZE;
80108227:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
    pa += PGSIZE;
8010822e:	81 45 14 00 10 00 00 	addl   $0x1000,0x14(%ebp)
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
80108235:	e9 79 ff ff ff       	jmp    801081b3 <mappages+0x28>
      break;
8010823a:	90                   	nop
  }
  return 0;
8010823b:	b8 00 00 00 00       	mov    $0x0,%eax
}
80108240:	c9                   	leave  
80108241:	c3                   	ret    

80108242 <setupkvm>:
};

// Set up kernel part of a page table.
pde_t*
setupkvm(void)
{
80108242:	f3 0f 1e fb          	endbr32 
80108246:	55                   	push   %ebp
80108247:	89 e5                	mov    %esp,%ebp
80108249:	53                   	push   %ebx
8010824a:	83 ec 14             	sub    $0x14,%esp
  pde_t *pgdir;
  struct kmap *k;

  if((pgdir = (pde_t*)kalloc()) == 0)
8010824d:	e8 f7 ab ff ff       	call   80102e49 <kalloc>
80108252:	89 45 f0             	mov    %eax,-0x10(%ebp)
80108255:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80108259:	75 07                	jne    80108262 <setupkvm+0x20>
    return 0;
8010825b:	b8 00 00 00 00       	mov    $0x0,%eax
80108260:	eb 78                	jmp    801082da <setupkvm+0x98>
  memset(pgdir, 0, PGSIZE);
80108262:	83 ec 04             	sub    $0x4,%esp
80108265:	68 00 10 00 00       	push   $0x1000
8010826a:	6a 00                	push   $0x0
8010826c:	ff 75 f0             	pushl  -0x10(%ebp)
8010826f:	e8 72 d4 ff ff       	call   801056e6 <memset>
80108274:	83 c4 10             	add    $0x10,%esp
  if (P2V(PHYSTOP) > (void*)DEVSPACE)
    panic("PHYSTOP too high");
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
80108277:	c7 45 f4 a0 d4 10 80 	movl   $0x8010d4a0,-0xc(%ebp)
8010827e:	eb 4e                	jmp    801082ce <setupkvm+0x8c>
    if(mappages(pgdir, k->virt, k->phys_end - k->phys_start,
80108280:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108283:	8b 48 0c             	mov    0xc(%eax),%ecx
                (uint)k->phys_start, k->perm) < 0) {
80108286:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108289:	8b 50 04             	mov    0x4(%eax),%edx
    if(mappages(pgdir, k->virt, k->phys_end - k->phys_start,
8010828c:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010828f:	8b 58 08             	mov    0x8(%eax),%ebx
80108292:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108295:	8b 40 04             	mov    0x4(%eax),%eax
80108298:	29 c3                	sub    %eax,%ebx
8010829a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010829d:	8b 00                	mov    (%eax),%eax
8010829f:	83 ec 0c             	sub    $0xc,%esp
801082a2:	51                   	push   %ecx
801082a3:	52                   	push   %edx
801082a4:	53                   	push   %ebx
801082a5:	50                   	push   %eax
801082a6:	ff 75 f0             	pushl  -0x10(%ebp)
801082a9:	e8 dd fe ff ff       	call   8010818b <mappages>
801082ae:	83 c4 20             	add    $0x20,%esp
801082b1:	85 c0                	test   %eax,%eax
801082b3:	79 15                	jns    801082ca <setupkvm+0x88>
      freevm(pgdir);
801082b5:	83 ec 0c             	sub    $0xc,%esp
801082b8:	ff 75 f0             	pushl  -0x10(%ebp)
801082bb:	e8 13 05 00 00       	call   801087d3 <freevm>
801082c0:	83 c4 10             	add    $0x10,%esp
      return 0;
801082c3:	b8 00 00 00 00       	mov    $0x0,%eax
801082c8:	eb 10                	jmp    801082da <setupkvm+0x98>
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
801082ca:	83 45 f4 10          	addl   $0x10,-0xc(%ebp)
801082ce:	81 7d f4 e0 d4 10 80 	cmpl   $0x8010d4e0,-0xc(%ebp)
801082d5:	72 a9                	jb     80108280 <setupkvm+0x3e>
    }
  return pgdir;
801082d7:	8b 45 f0             	mov    -0x10(%ebp),%eax
}
801082da:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801082dd:	c9                   	leave  
801082de:	c3                   	ret    

801082df <kvmalloc>:

// Allocate one page table for the machine for the kernel address
// space for scheduler processes.
void
kvmalloc(void)
{
801082df:	f3 0f 1e fb          	endbr32 
801082e3:	55                   	push   %ebp
801082e4:	89 e5                	mov    %esp,%ebp
801082e6:	83 ec 08             	sub    $0x8,%esp
  kpgdir = setupkvm();
801082e9:	e8 54 ff ff ff       	call   80108242 <setupkvm>
801082ee:	a3 44 96 11 80       	mov    %eax,0x80119644
  switchkvm();
801082f3:	e8 03 00 00 00       	call   801082fb <switchkvm>
}
801082f8:	90                   	nop
801082f9:	c9                   	leave  
801082fa:	c3                   	ret    

801082fb <switchkvm>:

// Switch h/w page table register to the kernel-only page table,
// for when no process is running.
void
switchkvm(void)
{
801082fb:	f3 0f 1e fb          	endbr32 
801082ff:	55                   	push   %ebp
80108300:	89 e5                	mov    %esp,%ebp
  lcr3(V2P(kpgdir));   // switch to the kernel page table
80108302:	a1 44 96 11 80       	mov    0x80119644,%eax
80108307:	05 00 00 00 80       	add    $0x80000000,%eax
8010830c:	50                   	push   %eax
8010830d:	e8 79 fa ff ff       	call   80107d8b <lcr3>
80108312:	83 c4 04             	add    $0x4,%esp
}
80108315:	90                   	nop
80108316:	c9                   	leave  
80108317:	c3                   	ret    

80108318 <switchuvm>:

// Switch TSS and h/w page table to correspond to process p.
void
switchuvm(struct proc *p)
{
80108318:	f3 0f 1e fb          	endbr32 
8010831c:	55                   	push   %ebp
8010831d:	89 e5                	mov    %esp,%ebp
8010831f:	56                   	push   %esi
80108320:	53                   	push   %ebx
80108321:	83 ec 10             	sub    $0x10,%esp
  if(p == 0)
80108324:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
80108328:	75 0d                	jne    80108337 <switchuvm+0x1f>
    panic("switchuvm: no process");
8010832a:	83 ec 0c             	sub    $0xc,%esp
8010832d:	68 98 9c 10 80       	push   $0x80109c98
80108332:	e8 d1 82 ff ff       	call   80100608 <panic>
  if(p->kstack == 0)
80108337:	8b 45 08             	mov    0x8(%ebp),%eax
8010833a:	8b 40 08             	mov    0x8(%eax),%eax
8010833d:	85 c0                	test   %eax,%eax
8010833f:	75 0d                	jne    8010834e <switchuvm+0x36>
    panic("switchuvm: no kstack");
80108341:	83 ec 0c             	sub    $0xc,%esp
80108344:	68 ae 9c 10 80       	push   $0x80109cae
80108349:	e8 ba 82 ff ff       	call   80100608 <panic>
  if(p->pgdir == 0)
8010834e:	8b 45 08             	mov    0x8(%ebp),%eax
80108351:	8b 40 04             	mov    0x4(%eax),%eax
80108354:	85 c0                	test   %eax,%eax
80108356:	75 0d                	jne    80108365 <switchuvm+0x4d>
    panic("switchuvm: no pgdir");
80108358:	83 ec 0c             	sub    $0xc,%esp
8010835b:	68 c3 9c 10 80       	push   $0x80109cc3
80108360:	e8 a3 82 ff ff       	call   80100608 <panic>

  pushcli();
80108365:	e8 69 d2 ff ff       	call   801055d3 <pushcli>
  mycpu()->gdt[SEG_TSS] = SEG16(STS_T32A, &mycpu()->ts,
8010836a:	e8 22 c1 ff ff       	call   80104491 <mycpu>
8010836f:	89 c3                	mov    %eax,%ebx
80108371:	e8 1b c1 ff ff       	call   80104491 <mycpu>
80108376:	83 c0 08             	add    $0x8,%eax
80108379:	89 c6                	mov    %eax,%esi
8010837b:	e8 11 c1 ff ff       	call   80104491 <mycpu>
80108380:	83 c0 08             	add    $0x8,%eax
80108383:	c1 e8 10             	shr    $0x10,%eax
80108386:	88 45 f7             	mov    %al,-0x9(%ebp)
80108389:	e8 03 c1 ff ff       	call   80104491 <mycpu>
8010838e:	83 c0 08             	add    $0x8,%eax
80108391:	c1 e8 18             	shr    $0x18,%eax
80108394:	89 c2                	mov    %eax,%edx
80108396:	66 c7 83 98 00 00 00 	movw   $0x67,0x98(%ebx)
8010839d:	67 00 
8010839f:	66 89 b3 9a 00 00 00 	mov    %si,0x9a(%ebx)
801083a6:	0f b6 45 f7          	movzbl -0x9(%ebp),%eax
801083aa:	88 83 9c 00 00 00    	mov    %al,0x9c(%ebx)
801083b0:	0f b6 83 9d 00 00 00 	movzbl 0x9d(%ebx),%eax
801083b7:	83 e0 f0             	and    $0xfffffff0,%eax
801083ba:	83 c8 09             	or     $0x9,%eax
801083bd:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
801083c3:	0f b6 83 9d 00 00 00 	movzbl 0x9d(%ebx),%eax
801083ca:	83 c8 10             	or     $0x10,%eax
801083cd:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
801083d3:	0f b6 83 9d 00 00 00 	movzbl 0x9d(%ebx),%eax
801083da:	83 e0 9f             	and    $0xffffff9f,%eax
801083dd:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
801083e3:	0f b6 83 9d 00 00 00 	movzbl 0x9d(%ebx),%eax
801083ea:	83 c8 80             	or     $0xffffff80,%eax
801083ed:	88 83 9d 00 00 00    	mov    %al,0x9d(%ebx)
801083f3:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
801083fa:	83 e0 f0             	and    $0xfffffff0,%eax
801083fd:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80108403:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
8010840a:	83 e0 ef             	and    $0xffffffef,%eax
8010840d:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80108413:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
8010841a:	83 e0 df             	and    $0xffffffdf,%eax
8010841d:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80108423:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
8010842a:	83 c8 40             	or     $0x40,%eax
8010842d:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80108433:	0f b6 83 9e 00 00 00 	movzbl 0x9e(%ebx),%eax
8010843a:	83 e0 7f             	and    $0x7f,%eax
8010843d:	88 83 9e 00 00 00    	mov    %al,0x9e(%ebx)
80108443:	88 93 9f 00 00 00    	mov    %dl,0x9f(%ebx)
                                sizeof(mycpu()->ts)-1, 0);
  mycpu()->gdt[SEG_TSS].s = 0;
80108449:	e8 43 c0 ff ff       	call   80104491 <mycpu>
8010844e:	0f b6 90 9d 00 00 00 	movzbl 0x9d(%eax),%edx
80108455:	83 e2 ef             	and    $0xffffffef,%edx
80108458:	88 90 9d 00 00 00    	mov    %dl,0x9d(%eax)
  mycpu()->ts.ss0 = SEG_KDATA << 3;
8010845e:	e8 2e c0 ff ff       	call   80104491 <mycpu>
80108463:	66 c7 40 10 10 00    	movw   $0x10,0x10(%eax)
  mycpu()->ts.esp0 = (uint)p->kstack + KSTACKSIZE;
80108469:	8b 45 08             	mov    0x8(%ebp),%eax
8010846c:	8b 40 08             	mov    0x8(%eax),%eax
8010846f:	89 c3                	mov    %eax,%ebx
80108471:	e8 1b c0 ff ff       	call   80104491 <mycpu>
80108476:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
8010847c:	89 50 0c             	mov    %edx,0xc(%eax)
  // setting IOPL=0 in eflags *and* iomb beyond the tss segment limit
  // forbids I/O instructions (e.g., inb and outb) from user space
  mycpu()->ts.iomb = (ushort) 0xFFFF;
8010847f:	e8 0d c0 ff ff       	call   80104491 <mycpu>
80108484:	66 c7 40 6e ff ff    	movw   $0xffff,0x6e(%eax)
  ltr(SEG_TSS << 3);
8010848a:	83 ec 0c             	sub    $0xc,%esp
8010848d:	6a 28                	push   $0x28
8010848f:	e8 e0 f8 ff ff       	call   80107d74 <ltr>
80108494:	83 c4 10             	add    $0x10,%esp
  lcr3(V2P(p->pgdir));  // switch to process's address space
80108497:	8b 45 08             	mov    0x8(%ebp),%eax
8010849a:	8b 40 04             	mov    0x4(%eax),%eax
8010849d:	05 00 00 00 80       	add    $0x80000000,%eax
801084a2:	83 ec 0c             	sub    $0xc,%esp
801084a5:	50                   	push   %eax
801084a6:	e8 e0 f8 ff ff       	call   80107d8b <lcr3>
801084ab:	83 c4 10             	add    $0x10,%esp
  popcli();
801084ae:	e8 71 d1 ff ff       	call   80105624 <popcli>
}
801084b3:	90                   	nop
801084b4:	8d 65 f8             	lea    -0x8(%ebp),%esp
801084b7:	5b                   	pop    %ebx
801084b8:	5e                   	pop    %esi
801084b9:	5d                   	pop    %ebp
801084ba:	c3                   	ret    

801084bb <inituvm>:

// Load the initcode into address 0 of pgdir.
// sz must be less than a page.
void
inituvm(pde_t *pgdir, char *init, uint sz)
{
801084bb:	f3 0f 1e fb          	endbr32 
801084bf:	55                   	push   %ebp
801084c0:	89 e5                	mov    %esp,%ebp
801084c2:	83 ec 18             	sub    $0x18,%esp
  char *mem;

  if(sz >= PGSIZE)
801084c5:	81 7d 10 ff 0f 00 00 	cmpl   $0xfff,0x10(%ebp)
801084cc:	76 0d                	jbe    801084db <inituvm+0x20>
    panic("inituvm: more than a page");
801084ce:	83 ec 0c             	sub    $0xc,%esp
801084d1:	68 d7 9c 10 80       	push   $0x80109cd7
801084d6:	e8 2d 81 ff ff       	call   80100608 <panic>
  mem = kalloc();
801084db:	e8 69 a9 ff ff       	call   80102e49 <kalloc>
801084e0:	89 45 f4             	mov    %eax,-0xc(%ebp)
  memset(mem, 0, PGSIZE);
801084e3:	83 ec 04             	sub    $0x4,%esp
801084e6:	68 00 10 00 00       	push   $0x1000
801084eb:	6a 00                	push   $0x0
801084ed:	ff 75 f4             	pushl  -0xc(%ebp)
801084f0:	e8 f1 d1 ff ff       	call   801056e6 <memset>
801084f5:	83 c4 10             	add    $0x10,%esp
  mappages(pgdir, 0, PGSIZE, V2P(mem), PTE_W|PTE_U);
801084f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
801084fb:	05 00 00 00 80       	add    $0x80000000,%eax
80108500:	83 ec 0c             	sub    $0xc,%esp
80108503:	6a 06                	push   $0x6
80108505:	50                   	push   %eax
80108506:	68 00 10 00 00       	push   $0x1000
8010850b:	6a 00                	push   $0x0
8010850d:	ff 75 08             	pushl  0x8(%ebp)
80108510:	e8 76 fc ff ff       	call   8010818b <mappages>
80108515:	83 c4 20             	add    $0x20,%esp
  memmove(mem, init, sz);
80108518:	83 ec 04             	sub    $0x4,%esp
8010851b:	ff 75 10             	pushl  0x10(%ebp)
8010851e:	ff 75 0c             	pushl  0xc(%ebp)
80108521:	ff 75 f4             	pushl  -0xc(%ebp)
80108524:	e8 84 d2 ff ff       	call   801057ad <memmove>
80108529:	83 c4 10             	add    $0x10,%esp
}
8010852c:	90                   	nop
8010852d:	c9                   	leave  
8010852e:	c3                   	ret    

8010852f <loaduvm>:

// Load a program segment into pgdir.  addr must be page-aligned
// and the pages from addr to addr+sz must already be mapped.
int
loaduvm(pde_t *pgdir, char *addr, struct inode *ip, uint offset, uint sz)
{
8010852f:	f3 0f 1e fb          	endbr32 
80108533:	55                   	push   %ebp
80108534:	89 e5                	mov    %esp,%ebp
80108536:	83 ec 18             	sub    $0x18,%esp
  uint i, pa, n;
  pte_t *pte;

  if((uint) addr % PGSIZE != 0)
80108539:	8b 45 0c             	mov    0xc(%ebp),%eax
8010853c:	25 ff 0f 00 00       	and    $0xfff,%eax
80108541:	85 c0                	test   %eax,%eax
80108543:	74 0d                	je     80108552 <loaduvm+0x23>
    panic("loaduvm: addr must be page aligned");
80108545:	83 ec 0c             	sub    $0xc,%esp
80108548:	68 f4 9c 10 80       	push   $0x80109cf4
8010854d:	e8 b6 80 ff ff       	call   80100608 <panic>
  for(i = 0; i < sz; i += PGSIZE){
80108552:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80108559:	e9 8f 00 00 00       	jmp    801085ed <loaduvm+0xbe>
    if((pte = walkpgdir(pgdir, addr+i, 0)) == 0)
8010855e:	8b 55 0c             	mov    0xc(%ebp),%edx
80108561:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108564:	01 d0                	add    %edx,%eax
80108566:	83 ec 04             	sub    $0x4,%esp
80108569:	6a 00                	push   $0x0
8010856b:	50                   	push   %eax
8010856c:	ff 75 08             	pushl  0x8(%ebp)
8010856f:	e8 7d fb ff ff       	call   801080f1 <walkpgdir>
80108574:	83 c4 10             	add    $0x10,%esp
80108577:	89 45 ec             	mov    %eax,-0x14(%ebp)
8010857a:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
8010857e:	75 0d                	jne    8010858d <loaduvm+0x5e>
      panic("loaduvm: address should exist");
80108580:	83 ec 0c             	sub    $0xc,%esp
80108583:	68 17 9d 10 80       	push   $0x80109d17
80108588:	e8 7b 80 ff ff       	call   80100608 <panic>
    pa = PTE_ADDR(*pte);
8010858d:	8b 45 ec             	mov    -0x14(%ebp),%eax
80108590:	8b 00                	mov    (%eax),%eax
80108592:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108597:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(sz - i < PGSIZE)
8010859a:	8b 45 18             	mov    0x18(%ebp),%eax
8010859d:	2b 45 f4             	sub    -0xc(%ebp),%eax
801085a0:	3d ff 0f 00 00       	cmp    $0xfff,%eax
801085a5:	77 0b                	ja     801085b2 <loaduvm+0x83>
      n = sz - i;
801085a7:	8b 45 18             	mov    0x18(%ebp),%eax
801085aa:	2b 45 f4             	sub    -0xc(%ebp),%eax
801085ad:	89 45 f0             	mov    %eax,-0x10(%ebp)
801085b0:	eb 07                	jmp    801085b9 <loaduvm+0x8a>
    else
      n = PGSIZE;
801085b2:	c7 45 f0 00 10 00 00 	movl   $0x1000,-0x10(%ebp)
    if(readi(ip, P2V(pa), offset+i, n) != n)
801085b9:	8b 55 14             	mov    0x14(%ebp),%edx
801085bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
801085bf:	01 d0                	add    %edx,%eax
801085c1:	8b 55 e8             	mov    -0x18(%ebp),%edx
801085c4:	81 c2 00 00 00 80    	add    $0x80000000,%edx
801085ca:	ff 75 f0             	pushl  -0x10(%ebp)
801085cd:	50                   	push   %eax
801085ce:	52                   	push   %edx
801085cf:	ff 75 10             	pushl  0x10(%ebp)
801085d2:	e8 8a 9a ff ff       	call   80102061 <readi>
801085d7:	83 c4 10             	add    $0x10,%esp
801085da:	39 45 f0             	cmp    %eax,-0x10(%ebp)
801085dd:	74 07                	je     801085e6 <loaduvm+0xb7>
      return -1;
801085df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801085e4:	eb 18                	jmp    801085fe <loaduvm+0xcf>
  for(i = 0; i < sz; i += PGSIZE){
801085e6:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
801085ed:	8b 45 f4             	mov    -0xc(%ebp),%eax
801085f0:	3b 45 18             	cmp    0x18(%ebp),%eax
801085f3:	0f 82 65 ff ff ff    	jb     8010855e <loaduvm+0x2f>
  }
  return 0;
801085f9:	b8 00 00 00 00       	mov    $0x0,%eax
}
801085fe:	c9                   	leave  
801085ff:	c3                   	ret    

80108600 <allocuvm>:

// Allocate page tables and physical memory to grow process from oldsz to
// newsz, which need not be page aligned.  Returns new size or 0 on error.
int
allocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
80108600:	f3 0f 1e fb          	endbr32 
80108604:	55                   	push   %ebp
80108605:	89 e5                	mov    %esp,%ebp
80108607:	83 ec 18             	sub    $0x18,%esp
  char *mem;
  uint a;

  if(newsz >= KERNBASE)
8010860a:	8b 45 10             	mov    0x10(%ebp),%eax
8010860d:	85 c0                	test   %eax,%eax
8010860f:	79 0a                	jns    8010861b <allocuvm+0x1b>
    return 0;
80108611:	b8 00 00 00 00       	mov    $0x0,%eax
80108616:	e9 ec 00 00 00       	jmp    80108707 <allocuvm+0x107>
  if(newsz < oldsz)
8010861b:	8b 45 10             	mov    0x10(%ebp),%eax
8010861e:	3b 45 0c             	cmp    0xc(%ebp),%eax
80108621:	73 08                	jae    8010862b <allocuvm+0x2b>
    return oldsz;
80108623:	8b 45 0c             	mov    0xc(%ebp),%eax
80108626:	e9 dc 00 00 00       	jmp    80108707 <allocuvm+0x107>

  a = PGROUNDUP(oldsz);
8010862b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010862e:	05 ff 0f 00 00       	add    $0xfff,%eax
80108633:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108638:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for(; a < newsz; a += PGSIZE){
8010863b:	e9 b8 00 00 00       	jmp    801086f8 <allocuvm+0xf8>
    mem = kalloc();
80108640:	e8 04 a8 ff ff       	call   80102e49 <kalloc>
80108645:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(mem == 0){
80108648:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
8010864c:	75 2e                	jne    8010867c <allocuvm+0x7c>
      cprintf("allocuvm out of memory\n");
8010864e:	83 ec 0c             	sub    $0xc,%esp
80108651:	68 35 9d 10 80       	push   $0x80109d35
80108656:	e8 bd 7d ff ff       	call   80100418 <cprintf>
8010865b:	83 c4 10             	add    $0x10,%esp
      deallocuvm(pgdir, newsz, oldsz);
8010865e:	83 ec 04             	sub    $0x4,%esp
80108661:	ff 75 0c             	pushl  0xc(%ebp)
80108664:	ff 75 10             	pushl  0x10(%ebp)
80108667:	ff 75 08             	pushl  0x8(%ebp)
8010866a:	e8 9a 00 00 00       	call   80108709 <deallocuvm>
8010866f:	83 c4 10             	add    $0x10,%esp
      return 0;
80108672:	b8 00 00 00 00       	mov    $0x0,%eax
80108677:	e9 8b 00 00 00       	jmp    80108707 <allocuvm+0x107>
    }
    memset(mem, 0, PGSIZE);
8010867c:	83 ec 04             	sub    $0x4,%esp
8010867f:	68 00 10 00 00       	push   $0x1000
80108684:	6a 00                	push   $0x0
80108686:	ff 75 f0             	pushl  -0x10(%ebp)
80108689:	e8 58 d0 ff ff       	call   801056e6 <memset>
8010868e:	83 c4 10             	add    $0x10,%esp
    if(mappages(pgdir, (char*)a, PGSIZE, V2P(mem), PTE_W|PTE_U) < 0){
80108691:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108694:	8d 90 00 00 00 80    	lea    -0x80000000(%eax),%edx
8010869a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010869d:	83 ec 0c             	sub    $0xc,%esp
801086a0:	6a 06                	push   $0x6
801086a2:	52                   	push   %edx
801086a3:	68 00 10 00 00       	push   $0x1000
801086a8:	50                   	push   %eax
801086a9:	ff 75 08             	pushl  0x8(%ebp)
801086ac:	e8 da fa ff ff       	call   8010818b <mappages>
801086b1:	83 c4 20             	add    $0x20,%esp
801086b4:	85 c0                	test   %eax,%eax
801086b6:	79 39                	jns    801086f1 <allocuvm+0xf1>
      cprintf("allocuvm out of memory (2)\n");
801086b8:	83 ec 0c             	sub    $0xc,%esp
801086bb:	68 4d 9d 10 80       	push   $0x80109d4d
801086c0:	e8 53 7d ff ff       	call   80100418 <cprintf>
801086c5:	83 c4 10             	add    $0x10,%esp
      deallocuvm(pgdir, newsz, oldsz);
801086c8:	83 ec 04             	sub    $0x4,%esp
801086cb:	ff 75 0c             	pushl  0xc(%ebp)
801086ce:	ff 75 10             	pushl  0x10(%ebp)
801086d1:	ff 75 08             	pushl  0x8(%ebp)
801086d4:	e8 30 00 00 00       	call   80108709 <deallocuvm>
801086d9:	83 c4 10             	add    $0x10,%esp
      kfree(mem);
801086dc:	83 ec 0c             	sub    $0xc,%esp
801086df:	ff 75 f0             	pushl  -0x10(%ebp)
801086e2:	e8 c4 a6 ff ff       	call   80102dab <kfree>
801086e7:	83 c4 10             	add    $0x10,%esp
      return 0;
801086ea:	b8 00 00 00 00       	mov    $0x0,%eax
801086ef:	eb 16                	jmp    80108707 <allocuvm+0x107>
  for(; a < newsz; a += PGSIZE){
801086f1:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
801086f8:	8b 45 f4             	mov    -0xc(%ebp),%eax
801086fb:	3b 45 10             	cmp    0x10(%ebp),%eax
801086fe:	0f 82 3c ff ff ff    	jb     80108640 <allocuvm+0x40>
    }
  }
  return newsz;
80108704:	8b 45 10             	mov    0x10(%ebp),%eax
}
80108707:	c9                   	leave  
80108708:	c3                   	ret    

80108709 <deallocuvm>:
// newsz.  oldsz and newsz need not be page-aligned, nor does newsz
// need to be less than oldsz.  oldsz can be larger than the actual
// process size.  Returns the new process size.
int
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
80108709:	f3 0f 1e fb          	endbr32 
8010870d:	55                   	push   %ebp
8010870e:	89 e5                	mov    %esp,%ebp
80108710:	83 ec 18             	sub    $0x18,%esp
  pte_t *pte;
  uint a, pa;

  //struct proc *curproc = myproc();

  if(newsz >= oldsz)
80108713:	8b 45 10             	mov    0x10(%ebp),%eax
80108716:	3b 45 0c             	cmp    0xc(%ebp),%eax
80108719:	72 08                	jb     80108723 <deallocuvm+0x1a>
    return oldsz;
8010871b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010871e:	e9 ae 00 00 00       	jmp    801087d1 <deallocuvm+0xc8>

  a = PGROUNDUP(newsz);
80108723:	8b 45 10             	mov    0x10(%ebp),%eax
80108726:	05 ff 0f 00 00       	add    $0xfff,%eax
8010872b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108730:	89 45 f4             	mov    %eax,-0xc(%ebp)

  for(; a  < oldsz; a += PGSIZE){
80108733:	e9 8a 00 00 00       	jmp    801087c2 <deallocuvm+0xb9>
        }
    }
    */


    pte = walkpgdir(pgdir, (char*)a, 0);
80108738:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010873b:	83 ec 04             	sub    $0x4,%esp
8010873e:	6a 00                	push   $0x0
80108740:	50                   	push   %eax
80108741:	ff 75 08             	pushl  0x8(%ebp)
80108744:	e8 a8 f9 ff ff       	call   801080f1 <walkpgdir>
80108749:	83 c4 10             	add    $0x10,%esp
8010874c:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(!pte)
8010874f:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
80108753:	75 16                	jne    8010876b <deallocuvm+0x62>
      a = PGADDR(PDX(a) + 1, 0, 0) - PGSIZE;
80108755:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108758:	c1 e8 16             	shr    $0x16,%eax
8010875b:	83 c0 01             	add    $0x1,%eax
8010875e:	c1 e0 16             	shl    $0x16,%eax
80108761:	2d 00 10 00 00       	sub    $0x1000,%eax
80108766:	89 45 f4             	mov    %eax,-0xc(%ebp)
80108769:	eb 50                	jmp    801087bb <deallocuvm+0xb2>
    else if((*pte & (PTE_P | PTE_E)) != 0){
8010876b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010876e:	8b 00                	mov    (%eax),%eax
80108770:	25 01 04 00 00       	and    $0x401,%eax
80108775:	85 c0                	test   %eax,%eax
80108777:	74 42                	je     801087bb <deallocuvm+0xb2>
      pa = PTE_ADDR(*pte);
80108779:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010877c:	8b 00                	mov    (%eax),%eax
8010877e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108783:	89 45 ec             	mov    %eax,-0x14(%ebp)
      if(pa == 0)
80108786:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
8010878a:	75 0d                	jne    80108799 <deallocuvm+0x90>
        panic("kfree");
8010878c:	83 ec 0c             	sub    $0xc,%esp
8010878f:	68 69 9d 10 80       	push   $0x80109d69
80108794:	e8 6f 7e ff ff       	call   80100608 <panic>
      char *v = P2V(pa);
80108799:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010879c:	05 00 00 00 80       	add    $0x80000000,%eax
801087a1:	89 45 e8             	mov    %eax,-0x18(%ebp)
      kfree(v);
801087a4:	83 ec 0c             	sub    $0xc,%esp
801087a7:	ff 75 e8             	pushl  -0x18(%ebp)
801087aa:	e8 fc a5 ff ff       	call   80102dab <kfree>
801087af:	83 c4 10             	add    $0x10,%esp
      *pte = 0;
801087b2:	8b 45 f0             	mov    -0x10(%ebp),%eax
801087b5:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  for(; a  < oldsz; a += PGSIZE){
801087bb:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
801087c2:	8b 45 f4             	mov    -0xc(%ebp),%eax
801087c5:	3b 45 0c             	cmp    0xc(%ebp),%eax
801087c8:	0f 82 6a ff ff ff    	jb     80108738 <deallocuvm+0x2f>
    }
  }
  return newsz;
801087ce:	8b 45 10             	mov    0x10(%ebp),%eax
}
801087d1:	c9                   	leave  
801087d2:	c3                   	ret    

801087d3 <freevm>:

// Free a page table and all the physical memory pages
// in the user part.
void
freevm(pde_t *pgdir)
{
801087d3:	f3 0f 1e fb          	endbr32 
801087d7:	55                   	push   %ebp
801087d8:	89 e5                	mov    %esp,%ebp
801087da:	83 ec 18             	sub    $0x18,%esp
  uint i;

  if(pgdir == 0)
801087dd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
801087e1:	75 0d                	jne    801087f0 <freevm+0x1d>
    panic("freevm: no pgdir");
801087e3:	83 ec 0c             	sub    $0xc,%esp
801087e6:	68 6f 9d 10 80       	push   $0x80109d6f
801087eb:	e8 18 7e ff ff       	call   80100608 <panic>
  deallocuvm(pgdir, KERNBASE, 0);
801087f0:	83 ec 04             	sub    $0x4,%esp
801087f3:	6a 00                	push   $0x0
801087f5:	68 00 00 00 80       	push   $0x80000000
801087fa:	ff 75 08             	pushl  0x8(%ebp)
801087fd:	e8 07 ff ff ff       	call   80108709 <deallocuvm>
80108802:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NPDENTRIES; i++){
80108805:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
8010880c:	eb 4a                	jmp    80108858 <freevm+0x85>
    if(pgdir[i] & (PTE_P | PTE_E)){
8010880e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108811:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80108818:	8b 45 08             	mov    0x8(%ebp),%eax
8010881b:	01 d0                	add    %edx,%eax
8010881d:	8b 00                	mov    (%eax),%eax
8010881f:	25 01 04 00 00       	and    $0x401,%eax
80108824:	85 c0                	test   %eax,%eax
80108826:	74 2c                	je     80108854 <freevm+0x81>
      char * v = P2V(PTE_ADDR(pgdir[i]));
80108828:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010882b:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
80108832:	8b 45 08             	mov    0x8(%ebp),%eax
80108835:	01 d0                	add    %edx,%eax
80108837:	8b 00                	mov    (%eax),%eax
80108839:	25 00 f0 ff ff       	and    $0xfffff000,%eax
8010883e:	05 00 00 00 80       	add    $0x80000000,%eax
80108843:	89 45 f0             	mov    %eax,-0x10(%ebp)
      kfree(v);
80108846:	83 ec 0c             	sub    $0xc,%esp
80108849:	ff 75 f0             	pushl  -0x10(%ebp)
8010884c:	e8 5a a5 ff ff       	call   80102dab <kfree>
80108851:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < NPDENTRIES; i++){
80108854:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80108858:	81 7d f4 ff 03 00 00 	cmpl   $0x3ff,-0xc(%ebp)
8010885f:	76 ad                	jbe    8010880e <freevm+0x3b>
    }
  }
  kfree((char*)pgdir);
80108861:	83 ec 0c             	sub    $0xc,%esp
80108864:	ff 75 08             	pushl  0x8(%ebp)
80108867:	e8 3f a5 ff ff       	call   80102dab <kfree>
8010886c:	83 c4 10             	add    $0x10,%esp
}
8010886f:	90                   	nop
80108870:	c9                   	leave  
80108871:	c3                   	ret    

80108872 <clearpteu>:

// Clear PTE_U on a page. Used to create an inaccessible
// page beneath the user stack.
void
clearpteu(pde_t *pgdir, char *uva)
{
80108872:	f3 0f 1e fb          	endbr32 
80108876:	55                   	push   %ebp
80108877:	89 e5                	mov    %esp,%ebp
80108879:	83 ec 18             	sub    $0x18,%esp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
8010887c:	83 ec 04             	sub    $0x4,%esp
8010887f:	6a 00                	push   $0x0
80108881:	ff 75 0c             	pushl  0xc(%ebp)
80108884:	ff 75 08             	pushl  0x8(%ebp)
80108887:	e8 65 f8 ff ff       	call   801080f1 <walkpgdir>
8010888c:	83 c4 10             	add    $0x10,%esp
8010888f:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if(pte == 0)
80108892:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80108896:	75 0d                	jne    801088a5 <clearpteu+0x33>
    panic("clearpteu");
80108898:	83 ec 0c             	sub    $0xc,%esp
8010889b:	68 80 9d 10 80       	push   $0x80109d80
801088a0:	e8 63 7d ff ff       	call   80100608 <panic>
  *pte &= ~PTE_U;
801088a5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801088a8:	8b 00                	mov    (%eax),%eax
801088aa:	83 e0 fb             	and    $0xfffffffb,%eax
801088ad:	89 c2                	mov    %eax,%edx
801088af:	8b 45 f4             	mov    -0xc(%ebp),%eax
801088b2:	89 10                	mov    %edx,(%eax)
}
801088b4:	90                   	nop
801088b5:	c9                   	leave  
801088b6:	c3                   	ret    

801088b7 <copyuvm>:

// Given a parent process's page table, create a copy
// of it for a child.
pde_t*
copyuvm(pde_t *pgdir, uint sz)
{
801088b7:	f3 0f 1e fb          	endbr32 
801088bb:	55                   	push   %ebp
801088bc:	89 e5                	mov    %esp,%ebp
801088be:	83 ec 28             	sub    $0x28,%esp
  pde_t *d;
  pte_t *pte;
  uint pa, i, flags;
  char *mem;

  if((d = setupkvm()) == 0)
801088c1:	e8 7c f9 ff ff       	call   80108242 <setupkvm>
801088c6:	89 45 f0             	mov    %eax,-0x10(%ebp)
801088c9:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
801088cd:	75 0a                	jne    801088d9 <copyuvm+0x22>
    return 0;
801088cf:	b8 00 00 00 00       	mov    $0x0,%eax
801088d4:	e9 fa 00 00 00       	jmp    801089d3 <copyuvm+0x11c>
  for(i = 0; i < sz; i += PGSIZE){
801088d9:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
801088e0:	e9 c9 00 00 00       	jmp    801089ae <copyuvm+0xf7>
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
801088e5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801088e8:	83 ec 04             	sub    $0x4,%esp
801088eb:	6a 00                	push   $0x0
801088ed:	50                   	push   %eax
801088ee:	ff 75 08             	pushl  0x8(%ebp)
801088f1:	e8 fb f7 ff ff       	call   801080f1 <walkpgdir>
801088f6:	83 c4 10             	add    $0x10,%esp
801088f9:	89 45 ec             	mov    %eax,-0x14(%ebp)
801088fc:	83 7d ec 00          	cmpl   $0x0,-0x14(%ebp)
80108900:	75 0d                	jne    8010890f <copyuvm+0x58>
      panic("p4Debug: inside copyuvm, pte should exist");
80108902:	83 ec 0c             	sub    $0xc,%esp
80108905:	68 8c 9d 10 80       	push   $0x80109d8c
8010890a:	e8 f9 7c ff ff       	call   80100608 <panic>
    if(!(*pte & (PTE_P | PTE_E)))
8010890f:	8b 45 ec             	mov    -0x14(%ebp),%eax
80108912:	8b 00                	mov    (%eax),%eax
80108914:	25 01 04 00 00       	and    $0x401,%eax
80108919:	85 c0                	test   %eax,%eax
8010891b:	75 0d                	jne    8010892a <copyuvm+0x73>
      panic("p4Debug: inside copyuvm, page not present");
8010891d:	83 ec 0c             	sub    $0xc,%esp
80108920:	68 b8 9d 10 80       	push   $0x80109db8
80108925:	e8 de 7c ff ff       	call   80100608 <panic>
    pa = PTE_ADDR(*pte);
8010892a:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010892d:	8b 00                	mov    (%eax),%eax
8010892f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108934:	89 45 e8             	mov    %eax,-0x18(%ebp)
    flags = PTE_FLAGS(*pte);
80108937:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010893a:	8b 00                	mov    (%eax),%eax
8010893c:	25 ff 0f 00 00       	and    $0xfff,%eax
80108941:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    if((mem = kalloc()) == 0)
80108944:	e8 00 a5 ff ff       	call   80102e49 <kalloc>
80108949:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010894c:	83 7d e0 00          	cmpl   $0x0,-0x20(%ebp)
80108950:	74 6d                	je     801089bf <copyuvm+0x108>
      goto bad;
    memmove(mem, (char*)P2V(pa), PGSIZE);
80108952:	8b 45 e8             	mov    -0x18(%ebp),%eax
80108955:	05 00 00 00 80       	add    $0x80000000,%eax
8010895a:	83 ec 04             	sub    $0x4,%esp
8010895d:	68 00 10 00 00       	push   $0x1000
80108962:	50                   	push   %eax
80108963:	ff 75 e0             	pushl  -0x20(%ebp)
80108966:	e8 42 ce ff ff       	call   801057ad <memmove>
8010896b:	83 c4 10             	add    $0x10,%esp
    if(mappages(d, (void*)i, PGSIZE, V2P(mem), flags) < 0) {
8010896e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80108971:	8b 45 e0             	mov    -0x20(%ebp),%eax
80108974:	8d 88 00 00 00 80    	lea    -0x80000000(%eax),%ecx
8010897a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010897d:	83 ec 0c             	sub    $0xc,%esp
80108980:	52                   	push   %edx
80108981:	51                   	push   %ecx
80108982:	68 00 10 00 00       	push   $0x1000
80108987:	50                   	push   %eax
80108988:	ff 75 f0             	pushl  -0x10(%ebp)
8010898b:	e8 fb f7 ff ff       	call   8010818b <mappages>
80108990:	83 c4 20             	add    $0x20,%esp
80108993:	85 c0                	test   %eax,%eax
80108995:	79 10                	jns    801089a7 <copyuvm+0xf0>
      kfree(mem);
80108997:	83 ec 0c             	sub    $0xc,%esp
8010899a:	ff 75 e0             	pushl  -0x20(%ebp)
8010899d:	e8 09 a4 ff ff       	call   80102dab <kfree>
801089a2:	83 c4 10             	add    $0x10,%esp
      goto bad;
801089a5:	eb 19                	jmp    801089c0 <copyuvm+0x109>
  for(i = 0; i < sz; i += PGSIZE){
801089a7:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
801089ae:	8b 45 f4             	mov    -0xc(%ebp),%eax
801089b1:	3b 45 0c             	cmp    0xc(%ebp),%eax
801089b4:	0f 82 2b ff ff ff    	jb     801088e5 <copyuvm+0x2e>
    }
  }
  return d;
801089ba:	8b 45 f0             	mov    -0x10(%ebp),%eax
801089bd:	eb 14                	jmp    801089d3 <copyuvm+0x11c>
      goto bad;
801089bf:	90                   	nop

bad:
  freevm(d);
801089c0:	83 ec 0c             	sub    $0xc,%esp
801089c3:	ff 75 f0             	pushl  -0x10(%ebp)
801089c6:	e8 08 fe ff ff       	call   801087d3 <freevm>
801089cb:	83 c4 10             	add    $0x10,%esp
  return 0;
801089ce:	b8 00 00 00 00       	mov    $0x0,%eax
}
801089d3:	c9                   	leave  
801089d4:	c3                   	ret    

801089d5 <uva2ka>:

//PAGEBREAK!
// Map user virtual address to kernel address.
char*
uva2ka(pde_t *pgdir, char *uva)
{
801089d5:	f3 0f 1e fb          	endbr32 
801089d9:	55                   	push   %ebp
801089da:	89 e5                	mov    %esp,%ebp
801089dc:	83 ec 18             	sub    $0x18,%esp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
801089df:	83 ec 04             	sub    $0x4,%esp
801089e2:	6a 00                	push   $0x0
801089e4:	ff 75 0c             	pushl  0xc(%ebp)
801089e7:	ff 75 08             	pushl  0x8(%ebp)
801089ea:	e8 02 f7 ff ff       	call   801080f1 <walkpgdir>
801089ef:	83 c4 10             	add    $0x10,%esp
801089f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
  // p4Debug: Check for page's present and encrypted flags.
  if(((*pte & PTE_P) | (*pte & PTE_E)) == 0)
801089f5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801089f8:	8b 00                	mov    (%eax),%eax
801089fa:	25 01 04 00 00       	and    $0x401,%eax
801089ff:	85 c0                	test   %eax,%eax
80108a01:	75 07                	jne    80108a0a <uva2ka+0x35>
    return 0;
80108a03:	b8 00 00 00 00       	mov    $0x0,%eax
80108a08:	eb 22                	jmp    80108a2c <uva2ka+0x57>
  if((*pte & PTE_U) == 0)
80108a0a:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108a0d:	8b 00                	mov    (%eax),%eax
80108a0f:	83 e0 04             	and    $0x4,%eax
80108a12:	85 c0                	test   %eax,%eax
80108a14:	75 07                	jne    80108a1d <uva2ka+0x48>
    return 0;
80108a16:	b8 00 00 00 00       	mov    $0x0,%eax
80108a1b:	eb 0f                	jmp    80108a2c <uva2ka+0x57>
  return (char*)P2V(PTE_ADDR(*pte));
80108a1d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108a20:	8b 00                	mov    (%eax),%eax
80108a22:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108a27:	05 00 00 00 80       	add    $0x80000000,%eax
}
80108a2c:	c9                   	leave  
80108a2d:	c3                   	ret    

80108a2e <copyout>:
// Copy len bytes from p to user address va in page table pgdir.
// Most useful when pgdir is not the current page table.
// uva2ka ensures this only works for PTE_U pages.
int
copyout(pde_t *pgdir, uint va, void *p, uint len)
{
80108a2e:	f3 0f 1e fb          	endbr32 
80108a32:	55                   	push   %ebp
80108a33:	89 e5                	mov    %esp,%ebp
80108a35:	83 ec 18             	sub    $0x18,%esp
  char *buf, *pa0;
  uint n, va0;

  buf = (char*)p;
80108a38:	8b 45 10             	mov    0x10(%ebp),%eax
80108a3b:	89 45 f4             	mov    %eax,-0xc(%ebp)
  while(len > 0){
80108a3e:	eb 7f                	jmp    80108abf <copyout+0x91>
    va0 = (uint)PGROUNDDOWN(va);
80108a40:	8b 45 0c             	mov    0xc(%ebp),%eax
80108a43:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108a48:	89 45 ec             	mov    %eax,-0x14(%ebp)
    pa0 = uva2ka(pgdir, (char*)va0);
80108a4b:	8b 45 ec             	mov    -0x14(%ebp),%eax
80108a4e:	83 ec 08             	sub    $0x8,%esp
80108a51:	50                   	push   %eax
80108a52:	ff 75 08             	pushl  0x8(%ebp)
80108a55:	e8 7b ff ff ff       	call   801089d5 <uva2ka>
80108a5a:	83 c4 10             	add    $0x10,%esp
80108a5d:	89 45 e8             	mov    %eax,-0x18(%ebp)
    if(pa0 == 0)
80108a60:	83 7d e8 00          	cmpl   $0x0,-0x18(%ebp)
80108a64:	75 07                	jne    80108a6d <copyout+0x3f>
    {
      //p4Debug : Cannot find page in kernel space.
      return -1;
80108a66:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80108a6b:	eb 61                	jmp    80108ace <copyout+0xa0>
    }
    n = PGSIZE - (va - va0);
80108a6d:	8b 45 ec             	mov    -0x14(%ebp),%eax
80108a70:	2b 45 0c             	sub    0xc(%ebp),%eax
80108a73:	05 00 10 00 00       	add    $0x1000,%eax
80108a78:	89 45 f0             	mov    %eax,-0x10(%ebp)
    if(n > len)
80108a7b:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108a7e:	3b 45 14             	cmp    0x14(%ebp),%eax
80108a81:	76 06                	jbe    80108a89 <copyout+0x5b>
      n = len;
80108a83:	8b 45 14             	mov    0x14(%ebp),%eax
80108a86:	89 45 f0             	mov    %eax,-0x10(%ebp)
    memmove(pa0 + (va - va0), buf, n);
80108a89:	8b 45 0c             	mov    0xc(%ebp),%eax
80108a8c:	2b 45 ec             	sub    -0x14(%ebp),%eax
80108a8f:	89 c2                	mov    %eax,%edx
80108a91:	8b 45 e8             	mov    -0x18(%ebp),%eax
80108a94:	01 d0                	add    %edx,%eax
80108a96:	83 ec 04             	sub    $0x4,%esp
80108a99:	ff 75 f0             	pushl  -0x10(%ebp)
80108a9c:	ff 75 f4             	pushl  -0xc(%ebp)
80108a9f:	50                   	push   %eax
80108aa0:	e8 08 cd ff ff       	call   801057ad <memmove>
80108aa5:	83 c4 10             	add    $0x10,%esp
    len -= n;
80108aa8:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108aab:	29 45 14             	sub    %eax,0x14(%ebp)
    buf += n;
80108aae:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108ab1:	01 45 f4             	add    %eax,-0xc(%ebp)
    va = va0 + PGSIZE;
80108ab4:	8b 45 ec             	mov    -0x14(%ebp),%eax
80108ab7:	05 00 10 00 00       	add    $0x1000,%eax
80108abc:	89 45 0c             	mov    %eax,0xc(%ebp)
  while(len > 0){
80108abf:	83 7d 14 00          	cmpl   $0x0,0x14(%ebp)
80108ac3:	0f 85 77 ff ff ff    	jne    80108a40 <copyout+0x12>
  }
  return 0;
80108ac9:	b8 00 00 00 00       	mov    $0x0,%eax
}
80108ace:	c9                   	leave  
80108acf:	c3                   	ret    

80108ad0 <bufferContainsPage>:

// return index if page found and -1 on page not found
int bufferContainsPage(struct proc* p, char *virtual_addr) {
80108ad0:	f3 0f 1e fb          	endbr32 
80108ad4:	55                   	push   %ebp
80108ad5:	89 e5                	mov    %esp,%ebp
80108ad7:	83 ec 10             	sub    $0x10,%esp
	for (int i = 0; i < CLOCKSIZE; i++) {
80108ada:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
80108ae1:	eb 1d                	jmp    80108b00 <bufferContainsPage+0x30>
		if (p->pgQueue[i] != virtual_addr) {
80108ae3:	8b 45 08             	mov    0x8(%ebp),%eax
80108ae6:	8b 55 fc             	mov    -0x4(%ebp),%edx
80108ae9:	83 c2 1c             	add    $0x1c,%edx
80108aec:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80108af0:	39 45 0c             	cmp    %eax,0xc(%ebp)
80108af3:	74 06                	je     80108afb <bufferContainsPage+0x2b>
	for (int i = 0; i < CLOCKSIZE; i++) {
80108af5:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
80108af9:	eb 05                	jmp    80108b00 <bufferContainsPage+0x30>
			continue;
		} else {
			//cprintf("Please reach here");
			return i;
80108afb:	8b 45 fc             	mov    -0x4(%ebp),%eax
80108afe:	eb 0b                	jmp    80108b0b <bufferContainsPage+0x3b>
	for (int i = 0; i < CLOCKSIZE; i++) {
80108b00:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
80108b04:	7e dd                	jle    80108ae3 <bufferContainsPage+0x13>
		}
	}
	//cprintf("Why are you here");
	return -1;
80108b06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80108b0b:	c9                   	leave  
80108b0c:	c3                   	ret    

80108b0d <checkEmptySlot>:

// return index if empty slot found or -1 if no empty slot
int checkEmptySlot(struct proc* p) {
80108b0d:	f3 0f 1e fb          	endbr32 
80108b11:	55                   	push   %ebp
80108b12:	89 e5                	mov    %esp,%ebp
80108b14:	83 ec 18             	sub    $0x18,%esp
    for (int i = 0; i < CLOCKSIZE; i++) {
80108b17:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
80108b1e:	eb 5f                	jmp    80108b7f <checkEmptySlot+0x72>
        if ((void *)p->pgQueue[i] != (void *)-1) {
80108b20:	8b 45 08             	mov    0x8(%ebp),%eax
80108b23:	8b 55 f4             	mov    -0xc(%ebp),%edx
80108b26:	83 c2 1c             	add    $0x1c,%edx
80108b29:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80108b2d:	83 f8 ff             	cmp    $0xffffffff,%eax
80108b30:	74 27                	je     80108b59 <checkEmptySlot+0x4c>
        	cprintf("The index is %d and the NOT empty slot is %d\n", i, (void *)p->pgQueue[i]);
80108b32:	8b 45 08             	mov    0x8(%ebp),%eax
80108b35:	8b 55 f4             	mov    -0xc(%ebp),%edx
80108b38:	83 c2 1c             	add    $0x1c,%edx
80108b3b:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80108b3f:	83 ec 04             	sub    $0x4,%esp
80108b42:	50                   	push   %eax
80108b43:	ff 75 f4             	pushl  -0xc(%ebp)
80108b46:	68 e4 9d 10 80       	push   $0x80109de4
80108b4b:	e8 c8 78 ff ff       	call   80100418 <cprintf>
80108b50:	83 c4 10             	add    $0x10,%esp
    for (int i = 0; i < CLOCKSIZE; i++) {
80108b53:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
80108b57:	eb 26                	jmp    80108b7f <checkEmptySlot+0x72>
            continue;
        } else {
            // queue is empty at this spot (initialized all entires in buffer to -1 in proc.c)
            cprintf("The index is %d and the DEFINITELY empty slot is %d\n", i, (void *)p->pgQueue[i]);
80108b59:	8b 45 08             	mov    0x8(%ebp),%eax
80108b5c:	8b 55 f4             	mov    -0xc(%ebp),%edx
80108b5f:	83 c2 1c             	add    $0x1c,%edx
80108b62:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80108b66:	83 ec 04             	sub    $0x4,%esp
80108b69:	50                   	push   %eax
80108b6a:	ff 75 f4             	pushl  -0xc(%ebp)
80108b6d:	68 14 9e 10 80       	push   $0x80109e14
80108b72:	e8 a1 78 ff ff       	call   80100418 <cprintf>
80108b77:	83 c4 10             	add    $0x10,%esp
            return i;
80108b7a:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108b7d:	eb 0b                	jmp    80108b8a <checkEmptySlot+0x7d>
    for (int i = 0; i < CLOCKSIZE; i++) {
80108b7f:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
80108b83:	7e 9b                	jle    80108b20 <checkEmptySlot+0x13>
        }
    }
    return -1;
80108b85:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80108b8a:	c9                   	leave  
80108b8b:	c3                   	ret    

80108b8c <insert_handler>:

int insert_handler(struct proc* p, char *virtual_addr) {
80108b8c:	f3 0f 1e fb          	endbr32 
80108b90:	55                   	push   %ebp
80108b91:	89 e5                	mov    %esp,%ebp
80108b93:	83 ec 28             	sub    $0x28,%esp

  pde_t* mypd = p->pgdir;
80108b96:	8b 45 08             	mov    0x8(%ebp),%eax
80108b99:	8b 40 04             	mov    0x4(%eax),%eax
80108b9c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  virtual_addr = (char *)PGROUNDDOWN((uint)virtual_addr);
80108b9f:	8b 45 0c             	mov    0xc(%ebp),%eax
80108ba2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108ba7:	89 45 0c             	mov    %eax,0xc(%ebp)
  pte_t * pte = walkpgdir(mypd, virtual_addr, 0);
80108baa:	83 ec 04             	sub    $0x4,%esp
80108bad:	6a 00                	push   $0x0
80108baf:	ff 75 0c             	pushl  0xc(%ebp)
80108bb2:	ff 75 f4             	pushl  -0xc(%ebp)
80108bb5:	e8 37 f5 ff ff       	call   801080f1 <walkpgdir>
80108bba:	83 c4 10             	add    $0x10,%esp
80108bbd:	89 45 f0             	mov    %eax,-0x10(%ebp)

  // Case 1: Page in queue, clock hand not updated and access bit just set automatically
  // NOTE: This mght be useless because the page access bit is set automatically by hardware
  int potIndex = bufferContainsPage(p, virtual_addr);
80108bc0:	83 ec 08             	sub    $0x8,%esp
80108bc3:	ff 75 0c             	pushl  0xc(%ebp)
80108bc6:	ff 75 08             	pushl  0x8(%ebp)
80108bc9:	e8 02 ff ff ff       	call   80108ad0 <bufferContainsPage>
80108bce:	83 c4 10             	add    $0x10,%esp
80108bd1:	89 45 ec             	mov    %eax,-0x14(%ebp)
  //cprintf("potential index is %d\n", potIndex);
  if (potIndex != -1) {
80108bd4:	83 7d ec ff          	cmpl   $0xffffffff,-0x14(%ebp)
80108bd8:	74 2c                	je     80108c06 <insert_handler+0x7a>
    cprintf("The replacement index is %d\n\n", potIndex);
80108bda:	83 ec 08             	sub    $0x8,%esp
80108bdd:	ff 75 ec             	pushl  -0x14(%ebp)
80108be0:	68 49 9e 10 80       	push   $0x80109e49
80108be5:	e8 2e 78 ff ff       	call   80100418 <cprintf>
80108bea:	83 c4 10             	add    $0x10,%esp
    // edit
    //*pte = *pte | PTE_E;
    // set access bit to true
    *pte = *pte | PTE_A;
80108bed:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108bf0:	8b 00                	mov    (%eax),%eax
80108bf2:	83 c8 20             	or     $0x20,%eax
80108bf5:	89 c2                	mov    %eax,%edx
80108bf7:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108bfa:	89 10                	mov    %edx,(%eax)
    // do we need to store this back in the queue??? (YES)
    //p->pgQueue[potIndex] = virtual_addr;
    return 0;
80108bfc:	b8 00 00 00 00       	mov    $0x0,%eax
80108c01:	e9 4d 01 00 00       	jmp    80108d53 <insert_handler+0x1c7>
  }
  
  // Case 2: empty slot in queue available (add to tail)
  int emptIndex = checkEmptySlot(p);
80108c06:	83 ec 0c             	sub    $0xc,%esp
80108c09:	ff 75 08             	pushl  0x8(%ebp)
80108c0c:	e8 fc fe ff ff       	call   80108b0d <checkEmptySlot>
80108c11:	83 c4 10             	add    $0x10,%esp
80108c14:	89 45 e8             	mov    %eax,-0x18(%ebp)
  cprintf("empty index is %d\n", emptIndex);
80108c17:	83 ec 08             	sub    $0x8,%esp
80108c1a:	ff 75 e8             	pushl  -0x18(%ebp)
80108c1d:	68 67 9e 10 80       	push   $0x80109e67
80108c22:	e8 f1 77 ff ff       	call   80100418 <cprintf>
80108c27:	83 c4 10             	add    $0x10,%esp
  if (emptIndex != -1) {
80108c2a:	83 7d e8 ff          	cmpl   $0xffffffff,-0x18(%ebp)
80108c2e:	74 4b                	je     80108c7b <insert_handler+0xef>
    // page decrypted and added to buffer
    *pte = *pte & ~PTE_E;
80108c30:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108c33:	8b 00                	mov    (%eax),%eax
80108c35:	80 e4 fb             	and    $0xfb,%ah
80108c38:	89 c2                	mov    %eax,%edx
80108c3a:	8b 45 f0             	mov    -0x10(%ebp),%eax
80108c3d:	89 10                	mov    %edx,(%eax)
    //cprintf("The empty index is %d\n\n", emptIndex);
    p->pgQueue[emptIndex] = virtual_addr;
80108c3f:	8b 45 08             	mov    0x8(%ebp),%eax
80108c42:	8b 55 e8             	mov    -0x18(%ebp),%edx
80108c45:	8d 4a 1c             	lea    0x1c(%edx),%ecx
80108c48:	8b 55 0c             	mov    0xc(%ebp),%edx
80108c4b:	89 54 88 0c          	mov    %edx,0xc(%eax,%ecx,4)
    p->clockHand = (emptIndex + 1) % CLOCKSIZE;
80108c4f:	8b 45 e8             	mov    -0x18(%ebp),%eax
80108c52:	8d 50 01             	lea    0x1(%eax),%edx
80108c55:	89 d0                	mov    %edx,%eax
80108c57:	c1 f8 1f             	sar    $0x1f,%eax
80108c5a:	c1 e8 1d             	shr    $0x1d,%eax
80108c5d:	01 c2                	add    %eax,%edx
80108c5f:	83 e2 07             	and    $0x7,%edx
80108c62:	29 c2                	sub    %eax,%edx
80108c64:	89 d0                	mov    %edx,%eax
80108c66:	89 c2                	mov    %eax,%edx
80108c68:	8b 45 08             	mov    0x8(%ebp),%eax
80108c6b:	89 90 bc 00 00 00    	mov    %edx,0xbc(%eax)
    return 0;
80108c71:	b8 00 00 00 00       	mov    $0x0,%eax
80108c76:	e9 d8 00 00 00       	jmp    80108d53 <insert_handler+0x1c7>

  // At this point page not already in queue and the queue is full (Eviction process starts here)

  while (1) {
    // check if the page on clock handle has access bit and set it to false
    cprintf("We have entered the eviction process\n\n\n");
80108c7b:	83 ec 0c             	sub    $0xc,%esp
80108c7e:	68 7c 9e 10 80       	push   $0x80109e7c
80108c83:	e8 90 77 ff ff       	call   80100418 <cprintf>
80108c88:	83 c4 10             	add    $0x10,%esp
    
    //pte_t *currPagepte = walkpgdir(mypd, PGROUNDDOWN(p->pgQueue[p->clockHand]), 0);
    pte_t *currPagepte = walkpgdir(mypd, (char *)PGROUNDDOWN((uint)p->pgQueue[p->clockHand]), 0);
80108c8b:	8b 45 08             	mov    0x8(%ebp),%eax
80108c8e:	8b 90 bc 00 00 00    	mov    0xbc(%eax),%edx
80108c94:	8b 45 08             	mov    0x8(%ebp),%eax
80108c97:	83 c2 1c             	add    $0x1c,%edx
80108c9a:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80108c9e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108ca3:	83 ec 04             	sub    $0x4,%esp
80108ca6:	6a 00                	push   $0x0
80108ca8:	50                   	push   %eax
80108ca9:	ff 75 f4             	pushl  -0xc(%ebp)
80108cac:	e8 40 f4 ff ff       	call   801080f1 <walkpgdir>
80108cb1:	83 c4 10             	add    $0x10,%esp
80108cb4:	89 45 e4             	mov    %eax,-0x1c(%ebp)

    // page has access bit
    //if ((*currPagepte & PTE_A) == 0x020) {
    if ((*currPagepte & PTE_A)) {
80108cb7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108cba:	8b 00                	mov    (%eax),%eax
80108cbc:	83 e0 20             	and    $0x20,%eax
80108cbf:	85 c0                	test   %eax,%eax
80108cc1:	74 2b                	je     80108cee <insert_handler+0x162>
        // clear access bit	
        *currPagepte = *currPagepte & ~PTE_A;
80108cc3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108cc6:	8b 00                	mov    (%eax),%eax
80108cc8:	83 e0 df             	and    $0xffffffdf,%eax
80108ccb:	89 c2                	mov    %eax,%edx
80108ccd:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108cd0:	89 10                	mov    %edx,(%eax)
        p->clockHand = (p->clockHand + 1) % CLOCKSIZE;
80108cd2:	8b 45 08             	mov    0x8(%ebp),%eax
80108cd5:	8b 80 bc 00 00 00    	mov    0xbc(%eax),%eax
80108cdb:	83 c0 01             	add    $0x1,%eax
80108cde:	83 e0 07             	and    $0x7,%eax
80108ce1:	89 c2                	mov    %eax,%edx
80108ce3:	8b 45 08             	mov    0x8(%ebp),%eax
80108ce6:	89 90 bc 00 00 00    	mov    %edx,0xbc(%eax)
80108cec:	eb 8d                	jmp    80108c7b <insert_handler+0xef>
    // page doesn't have access bit (evict it)
    } else {
        // when page is evicted the encrypted bit gets set 
        mencrypt(p->pgQueue[p->clockHand], 1);
80108cee:	8b 45 08             	mov    0x8(%ebp),%eax
80108cf1:	8b 90 bc 00 00 00    	mov    0xbc(%eax),%edx
80108cf7:	8b 45 08             	mov    0x8(%ebp),%eax
80108cfa:	83 c2 1c             	add    $0x1c,%edx
80108cfd:	8b 44 90 0c          	mov    0xc(%eax,%edx,4),%eax
80108d01:	83 ec 08             	sub    $0x8,%esp
80108d04:	6a 01                	push   $0x1
80108d06:	50                   	push   %eax
80108d07:	e8 c2 02 00 00       	call   80108fce <mencrypt>
80108d0c:	83 c4 10             	add    $0x10,%esp
        *currPagepte = *currPagepte | PTE_E;
80108d0f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108d12:	8b 00                	mov    (%eax),%eax
80108d14:	80 cc 04             	or     $0x4,%ah
80108d17:	89 c2                	mov    %eax,%edx
80108d19:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108d1c:	89 10                	mov    %edx,(%eax)
        // index gets overwritten by page coming in
        p->pgQueue[p->clockHand] = virtual_addr;
80108d1e:	8b 45 08             	mov    0x8(%ebp),%eax
80108d21:	8b 90 bc 00 00 00    	mov    0xbc(%eax),%edx
80108d27:	8b 45 08             	mov    0x8(%ebp),%eax
80108d2a:	8d 4a 1c             	lea    0x1c(%edx),%ecx
80108d2d:	8b 55 0c             	mov    0xc(%ebp),%edx
80108d30:	89 54 88 0c          	mov    %edx,0xc(%eax,%ecx,4)
        // start hand at next index
        p->clockHand = (p->clockHand + 1) % CLOCKSIZE;
80108d34:	8b 45 08             	mov    0x8(%ebp),%eax
80108d37:	8b 80 bc 00 00 00    	mov    0xbc(%eax),%eax
80108d3d:	83 c0 01             	add    $0x1,%eax
80108d40:	83 e0 07             	and    $0x7,%eax
80108d43:	89 c2                	mov    %eax,%edx
80108d45:	8b 45 08             	mov    0x8(%ebp),%eax
80108d48:	89 90 bc 00 00 00    	mov    %edx,0xbc(%eax)
        return 0;
80108d4e:	b8 00 00 00 00       	mov    $0x0,%eax
    }
  }	
}
80108d53:	c9                   	leave  
80108d54:	c3                   	ret    

80108d55 <translate_and_set>:
        

//This function is just like uva2ka but sets the PTE_E bit and clears PTE_P
char* translate_and_set(pde_t *pgdir, char *uva) {
80108d55:	f3 0f 1e fb          	endbr32 
80108d59:	55                   	push   %ebp
80108d5a:	89 e5                	mov    %esp,%ebp
80108d5c:	83 ec 18             	sub    $0x18,%esp
  cprintf("p4Debug: setting PTE_E for %p, VPN %d\n", uva, PPN(uva));
80108d5f:	8b 45 0c             	mov    0xc(%ebp),%eax
80108d62:	c1 e8 0c             	shr    $0xc,%eax
80108d65:	83 ec 04             	sub    $0x4,%esp
80108d68:	50                   	push   %eax
80108d69:	ff 75 0c             	pushl  0xc(%ebp)
80108d6c:	68 a4 9e 10 80       	push   $0x80109ea4
80108d71:	e8 a2 76 ff ff       	call   80100418 <cprintf>
80108d76:	83 c4 10             	add    $0x10,%esp
  pte_t *pte;
  pte = walkpgdir(pgdir, uva, 0);
80108d79:	83 ec 04             	sub    $0x4,%esp
80108d7c:	6a 00                	push   $0x0
80108d7e:	ff 75 0c             	pushl  0xc(%ebp)
80108d81:	ff 75 08             	pushl  0x8(%ebp)
80108d84:	e8 68 f3 ff ff       	call   801080f1 <walkpgdir>
80108d89:	83 c4 10             	add    $0x10,%esp
80108d8c:	89 45 f4             	mov    %eax,-0xc(%ebp)

  //p4Debug: If page is not present AND it is not encrypted.
  if((*pte & PTE_P) == 0 && (*pte & PTE_E) == 0)
80108d8f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108d92:	8b 00                	mov    (%eax),%eax
80108d94:	83 e0 01             	and    $0x1,%eax
80108d97:	85 c0                	test   %eax,%eax
80108d99:	75 18                	jne    80108db3 <translate_and_set+0x5e>
80108d9b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108d9e:	8b 00                	mov    (%eax),%eax
80108da0:	25 00 04 00 00       	and    $0x400,%eax
80108da5:	85 c0                	test   %eax,%eax
80108da7:	75 0a                	jne    80108db3 <translate_and_set+0x5e>
    return 0;
80108da9:	b8 00 00 00 00       	mov    $0x0,%eax
80108dae:	e9 93 00 00 00       	jmp    80108e46 <translate_and_set+0xf1>
  //p4Debug: If page is already encrypted, i.e. PTE_E is set, return NULL as error;
  if((*pte & PTE_E)) {
80108db3:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108db6:	8b 00                	mov    (%eax),%eax
80108db8:	25 00 04 00 00       	and    $0x400,%eax
80108dbd:	85 c0                	test   %eax,%eax
80108dbf:	74 07                	je     80108dc8 <translate_and_set+0x73>
    return 0;
80108dc1:	b8 00 00 00 00       	mov    $0x0,%eax
80108dc6:	eb 7e                	jmp    80108e46 <translate_and_set+0xf1>
  }
  // p4Debug: Check if users are allowed to use this page
  if((*pte & PTE_U) == 0)
80108dc8:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108dcb:	8b 00                	mov    (%eax),%eax
80108dcd:	83 e0 04             	and    $0x4,%eax
80108dd0:	85 c0                	test   %eax,%eax
80108dd2:	75 07                	jne    80108ddb <translate_and_set+0x86>
    return 0;
80108dd4:	b8 00 00 00 00       	mov    $0x0,%eax
80108dd9:	eb 6b                	jmp    80108e46 <translate_and_set+0xf1>
  //p4Debug: Set Page as encrypted and not present so that we can trap(see trap.c) to decrypt page
  cprintf("p4Debug: PTE was %x and its pointer %p\n", *pte, pte);
80108ddb:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108dde:	8b 00                	mov    (%eax),%eax
80108de0:	83 ec 04             	sub    $0x4,%esp
80108de3:	ff 75 f4             	pushl  -0xc(%ebp)
80108de6:	50                   	push   %eax
80108de7:	68 cc 9e 10 80       	push   $0x80109ecc
80108dec:	e8 27 76 ff ff       	call   80100418 <cprintf>
80108df1:	83 c4 10             	add    $0x10,%esp
  *pte = *pte | PTE_E;
80108df4:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108df7:	8b 00                	mov    (%eax),%eax
80108df9:	80 cc 04             	or     $0x4,%ah
80108dfc:	89 c2                	mov    %eax,%edx
80108dfe:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e01:	89 10                	mov    %edx,(%eax)
  *pte = *pte & ~PTE_P;
80108e03:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e06:	8b 00                	mov    (%eax),%eax
80108e08:	83 e0 fe             	and    $0xfffffffe,%eax
80108e0b:	89 c2                	mov    %eax,%edx
80108e0d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e10:	89 10                	mov    %edx,(%eax)
  *pte = *pte & ~PTE_A;
80108e12:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e15:	8b 00                	mov    (%eax),%eax
80108e17:	83 e0 df             	and    $0xffffffdf,%eax
80108e1a:	89 c2                	mov    %eax,%edx
80108e1c:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e1f:	89 10                	mov    %edx,(%eax)
  
  cprintf("p4Debug: PTE is now %x\n", *pte);
80108e21:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e24:	8b 00                	mov    (%eax),%eax
80108e26:	83 ec 08             	sub    $0x8,%esp
80108e29:	50                   	push   %eax
80108e2a:	68 f4 9e 10 80       	push   $0x80109ef4
80108e2f:	e8 e4 75 ff ff       	call   80100418 <cprintf>
80108e34:	83 c4 10             	add    $0x10,%esp
  return (char*)P2V(PTE_ADDR(*pte));
80108e37:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108e3a:	8b 00                	mov    (%eax),%eax
80108e3c:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108e41:	05 00 00 00 80       	add    $0x80000000,%eax
}
80108e46:	c9                   	leave  
80108e47:	c3                   	ret    

80108e48 <mdecrypt>:


int mdecrypt(char *virtual_addr) {
80108e48:	f3 0f 1e fb          	endbr32 
80108e4c:	55                   	push   %ebp
80108e4d:	89 e5                	mov    %esp,%ebp
80108e4f:	83 ec 28             	sub    $0x28,%esp
  cprintf("p4Debug:  mdecrypt VPN %d, %p, pid %d\n", PPN(virtual_addr), virtual_addr, myproc()->pid);
80108e52:	e8 b6 b6 ff ff       	call   8010450d <myproc>
80108e57:	8b 40 10             	mov    0x10(%eax),%eax
80108e5a:	8b 55 08             	mov    0x8(%ebp),%edx
80108e5d:	c1 ea 0c             	shr    $0xc,%edx
80108e60:	50                   	push   %eax
80108e61:	ff 75 08             	pushl  0x8(%ebp)
80108e64:	52                   	push   %edx
80108e65:	68 0c 9f 10 80       	push   $0x80109f0c
80108e6a:	e8 a9 75 ff ff       	call   80100418 <cprintf>
80108e6f:	83 c4 10             	add    $0x10,%esp
  //p4Debug: virtual_addr is a virtual address in this PID's userspace.
  struct proc * p = myproc();
80108e72:	e8 96 b6 ff ff       	call   8010450d <myproc>
80108e77:	89 45 ec             	mov    %eax,-0x14(%ebp)
  pde_t* mypd = p->pgdir;
80108e7a:	8b 45 ec             	mov    -0x14(%ebp),%eax
80108e7d:	8b 40 04             	mov    0x4(%eax),%eax
80108e80:	89 45 e8             	mov    %eax,-0x18(%ebp)
  //set the present bit to true and encrypt bit to false
  pte_t * pte = walkpgdir(mypd, virtual_addr, 0);
80108e83:	83 ec 04             	sub    $0x4,%esp
80108e86:	6a 00                	push   $0x0
80108e88:	ff 75 08             	pushl  0x8(%ebp)
80108e8b:	ff 75 e8             	pushl  -0x18(%ebp)
80108e8e:	e8 5e f2 ff ff       	call   801080f1 <walkpgdir>
80108e93:	83 c4 10             	add    $0x10,%esp
80108e96:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if (!pte || *pte == 0) {
80108e99:	83 7d e4 00          	cmpl   $0x0,-0x1c(%ebp)
80108e9d:	74 09                	je     80108ea8 <mdecrypt+0x60>
80108e9f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108ea2:	8b 00                	mov    (%eax),%eax
80108ea4:	85 c0                	test   %eax,%eax
80108ea6:	75 1a                	jne    80108ec2 <mdecrypt+0x7a>
    cprintf("p4Debug: walkpgdir failed\n");
80108ea8:	83 ec 0c             	sub    $0xc,%esp
80108eab:	68 33 9f 10 80       	push   $0x80109f33
80108eb0:	e8 63 75 ff ff       	call   80100418 <cprintf>
80108eb5:	83 c4 10             	add    $0x10,%esp
    return -1;
80108eb8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80108ebd:	e9 0a 01 00 00       	jmp    80108fcc <mdecrypt+0x184>
  }
  cprintf("p4Debug: pte was %x\n", *pte);
80108ec2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108ec5:	8b 00                	mov    (%eax),%eax
80108ec7:	83 ec 08             	sub    $0x8,%esp
80108eca:	50                   	push   %eax
80108ecb:	68 4e 9f 10 80       	push   $0x80109f4e
80108ed0:	e8 43 75 ff ff       	call   80100418 <cprintf>
80108ed5:	83 c4 10             	add    $0x10,%esp
  *pte = *pte & ~PTE_E;
80108ed8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108edb:	8b 00                	mov    (%eax),%eax
80108edd:	80 e4 fb             	and    $0xfb,%ah
80108ee0:	89 c2                	mov    %eax,%edx
80108ee2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108ee5:	89 10                	mov    %edx,(%eax)
  *pte = *pte | PTE_P;
80108ee7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108eea:	8b 00                	mov    (%eax),%eax
80108eec:	83 c8 01             	or     $0x1,%eax
80108eef:	89 c2                	mov    %eax,%edx
80108ef1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108ef4:	89 10                	mov    %edx,(%eax)
  cprintf("p4Debug: pte is %x\n", *pte);
80108ef6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108ef9:	8b 00                	mov    (%eax),%eax
80108efb:	83 ec 08             	sub    $0x8,%esp
80108efe:	50                   	push   %eax
80108eff:	68 63 9f 10 80       	push   $0x80109f63
80108f04:	e8 0f 75 ff ff       	call   80100418 <cprintf>
80108f09:	83 c4 10             	add    $0x10,%esp
  char * original = uva2ka(mypd, virtual_addr) + OFFSET(virtual_addr);
80108f0c:	83 ec 08             	sub    $0x8,%esp
80108f0f:	ff 75 08             	pushl  0x8(%ebp)
80108f12:	ff 75 e8             	pushl  -0x18(%ebp)
80108f15:	e8 bb fa ff ff       	call   801089d5 <uva2ka>
80108f1a:	83 c4 10             	add    $0x10,%esp
80108f1d:	8b 55 08             	mov    0x8(%ebp),%edx
80108f20:	81 e2 ff 0f 00 00    	and    $0xfff,%edx
80108f26:	01 d0                	add    %edx,%eax
80108f28:	89 45 e0             	mov    %eax,-0x20(%ebp)
  cprintf("p4Debug: Original in decrypt was %p\n", original);
80108f2b:	83 ec 08             	sub    $0x8,%esp
80108f2e:	ff 75 e0             	pushl  -0x20(%ebp)
80108f31:	68 78 9f 10 80       	push   $0x80109f78
80108f36:	e8 dd 74 ff ff       	call   80100418 <cprintf>
80108f3b:	83 c4 10             	add    $0x10,%esp
  virtual_addr = (char *)PGROUNDDOWN((uint)virtual_addr);
80108f3e:	8b 45 08             	mov    0x8(%ebp),%eax
80108f41:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80108f46:	89 45 08             	mov    %eax,0x8(%ebp)
  cprintf("p4Debug: mdecrypt: rounded down va is %p\n", virtual_addr);
80108f49:	83 ec 08             	sub    $0x8,%esp
80108f4c:	ff 75 08             	pushl  0x8(%ebp)
80108f4f:	68 a0 9f 10 80       	push   $0x80109fa0
80108f54:	e8 bf 74 ff ff       	call   80100418 <cprintf>
80108f59:	83 c4 10             	add    $0x10,%esp

  char * kvp = uva2ka(mypd, virtual_addr);
80108f5c:	83 ec 08             	sub    $0x8,%esp
80108f5f:	ff 75 08             	pushl  0x8(%ebp)
80108f62:	ff 75 e8             	pushl  -0x18(%ebp)
80108f65:	e8 6b fa ff ff       	call   801089d5 <uva2ka>
80108f6a:	83 c4 10             	add    $0x10,%esp
80108f6d:	89 45 dc             	mov    %eax,-0x24(%ebp)
  if (!kvp || *kvp == 0) {
80108f70:	83 7d dc 00          	cmpl   $0x0,-0x24(%ebp)
80108f74:	74 0a                	je     80108f80 <mdecrypt+0x138>
80108f76:	8b 45 dc             	mov    -0x24(%ebp),%eax
80108f79:	0f b6 00             	movzbl (%eax),%eax
80108f7c:	84 c0                	test   %al,%al
80108f7e:	75 07                	jne    80108f87 <mdecrypt+0x13f>
    return -1;
80108f80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80108f85:	eb 45                	jmp    80108fcc <mdecrypt+0x184>
  }
  char * slider = virtual_addr;
80108f87:	8b 45 08             	mov    0x8(%ebp),%eax
80108f8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for (int offset = 0; offset < PGSIZE; offset++) {
80108f8d:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80108f94:	eb 17                	jmp    80108fad <mdecrypt+0x165>
    *slider = *slider ^ 0xFF;
80108f96:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108f99:	0f b6 00             	movzbl (%eax),%eax
80108f9c:	f7 d0                	not    %eax
80108f9e:	89 c2                	mov    %eax,%edx
80108fa0:	8b 45 f4             	mov    -0xc(%ebp),%eax
80108fa3:	88 10                	mov    %dl,(%eax)
    slider++;
80108fa5:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
  for (int offset = 0; offset < PGSIZE; offset++) {
80108fa9:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
80108fad:	81 7d f0 ff 0f 00 00 	cmpl   $0xfff,-0x10(%ebp)
80108fb4:	7e e0                	jle    80108f96 <mdecrypt+0x14e>
  }
  
  insert_handler(p, virtual_addr);
80108fb6:	83 ec 08             	sub    $0x8,%esp
80108fb9:	ff 75 08             	pushl  0x8(%ebp)
80108fbc:	ff 75 ec             	pushl  -0x14(%ebp)
80108fbf:	e8 c8 fb ff ff       	call   80108b8c <insert_handler>
80108fc4:	83 c4 10             	add    $0x10,%esp
    }
  }
  */

  // clock hand only moving on eviction
  return 0;
80108fc7:	b8 00 00 00 00       	mov    $0x0,%eax
}
80108fcc:	c9                   	leave  
80108fcd:	c3                   	ret    

80108fce <mencrypt>:

int mencrypt(char *virtual_addr, int len) {
80108fce:	f3 0f 1e fb          	endbr32 
80108fd2:	55                   	push   %ebp
80108fd3:	89 e5                	mov    %esp,%ebp
80108fd5:	83 ec 38             	sub    $0x38,%esp
  cprintf("p4Debug: mencrypt: %p %d\n", virtual_addr, len);
80108fd8:	83 ec 04             	sub    $0x4,%esp
80108fdb:	ff 75 0c             	pushl  0xc(%ebp)
80108fde:	ff 75 08             	pushl  0x8(%ebp)
80108fe1:	68 ca 9f 10 80       	push   $0x80109fca
80108fe6:	e8 2d 74 ff ff       	call   80100418 <cprintf>
80108feb:	83 c4 10             	add    $0x10,%esp
  //the given pointer is a virtual address in this pid's userspace
  struct proc * p = myproc();
80108fee:	e8 1a b5 ff ff       	call   8010450d <myproc>
80108ff3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  pde_t* mypd = p->pgdir;
80108ff6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80108ff9:	8b 40 04             	mov    0x4(%eax),%eax
80108ffc:	89 45 e0             	mov    %eax,-0x20(%ebp)

  virtual_addr = (char *)PGROUNDDOWN((uint)virtual_addr);
80108fff:	8b 45 08             	mov    0x8(%ebp),%eax
80109002:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80109007:	89 45 08             	mov    %eax,0x8(%ebp)

  //error checking first. all or nothing.
  char * slider = virtual_addr;
8010900a:	8b 45 08             	mov    0x8(%ebp),%eax
8010900d:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for (int i = 0; i < len; i++) { 
80109010:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
80109017:	eb 55                	jmp    8010906e <mencrypt+0xa0>
    //check page table for each translation first
    char * kvp = uva2ka(mypd, slider);
80109019:	83 ec 08             	sub    $0x8,%esp
8010901c:	ff 75 f4             	pushl  -0xc(%ebp)
8010901f:	ff 75 e0             	pushl  -0x20(%ebp)
80109022:	e8 ae f9 ff ff       	call   801089d5 <uva2ka>
80109027:	83 c4 10             	add    $0x10,%esp
8010902a:	89 45 d0             	mov    %eax,-0x30(%ebp)
    cprintf("p4Debug: slider %p, kvp for err check is %p\n",slider, kvp);
8010902d:	83 ec 04             	sub    $0x4,%esp
80109030:	ff 75 d0             	pushl  -0x30(%ebp)
80109033:	ff 75 f4             	pushl  -0xc(%ebp)
80109036:	68 e4 9f 10 80       	push   $0x80109fe4
8010903b:	e8 d8 73 ff ff       	call   80100418 <cprintf>
80109040:	83 c4 10             	add    $0x10,%esp
    // comment edit
    if (!kvp) {
80109043:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
80109047:	75 1a                	jne    80109063 <mencrypt+0x95>
      cprintf("p4Debug: mencrypt: kvp = NULL\n");
80109049:	83 ec 0c             	sub    $0xc,%esp
8010904c:	68 14 a0 10 80       	push   $0x8010a014
80109051:	e8 c2 73 ff ff       	call   80100418 <cprintf>
80109056:	83 c4 10             	add    $0x10,%esp
      return -1;
80109059:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010905e:	e9 3f 01 00 00       	jmp    801091a2 <mencrypt+0x1d4>
    }

    slider = slider + PGSIZE;
80109063:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
  for (int i = 0; i < len; i++) { 
8010906a:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
8010906e:	8b 45 f0             	mov    -0x10(%ebp),%eax
80109071:	3b 45 0c             	cmp    0xc(%ebp),%eax
80109074:	7c a3                	jl     80109019 <mencrypt+0x4b>
  }

  //encrypt stage. Have to do this before setting flag 
  //or else we'll page fault
  slider = virtual_addr;
80109076:	8b 45 08             	mov    0x8(%ebp),%eax
80109079:	89 45 f4             	mov    %eax,-0xc(%ebp)
  for (int i = 0; i < len; i++) {
8010907c:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
80109083:	e9 f8 00 00 00       	jmp    80109180 <mencrypt+0x1b2>
    cprintf("p4Debug: mencryptr: VPN %d, %p\n", PPN(slider), slider);
80109088:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010908b:	c1 e8 0c             	shr    $0xc,%eax
8010908e:	83 ec 04             	sub    $0x4,%esp
80109091:	ff 75 f4             	pushl  -0xc(%ebp)
80109094:	50                   	push   %eax
80109095:	68 34 a0 10 80       	push   $0x8010a034
8010909a:	e8 79 73 ff ff       	call   80100418 <cprintf>
8010909f:	83 c4 10             	add    $0x10,%esp
    //kvp = kernel virtual pointer
    //virtual address in kernel space that maps to the given pointer
    char * kvp = uva2ka(mypd, slider);
801090a2:	83 ec 08             	sub    $0x8,%esp
801090a5:	ff 75 f4             	pushl  -0xc(%ebp)
801090a8:	ff 75 e0             	pushl  -0x20(%ebp)
801090ab:	e8 25 f9 ff ff       	call   801089d5 <uva2ka>
801090b0:	83 c4 10             	add    $0x10,%esp
801090b3:	89 45 dc             	mov    %eax,-0x24(%ebp)
    if (!kvp) {
      cprintf("p4Debug: mencrypt: kvp = NULL\n");
      continue;
    }
    */
    cprintf("p4Debug: kvp for encrypt stage is %p\n", kvp);
801090b6:	83 ec 08             	sub    $0x8,%esp
801090b9:	ff 75 dc             	pushl  -0x24(%ebp)
801090bc:	68 54 a0 10 80       	push   $0x8010a054
801090c1:	e8 52 73 ff ff       	call   80100418 <cprintf>
801090c6:	83 c4 10             	add    $0x10,%esp
    pte_t * mypte = walkpgdir(mypd, slider, 0);
801090c9:	83 ec 04             	sub    $0x4,%esp
801090cc:	6a 00                	push   $0x0
801090ce:	ff 75 f4             	pushl  -0xc(%ebp)
801090d1:	ff 75 e0             	pushl  -0x20(%ebp)
801090d4:	e8 18 f0 ff ff       	call   801080f1 <walkpgdir>
801090d9:	83 c4 10             	add    $0x10,%esp
801090dc:	89 45 d8             	mov    %eax,-0x28(%ebp)
    cprintf("p4Debug: pte is %x\n", *mypte);
801090df:	8b 45 d8             	mov    -0x28(%ebp),%eax
801090e2:	8b 00                	mov    (%eax),%eax
801090e4:	83 ec 08             	sub    $0x8,%esp
801090e7:	50                   	push   %eax
801090e8:	68 63 9f 10 80       	push   $0x80109f63
801090ed:	e8 26 73 ff ff       	call   80100418 <cprintf>
801090f2:	83 c4 10             	add    $0x10,%esp
    if (*mypte & PTE_E) {
801090f5:	8b 45 d8             	mov    -0x28(%ebp),%eax
801090f8:	8b 00                	mov    (%eax),%eax
801090fa:	25 00 04 00 00       	and    $0x400,%eax
801090ff:	85 c0                	test   %eax,%eax
80109101:	74 19                	je     8010911c <mencrypt+0x14e>
      cprintf("p4Debug: already encrypted\n");
80109103:	83 ec 0c             	sub    $0xc,%esp
80109106:	68 7a a0 10 80       	push   $0x8010a07a
8010910b:	e8 08 73 ff ff       	call   80100418 <cprintf>
80109110:	83 c4 10             	add    $0x10,%esp
      slider += PGSIZE;
80109113:	81 45 f4 00 10 00 00 	addl   $0x1000,-0xc(%ebp)
      continue;
8010911a:	eb 60                	jmp    8010917c <mencrypt+0x1ae>
    }
    for (int offset = 0; offset < PGSIZE; offset++) {
8010911c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
80109123:	eb 17                	jmp    8010913c <mencrypt+0x16e>
      *slider = *slider ^ 0xFF;
80109125:	8b 45 f4             	mov    -0xc(%ebp),%eax
80109128:	0f b6 00             	movzbl (%eax),%eax
8010912b:	f7 d0                	not    %eax
8010912d:	89 c2                	mov    %eax,%edx
8010912f:	8b 45 f4             	mov    -0xc(%ebp),%eax
80109132:	88 10                	mov    %dl,(%eax)
      slider++;
80109134:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
    for (int offset = 0; offset < PGSIZE; offset++) {
80109138:	83 45 e8 01          	addl   $0x1,-0x18(%ebp)
8010913c:	81 7d e8 ff 0f 00 00 	cmpl   $0xfff,-0x18(%ebp)
80109143:	7e e0                	jle    80109125 <mencrypt+0x157>
    }
    char * kvp_translated = translate_and_set(mypd, slider-PGSIZE);
80109145:	8b 45 f4             	mov    -0xc(%ebp),%eax
80109148:	2d 00 10 00 00       	sub    $0x1000,%eax
8010914d:	83 ec 08             	sub    $0x8,%esp
80109150:	50                   	push   %eax
80109151:	ff 75 e0             	pushl  -0x20(%ebp)
80109154:	e8 fc fb ff ff       	call   80108d55 <translate_and_set>
80109159:	83 c4 10             	add    $0x10,%esp
8010915c:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    if (!kvp_translated) {
8010915f:	83 7d d4 00          	cmpl   $0x0,-0x2c(%ebp)
80109163:	75 17                	jne    8010917c <mencrypt+0x1ae>
      cprintf("p4Debug: translate failed!");
80109165:	83 ec 0c             	sub    $0xc,%esp
80109168:	68 96 a0 10 80       	push   $0x8010a096
8010916d:	e8 a6 72 ff ff       	call   80100418 <cprintf>
80109172:	83 c4 10             	add    $0x10,%esp
      return -1;
80109175:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010917a:	eb 26                	jmp    801091a2 <mencrypt+0x1d4>
  for (int i = 0; i < len; i++) {
8010917c:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
80109180:	8b 45 ec             	mov    -0x14(%ebp),%eax
80109183:	3b 45 0c             	cmp    0xc(%ebp),%eax
80109186:	0f 8c fc fe ff ff    	jl     80109088 <mencrypt+0xba>
    }
  }

  switchuvm(myproc());
8010918c:	e8 7c b3 ff ff       	call   8010450d <myproc>
80109191:	83 ec 0c             	sub    $0xc,%esp
80109194:	50                   	push   %eax
80109195:	e8 7e f1 ff ff       	call   80108318 <switchuvm>
8010919a:	83 c4 10             	add    $0x10,%esp
  return 0;
8010919d:	b8 00 00 00 00       	mov    $0x0,%eax
}
801091a2:	c9                   	leave  
801091a3:	c3                   	ret    

801091a4 <getpgtable>:


int getpgtable(struct pt_entry* pt_entries, int num, int wsetOnly) {
801091a4:	f3 0f 1e fb          	endbr32 
801091a8:	55                   	push   %ebp
801091a9:	89 e5                	mov    %esp,%ebp
801091ab:	83 ec 28             	sub    $0x28,%esp
  cprintf("p4Debug: getpgtable: %p, %d\n", pt_entries, num);
801091ae:	83 ec 04             	sub    $0x4,%esp
801091b1:	ff 75 0c             	pushl  0xc(%ebp)
801091b4:	ff 75 08             	pushl  0x8(%ebp)
801091b7:	68 b1 a0 10 80       	push   $0x8010a0b1
801091bc:	e8 57 72 ff ff       	call   80100418 <cprintf>
801091c1:	83 c4 10             	add    $0x10,%esp

  struct proc *curproc = myproc();
801091c4:	e8 44 b3 ff ff       	call   8010450d <myproc>
801091c9:	89 45 ec             	mov    %eax,-0x14(%ebp)
  pde_t *pgdir = curproc->pgdir;
801091cc:	8b 45 ec             	mov    -0x14(%ebp),%eax
801091cf:	8b 40 04             	mov    0x4(%eax),%eax
801091d2:	89 45 e8             	mov    %eax,-0x18(%ebp)
  uint uva = 0;
801091d5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
  if (curproc->sz % PGSIZE == 0)
801091dc:	8b 45 ec             	mov    -0x14(%ebp),%eax
801091df:	8b 00                	mov    (%eax),%eax
801091e1:	25 ff 0f 00 00       	and    $0xfff,%eax
801091e6:	85 c0                	test   %eax,%eax
801091e8:	75 0f                	jne    801091f9 <getpgtable+0x55>
    uva = curproc->sz - PGSIZE;
801091ea:	8b 45 ec             	mov    -0x14(%ebp),%eax
801091ed:	8b 00                	mov    (%eax),%eax
801091ef:	2d 00 10 00 00       	sub    $0x1000,%eax
801091f4:	89 45 f4             	mov    %eax,-0xc(%ebp)
801091f7:	eb 0d                	jmp    80109206 <getpgtable+0x62>
  else 
    uva = PGROUNDDOWN(curproc->sz);
801091f9:	8b 45 ec             	mov    -0x14(%ebp),%eax
801091fc:	8b 00                	mov    (%eax),%eax
801091fe:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80109203:	89 45 f4             	mov    %eax,-0xc(%ebp)

  int i = 0;
80109206:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
  
  cprintf("The index 0 is %d\n", curproc->pgQueue[0]);
8010920d:	8b 45 ec             	mov    -0x14(%ebp),%eax
80109210:	8b 40 7c             	mov    0x7c(%eax),%eax
80109213:	83 ec 08             	sub    $0x8,%esp
80109216:	50                   	push   %eax
80109217:	68 ce a0 10 80       	push   $0x8010a0ce
8010921c:	e8 f7 71 ff ff       	call   80100418 <cprintf>
80109221:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 1 is %d\n", curproc->pgQueue[1]);
80109224:	8b 45 ec             	mov    -0x14(%ebp),%eax
80109227:	8b 80 80 00 00 00    	mov    0x80(%eax),%eax
8010922d:	83 ec 08             	sub    $0x8,%esp
80109230:	50                   	push   %eax
80109231:	68 e1 a0 10 80       	push   $0x8010a0e1
80109236:	e8 dd 71 ff ff       	call   80100418 <cprintf>
8010923b:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 2 is %d\n", curproc->pgQueue[2]);
8010923e:	8b 45 ec             	mov    -0x14(%ebp),%eax
80109241:	8b 80 84 00 00 00    	mov    0x84(%eax),%eax
80109247:	83 ec 08             	sub    $0x8,%esp
8010924a:	50                   	push   %eax
8010924b:	68 f4 a0 10 80       	push   $0x8010a0f4
80109250:	e8 c3 71 ff ff       	call   80100418 <cprintf>
80109255:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 3 is %d\n", curproc->pgQueue[3]);
80109258:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010925b:	8b 80 88 00 00 00    	mov    0x88(%eax),%eax
80109261:	83 ec 08             	sub    $0x8,%esp
80109264:	50                   	push   %eax
80109265:	68 07 a1 10 80       	push   $0x8010a107
8010926a:	e8 a9 71 ff ff       	call   80100418 <cprintf>
8010926f:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 4 is %d\n", curproc->pgQueue[4]);
80109272:	8b 45 ec             	mov    -0x14(%ebp),%eax
80109275:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
8010927b:	83 ec 08             	sub    $0x8,%esp
8010927e:	50                   	push   %eax
8010927f:	68 1a a1 10 80       	push   $0x8010a11a
80109284:	e8 8f 71 ff ff       	call   80100418 <cprintf>
80109289:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 5 is %d\n", curproc->pgQueue[5]);
8010928c:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010928f:	8b 80 90 00 00 00    	mov    0x90(%eax),%eax
80109295:	83 ec 08             	sub    $0x8,%esp
80109298:	50                   	push   %eax
80109299:	68 2d a1 10 80       	push   $0x8010a12d
8010929e:	e8 75 71 ff ff       	call   80100418 <cprintf>
801092a3:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 6 is %d\n", curproc->pgQueue[6]);
801092a6:	8b 45 ec             	mov    -0x14(%ebp),%eax
801092a9:	8b 80 94 00 00 00    	mov    0x94(%eax),%eax
801092af:	83 ec 08             	sub    $0x8,%esp
801092b2:	50                   	push   %eax
801092b3:	68 40 a1 10 80       	push   $0x8010a140
801092b8:	e8 5b 71 ff ff       	call   80100418 <cprintf>
801092bd:	83 c4 10             	add    $0x10,%esp
  cprintf("The index 7 is %d\n", curproc->pgQueue[7]);
801092c0:	8b 45 ec             	mov    -0x14(%ebp),%eax
801092c3:	8b 80 98 00 00 00    	mov    0x98(%eax),%eax
801092c9:	83 ec 08             	sub    $0x8,%esp
801092cc:	50                   	push   %eax
801092cd:	68 53 a1 10 80       	push   $0x8010a153
801092d2:	e8 41 71 ff ff       	call   80100418 <cprintf>
801092d7:	83 c4 10             	add    $0x10,%esp
  
  for (;(int)uva >= 0;uva -=PGSIZE)
801092da:	e9 d6 01 00 00       	jmp    801094b5 <getpgtable+0x311>
  	if (uva >= 0) {
  		cprintf("WTF2\n");
  	}
  	*/
    // When wset is 1 and the page is not in the queue just continue
    if (wsetOnly & (bufferContainsPage(curproc, (void *)uva) == -1)) {
801092df:	8b 45 f4             	mov    -0xc(%ebp),%eax
801092e2:	83 ec 08             	sub    $0x8,%esp
801092e5:	50                   	push   %eax
801092e6:	ff 75 ec             	pushl  -0x14(%ebp)
801092e9:	e8 e2 f7 ff ff       	call   80108ad0 <bufferContainsPage>
801092ee:	83 c4 10             	add    $0x10,%esp
801092f1:	83 f8 ff             	cmp    $0xffffffff,%eax
801092f4:	0f 94 c0             	sete   %al
801092f7:	0f b6 c0             	movzbl %al,%eax
801092fa:	23 45 10             	and    0x10(%ebp),%eax
801092fd:	85 c0                	test   %eax,%eax
801092ff:	0f 85 a5 01 00 00    	jne    801094aa <getpgtable+0x306>
    	//cprintf("We continued");
        continue;
    }	
    
    pte_t *pte = walkpgdir(pgdir, (const void *)uva, 0);
80109305:	8b 45 f4             	mov    -0xc(%ebp),%eax
80109308:	83 ec 04             	sub    $0x4,%esp
8010930b:	6a 00                	push   $0x0
8010930d:	50                   	push   %eax
8010930e:	ff 75 e8             	pushl  -0x18(%ebp)
80109311:	e8 db ed ff ff       	call   801080f1 <walkpgdir>
80109316:	83 c4 10             	add    $0x10,%esp
80109319:	89 45 e4             	mov    %eax,-0x1c(%ebp)

    if (!(*pte & PTE_U) || !(*pte & (PTE_P | PTE_E)))
8010931c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010931f:	8b 00                	mov    (%eax),%eax
80109321:	83 e0 04             	and    $0x4,%eax
80109324:	85 c0                	test   %eax,%eax
80109326:	0f 84 81 01 00 00    	je     801094ad <getpgtable+0x309>
8010932c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010932f:	8b 00                	mov    (%eax),%eax
80109331:	25 01 04 00 00       	and    $0x401,%eax
80109336:	85 c0                	test   %eax,%eax
80109338:	0f 84 6f 01 00 00    	je     801094ad <getpgtable+0x309>
      continue;

    pt_entries[i].pdx = PDX(uva);
8010933e:	8b 45 f4             	mov    -0xc(%ebp),%eax
80109341:	c1 e8 16             	shr    $0x16,%eax
80109344:	89 c1                	mov    %eax,%ecx
80109346:	8b 45 f0             	mov    -0x10(%ebp),%eax
80109349:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
80109350:	8b 45 08             	mov    0x8(%ebp),%eax
80109353:	01 c2                	add    %eax,%edx
80109355:	89 c8                	mov    %ecx,%eax
80109357:	66 25 ff 03          	and    $0x3ff,%ax
8010935b:	66 25 ff 03          	and    $0x3ff,%ax
8010935f:	89 c1                	mov    %eax,%ecx
80109361:	0f b7 02             	movzwl (%edx),%eax
80109364:	66 25 00 fc          	and    $0xfc00,%ax
80109368:	09 c8                	or     %ecx,%eax
8010936a:	66 89 02             	mov    %ax,(%edx)
    pt_entries[i].ptx = PTX(uva);
8010936d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80109370:	c1 e8 0c             	shr    $0xc,%eax
80109373:	89 c1                	mov    %eax,%ecx
80109375:	8b 45 f0             	mov    -0x10(%ebp),%eax
80109378:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
8010937f:	8b 45 08             	mov    0x8(%ebp),%eax
80109382:	01 c2                	add    %eax,%edx
80109384:	89 c8                	mov    %ecx,%eax
80109386:	66 25 ff 03          	and    $0x3ff,%ax
8010938a:	0f b7 c0             	movzwl %ax,%eax
8010938d:	25 ff 03 00 00       	and    $0x3ff,%eax
80109392:	c1 e0 0a             	shl    $0xa,%eax
80109395:	89 c1                	mov    %eax,%ecx
80109397:	8b 02                	mov    (%edx),%eax
80109399:	25 ff 03 f0 ff       	and    $0xfff003ff,%eax
8010939e:	09 c8                	or     %ecx,%eax
801093a0:	89 02                	mov    %eax,(%edx)
    pt_entries[i].ppage = *pte >> PTXSHIFT;
801093a2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801093a5:	8b 00                	mov    (%eax),%eax
801093a7:	c1 e8 0c             	shr    $0xc,%eax
801093aa:	89 c2                	mov    %eax,%edx
801093ac:	8b 45 f0             	mov    -0x10(%ebp),%eax
801093af:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
801093b6:	8b 45 08             	mov    0x8(%ebp),%eax
801093b9:	01 c8                	add    %ecx,%eax
801093bb:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
801093c1:	89 d1                	mov    %edx,%ecx
801093c3:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
801093c9:	8b 50 04             	mov    0x4(%eax),%edx
801093cc:	81 e2 00 00 f0 ff    	and    $0xfff00000,%edx
801093d2:	09 ca                	or     %ecx,%edx
801093d4:	89 50 04             	mov    %edx,0x4(%eax)
    pt_entries[i].present = *pte & PTE_P;
801093d7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801093da:	8b 08                	mov    (%eax),%ecx
801093dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
801093df:	8d 14 c5 00 00 00 00 	lea    0x0(,%eax,8),%edx
801093e6:	8b 45 08             	mov    0x8(%ebp),%eax
801093e9:	01 c2                	add    %eax,%edx
801093eb:	89 c8                	mov    %ecx,%eax
801093ed:	83 e0 01             	and    $0x1,%eax
801093f0:	83 e0 01             	and    $0x1,%eax
801093f3:	c1 e0 04             	shl    $0x4,%eax
801093f6:	89 c1                	mov    %eax,%ecx
801093f8:	0f b6 42 06          	movzbl 0x6(%edx),%eax
801093fc:	83 e0 ef             	and    $0xffffffef,%eax
801093ff:	09 c8                	or     %ecx,%eax
80109401:	88 42 06             	mov    %al,0x6(%edx)
    pt_entries[i].writable = (*pte & PTE_W) > 0;
80109404:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80109407:	8b 00                	mov    (%eax),%eax
80109409:	83 e0 02             	and    $0x2,%eax
8010940c:	89 c2                	mov    %eax,%edx
8010940e:	8b 45 f0             	mov    -0x10(%ebp),%eax
80109411:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
80109418:	8b 45 08             	mov    0x8(%ebp),%eax
8010941b:	01 c8                	add    %ecx,%eax
8010941d:	85 d2                	test   %edx,%edx
8010941f:	0f 95 c2             	setne  %dl
80109422:	83 e2 01             	and    $0x1,%edx
80109425:	89 d1                	mov    %edx,%ecx
80109427:	c1 e1 05             	shl    $0x5,%ecx
8010942a:	0f b6 50 06          	movzbl 0x6(%eax),%edx
8010942e:	83 e2 df             	and    $0xffffffdf,%edx
80109431:	09 ca                	or     %ecx,%edx
80109433:	88 50 06             	mov    %dl,0x6(%eax)
    pt_entries[i].encrypted = (*pte & PTE_E) > 0;
80109436:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80109439:	8b 00                	mov    (%eax),%eax
8010943b:	25 00 04 00 00       	and    $0x400,%eax
80109440:	89 c2                	mov    %eax,%edx
80109442:	8b 45 f0             	mov    -0x10(%ebp),%eax
80109445:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
8010944c:	8b 45 08             	mov    0x8(%ebp),%eax
8010944f:	01 c8                	add    %ecx,%eax
80109451:	85 d2                	test   %edx,%edx
80109453:	0f 95 c2             	setne  %dl
80109456:	89 d1                	mov    %edx,%ecx
80109458:	c1 e1 07             	shl    $0x7,%ecx
8010945b:	0f b6 50 06          	movzbl 0x6(%eax),%edx
8010945f:	83 e2 7f             	and    $0x7f,%edx
80109462:	09 ca                	or     %ecx,%edx
80109464:	88 50 06             	mov    %dl,0x6(%eax)
    pt_entries[i].ref = (*pte & PTE_A) > 0;
80109467:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010946a:	8b 00                	mov    (%eax),%eax
8010946c:	83 e0 20             	and    $0x20,%eax
8010946f:	89 c2                	mov    %eax,%edx
80109471:	8b 45 f0             	mov    -0x10(%ebp),%eax
80109474:	8d 0c c5 00 00 00 00 	lea    0x0(,%eax,8),%ecx
8010947b:	8b 45 08             	mov    0x8(%ebp),%eax
8010947e:	01 c8                	add    %ecx,%eax
80109480:	85 d2                	test   %edx,%edx
80109482:	0f 95 c2             	setne  %dl
80109485:	89 d1                	mov    %edx,%ecx
80109487:	83 e1 01             	and    $0x1,%ecx
8010948a:	0f b6 50 07          	movzbl 0x7(%eax),%edx
8010948e:	83 e2 fe             	and    $0xfffffffe,%edx
80109491:	09 ca                	or     %ecx,%edx
80109493:	88 50 07             	mov    %dl,0x7(%eax)
    //pt_entries[i].ref = 0;
    //PT_A flag needs to be modified as per clock algo.
    i ++;
80109496:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
    if (uva == 0 || i == num) break;
8010949a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
8010949e:	74 20                	je     801094c0 <getpgtable+0x31c>
801094a0:	8b 45 f0             	mov    -0x10(%ebp),%eax
801094a3:	3b 45 0c             	cmp    0xc(%ebp),%eax
801094a6:	74 18                	je     801094c0 <getpgtable+0x31c>
801094a8:	eb 04                	jmp    801094ae <getpgtable+0x30a>
        continue;
801094aa:	90                   	nop
801094ab:	eb 01                	jmp    801094ae <getpgtable+0x30a>
      continue;
801094ad:	90                   	nop
  for (;(int)uva >= 0;uva -=PGSIZE)
801094ae:	81 6d f4 00 10 00 00 	subl   $0x1000,-0xc(%ebp)
801094b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801094b8:	85 c0                	test   %eax,%eax
801094ba:	0f 89 1f fe ff ff    	jns    801092df <getpgtable+0x13b>

  }

  return i;
801094c0:	8b 45 f0             	mov    -0x10(%ebp),%eax

}
801094c3:	c9                   	leave  
801094c4:	c3                   	ret    

801094c5 <dump_rawphymem>:


int dump_rawphymem(char *physical_addr, char * buffer) {
801094c5:	f3 0f 1e fb          	endbr32 
801094c9:	55                   	push   %ebp
801094ca:	89 e5                	mov    %esp,%ebp
801094cc:	56                   	push   %esi
801094cd:	53                   	push   %ebx
801094ce:	83 ec 10             	sub    $0x10,%esp
  cprintf("p4Debug: dump_rawphymem: %p, %p\n", physical_addr, buffer);
801094d1:	83 ec 04             	sub    $0x4,%esp
801094d4:	ff 75 0c             	pushl  0xc(%ebp)
801094d7:	ff 75 08             	pushl  0x8(%ebp)
801094da:	68 68 a1 10 80       	push   $0x8010a168
801094df:	e8 34 6f ff ff       	call   80100418 <cprintf>
801094e4:	83 c4 10             	add    $0x10,%esp
  // edit (said in desc to put this in)
  *buffer = *buffer; 
801094e7:	8b 45 0c             	mov    0xc(%ebp),%eax
801094ea:	0f b6 10             	movzbl (%eax),%edx
801094ed:	8b 45 0c             	mov    0xc(%ebp),%eax
801094f0:	88 10                	mov    %dl,(%eax)
  int retval = copyout(myproc()->pgdir, (uint) buffer, (void *) PGROUNDDOWN((int)P2V(physical_addr)), PGSIZE);
801094f2:	8b 45 08             	mov    0x8(%ebp),%eax
801094f5:	05 00 00 00 80       	add    $0x80000000,%eax
801094fa:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801094ff:	89 c6                	mov    %eax,%esi
80109501:	8b 5d 0c             	mov    0xc(%ebp),%ebx
80109504:	e8 04 b0 ff ff       	call   8010450d <myproc>
80109509:	8b 40 04             	mov    0x4(%eax),%eax
8010950c:	68 00 10 00 00       	push   $0x1000
80109511:	56                   	push   %esi
80109512:	53                   	push   %ebx
80109513:	50                   	push   %eax
80109514:	e8 15 f5 ff ff       	call   80108a2e <copyout>
80109519:	83 c4 10             	add    $0x10,%esp
8010951c:	89 45 f4             	mov    %eax,-0xc(%ebp)
  if (retval)
8010951f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
80109523:	74 07                	je     8010952c <dump_rawphymem+0x67>
    return -1;
80109525:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010952a:	eb 05                	jmp    80109531 <dump_rawphymem+0x6c>
  return 0;
8010952c:	b8 00 00 00 00       	mov    $0x0,%eax
}
80109531:	8d 65 f8             	lea    -0x8(%ebp),%esp
80109534:	5b                   	pop    %ebx
80109535:	5e                   	pop    %esi
80109536:	5d                   	pop    %ebp
80109537:	c3                   	ret    
