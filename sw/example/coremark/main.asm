
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
  e0:	de458593          	addi	a1,a1,-540 # ec0 <__crt0_copy_data_src_begin>
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
 180:	f9010113          	addi	sp,sp,-112
 184:	00a12623          	sw	a0,12(sp)
 188:	00058613          	mv	a2,a1
 18c:	05e10513          	addi	a0,sp,94
 190:	00c10593          	addi	a1,sp,12
 194:	06112623          	sw	ra,108(sp)
 198:	004000ef          	jal	ra,19c <portable_init>

0000019c <portable_init>:
 19c:	ff010113          	addi	sp,sp,-16
 1a0:	00112623          	sw	ra,12(sp)
 1a4:	30047073          	csrci	mstatus,8
 1a8:	00000013          	nop
 1ac:	00000013          	nop
 1b0:	0dd000ef          	jal	ra,a8c <neorv32_rte_setup>
 1b4:	00005537          	lui	a0,0x5
 1b8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c40>
 1bc:	00000613          	li	a2,0
 1c0:	00000593          	li	a1,0
 1c4:	168000ef          	jal	ra,32c <neorv32_uart0_setup>
 1c8:	00001537          	lui	a0,0x1
 1cc:	b8850513          	addi	a0,a0,-1144 # b88 <__etext>
 1d0:	278000ef          	jal	ra,448 <neorv32_uart0_printf>
 1d4:	0000006f          	j	1d4 <portable_init+0x38>

000001d8 <__neorv32_uart_itoa>:
 1d8:	fd010113          	addi	sp,sp,-48
 1dc:	02812423          	sw	s0,40(sp)
 1e0:	02912223          	sw	s1,36(sp)
 1e4:	03212023          	sw	s2,32(sp)
 1e8:	01312e23          	sw	s3,28(sp)
 1ec:	01412c23          	sw	s4,24(sp)
 1f0:	02112623          	sw	ra,44(sp)
 1f4:	01512a23          	sw	s5,20(sp)
 1f8:	00001a37          	lui	s4,0x1
 1fc:	00050493          	mv	s1,a0
 200:	00058413          	mv	s0,a1
 204:	00058523          	sb	zero,10(a1)
 208:	00000993          	li	s3,0
 20c:	00410913          	addi	s2,sp,4
 210:	bf8a0a13          	addi	s4,s4,-1032 # bf8 <numbers.1>
 214:	00a00593          	li	a1,10
 218:	00048513          	mv	a0,s1
 21c:	109000ef          	jal	ra,b24 <__umodsi3>
 220:	00aa0533          	add	a0,s4,a0
 224:	00054783          	lbu	a5,0(a0)
 228:	01390ab3          	add	s5,s2,s3
 22c:	00048513          	mv	a0,s1
 230:	00fa8023          	sb	a5,0(s5)
 234:	00a00593          	li	a1,10
 238:	0a5000ef          	jal	ra,adc <__udivsi3>
 23c:	00198993          	addi	s3,s3,1
 240:	00a00793          	li	a5,10
 244:	00050493          	mv	s1,a0
 248:	fcf996e3          	bne	s3,a5,214 <__neorv32_uart_itoa+0x3c>
 24c:	00090693          	mv	a3,s2
 250:	00900713          	li	a4,9
 254:	03000613          	li	a2,48
 258:	0096c583          	lbu	a1,9(a3)
 25c:	00070793          	mv	a5,a4
 260:	fff70713          	addi	a4,a4,-1
 264:	01071713          	slli	a4,a4,0x10
 268:	01075713          	srli	a4,a4,0x10
 26c:	00c59a63          	bne	a1,a2,280 <__neorv32_uart_itoa+0xa8>
 270:	000684a3          	sb	zero,9(a3)
 274:	fff68693          	addi	a3,a3,-1
 278:	fe0710e3          	bnez	a4,258 <__neorv32_uart_itoa+0x80>
 27c:	00000793          	li	a5,0
 280:	00f907b3          	add	a5,s2,a5
 284:	00000593          	li	a1,0
 288:	0007c703          	lbu	a4,0(a5)
 28c:	00070c63          	beqz	a4,2a4 <__neorv32_uart_itoa+0xcc>
 290:	00158693          	addi	a3,a1,1
 294:	00b405b3          	add	a1,s0,a1
 298:	00e58023          	sb	a4,0(a1)
 29c:	01069593          	slli	a1,a3,0x10
 2a0:	0105d593          	srli	a1,a1,0x10
 2a4:	fff78713          	addi	a4,a5,-1
 2a8:	02f91863          	bne	s2,a5,2d8 <__neorv32_uart_itoa+0x100>
 2ac:	00b40433          	add	s0,s0,a1
 2b0:	00040023          	sb	zero,0(s0)
 2b4:	02c12083          	lw	ra,44(sp)
 2b8:	02812403          	lw	s0,40(sp)
 2bc:	02412483          	lw	s1,36(sp)
 2c0:	02012903          	lw	s2,32(sp)
 2c4:	01c12983          	lw	s3,28(sp)
 2c8:	01812a03          	lw	s4,24(sp)
 2cc:	01412a83          	lw	s5,20(sp)
 2d0:	03010113          	addi	sp,sp,48
 2d4:	00008067          	ret
 2d8:	00070793          	mv	a5,a4
 2dc:	fadff06f          	j	288 <__neorv32_uart_itoa+0xb0>

000002e0 <__neorv32_uart_tohex>:
 2e0:	00001637          	lui	a2,0x1
 2e4:	00758693          	addi	a3,a1,7
 2e8:	00000713          	li	a4,0
 2ec:	c0460613          	addi	a2,a2,-1020 # c04 <symbols.0>
 2f0:	02000813          	li	a6,32
 2f4:	00e557b3          	srl	a5,a0,a4
 2f8:	00f7f793          	andi	a5,a5,15
 2fc:	00f607b3          	add	a5,a2,a5
 300:	0007c783          	lbu	a5,0(a5)
 304:	00470713          	addi	a4,a4,4
 308:	fff68693          	addi	a3,a3,-1
 30c:	00f680a3          	sb	a5,1(a3)
 310:	ff0712e3          	bne	a4,a6,2f4 <__neorv32_uart_tohex+0x14>
 314:	00058423          	sb	zero,8(a1)
 318:	00008067          	ret

0000031c <neorv32_uart0_available>:
 31c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 320:	01255513          	srli	a0,a0,0x12
 324:	00157513          	andi	a0,a0,1
 328:	00008067          	ret

0000032c <neorv32_uart0_setup>:
 32c:	ff010113          	addi	sp,sp,-16
 330:	00812423          	sw	s0,8(sp)
 334:	00912223          	sw	s1,4(sp)
 338:	00112623          	sw	ra,12(sp)
 33c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 340:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 344:	00058413          	mv	s0,a1
 348:	00151593          	slli	a1,a0,0x1
 34c:	00078513          	mv	a0,a5
 350:	00060493          	mv	s1,a2
 354:	788000ef          	jal	ra,adc <__udivsi3>
 358:	01051513          	slli	a0,a0,0x10
 35c:	000017b7          	lui	a5,0x1
 360:	01055513          	srli	a0,a0,0x10
 364:	00000713          	li	a4,0
 368:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x13e>
 36c:	04a7e463          	bltu	a5,a0,3b4 <neorv32_uart0_setup+0x88>
 370:	0034f793          	andi	a5,s1,3
 374:	00347413          	andi	s0,s0,3
 378:	fff50513          	addi	a0,a0,-1
 37c:	01479793          	slli	a5,a5,0x14
 380:	01641413          	slli	s0,s0,0x16
 384:	00f567b3          	or	a5,a0,a5
 388:	0087e7b3          	or	a5,a5,s0
 38c:	01871713          	slli	a4,a4,0x18
 390:	00c12083          	lw	ra,12(sp)
 394:	00812403          	lw	s0,8(sp)
 398:	00e7e7b3          	or	a5,a5,a4
 39c:	10000737          	lui	a4,0x10000
 3a0:	00e7e7b3          	or	a5,a5,a4
 3a4:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3a8:	00412483          	lw	s1,4(sp)
 3ac:	01010113          	addi	sp,sp,16
 3b0:	00008067          	ret
 3b4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff13e>
 3b8:	0fd6f693          	andi	a3,a3,253
 3bc:	00069a63          	bnez	a3,3d0 <neorv32_uart0_setup+0xa4>
 3c0:	00355513          	srli	a0,a0,0x3
 3c4:	00170713          	addi	a4,a4,1
 3c8:	0ff77713          	andi	a4,a4,255
 3cc:	fa1ff06f          	j	36c <neorv32_uart0_setup+0x40>
 3d0:	00155513          	srli	a0,a0,0x1
 3d4:	ff1ff06f          	j	3c4 <neorv32_uart0_setup+0x98>

000003d8 <neorv32_uart0_putc>:
 3d8:	00040737          	lui	a4,0x40
 3dc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3e0:	00e7f7b3          	and	a5,a5,a4
 3e4:	fe079ce3          	bnez	a5,3dc <neorv32_uart0_putc+0x4>
 3e8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 3ec:	00008067          	ret

000003f0 <neorv32_uart0_print>:
 3f0:	ff010113          	addi	sp,sp,-16
 3f4:	00812423          	sw	s0,8(sp)
 3f8:	01212023          	sw	s2,0(sp)
 3fc:	00112623          	sw	ra,12(sp)
 400:	00912223          	sw	s1,4(sp)
 404:	00050413          	mv	s0,a0
 408:	00a00913          	li	s2,10
 40c:	00044483          	lbu	s1,0(s0)
 410:	00140413          	addi	s0,s0,1
 414:	00049e63          	bnez	s1,430 <neorv32_uart0_print+0x40>
 418:	00c12083          	lw	ra,12(sp)
 41c:	00812403          	lw	s0,8(sp)
 420:	00412483          	lw	s1,4(sp)
 424:	00012903          	lw	s2,0(sp)
 428:	01010113          	addi	sp,sp,16
 42c:	00008067          	ret
 430:	01249663          	bne	s1,s2,43c <neorv32_uart0_print+0x4c>
 434:	00d00513          	li	a0,13
 438:	fa1ff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 43c:	00048513          	mv	a0,s1
 440:	f99ff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 444:	fc9ff06f          	j	40c <neorv32_uart0_print+0x1c>

00000448 <neorv32_uart0_printf>:
 448:	fa010113          	addi	sp,sp,-96
 44c:	04f12a23          	sw	a5,84(sp)
 450:	04410793          	addi	a5,sp,68
 454:	02812c23          	sw	s0,56(sp)
 458:	03212823          	sw	s2,48(sp)
 45c:	03412423          	sw	s4,40(sp)
 460:	03512223          	sw	s5,36(sp)
 464:	03612023          	sw	s6,32(sp)
 468:	01712e23          	sw	s7,28(sp)
 46c:	01812c23          	sw	s8,24(sp)
 470:	01912a23          	sw	s9,20(sp)
 474:	02112e23          	sw	ra,60(sp)
 478:	02912a23          	sw	s1,52(sp)
 47c:	03312623          	sw	s3,44(sp)
 480:	00050413          	mv	s0,a0
 484:	04b12223          	sw	a1,68(sp)
 488:	04c12423          	sw	a2,72(sp)
 48c:	04d12623          	sw	a3,76(sp)
 490:	04e12823          	sw	a4,80(sp)
 494:	05012c23          	sw	a6,88(sp)
 498:	05112e23          	sw	a7,92(sp)
 49c:	00f12023          	sw	a5,0(sp)
 4a0:	02500a13          	li	s4,37
 4a4:	00a00a93          	li	s5,10
 4a8:	07300913          	li	s2,115
 4ac:	07500b13          	li	s6,117
 4b0:	07800b93          	li	s7,120
 4b4:	06300c13          	li	s8,99
 4b8:	06900c93          	li	s9,105
 4bc:	00044483          	lbu	s1,0(s0)
 4c0:	02049c63          	bnez	s1,4f8 <neorv32_uart0_printf+0xb0>
 4c4:	03c12083          	lw	ra,60(sp)
 4c8:	03812403          	lw	s0,56(sp)
 4cc:	03412483          	lw	s1,52(sp)
 4d0:	03012903          	lw	s2,48(sp)
 4d4:	02c12983          	lw	s3,44(sp)
 4d8:	02812a03          	lw	s4,40(sp)
 4dc:	02412a83          	lw	s5,36(sp)
 4e0:	02012b03          	lw	s6,32(sp)
 4e4:	01c12b83          	lw	s7,28(sp)
 4e8:	01812c03          	lw	s8,24(sp)
 4ec:	01412c83          	lw	s9,20(sp)
 4f0:	06010113          	addi	sp,sp,96
 4f4:	00008067          	ret
 4f8:	0d449863          	bne	s1,s4,5c8 <neorv32_uart0_printf+0x180>
 4fc:	00240993          	addi	s3,s0,2
 500:	00144403          	lbu	s0,1(s0)
 504:	05240263          	beq	s0,s2,548 <neorv32_uart0_printf+0x100>
 508:	00896e63          	bltu	s2,s0,524 <neorv32_uart0_printf+0xdc>
 50c:	05840c63          	beq	s0,s8,564 <neorv32_uart0_printf+0x11c>
 510:	07940663          	beq	s0,s9,57c <neorv32_uart0_printf+0x134>
 514:	02500513          	li	a0,37
 518:	ec1ff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 51c:	00040513          	mv	a0,s0
 520:	0540006f          	j	574 <neorv32_uart0_printf+0x12c>
 524:	09640663          	beq	s0,s6,5b0 <neorv32_uart0_printf+0x168>
 528:	ff7416e3          	bne	s0,s7,514 <neorv32_uart0_printf+0xcc>
 52c:	00012783          	lw	a5,0(sp)
 530:	00410593          	addi	a1,sp,4
 534:	0007a503          	lw	a0,0(a5)
 538:	00478713          	addi	a4,a5,4
 53c:	00e12023          	sw	a4,0(sp)
 540:	da1ff0ef          	jal	ra,2e0 <__neorv32_uart_tohex>
 544:	0640006f          	j	5a8 <neorv32_uart0_printf+0x160>
 548:	00012783          	lw	a5,0(sp)
 54c:	0007a503          	lw	a0,0(a5)
 550:	00478713          	addi	a4,a5,4
 554:	00e12023          	sw	a4,0(sp)
 558:	e99ff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 55c:	00098413          	mv	s0,s3
 560:	f5dff06f          	j	4bc <neorv32_uart0_printf+0x74>
 564:	00012783          	lw	a5,0(sp)
 568:	0007c503          	lbu	a0,0(a5)
 56c:	00478713          	addi	a4,a5,4
 570:	00e12023          	sw	a4,0(sp)
 574:	e65ff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 578:	fe5ff06f          	j	55c <neorv32_uart0_printf+0x114>
 57c:	00012783          	lw	a5,0(sp)
 580:	0007a403          	lw	s0,0(a5)
 584:	00478713          	addi	a4,a5,4
 588:	00e12023          	sw	a4,0(sp)
 58c:	00045863          	bgez	s0,59c <neorv32_uart0_printf+0x154>
 590:	02d00513          	li	a0,45
 594:	40800433          	neg	s0,s0
 598:	e41ff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 59c:	00410593          	addi	a1,sp,4
 5a0:	00040513          	mv	a0,s0
 5a4:	c35ff0ef          	jal	ra,1d8 <__neorv32_uart_itoa>
 5a8:	00410513          	addi	a0,sp,4
 5ac:	fadff06f          	j	558 <neorv32_uart0_printf+0x110>
 5b0:	00012783          	lw	a5,0(sp)
 5b4:	00410593          	addi	a1,sp,4
 5b8:	00478713          	addi	a4,a5,4
 5bc:	0007a503          	lw	a0,0(a5)
 5c0:	00e12023          	sw	a4,0(sp)
 5c4:	fe1ff06f          	j	5a4 <neorv32_uart0_printf+0x15c>
 5c8:	01549663          	bne	s1,s5,5d4 <neorv32_uart0_printf+0x18c>
 5cc:	00d00513          	li	a0,13
 5d0:	e09ff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 5d4:	00140993          	addi	s3,s0,1
 5d8:	00048513          	mv	a0,s1
 5dc:	f99ff06f          	j	574 <neorv32_uart0_printf+0x12c>

000005e0 <__neorv32_rte_core>:
 5e0:	fc010113          	addi	sp,sp,-64
 5e4:	02112e23          	sw	ra,60(sp)
 5e8:	02512c23          	sw	t0,56(sp)
 5ec:	02612a23          	sw	t1,52(sp)
 5f0:	02712823          	sw	t2,48(sp)
 5f4:	02a12623          	sw	a0,44(sp)
 5f8:	02b12423          	sw	a1,40(sp)
 5fc:	02c12223          	sw	a2,36(sp)
 600:	02d12023          	sw	a3,32(sp)
 604:	00e12e23          	sw	a4,28(sp)
 608:	00f12c23          	sw	a5,24(sp)
 60c:	01012a23          	sw	a6,20(sp)
 610:	01112823          	sw	a7,16(sp)
 614:	01c12623          	sw	t3,12(sp)
 618:	01d12423          	sw	t4,8(sp)
 61c:	01e12223          	sw	t5,4(sp)
 620:	01f12023          	sw	t6,0(sp)
 624:	34102773          	csrr	a4,mepc
 628:	34071073          	csrw	mscratch,a4
 62c:	342027f3          	csrr	a5,mcause
 630:	0807ca63          	bltz	a5,6c4 <__neorv32_rte_core+0xe4>
 634:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f140>
 638:	00300593          	li	a1,3
 63c:	0036f693          	andi	a3,a3,3
 640:	00270613          	addi	a2,a4,2
 644:	00b69463          	bne	a3,a1,64c <__neorv32_rte_core+0x6c>
 648:	00470613          	addi	a2,a4,4
 64c:	34161073          	csrw	mepc,a2
 650:	00b00713          	li	a4,11
 654:	04f77c63          	bgeu	a4,a5,6ac <__neorv32_rte_core+0xcc>
 658:	000017b7          	lui	a5,0x1
 65c:	86078793          	addi	a5,a5,-1952 # 860 <__neorv32_rte_debug_exc_handler>
 660:	000780e7          	jalr	a5
 664:	03c12083          	lw	ra,60(sp)
 668:	03812283          	lw	t0,56(sp)
 66c:	03412303          	lw	t1,52(sp)
 670:	03012383          	lw	t2,48(sp)
 674:	02c12503          	lw	a0,44(sp)
 678:	02812583          	lw	a1,40(sp)
 67c:	02412603          	lw	a2,36(sp)
 680:	02012683          	lw	a3,32(sp)
 684:	01c12703          	lw	a4,28(sp)
 688:	01812783          	lw	a5,24(sp)
 68c:	01412803          	lw	a6,20(sp)
 690:	01012883          	lw	a7,16(sp)
 694:	00c12e03          	lw	t3,12(sp)
 698:	00812e83          	lw	t4,8(sp)
 69c:	00412f03          	lw	t5,4(sp)
 6a0:	00012f83          	lw	t6,0(sp)
 6a4:	04010113          	addi	sp,sp,64
 6a8:	30200073          	mret
 6ac:	00001737          	lui	a4,0x1
 6b0:	00279793          	slli	a5,a5,0x2
 6b4:	c1870713          	addi	a4,a4,-1000 # c18 <symbols.0+0x14>
 6b8:	00e787b3          	add	a5,a5,a4
 6bc:	0007a783          	lw	a5,0(a5)
 6c0:	00078067          	jr	a5
 6c4:	80000737          	lui	a4,0x80000
 6c8:	ffd74713          	xori	a4,a4,-3
 6cc:	00e787b3          	add	a5,a5,a4
 6d0:	01c00713          	li	a4,28
 6d4:	f8f762e3          	bltu	a4,a5,658 <__neorv32_rte_core+0x78>
 6d8:	00001737          	lui	a4,0x1
 6dc:	00279793          	slli	a5,a5,0x2
 6e0:	c4870713          	addi	a4,a4,-952 # c48 <symbols.0+0x44>
 6e4:	00e787b3          	add	a5,a5,a4
 6e8:	0007a783          	lw	a5,0(a5)
 6ec:	00078067          	jr	a5
 6f0:	800007b7          	lui	a5,0x80000
 6f4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 6f8:	f69ff06f          	j	660 <__neorv32_rte_core+0x80>
 6fc:	800007b7          	lui	a5,0x80000
 700:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 704:	f5dff06f          	j	660 <__neorv32_rte_core+0x80>
 708:	800007b7          	lui	a5,0x80000
 70c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 710:	f51ff06f          	j	660 <__neorv32_rte_core+0x80>
 714:	800007b7          	lui	a5,0x80000
 718:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 71c:	f45ff06f          	j	660 <__neorv32_rte_core+0x80>
 720:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 724:	f3dff06f          	j	660 <__neorv32_rte_core+0x80>
 728:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 72c:	f35ff06f          	j	660 <__neorv32_rte_core+0x80>
 730:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 734:	f2dff06f          	j	660 <__neorv32_rte_core+0x80>
 738:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 73c:	f25ff06f          	j	660 <__neorv32_rte_core+0x80>
 740:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 744:	f1dff06f          	j	660 <__neorv32_rte_core+0x80>
 748:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 74c:	f15ff06f          	j	660 <__neorv32_rte_core+0x80>
 750:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 754:	f0dff06f          	j	660 <__neorv32_rte_core+0x80>
 758:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 75c:	f05ff06f          	j	660 <__neorv32_rte_core+0x80>
 760:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 764:	efdff06f          	j	660 <__neorv32_rte_core+0x80>
 768:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 76c:	ef5ff06f          	j	660 <__neorv32_rte_core+0x80>
 770:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 774:	eedff06f          	j	660 <__neorv32_rte_core+0x80>
 778:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 77c:	ee5ff06f          	j	660 <__neorv32_rte_core+0x80>
 780:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 784:	eddff06f          	j	660 <__neorv32_rte_core+0x80>
 788:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 78c:	ed5ff06f          	j	660 <__neorv32_rte_core+0x80>
 790:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 794:	ecdff06f          	j	660 <__neorv32_rte_core+0x80>
 798:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 79c:	ec5ff06f          	j	660 <__neorv32_rte_core+0x80>
 7a0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 7a4:	ebdff06f          	j	660 <__neorv32_rte_core+0x80>
 7a8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 7ac:	eb5ff06f          	j	660 <__neorv32_rte_core+0x80>
 7b0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 7b4:	eadff06f          	j	660 <__neorv32_rte_core+0x80>
 7b8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 7bc:	ea5ff06f          	j	660 <__neorv32_rte_core+0x80>
 7c0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 7c4:	e9dff06f          	j	660 <__neorv32_rte_core+0x80>
 7c8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 7cc:	e95ff06f          	j	660 <__neorv32_rte_core+0x80>
 7d0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 7d4:	e8dff06f          	j	660 <__neorv32_rte_core+0x80>
 7d8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 7dc:	e85ff06f          	j	660 <__neorv32_rte_core+0x80>
 7e0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 7e4:	e7dff06f          	j	660 <__neorv32_rte_core+0x80>
 7e8:	0000                	unimp
 7ea:	0000                	unimp
 7ec:	0000                	unimp
 7ee:	0000                	unimp

000007f0 <__neorv32_rte_print_hex_word>:
 7f0:	fe010113          	addi	sp,sp,-32
 7f4:	01212823          	sw	s2,16(sp)
 7f8:	00050913          	mv	s2,a0
 7fc:	00001537          	lui	a0,0x1
 800:	00912a23          	sw	s1,20(sp)
 804:	cbc50513          	addi	a0,a0,-836 # cbc <symbols.0+0xb8>
 808:	000014b7          	lui	s1,0x1
 80c:	00812c23          	sw	s0,24(sp)
 810:	01312623          	sw	s3,12(sp)
 814:	00112e23          	sw	ra,28(sp)
 818:	01c00413          	li	s0,28
 81c:	bd5ff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 820:	eb048493          	addi	s1,s1,-336 # eb0 <hex_symbols.0>
 824:	ffc00993          	li	s3,-4
 828:	008957b3          	srl	a5,s2,s0
 82c:	00f7f793          	andi	a5,a5,15
 830:	00f487b3          	add	a5,s1,a5
 834:	0007c503          	lbu	a0,0(a5)
 838:	ffc40413          	addi	s0,s0,-4
 83c:	b9dff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 840:	ff3414e3          	bne	s0,s3,828 <__neorv32_rte_print_hex_word+0x38>
 844:	01c12083          	lw	ra,28(sp)
 848:	01812403          	lw	s0,24(sp)
 84c:	01412483          	lw	s1,20(sp)
 850:	01012903          	lw	s2,16(sp)
 854:	00c12983          	lw	s3,12(sp)
 858:	02010113          	addi	sp,sp,32
 85c:	00008067          	ret

00000860 <__neorv32_rte_debug_exc_handler>:
 860:	ff010113          	addi	sp,sp,-16
 864:	00112623          	sw	ra,12(sp)
 868:	00812423          	sw	s0,8(sp)
 86c:	00912223          	sw	s1,4(sp)
 870:	aadff0ef          	jal	ra,31c <neorv32_uart0_available>
 874:	1c050863          	beqz	a0,a44 <__neorv32_rte_debug_exc_handler+0x1e4>
 878:	00001537          	lui	a0,0x1
 87c:	cc050513          	addi	a0,a0,-832 # cc0 <symbols.0+0xbc>
 880:	b71ff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 884:	34202473          	csrr	s0,mcause
 888:	00900713          	li	a4,9
 88c:	00f47793          	andi	a5,s0,15
 890:	03078493          	addi	s1,a5,48
 894:	00f77463          	bgeu	a4,a5,89c <__neorv32_rte_debug_exc_handler+0x3c>
 898:	05778493          	addi	s1,a5,87
 89c:	00b00793          	li	a5,11
 8a0:	0087ee63          	bltu	a5,s0,8bc <__neorv32_rte_debug_exc_handler+0x5c>
 8a4:	00001737          	lui	a4,0x1
 8a8:	00241793          	slli	a5,s0,0x2
 8ac:	e8070713          	addi	a4,a4,-384 # e80 <symbols.0+0x27c>
 8b0:	00e787b3          	add	a5,a5,a4
 8b4:	0007a783          	lw	a5,0(a5)
 8b8:	00078067          	jr	a5
 8bc:	800007b7          	lui	a5,0x80000
 8c0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 8c4:	14e40e63          	beq	s0,a4,a20 <__neorv32_rte_debug_exc_handler+0x1c0>
 8c8:	02876a63          	bltu	a4,s0,8fc <__neorv32_rte_debug_exc_handler+0x9c>
 8cc:	00378713          	addi	a4,a5,3
 8d0:	12e40c63          	beq	s0,a4,a08 <__neorv32_rte_debug_exc_handler+0x1a8>
 8d4:	00778793          	addi	a5,a5,7
 8d8:	12f40e63          	beq	s0,a5,a14 <__neorv32_rte_debug_exc_handler+0x1b4>
 8dc:	00001537          	lui	a0,0x1
 8e0:	e2050513          	addi	a0,a0,-480 # e20 <symbols.0+0x21c>
 8e4:	b0dff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 8e8:	00040513          	mv	a0,s0
 8ec:	f05ff0ef          	jal	ra,7f0 <__neorv32_rte_print_hex_word>
 8f0:	00100793          	li	a5,1
 8f4:	08f40c63          	beq	s0,a5,98c <__neorv32_rte_debug_exc_handler+0x12c>
 8f8:	0280006f          	j	920 <__neorv32_rte_debug_exc_handler+0xc0>
 8fc:	ff07c793          	xori	a5,a5,-16
 900:	00f407b3          	add	a5,s0,a5
 904:	00f00713          	li	a4,15
 908:	fcf76ae3          	bltu	a4,a5,8dc <__neorv32_rte_debug_exc_handler+0x7c>
 90c:	00001537          	lui	a0,0x1
 910:	e1050513          	addi	a0,a0,-496 # e10 <symbols.0+0x20c>
 914:	addff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 918:	00048513          	mv	a0,s1
 91c:	abdff0ef          	jal	ra,3d8 <neorv32_uart0_putc>
 920:	ffd47413          	andi	s0,s0,-3
 924:	00500793          	li	a5,5
 928:	06f40263          	beq	s0,a5,98c <__neorv32_rte_debug_exc_handler+0x12c>
 92c:	00001537          	lui	a0,0x1
 930:	e6450513          	addi	a0,a0,-412 # e64 <symbols.0+0x260>
 934:	abdff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 938:	34002573          	csrr	a0,mscratch
 93c:	eb5ff0ef          	jal	ra,7f0 <__neorv32_rte_print_hex_word>
 940:	00001537          	lui	a0,0x1
 944:	e6c50513          	addi	a0,a0,-404 # e6c <symbols.0+0x268>
 948:	aa9ff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 94c:	34302573          	csrr	a0,mtval
 950:	ea1ff0ef          	jal	ra,7f0 <__neorv32_rte_print_hex_word>
 954:	00812403          	lw	s0,8(sp)
 958:	00c12083          	lw	ra,12(sp)
 95c:	00412483          	lw	s1,4(sp)
 960:	00001537          	lui	a0,0x1
 964:	e7850513          	addi	a0,a0,-392 # e78 <symbols.0+0x274>
 968:	01010113          	addi	sp,sp,16
 96c:	a85ff06f          	j	3f0 <neorv32_uart0_print>
 970:	00001537          	lui	a0,0x1
 974:	cc850513          	addi	a0,a0,-824 # cc8 <symbols.0+0xc4>
 978:	a79ff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 97c:	fb1ff06f          	j	92c <__neorv32_rte_debug_exc_handler+0xcc>
 980:	00001537          	lui	a0,0x1
 984:	ce850513          	addi	a0,a0,-792 # ce8 <symbols.0+0xe4>
 988:	a69ff0ef          	jal	ra,3f0 <neorv32_uart0_print>
 98c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 990:	0a07d463          	bgez	a5,a38 <__neorv32_rte_debug_exc_handler+0x1d8>
 994:	0017f793          	andi	a5,a5,1
 998:	08078a63          	beqz	a5,a2c <__neorv32_rte_debug_exc_handler+0x1cc>
 99c:	00001537          	lui	a0,0x1
 9a0:	e3850513          	addi	a0,a0,-456 # e38 <symbols.0+0x234>
 9a4:	fd5ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 9a8:	00001537          	lui	a0,0x1
 9ac:	d0450513          	addi	a0,a0,-764 # d04 <symbols.0+0x100>
 9b0:	fc9ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 9b4:	00001537          	lui	a0,0x1
 9b8:	d1850513          	addi	a0,a0,-744 # d18 <symbols.0+0x114>
 9bc:	fbdff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 9c0:	00001537          	lui	a0,0x1
 9c4:	d2450513          	addi	a0,a0,-732 # d24 <symbols.0+0x120>
 9c8:	fb1ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 9cc:	00001537          	lui	a0,0x1
 9d0:	d3c50513          	addi	a0,a0,-708 # d3c <symbols.0+0x138>
 9d4:	fb5ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x128>
 9d8:	00001537          	lui	a0,0x1
 9dc:	d5050513          	addi	a0,a0,-688 # d50 <symbols.0+0x14c>
 9e0:	f99ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 9e4:	00001537          	lui	a0,0x1
 9e8:	d6c50513          	addi	a0,a0,-660 # d6c <symbols.0+0x168>
 9ec:	f9dff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x128>
 9f0:	00001537          	lui	a0,0x1
 9f4:	d8050513          	addi	a0,a0,-640 # d80 <symbols.0+0x17c>
 9f8:	f81ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 9fc:	00001537          	lui	a0,0x1
 a00:	da050513          	addi	a0,a0,-608 # da0 <symbols.0+0x19c>
 a04:	f75ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 a08:	00001537          	lui	a0,0x1
 a0c:	dc050513          	addi	a0,a0,-576 # dc0 <symbols.0+0x1bc>
 a10:	f69ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 a14:	00001537          	lui	a0,0x1
 a18:	ddc50513          	addi	a0,a0,-548 # ddc <symbols.0+0x1d8>
 a1c:	f5dff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 a20:	00001537          	lui	a0,0x1
 a24:	df450513          	addi	a0,a0,-524 # df4 <symbols.0+0x1f0>
 a28:	f51ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 a2c:	00001537          	lui	a0,0x1
 a30:	e4850513          	addi	a0,a0,-440 # e48 <symbols.0+0x244>
 a34:	f45ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 a38:	00001537          	lui	a0,0x1
 a3c:	e5850513          	addi	a0,a0,-424 # e58 <symbols.0+0x254>
 a40:	f39ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x118>
 a44:	00c12083          	lw	ra,12(sp)
 a48:	00812403          	lw	s0,8(sp)
 a4c:	00412483          	lw	s1,4(sp)
 a50:	01010113          	addi	sp,sp,16
 a54:	00008067          	ret

00000a58 <neorv32_rte_exception_uninstall>:
 a58:	01f00793          	li	a5,31
 a5c:	02a7e463          	bltu	a5,a0,a84 <neorv32_rte_exception_uninstall+0x2c>
 a60:	800007b7          	lui	a5,0x80000
 a64:	00078793          	mv	a5,a5
 a68:	00251513          	slli	a0,a0,0x2
 a6c:	00a78533          	add	a0,a5,a0
 a70:	000017b7          	lui	a5,0x1
 a74:	86078793          	addi	a5,a5,-1952 # 860 <__neorv32_rte_debug_exc_handler>
 a78:	00f52023          	sw	a5,0(a0)
 a7c:	00000513          	li	a0,0
 a80:	00008067          	ret
 a84:	00100513          	li	a0,1
 a88:	00008067          	ret

00000a8c <neorv32_rte_setup>:
 a8c:	ff010113          	addi	sp,sp,-16
 a90:	00112623          	sw	ra,12(sp)
 a94:	00812423          	sw	s0,8(sp)
 a98:	00912223          	sw	s1,4(sp)
 a9c:	5e000793          	li	a5,1504
 aa0:	30579073          	csrw	mtvec,a5
 aa4:	00000413          	li	s0,0
 aa8:	01d00493          	li	s1,29
 aac:	00040513          	mv	a0,s0
 ab0:	00140413          	addi	s0,s0,1
 ab4:	0ff47413          	andi	s0,s0,255
 ab8:	fa1ff0ef          	jal	ra,a58 <neorv32_rte_exception_uninstall>
 abc:	fe9418e3          	bne	s0,s1,aac <neorv32_rte_setup+0x20>
 ac0:	00c12083          	lw	ra,12(sp)
 ac4:	00812403          	lw	s0,8(sp)
 ac8:	00412483          	lw	s1,4(sp)
 acc:	01010113          	addi	sp,sp,16
 ad0:	00008067          	ret

00000ad4 <__divsi3>:
 ad4:	06054063          	bltz	a0,b34 <__umodsi3+0x10>
 ad8:	0605c663          	bltz	a1,b44 <__umodsi3+0x20>

00000adc <__udivsi3>:
 adc:	00058613          	mv	a2,a1
 ae0:	00050593          	mv	a1,a0
 ae4:	fff00513          	li	a0,-1
 ae8:	02060c63          	beqz	a2,b20 <__udivsi3+0x44>
 aec:	00100693          	li	a3,1
 af0:	00b67a63          	bgeu	a2,a1,b04 <__udivsi3+0x28>
 af4:	00c05863          	blez	a2,b04 <__udivsi3+0x28>
 af8:	00161613          	slli	a2,a2,0x1
 afc:	00169693          	slli	a3,a3,0x1
 b00:	feb66ae3          	bltu	a2,a1,af4 <__udivsi3+0x18>
 b04:	00000513          	li	a0,0
 b08:	00c5e663          	bltu	a1,a2,b14 <__udivsi3+0x38>
 b0c:	40c585b3          	sub	a1,a1,a2
 b10:	00d56533          	or	a0,a0,a3
 b14:	0016d693          	srli	a3,a3,0x1
 b18:	00165613          	srli	a2,a2,0x1
 b1c:	fe0696e3          	bnez	a3,b08 <__udivsi3+0x2c>
 b20:	00008067          	ret

00000b24 <__umodsi3>:
 b24:	00008293          	mv	t0,ra
 b28:	fb5ff0ef          	jal	ra,adc <__udivsi3>
 b2c:	00058513          	mv	a0,a1
 b30:	00028067          	jr	t0
 b34:	40a00533          	neg	a0,a0
 b38:	00b04863          	bgtz	a1,b48 <__umodsi3+0x24>
 b3c:	40b005b3          	neg	a1,a1
 b40:	f9dff06f          	j	adc <__udivsi3>
 b44:	40b005b3          	neg	a1,a1
 b48:	00008293          	mv	t0,ra
 b4c:	f91ff0ef          	jal	ra,adc <__udivsi3>
 b50:	40a00533          	neg	a0,a0
 b54:	00028067          	jr	t0

00000b58 <__modsi3>:
 b58:	00008293          	mv	t0,ra
 b5c:	0005ca63          	bltz	a1,b70 <__modsi3+0x18>
 b60:	00054c63          	bltz	a0,b78 <__modsi3+0x20>
 b64:	f79ff0ef          	jal	ra,adc <__udivsi3>
 b68:	00058513          	mv	a0,a1
 b6c:	00028067          	jr	t0
 b70:	40b005b3          	neg	a1,a1
 b74:	fe0558e3          	bgez	a0,b64 <__modsi3+0xc>
 b78:	40a00533          	neg	a0,a0
 b7c:	f61ff0ef          	jal	ra,adc <__udivsi3>
 b80:	40b00533          	neg	a0,a1
 b84:	00028067          	jr	t0
