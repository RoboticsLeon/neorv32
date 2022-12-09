
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
  e0:	f7058593          	addi	a1,a1,-144 # 104c <__crt0_copy_data_src_begin>
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
 180:	ff010113          	addi	sp,sp,-16
 184:	00112623          	sw	ra,12(sp)
 188:	30047073          	csrci	mstatus,8
 18c:	00000013          	nop
 190:	00000013          	nop
 194:	129000ef          	jal	ra,abc <neorv32_rte_setup>
 198:	00005537          	lui	a0,0x5
 19c:	00000613          	li	a2,0
 1a0:	00000593          	li	a1,0
 1a4:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3ab4>
 1a8:	1a0000ef          	jal	ra,348 <neorv32_uart0_setup>
 1ac:	00000513          	li	a0,0
 1b0:	155000ef          	jal	ra,b04 <neorv32_rte_check_isa>
 1b4:	fe002583          	lw	a1,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1b8:	00001537          	lui	a0,0x1
 1bc:	c1850513          	addi	a0,a0,-1000 # c18 <__etext>
 1c0:	2a4000ef          	jal	ra,464 <neorv32_uart0_printf>
 1c4:	000025b7          	lui	a1,0x2
 1c8:	00001537          	lui	a0,0x1
 1cc:	71058593          	addi	a1,a1,1808 # 2710 <__crt0_copy_data_src_begin+0x16c4>
 1d0:	c4050513          	addi	a0,a0,-960 # c40 <__etext+0x28>
 1d4:	290000ef          	jal	ra,464 <neorv32_uart0_printf>
 1d8:	00000513          	li	a0,0
 1dc:	00000593          	li	a1,0
 1e0:	41c000ef          	jal	ra,5fc <neorv32_cpu_set_mcycle>
 1e4:	00001537          	lui	a0,0x1
 1e8:	c8c50513          	addi	a0,a0,-884 # c8c <__etext+0x74>
 1ec:	278000ef          	jal	ra,464 <neorv32_uart0_printf>
 1f0:	0000006f          	j	1f0 <main+0x70>

000001f4 <__neorv32_uart_itoa>:
 1f4:	fd010113          	addi	sp,sp,-48
 1f8:	02812423          	sw	s0,40(sp)
 1fc:	02912223          	sw	s1,36(sp)
 200:	03212023          	sw	s2,32(sp)
 204:	01312e23          	sw	s3,28(sp)
 208:	01412c23          	sw	s4,24(sp)
 20c:	02112623          	sw	ra,44(sp)
 210:	01512a23          	sw	s5,20(sp)
 214:	00001a37          	lui	s4,0x1
 218:	00050493          	mv	s1,a0
 21c:	00058413          	mv	s0,a1
 220:	00058523          	sb	zero,10(a1)
 224:	00000993          	li	s3,0
 228:	00410913          	addi	s2,sp,4
 22c:	cfca0a13          	addi	s4,s4,-772 # cfc <numbers.1>
 230:	00a00593          	li	a1,10
 234:	00048513          	mv	a0,s1
 238:	17d000ef          	jal	ra,bb4 <__umodsi3>
 23c:	00aa0533          	add	a0,s4,a0
 240:	00054783          	lbu	a5,0(a0)
 244:	01390ab3          	add	s5,s2,s3
 248:	00048513          	mv	a0,s1
 24c:	00fa8023          	sb	a5,0(s5)
 250:	00a00593          	li	a1,10
 254:	119000ef          	jal	ra,b6c <__udivsi3>
 258:	00198993          	addi	s3,s3,1
 25c:	00a00793          	li	a5,10
 260:	00050493          	mv	s1,a0
 264:	fcf996e3          	bne	s3,a5,230 <__neorv32_uart_itoa+0x3c>
 268:	00090693          	mv	a3,s2
 26c:	00900713          	li	a4,9
 270:	03000613          	li	a2,48
 274:	0096c583          	lbu	a1,9(a3)
 278:	00070793          	mv	a5,a4
 27c:	fff70713          	addi	a4,a4,-1
 280:	01071713          	slli	a4,a4,0x10
 284:	01075713          	srli	a4,a4,0x10
 288:	00c59a63          	bne	a1,a2,29c <__neorv32_uart_itoa+0xa8>
 28c:	000684a3          	sb	zero,9(a3)
 290:	fff68693          	addi	a3,a3,-1
 294:	fe0710e3          	bnez	a4,274 <__neorv32_uart_itoa+0x80>
 298:	00000793          	li	a5,0
 29c:	00f907b3          	add	a5,s2,a5
 2a0:	00000593          	li	a1,0
 2a4:	0007c703          	lbu	a4,0(a5)
 2a8:	00070c63          	beqz	a4,2c0 <__neorv32_uart_itoa+0xcc>
 2ac:	00158693          	addi	a3,a1,1
 2b0:	00b405b3          	add	a1,s0,a1
 2b4:	00e58023          	sb	a4,0(a1)
 2b8:	01069593          	slli	a1,a3,0x10
 2bc:	0105d593          	srli	a1,a1,0x10
 2c0:	fff78713          	addi	a4,a5,-1
 2c4:	02f91863          	bne	s2,a5,2f4 <__neorv32_uart_itoa+0x100>
 2c8:	00b40433          	add	s0,s0,a1
 2cc:	00040023          	sb	zero,0(s0)
 2d0:	02c12083          	lw	ra,44(sp)
 2d4:	02812403          	lw	s0,40(sp)
 2d8:	02412483          	lw	s1,36(sp)
 2dc:	02012903          	lw	s2,32(sp)
 2e0:	01c12983          	lw	s3,28(sp)
 2e4:	01812a03          	lw	s4,24(sp)
 2e8:	01412a83          	lw	s5,20(sp)
 2ec:	03010113          	addi	sp,sp,48
 2f0:	00008067          	ret
 2f4:	00070793          	mv	a5,a4
 2f8:	fadff06f          	j	2a4 <__neorv32_uart_itoa+0xb0>

000002fc <__neorv32_uart_tohex>:
 2fc:	00001637          	lui	a2,0x1
 300:	00758693          	addi	a3,a1,7
 304:	00000713          	li	a4,0
 308:	d0860613          	addi	a2,a2,-760 # d08 <symbols.0>
 30c:	02000813          	li	a6,32
 310:	00e557b3          	srl	a5,a0,a4
 314:	00f7f793          	andi	a5,a5,15
 318:	00f607b3          	add	a5,a2,a5
 31c:	0007c783          	lbu	a5,0(a5)
 320:	00470713          	addi	a4,a4,4
 324:	fff68693          	addi	a3,a3,-1
 328:	00f680a3          	sb	a5,1(a3)
 32c:	ff0712e3          	bne	a4,a6,310 <__neorv32_uart_tohex+0x14>
 330:	00058423          	sb	zero,8(a1)
 334:	00008067          	ret

00000338 <neorv32_uart0_available>:
 338:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 33c:	01255513          	srli	a0,a0,0x12
 340:	00157513          	andi	a0,a0,1
 344:	00008067          	ret

00000348 <neorv32_uart0_setup>:
 348:	ff010113          	addi	sp,sp,-16
 34c:	00812423          	sw	s0,8(sp)
 350:	00912223          	sw	s1,4(sp)
 354:	00112623          	sw	ra,12(sp)
 358:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 35c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 360:	00058413          	mv	s0,a1
 364:	00151593          	slli	a1,a0,0x1
 368:	00078513          	mv	a0,a5
 36c:	00060493          	mv	s1,a2
 370:	7fc000ef          	jal	ra,b6c <__udivsi3>
 374:	01051513          	slli	a0,a0,0x10
 378:	000017b7          	lui	a5,0x1
 37c:	01055513          	srli	a0,a0,0x10
 380:	00000713          	li	a4,0
 384:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x2f6>
 388:	04a7e463          	bltu	a5,a0,3d0 <neorv32_uart0_setup+0x88>
 38c:	0034f793          	andi	a5,s1,3
 390:	00347413          	andi	s0,s0,3
 394:	fff50513          	addi	a0,a0,-1
 398:	01479793          	slli	a5,a5,0x14
 39c:	01641413          	slli	s0,s0,0x16
 3a0:	00f567b3          	or	a5,a0,a5
 3a4:	0087e7b3          	or	a5,a5,s0
 3a8:	01871713          	slli	a4,a4,0x18
 3ac:	00c12083          	lw	ra,12(sp)
 3b0:	00812403          	lw	s0,8(sp)
 3b4:	00e7e7b3          	or	a5,a5,a4
 3b8:	10000737          	lui	a4,0x10000
 3bc:	00e7e7b3          	or	a5,a5,a4
 3c0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3c4:	00412483          	lw	s1,4(sp)
 3c8:	01010113          	addi	sp,sp,16
 3cc:	00008067          	ret
 3d0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffefb2>
 3d4:	0fd6f693          	andi	a3,a3,253
 3d8:	00069a63          	bnez	a3,3ec <neorv32_uart0_setup+0xa4>
 3dc:	00355513          	srli	a0,a0,0x3
 3e0:	00170713          	addi	a4,a4,1
 3e4:	0ff77713          	andi	a4,a4,255
 3e8:	fa1ff06f          	j	388 <neorv32_uart0_setup+0x40>
 3ec:	00155513          	srli	a0,a0,0x1
 3f0:	ff1ff06f          	j	3e0 <neorv32_uart0_setup+0x98>

000003f4 <neorv32_uart0_putc>:
 3f4:	00040737          	lui	a4,0x40
 3f8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3fc:	00e7f7b3          	and	a5,a5,a4
 400:	fe079ce3          	bnez	a5,3f8 <neorv32_uart0_putc+0x4>
 404:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 408:	00008067          	ret

0000040c <neorv32_uart0_print>:
 40c:	ff010113          	addi	sp,sp,-16
 410:	00812423          	sw	s0,8(sp)
 414:	01212023          	sw	s2,0(sp)
 418:	00112623          	sw	ra,12(sp)
 41c:	00912223          	sw	s1,4(sp)
 420:	00050413          	mv	s0,a0
 424:	00a00913          	li	s2,10
 428:	00044483          	lbu	s1,0(s0)
 42c:	00140413          	addi	s0,s0,1
 430:	00049e63          	bnez	s1,44c <neorv32_uart0_print+0x40>
 434:	00c12083          	lw	ra,12(sp)
 438:	00812403          	lw	s0,8(sp)
 43c:	00412483          	lw	s1,4(sp)
 440:	00012903          	lw	s2,0(sp)
 444:	01010113          	addi	sp,sp,16
 448:	00008067          	ret
 44c:	01249663          	bne	s1,s2,458 <neorv32_uart0_print+0x4c>
 450:	00d00513          	li	a0,13
 454:	fa1ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 458:	00048513          	mv	a0,s1
 45c:	f99ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 460:	fc9ff06f          	j	428 <neorv32_uart0_print+0x1c>

00000464 <neorv32_uart0_printf>:
 464:	fa010113          	addi	sp,sp,-96
 468:	04f12a23          	sw	a5,84(sp)
 46c:	04410793          	addi	a5,sp,68
 470:	02812c23          	sw	s0,56(sp)
 474:	03212823          	sw	s2,48(sp)
 478:	03412423          	sw	s4,40(sp)
 47c:	03512223          	sw	s5,36(sp)
 480:	03612023          	sw	s6,32(sp)
 484:	01712e23          	sw	s7,28(sp)
 488:	01812c23          	sw	s8,24(sp)
 48c:	01912a23          	sw	s9,20(sp)
 490:	02112e23          	sw	ra,60(sp)
 494:	02912a23          	sw	s1,52(sp)
 498:	03312623          	sw	s3,44(sp)
 49c:	00050413          	mv	s0,a0
 4a0:	04b12223          	sw	a1,68(sp)
 4a4:	04c12423          	sw	a2,72(sp)
 4a8:	04d12623          	sw	a3,76(sp)
 4ac:	04e12823          	sw	a4,80(sp)
 4b0:	05012c23          	sw	a6,88(sp)
 4b4:	05112e23          	sw	a7,92(sp)
 4b8:	00f12023          	sw	a5,0(sp)
 4bc:	02500a13          	li	s4,37
 4c0:	00a00a93          	li	s5,10
 4c4:	07300913          	li	s2,115
 4c8:	07500b13          	li	s6,117
 4cc:	07800b93          	li	s7,120
 4d0:	06300c13          	li	s8,99
 4d4:	06900c93          	li	s9,105
 4d8:	00044483          	lbu	s1,0(s0)
 4dc:	02049c63          	bnez	s1,514 <neorv32_uart0_printf+0xb0>
 4e0:	03c12083          	lw	ra,60(sp)
 4e4:	03812403          	lw	s0,56(sp)
 4e8:	03412483          	lw	s1,52(sp)
 4ec:	03012903          	lw	s2,48(sp)
 4f0:	02c12983          	lw	s3,44(sp)
 4f4:	02812a03          	lw	s4,40(sp)
 4f8:	02412a83          	lw	s5,36(sp)
 4fc:	02012b03          	lw	s6,32(sp)
 500:	01c12b83          	lw	s7,28(sp)
 504:	01812c03          	lw	s8,24(sp)
 508:	01412c83          	lw	s9,20(sp)
 50c:	06010113          	addi	sp,sp,96
 510:	00008067          	ret
 514:	0d449863          	bne	s1,s4,5e4 <neorv32_uart0_printf+0x180>
 518:	00240993          	addi	s3,s0,2
 51c:	00144403          	lbu	s0,1(s0)
 520:	05240263          	beq	s0,s2,564 <neorv32_uart0_printf+0x100>
 524:	00896e63          	bltu	s2,s0,540 <neorv32_uart0_printf+0xdc>
 528:	05840c63          	beq	s0,s8,580 <neorv32_uart0_printf+0x11c>
 52c:	07940663          	beq	s0,s9,598 <neorv32_uart0_printf+0x134>
 530:	02500513          	li	a0,37
 534:	ec1ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 538:	00040513          	mv	a0,s0
 53c:	0540006f          	j	590 <neorv32_uart0_printf+0x12c>
 540:	09640663          	beq	s0,s6,5cc <neorv32_uart0_printf+0x168>
 544:	ff7416e3          	bne	s0,s7,530 <neorv32_uart0_printf+0xcc>
 548:	00012783          	lw	a5,0(sp)
 54c:	00410593          	addi	a1,sp,4
 550:	0007a503          	lw	a0,0(a5)
 554:	00478713          	addi	a4,a5,4
 558:	00e12023          	sw	a4,0(sp)
 55c:	da1ff0ef          	jal	ra,2fc <__neorv32_uart_tohex>
 560:	0640006f          	j	5c4 <neorv32_uart0_printf+0x160>
 564:	00012783          	lw	a5,0(sp)
 568:	0007a503          	lw	a0,0(a5)
 56c:	00478713          	addi	a4,a5,4
 570:	00e12023          	sw	a4,0(sp)
 574:	e99ff0ef          	jal	ra,40c <neorv32_uart0_print>
 578:	00098413          	mv	s0,s3
 57c:	f5dff06f          	j	4d8 <neorv32_uart0_printf+0x74>
 580:	00012783          	lw	a5,0(sp)
 584:	0007c503          	lbu	a0,0(a5)
 588:	00478713          	addi	a4,a5,4
 58c:	00e12023          	sw	a4,0(sp)
 590:	e65ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 594:	fe5ff06f          	j	578 <neorv32_uart0_printf+0x114>
 598:	00012783          	lw	a5,0(sp)
 59c:	0007a403          	lw	s0,0(a5)
 5a0:	00478713          	addi	a4,a5,4
 5a4:	00e12023          	sw	a4,0(sp)
 5a8:	00045863          	bgez	s0,5b8 <neorv32_uart0_printf+0x154>
 5ac:	02d00513          	li	a0,45
 5b0:	40800433          	neg	s0,s0
 5b4:	e41ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 5b8:	00410593          	addi	a1,sp,4
 5bc:	00040513          	mv	a0,s0
 5c0:	c35ff0ef          	jal	ra,1f4 <__neorv32_uart_itoa>
 5c4:	00410513          	addi	a0,sp,4
 5c8:	fadff06f          	j	574 <neorv32_uart0_printf+0x110>
 5cc:	00012783          	lw	a5,0(sp)
 5d0:	00410593          	addi	a1,sp,4
 5d4:	00478713          	addi	a4,a5,4
 5d8:	0007a503          	lw	a0,0(a5)
 5dc:	00e12023          	sw	a4,0(sp)
 5e0:	fe1ff06f          	j	5c0 <neorv32_uart0_printf+0x15c>
 5e4:	01549663          	bne	s1,s5,5f0 <neorv32_uart0_printf+0x18c>
 5e8:	00d00513          	li	a0,13
 5ec:	e09ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 5f0:	00140993          	addi	s3,s0,1
 5f4:	00048513          	mv	a0,s1
 5f8:	f99ff06f          	j	590 <neorv32_uart0_printf+0x12c>

000005fc <neorv32_cpu_set_mcycle>:
 5fc:	00000793          	li	a5,0
 600:	b0079073          	csrw	mcycle,a5
 604:	b8059073          	csrw	mcycleh,a1
 608:	b0051073          	csrw	mcycle,a0
 60c:	00008067          	ret

00000610 <__neorv32_rte_core>:
 610:	fc010113          	addi	sp,sp,-64
 614:	02112e23          	sw	ra,60(sp)
 618:	02512c23          	sw	t0,56(sp)
 61c:	02612a23          	sw	t1,52(sp)
 620:	02712823          	sw	t2,48(sp)
 624:	02a12623          	sw	a0,44(sp)
 628:	02b12423          	sw	a1,40(sp)
 62c:	02c12223          	sw	a2,36(sp)
 630:	02d12023          	sw	a3,32(sp)
 634:	00e12e23          	sw	a4,28(sp)
 638:	00f12c23          	sw	a5,24(sp)
 63c:	01012a23          	sw	a6,20(sp)
 640:	01112823          	sw	a7,16(sp)
 644:	01c12623          	sw	t3,12(sp)
 648:	01d12423          	sw	t4,8(sp)
 64c:	01e12223          	sw	t5,4(sp)
 650:	01f12023          	sw	t6,0(sp)
 654:	34102773          	csrr	a4,mepc
 658:	34071073          	csrw	mscratch,a4
 65c:	342027f3          	csrr	a5,mcause
 660:	0807ca63          	bltz	a5,6f4 <__neorv32_rte_core+0xe4>
 664:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3efb4>
 668:	00300593          	li	a1,3
 66c:	0036f693          	andi	a3,a3,3
 670:	00270613          	addi	a2,a4,2
 674:	00b69463          	bne	a3,a1,67c <__neorv32_rte_core+0x6c>
 678:	00470613          	addi	a2,a4,4
 67c:	34161073          	csrw	mepc,a2
 680:	00b00713          	li	a4,11
 684:	04f77c63          	bgeu	a4,a5,6dc <__neorv32_rte_core+0xcc>
 688:	000017b7          	lui	a5,0x1
 68c:	89078793          	addi	a5,a5,-1904 # 890 <__neorv32_rte_debug_exc_handler>
 690:	000780e7          	jalr	a5
 694:	03c12083          	lw	ra,60(sp)
 698:	03812283          	lw	t0,56(sp)
 69c:	03412303          	lw	t1,52(sp)
 6a0:	03012383          	lw	t2,48(sp)
 6a4:	02c12503          	lw	a0,44(sp)
 6a8:	02812583          	lw	a1,40(sp)
 6ac:	02412603          	lw	a2,36(sp)
 6b0:	02012683          	lw	a3,32(sp)
 6b4:	01c12703          	lw	a4,28(sp)
 6b8:	01812783          	lw	a5,24(sp)
 6bc:	01412803          	lw	a6,20(sp)
 6c0:	01012883          	lw	a7,16(sp)
 6c4:	00c12e03          	lw	t3,12(sp)
 6c8:	00812e83          	lw	t4,8(sp)
 6cc:	00412f03          	lw	t5,4(sp)
 6d0:	00012f83          	lw	t6,0(sp)
 6d4:	04010113          	addi	sp,sp,64
 6d8:	30200073          	mret
 6dc:	00001737          	lui	a4,0x1
 6e0:	00279793          	slli	a5,a5,0x2
 6e4:	d1c70713          	addi	a4,a4,-740 # d1c <symbols.0+0x14>
 6e8:	00e787b3          	add	a5,a5,a4
 6ec:	0007a783          	lw	a5,0(a5)
 6f0:	00078067          	jr	a5
 6f4:	80000737          	lui	a4,0x80000
 6f8:	ffd74713          	xori	a4,a4,-3
 6fc:	00e787b3          	add	a5,a5,a4
 700:	01c00713          	li	a4,28
 704:	f8f762e3          	bltu	a4,a5,688 <__neorv32_rte_core+0x78>
 708:	00001737          	lui	a4,0x1
 70c:	00279793          	slli	a5,a5,0x2
 710:	d4c70713          	addi	a4,a4,-692 # d4c <symbols.0+0x44>
 714:	00e787b3          	add	a5,a5,a4
 718:	0007a783          	lw	a5,0(a5)
 71c:	00078067          	jr	a5
 720:	800007b7          	lui	a5,0x80000
 724:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 728:	f69ff06f          	j	690 <__neorv32_rte_core+0x80>
 72c:	800007b7          	lui	a5,0x80000
 730:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 734:	f5dff06f          	j	690 <__neorv32_rte_core+0x80>
 738:	800007b7          	lui	a5,0x80000
 73c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 740:	f51ff06f          	j	690 <__neorv32_rte_core+0x80>
 744:	800007b7          	lui	a5,0x80000
 748:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 74c:	f45ff06f          	j	690 <__neorv32_rte_core+0x80>
 750:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 754:	f3dff06f          	j	690 <__neorv32_rte_core+0x80>
 758:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 75c:	f35ff06f          	j	690 <__neorv32_rte_core+0x80>
 760:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 764:	f2dff06f          	j	690 <__neorv32_rte_core+0x80>
 768:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 76c:	f25ff06f          	j	690 <__neorv32_rte_core+0x80>
 770:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 774:	f1dff06f          	j	690 <__neorv32_rte_core+0x80>
 778:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 77c:	f15ff06f          	j	690 <__neorv32_rte_core+0x80>
 780:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 784:	f0dff06f          	j	690 <__neorv32_rte_core+0x80>
 788:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 78c:	f05ff06f          	j	690 <__neorv32_rte_core+0x80>
 790:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 794:	efdff06f          	j	690 <__neorv32_rte_core+0x80>
 798:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 79c:	ef5ff06f          	j	690 <__neorv32_rte_core+0x80>
 7a0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 7a4:	eedff06f          	j	690 <__neorv32_rte_core+0x80>
 7a8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 7ac:	ee5ff06f          	j	690 <__neorv32_rte_core+0x80>
 7b0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 7b4:	eddff06f          	j	690 <__neorv32_rte_core+0x80>
 7b8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 7bc:	ed5ff06f          	j	690 <__neorv32_rte_core+0x80>
 7c0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 7c4:	ecdff06f          	j	690 <__neorv32_rte_core+0x80>
 7c8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 7cc:	ec5ff06f          	j	690 <__neorv32_rte_core+0x80>
 7d0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 7d4:	ebdff06f          	j	690 <__neorv32_rte_core+0x80>
 7d8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 7dc:	eb5ff06f          	j	690 <__neorv32_rte_core+0x80>
 7e0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 7e4:	eadff06f          	j	690 <__neorv32_rte_core+0x80>
 7e8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 7ec:	ea5ff06f          	j	690 <__neorv32_rte_core+0x80>
 7f0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 7f4:	e9dff06f          	j	690 <__neorv32_rte_core+0x80>
 7f8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 7fc:	e95ff06f          	j	690 <__neorv32_rte_core+0x80>
 800:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 804:	e8dff06f          	j	690 <__neorv32_rte_core+0x80>
 808:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 80c:	e85ff06f          	j	690 <__neorv32_rte_core+0x80>
 810:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 814:	e7dff06f          	j	690 <__neorv32_rte_core+0x80>
 818:	0000                	unimp
 81a:	0000                	unimp
 81c:	0000                	unimp
 81e:	0000                	unimp

00000820 <__neorv32_rte_print_hex_word>:
 820:	fe010113          	addi	sp,sp,-32
 824:	01212823          	sw	s2,16(sp)
 828:	00050913          	mv	s2,a0
 82c:	00001537          	lui	a0,0x1
 830:	00912a23          	sw	s1,20(sp)
 834:	dc050513          	addi	a0,a0,-576 # dc0 <symbols.0+0xb8>
 838:	000014b7          	lui	s1,0x1
 83c:	00812c23          	sw	s0,24(sp)
 840:	01312623          	sw	s3,12(sp)
 844:	00112e23          	sw	ra,28(sp)
 848:	01c00413          	li	s0,28
 84c:	bc1ff0ef          	jal	ra,40c <neorv32_uart0_print>
 850:	03c48493          	addi	s1,s1,60 # 103c <hex_symbols.0>
 854:	ffc00993          	li	s3,-4
 858:	008957b3          	srl	a5,s2,s0
 85c:	00f7f793          	andi	a5,a5,15
 860:	00f487b3          	add	a5,s1,a5
 864:	0007c503          	lbu	a0,0(a5)
 868:	ffc40413          	addi	s0,s0,-4
 86c:	b89ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 870:	ff3414e3          	bne	s0,s3,858 <__neorv32_rte_print_hex_word+0x38>
 874:	01c12083          	lw	ra,28(sp)
 878:	01812403          	lw	s0,24(sp)
 87c:	01412483          	lw	s1,20(sp)
 880:	01012903          	lw	s2,16(sp)
 884:	00c12983          	lw	s3,12(sp)
 888:	02010113          	addi	sp,sp,32
 88c:	00008067          	ret

00000890 <__neorv32_rte_debug_exc_handler>:
 890:	ff010113          	addi	sp,sp,-16
 894:	00112623          	sw	ra,12(sp)
 898:	00812423          	sw	s0,8(sp)
 89c:	00912223          	sw	s1,4(sp)
 8a0:	a99ff0ef          	jal	ra,338 <neorv32_uart0_available>
 8a4:	1c050863          	beqz	a0,a74 <__neorv32_rte_debug_exc_handler+0x1e4>
 8a8:	00001537          	lui	a0,0x1
 8ac:	dc450513          	addi	a0,a0,-572 # dc4 <symbols.0+0xbc>
 8b0:	b5dff0ef          	jal	ra,40c <neorv32_uart0_print>
 8b4:	34202473          	csrr	s0,mcause
 8b8:	00900713          	li	a4,9
 8bc:	00f47793          	andi	a5,s0,15
 8c0:	03078493          	addi	s1,a5,48
 8c4:	00f77463          	bgeu	a4,a5,8cc <__neorv32_rte_debug_exc_handler+0x3c>
 8c8:	05778493          	addi	s1,a5,87
 8cc:	00b00793          	li	a5,11
 8d0:	0087ee63          	bltu	a5,s0,8ec <__neorv32_rte_debug_exc_handler+0x5c>
 8d4:	00001737          	lui	a4,0x1
 8d8:	00241793          	slli	a5,s0,0x2
 8dc:	f8470713          	addi	a4,a4,-124 # f84 <symbols.0+0x27c>
 8e0:	00e787b3          	add	a5,a5,a4
 8e4:	0007a783          	lw	a5,0(a5)
 8e8:	00078067          	jr	a5
 8ec:	800007b7          	lui	a5,0x80000
 8f0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 8f4:	14e40e63          	beq	s0,a4,a50 <__neorv32_rte_debug_exc_handler+0x1c0>
 8f8:	02876a63          	bltu	a4,s0,92c <__neorv32_rte_debug_exc_handler+0x9c>
 8fc:	00378713          	addi	a4,a5,3
 900:	12e40c63          	beq	s0,a4,a38 <__neorv32_rte_debug_exc_handler+0x1a8>
 904:	00778793          	addi	a5,a5,7
 908:	12f40e63          	beq	s0,a5,a44 <__neorv32_rte_debug_exc_handler+0x1b4>
 90c:	00001537          	lui	a0,0x1
 910:	f2450513          	addi	a0,a0,-220 # f24 <symbols.0+0x21c>
 914:	af9ff0ef          	jal	ra,40c <neorv32_uart0_print>
 918:	00040513          	mv	a0,s0
 91c:	f05ff0ef          	jal	ra,820 <__neorv32_rte_print_hex_word>
 920:	00100793          	li	a5,1
 924:	08f40c63          	beq	s0,a5,9bc <__neorv32_rte_debug_exc_handler+0x12c>
 928:	0280006f          	j	950 <__neorv32_rte_debug_exc_handler+0xc0>
 92c:	ff07c793          	xori	a5,a5,-16
 930:	00f407b3          	add	a5,s0,a5
 934:	00f00713          	li	a4,15
 938:	fcf76ae3          	bltu	a4,a5,90c <__neorv32_rte_debug_exc_handler+0x7c>
 93c:	00001537          	lui	a0,0x1
 940:	f1450513          	addi	a0,a0,-236 # f14 <symbols.0+0x20c>
 944:	ac9ff0ef          	jal	ra,40c <neorv32_uart0_print>
 948:	00048513          	mv	a0,s1
 94c:	aa9ff0ef          	jal	ra,3f4 <neorv32_uart0_putc>
 950:	ffd47413          	andi	s0,s0,-3
 954:	00500793          	li	a5,5
 958:	06f40263          	beq	s0,a5,9bc <__neorv32_rte_debug_exc_handler+0x12c>
 95c:	00001537          	lui	a0,0x1
 960:	f6850513          	addi	a0,a0,-152 # f68 <symbols.0+0x260>
 964:	aa9ff0ef          	jal	ra,40c <neorv32_uart0_print>
 968:	34002573          	csrr	a0,mscratch
 96c:	eb5ff0ef          	jal	ra,820 <__neorv32_rte_print_hex_word>
 970:	00001537          	lui	a0,0x1
 974:	f7050513          	addi	a0,a0,-144 # f70 <symbols.0+0x268>
 978:	a95ff0ef          	jal	ra,40c <neorv32_uart0_print>
 97c:	34302573          	csrr	a0,mtval
 980:	ea1ff0ef          	jal	ra,820 <__neorv32_rte_print_hex_word>
 984:	00812403          	lw	s0,8(sp)
 988:	00c12083          	lw	ra,12(sp)
 98c:	00412483          	lw	s1,4(sp)
 990:	00001537          	lui	a0,0x1
 994:	f7c50513          	addi	a0,a0,-132 # f7c <symbols.0+0x274>
 998:	01010113          	addi	sp,sp,16
 99c:	a71ff06f          	j	40c <neorv32_uart0_print>
 9a0:	00001537          	lui	a0,0x1
 9a4:	dcc50513          	addi	a0,a0,-564 # dcc <symbols.0+0xc4>
 9a8:	a65ff0ef          	jal	ra,40c <neorv32_uart0_print>
 9ac:	fb1ff06f          	j	95c <__neorv32_rte_debug_exc_handler+0xcc>
 9b0:	00001537          	lui	a0,0x1
 9b4:	dec50513          	addi	a0,a0,-532 # dec <symbols.0+0xe4>
 9b8:	a55ff0ef          	jal	ra,40c <neorv32_uart0_print>
 9bc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 9c0:	0a07d463          	bgez	a5,a68 <__neorv32_rte_debug_exc_handler+0x1d8>
 9c4:	0017f793          	andi	a5,a5,1
 9c8:	08078a63          	beqz	a5,a5c <__neorv32_rte_debug_exc_handler+0x1cc>
 9cc:	00001537          	lui	a0,0x1
 9d0:	f3c50513          	addi	a0,a0,-196 # f3c <symbols.0+0x234>
 9d4:	fd5ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 9d8:	00001537          	lui	a0,0x1
 9dc:	e0850513          	addi	a0,a0,-504 # e08 <symbols.0+0x100>
 9e0:	fc9ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 9e4:	00001537          	lui	a0,0x1
 9e8:	e1c50513          	addi	a0,a0,-484 # e1c <symbols.0+0x114>
 9ec:	fbdff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 9f0:	00001537          	lui	a0,0x1
 9f4:	e2850513          	addi	a0,a0,-472 # e28 <symbols.0+0x120>
 9f8:	fb1ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 9fc:	00001537          	lui	a0,0x1
 a00:	e4050513          	addi	a0,a0,-448 # e40 <symbols.0+0x138>
 a04:	fb5ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x128>
 a08:	00001537          	lui	a0,0x1
 a0c:	e5450513          	addi	a0,a0,-428 # e54 <symbols.0+0x14c>
 a10:	f99ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a14:	00001537          	lui	a0,0x1
 a18:	e7050513          	addi	a0,a0,-400 # e70 <symbols.0+0x168>
 a1c:	f9dff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x128>
 a20:	00001537          	lui	a0,0x1
 a24:	e8450513          	addi	a0,a0,-380 # e84 <symbols.0+0x17c>
 a28:	f81ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a2c:	00001537          	lui	a0,0x1
 a30:	ea450513          	addi	a0,a0,-348 # ea4 <symbols.0+0x19c>
 a34:	f75ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a38:	00001537          	lui	a0,0x1
 a3c:	ec450513          	addi	a0,a0,-316 # ec4 <symbols.0+0x1bc>
 a40:	f69ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a44:	00001537          	lui	a0,0x1
 a48:	ee050513          	addi	a0,a0,-288 # ee0 <symbols.0+0x1d8>
 a4c:	f5dff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a50:	00001537          	lui	a0,0x1
 a54:	ef850513          	addi	a0,a0,-264 # ef8 <symbols.0+0x1f0>
 a58:	f51ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a5c:	00001537          	lui	a0,0x1
 a60:	f4c50513          	addi	a0,a0,-180 # f4c <symbols.0+0x244>
 a64:	f45ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a68:	00001537          	lui	a0,0x1
 a6c:	f5c50513          	addi	a0,a0,-164 # f5c <symbols.0+0x254>
 a70:	f39ff06f          	j	9a8 <__neorv32_rte_debug_exc_handler+0x118>
 a74:	00c12083          	lw	ra,12(sp)
 a78:	00812403          	lw	s0,8(sp)
 a7c:	00412483          	lw	s1,4(sp)
 a80:	01010113          	addi	sp,sp,16
 a84:	00008067          	ret

00000a88 <neorv32_rte_exception_uninstall>:
 a88:	01f00793          	li	a5,31
 a8c:	02a7e463          	bltu	a5,a0,ab4 <neorv32_rte_exception_uninstall+0x2c>
 a90:	800007b7          	lui	a5,0x80000
 a94:	00078793          	mv	a5,a5
 a98:	00251513          	slli	a0,a0,0x2
 a9c:	00a78533          	add	a0,a5,a0
 aa0:	000017b7          	lui	a5,0x1
 aa4:	89078793          	addi	a5,a5,-1904 # 890 <__neorv32_rte_debug_exc_handler>
 aa8:	00f52023          	sw	a5,0(a0)
 aac:	00000513          	li	a0,0
 ab0:	00008067          	ret
 ab4:	00100513          	li	a0,1
 ab8:	00008067          	ret

00000abc <neorv32_rte_setup>:
 abc:	ff010113          	addi	sp,sp,-16
 ac0:	00112623          	sw	ra,12(sp)
 ac4:	00812423          	sw	s0,8(sp)
 ac8:	00912223          	sw	s1,4(sp)
 acc:	61000793          	li	a5,1552
 ad0:	30579073          	csrw	mtvec,a5
 ad4:	00000413          	li	s0,0
 ad8:	01d00493          	li	s1,29
 adc:	00040513          	mv	a0,s0
 ae0:	00140413          	addi	s0,s0,1
 ae4:	0ff47413          	andi	s0,s0,255
 ae8:	fa1ff0ef          	jal	ra,a88 <neorv32_rte_exception_uninstall>
 aec:	fe9418e3          	bne	s0,s1,adc <neorv32_rte_setup+0x20>
 af0:	00c12083          	lw	ra,12(sp)
 af4:	00812403          	lw	s0,8(sp)
 af8:	00412483          	lw	s1,4(sp)
 afc:	01010113          	addi	sp,sp,16
 b00:	00008067          	ret

00000b04 <neorv32_rte_check_isa>:
 b04:	30102673          	csrr	a2,misa
 b08:	400007b7          	lui	a5,0x40000
 b0c:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3ffff0b4>
 b10:	00f67733          	and	a4,a2,a5
 b14:	04f70463          	beq	a4,a5,b5c <neorv32_rte_check_isa+0x58>
 b18:	fe010113          	addi	sp,sp,-32
 b1c:	00112e23          	sw	ra,28(sp)
 b20:	02051463          	bnez	a0,b48 <neorv32_rte_check_isa+0x44>
 b24:	400005b7          	lui	a1,0x40000
 b28:	00001537          	lui	a0,0x1
 b2c:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3ffff0b4>
 b30:	fb450513          	addi	a0,a0,-76 # fb4 <symbols.0+0x2ac>
 b34:	931ff0ef          	jal	ra,464 <neorv32_uart0_printf>
 b38:	01c12083          	lw	ra,28(sp)
 b3c:	00100513          	li	a0,1
 b40:	02010113          	addi	sp,sp,32
 b44:	00008067          	ret
 b48:	00c12623          	sw	a2,12(sp)
 b4c:	fecff0ef          	jal	ra,338 <neorv32_uart0_available>
 b50:	00c12603          	lw	a2,12(sp)
 b54:	fc0508e3          	beqz	a0,b24 <neorv32_rte_check_isa+0x20>
 b58:	fe1ff06f          	j	b38 <neorv32_rte_check_isa+0x34>
 b5c:	00000513          	li	a0,0
 b60:	00008067          	ret

00000b64 <__divsi3>:
 b64:	06054063          	bltz	a0,bc4 <__umodsi3+0x10>
 b68:	0605c663          	bltz	a1,bd4 <__umodsi3+0x20>

00000b6c <__udivsi3>:
 b6c:	00058613          	mv	a2,a1
 b70:	00050593          	mv	a1,a0
 b74:	fff00513          	li	a0,-1
 b78:	02060c63          	beqz	a2,bb0 <__udivsi3+0x44>
 b7c:	00100693          	li	a3,1
 b80:	00b67a63          	bgeu	a2,a1,b94 <__udivsi3+0x28>
 b84:	00c05863          	blez	a2,b94 <__udivsi3+0x28>
 b88:	00161613          	slli	a2,a2,0x1
 b8c:	00169693          	slli	a3,a3,0x1
 b90:	feb66ae3          	bltu	a2,a1,b84 <__udivsi3+0x18>
 b94:	00000513          	li	a0,0
 b98:	00c5e663          	bltu	a1,a2,ba4 <__udivsi3+0x38>
 b9c:	40c585b3          	sub	a1,a1,a2
 ba0:	00d56533          	or	a0,a0,a3
 ba4:	0016d693          	srli	a3,a3,0x1
 ba8:	00165613          	srli	a2,a2,0x1
 bac:	fe0696e3          	bnez	a3,b98 <__udivsi3+0x2c>
 bb0:	00008067          	ret

00000bb4 <__umodsi3>:
 bb4:	00008293          	mv	t0,ra
 bb8:	fb5ff0ef          	jal	ra,b6c <__udivsi3>
 bbc:	00058513          	mv	a0,a1
 bc0:	00028067          	jr	t0
 bc4:	40a00533          	neg	a0,a0
 bc8:	00b04863          	bgtz	a1,bd8 <__umodsi3+0x24>
 bcc:	40b005b3          	neg	a1,a1
 bd0:	f9dff06f          	j	b6c <__udivsi3>
 bd4:	40b005b3          	neg	a1,a1
 bd8:	00008293          	mv	t0,ra
 bdc:	f91ff0ef          	jal	ra,b6c <__udivsi3>
 be0:	40a00533          	neg	a0,a0
 be4:	00028067          	jr	t0

00000be8 <__modsi3>:
 be8:	00008293          	mv	t0,ra
 bec:	0005ca63          	bltz	a1,c00 <__modsi3+0x18>
 bf0:	00054c63          	bltz	a0,c08 <__modsi3+0x20>
 bf4:	f79ff0ef          	jal	ra,b6c <__udivsi3>
 bf8:	00058513          	mv	a0,a1
 bfc:	00028067          	jr	t0
 c00:	40b005b3          	neg	a1,a1
 c04:	fe0558e3          	bgez	a0,bf4 <__modsi3+0xc>
 c08:	40a00533          	neg	a0,a0
 c0c:	f61ff0ef          	jal	ra,b6c <__udivsi3>
 c10:	40b00533          	neg	a0,a1
 c14:	00028067          	jr	t0
