
main.elf:     formato del fichero elf32-littleriscv


Desensamblado de la sección .text:

00000000 <_start>:
   0:	00000037          	lui	zero,0x0

00000004 <__crt0_pointer_init>:
   4:	80002117          	auipc	sp,0x80002
   8:	ff810113          	addi	sp,sp,-8 # 80001ffc <__ctr0_io_space_begin+0x800021fc>
   c:	80000197          	auipc	gp,0x80000
  10:	7f418193          	addi	gp,gp,2036 # 80000800 <__ctr0_io_space_begin+0x80000a00>

00000014 <__crt0_cpu_csr_init>:
  14:	00000517          	auipc	a0,0x0
  18:	12050513          	addi	a0,a0,288 # 134 <__crt0_dummy_trap_handler>
  1c:	30551073          	csrw	mtvec,a0
  20:	34151073          	csrw	mepc,a0
  24:	30001073          	csrw	mstatus,zero
  28:	30401073          	csrw	mie,zero
  2c:	30601073          	csrw	mcounteren,zero
  30:	ffa00593          	li	a1,-6
  34:	32059073          	csrw	mcountinhibit,a1
  38:	b0001073          	csrw	mcycle,zero
  3c:	b8001073          	csrw	mcycleh,zero
  40:	b0201073          	csrw	minstret,zero
  44:	b8201073          	csrw	minstreth,zero

00000048 <__crt0_reg_file_clear>:
  48:	00000093          	li	ra,0
  4c:	00000213          	li	tp,0
  50:	00000293          	li	t0,0
  54:	00000313          	li	t1,0
  58:	00000393          	li	t2,0
  5c:	00000713          	li	a4,0
  60:	00000793          	li	a5,0
  64:	00000813          	li	a6,0
  68:	00000893          	li	a7,0
  6c:	00000913          	li	s2,0
  70:	00000993          	li	s3,0
  74:	00000a13          	li	s4,0
  78:	00000a93          	li	s5,0
  7c:	00000b13          	li	s6,0
  80:	00000b93          	li	s7,0
  84:	00000c13          	li	s8,0
  88:	00000c93          	li	s9,0
  8c:	00000d13          	li	s10,0
  90:	00000d93          	li	s11,0
  94:	00000e13          	li	t3,0
  98:	00000e93          	li	t4,0
  9c:	00000f13          	li	t5,0
  a0:	00000f93          	li	t6,0

000000a4 <__crt0_reset_io>:
  a4:	00000417          	auipc	s0,0x0
  a8:	d5c40413          	addi	s0,s0,-676 # fffffe00 <__ctr0_io_space_begin+0x0>
  ac:	00000497          	auipc	s1,0x0
  b0:	f5448493          	addi	s1,s1,-172 # 0 <_start>

000000b4 <__crt0_reset_io_loop>:
  b4:	00042023          	sw	zero,0(s0)
  b8:	00440413          	addi	s0,s0,4
  bc:	fe941ce3          	bne	s0,s1,b4 <__crt0_reset_io_loop>

000000c0 <__crt0_clear_bss>:
  c0:	80000597          	auipc	a1,0x80000
  c4:	f4058593          	addi	a1,a1,-192 # 80000000 <__ctr0_io_space_begin+0x80000200>
  c8:	87818613          	addi	a2,gp,-1928 # 80000078 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	29c58593          	addi	a1,a1,668 # 1378 <__crt0_copy_data_src_begin>
  e4:	80000617          	auipc	a2,0x80000
  e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
  ec:	80000697          	auipc	a3,0x80000
  f0:	f1468693          	addi	a3,a3,-236 # 80000000 <__ctr0_io_space_begin+0x80000200>

000000f4 <__crt0_copy_data_loop>:
  f4:	00d65c63          	bge	a2,a3,10c <__crt0_copy_data_loop_end>
  f8:	00058703          	lb	a4,0(a1)
  fc:	00e60023          	sb	a4,0(a2)
 100:	00158593          	addi	a1,a1,1
 104:	00160613          	addi	a2,a2,1
 108:	fedff06f          	j	f4 <__crt0_copy_data_loop>

0000010c <__crt0_copy_data_loop_end>:
 10c:	00000513          	li	a0,0
 110:	00000593          	li	a1,0
 114:	06c000ef          	jal	ra,180 <main>

00000118 <__crt0_main_aftermath>:
 118:	34051073          	csrw	mscratch,a0
 11c:	00000093          	li	ra,0
 120:	00008463          	beqz	ra,128 <__crt0_main_aftermath_end>
 124:	000080e7          	jalr	ra

00000128 <__crt0_main_aftermath_end>:
 128:	30047073          	csrci	mstatus,8

0000012c <__crt0_main_aftermath_end_loop>:
 12c:	10500073          	wfi
 130:	ffdff06f          	j	12c <__crt0_main_aftermath_end_loop>

00000134 <__crt0_dummy_trap_handler>:
 134:	ff810113          	addi	sp,sp,-8
 138:	00812023          	sw	s0,0(sp)
 13c:	00912223          	sw	s1,4(sp)
 140:	34202473          	csrr	s0,mcause
 144:	02044663          	bltz	s0,170 <__crt0_dummy_trap_handler_irq>
 148:	34102473          	csrr	s0,mepc

0000014c <__crt0_dummy_trap_handler_exc_c_check>:
 14c:	00041483          	lh	s1,0(s0)
 150:	0034f493          	andi	s1,s1,3
 154:	00240413          	addi	s0,s0,2
 158:	34141073          	csrw	mepc,s0
 15c:	00300413          	li	s0,3
 160:	00941863          	bne	s0,s1,170 <__crt0_dummy_trap_handler_irq>

00000164 <__crt0_dummy_trap_handler_exc_uncrompressed>:
 164:	34102473          	csrr	s0,mepc
 168:	00240413          	addi	s0,s0,2
 16c:	34141073          	csrw	mepc,s0

00000170 <__crt0_dummy_trap_handler_irq>:
 170:	00012403          	lw	s0,0(sp)
 174:	00412483          	lw	s1,4(sp)
 178:	00810113          	addi	sp,sp,8
 17c:	30200073          	mret

00000180 <main>:
 180:	00005537          	lui	a0,0x5
 184:	fa010113          	addi	sp,sp,-96
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3788>
 194:	04112e23          	sw	ra,92(sp)
 198:	04812c23          	sw	s0,88(sp)
 19c:	04912a23          	sw	s1,84(sp)
 1a0:	05212823          	sw	s2,80(sp)
 1a4:	05312623          	sw	s3,76(sp)
 1a8:	05412423          	sw	s4,72(sp)
 1ac:	05512223          	sw	s5,68(sp)
 1b0:	05612023          	sw	s6,64(sp)
 1b4:	03712e23          	sw	s7,60(sp)
 1b8:	03812c23          	sw	s8,56(sp)
 1bc:	03912a23          	sw	s9,52(sp)
 1c0:	03a12823          	sw	s10,48(sp)
 1c4:	03b12623          	sw	s11,44(sp)
 1c8:	3d4000ef          	jal	ra,59c <neorv32_uart0_setup>
 1cc:	76c000ef          	jal	ra,938 <neorv32_gpio_available>
 1d0:	18050463          	beqz	a0,358 <main+0x1d8>
 1d4:	425000ef          	jal	ra,df8 <neorv32_rte_setup>
 1d8:	00001537          	lui	a0,0x1
 1dc:	f4850513          	addi	a0,a0,-184 # f48 <__etext+0x50>
 1e0:	80010437          	lui	s0,0x80010
 1e4:	48c000ef          	jal	ra,670 <neorv32_uart0_print>
 1e8:	00001937          	lui	s2,0x1
 1ec:	80000a37          	lui	s4,0x80000
 1f0:	00001ab7          	lui	s5,0x1
 1f4:	00440993          	addi	s3,s0,4 # 80010004 <__ctr0_io_space_begin+0x80010204>
 1f8:	3ff00493          	li	s1,1023
 1fc:	000017b7          	lui	a5,0x1
 200:	f6078513          	addi	a0,a5,-160 # f60 <__etext+0x68>
 204:	46c000ef          	jal	ra,670 <neorv32_uart0_print>
 208:	00100613          	li	a2,1
 20c:	01400593          	li	a1,20
 210:	00410513          	addi	a0,sp,4
 214:	64c000ef          	jal	ra,860 <neorv32_uart0_scan>
 218:	0a890513          	addi	a0,s2,168 # 10a8 <__etext+0x1b0>
 21c:	454000ef          	jal	ra,670 <neorv32_uart0_print>
 220:	00410513          	addi	a0,sp,4
 224:	180000ef          	jal	ra,3a4 <char2int>
 228:	20050793          	addi	a5,a0,512
 22c:	00f4f863          	bgeu	s1,a5,23c <main+0xbc>
 230:	f70a8513          	addi	a0,s5,-144 # f70 <__etext+0x78>
 234:	43c000ef          	jal	ra,670 <neorv32_uart0_print>
 238:	fc5ff06f          	j	1fc <main+0x7c>
 23c:	000a4703          	lbu	a4,0(s4) # 80000000 <__ctr0_io_space_begin+0x80000200>
 240:	00100793          	li	a5,1
 244:	000a0b13          	mv	s6,s4
 248:	faf70ae3          	beq	a4,a5,1fc <main+0x7c>
 24c:	00a42023          	sw	a0,0(s0)
 250:	000014b7          	lui	s1,0x1
 254:	3ff00b93          	li	s7,1023
 258:	fbc48513          	addi	a0,s1,-68 # fbc <__etext+0xc4>
 25c:	414000ef          	jal	ra,670 <neorv32_uart0_print>
 260:	00100613          	li	a2,1
 264:	01400593          	li	a1,20
 268:	00410513          	addi	a0,sp,4
 26c:	5f4000ef          	jal	ra,860 <neorv32_uart0_scan>
 270:	000017b7          	lui	a5,0x1
 274:	0a878513          	addi	a0,a5,168 # 10a8 <__etext+0x1b0>
 278:	3f8000ef          	jal	ra,670 <neorv32_uart0_print>
 27c:	00410513          	addi	a0,sp,4
 280:	124000ef          	jal	ra,3a4 <char2int>
 284:	20050793          	addi	a5,a0,512
 288:	0afbe863          	bltu	s7,a5,338 <main+0x1b8>
 28c:	000b4703          	lbu	a4,0(s6)
 290:	00100793          	li	a5,1
 294:	fcf702e3          	beq	a4,a5,258 <main+0xd8>
 298:	00a9a023          	sw	a0,0(s3)
 29c:	00001537          	lui	a0,0x1
 2a0:	fcc50513          	addi	a0,a0,-52 # fcc <__etext+0xd4>
 2a4:	3cc000ef          	jal	ra,670 <neorv32_uart0_print>
 2a8:	00000493          	li	s1,0
 2ac:	00840b13          	addi	s6,s0,8
 2b0:	00001bb7          	lui	s7,0x1
 2b4:	00001c37          	lui	s8,0x1
 2b8:	00001cb7          	lui	s9,0x1
 2bc:	00001d37          	lui	s10,0x1
 2c0:	00001db7          	lui	s11,0x1
 2c4:	009b2023          	sw	s1,0(s6)
 2c8:	00042583          	lw	a1,0(s0)
 2cc:	ff4b8513          	addi	a0,s7,-12 # ff4 <__etext+0xfc>
 2d0:	3f8000ef          	jal	ra,6c8 <neorv32_uart0_printf>
 2d4:	0009a583          	lw	a1,0(s3)
 2d8:	004c0513          	addi	a0,s8,4 # 1004 <__etext+0x10c>
 2dc:	3ec000ef          	jal	ra,6c8 <neorv32_uart0_printf>
 2e0:	000b2783          	lw	a5,0(s6)
 2e4:	00100713          	li	a4,1
 2e8:	04e78e63          	beq	a5,a4,344 <main+0x1c4>
 2ec:	00200713          	li	a4,2
 2f0:	06e78063          	beq	a5,a4,350 <main+0x1d0>
 2f4:	014d8513          	addi	a0,s11,20 # 1014 <__etext+0x11c>
 2f8:	04078863          	beqz	a5,348 <main+0x1c8>
 2fc:	00c40593          	addi	a1,s0,12
 300:	0005a583          	lw	a1,0(a1)
 304:	000017b7          	lui	a5,0x1
 308:	04c78513          	addi	a0,a5,76 # 104c <__etext+0x154>
 30c:	3bc000ef          	jal	ra,6c8 <neorv32_uart0_printf>
 310:	00001537          	lui	a0,0x1
 314:	05c50513          	addi	a0,a0,92 # 105c <__etext+0x164>
 318:	358000ef          	jal	ra,670 <neorv32_uart0_print>
 31c:	00148493          	addi	s1,s1,1
 320:	00300793          	li	a5,3
 324:	faf490e3          	bne	s1,a5,2c4 <main+0x144>
 328:	00001537          	lui	a0,0x1
 32c:	07850513          	addi	a0,a0,120 # 1078 <__etext+0x180>
 330:	340000ef          	jal	ra,670 <neorv32_uart0_print>
 334:	ec5ff06f          	j	1f8 <main+0x78>
 338:	f70a8513          	addi	a0,s5,-144
 33c:	334000ef          	jal	ra,670 <neorv32_uart0_print>
 340:	f19ff06f          	j	258 <main+0xd8>
 344:	024c8513          	addi	a0,s9,36 # 1024 <__etext+0x12c>
 348:	328000ef          	jal	ra,670 <neorv32_uart0_print>
 34c:	fb1ff06f          	j	2fc <main+0x17c>
 350:	034d0513          	addi	a0,s10,52 # 1034 <__etext+0x13c>
 354:	ff5ff06f          	j	348 <main+0x1c8>
 358:	00001537          	lui	a0,0x1
 35c:	f2450513          	addi	a0,a0,-220 # f24 <__etext+0x2c>
 360:	310000ef          	jal	ra,670 <neorv32_uart0_print>
 364:	05c12083          	lw	ra,92(sp)
 368:	05812403          	lw	s0,88(sp)
 36c:	05412483          	lw	s1,84(sp)
 370:	05012903          	lw	s2,80(sp)
 374:	04c12983          	lw	s3,76(sp)
 378:	04812a03          	lw	s4,72(sp)
 37c:	04412a83          	lw	s5,68(sp)
 380:	04012b03          	lw	s6,64(sp)
 384:	03c12b83          	lw	s7,60(sp)
 388:	03812c03          	lw	s8,56(sp)
 38c:	03412c83          	lw	s9,52(sp)
 390:	03012d03          	lw	s10,48(sp)
 394:	02c12d83          	lw	s11,44(sp)
 398:	00100513          	li	a0,1
 39c:	06010113          	addi	sp,sp,96
 3a0:	00008067          	ret

000003a4 <char2int>:
 3a4:	ff010113          	addi	sp,sp,-16
 3a8:	800007b7          	lui	a5,0x80000
 3ac:	00812423          	sw	s0,8(sp)
 3b0:	00050613          	mv	a2,a0
 3b4:	00112623          	sw	ra,12(sp)
 3b8:	00078023          	sb	zero,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 3bc:	00000593          	li	a1,0
 3c0:	00000693          	li	a3,0
 3c4:	00000513          	li	a0,0
 3c8:	00078413          	mv	s0,a5
 3cc:	02d00813          	li	a6,45
 3d0:	00900893          	li	a7,9
 3d4:	00d607b3          	add	a5,a2,a3
 3d8:	0007c783          	lbu	a5,0(a5)
 3dc:	00079863          	bnez	a5,3ec <char2int+0x48>
 3e0:	02058663          	beqz	a1,40c <char2int+0x68>
 3e4:	40a00533          	neg	a0,a0
 3e8:	0240006f          	j	40c <char2int+0x68>
 3ec:	03079863          	bne	a5,a6,41c <char2int+0x78>
 3f0:	04068863          	beqz	a3,440 <char2int+0x9c>
 3f4:	00001537          	lui	a0,0x1
 3f8:	ef850513          	addi	a0,a0,-264 # ef8 <__etext>
 3fc:	274000ef          	jal	ra,670 <neorv32_uart0_print>
 400:	00100793          	li	a5,1
 404:	00f40023          	sb	a5,0(s0)
 408:	00000513          	li	a0,0
 40c:	00c12083          	lw	ra,12(sp)
 410:	00812403          	lw	s0,8(sp)
 414:	01010113          	addi	sp,sp,16
 418:	00008067          	ret
 41c:	fd078793          	addi	a5,a5,-48
 420:	0ff7f713          	andi	a4,a5,255
 424:	fce8e8e3          	bltu	a7,a4,3f4 <char2int+0x50>
 428:	00251713          	slli	a4,a0,0x2
 42c:	00a70733          	add	a4,a4,a0
 430:	00171713          	slli	a4,a4,0x1
 434:	00e78533          	add	a0,a5,a4
 438:	00168693          	addi	a3,a3,1
 43c:	f99ff06f          	j	3d4 <char2int+0x30>
 440:	00100593          	li	a1,1
 444:	ff5ff06f          	j	438 <char2int+0x94>

00000448 <__neorv32_uart_itoa>:
 448:	fd010113          	addi	sp,sp,-48
 44c:	02812423          	sw	s0,40(sp)
 450:	02912223          	sw	s1,36(sp)
 454:	03212023          	sw	s2,32(sp)
 458:	01312e23          	sw	s3,28(sp)
 45c:	01412c23          	sw	s4,24(sp)
 460:	02112623          	sw	ra,44(sp)
 464:	01512a23          	sw	s5,20(sp)
 468:	00001a37          	lui	s4,0x1
 46c:	00050493          	mv	s1,a0
 470:	00058413          	mv	s0,a1
 474:	00058523          	sb	zero,10(a1)
 478:	00000993          	li	s3,0
 47c:	00410913          	addi	s2,sp,4
 480:	0b0a0a13          	addi	s4,s4,176 # 10b0 <numbers.1>
 484:	00a00593          	li	a1,10
 488:	00048513          	mv	a0,s1
 48c:	209000ef          	jal	ra,e94 <__umodsi3>
 490:	00aa0533          	add	a0,s4,a0
 494:	00054783          	lbu	a5,0(a0)
 498:	01390ab3          	add	s5,s2,s3
 49c:	00048513          	mv	a0,s1
 4a0:	00fa8023          	sb	a5,0(s5)
 4a4:	00a00593          	li	a1,10
 4a8:	1a5000ef          	jal	ra,e4c <__udivsi3>
 4ac:	00198993          	addi	s3,s3,1
 4b0:	00a00793          	li	a5,10
 4b4:	00050493          	mv	s1,a0
 4b8:	fcf996e3          	bne	s3,a5,484 <__neorv32_uart_itoa+0x3c>
 4bc:	00090693          	mv	a3,s2
 4c0:	00900713          	li	a4,9
 4c4:	03000613          	li	a2,48
 4c8:	0096c583          	lbu	a1,9(a3)
 4cc:	00070793          	mv	a5,a4
 4d0:	fff70713          	addi	a4,a4,-1
 4d4:	01071713          	slli	a4,a4,0x10
 4d8:	01075713          	srli	a4,a4,0x10
 4dc:	00c59a63          	bne	a1,a2,4f0 <__neorv32_uart_itoa+0xa8>
 4e0:	000684a3          	sb	zero,9(a3)
 4e4:	fff68693          	addi	a3,a3,-1
 4e8:	fe0710e3          	bnez	a4,4c8 <__neorv32_uart_itoa+0x80>
 4ec:	00000793          	li	a5,0
 4f0:	00f907b3          	add	a5,s2,a5
 4f4:	00000593          	li	a1,0
 4f8:	0007c703          	lbu	a4,0(a5)
 4fc:	00070c63          	beqz	a4,514 <__neorv32_uart_itoa+0xcc>
 500:	00158693          	addi	a3,a1,1
 504:	00b405b3          	add	a1,s0,a1
 508:	00e58023          	sb	a4,0(a1)
 50c:	01069593          	slli	a1,a3,0x10
 510:	0105d593          	srli	a1,a1,0x10
 514:	fff78713          	addi	a4,a5,-1
 518:	02f91863          	bne	s2,a5,548 <__neorv32_uart_itoa+0x100>
 51c:	00b40433          	add	s0,s0,a1
 520:	00040023          	sb	zero,0(s0)
 524:	02c12083          	lw	ra,44(sp)
 528:	02812403          	lw	s0,40(sp)
 52c:	02412483          	lw	s1,36(sp)
 530:	02012903          	lw	s2,32(sp)
 534:	01c12983          	lw	s3,28(sp)
 538:	01812a03          	lw	s4,24(sp)
 53c:	01412a83          	lw	s5,20(sp)
 540:	03010113          	addi	sp,sp,48
 544:	00008067          	ret
 548:	00070793          	mv	a5,a4
 54c:	fadff06f          	j	4f8 <__neorv32_uart_itoa+0xb0>

00000550 <__neorv32_uart_tohex>:
 550:	00001637          	lui	a2,0x1
 554:	00758693          	addi	a3,a1,7
 558:	00000713          	li	a4,0
 55c:	0bc60613          	addi	a2,a2,188 # 10bc <symbols.0>
 560:	02000813          	li	a6,32
 564:	00e557b3          	srl	a5,a0,a4
 568:	00f7f793          	andi	a5,a5,15
 56c:	00f607b3          	add	a5,a2,a5
 570:	0007c783          	lbu	a5,0(a5)
 574:	00470713          	addi	a4,a4,4
 578:	fff68693          	addi	a3,a3,-1
 57c:	00f680a3          	sb	a5,1(a3)
 580:	ff0712e3          	bne	a4,a6,564 <__neorv32_uart_tohex+0x14>
 584:	00058423          	sb	zero,8(a1)
 588:	00008067          	ret

0000058c <neorv32_uart0_available>:
 58c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 590:	01255513          	srli	a0,a0,0x12
 594:	00157513          	andi	a0,a0,1
 598:	00008067          	ret

0000059c <neorv32_uart0_setup>:
 59c:	ff010113          	addi	sp,sp,-16
 5a0:	00812423          	sw	s0,8(sp)
 5a4:	00912223          	sw	s1,4(sp)
 5a8:	00112623          	sw	ra,12(sp)
 5ac:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 5b0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 5b4:	00058413          	mv	s0,a1
 5b8:	00151593          	slli	a1,a0,0x1
 5bc:	00078513          	mv	a0,a5
 5c0:	00060493          	mv	s1,a2
 5c4:	089000ef          	jal	ra,e4c <__udivsi3>
 5c8:	01051513          	slli	a0,a0,0x10
 5cc:	000017b7          	lui	a5,0x1
 5d0:	01055513          	srli	a0,a0,0x10
 5d4:	00000713          	li	a4,0
 5d8:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x106>
 5dc:	04a7e463          	bltu	a5,a0,624 <neorv32_uart0_setup+0x88>
 5e0:	0034f793          	andi	a5,s1,3
 5e4:	00347413          	andi	s0,s0,3
 5e8:	fff50513          	addi	a0,a0,-1
 5ec:	01479793          	slli	a5,a5,0x14
 5f0:	01641413          	slli	s0,s0,0x16
 5f4:	00f567b3          	or	a5,a0,a5
 5f8:	0087e7b3          	or	a5,a5,s0
 5fc:	01871713          	slli	a4,a4,0x18
 600:	00c12083          	lw	ra,12(sp)
 604:	00812403          	lw	s0,8(sp)
 608:	00e7e7b3          	or	a5,a5,a4
 60c:	10000737          	lui	a4,0x10000
 610:	00e7e7b3          	or	a5,a5,a4
 614:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 618:	00412483          	lw	s1,4(sp)
 61c:	01010113          	addi	sp,sp,16
 620:	00008067          	ret
 624:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec86>
 628:	0fd6f693          	andi	a3,a3,253
 62c:	00069a63          	bnez	a3,640 <neorv32_uart0_setup+0xa4>
 630:	00355513          	srli	a0,a0,0x3
 634:	00170713          	addi	a4,a4,1
 638:	0ff77713          	andi	a4,a4,255
 63c:	fa1ff06f          	j	5dc <neorv32_uart0_setup+0x40>
 640:	00155513          	srli	a0,a0,0x1
 644:	ff1ff06f          	j	634 <neorv32_uart0_setup+0x98>

00000648 <neorv32_uart0_putc>:
 648:	00040737          	lui	a4,0x40
 64c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 650:	00e7f7b3          	and	a5,a5,a4
 654:	fe079ce3          	bnez	a5,64c <neorv32_uart0_putc+0x4>
 658:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 65c:	00008067          	ret

00000660 <neorv32_uart0_getc>:
 660:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 664:	fe055ee3          	bgez	a0,660 <neorv32_uart0_getc>
 668:	0ff57513          	andi	a0,a0,255
 66c:	00008067          	ret

00000670 <neorv32_uart0_print>:
 670:	ff010113          	addi	sp,sp,-16
 674:	00812423          	sw	s0,8(sp)
 678:	01212023          	sw	s2,0(sp)
 67c:	00112623          	sw	ra,12(sp)
 680:	00912223          	sw	s1,4(sp)
 684:	00050413          	mv	s0,a0
 688:	00a00913          	li	s2,10
 68c:	00044483          	lbu	s1,0(s0)
 690:	00140413          	addi	s0,s0,1
 694:	00049e63          	bnez	s1,6b0 <neorv32_uart0_print+0x40>
 698:	00c12083          	lw	ra,12(sp)
 69c:	00812403          	lw	s0,8(sp)
 6a0:	00412483          	lw	s1,4(sp)
 6a4:	00012903          	lw	s2,0(sp)
 6a8:	01010113          	addi	sp,sp,16
 6ac:	00008067          	ret
 6b0:	01249663          	bne	s1,s2,6bc <neorv32_uart0_print+0x4c>
 6b4:	00d00513          	li	a0,13
 6b8:	f91ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 6bc:	00048513          	mv	a0,s1
 6c0:	f89ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 6c4:	fc9ff06f          	j	68c <neorv32_uart0_print+0x1c>

000006c8 <neorv32_uart0_printf>:
 6c8:	fa010113          	addi	sp,sp,-96
 6cc:	04f12a23          	sw	a5,84(sp)
 6d0:	04410793          	addi	a5,sp,68
 6d4:	02812c23          	sw	s0,56(sp)
 6d8:	03212823          	sw	s2,48(sp)
 6dc:	03412423          	sw	s4,40(sp)
 6e0:	03512223          	sw	s5,36(sp)
 6e4:	03612023          	sw	s6,32(sp)
 6e8:	01712e23          	sw	s7,28(sp)
 6ec:	01812c23          	sw	s8,24(sp)
 6f0:	01912a23          	sw	s9,20(sp)
 6f4:	02112e23          	sw	ra,60(sp)
 6f8:	02912a23          	sw	s1,52(sp)
 6fc:	03312623          	sw	s3,44(sp)
 700:	00050413          	mv	s0,a0
 704:	04b12223          	sw	a1,68(sp)
 708:	04c12423          	sw	a2,72(sp)
 70c:	04d12623          	sw	a3,76(sp)
 710:	04e12823          	sw	a4,80(sp)
 714:	05012c23          	sw	a6,88(sp)
 718:	05112e23          	sw	a7,92(sp)
 71c:	00f12023          	sw	a5,0(sp)
 720:	02500a13          	li	s4,37
 724:	00a00a93          	li	s5,10
 728:	07300913          	li	s2,115
 72c:	07500b13          	li	s6,117
 730:	07800b93          	li	s7,120
 734:	06300c13          	li	s8,99
 738:	06900c93          	li	s9,105
 73c:	00044483          	lbu	s1,0(s0)
 740:	02049c63          	bnez	s1,778 <neorv32_uart0_printf+0xb0>
 744:	03c12083          	lw	ra,60(sp)
 748:	03812403          	lw	s0,56(sp)
 74c:	03412483          	lw	s1,52(sp)
 750:	03012903          	lw	s2,48(sp)
 754:	02c12983          	lw	s3,44(sp)
 758:	02812a03          	lw	s4,40(sp)
 75c:	02412a83          	lw	s5,36(sp)
 760:	02012b03          	lw	s6,32(sp)
 764:	01c12b83          	lw	s7,28(sp)
 768:	01812c03          	lw	s8,24(sp)
 76c:	01412c83          	lw	s9,20(sp)
 770:	06010113          	addi	sp,sp,96
 774:	00008067          	ret
 778:	0d449863          	bne	s1,s4,848 <neorv32_uart0_printf+0x180>
 77c:	00240993          	addi	s3,s0,2
 780:	00144403          	lbu	s0,1(s0)
 784:	05240263          	beq	s0,s2,7c8 <neorv32_uart0_printf+0x100>
 788:	00896e63          	bltu	s2,s0,7a4 <neorv32_uart0_printf+0xdc>
 78c:	05840c63          	beq	s0,s8,7e4 <neorv32_uart0_printf+0x11c>
 790:	07940663          	beq	s0,s9,7fc <neorv32_uart0_printf+0x134>
 794:	02500513          	li	a0,37
 798:	eb1ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 79c:	00040513          	mv	a0,s0
 7a0:	0540006f          	j	7f4 <neorv32_uart0_printf+0x12c>
 7a4:	09640663          	beq	s0,s6,830 <neorv32_uart0_printf+0x168>
 7a8:	ff7416e3          	bne	s0,s7,794 <neorv32_uart0_printf+0xcc>
 7ac:	00012783          	lw	a5,0(sp)
 7b0:	00410593          	addi	a1,sp,4
 7b4:	0007a503          	lw	a0,0(a5)
 7b8:	00478713          	addi	a4,a5,4
 7bc:	00e12023          	sw	a4,0(sp)
 7c0:	d91ff0ef          	jal	ra,550 <__neorv32_uart_tohex>
 7c4:	0640006f          	j	828 <neorv32_uart0_printf+0x160>
 7c8:	00012783          	lw	a5,0(sp)
 7cc:	0007a503          	lw	a0,0(a5)
 7d0:	00478713          	addi	a4,a5,4
 7d4:	00e12023          	sw	a4,0(sp)
 7d8:	e99ff0ef          	jal	ra,670 <neorv32_uart0_print>
 7dc:	00098413          	mv	s0,s3
 7e0:	f5dff06f          	j	73c <neorv32_uart0_printf+0x74>
 7e4:	00012783          	lw	a5,0(sp)
 7e8:	0007c503          	lbu	a0,0(a5)
 7ec:	00478713          	addi	a4,a5,4
 7f0:	00e12023          	sw	a4,0(sp)
 7f4:	e55ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 7f8:	fe5ff06f          	j	7dc <neorv32_uart0_printf+0x114>
 7fc:	00012783          	lw	a5,0(sp)
 800:	0007a403          	lw	s0,0(a5)
 804:	00478713          	addi	a4,a5,4
 808:	00e12023          	sw	a4,0(sp)
 80c:	00045863          	bgez	s0,81c <neorv32_uart0_printf+0x154>
 810:	02d00513          	li	a0,45
 814:	40800433          	neg	s0,s0
 818:	e31ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 81c:	00410593          	addi	a1,sp,4
 820:	00040513          	mv	a0,s0
 824:	c25ff0ef          	jal	ra,448 <__neorv32_uart_itoa>
 828:	00410513          	addi	a0,sp,4
 82c:	fadff06f          	j	7d8 <neorv32_uart0_printf+0x110>
 830:	00012783          	lw	a5,0(sp)
 834:	00410593          	addi	a1,sp,4
 838:	00478713          	addi	a4,a5,4
 83c:	0007a503          	lw	a0,0(a5)
 840:	00e12023          	sw	a4,0(sp)
 844:	fe1ff06f          	j	824 <neorv32_uart0_printf+0x15c>
 848:	01549663          	bne	s1,s5,854 <neorv32_uart0_printf+0x18c>
 84c:	00d00513          	li	a0,13
 850:	df9ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 854:	00140993          	addi	s3,s0,1
 858:	00048513          	mv	a0,s1
 85c:	f99ff06f          	j	7f4 <neorv32_uart0_printf+0x12c>

00000860 <neorv32_uart0_scan>:
 860:	fd010113          	addi	sp,sp,-48
 864:	02812423          	sw	s0,40(sp)
 868:	02912223          	sw	s1,36(sp)
 86c:	01312e23          	sw	s3,28(sp)
 870:	01412c23          	sw	s4,24(sp)
 874:	01512a23          	sw	s5,20(sp)
 878:	01612823          	sw	s6,16(sp)
 87c:	01712623          	sw	s7,12(sp)
 880:	01812423          	sw	s8,8(sp)
 884:	02112623          	sw	ra,44(sp)
 888:	03212023          	sw	s2,32(sp)
 88c:	00050413          	mv	s0,a0
 890:	00060993          	mv	s3,a2
 894:	00000493          	li	s1,0
 898:	00800a93          	li	s5,8
 89c:	00d00b13          	li	s6,13
 8a0:	05e00b93          	li	s7,94
 8a4:	fff58a13          	addi	s4,a1,-1
 8a8:	00001c37          	lui	s8,0x1
 8ac:	db5ff0ef          	jal	ra,660 <neorv32_uart0_getc>
 8b0:	00050913          	mv	s2,a0
 8b4:	03551063          	bne	a0,s5,8d4 <neorv32_uart0_scan+0x74>
 8b8:	fe048ae3          	beqz	s1,8ac <neorv32_uart0_scan+0x4c>
 8bc:	00098663          	beqz	s3,8c8 <neorv32_uart0_scan+0x68>
 8c0:	0acc0513          	addi	a0,s8,172 # 10ac <__etext+0x1b4>
 8c4:	dadff0ef          	jal	ra,670 <neorv32_uart0_print>
 8c8:	fff40413          	addi	s0,s0,-1
 8cc:	fff48493          	addi	s1,s1,-1
 8d0:	fddff06f          	j	8ac <neorv32_uart0_scan+0x4c>
 8d4:	03650663          	beq	a0,s6,900 <neorv32_uart0_scan+0xa0>
 8d8:	fe050793          	addi	a5,a0,-32
 8dc:	0ff7f793          	andi	a5,a5,255
 8e0:	fcfbe6e3          	bltu	s7,a5,8ac <neorv32_uart0_scan+0x4c>
 8e4:	fd44d4e3          	bge	s1,s4,8ac <neorv32_uart0_scan+0x4c>
 8e8:	00098463          	beqz	s3,8f0 <neorv32_uart0_scan+0x90>
 8ec:	d5dff0ef          	jal	ra,648 <neorv32_uart0_putc>
 8f0:	01240023          	sb	s2,0(s0)
 8f4:	00148493          	addi	s1,s1,1
 8f8:	00140413          	addi	s0,s0,1
 8fc:	fb1ff06f          	j	8ac <neorv32_uart0_scan+0x4c>
 900:	02c12083          	lw	ra,44(sp)
 904:	00040023          	sb	zero,0(s0)
 908:	02812403          	lw	s0,40(sp)
 90c:	02012903          	lw	s2,32(sp)
 910:	01c12983          	lw	s3,28(sp)
 914:	01812a03          	lw	s4,24(sp)
 918:	01412a83          	lw	s5,20(sp)
 91c:	01012b03          	lw	s6,16(sp)
 920:	00c12b83          	lw	s7,12(sp)
 924:	00812c03          	lw	s8,8(sp)
 928:	00048513          	mv	a0,s1
 92c:	02412483          	lw	s1,36(sp)
 930:	03010113          	addi	sp,sp,48
 934:	00008067          	ret

00000938 <neorv32_gpio_available>:
 938:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 93c:	01055513          	srli	a0,a0,0x10
 940:	00157513          	andi	a0,a0,1
 944:	00008067          	ret
 948:	0000                	unimp
 94a:	0000                	unimp
 94c:	0000                	unimp
 94e:	0000                	unimp

00000950 <__neorv32_rte_core>:
 950:	fc010113          	addi	sp,sp,-64
 954:	02112e23          	sw	ra,60(sp)
 958:	02512c23          	sw	t0,56(sp)
 95c:	02612a23          	sw	t1,52(sp)
 960:	02712823          	sw	t2,48(sp)
 964:	02a12623          	sw	a0,44(sp)
 968:	02b12423          	sw	a1,40(sp)
 96c:	02c12223          	sw	a2,36(sp)
 970:	02d12023          	sw	a3,32(sp)
 974:	00e12e23          	sw	a4,28(sp)
 978:	00f12c23          	sw	a5,24(sp)
 97c:	01012a23          	sw	a6,20(sp)
 980:	01112823          	sw	a7,16(sp)
 984:	01c12623          	sw	t3,12(sp)
 988:	01d12423          	sw	t4,8(sp)
 98c:	01e12223          	sw	t5,4(sp)
 990:	01f12023          	sw	t6,0(sp)
 994:	34102773          	csrr	a4,mepc
 998:	34071073          	csrw	mscratch,a4
 99c:	342027f3          	csrr	a5,mcause
 9a0:	0807ca63          	bltz	a5,a34 <__neorv32_rte_core+0xe4>
 9a4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ec88>
 9a8:	00300593          	li	a1,3
 9ac:	0036f693          	andi	a3,a3,3
 9b0:	00270613          	addi	a2,a4,2
 9b4:	00b69463          	bne	a3,a1,9bc <__neorv32_rte_core+0x6c>
 9b8:	00470613          	addi	a2,a4,4
 9bc:	34161073          	csrw	mepc,a2
 9c0:	00b00713          	li	a4,11
 9c4:	04f77c63          	bgeu	a4,a5,a1c <__neorv32_rte_core+0xcc>
 9c8:	000017b7          	lui	a5,0x1
 9cc:	bcc78793          	addi	a5,a5,-1076 # bcc <__neorv32_rte_debug_exc_handler>
 9d0:	000780e7          	jalr	a5
 9d4:	03c12083          	lw	ra,60(sp)
 9d8:	03812283          	lw	t0,56(sp)
 9dc:	03412303          	lw	t1,52(sp)
 9e0:	03012383          	lw	t2,48(sp)
 9e4:	02c12503          	lw	a0,44(sp)
 9e8:	02812583          	lw	a1,40(sp)
 9ec:	02412603          	lw	a2,36(sp)
 9f0:	02012683          	lw	a3,32(sp)
 9f4:	01c12703          	lw	a4,28(sp)
 9f8:	01812783          	lw	a5,24(sp)
 9fc:	01412803          	lw	a6,20(sp)
 a00:	01012883          	lw	a7,16(sp)
 a04:	00c12e03          	lw	t3,12(sp)
 a08:	00812e83          	lw	t4,8(sp)
 a0c:	00412f03          	lw	t5,4(sp)
 a10:	00012f83          	lw	t6,0(sp)
 a14:	04010113          	addi	sp,sp,64
 a18:	30200073          	mret
 a1c:	00001737          	lui	a4,0x1
 a20:	00279793          	slli	a5,a5,0x2
 a24:	0d070713          	addi	a4,a4,208 # 10d0 <symbols.0+0x14>
 a28:	00e787b3          	add	a5,a5,a4
 a2c:	0007a783          	lw	a5,0(a5)
 a30:	00078067          	jr	a5
 a34:	80000737          	lui	a4,0x80000
 a38:	ffd74713          	xori	a4,a4,-3
 a3c:	00e787b3          	add	a5,a5,a4
 a40:	01c00713          	li	a4,28
 a44:	f8f762e3          	bltu	a4,a5,9c8 <__neorv32_rte_core+0x78>
 a48:	00001737          	lui	a4,0x1
 a4c:	00279793          	slli	a5,a5,0x2
 a50:	10070713          	addi	a4,a4,256 # 1100 <symbols.0+0x44>
 a54:	00e787b3          	add	a5,a5,a4
 a58:	0007a783          	lw	a5,0(a5)
 a5c:	00078067          	jr	a5
 a60:	800007b7          	lui	a5,0x80000
 a64:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 a68:	f69ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 a6c:	800007b7          	lui	a5,0x80000
 a70:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 a74:	f5dff06f          	j	9d0 <__neorv32_rte_core+0x80>
 a78:	800007b7          	lui	a5,0x80000
 a7c:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 a80:	f51ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 a84:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0xc>
 a88:	f49ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 a8c:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x10>
 a90:	f41ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 a94:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x14>
 a98:	f39ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 a9c:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x18>
 aa0:	f31ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 aa4:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x1c>
 aa8:	f29ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 aac:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x20>
 ab0:	f21ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 ab4:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x24>
 ab8:	f19ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 abc:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x28>
 ac0:	f11ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 ac4:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x2c>
 ac8:	f09ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 acc:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x30>
 ad0:	f01ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 ad4:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x34>
 ad8:	ef9ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 adc:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x38>
 ae0:	ef1ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 ae4:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x3c>
 ae8:	ee9ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 aec:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x40>
 af0:	ee1ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 af4:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x44>
 af8:	ed9ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 afc:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x48>
 b00:	ed1ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b04:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x4c>
 b08:	ec9ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b0c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x50>
 b10:	ec1ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b14:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x54>
 b18:	eb9ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b1c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x58>
 b20:	eb1ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b24:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x5c>
 b28:	ea9ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b2c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x60>
 b30:	ea1ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b34:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x64>
 b38:	e99ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b3c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x68>
 b40:	e91ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b44:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x6c>
 b48:	e89ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b4c:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x70>
 b50:	e81ff06f          	j	9d0 <__neorv32_rte_core+0x80>
 b54:	0000                	unimp
 b56:	0000                	unimp
 b58:	0000                	unimp
 b5a:	0000                	unimp

00000b5c <__neorv32_rte_print_hex_word>:
 b5c:	fe010113          	addi	sp,sp,-32
 b60:	01212823          	sw	s2,16(sp)
 b64:	00050913          	mv	s2,a0
 b68:	00001537          	lui	a0,0x1
 b6c:	00912a23          	sw	s1,20(sp)
 b70:	17450513          	addi	a0,a0,372 # 1174 <symbols.0+0xb8>
 b74:	000014b7          	lui	s1,0x1
 b78:	00812c23          	sw	s0,24(sp)
 b7c:	01312623          	sw	s3,12(sp)
 b80:	00112e23          	sw	ra,28(sp)
 b84:	01c00413          	li	s0,28
 b88:	ae9ff0ef          	jal	ra,670 <neorv32_uart0_print>
 b8c:	36848493          	addi	s1,s1,872 # 1368 <hex_symbols.0>
 b90:	ffc00993          	li	s3,-4
 b94:	008957b3          	srl	a5,s2,s0
 b98:	00f7f793          	andi	a5,a5,15
 b9c:	00f487b3          	add	a5,s1,a5
 ba0:	0007c503          	lbu	a0,0(a5)
 ba4:	ffc40413          	addi	s0,s0,-4
 ba8:	aa1ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 bac:	ff3414e3          	bne	s0,s3,b94 <__neorv32_rte_print_hex_word+0x38>
 bb0:	01c12083          	lw	ra,28(sp)
 bb4:	01812403          	lw	s0,24(sp)
 bb8:	01412483          	lw	s1,20(sp)
 bbc:	01012903          	lw	s2,16(sp)
 bc0:	00c12983          	lw	s3,12(sp)
 bc4:	02010113          	addi	sp,sp,32
 bc8:	00008067          	ret

00000bcc <__neorv32_rte_debug_exc_handler>:
 bcc:	ff010113          	addi	sp,sp,-16
 bd0:	00112623          	sw	ra,12(sp)
 bd4:	00812423          	sw	s0,8(sp)
 bd8:	00912223          	sw	s1,4(sp)
 bdc:	9b1ff0ef          	jal	ra,58c <neorv32_uart0_available>
 be0:	1c050863          	beqz	a0,db0 <__neorv32_rte_debug_exc_handler+0x1e4>
 be4:	00001537          	lui	a0,0x1
 be8:	17850513          	addi	a0,a0,376 # 1178 <symbols.0+0xbc>
 bec:	a85ff0ef          	jal	ra,670 <neorv32_uart0_print>
 bf0:	34202473          	csrr	s0,mcause
 bf4:	00900713          	li	a4,9
 bf8:	00f47793          	andi	a5,s0,15
 bfc:	03078493          	addi	s1,a5,48
 c00:	00f77463          	bgeu	a4,a5,c08 <__neorv32_rte_debug_exc_handler+0x3c>
 c04:	05778493          	addi	s1,a5,87
 c08:	00b00793          	li	a5,11
 c0c:	0087ee63          	bltu	a5,s0,c28 <__neorv32_rte_debug_exc_handler+0x5c>
 c10:	00001737          	lui	a4,0x1
 c14:	00241793          	slli	a5,s0,0x2
 c18:	33870713          	addi	a4,a4,824 # 1338 <symbols.0+0x27c>
 c1c:	00e787b3          	add	a5,a5,a4
 c20:	0007a783          	lw	a5,0(a5)
 c24:	00078067          	jr	a5
 c28:	800007b7          	lui	a5,0x80000
 c2c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 c30:	14e40e63          	beq	s0,a4,d8c <__neorv32_rte_debug_exc_handler+0x1c0>
 c34:	02876a63          	bltu	a4,s0,c68 <__neorv32_rte_debug_exc_handler+0x9c>
 c38:	00378713          	addi	a4,a5,3
 c3c:	12e40c63          	beq	s0,a4,d74 <__neorv32_rte_debug_exc_handler+0x1a8>
 c40:	00778793          	addi	a5,a5,7
 c44:	12f40e63          	beq	s0,a5,d80 <__neorv32_rte_debug_exc_handler+0x1b4>
 c48:	00001537          	lui	a0,0x1
 c4c:	2d850513          	addi	a0,a0,728 # 12d8 <symbols.0+0x21c>
 c50:	a21ff0ef          	jal	ra,670 <neorv32_uart0_print>
 c54:	00040513          	mv	a0,s0
 c58:	f05ff0ef          	jal	ra,b5c <__neorv32_rte_print_hex_word>
 c5c:	00100793          	li	a5,1
 c60:	08f40c63          	beq	s0,a5,cf8 <__neorv32_rte_debug_exc_handler+0x12c>
 c64:	0280006f          	j	c8c <__neorv32_rte_debug_exc_handler+0xc0>
 c68:	ff07c793          	xori	a5,a5,-16
 c6c:	00f407b3          	add	a5,s0,a5
 c70:	00f00713          	li	a4,15
 c74:	fcf76ae3          	bltu	a4,a5,c48 <__neorv32_rte_debug_exc_handler+0x7c>
 c78:	00001537          	lui	a0,0x1
 c7c:	2c850513          	addi	a0,a0,712 # 12c8 <symbols.0+0x20c>
 c80:	9f1ff0ef          	jal	ra,670 <neorv32_uart0_print>
 c84:	00048513          	mv	a0,s1
 c88:	9c1ff0ef          	jal	ra,648 <neorv32_uart0_putc>
 c8c:	ffd47413          	andi	s0,s0,-3
 c90:	00500793          	li	a5,5
 c94:	06f40263          	beq	s0,a5,cf8 <__neorv32_rte_debug_exc_handler+0x12c>
 c98:	00001537          	lui	a0,0x1
 c9c:	31c50513          	addi	a0,a0,796 # 131c <symbols.0+0x260>
 ca0:	9d1ff0ef          	jal	ra,670 <neorv32_uart0_print>
 ca4:	34002573          	csrr	a0,mscratch
 ca8:	eb5ff0ef          	jal	ra,b5c <__neorv32_rte_print_hex_word>
 cac:	00001537          	lui	a0,0x1
 cb0:	32450513          	addi	a0,a0,804 # 1324 <symbols.0+0x268>
 cb4:	9bdff0ef          	jal	ra,670 <neorv32_uart0_print>
 cb8:	34302573          	csrr	a0,mtval
 cbc:	ea1ff0ef          	jal	ra,b5c <__neorv32_rte_print_hex_word>
 cc0:	00812403          	lw	s0,8(sp)
 cc4:	00c12083          	lw	ra,12(sp)
 cc8:	00412483          	lw	s1,4(sp)
 ccc:	00001537          	lui	a0,0x1
 cd0:	33050513          	addi	a0,a0,816 # 1330 <symbols.0+0x274>
 cd4:	01010113          	addi	sp,sp,16
 cd8:	999ff06f          	j	670 <neorv32_uart0_print>
 cdc:	00001537          	lui	a0,0x1
 ce0:	18050513          	addi	a0,a0,384 # 1180 <symbols.0+0xc4>
 ce4:	98dff0ef          	jal	ra,670 <neorv32_uart0_print>
 ce8:	fb1ff06f          	j	c98 <__neorv32_rte_debug_exc_handler+0xcc>
 cec:	00001537          	lui	a0,0x1
 cf0:	1a050513          	addi	a0,a0,416 # 11a0 <symbols.0+0xe4>
 cf4:	97dff0ef          	jal	ra,670 <neorv32_uart0_print>
 cf8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 cfc:	0a07d463          	bgez	a5,da4 <__neorv32_rte_debug_exc_handler+0x1d8>
 d00:	0017f793          	andi	a5,a5,1
 d04:	08078a63          	beqz	a5,d98 <__neorv32_rte_debug_exc_handler+0x1cc>
 d08:	00001537          	lui	a0,0x1
 d0c:	2f050513          	addi	a0,a0,752 # 12f0 <symbols.0+0x234>
 d10:	fd5ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d14:	00001537          	lui	a0,0x1
 d18:	1bc50513          	addi	a0,a0,444 # 11bc <symbols.0+0x100>
 d1c:	fc9ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d20:	00001537          	lui	a0,0x1
 d24:	1d050513          	addi	a0,a0,464 # 11d0 <symbols.0+0x114>
 d28:	fbdff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d2c:	00001537          	lui	a0,0x1
 d30:	1dc50513          	addi	a0,a0,476 # 11dc <symbols.0+0x120>
 d34:	fb1ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d38:	00001537          	lui	a0,0x1
 d3c:	1f450513          	addi	a0,a0,500 # 11f4 <symbols.0+0x138>
 d40:	fb5ff06f          	j	cf4 <__neorv32_rte_debug_exc_handler+0x128>
 d44:	00001537          	lui	a0,0x1
 d48:	20850513          	addi	a0,a0,520 # 1208 <symbols.0+0x14c>
 d4c:	f99ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d50:	00001537          	lui	a0,0x1
 d54:	22450513          	addi	a0,a0,548 # 1224 <symbols.0+0x168>
 d58:	f9dff06f          	j	cf4 <__neorv32_rte_debug_exc_handler+0x128>
 d5c:	00001537          	lui	a0,0x1
 d60:	23850513          	addi	a0,a0,568 # 1238 <symbols.0+0x17c>
 d64:	f81ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d68:	00001537          	lui	a0,0x1
 d6c:	25850513          	addi	a0,a0,600 # 1258 <symbols.0+0x19c>
 d70:	f75ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d74:	00001537          	lui	a0,0x1
 d78:	27850513          	addi	a0,a0,632 # 1278 <symbols.0+0x1bc>
 d7c:	f69ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d80:	00001537          	lui	a0,0x1
 d84:	29450513          	addi	a0,a0,660 # 1294 <symbols.0+0x1d8>
 d88:	f5dff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d8c:	00001537          	lui	a0,0x1
 d90:	2ac50513          	addi	a0,a0,684 # 12ac <symbols.0+0x1f0>
 d94:	f51ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 d98:	00001537          	lui	a0,0x1
 d9c:	30050513          	addi	a0,a0,768 # 1300 <symbols.0+0x244>
 da0:	f45ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 da4:	00001537          	lui	a0,0x1
 da8:	31050513          	addi	a0,a0,784 # 1310 <symbols.0+0x254>
 dac:	f39ff06f          	j	ce4 <__neorv32_rte_debug_exc_handler+0x118>
 db0:	00c12083          	lw	ra,12(sp)
 db4:	00812403          	lw	s0,8(sp)
 db8:	00412483          	lw	s1,4(sp)
 dbc:	01010113          	addi	sp,sp,16
 dc0:	00008067          	ret

00000dc4 <neorv32_rte_exception_uninstall>:
 dc4:	01f00793          	li	a5,31
 dc8:	02a7e463          	bltu	a5,a0,df0 <neorv32_rte_exception_uninstall+0x2c>
 dcc:	800007b7          	lui	a5,0x80000
 dd0:	00478793          	addi	a5,a5,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
 dd4:	00251513          	slli	a0,a0,0x2
 dd8:	00a78533          	add	a0,a5,a0
 ddc:	000017b7          	lui	a5,0x1
 de0:	bcc78793          	addi	a5,a5,-1076 # bcc <__neorv32_rte_debug_exc_handler>
 de4:	00f52023          	sw	a5,0(a0)
 de8:	00000513          	li	a0,0
 dec:	00008067          	ret
 df0:	00100513          	li	a0,1
 df4:	00008067          	ret

00000df8 <neorv32_rte_setup>:
 df8:	ff010113          	addi	sp,sp,-16
 dfc:	000017b7          	lui	a5,0x1
 e00:	00112623          	sw	ra,12(sp)
 e04:	00812423          	sw	s0,8(sp)
 e08:	00912223          	sw	s1,4(sp)
 e0c:	95078793          	addi	a5,a5,-1712 # 950 <__neorv32_rte_core>
 e10:	30579073          	csrw	mtvec,a5
 e14:	00000413          	li	s0,0
 e18:	01d00493          	li	s1,29
 e1c:	00040513          	mv	a0,s0
 e20:	00140413          	addi	s0,s0,1
 e24:	0ff47413          	andi	s0,s0,255
 e28:	f9dff0ef          	jal	ra,dc4 <neorv32_rte_exception_uninstall>
 e2c:	fe9418e3          	bne	s0,s1,e1c <neorv32_rte_setup+0x24>
 e30:	00c12083          	lw	ra,12(sp)
 e34:	00812403          	lw	s0,8(sp)
 e38:	00412483          	lw	s1,4(sp)
 e3c:	01010113          	addi	sp,sp,16
 e40:	00008067          	ret

00000e44 <__divsi3>:
 e44:	06054063          	bltz	a0,ea4 <__umodsi3+0x10>
 e48:	0605c663          	bltz	a1,eb4 <__umodsi3+0x20>

00000e4c <__udivsi3>:
 e4c:	00058613          	mv	a2,a1
 e50:	00050593          	mv	a1,a0
 e54:	fff00513          	li	a0,-1
 e58:	02060c63          	beqz	a2,e90 <__udivsi3+0x44>
 e5c:	00100693          	li	a3,1
 e60:	00b67a63          	bgeu	a2,a1,e74 <__udivsi3+0x28>
 e64:	00c05863          	blez	a2,e74 <__udivsi3+0x28>
 e68:	00161613          	slli	a2,a2,0x1
 e6c:	00169693          	slli	a3,a3,0x1
 e70:	feb66ae3          	bltu	a2,a1,e64 <__udivsi3+0x18>
 e74:	00000513          	li	a0,0
 e78:	00c5e663          	bltu	a1,a2,e84 <__udivsi3+0x38>
 e7c:	40c585b3          	sub	a1,a1,a2
 e80:	00d56533          	or	a0,a0,a3
 e84:	0016d693          	srli	a3,a3,0x1
 e88:	00165613          	srli	a2,a2,0x1
 e8c:	fe0696e3          	bnez	a3,e78 <__udivsi3+0x2c>
 e90:	00008067          	ret

00000e94 <__umodsi3>:
 e94:	00008293          	mv	t0,ra
 e98:	fb5ff0ef          	jal	ra,e4c <__udivsi3>
 e9c:	00058513          	mv	a0,a1
 ea0:	00028067          	jr	t0
 ea4:	40a00533          	neg	a0,a0
 ea8:	00b04863          	bgtz	a1,eb8 <__umodsi3+0x24>
 eac:	40b005b3          	neg	a1,a1
 eb0:	f9dff06f          	j	e4c <__udivsi3>
 eb4:	40b005b3          	neg	a1,a1
 eb8:	00008293          	mv	t0,ra
 ebc:	f91ff0ef          	jal	ra,e4c <__udivsi3>
 ec0:	40a00533          	neg	a0,a0
 ec4:	00028067          	jr	t0

00000ec8 <__modsi3>:
 ec8:	00008293          	mv	t0,ra
 ecc:	0005ca63          	bltz	a1,ee0 <__modsi3+0x18>
 ed0:	00054c63          	bltz	a0,ee8 <__modsi3+0x20>
 ed4:	f79ff0ef          	jal	ra,e4c <__udivsi3>
 ed8:	00058513          	mv	a0,a1
 edc:	00028067          	jr	t0
 ee0:	40b005b3          	neg	a1,a1
 ee4:	fe0558e3          	bgez	a0,ed4 <__modsi3+0xc>
 ee8:	40a00533          	neg	a0,a0
 eec:	f61ff0ef          	jal	ra,e4c <__udivsi3>
 ef0:	40b00533          	neg	a0,a1
 ef4:	00028067          	jr	t0
