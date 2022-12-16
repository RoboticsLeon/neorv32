
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
  c8:	87418613          	addi	a2,gp,-1932 # 80000074 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	0fc58593          	addi	a1,a1,252 # 11d8 <__crt0_copy_data_src_begin>
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
 184:	fb010113          	addi	sp,sp,-80
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3928>
 194:	04112623          	sw	ra,76(sp)
 198:	04812423          	sw	s0,72(sp)
 19c:	04912223          	sw	s1,68(sp)
 1a0:	05212023          	sw	s2,64(sp)
 1a4:	03312e23          	sw	s3,60(sp)
 1a8:	03412c23          	sw	s4,56(sp)
 1ac:	03512a23          	sw	s5,52(sp)
 1b0:	03612823          	sw	s6,48(sp)
 1b4:	03712623          	sw	s7,44(sp)
 1b8:	03812423          	sw	s8,40(sp)
 1bc:	03912223          	sw	s9,36(sp)
 1c0:	30c000ef          	jal	ra,4cc <neorv32_uart0_setup>
 1c4:	6a4000ef          	jal	ra,868 <neorv32_gpio_available>
 1c8:	12050063          	beqz	a0,2e8 <main+0x168>
 1cc:	361000ef          	jal	ra,d2c <neorv32_rte_setup>
 1d0:	00001537          	lui	a0,0x1
 1d4:	e5050513          	addi	a0,a0,-432 # e50 <__etext+0x24>
 1d8:	80010437          	lui	s0,0x80010
 1dc:	3c4000ef          	jal	ra,5a0 <neorv32_uart0_print>
 1e0:	00440913          	addi	s2,s0,4 # 80010004 <__ctr0_io_space_begin+0x80010204>
 1e4:	00001a37          	lui	s4,0x1
 1e8:	00001ab7          	lui	s5,0x1
 1ec:	00001b37          	lui	s6,0x1
 1f0:	00001537          	lui	a0,0x1
 1f4:	e6850513          	addi	a0,a0,-408 # e68 <__etext+0x3c>
 1f8:	3a8000ef          	jal	ra,5a0 <neorv32_uart0_print>
 1fc:	00100613          	li	a2,1
 200:	01400593          	li	a1,20
 204:	00410513          	addi	a0,sp,4
 208:	588000ef          	jal	ra,790 <neorv32_uart0_scan>
 20c:	00410513          	addi	a0,sp,4
 210:	11c000ef          	jal	ra,32c <char2int>
 214:	000019b7          	lui	s3,0x1
 218:	00050493          	mv	s1,a0
 21c:	e4c98513          	addi	a0,s3,-436 # e4c <__etext+0x20>
 220:	380000ef          	jal	ra,5a0 <neorv32_uart0_print>
 224:	00942023          	sw	s1,0(s0)
 228:	00001537          	lui	a0,0x1
 22c:	e7850513          	addi	a0,a0,-392 # e78 <__etext+0x4c>
 230:	370000ef          	jal	ra,5a0 <neorv32_uart0_print>
 234:	00100613          	li	a2,1
 238:	01400593          	li	a1,20
 23c:	00410513          	addi	a0,sp,4
 240:	550000ef          	jal	ra,790 <neorv32_uart0_scan>
 244:	00410513          	addi	a0,sp,4
 248:	0e4000ef          	jal	ra,32c <char2int>
 24c:	00050493          	mv	s1,a0
 250:	e4c98513          	addi	a0,s3,-436
 254:	34c000ef          	jal	ra,5a0 <neorv32_uart0_print>
 258:	00992023          	sw	s1,0(s2)
 25c:	00000493          	li	s1,0
 260:	00840993          	addi	s3,s0,8
 264:	00001c37          	lui	s8,0x1
 268:	00001cb7          	lui	s9,0x1
 26c:	00001bb7          	lui	s7,0x1
 270:	0099a023          	sw	s1,0(s3)
 274:	00042583          	lw	a1,0(s0)
 278:	e88c0513          	addi	a0,s8,-376 # e88 <__etext+0x5c>
 27c:	37c000ef          	jal	ra,5f8 <neorv32_uart0_printf>
 280:	00092583          	lw	a1,0(s2)
 284:	e98c8513          	addi	a0,s9,-360 # e98 <__etext+0x6c>
 288:	370000ef          	jal	ra,5f8 <neorv32_uart0_printf>
 28c:	0009a783          	lw	a5,0(s3)
 290:	00100713          	li	a4,1
 294:	04e78063          	beq	a5,a4,2d4 <main+0x154>
 298:	00200713          	li	a4,2
 29c:	04e78263          	beq	a5,a4,2e0 <main+0x160>
 2a0:	ea8b0513          	addi	a0,s6,-344 # ea8 <__etext+0x7c>
 2a4:	02078a63          	beqz	a5,2d8 <main+0x158>
 2a8:	00c40593          	addi	a1,s0,12
 2ac:	0005a583          	lw	a1,0(a1)
 2b0:	ee0b8513          	addi	a0,s7,-288 # ee0 <__etext+0xb4>
 2b4:	344000ef          	jal	ra,5f8 <neorv32_uart0_printf>
 2b8:	00001537          	lui	a0,0x1
 2bc:	ef050513          	addi	a0,a0,-272 # ef0 <__etext+0xc4>
 2c0:	2e0000ef          	jal	ra,5a0 <neorv32_uart0_print>
 2c4:	00148493          	addi	s1,s1,1
 2c8:	00300793          	li	a5,3
 2cc:	faf492e3          	bne	s1,a5,270 <main+0xf0>
 2d0:	f21ff06f          	j	1f0 <main+0x70>
 2d4:	eb8a0513          	addi	a0,s4,-328 # eb8 <__etext+0x8c>
 2d8:	2c8000ef          	jal	ra,5a0 <neorv32_uart0_print>
 2dc:	fcdff06f          	j	2a8 <main+0x128>
 2e0:	ec8a8513          	addi	a0,s5,-312 # ec8 <__etext+0x9c>
 2e4:	ff5ff06f          	j	2d8 <main+0x158>
 2e8:	00001537          	lui	a0,0x1
 2ec:	e2c50513          	addi	a0,a0,-468 # e2c <__etext>
 2f0:	2b0000ef          	jal	ra,5a0 <neorv32_uart0_print>
 2f4:	04c12083          	lw	ra,76(sp)
 2f8:	04812403          	lw	s0,72(sp)
 2fc:	04412483          	lw	s1,68(sp)
 300:	04012903          	lw	s2,64(sp)
 304:	03c12983          	lw	s3,60(sp)
 308:	03812a03          	lw	s4,56(sp)
 30c:	03412a83          	lw	s5,52(sp)
 310:	03012b03          	lw	s6,48(sp)
 314:	02c12b83          	lw	s7,44(sp)
 318:	02812c03          	lw	s8,40(sp)
 31c:	02412c83          	lw	s9,36(sp)
 320:	00100513          	li	a0,1
 324:	05010113          	addi	sp,sp,80
 328:	00008067          	ret

0000032c <char2int>:
 32c:	00050713          	mv	a4,a0
 330:	00000613          	li	a2,0
 334:	00000513          	li	a0,0
 338:	02d00593          	li	a1,45
 33c:	00074783          	lbu	a5,0(a4)
 340:	00079863          	bnez	a5,350 <char2int+0x24>
 344:	00060463          	beqz	a2,34c <char2int+0x20>
 348:	40a00533          	neg	a0,a0
 34c:	00008067          	ret
 350:	02b78063          	beq	a5,a1,370 <char2int+0x44>
 354:	00251693          	slli	a3,a0,0x2
 358:	00a68533          	add	a0,a3,a0
 35c:	00151513          	slli	a0,a0,0x1
 360:	fd078793          	addi	a5,a5,-48
 364:	00a78533          	add	a0,a5,a0
 368:	00170713          	addi	a4,a4,1
 36c:	fd1ff06f          	j	33c <char2int+0x10>
 370:	00100613          	li	a2,1
 374:	ff5ff06f          	j	368 <char2int+0x3c>

00000378 <__neorv32_uart_itoa>:
 378:	fd010113          	addi	sp,sp,-48
 37c:	02812423          	sw	s0,40(sp)
 380:	02912223          	sw	s1,36(sp)
 384:	03212023          	sw	s2,32(sp)
 388:	01312e23          	sw	s3,28(sp)
 38c:	01412c23          	sw	s4,24(sp)
 390:	02112623          	sw	ra,44(sp)
 394:	01512a23          	sw	s5,20(sp)
 398:	00001a37          	lui	s4,0x1
 39c:	00050493          	mv	s1,a0
 3a0:	00058413          	mv	s0,a1
 3a4:	00058523          	sb	zero,10(a1)
 3a8:	00000993          	li	s3,0
 3ac:	00410913          	addi	s2,sp,4
 3b0:	f10a0a13          	addi	s4,s4,-240 # f10 <numbers.1>
 3b4:	00a00593          	li	a1,10
 3b8:	00048513          	mv	a0,s1
 3bc:	20d000ef          	jal	ra,dc8 <__umodsi3>
 3c0:	00aa0533          	add	a0,s4,a0
 3c4:	00054783          	lbu	a5,0(a0)
 3c8:	01390ab3          	add	s5,s2,s3
 3cc:	00048513          	mv	a0,s1
 3d0:	00fa8023          	sb	a5,0(s5)
 3d4:	00a00593          	li	a1,10
 3d8:	1a9000ef          	jal	ra,d80 <__udivsi3>
 3dc:	00198993          	addi	s3,s3,1
 3e0:	00a00793          	li	a5,10
 3e4:	00050493          	mv	s1,a0
 3e8:	fcf996e3          	bne	s3,a5,3b4 <__neorv32_uart_itoa+0x3c>
 3ec:	00090693          	mv	a3,s2
 3f0:	00900713          	li	a4,9
 3f4:	03000613          	li	a2,48
 3f8:	0096c583          	lbu	a1,9(a3)
 3fc:	00070793          	mv	a5,a4
 400:	fff70713          	addi	a4,a4,-1
 404:	01071713          	slli	a4,a4,0x10
 408:	01075713          	srli	a4,a4,0x10
 40c:	00c59a63          	bne	a1,a2,420 <__neorv32_uart_itoa+0xa8>
 410:	000684a3          	sb	zero,9(a3)
 414:	fff68693          	addi	a3,a3,-1
 418:	fe0710e3          	bnez	a4,3f8 <__neorv32_uart_itoa+0x80>
 41c:	00000793          	li	a5,0
 420:	00f907b3          	add	a5,s2,a5
 424:	00000593          	li	a1,0
 428:	0007c703          	lbu	a4,0(a5)
 42c:	00070c63          	beqz	a4,444 <__neorv32_uart_itoa+0xcc>
 430:	00158693          	addi	a3,a1,1
 434:	00b405b3          	add	a1,s0,a1
 438:	00e58023          	sb	a4,0(a1)
 43c:	01069593          	slli	a1,a3,0x10
 440:	0105d593          	srli	a1,a1,0x10
 444:	fff78713          	addi	a4,a5,-1
 448:	02f91863          	bne	s2,a5,478 <__neorv32_uart_itoa+0x100>
 44c:	00b40433          	add	s0,s0,a1
 450:	00040023          	sb	zero,0(s0)
 454:	02c12083          	lw	ra,44(sp)
 458:	02812403          	lw	s0,40(sp)
 45c:	02412483          	lw	s1,36(sp)
 460:	02012903          	lw	s2,32(sp)
 464:	01c12983          	lw	s3,28(sp)
 468:	01812a03          	lw	s4,24(sp)
 46c:	01412a83          	lw	s5,20(sp)
 470:	03010113          	addi	sp,sp,48
 474:	00008067          	ret
 478:	00070793          	mv	a5,a4
 47c:	fadff06f          	j	428 <__neorv32_uart_itoa+0xb0>

00000480 <__neorv32_uart_tohex>:
 480:	00001637          	lui	a2,0x1
 484:	00758693          	addi	a3,a1,7
 488:	00000713          	li	a4,0
 48c:	f1c60613          	addi	a2,a2,-228 # f1c <symbols.0>
 490:	02000813          	li	a6,32
 494:	00e557b3          	srl	a5,a0,a4
 498:	00f7f793          	andi	a5,a5,15
 49c:	00f607b3          	add	a5,a2,a5
 4a0:	0007c783          	lbu	a5,0(a5)
 4a4:	00470713          	addi	a4,a4,4
 4a8:	fff68693          	addi	a3,a3,-1
 4ac:	00f680a3          	sb	a5,1(a3)
 4b0:	ff0712e3          	bne	a4,a6,494 <__neorv32_uart_tohex+0x14>
 4b4:	00058423          	sb	zero,8(a1)
 4b8:	00008067          	ret

000004bc <neorv32_uart0_available>:
 4bc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4c0:	01255513          	srli	a0,a0,0x12
 4c4:	00157513          	andi	a0,a0,1
 4c8:	00008067          	ret

000004cc <neorv32_uart0_setup>:
 4cc:	ff010113          	addi	sp,sp,-16
 4d0:	00812423          	sw	s0,8(sp)
 4d4:	00912223          	sw	s1,4(sp)
 4d8:	00112623          	sw	ra,12(sp)
 4dc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4e0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4e4:	00058413          	mv	s0,a1
 4e8:	00151593          	slli	a1,a0,0x1
 4ec:	00078513          	mv	a0,a5
 4f0:	00060493          	mv	s1,a2
 4f4:	08d000ef          	jal	ra,d80 <__udivsi3>
 4f8:	01051513          	slli	a0,a0,0x10
 4fc:	000017b7          	lui	a5,0x1
 500:	01055513          	srli	a0,a0,0x10
 504:	00000713          	li	a4,0
 508:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0xe2>
 50c:	04a7e463          	bltu	a5,a0,554 <neorv32_uart0_setup+0x88>
 510:	0034f793          	andi	a5,s1,3
 514:	00347413          	andi	s0,s0,3
 518:	fff50513          	addi	a0,a0,-1
 51c:	01479793          	slli	a5,a5,0x14
 520:	01641413          	slli	s0,s0,0x16
 524:	00f567b3          	or	a5,a0,a5
 528:	0087e7b3          	or	a5,a5,s0
 52c:	01871713          	slli	a4,a4,0x18
 530:	00c12083          	lw	ra,12(sp)
 534:	00812403          	lw	s0,8(sp)
 538:	00e7e7b3          	or	a5,a5,a4
 53c:	10000737          	lui	a4,0x10000
 540:	00e7e7b3          	or	a5,a5,a4
 544:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 548:	00412483          	lw	s1,4(sp)
 54c:	01010113          	addi	sp,sp,16
 550:	00008067          	ret
 554:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffee26>
 558:	0fd6f693          	andi	a3,a3,253
 55c:	00069a63          	bnez	a3,570 <neorv32_uart0_setup+0xa4>
 560:	00355513          	srli	a0,a0,0x3
 564:	00170713          	addi	a4,a4,1
 568:	0ff77713          	andi	a4,a4,255
 56c:	fa1ff06f          	j	50c <neorv32_uart0_setup+0x40>
 570:	00155513          	srli	a0,a0,0x1
 574:	ff1ff06f          	j	564 <neorv32_uart0_setup+0x98>

00000578 <neorv32_uart0_putc>:
 578:	00040737          	lui	a4,0x40
 57c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 580:	00e7f7b3          	and	a5,a5,a4
 584:	fe079ce3          	bnez	a5,57c <neorv32_uart0_putc+0x4>
 588:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 58c:	00008067          	ret

00000590 <neorv32_uart0_getc>:
 590:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 594:	fe055ee3          	bgez	a0,590 <neorv32_uart0_getc>
 598:	0ff57513          	andi	a0,a0,255
 59c:	00008067          	ret

000005a0 <neorv32_uart0_print>:
 5a0:	ff010113          	addi	sp,sp,-16
 5a4:	00812423          	sw	s0,8(sp)
 5a8:	01212023          	sw	s2,0(sp)
 5ac:	00112623          	sw	ra,12(sp)
 5b0:	00912223          	sw	s1,4(sp)
 5b4:	00050413          	mv	s0,a0
 5b8:	00a00913          	li	s2,10
 5bc:	00044483          	lbu	s1,0(s0)
 5c0:	00140413          	addi	s0,s0,1
 5c4:	00049e63          	bnez	s1,5e0 <neorv32_uart0_print+0x40>
 5c8:	00c12083          	lw	ra,12(sp)
 5cc:	00812403          	lw	s0,8(sp)
 5d0:	00412483          	lw	s1,4(sp)
 5d4:	00012903          	lw	s2,0(sp)
 5d8:	01010113          	addi	sp,sp,16
 5dc:	00008067          	ret
 5e0:	01249663          	bne	s1,s2,5ec <neorv32_uart0_print+0x4c>
 5e4:	00d00513          	li	a0,13
 5e8:	f91ff0ef          	jal	ra,578 <neorv32_uart0_putc>
 5ec:	00048513          	mv	a0,s1
 5f0:	f89ff0ef          	jal	ra,578 <neorv32_uart0_putc>
 5f4:	fc9ff06f          	j	5bc <neorv32_uart0_print+0x1c>

000005f8 <neorv32_uart0_printf>:
 5f8:	fa010113          	addi	sp,sp,-96
 5fc:	04f12a23          	sw	a5,84(sp)
 600:	04410793          	addi	a5,sp,68
 604:	02812c23          	sw	s0,56(sp)
 608:	03212823          	sw	s2,48(sp)
 60c:	03412423          	sw	s4,40(sp)
 610:	03512223          	sw	s5,36(sp)
 614:	03612023          	sw	s6,32(sp)
 618:	01712e23          	sw	s7,28(sp)
 61c:	01812c23          	sw	s8,24(sp)
 620:	01912a23          	sw	s9,20(sp)
 624:	02112e23          	sw	ra,60(sp)
 628:	02912a23          	sw	s1,52(sp)
 62c:	03312623          	sw	s3,44(sp)
 630:	00050413          	mv	s0,a0
 634:	04b12223          	sw	a1,68(sp)
 638:	04c12423          	sw	a2,72(sp)
 63c:	04d12623          	sw	a3,76(sp)
 640:	04e12823          	sw	a4,80(sp)
 644:	05012c23          	sw	a6,88(sp)
 648:	05112e23          	sw	a7,92(sp)
 64c:	00f12023          	sw	a5,0(sp)
 650:	02500a13          	li	s4,37
 654:	00a00a93          	li	s5,10
 658:	07300913          	li	s2,115
 65c:	07500b13          	li	s6,117
 660:	07800b93          	li	s7,120
 664:	06300c13          	li	s8,99
 668:	06900c93          	li	s9,105
 66c:	00044483          	lbu	s1,0(s0)
 670:	02049c63          	bnez	s1,6a8 <neorv32_uart0_printf+0xb0>
 674:	03c12083          	lw	ra,60(sp)
 678:	03812403          	lw	s0,56(sp)
 67c:	03412483          	lw	s1,52(sp)
 680:	03012903          	lw	s2,48(sp)
 684:	02c12983          	lw	s3,44(sp)
 688:	02812a03          	lw	s4,40(sp)
 68c:	02412a83          	lw	s5,36(sp)
 690:	02012b03          	lw	s6,32(sp)
 694:	01c12b83          	lw	s7,28(sp)
 698:	01812c03          	lw	s8,24(sp)
 69c:	01412c83          	lw	s9,20(sp)
 6a0:	06010113          	addi	sp,sp,96
 6a4:	00008067          	ret
 6a8:	0d449863          	bne	s1,s4,778 <neorv32_uart0_printf+0x180>
 6ac:	00240993          	addi	s3,s0,2
 6b0:	00144403          	lbu	s0,1(s0)
 6b4:	05240263          	beq	s0,s2,6f8 <neorv32_uart0_printf+0x100>
 6b8:	00896e63          	bltu	s2,s0,6d4 <neorv32_uart0_printf+0xdc>
 6bc:	05840c63          	beq	s0,s8,714 <neorv32_uart0_printf+0x11c>
 6c0:	07940663          	beq	s0,s9,72c <neorv32_uart0_printf+0x134>
 6c4:	02500513          	li	a0,37
 6c8:	eb1ff0ef          	jal	ra,578 <neorv32_uart0_putc>
 6cc:	00040513          	mv	a0,s0
 6d0:	0540006f          	j	724 <neorv32_uart0_printf+0x12c>
 6d4:	09640663          	beq	s0,s6,760 <neorv32_uart0_printf+0x168>
 6d8:	ff7416e3          	bne	s0,s7,6c4 <neorv32_uart0_printf+0xcc>
 6dc:	00012783          	lw	a5,0(sp)
 6e0:	00410593          	addi	a1,sp,4
 6e4:	0007a503          	lw	a0,0(a5)
 6e8:	00478713          	addi	a4,a5,4
 6ec:	00e12023          	sw	a4,0(sp)
 6f0:	d91ff0ef          	jal	ra,480 <__neorv32_uart_tohex>
 6f4:	0640006f          	j	758 <neorv32_uart0_printf+0x160>
 6f8:	00012783          	lw	a5,0(sp)
 6fc:	0007a503          	lw	a0,0(a5)
 700:	00478713          	addi	a4,a5,4
 704:	00e12023          	sw	a4,0(sp)
 708:	e99ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 70c:	00098413          	mv	s0,s3
 710:	f5dff06f          	j	66c <neorv32_uart0_printf+0x74>
 714:	00012783          	lw	a5,0(sp)
 718:	0007c503          	lbu	a0,0(a5)
 71c:	00478713          	addi	a4,a5,4
 720:	00e12023          	sw	a4,0(sp)
 724:	e55ff0ef          	jal	ra,578 <neorv32_uart0_putc>
 728:	fe5ff06f          	j	70c <neorv32_uart0_printf+0x114>
 72c:	00012783          	lw	a5,0(sp)
 730:	0007a403          	lw	s0,0(a5)
 734:	00478713          	addi	a4,a5,4
 738:	00e12023          	sw	a4,0(sp)
 73c:	00045863          	bgez	s0,74c <neorv32_uart0_printf+0x154>
 740:	02d00513          	li	a0,45
 744:	40800433          	neg	s0,s0
 748:	e31ff0ef          	jal	ra,578 <neorv32_uart0_putc>
 74c:	00410593          	addi	a1,sp,4
 750:	00040513          	mv	a0,s0
 754:	c25ff0ef          	jal	ra,378 <__neorv32_uart_itoa>
 758:	00410513          	addi	a0,sp,4
 75c:	fadff06f          	j	708 <neorv32_uart0_printf+0x110>
 760:	00012783          	lw	a5,0(sp)
 764:	00410593          	addi	a1,sp,4
 768:	00478713          	addi	a4,a5,4
 76c:	0007a503          	lw	a0,0(a5)
 770:	00e12023          	sw	a4,0(sp)
 774:	fe1ff06f          	j	754 <neorv32_uart0_printf+0x15c>
 778:	01549663          	bne	s1,s5,784 <neorv32_uart0_printf+0x18c>
 77c:	00d00513          	li	a0,13
 780:	df9ff0ef          	jal	ra,578 <neorv32_uart0_putc>
 784:	00140993          	addi	s3,s0,1
 788:	00048513          	mv	a0,s1
 78c:	f99ff06f          	j	724 <neorv32_uart0_printf+0x12c>

00000790 <neorv32_uart0_scan>:
 790:	fd010113          	addi	sp,sp,-48
 794:	02812423          	sw	s0,40(sp)
 798:	02912223          	sw	s1,36(sp)
 79c:	01312e23          	sw	s3,28(sp)
 7a0:	01412c23          	sw	s4,24(sp)
 7a4:	01512a23          	sw	s5,20(sp)
 7a8:	01612823          	sw	s6,16(sp)
 7ac:	01712623          	sw	s7,12(sp)
 7b0:	01812423          	sw	s8,8(sp)
 7b4:	02112623          	sw	ra,44(sp)
 7b8:	03212023          	sw	s2,32(sp)
 7bc:	00050413          	mv	s0,a0
 7c0:	00060993          	mv	s3,a2
 7c4:	00000493          	li	s1,0
 7c8:	00800a93          	li	s5,8
 7cc:	00d00b13          	li	s6,13
 7d0:	05e00b93          	li	s7,94
 7d4:	fff58a13          	addi	s4,a1,-1
 7d8:	00001c37          	lui	s8,0x1
 7dc:	db5ff0ef          	jal	ra,590 <neorv32_uart0_getc>
 7e0:	00050913          	mv	s2,a0
 7e4:	03551063          	bne	a0,s5,804 <neorv32_uart0_scan+0x74>
 7e8:	fe048ae3          	beqz	s1,7dc <neorv32_uart0_scan+0x4c>
 7ec:	00098663          	beqz	s3,7f8 <neorv32_uart0_scan+0x68>
 7f0:	f0cc0513          	addi	a0,s8,-244 # f0c <__etext+0xe0>
 7f4:	dadff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 7f8:	fff40413          	addi	s0,s0,-1
 7fc:	fff48493          	addi	s1,s1,-1
 800:	fddff06f          	j	7dc <neorv32_uart0_scan+0x4c>
 804:	03650663          	beq	a0,s6,830 <neorv32_uart0_scan+0xa0>
 808:	fe050793          	addi	a5,a0,-32
 80c:	0ff7f793          	andi	a5,a5,255
 810:	fcfbe6e3          	bltu	s7,a5,7dc <neorv32_uart0_scan+0x4c>
 814:	fd44d4e3          	bge	s1,s4,7dc <neorv32_uart0_scan+0x4c>
 818:	00098463          	beqz	s3,820 <neorv32_uart0_scan+0x90>
 81c:	d5dff0ef          	jal	ra,578 <neorv32_uart0_putc>
 820:	01240023          	sb	s2,0(s0)
 824:	00148493          	addi	s1,s1,1
 828:	00140413          	addi	s0,s0,1
 82c:	fb1ff06f          	j	7dc <neorv32_uart0_scan+0x4c>
 830:	02c12083          	lw	ra,44(sp)
 834:	00040023          	sb	zero,0(s0)
 838:	02812403          	lw	s0,40(sp)
 83c:	02012903          	lw	s2,32(sp)
 840:	01c12983          	lw	s3,28(sp)
 844:	01812a03          	lw	s4,24(sp)
 848:	01412a83          	lw	s5,20(sp)
 84c:	01012b03          	lw	s6,16(sp)
 850:	00c12b83          	lw	s7,12(sp)
 854:	00812c03          	lw	s8,8(sp)
 858:	00048513          	mv	a0,s1
 85c:	02412483          	lw	s1,36(sp)
 860:	03010113          	addi	sp,sp,48
 864:	00008067          	ret

00000868 <neorv32_gpio_available>:
 868:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 86c:	01055513          	srli	a0,a0,0x10
 870:	00157513          	andi	a0,a0,1
 874:	00008067          	ret
 878:	0000                	unimp
 87a:	0000                	unimp
 87c:	0000                	unimp
 87e:	0000                	unimp

00000880 <__neorv32_rte_core>:
 880:	fc010113          	addi	sp,sp,-64
 884:	02112e23          	sw	ra,60(sp)
 888:	02512c23          	sw	t0,56(sp)
 88c:	02612a23          	sw	t1,52(sp)
 890:	02712823          	sw	t2,48(sp)
 894:	02a12623          	sw	a0,44(sp)
 898:	02b12423          	sw	a1,40(sp)
 89c:	02c12223          	sw	a2,36(sp)
 8a0:	02d12023          	sw	a3,32(sp)
 8a4:	00e12e23          	sw	a4,28(sp)
 8a8:	00f12c23          	sw	a5,24(sp)
 8ac:	01012a23          	sw	a6,20(sp)
 8b0:	01112823          	sw	a7,16(sp)
 8b4:	01c12623          	sw	t3,12(sp)
 8b8:	01d12423          	sw	t4,8(sp)
 8bc:	01e12223          	sw	t5,4(sp)
 8c0:	01f12023          	sw	t6,0(sp)
 8c4:	34102773          	csrr	a4,mepc
 8c8:	34071073          	csrw	mscratch,a4
 8cc:	342027f3          	csrr	a5,mcause
 8d0:	0807ca63          	bltz	a5,964 <__neorv32_rte_core+0xe4>
 8d4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ee28>
 8d8:	00300593          	li	a1,3
 8dc:	0036f693          	andi	a3,a3,3
 8e0:	00270613          	addi	a2,a4,2
 8e4:	00b69463          	bne	a3,a1,8ec <__neorv32_rte_core+0x6c>
 8e8:	00470613          	addi	a2,a4,4
 8ec:	34161073          	csrw	mepc,a2
 8f0:	00b00713          	li	a4,11
 8f4:	04f77c63          	bgeu	a4,a5,94c <__neorv32_rte_core+0xcc>
 8f8:	000017b7          	lui	a5,0x1
 8fc:	b0078793          	addi	a5,a5,-1280 # b00 <__neorv32_rte_debug_exc_handler>
 900:	000780e7          	jalr	a5
 904:	03c12083          	lw	ra,60(sp)
 908:	03812283          	lw	t0,56(sp)
 90c:	03412303          	lw	t1,52(sp)
 910:	03012383          	lw	t2,48(sp)
 914:	02c12503          	lw	a0,44(sp)
 918:	02812583          	lw	a1,40(sp)
 91c:	02412603          	lw	a2,36(sp)
 920:	02012683          	lw	a3,32(sp)
 924:	01c12703          	lw	a4,28(sp)
 928:	01812783          	lw	a5,24(sp)
 92c:	01412803          	lw	a6,20(sp)
 930:	01012883          	lw	a7,16(sp)
 934:	00c12e03          	lw	t3,12(sp)
 938:	00812e83          	lw	t4,8(sp)
 93c:	00412f03          	lw	t5,4(sp)
 940:	00012f83          	lw	t6,0(sp)
 944:	04010113          	addi	sp,sp,64
 948:	30200073          	mret
 94c:	00001737          	lui	a4,0x1
 950:	00279793          	slli	a5,a5,0x2
 954:	f3070713          	addi	a4,a4,-208 # f30 <symbols.0+0x14>
 958:	00e787b3          	add	a5,a5,a4
 95c:	0007a783          	lw	a5,0(a5)
 960:	00078067          	jr	a5
 964:	80000737          	lui	a4,0x80000
 968:	ffd74713          	xori	a4,a4,-3
 96c:	00e787b3          	add	a5,a5,a4
 970:	01c00713          	li	a4,28
 974:	f8f762e3          	bltu	a4,a5,8f8 <__neorv32_rte_core+0x78>
 978:	00001737          	lui	a4,0x1
 97c:	00279793          	slli	a5,a5,0x2
 980:	f6070713          	addi	a4,a4,-160 # f60 <symbols.0+0x44>
 984:	00e787b3          	add	a5,a5,a4
 988:	0007a783          	lw	a5,0(a5)
 98c:	00078067          	jr	a5
 990:	800007b7          	lui	a5,0x80000
 994:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 998:	f69ff06f          	j	900 <__neorv32_rte_core+0x80>
 99c:	800007b7          	lui	a5,0x80000
 9a0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 9a4:	f5dff06f          	j	900 <__neorv32_rte_core+0x80>
 9a8:	800007b7          	lui	a5,0x80000
 9ac:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 9b0:	f51ff06f          	j	900 <__neorv32_rte_core+0x80>
 9b4:	800007b7          	lui	a5,0x80000
 9b8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 9bc:	f45ff06f          	j	900 <__neorv32_rte_core+0x80>
 9c0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 9c4:	f3dff06f          	j	900 <__neorv32_rte_core+0x80>
 9c8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 9cc:	f35ff06f          	j	900 <__neorv32_rte_core+0x80>
 9d0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 9d4:	f2dff06f          	j	900 <__neorv32_rte_core+0x80>
 9d8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 9dc:	f25ff06f          	j	900 <__neorv32_rte_core+0x80>
 9e0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 9e4:	f1dff06f          	j	900 <__neorv32_rte_core+0x80>
 9e8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 9ec:	f15ff06f          	j	900 <__neorv32_rte_core+0x80>
 9f0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 9f4:	f0dff06f          	j	900 <__neorv32_rte_core+0x80>
 9f8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 9fc:	f05ff06f          	j	900 <__neorv32_rte_core+0x80>
 a00:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 a04:	efdff06f          	j	900 <__neorv32_rte_core+0x80>
 a08:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 a0c:	ef5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a10:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 a14:	eedff06f          	j	900 <__neorv32_rte_core+0x80>
 a18:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 a1c:	ee5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a20:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 a24:	eddff06f          	j	900 <__neorv32_rte_core+0x80>
 a28:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 a2c:	ed5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a30:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 a34:	ecdff06f          	j	900 <__neorv32_rte_core+0x80>
 a38:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 a3c:	ec5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a40:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 a44:	ebdff06f          	j	900 <__neorv32_rte_core+0x80>
 a48:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 a4c:	eb5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a50:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 a54:	eadff06f          	j	900 <__neorv32_rte_core+0x80>
 a58:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 a5c:	ea5ff06f          	j	900 <__neorv32_rte_core+0x80>
 a60:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 a64:	e9dff06f          	j	900 <__neorv32_rte_core+0x80>
 a68:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 a6c:	e95ff06f          	j	900 <__neorv32_rte_core+0x80>
 a70:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 a74:	e8dff06f          	j	900 <__neorv32_rte_core+0x80>
 a78:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 a7c:	e85ff06f          	j	900 <__neorv32_rte_core+0x80>
 a80:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a84:	e7dff06f          	j	900 <__neorv32_rte_core+0x80>
 a88:	0000                	unimp
 a8a:	0000                	unimp
 a8c:	0000                	unimp
 a8e:	0000                	unimp

00000a90 <__neorv32_rte_print_hex_word>:
 a90:	fe010113          	addi	sp,sp,-32
 a94:	01212823          	sw	s2,16(sp)
 a98:	00050913          	mv	s2,a0
 a9c:	00001537          	lui	a0,0x1
 aa0:	00912a23          	sw	s1,20(sp)
 aa4:	fd450513          	addi	a0,a0,-44 # fd4 <symbols.0+0xb8>
 aa8:	000014b7          	lui	s1,0x1
 aac:	00812c23          	sw	s0,24(sp)
 ab0:	01312623          	sw	s3,12(sp)
 ab4:	00112e23          	sw	ra,28(sp)
 ab8:	01c00413          	li	s0,28
 abc:	ae5ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 ac0:	1c848493          	addi	s1,s1,456 # 11c8 <hex_symbols.0>
 ac4:	ffc00993          	li	s3,-4
 ac8:	008957b3          	srl	a5,s2,s0
 acc:	00f7f793          	andi	a5,a5,15
 ad0:	00f487b3          	add	a5,s1,a5
 ad4:	0007c503          	lbu	a0,0(a5)
 ad8:	ffc40413          	addi	s0,s0,-4
 adc:	a9dff0ef          	jal	ra,578 <neorv32_uart0_putc>
 ae0:	ff3414e3          	bne	s0,s3,ac8 <__neorv32_rte_print_hex_word+0x38>
 ae4:	01c12083          	lw	ra,28(sp)
 ae8:	01812403          	lw	s0,24(sp)
 aec:	01412483          	lw	s1,20(sp)
 af0:	01012903          	lw	s2,16(sp)
 af4:	00c12983          	lw	s3,12(sp)
 af8:	02010113          	addi	sp,sp,32
 afc:	00008067          	ret

00000b00 <__neorv32_rte_debug_exc_handler>:
 b00:	ff010113          	addi	sp,sp,-16
 b04:	00112623          	sw	ra,12(sp)
 b08:	00812423          	sw	s0,8(sp)
 b0c:	00912223          	sw	s1,4(sp)
 b10:	9adff0ef          	jal	ra,4bc <neorv32_uart0_available>
 b14:	1c050863          	beqz	a0,ce4 <__neorv32_rte_debug_exc_handler+0x1e4>
 b18:	00001537          	lui	a0,0x1
 b1c:	fd850513          	addi	a0,a0,-40 # fd8 <symbols.0+0xbc>
 b20:	a81ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b24:	34202473          	csrr	s0,mcause
 b28:	00900713          	li	a4,9
 b2c:	00f47793          	andi	a5,s0,15
 b30:	03078493          	addi	s1,a5,48
 b34:	00f77463          	bgeu	a4,a5,b3c <__neorv32_rte_debug_exc_handler+0x3c>
 b38:	05778493          	addi	s1,a5,87
 b3c:	00b00793          	li	a5,11
 b40:	0087ee63          	bltu	a5,s0,b5c <__neorv32_rte_debug_exc_handler+0x5c>
 b44:	00001737          	lui	a4,0x1
 b48:	00241793          	slli	a5,s0,0x2
 b4c:	19870713          	addi	a4,a4,408 # 1198 <symbols.0+0x27c>
 b50:	00e787b3          	add	a5,a5,a4
 b54:	0007a783          	lw	a5,0(a5)
 b58:	00078067          	jr	a5
 b5c:	800007b7          	lui	a5,0x80000
 b60:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 b64:	14e40e63          	beq	s0,a4,cc0 <__neorv32_rte_debug_exc_handler+0x1c0>
 b68:	02876a63          	bltu	a4,s0,b9c <__neorv32_rte_debug_exc_handler+0x9c>
 b6c:	00378713          	addi	a4,a5,3
 b70:	12e40c63          	beq	s0,a4,ca8 <__neorv32_rte_debug_exc_handler+0x1a8>
 b74:	00778793          	addi	a5,a5,7
 b78:	12f40e63          	beq	s0,a5,cb4 <__neorv32_rte_debug_exc_handler+0x1b4>
 b7c:	00001537          	lui	a0,0x1
 b80:	13850513          	addi	a0,a0,312 # 1138 <symbols.0+0x21c>
 b84:	a1dff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 b88:	00040513          	mv	a0,s0
 b8c:	f05ff0ef          	jal	ra,a90 <__neorv32_rte_print_hex_word>
 b90:	00100793          	li	a5,1
 b94:	08f40c63          	beq	s0,a5,c2c <__neorv32_rte_debug_exc_handler+0x12c>
 b98:	0280006f          	j	bc0 <__neorv32_rte_debug_exc_handler+0xc0>
 b9c:	ff07c793          	xori	a5,a5,-16
 ba0:	00f407b3          	add	a5,s0,a5
 ba4:	00f00713          	li	a4,15
 ba8:	fcf76ae3          	bltu	a4,a5,b7c <__neorv32_rte_debug_exc_handler+0x7c>
 bac:	00001537          	lui	a0,0x1
 bb0:	12850513          	addi	a0,a0,296 # 1128 <symbols.0+0x20c>
 bb4:	9edff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bb8:	00048513          	mv	a0,s1
 bbc:	9bdff0ef          	jal	ra,578 <neorv32_uart0_putc>
 bc0:	ffd47413          	andi	s0,s0,-3
 bc4:	00500793          	li	a5,5
 bc8:	06f40263          	beq	s0,a5,c2c <__neorv32_rte_debug_exc_handler+0x12c>
 bcc:	00001537          	lui	a0,0x1
 bd0:	17c50513          	addi	a0,a0,380 # 117c <symbols.0+0x260>
 bd4:	9cdff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bd8:	34002573          	csrr	a0,mscratch
 bdc:	eb5ff0ef          	jal	ra,a90 <__neorv32_rte_print_hex_word>
 be0:	00001537          	lui	a0,0x1
 be4:	18450513          	addi	a0,a0,388 # 1184 <symbols.0+0x268>
 be8:	9b9ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 bec:	34302573          	csrr	a0,mtval
 bf0:	ea1ff0ef          	jal	ra,a90 <__neorv32_rte_print_hex_word>
 bf4:	00812403          	lw	s0,8(sp)
 bf8:	00c12083          	lw	ra,12(sp)
 bfc:	00412483          	lw	s1,4(sp)
 c00:	00001537          	lui	a0,0x1
 c04:	19050513          	addi	a0,a0,400 # 1190 <symbols.0+0x274>
 c08:	01010113          	addi	sp,sp,16
 c0c:	995ff06f          	j	5a0 <neorv32_uart0_print>
 c10:	00001537          	lui	a0,0x1
 c14:	fe050513          	addi	a0,a0,-32 # fe0 <symbols.0+0xc4>
 c18:	989ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 c1c:	fb1ff06f          	j	bcc <__neorv32_rte_debug_exc_handler+0xcc>
 c20:	00001537          	lui	a0,0x1
 c24:	00050513          	mv	a0,a0
 c28:	979ff0ef          	jal	ra,5a0 <neorv32_uart0_print>
 c2c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 c30:	0a07d463          	bgez	a5,cd8 <__neorv32_rte_debug_exc_handler+0x1d8>
 c34:	0017f793          	andi	a5,a5,1
 c38:	08078a63          	beqz	a5,ccc <__neorv32_rte_debug_exc_handler+0x1cc>
 c3c:	00001537          	lui	a0,0x1
 c40:	15050513          	addi	a0,a0,336 # 1150 <symbols.0+0x234>
 c44:	fd5ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	01c50513          	addi	a0,a0,28 # 101c <symbols.0+0x100>
 c50:	fc9ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00001537          	lui	a0,0x1
 c58:	03050513          	addi	a0,a0,48 # 1030 <symbols.0+0x114>
 c5c:	fbdff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c60:	00001537          	lui	a0,0x1
 c64:	03c50513          	addi	a0,a0,60 # 103c <symbols.0+0x120>
 c68:	fb1ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c6c:	00001537          	lui	a0,0x1
 c70:	05450513          	addi	a0,a0,84 # 1054 <symbols.0+0x138>
 c74:	fb5ff06f          	j	c28 <__neorv32_rte_debug_exc_handler+0x128>
 c78:	00001537          	lui	a0,0x1
 c7c:	06850513          	addi	a0,a0,104 # 1068 <symbols.0+0x14c>
 c80:	f99ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c84:	00001537          	lui	a0,0x1
 c88:	08450513          	addi	a0,a0,132 # 1084 <symbols.0+0x168>
 c8c:	f9dff06f          	j	c28 <__neorv32_rte_debug_exc_handler+0x128>
 c90:	00001537          	lui	a0,0x1
 c94:	09850513          	addi	a0,a0,152 # 1098 <symbols.0+0x17c>
 c98:	f81ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 c9c:	00001537          	lui	a0,0x1
 ca0:	0b850513          	addi	a0,a0,184 # 10b8 <symbols.0+0x19c>
 ca4:	f75ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 ca8:	00001537          	lui	a0,0x1
 cac:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x1bc>
 cb0:	f69ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 cb4:	00001537          	lui	a0,0x1
 cb8:	0f450513          	addi	a0,a0,244 # 10f4 <symbols.0+0x1d8>
 cbc:	f5dff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 cc0:	00001537          	lui	a0,0x1
 cc4:	10c50513          	addi	a0,a0,268 # 110c <symbols.0+0x1f0>
 cc8:	f51ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 ccc:	00001537          	lui	a0,0x1
 cd0:	16050513          	addi	a0,a0,352 # 1160 <symbols.0+0x244>
 cd4:	f45ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 cd8:	00001537          	lui	a0,0x1
 cdc:	17050513          	addi	a0,a0,368 # 1170 <symbols.0+0x254>
 ce0:	f39ff06f          	j	c18 <__neorv32_rte_debug_exc_handler+0x118>
 ce4:	00c12083          	lw	ra,12(sp)
 ce8:	00812403          	lw	s0,8(sp)
 cec:	00412483          	lw	s1,4(sp)
 cf0:	01010113          	addi	sp,sp,16
 cf4:	00008067          	ret

00000cf8 <neorv32_rte_exception_uninstall>:
 cf8:	01f00793          	li	a5,31
 cfc:	02a7e463          	bltu	a5,a0,d24 <neorv32_rte_exception_uninstall+0x2c>
 d00:	800007b7          	lui	a5,0x80000
 d04:	00078793          	mv	a5,a5
 d08:	00251513          	slli	a0,a0,0x2
 d0c:	00a78533          	add	a0,a5,a0
 d10:	000017b7          	lui	a5,0x1
 d14:	b0078793          	addi	a5,a5,-1280 # b00 <__neorv32_rte_debug_exc_handler>
 d18:	00f52023          	sw	a5,0(a0)
 d1c:	00000513          	li	a0,0
 d20:	00008067          	ret
 d24:	00100513          	li	a0,1
 d28:	00008067          	ret

00000d2c <neorv32_rte_setup>:
 d2c:	ff010113          	addi	sp,sp,-16
 d30:	000017b7          	lui	a5,0x1
 d34:	00112623          	sw	ra,12(sp)
 d38:	00812423          	sw	s0,8(sp)
 d3c:	00912223          	sw	s1,4(sp)
 d40:	88078793          	addi	a5,a5,-1920 # 880 <__neorv32_rte_core>
 d44:	30579073          	csrw	mtvec,a5
 d48:	00000413          	li	s0,0
 d4c:	01d00493          	li	s1,29
 d50:	00040513          	mv	a0,s0
 d54:	00140413          	addi	s0,s0,1
 d58:	0ff47413          	andi	s0,s0,255
 d5c:	f9dff0ef          	jal	ra,cf8 <neorv32_rte_exception_uninstall>
 d60:	fe9418e3          	bne	s0,s1,d50 <neorv32_rte_setup+0x24>
 d64:	00c12083          	lw	ra,12(sp)
 d68:	00812403          	lw	s0,8(sp)
 d6c:	00412483          	lw	s1,4(sp)
 d70:	01010113          	addi	sp,sp,16
 d74:	00008067          	ret

00000d78 <__divsi3>:
 d78:	06054063          	bltz	a0,dd8 <__umodsi3+0x10>
 d7c:	0605c663          	bltz	a1,de8 <__umodsi3+0x20>

00000d80 <__udivsi3>:
 d80:	00058613          	mv	a2,a1
 d84:	00050593          	mv	a1,a0
 d88:	fff00513          	li	a0,-1
 d8c:	02060c63          	beqz	a2,dc4 <__udivsi3+0x44>
 d90:	00100693          	li	a3,1
 d94:	00b67a63          	bgeu	a2,a1,da8 <__udivsi3+0x28>
 d98:	00c05863          	blez	a2,da8 <__udivsi3+0x28>
 d9c:	00161613          	slli	a2,a2,0x1
 da0:	00169693          	slli	a3,a3,0x1
 da4:	feb66ae3          	bltu	a2,a1,d98 <__udivsi3+0x18>
 da8:	00000513          	li	a0,0
 dac:	00c5e663          	bltu	a1,a2,db8 <__udivsi3+0x38>
 db0:	40c585b3          	sub	a1,a1,a2
 db4:	00d56533          	or	a0,a0,a3
 db8:	0016d693          	srli	a3,a3,0x1
 dbc:	00165613          	srli	a2,a2,0x1
 dc0:	fe0696e3          	bnez	a3,dac <__udivsi3+0x2c>
 dc4:	00008067          	ret

00000dc8 <__umodsi3>:
 dc8:	00008293          	mv	t0,ra
 dcc:	fb5ff0ef          	jal	ra,d80 <__udivsi3>
 dd0:	00058513          	mv	a0,a1
 dd4:	00028067          	jr	t0
 dd8:	40a00533          	neg	a0,a0
 ddc:	00b04863          	bgtz	a1,dec <__umodsi3+0x24>
 de0:	40b005b3          	neg	a1,a1
 de4:	f9dff06f          	j	d80 <__udivsi3>
 de8:	40b005b3          	neg	a1,a1
 dec:	00008293          	mv	t0,ra
 df0:	f91ff0ef          	jal	ra,d80 <__udivsi3>
 df4:	40a00533          	neg	a0,a0
 df8:	00028067          	jr	t0

00000dfc <__modsi3>:
 dfc:	00008293          	mv	t0,ra
 e00:	0005ca63          	bltz	a1,e14 <__modsi3+0x18>
 e04:	00054c63          	bltz	a0,e1c <__modsi3+0x20>
 e08:	f79ff0ef          	jal	ra,d80 <__udivsi3>
 e0c:	00058513          	mv	a0,a1
 e10:	00028067          	jr	t0
 e14:	40b005b3          	neg	a1,a1
 e18:	fe0558e3          	bgez	a0,e08 <__modsi3+0xc>
 e1c:	40a00533          	neg	a0,a0
 e20:	f61ff0ef          	jal	ra,d80 <__udivsi3>
 e24:	40b00533          	neg	a0,a1
 e28:	00028067          	jr	t0
