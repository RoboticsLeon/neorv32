
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
  e0:	f0458593          	addi	a1,a1,-252 # fe0 <__crt0_copy_data_src_begin>
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
 184:	ff010113          	addi	sp,sp,-16
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3b20>
 194:	00112623          	sw	ra,12(sp)
 198:	19c000ef          	jal	ra,334 <neorv32_uart0_setup>
 19c:	101000ef          	jal	ra,a9c <neorv32_rte_setup>
 1a0:	00000513          	li	a0,0
 1a4:	141000ef          	jal	ra,ae4 <neorv32_rte_check_isa>
 1a8:	fe402783          	lw	a5,-28(zero) # ffffffe4 <__ctr0_io_space_begin+0x1e4>
 1ac:	0207f793          	andi	a5,a5,32
 1b0:	02079063          	bnez	a5,1d0 <main+0x50>
 1b4:	00001537          	lui	a0,0x1
 1b8:	bf850513          	addi	a0,a0,-1032 # bf8 <__etext>
 1bc:	23c000ef          	jal	ra,3f8 <neorv32_uart0_print>
 1c0:	00c12083          	lw	ra,12(sp)
 1c4:	00100513          	li	a0,1
 1c8:	01010113          	addi	sp,sp,16
 1cc:	00008067          	ret
 1d0:	00001537          	lui	a0,0x1
 1d4:	c2450513          	addi	a0,a0,-988 # c24 <__etext+0x2c>
 1d8:	278000ef          	jal	ra,450 <neorv32_uart0_printf>
 1dc:	fe5ff06f          	j	1c0 <main+0x40>

000001e0 <__neorv32_uart_itoa>:
 1e0:	fd010113          	addi	sp,sp,-48
 1e4:	02812423          	sw	s0,40(sp)
 1e8:	02912223          	sw	s1,36(sp)
 1ec:	03212023          	sw	s2,32(sp)
 1f0:	01312e23          	sw	s3,28(sp)
 1f4:	01412c23          	sw	s4,24(sp)
 1f8:	02112623          	sw	ra,44(sp)
 1fc:	01512a23          	sw	s5,20(sp)
 200:	00001a37          	lui	s4,0x1
 204:	00050493          	mv	s1,a0
 208:	00058413          	mv	s0,a1
 20c:	00058523          	sb	zero,10(a1)
 210:	00000993          	li	s3,0
 214:	00410913          	addi	s2,sp,4
 218:	c90a0a13          	addi	s4,s4,-880 # c90 <numbers.1>
 21c:	00a00593          	li	a1,10
 220:	00048513          	mv	a0,s1
 224:	171000ef          	jal	ra,b94 <__umodsi3>
 228:	00aa0533          	add	a0,s4,a0
 22c:	00054783          	lbu	a5,0(a0)
 230:	01390ab3          	add	s5,s2,s3
 234:	00048513          	mv	a0,s1
 238:	00fa8023          	sb	a5,0(s5)
 23c:	00a00593          	li	a1,10
 240:	10d000ef          	jal	ra,b4c <__udivsi3>
 244:	00198993          	addi	s3,s3,1
 248:	00a00793          	li	a5,10
 24c:	00050493          	mv	s1,a0
 250:	fcf996e3          	bne	s3,a5,21c <__neorv32_uart_itoa+0x3c>
 254:	00090693          	mv	a3,s2
 258:	00900713          	li	a4,9
 25c:	03000613          	li	a2,48
 260:	0096c583          	lbu	a1,9(a3)
 264:	00070793          	mv	a5,a4
 268:	fff70713          	addi	a4,a4,-1
 26c:	01071713          	slli	a4,a4,0x10
 270:	01075713          	srli	a4,a4,0x10
 274:	00c59a63          	bne	a1,a2,288 <__neorv32_uart_itoa+0xa8>
 278:	000684a3          	sb	zero,9(a3)
 27c:	fff68693          	addi	a3,a3,-1
 280:	fe0710e3          	bnez	a4,260 <__neorv32_uart_itoa+0x80>
 284:	00000793          	li	a5,0
 288:	00f907b3          	add	a5,s2,a5
 28c:	00000593          	li	a1,0
 290:	0007c703          	lbu	a4,0(a5)
 294:	00070c63          	beqz	a4,2ac <__neorv32_uart_itoa+0xcc>
 298:	00158693          	addi	a3,a1,1
 29c:	00b405b3          	add	a1,s0,a1
 2a0:	00e58023          	sb	a4,0(a1)
 2a4:	01069593          	slli	a1,a3,0x10
 2a8:	0105d593          	srli	a1,a1,0x10
 2ac:	fff78713          	addi	a4,a5,-1
 2b0:	02f91863          	bne	s2,a5,2e0 <__neorv32_uart_itoa+0x100>
 2b4:	00b40433          	add	s0,s0,a1
 2b8:	00040023          	sb	zero,0(s0)
 2bc:	02c12083          	lw	ra,44(sp)
 2c0:	02812403          	lw	s0,40(sp)
 2c4:	02412483          	lw	s1,36(sp)
 2c8:	02012903          	lw	s2,32(sp)
 2cc:	01c12983          	lw	s3,28(sp)
 2d0:	01812a03          	lw	s4,24(sp)
 2d4:	01412a83          	lw	s5,20(sp)
 2d8:	03010113          	addi	sp,sp,48
 2dc:	00008067          	ret
 2e0:	00070793          	mv	a5,a4
 2e4:	fadff06f          	j	290 <__neorv32_uart_itoa+0xb0>

000002e8 <__neorv32_uart_tohex>:
 2e8:	00001637          	lui	a2,0x1
 2ec:	00758693          	addi	a3,a1,7
 2f0:	00000713          	li	a4,0
 2f4:	c9c60613          	addi	a2,a2,-868 # c9c <symbols.0>
 2f8:	02000813          	li	a6,32
 2fc:	00e557b3          	srl	a5,a0,a4
 300:	00f7f793          	andi	a5,a5,15
 304:	00f607b3          	add	a5,a2,a5
 308:	0007c783          	lbu	a5,0(a5)
 30c:	00470713          	addi	a4,a4,4
 310:	fff68693          	addi	a3,a3,-1
 314:	00f680a3          	sb	a5,1(a3)
 318:	ff0712e3          	bne	a4,a6,2fc <__neorv32_uart_tohex+0x14>
 31c:	00058423          	sb	zero,8(a1)
 320:	00008067          	ret

00000324 <neorv32_uart0_available>:
 324:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 328:	01255513          	srli	a0,a0,0x12
 32c:	00157513          	andi	a0,a0,1
 330:	00008067          	ret

00000334 <neorv32_uart0_setup>:
 334:	ff010113          	addi	sp,sp,-16
 338:	00812423          	sw	s0,8(sp)
 33c:	00912223          	sw	s1,4(sp)
 340:	00112623          	sw	ra,12(sp)
 344:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 348:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 34c:	00058413          	mv	s0,a1
 350:	00151593          	slli	a1,a0,0x1
 354:	00078513          	mv	a0,a5
 358:	00060493          	mv	s1,a2
 35c:	7f0000ef          	jal	ra,b4c <__udivsi3>
 360:	01051513          	slli	a0,a0,0x10
 364:	000017b7          	lui	a5,0x1
 368:	01055513          	srli	a0,a0,0x10
 36c:	00000713          	li	a4,0
 370:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x1e>
 374:	04a7e463          	bltu	a5,a0,3bc <neorv32_uart0_setup+0x88>
 378:	0034f793          	andi	a5,s1,3
 37c:	00347413          	andi	s0,s0,3
 380:	fff50513          	addi	a0,a0,-1
 384:	01479793          	slli	a5,a5,0x14
 388:	01641413          	slli	s0,s0,0x16
 38c:	00f567b3          	or	a5,a0,a5
 390:	0087e7b3          	or	a5,a5,s0
 394:	01871713          	slli	a4,a4,0x18
 398:	00c12083          	lw	ra,12(sp)
 39c:	00812403          	lw	s0,8(sp)
 3a0:	00e7e7b3          	or	a5,a5,a4
 3a4:	10000737          	lui	a4,0x10000
 3a8:	00e7e7b3          	or	a5,a5,a4
 3ac:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3b0:	00412483          	lw	s1,4(sp)
 3b4:	01010113          	addi	sp,sp,16
 3b8:	00008067          	ret
 3bc:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff01e>
 3c0:	0fd6f693          	andi	a3,a3,253
 3c4:	00069a63          	bnez	a3,3d8 <neorv32_uart0_setup+0xa4>
 3c8:	00355513          	srli	a0,a0,0x3
 3cc:	00170713          	addi	a4,a4,1
 3d0:	0ff77713          	andi	a4,a4,255
 3d4:	fa1ff06f          	j	374 <neorv32_uart0_setup+0x40>
 3d8:	00155513          	srli	a0,a0,0x1
 3dc:	ff1ff06f          	j	3cc <neorv32_uart0_setup+0x98>

000003e0 <neorv32_uart0_putc>:
 3e0:	00040737          	lui	a4,0x40
 3e4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3e8:	00e7f7b3          	and	a5,a5,a4
 3ec:	fe079ce3          	bnez	a5,3e4 <neorv32_uart0_putc+0x4>
 3f0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 3f4:	00008067          	ret

000003f8 <neorv32_uart0_print>:
 3f8:	ff010113          	addi	sp,sp,-16
 3fc:	00812423          	sw	s0,8(sp)
 400:	01212023          	sw	s2,0(sp)
 404:	00112623          	sw	ra,12(sp)
 408:	00912223          	sw	s1,4(sp)
 40c:	00050413          	mv	s0,a0
 410:	00a00913          	li	s2,10
 414:	00044483          	lbu	s1,0(s0)
 418:	00140413          	addi	s0,s0,1
 41c:	00049e63          	bnez	s1,438 <neorv32_uart0_print+0x40>
 420:	00c12083          	lw	ra,12(sp)
 424:	00812403          	lw	s0,8(sp)
 428:	00412483          	lw	s1,4(sp)
 42c:	00012903          	lw	s2,0(sp)
 430:	01010113          	addi	sp,sp,16
 434:	00008067          	ret
 438:	01249663          	bne	s1,s2,444 <neorv32_uart0_print+0x4c>
 43c:	00d00513          	li	a0,13
 440:	fa1ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 444:	00048513          	mv	a0,s1
 448:	f99ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 44c:	fc9ff06f          	j	414 <neorv32_uart0_print+0x1c>

00000450 <neorv32_uart0_printf>:
 450:	fa010113          	addi	sp,sp,-96
 454:	04f12a23          	sw	a5,84(sp)
 458:	04410793          	addi	a5,sp,68
 45c:	02812c23          	sw	s0,56(sp)
 460:	03212823          	sw	s2,48(sp)
 464:	03412423          	sw	s4,40(sp)
 468:	03512223          	sw	s5,36(sp)
 46c:	03612023          	sw	s6,32(sp)
 470:	01712e23          	sw	s7,28(sp)
 474:	01812c23          	sw	s8,24(sp)
 478:	01912a23          	sw	s9,20(sp)
 47c:	02112e23          	sw	ra,60(sp)
 480:	02912a23          	sw	s1,52(sp)
 484:	03312623          	sw	s3,44(sp)
 488:	00050413          	mv	s0,a0
 48c:	04b12223          	sw	a1,68(sp)
 490:	04c12423          	sw	a2,72(sp)
 494:	04d12623          	sw	a3,76(sp)
 498:	04e12823          	sw	a4,80(sp)
 49c:	05012c23          	sw	a6,88(sp)
 4a0:	05112e23          	sw	a7,92(sp)
 4a4:	00f12023          	sw	a5,0(sp)
 4a8:	02500a13          	li	s4,37
 4ac:	00a00a93          	li	s5,10
 4b0:	07300913          	li	s2,115
 4b4:	07500b13          	li	s6,117
 4b8:	07800b93          	li	s7,120
 4bc:	06300c13          	li	s8,99
 4c0:	06900c93          	li	s9,105
 4c4:	00044483          	lbu	s1,0(s0)
 4c8:	02049c63          	bnez	s1,500 <neorv32_uart0_printf+0xb0>
 4cc:	03c12083          	lw	ra,60(sp)
 4d0:	03812403          	lw	s0,56(sp)
 4d4:	03412483          	lw	s1,52(sp)
 4d8:	03012903          	lw	s2,48(sp)
 4dc:	02c12983          	lw	s3,44(sp)
 4e0:	02812a03          	lw	s4,40(sp)
 4e4:	02412a83          	lw	s5,36(sp)
 4e8:	02012b03          	lw	s6,32(sp)
 4ec:	01c12b83          	lw	s7,28(sp)
 4f0:	01812c03          	lw	s8,24(sp)
 4f4:	01412c83          	lw	s9,20(sp)
 4f8:	06010113          	addi	sp,sp,96
 4fc:	00008067          	ret
 500:	0d449863          	bne	s1,s4,5d0 <neorv32_uart0_printf+0x180>
 504:	00240993          	addi	s3,s0,2
 508:	00144403          	lbu	s0,1(s0)
 50c:	05240263          	beq	s0,s2,550 <neorv32_uart0_printf+0x100>
 510:	00896e63          	bltu	s2,s0,52c <neorv32_uart0_printf+0xdc>
 514:	05840c63          	beq	s0,s8,56c <neorv32_uart0_printf+0x11c>
 518:	07940663          	beq	s0,s9,584 <neorv32_uart0_printf+0x134>
 51c:	02500513          	li	a0,37
 520:	ec1ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 524:	00040513          	mv	a0,s0
 528:	0540006f          	j	57c <neorv32_uart0_printf+0x12c>
 52c:	09640663          	beq	s0,s6,5b8 <neorv32_uart0_printf+0x168>
 530:	ff7416e3          	bne	s0,s7,51c <neorv32_uart0_printf+0xcc>
 534:	00012783          	lw	a5,0(sp)
 538:	00410593          	addi	a1,sp,4
 53c:	0007a503          	lw	a0,0(a5)
 540:	00478713          	addi	a4,a5,4
 544:	00e12023          	sw	a4,0(sp)
 548:	da1ff0ef          	jal	ra,2e8 <__neorv32_uart_tohex>
 54c:	0640006f          	j	5b0 <neorv32_uart0_printf+0x160>
 550:	00012783          	lw	a5,0(sp)
 554:	0007a503          	lw	a0,0(a5)
 558:	00478713          	addi	a4,a5,4
 55c:	00e12023          	sw	a4,0(sp)
 560:	e99ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 564:	00098413          	mv	s0,s3
 568:	f5dff06f          	j	4c4 <neorv32_uart0_printf+0x74>
 56c:	00012783          	lw	a5,0(sp)
 570:	0007c503          	lbu	a0,0(a5)
 574:	00478713          	addi	a4,a5,4
 578:	00e12023          	sw	a4,0(sp)
 57c:	e65ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 580:	fe5ff06f          	j	564 <neorv32_uart0_printf+0x114>
 584:	00012783          	lw	a5,0(sp)
 588:	0007a403          	lw	s0,0(a5)
 58c:	00478713          	addi	a4,a5,4
 590:	00e12023          	sw	a4,0(sp)
 594:	00045863          	bgez	s0,5a4 <neorv32_uart0_printf+0x154>
 598:	02d00513          	li	a0,45
 59c:	40800433          	neg	s0,s0
 5a0:	e41ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 5a4:	00410593          	addi	a1,sp,4
 5a8:	00040513          	mv	a0,s0
 5ac:	c35ff0ef          	jal	ra,1e0 <__neorv32_uart_itoa>
 5b0:	00410513          	addi	a0,sp,4
 5b4:	fadff06f          	j	560 <neorv32_uart0_printf+0x110>
 5b8:	00012783          	lw	a5,0(sp)
 5bc:	00410593          	addi	a1,sp,4
 5c0:	00478713          	addi	a4,a5,4
 5c4:	0007a503          	lw	a0,0(a5)
 5c8:	00e12023          	sw	a4,0(sp)
 5cc:	fe1ff06f          	j	5ac <neorv32_uart0_printf+0x15c>
 5d0:	01549663          	bne	s1,s5,5dc <neorv32_uart0_printf+0x18c>
 5d4:	00d00513          	li	a0,13
 5d8:	e09ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 5dc:	00140993          	addi	s3,s0,1
 5e0:	00048513          	mv	a0,s1
 5e4:	f99ff06f          	j	57c <neorv32_uart0_printf+0x12c>
 5e8:	0000                	unimp
 5ea:	0000                	unimp
 5ec:	0000                	unimp
 5ee:	0000                	unimp

000005f0 <__neorv32_rte_core>:
 5f0:	fc010113          	addi	sp,sp,-64
 5f4:	02112e23          	sw	ra,60(sp)
 5f8:	02512c23          	sw	t0,56(sp)
 5fc:	02612a23          	sw	t1,52(sp)
 600:	02712823          	sw	t2,48(sp)
 604:	02a12623          	sw	a0,44(sp)
 608:	02b12423          	sw	a1,40(sp)
 60c:	02c12223          	sw	a2,36(sp)
 610:	02d12023          	sw	a3,32(sp)
 614:	00e12e23          	sw	a4,28(sp)
 618:	00f12c23          	sw	a5,24(sp)
 61c:	01012a23          	sw	a6,20(sp)
 620:	01112823          	sw	a7,16(sp)
 624:	01c12623          	sw	t3,12(sp)
 628:	01d12423          	sw	t4,8(sp)
 62c:	01e12223          	sw	t5,4(sp)
 630:	01f12023          	sw	t6,0(sp)
 634:	34102773          	csrr	a4,mepc
 638:	34071073          	csrw	mscratch,a4
 63c:	342027f3          	csrr	a5,mcause
 640:	0807ca63          	bltz	a5,6d4 <__neorv32_rte_core+0xe4>
 644:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f020>
 648:	00300593          	li	a1,3
 64c:	0036f693          	andi	a3,a3,3
 650:	00270613          	addi	a2,a4,2
 654:	00b69463          	bne	a3,a1,65c <__neorv32_rte_core+0x6c>
 658:	00470613          	addi	a2,a4,4
 65c:	34161073          	csrw	mepc,a2
 660:	00b00713          	li	a4,11
 664:	04f77c63          	bgeu	a4,a5,6bc <__neorv32_rte_core+0xcc>
 668:	000017b7          	lui	a5,0x1
 66c:	87078793          	addi	a5,a5,-1936 # 870 <__neorv32_rte_debug_exc_handler>
 670:	000780e7          	jalr	a5
 674:	03c12083          	lw	ra,60(sp)
 678:	03812283          	lw	t0,56(sp)
 67c:	03412303          	lw	t1,52(sp)
 680:	03012383          	lw	t2,48(sp)
 684:	02c12503          	lw	a0,44(sp)
 688:	02812583          	lw	a1,40(sp)
 68c:	02412603          	lw	a2,36(sp)
 690:	02012683          	lw	a3,32(sp)
 694:	01c12703          	lw	a4,28(sp)
 698:	01812783          	lw	a5,24(sp)
 69c:	01412803          	lw	a6,20(sp)
 6a0:	01012883          	lw	a7,16(sp)
 6a4:	00c12e03          	lw	t3,12(sp)
 6a8:	00812e83          	lw	t4,8(sp)
 6ac:	00412f03          	lw	t5,4(sp)
 6b0:	00012f83          	lw	t6,0(sp)
 6b4:	04010113          	addi	sp,sp,64
 6b8:	30200073          	mret
 6bc:	00001737          	lui	a4,0x1
 6c0:	00279793          	slli	a5,a5,0x2
 6c4:	cb070713          	addi	a4,a4,-848 # cb0 <symbols.0+0x14>
 6c8:	00e787b3          	add	a5,a5,a4
 6cc:	0007a783          	lw	a5,0(a5)
 6d0:	00078067          	jr	a5
 6d4:	80000737          	lui	a4,0x80000
 6d8:	ffd74713          	xori	a4,a4,-3
 6dc:	00e787b3          	add	a5,a5,a4
 6e0:	01c00713          	li	a4,28
 6e4:	f8f762e3          	bltu	a4,a5,668 <__neorv32_rte_core+0x78>
 6e8:	00001737          	lui	a4,0x1
 6ec:	00279793          	slli	a5,a5,0x2
 6f0:	ce070713          	addi	a4,a4,-800 # ce0 <symbols.0+0x44>
 6f4:	00e787b3          	add	a5,a5,a4
 6f8:	0007a783          	lw	a5,0(a5)
 6fc:	00078067          	jr	a5
 700:	800007b7          	lui	a5,0x80000
 704:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 708:	f69ff06f          	j	670 <__neorv32_rte_core+0x80>
 70c:	800007b7          	lui	a5,0x80000
 710:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 714:	f5dff06f          	j	670 <__neorv32_rte_core+0x80>
 718:	800007b7          	lui	a5,0x80000
 71c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 720:	f51ff06f          	j	670 <__neorv32_rte_core+0x80>
 724:	800007b7          	lui	a5,0x80000
 728:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 72c:	f45ff06f          	j	670 <__neorv32_rte_core+0x80>
 730:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 734:	f3dff06f          	j	670 <__neorv32_rte_core+0x80>
 738:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 73c:	f35ff06f          	j	670 <__neorv32_rte_core+0x80>
 740:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 744:	f2dff06f          	j	670 <__neorv32_rte_core+0x80>
 748:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 74c:	f25ff06f          	j	670 <__neorv32_rte_core+0x80>
 750:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 754:	f1dff06f          	j	670 <__neorv32_rte_core+0x80>
 758:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 75c:	f15ff06f          	j	670 <__neorv32_rte_core+0x80>
 760:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 764:	f0dff06f          	j	670 <__neorv32_rte_core+0x80>
 768:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 76c:	f05ff06f          	j	670 <__neorv32_rte_core+0x80>
 770:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 774:	efdff06f          	j	670 <__neorv32_rte_core+0x80>
 778:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 77c:	ef5ff06f          	j	670 <__neorv32_rte_core+0x80>
 780:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 784:	eedff06f          	j	670 <__neorv32_rte_core+0x80>
 788:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 78c:	ee5ff06f          	j	670 <__neorv32_rte_core+0x80>
 790:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 794:	eddff06f          	j	670 <__neorv32_rte_core+0x80>
 798:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 79c:	ed5ff06f          	j	670 <__neorv32_rte_core+0x80>
 7a0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 7a4:	ecdff06f          	j	670 <__neorv32_rte_core+0x80>
 7a8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 7ac:	ec5ff06f          	j	670 <__neorv32_rte_core+0x80>
 7b0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 7b4:	ebdff06f          	j	670 <__neorv32_rte_core+0x80>
 7b8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 7bc:	eb5ff06f          	j	670 <__neorv32_rte_core+0x80>
 7c0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 7c4:	eadff06f          	j	670 <__neorv32_rte_core+0x80>
 7c8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 7cc:	ea5ff06f          	j	670 <__neorv32_rte_core+0x80>
 7d0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 7d4:	e9dff06f          	j	670 <__neorv32_rte_core+0x80>
 7d8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 7dc:	e95ff06f          	j	670 <__neorv32_rte_core+0x80>
 7e0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 7e4:	e8dff06f          	j	670 <__neorv32_rte_core+0x80>
 7e8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 7ec:	e85ff06f          	j	670 <__neorv32_rte_core+0x80>
 7f0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 7f4:	e7dff06f          	j	670 <__neorv32_rte_core+0x80>
 7f8:	0000                	unimp
 7fa:	0000                	unimp
 7fc:	0000                	unimp
 7fe:	0000                	unimp

00000800 <__neorv32_rte_print_hex_word>:
 800:	fe010113          	addi	sp,sp,-32
 804:	01212823          	sw	s2,16(sp)
 808:	00050913          	mv	s2,a0
 80c:	00001537          	lui	a0,0x1
 810:	00912a23          	sw	s1,20(sp)
 814:	d5450513          	addi	a0,a0,-684 # d54 <symbols.0+0xb8>
 818:	000014b7          	lui	s1,0x1
 81c:	00812c23          	sw	s0,24(sp)
 820:	01312623          	sw	s3,12(sp)
 824:	00112e23          	sw	ra,28(sp)
 828:	01c00413          	li	s0,28
 82c:	bcdff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 830:	fd048493          	addi	s1,s1,-48 # fd0 <hex_symbols.0>
 834:	ffc00993          	li	s3,-4
 838:	008957b3          	srl	a5,s2,s0
 83c:	00f7f793          	andi	a5,a5,15
 840:	00f487b3          	add	a5,s1,a5
 844:	0007c503          	lbu	a0,0(a5)
 848:	ffc40413          	addi	s0,s0,-4
 84c:	b95ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 850:	ff3414e3          	bne	s0,s3,838 <__neorv32_rte_print_hex_word+0x38>
 854:	01c12083          	lw	ra,28(sp)
 858:	01812403          	lw	s0,24(sp)
 85c:	01412483          	lw	s1,20(sp)
 860:	01012903          	lw	s2,16(sp)
 864:	00c12983          	lw	s3,12(sp)
 868:	02010113          	addi	sp,sp,32
 86c:	00008067          	ret

00000870 <__neorv32_rte_debug_exc_handler>:
 870:	ff010113          	addi	sp,sp,-16
 874:	00112623          	sw	ra,12(sp)
 878:	00812423          	sw	s0,8(sp)
 87c:	00912223          	sw	s1,4(sp)
 880:	aa5ff0ef          	jal	ra,324 <neorv32_uart0_available>
 884:	1c050863          	beqz	a0,a54 <__neorv32_rte_debug_exc_handler+0x1e4>
 888:	00001537          	lui	a0,0x1
 88c:	d5850513          	addi	a0,a0,-680 # d58 <symbols.0+0xbc>
 890:	b69ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 894:	34202473          	csrr	s0,mcause
 898:	00900713          	li	a4,9
 89c:	00f47793          	andi	a5,s0,15
 8a0:	03078493          	addi	s1,a5,48
 8a4:	00f77463          	bgeu	a4,a5,8ac <__neorv32_rte_debug_exc_handler+0x3c>
 8a8:	05778493          	addi	s1,a5,87
 8ac:	00b00793          	li	a5,11
 8b0:	0087ee63          	bltu	a5,s0,8cc <__neorv32_rte_debug_exc_handler+0x5c>
 8b4:	00001737          	lui	a4,0x1
 8b8:	00241793          	slli	a5,s0,0x2
 8bc:	f1870713          	addi	a4,a4,-232 # f18 <symbols.0+0x27c>
 8c0:	00e787b3          	add	a5,a5,a4
 8c4:	0007a783          	lw	a5,0(a5)
 8c8:	00078067          	jr	a5
 8cc:	800007b7          	lui	a5,0x80000
 8d0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 8d4:	14e40e63          	beq	s0,a4,a30 <__neorv32_rte_debug_exc_handler+0x1c0>
 8d8:	02876a63          	bltu	a4,s0,90c <__neorv32_rte_debug_exc_handler+0x9c>
 8dc:	00378713          	addi	a4,a5,3
 8e0:	12e40c63          	beq	s0,a4,a18 <__neorv32_rte_debug_exc_handler+0x1a8>
 8e4:	00778793          	addi	a5,a5,7
 8e8:	12f40e63          	beq	s0,a5,a24 <__neorv32_rte_debug_exc_handler+0x1b4>
 8ec:	00001537          	lui	a0,0x1
 8f0:	eb850513          	addi	a0,a0,-328 # eb8 <symbols.0+0x21c>
 8f4:	b05ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 8f8:	00040513          	mv	a0,s0
 8fc:	f05ff0ef          	jal	ra,800 <__neorv32_rte_print_hex_word>
 900:	00100793          	li	a5,1
 904:	08f40c63          	beq	s0,a5,99c <__neorv32_rte_debug_exc_handler+0x12c>
 908:	0280006f          	j	930 <__neorv32_rte_debug_exc_handler+0xc0>
 90c:	ff07c793          	xori	a5,a5,-16
 910:	00f407b3          	add	a5,s0,a5
 914:	00f00713          	li	a4,15
 918:	fcf76ae3          	bltu	a4,a5,8ec <__neorv32_rte_debug_exc_handler+0x7c>
 91c:	00001537          	lui	a0,0x1
 920:	ea850513          	addi	a0,a0,-344 # ea8 <symbols.0+0x20c>
 924:	ad5ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 928:	00048513          	mv	a0,s1
 92c:	ab5ff0ef          	jal	ra,3e0 <neorv32_uart0_putc>
 930:	ffd47413          	andi	s0,s0,-3
 934:	00500793          	li	a5,5
 938:	06f40263          	beq	s0,a5,99c <__neorv32_rte_debug_exc_handler+0x12c>
 93c:	00001537          	lui	a0,0x1
 940:	efc50513          	addi	a0,a0,-260 # efc <symbols.0+0x260>
 944:	ab5ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 948:	34002573          	csrr	a0,mscratch
 94c:	eb5ff0ef          	jal	ra,800 <__neorv32_rte_print_hex_word>
 950:	00001537          	lui	a0,0x1
 954:	f0450513          	addi	a0,a0,-252 # f04 <symbols.0+0x268>
 958:	aa1ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 95c:	34302573          	csrr	a0,mtval
 960:	ea1ff0ef          	jal	ra,800 <__neorv32_rte_print_hex_word>
 964:	00812403          	lw	s0,8(sp)
 968:	00c12083          	lw	ra,12(sp)
 96c:	00412483          	lw	s1,4(sp)
 970:	00001537          	lui	a0,0x1
 974:	f1050513          	addi	a0,a0,-240 # f10 <symbols.0+0x274>
 978:	01010113          	addi	sp,sp,16
 97c:	a7dff06f          	j	3f8 <neorv32_uart0_print>
 980:	00001537          	lui	a0,0x1
 984:	d6050513          	addi	a0,a0,-672 # d60 <symbols.0+0xc4>
 988:	a71ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 98c:	fb1ff06f          	j	93c <__neorv32_rte_debug_exc_handler+0xcc>
 990:	00001537          	lui	a0,0x1
 994:	d8050513          	addi	a0,a0,-640 # d80 <symbols.0+0xe4>
 998:	a61ff0ef          	jal	ra,3f8 <neorv32_uart0_print>
 99c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 9a0:	0a07d463          	bgez	a5,a48 <__neorv32_rte_debug_exc_handler+0x1d8>
 9a4:	0017f793          	andi	a5,a5,1
 9a8:	08078a63          	beqz	a5,a3c <__neorv32_rte_debug_exc_handler+0x1cc>
 9ac:	00001537          	lui	a0,0x1
 9b0:	ed050513          	addi	a0,a0,-304 # ed0 <symbols.0+0x234>
 9b4:	fd5ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 9b8:	00001537          	lui	a0,0x1
 9bc:	d9c50513          	addi	a0,a0,-612 # d9c <symbols.0+0x100>
 9c0:	fc9ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 9c4:	00001537          	lui	a0,0x1
 9c8:	db050513          	addi	a0,a0,-592 # db0 <symbols.0+0x114>
 9cc:	fbdff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 9d0:	00001537          	lui	a0,0x1
 9d4:	dbc50513          	addi	a0,a0,-580 # dbc <symbols.0+0x120>
 9d8:	fb1ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 9dc:	00001537          	lui	a0,0x1
 9e0:	dd450513          	addi	a0,a0,-556 # dd4 <symbols.0+0x138>
 9e4:	fb5ff06f          	j	998 <__neorv32_rte_debug_exc_handler+0x128>
 9e8:	00001537          	lui	a0,0x1
 9ec:	de850513          	addi	a0,a0,-536 # de8 <symbols.0+0x14c>
 9f0:	f99ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 9f4:	00001537          	lui	a0,0x1
 9f8:	e0450513          	addi	a0,a0,-508 # e04 <symbols.0+0x168>
 9fc:	f9dff06f          	j	998 <__neorv32_rte_debug_exc_handler+0x128>
 a00:	00001537          	lui	a0,0x1
 a04:	e1850513          	addi	a0,a0,-488 # e18 <symbols.0+0x17c>
 a08:	f81ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a0c:	00001537          	lui	a0,0x1
 a10:	e3850513          	addi	a0,a0,-456 # e38 <symbols.0+0x19c>
 a14:	f75ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a18:	00001537          	lui	a0,0x1
 a1c:	e5850513          	addi	a0,a0,-424 # e58 <symbols.0+0x1bc>
 a20:	f69ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a24:	00001537          	lui	a0,0x1
 a28:	e7450513          	addi	a0,a0,-396 # e74 <symbols.0+0x1d8>
 a2c:	f5dff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a30:	00001537          	lui	a0,0x1
 a34:	e8c50513          	addi	a0,a0,-372 # e8c <symbols.0+0x1f0>
 a38:	f51ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a3c:	00001537          	lui	a0,0x1
 a40:	ee050513          	addi	a0,a0,-288 # ee0 <symbols.0+0x244>
 a44:	f45ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a48:	00001537          	lui	a0,0x1
 a4c:	ef050513          	addi	a0,a0,-272 # ef0 <symbols.0+0x254>
 a50:	f39ff06f          	j	988 <__neorv32_rte_debug_exc_handler+0x118>
 a54:	00c12083          	lw	ra,12(sp)
 a58:	00812403          	lw	s0,8(sp)
 a5c:	00412483          	lw	s1,4(sp)
 a60:	01010113          	addi	sp,sp,16
 a64:	00008067          	ret

00000a68 <neorv32_rte_exception_uninstall>:
 a68:	01f00793          	li	a5,31
 a6c:	02a7e463          	bltu	a5,a0,a94 <neorv32_rte_exception_uninstall+0x2c>
 a70:	800007b7          	lui	a5,0x80000
 a74:	00078793          	mv	a5,a5
 a78:	00251513          	slli	a0,a0,0x2
 a7c:	00a78533          	add	a0,a5,a0
 a80:	000017b7          	lui	a5,0x1
 a84:	87078793          	addi	a5,a5,-1936 # 870 <__neorv32_rte_debug_exc_handler>
 a88:	00f52023          	sw	a5,0(a0)
 a8c:	00000513          	li	a0,0
 a90:	00008067          	ret
 a94:	00100513          	li	a0,1
 a98:	00008067          	ret

00000a9c <neorv32_rte_setup>:
 a9c:	ff010113          	addi	sp,sp,-16
 aa0:	00112623          	sw	ra,12(sp)
 aa4:	00812423          	sw	s0,8(sp)
 aa8:	00912223          	sw	s1,4(sp)
 aac:	5f000793          	li	a5,1520
 ab0:	30579073          	csrw	mtvec,a5
 ab4:	00000413          	li	s0,0
 ab8:	01d00493          	li	s1,29
 abc:	00040513          	mv	a0,s0
 ac0:	00140413          	addi	s0,s0,1
 ac4:	0ff47413          	andi	s0,s0,255
 ac8:	fa1ff0ef          	jal	ra,a68 <neorv32_rte_exception_uninstall>
 acc:	fe9418e3          	bne	s0,s1,abc <neorv32_rte_setup+0x20>
 ad0:	00c12083          	lw	ra,12(sp)
 ad4:	00812403          	lw	s0,8(sp)
 ad8:	00412483          	lw	s1,4(sp)
 adc:	01010113          	addi	sp,sp,16
 ae0:	00008067          	ret

00000ae4 <neorv32_rte_check_isa>:
 ae4:	30102673          	csrr	a2,misa
 ae8:	400007b7          	lui	a5,0x40000
 aec:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3ffff120>
 af0:	00f67733          	and	a4,a2,a5
 af4:	04f70463          	beq	a4,a5,b3c <neorv32_rte_check_isa+0x58>
 af8:	fe010113          	addi	sp,sp,-32
 afc:	00112e23          	sw	ra,28(sp)
 b00:	02051463          	bnez	a0,b28 <neorv32_rte_check_isa+0x44>
 b04:	400005b7          	lui	a1,0x40000
 b08:	00001537          	lui	a0,0x1
 b0c:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3ffff120>
 b10:	f4850513          	addi	a0,a0,-184 # f48 <symbols.0+0x2ac>
 b14:	93dff0ef          	jal	ra,450 <neorv32_uart0_printf>
 b18:	01c12083          	lw	ra,28(sp)
 b1c:	00100513          	li	a0,1
 b20:	02010113          	addi	sp,sp,32
 b24:	00008067          	ret
 b28:	00c12623          	sw	a2,12(sp)
 b2c:	ff8ff0ef          	jal	ra,324 <neorv32_uart0_available>
 b30:	00c12603          	lw	a2,12(sp)
 b34:	fc0508e3          	beqz	a0,b04 <neorv32_rte_check_isa+0x20>
 b38:	fe1ff06f          	j	b18 <neorv32_rte_check_isa+0x34>
 b3c:	00000513          	li	a0,0
 b40:	00008067          	ret

00000b44 <__divsi3>:
 b44:	06054063          	bltz	a0,ba4 <__umodsi3+0x10>
 b48:	0605c663          	bltz	a1,bb4 <__umodsi3+0x20>

00000b4c <__udivsi3>:
 b4c:	00058613          	mv	a2,a1
 b50:	00050593          	mv	a1,a0
 b54:	fff00513          	li	a0,-1
 b58:	02060c63          	beqz	a2,b90 <__udivsi3+0x44>
 b5c:	00100693          	li	a3,1
 b60:	00b67a63          	bgeu	a2,a1,b74 <__udivsi3+0x28>
 b64:	00c05863          	blez	a2,b74 <__udivsi3+0x28>
 b68:	00161613          	slli	a2,a2,0x1
 b6c:	00169693          	slli	a3,a3,0x1
 b70:	feb66ae3          	bltu	a2,a1,b64 <__udivsi3+0x18>
 b74:	00000513          	li	a0,0
 b78:	00c5e663          	bltu	a1,a2,b84 <__udivsi3+0x38>
 b7c:	40c585b3          	sub	a1,a1,a2
 b80:	00d56533          	or	a0,a0,a3
 b84:	0016d693          	srli	a3,a3,0x1
 b88:	00165613          	srli	a2,a2,0x1
 b8c:	fe0696e3          	bnez	a3,b78 <__udivsi3+0x2c>
 b90:	00008067          	ret

00000b94 <__umodsi3>:
 b94:	00008293          	mv	t0,ra
 b98:	fb5ff0ef          	jal	ra,b4c <__udivsi3>
 b9c:	00058513          	mv	a0,a1
 ba0:	00028067          	jr	t0
 ba4:	40a00533          	neg	a0,a0
 ba8:	00b04863          	bgtz	a1,bb8 <__umodsi3+0x24>
 bac:	40b005b3          	neg	a1,a1
 bb0:	f9dff06f          	j	b4c <__udivsi3>
 bb4:	40b005b3          	neg	a1,a1
 bb8:	00008293          	mv	t0,ra
 bbc:	f91ff0ef          	jal	ra,b4c <__udivsi3>
 bc0:	40a00533          	neg	a0,a0
 bc4:	00028067          	jr	t0

00000bc8 <__modsi3>:
 bc8:	00008293          	mv	t0,ra
 bcc:	0005ca63          	bltz	a1,be0 <__modsi3+0x18>
 bd0:	00054c63          	bltz	a0,be8 <__modsi3+0x20>
 bd4:	f79ff0ef          	jal	ra,b4c <__udivsi3>
 bd8:	00058513          	mv	a0,a1
 bdc:	00028067          	jr	t0
 be0:	40b005b3          	neg	a1,a1
 be4:	fe0558e3          	bgez	a0,bd4 <__modsi3+0xc>
 be8:	40a00533          	neg	a0,a0
 bec:	f61ff0ef          	jal	ra,b4c <__udivsi3>
 bf0:	40b00533          	neg	a0,a1
 bf4:	00028067          	jr	t0
