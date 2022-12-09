
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
  e0:	56458593          	addi	a1,a1,1380 # 1640 <__crt0_copy_data_src_begin>
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
 188:	0f5000ef          	jal	ra,a7c <neorv32_rte_setup>
 18c:	00005537          	lui	a0,0x5
 190:	00000613          	li	a2,0
 194:	00000593          	li	a1,0
 198:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x34c0>
 19c:	180000ef          	jal	ra,31c <neorv32_uart0_setup>
 1a0:	00000513          	li	a0,0
 1a4:	21d000ef          	jal	ra,bc0 <neorv32_rte_check_isa>
 1a8:	11d000ef          	jal	ra,ac4 <neorv32_rte_print_logo>
 1ac:	00001537          	lui	a0,0x1
 1b0:	dfc50513          	addi	a0,a0,-516 # dfc <__etext>
 1b4:	22c000ef          	jal	ra,3e0 <neorv32_uart0_print>
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00000513          	li	a0,0
 1c0:	01010113          	addi	sp,sp,16
 1c4:	00008067          	ret

000001c8 <__neorv32_uart_itoa>:
 1c8:	fd010113          	addi	sp,sp,-48
 1cc:	02812423          	sw	s0,40(sp)
 1d0:	02912223          	sw	s1,36(sp)
 1d4:	03212023          	sw	s2,32(sp)
 1d8:	01312e23          	sw	s3,28(sp)
 1dc:	01412c23          	sw	s4,24(sp)
 1e0:	02112623          	sw	ra,44(sp)
 1e4:	01512a23          	sw	s5,20(sp)
 1e8:	00001a37          	lui	s4,0x1
 1ec:	00050493          	mv	s1,a0
 1f0:	00058413          	mv	s0,a1
 1f4:	00058523          	sb	zero,10(a1)
 1f8:	00000993          	li	s3,0
 1fc:	00410913          	addi	s2,sp,4
 200:	e10a0a13          	addi	s4,s4,-496 # e10 <numbers.1>
 204:	00a00593          	li	a1,10
 208:	00048513          	mv	a0,s1
 20c:	265000ef          	jal	ra,c70 <__umodsi3>
 210:	00aa0533          	add	a0,s4,a0
 214:	00054783          	lbu	a5,0(a0)
 218:	01390ab3          	add	s5,s2,s3
 21c:	00048513          	mv	a0,s1
 220:	00fa8023          	sb	a5,0(s5)
 224:	00a00593          	li	a1,10
 228:	201000ef          	jal	ra,c28 <__udivsi3>
 22c:	00198993          	addi	s3,s3,1
 230:	00a00793          	li	a5,10
 234:	00050493          	mv	s1,a0
 238:	fcf996e3          	bne	s3,a5,204 <__neorv32_uart_itoa+0x3c>
 23c:	00090693          	mv	a3,s2
 240:	00900713          	li	a4,9
 244:	03000613          	li	a2,48
 248:	0096c583          	lbu	a1,9(a3)
 24c:	00070793          	mv	a5,a4
 250:	fff70713          	addi	a4,a4,-1
 254:	01071713          	slli	a4,a4,0x10
 258:	01075713          	srli	a4,a4,0x10
 25c:	00c59a63          	bne	a1,a2,270 <__neorv32_uart_itoa+0xa8>
 260:	000684a3          	sb	zero,9(a3)
 264:	fff68693          	addi	a3,a3,-1
 268:	fe0710e3          	bnez	a4,248 <__neorv32_uart_itoa+0x80>
 26c:	00000793          	li	a5,0
 270:	00f907b3          	add	a5,s2,a5
 274:	00000593          	li	a1,0
 278:	0007c703          	lbu	a4,0(a5)
 27c:	00070c63          	beqz	a4,294 <__neorv32_uart_itoa+0xcc>
 280:	00158693          	addi	a3,a1,1
 284:	00b405b3          	add	a1,s0,a1
 288:	00e58023          	sb	a4,0(a1)
 28c:	01069593          	slli	a1,a3,0x10
 290:	0105d593          	srli	a1,a1,0x10
 294:	fff78713          	addi	a4,a5,-1
 298:	02f91863          	bne	s2,a5,2c8 <__neorv32_uart_itoa+0x100>
 29c:	00b40433          	add	s0,s0,a1
 2a0:	00040023          	sb	zero,0(s0)
 2a4:	02c12083          	lw	ra,44(sp)
 2a8:	02812403          	lw	s0,40(sp)
 2ac:	02412483          	lw	s1,36(sp)
 2b0:	02012903          	lw	s2,32(sp)
 2b4:	01c12983          	lw	s3,28(sp)
 2b8:	01812a03          	lw	s4,24(sp)
 2bc:	01412a83          	lw	s5,20(sp)
 2c0:	03010113          	addi	sp,sp,48
 2c4:	00008067          	ret
 2c8:	00070793          	mv	a5,a4
 2cc:	fadff06f          	j	278 <__neorv32_uart_itoa+0xb0>

000002d0 <__neorv32_uart_tohex>:
 2d0:	00001637          	lui	a2,0x1
 2d4:	00758693          	addi	a3,a1,7
 2d8:	00000713          	li	a4,0
 2dc:	e1c60613          	addi	a2,a2,-484 # e1c <symbols.0>
 2e0:	02000813          	li	a6,32
 2e4:	00e557b3          	srl	a5,a0,a4
 2e8:	00f7f793          	andi	a5,a5,15
 2ec:	00f607b3          	add	a5,a2,a5
 2f0:	0007c783          	lbu	a5,0(a5)
 2f4:	00470713          	addi	a4,a4,4
 2f8:	fff68693          	addi	a3,a3,-1
 2fc:	00f680a3          	sb	a5,1(a3)
 300:	ff0712e3          	bne	a4,a6,2e4 <__neorv32_uart_tohex+0x14>
 304:	00058423          	sb	zero,8(a1)
 308:	00008067          	ret

0000030c <neorv32_uart0_available>:
 30c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 310:	01255513          	srli	a0,a0,0x12
 314:	00157513          	andi	a0,a0,1
 318:	00008067          	ret

0000031c <neorv32_uart0_setup>:
 31c:	ff010113          	addi	sp,sp,-16
 320:	00812423          	sw	s0,8(sp)
 324:	00912223          	sw	s1,4(sp)
 328:	00112623          	sw	ra,12(sp)
 32c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 330:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 334:	00058413          	mv	s0,a1
 338:	00151593          	slli	a1,a0,0x1
 33c:	00078513          	mv	a0,a5
 340:	00060493          	mv	s1,a2
 344:	0e5000ef          	jal	ra,c28 <__udivsi3>
 348:	01051513          	slli	a0,a0,0x10
 34c:	000017b7          	lui	a5,0x1
 350:	01055513          	srli	a0,a0,0x10
 354:	00000713          	li	a4,0
 358:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x1e2>
 35c:	04a7e463          	bltu	a5,a0,3a4 <neorv32_uart0_setup+0x88>
 360:	0034f793          	andi	a5,s1,3
 364:	00347413          	andi	s0,s0,3
 368:	fff50513          	addi	a0,a0,-1
 36c:	01479793          	slli	a5,a5,0x14
 370:	01641413          	slli	s0,s0,0x16
 374:	00f567b3          	or	a5,a0,a5
 378:	0087e7b3          	or	a5,a5,s0
 37c:	01871713          	slli	a4,a4,0x18
 380:	00c12083          	lw	ra,12(sp)
 384:	00812403          	lw	s0,8(sp)
 388:	00e7e7b3          	or	a5,a5,a4
 38c:	10000737          	lui	a4,0x10000
 390:	00e7e7b3          	or	a5,a5,a4
 394:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 398:	00412483          	lw	s1,4(sp)
 39c:	01010113          	addi	sp,sp,16
 3a0:	00008067          	ret
 3a4:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe9be>
 3a8:	0fd6f693          	andi	a3,a3,253
 3ac:	00069a63          	bnez	a3,3c0 <neorv32_uart0_setup+0xa4>
 3b0:	00355513          	srli	a0,a0,0x3
 3b4:	00170713          	addi	a4,a4,1
 3b8:	0ff77713          	andi	a4,a4,255
 3bc:	fa1ff06f          	j	35c <neorv32_uart0_setup+0x40>
 3c0:	00155513          	srli	a0,a0,0x1
 3c4:	ff1ff06f          	j	3b4 <neorv32_uart0_setup+0x98>

000003c8 <neorv32_uart0_putc>:
 3c8:	00040737          	lui	a4,0x40
 3cc:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3d0:	00e7f7b3          	and	a5,a5,a4
 3d4:	fe079ce3          	bnez	a5,3cc <neorv32_uart0_putc+0x4>
 3d8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 3dc:	00008067          	ret

000003e0 <neorv32_uart0_print>:
 3e0:	ff010113          	addi	sp,sp,-16
 3e4:	00812423          	sw	s0,8(sp)
 3e8:	01212023          	sw	s2,0(sp)
 3ec:	00112623          	sw	ra,12(sp)
 3f0:	00912223          	sw	s1,4(sp)
 3f4:	00050413          	mv	s0,a0
 3f8:	00a00913          	li	s2,10
 3fc:	00044483          	lbu	s1,0(s0)
 400:	00140413          	addi	s0,s0,1
 404:	00049e63          	bnez	s1,420 <neorv32_uart0_print+0x40>
 408:	00c12083          	lw	ra,12(sp)
 40c:	00812403          	lw	s0,8(sp)
 410:	00412483          	lw	s1,4(sp)
 414:	00012903          	lw	s2,0(sp)
 418:	01010113          	addi	sp,sp,16
 41c:	00008067          	ret
 420:	01249663          	bne	s1,s2,42c <neorv32_uart0_print+0x4c>
 424:	00d00513          	li	a0,13
 428:	fa1ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 42c:	00048513          	mv	a0,s1
 430:	f99ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 434:	fc9ff06f          	j	3fc <neorv32_uart0_print+0x1c>

00000438 <neorv32_uart0_printf>:
 438:	fa010113          	addi	sp,sp,-96
 43c:	04f12a23          	sw	a5,84(sp)
 440:	04410793          	addi	a5,sp,68
 444:	02812c23          	sw	s0,56(sp)
 448:	03212823          	sw	s2,48(sp)
 44c:	03412423          	sw	s4,40(sp)
 450:	03512223          	sw	s5,36(sp)
 454:	03612023          	sw	s6,32(sp)
 458:	01712e23          	sw	s7,28(sp)
 45c:	01812c23          	sw	s8,24(sp)
 460:	01912a23          	sw	s9,20(sp)
 464:	02112e23          	sw	ra,60(sp)
 468:	02912a23          	sw	s1,52(sp)
 46c:	03312623          	sw	s3,44(sp)
 470:	00050413          	mv	s0,a0
 474:	04b12223          	sw	a1,68(sp)
 478:	04c12423          	sw	a2,72(sp)
 47c:	04d12623          	sw	a3,76(sp)
 480:	04e12823          	sw	a4,80(sp)
 484:	05012c23          	sw	a6,88(sp)
 488:	05112e23          	sw	a7,92(sp)
 48c:	00f12023          	sw	a5,0(sp)
 490:	02500a13          	li	s4,37
 494:	00a00a93          	li	s5,10
 498:	07300913          	li	s2,115
 49c:	07500b13          	li	s6,117
 4a0:	07800b93          	li	s7,120
 4a4:	06300c13          	li	s8,99
 4a8:	06900c93          	li	s9,105
 4ac:	00044483          	lbu	s1,0(s0)
 4b0:	02049c63          	bnez	s1,4e8 <neorv32_uart0_printf+0xb0>
 4b4:	03c12083          	lw	ra,60(sp)
 4b8:	03812403          	lw	s0,56(sp)
 4bc:	03412483          	lw	s1,52(sp)
 4c0:	03012903          	lw	s2,48(sp)
 4c4:	02c12983          	lw	s3,44(sp)
 4c8:	02812a03          	lw	s4,40(sp)
 4cc:	02412a83          	lw	s5,36(sp)
 4d0:	02012b03          	lw	s6,32(sp)
 4d4:	01c12b83          	lw	s7,28(sp)
 4d8:	01812c03          	lw	s8,24(sp)
 4dc:	01412c83          	lw	s9,20(sp)
 4e0:	06010113          	addi	sp,sp,96
 4e4:	00008067          	ret
 4e8:	0d449863          	bne	s1,s4,5b8 <neorv32_uart0_printf+0x180>
 4ec:	00240993          	addi	s3,s0,2
 4f0:	00144403          	lbu	s0,1(s0)
 4f4:	05240263          	beq	s0,s2,538 <neorv32_uart0_printf+0x100>
 4f8:	00896e63          	bltu	s2,s0,514 <neorv32_uart0_printf+0xdc>
 4fc:	05840c63          	beq	s0,s8,554 <neorv32_uart0_printf+0x11c>
 500:	07940663          	beq	s0,s9,56c <neorv32_uart0_printf+0x134>
 504:	02500513          	li	a0,37
 508:	ec1ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 50c:	00040513          	mv	a0,s0
 510:	0540006f          	j	564 <neorv32_uart0_printf+0x12c>
 514:	09640663          	beq	s0,s6,5a0 <neorv32_uart0_printf+0x168>
 518:	ff7416e3          	bne	s0,s7,504 <neorv32_uart0_printf+0xcc>
 51c:	00012783          	lw	a5,0(sp)
 520:	00410593          	addi	a1,sp,4
 524:	0007a503          	lw	a0,0(a5)
 528:	00478713          	addi	a4,a5,4
 52c:	00e12023          	sw	a4,0(sp)
 530:	da1ff0ef          	jal	ra,2d0 <__neorv32_uart_tohex>
 534:	0640006f          	j	598 <neorv32_uart0_printf+0x160>
 538:	00012783          	lw	a5,0(sp)
 53c:	0007a503          	lw	a0,0(a5)
 540:	00478713          	addi	a4,a5,4
 544:	00e12023          	sw	a4,0(sp)
 548:	e99ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 54c:	00098413          	mv	s0,s3
 550:	f5dff06f          	j	4ac <neorv32_uart0_printf+0x74>
 554:	00012783          	lw	a5,0(sp)
 558:	0007c503          	lbu	a0,0(a5)
 55c:	00478713          	addi	a4,a5,4
 560:	00e12023          	sw	a4,0(sp)
 564:	e65ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 568:	fe5ff06f          	j	54c <neorv32_uart0_printf+0x114>
 56c:	00012783          	lw	a5,0(sp)
 570:	0007a403          	lw	s0,0(a5)
 574:	00478713          	addi	a4,a5,4
 578:	00e12023          	sw	a4,0(sp)
 57c:	00045863          	bgez	s0,58c <neorv32_uart0_printf+0x154>
 580:	02d00513          	li	a0,45
 584:	40800433          	neg	s0,s0
 588:	e41ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 58c:	00410593          	addi	a1,sp,4
 590:	00040513          	mv	a0,s0
 594:	c35ff0ef          	jal	ra,1c8 <__neorv32_uart_itoa>
 598:	00410513          	addi	a0,sp,4
 59c:	fadff06f          	j	548 <neorv32_uart0_printf+0x110>
 5a0:	00012783          	lw	a5,0(sp)
 5a4:	00410593          	addi	a1,sp,4
 5a8:	00478713          	addi	a4,a5,4
 5ac:	0007a503          	lw	a0,0(a5)
 5b0:	00e12023          	sw	a4,0(sp)
 5b4:	fe1ff06f          	j	594 <neorv32_uart0_printf+0x15c>
 5b8:	01549663          	bne	s1,s5,5c4 <neorv32_uart0_printf+0x18c>
 5bc:	00d00513          	li	a0,13
 5c0:	e09ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 5c4:	00140993          	addi	s3,s0,1
 5c8:	00048513          	mv	a0,s1
 5cc:	f99ff06f          	j	564 <neorv32_uart0_printf+0x12c>

000005d0 <__neorv32_rte_core>:
 5d0:	fc010113          	addi	sp,sp,-64
 5d4:	02112e23          	sw	ra,60(sp)
 5d8:	02512c23          	sw	t0,56(sp)
 5dc:	02612a23          	sw	t1,52(sp)
 5e0:	02712823          	sw	t2,48(sp)
 5e4:	02a12623          	sw	a0,44(sp)
 5e8:	02b12423          	sw	a1,40(sp)
 5ec:	02c12223          	sw	a2,36(sp)
 5f0:	02d12023          	sw	a3,32(sp)
 5f4:	00e12e23          	sw	a4,28(sp)
 5f8:	00f12c23          	sw	a5,24(sp)
 5fc:	01012a23          	sw	a6,20(sp)
 600:	01112823          	sw	a7,16(sp)
 604:	01c12623          	sw	t3,12(sp)
 608:	01d12423          	sw	t4,8(sp)
 60c:	01e12223          	sw	t5,4(sp)
 610:	01f12023          	sw	t6,0(sp)
 614:	34102773          	csrr	a4,mepc
 618:	34071073          	csrw	mscratch,a4
 61c:	342027f3          	csrr	a5,mcause
 620:	0807ca63          	bltz	a5,6b4 <__neorv32_rte_core+0xe4>
 624:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e9c0>
 628:	00300593          	li	a1,3
 62c:	0036f693          	andi	a3,a3,3
 630:	00270613          	addi	a2,a4,2
 634:	00b69463          	bne	a3,a1,63c <__neorv32_rte_core+0x6c>
 638:	00470613          	addi	a2,a4,4
 63c:	34161073          	csrw	mepc,a2
 640:	00b00713          	li	a4,11
 644:	04f77c63          	bgeu	a4,a5,69c <__neorv32_rte_core+0xcc>
 648:	000017b7          	lui	a5,0x1
 64c:	85078793          	addi	a5,a5,-1968 # 850 <__neorv32_rte_debug_exc_handler>
 650:	000780e7          	jalr	a5
 654:	03c12083          	lw	ra,60(sp)
 658:	03812283          	lw	t0,56(sp)
 65c:	03412303          	lw	t1,52(sp)
 660:	03012383          	lw	t2,48(sp)
 664:	02c12503          	lw	a0,44(sp)
 668:	02812583          	lw	a1,40(sp)
 66c:	02412603          	lw	a2,36(sp)
 670:	02012683          	lw	a3,32(sp)
 674:	01c12703          	lw	a4,28(sp)
 678:	01812783          	lw	a5,24(sp)
 67c:	01412803          	lw	a6,20(sp)
 680:	01012883          	lw	a7,16(sp)
 684:	00c12e03          	lw	t3,12(sp)
 688:	00812e83          	lw	t4,8(sp)
 68c:	00412f03          	lw	t5,4(sp)
 690:	00012f83          	lw	t6,0(sp)
 694:	04010113          	addi	sp,sp,64
 698:	30200073          	mret
 69c:	00001737          	lui	a4,0x1
 6a0:	00279793          	slli	a5,a5,0x2
 6a4:	e3070713          	addi	a4,a4,-464 # e30 <symbols.0+0x14>
 6a8:	00e787b3          	add	a5,a5,a4
 6ac:	0007a783          	lw	a5,0(a5)
 6b0:	00078067          	jr	a5
 6b4:	80000737          	lui	a4,0x80000
 6b8:	ffd74713          	xori	a4,a4,-3
 6bc:	00e787b3          	add	a5,a5,a4
 6c0:	01c00713          	li	a4,28
 6c4:	f8f762e3          	bltu	a4,a5,648 <__neorv32_rte_core+0x78>
 6c8:	00001737          	lui	a4,0x1
 6cc:	00279793          	slli	a5,a5,0x2
 6d0:	e6070713          	addi	a4,a4,-416 # e60 <symbols.0+0x44>
 6d4:	00e787b3          	add	a5,a5,a4
 6d8:	0007a783          	lw	a5,0(a5)
 6dc:	00078067          	jr	a5
 6e0:	800007b7          	lui	a5,0x80000
 6e4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 6e8:	f69ff06f          	j	650 <__neorv32_rte_core+0x80>
 6ec:	800007b7          	lui	a5,0x80000
 6f0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 6f4:	f5dff06f          	j	650 <__neorv32_rte_core+0x80>
 6f8:	800007b7          	lui	a5,0x80000
 6fc:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 700:	f51ff06f          	j	650 <__neorv32_rte_core+0x80>
 704:	800007b7          	lui	a5,0x80000
 708:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 70c:	f45ff06f          	j	650 <__neorv32_rte_core+0x80>
 710:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 714:	f3dff06f          	j	650 <__neorv32_rte_core+0x80>
 718:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 71c:	f35ff06f          	j	650 <__neorv32_rte_core+0x80>
 720:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 724:	f2dff06f          	j	650 <__neorv32_rte_core+0x80>
 728:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 72c:	f25ff06f          	j	650 <__neorv32_rte_core+0x80>
 730:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 734:	f1dff06f          	j	650 <__neorv32_rte_core+0x80>
 738:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 73c:	f15ff06f          	j	650 <__neorv32_rte_core+0x80>
 740:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 744:	f0dff06f          	j	650 <__neorv32_rte_core+0x80>
 748:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 74c:	f05ff06f          	j	650 <__neorv32_rte_core+0x80>
 750:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 754:	efdff06f          	j	650 <__neorv32_rte_core+0x80>
 758:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 75c:	ef5ff06f          	j	650 <__neorv32_rte_core+0x80>
 760:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 764:	eedff06f          	j	650 <__neorv32_rte_core+0x80>
 768:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 76c:	ee5ff06f          	j	650 <__neorv32_rte_core+0x80>
 770:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 774:	eddff06f          	j	650 <__neorv32_rte_core+0x80>
 778:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 77c:	ed5ff06f          	j	650 <__neorv32_rte_core+0x80>
 780:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 784:	ecdff06f          	j	650 <__neorv32_rte_core+0x80>
 788:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 78c:	ec5ff06f          	j	650 <__neorv32_rte_core+0x80>
 790:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 794:	ebdff06f          	j	650 <__neorv32_rte_core+0x80>
 798:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 79c:	eb5ff06f          	j	650 <__neorv32_rte_core+0x80>
 7a0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 7a4:	eadff06f          	j	650 <__neorv32_rte_core+0x80>
 7a8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 7ac:	ea5ff06f          	j	650 <__neorv32_rte_core+0x80>
 7b0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 7b4:	e9dff06f          	j	650 <__neorv32_rte_core+0x80>
 7b8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 7bc:	e95ff06f          	j	650 <__neorv32_rte_core+0x80>
 7c0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 7c4:	e8dff06f          	j	650 <__neorv32_rte_core+0x80>
 7c8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 7cc:	e85ff06f          	j	650 <__neorv32_rte_core+0x80>
 7d0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 7d4:	e7dff06f          	j	650 <__neorv32_rte_core+0x80>
 7d8:	0000                	unimp
 7da:	0000                	unimp
 7dc:	0000                	unimp
 7de:	0000                	unimp

000007e0 <__neorv32_rte_print_hex_word>:
 7e0:	fe010113          	addi	sp,sp,-32
 7e4:	01212823          	sw	s2,16(sp)
 7e8:	00050913          	mv	s2,a0
 7ec:	00001537          	lui	a0,0x1
 7f0:	00912a23          	sw	s1,20(sp)
 7f4:	ed450513          	addi	a0,a0,-300 # ed4 <symbols.0+0xb8>
 7f8:	000014b7          	lui	s1,0x1
 7fc:	00812c23          	sw	s0,24(sp)
 800:	01312623          	sw	s3,12(sp)
 804:	00112e23          	sw	ra,28(sp)
 808:	01c00413          	li	s0,28
 80c:	bd5ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 810:	63048493          	addi	s1,s1,1584 # 1630 <hex_symbols.0>
 814:	ffc00993          	li	s3,-4
 818:	008957b3          	srl	a5,s2,s0
 81c:	00f7f793          	andi	a5,a5,15
 820:	00f487b3          	add	a5,s1,a5
 824:	0007c503          	lbu	a0,0(a5)
 828:	ffc40413          	addi	s0,s0,-4
 82c:	b9dff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 830:	ff3414e3          	bne	s0,s3,818 <__neorv32_rte_print_hex_word+0x38>
 834:	01c12083          	lw	ra,28(sp)
 838:	01812403          	lw	s0,24(sp)
 83c:	01412483          	lw	s1,20(sp)
 840:	01012903          	lw	s2,16(sp)
 844:	00c12983          	lw	s3,12(sp)
 848:	02010113          	addi	sp,sp,32
 84c:	00008067          	ret

00000850 <__neorv32_rte_debug_exc_handler>:
 850:	ff010113          	addi	sp,sp,-16
 854:	00112623          	sw	ra,12(sp)
 858:	00812423          	sw	s0,8(sp)
 85c:	00912223          	sw	s1,4(sp)
 860:	aadff0ef          	jal	ra,30c <neorv32_uart0_available>
 864:	1c050863          	beqz	a0,a34 <__neorv32_rte_debug_exc_handler+0x1e4>
 868:	00001537          	lui	a0,0x1
 86c:	ed850513          	addi	a0,a0,-296 # ed8 <symbols.0+0xbc>
 870:	b71ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 874:	34202473          	csrr	s0,mcause
 878:	00900713          	li	a4,9
 87c:	00f47793          	andi	a5,s0,15
 880:	03078493          	addi	s1,a5,48
 884:	00f77463          	bgeu	a4,a5,88c <__neorv32_rte_debug_exc_handler+0x3c>
 888:	05778493          	addi	s1,a5,87
 88c:	00b00793          	li	a5,11
 890:	0087ee63          	bltu	a5,s0,8ac <__neorv32_rte_debug_exc_handler+0x5c>
 894:	00001737          	lui	a4,0x1
 898:	00241793          	slli	a5,s0,0x2
 89c:	09870713          	addi	a4,a4,152 # 1098 <symbols.0+0x27c>
 8a0:	00e787b3          	add	a5,a5,a4
 8a4:	0007a783          	lw	a5,0(a5)
 8a8:	00078067          	jr	a5
 8ac:	800007b7          	lui	a5,0x80000
 8b0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 8b4:	14e40e63          	beq	s0,a4,a10 <__neorv32_rte_debug_exc_handler+0x1c0>
 8b8:	02876a63          	bltu	a4,s0,8ec <__neorv32_rte_debug_exc_handler+0x9c>
 8bc:	00378713          	addi	a4,a5,3
 8c0:	12e40c63          	beq	s0,a4,9f8 <__neorv32_rte_debug_exc_handler+0x1a8>
 8c4:	00778793          	addi	a5,a5,7
 8c8:	12f40e63          	beq	s0,a5,a04 <__neorv32_rte_debug_exc_handler+0x1b4>
 8cc:	00001537          	lui	a0,0x1
 8d0:	03850513          	addi	a0,a0,56 # 1038 <symbols.0+0x21c>
 8d4:	b0dff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 8d8:	00040513          	mv	a0,s0
 8dc:	f05ff0ef          	jal	ra,7e0 <__neorv32_rte_print_hex_word>
 8e0:	00100793          	li	a5,1
 8e4:	08f40c63          	beq	s0,a5,97c <__neorv32_rte_debug_exc_handler+0x12c>
 8e8:	0280006f          	j	910 <__neorv32_rte_debug_exc_handler+0xc0>
 8ec:	ff07c793          	xori	a5,a5,-16
 8f0:	00f407b3          	add	a5,s0,a5
 8f4:	00f00713          	li	a4,15
 8f8:	fcf76ae3          	bltu	a4,a5,8cc <__neorv32_rte_debug_exc_handler+0x7c>
 8fc:	00001537          	lui	a0,0x1
 900:	02850513          	addi	a0,a0,40 # 1028 <symbols.0+0x20c>
 904:	addff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 908:	00048513          	mv	a0,s1
 90c:	abdff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 910:	ffd47413          	andi	s0,s0,-3
 914:	00500793          	li	a5,5
 918:	06f40263          	beq	s0,a5,97c <__neorv32_rte_debug_exc_handler+0x12c>
 91c:	00001537          	lui	a0,0x1
 920:	07c50513          	addi	a0,a0,124 # 107c <symbols.0+0x260>
 924:	abdff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 928:	34002573          	csrr	a0,mscratch
 92c:	eb5ff0ef          	jal	ra,7e0 <__neorv32_rte_print_hex_word>
 930:	00001537          	lui	a0,0x1
 934:	08450513          	addi	a0,a0,132 # 1084 <symbols.0+0x268>
 938:	aa9ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 93c:	34302573          	csrr	a0,mtval
 940:	ea1ff0ef          	jal	ra,7e0 <__neorv32_rte_print_hex_word>
 944:	00812403          	lw	s0,8(sp)
 948:	00c12083          	lw	ra,12(sp)
 94c:	00412483          	lw	s1,4(sp)
 950:	00001537          	lui	a0,0x1
 954:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0x274>
 958:	01010113          	addi	sp,sp,16
 95c:	a85ff06f          	j	3e0 <neorv32_uart0_print>
 960:	00001537          	lui	a0,0x1
 964:	ee050513          	addi	a0,a0,-288 # ee0 <symbols.0+0xc4>
 968:	a79ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 96c:	fb1ff06f          	j	91c <__neorv32_rte_debug_exc_handler+0xcc>
 970:	00001537          	lui	a0,0x1
 974:	f0050513          	addi	a0,a0,-256 # f00 <symbols.0+0xe4>
 978:	a69ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 97c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 980:	0a07d463          	bgez	a5,a28 <__neorv32_rte_debug_exc_handler+0x1d8>
 984:	0017f793          	andi	a5,a5,1
 988:	08078a63          	beqz	a5,a1c <__neorv32_rte_debug_exc_handler+0x1cc>
 98c:	00001537          	lui	a0,0x1
 990:	05050513          	addi	a0,a0,80 # 1050 <symbols.0+0x234>
 994:	fd5ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 998:	00001537          	lui	a0,0x1
 99c:	f1c50513          	addi	a0,a0,-228 # f1c <symbols.0+0x100>
 9a0:	fc9ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 9a4:	00001537          	lui	a0,0x1
 9a8:	f3050513          	addi	a0,a0,-208 # f30 <symbols.0+0x114>
 9ac:	fbdff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 9b0:	00001537          	lui	a0,0x1
 9b4:	f3c50513          	addi	a0,a0,-196 # f3c <symbols.0+0x120>
 9b8:	fb1ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 9bc:	00001537          	lui	a0,0x1
 9c0:	f5450513          	addi	a0,a0,-172 # f54 <symbols.0+0x138>
 9c4:	fb5ff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x128>
 9c8:	00001537          	lui	a0,0x1
 9cc:	f6850513          	addi	a0,a0,-152 # f68 <symbols.0+0x14c>
 9d0:	f99ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 9d4:	00001537          	lui	a0,0x1
 9d8:	f8450513          	addi	a0,a0,-124 # f84 <symbols.0+0x168>
 9dc:	f9dff06f          	j	978 <__neorv32_rte_debug_exc_handler+0x128>
 9e0:	00001537          	lui	a0,0x1
 9e4:	f9850513          	addi	a0,a0,-104 # f98 <symbols.0+0x17c>
 9e8:	f81ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 9ec:	00001537          	lui	a0,0x1
 9f0:	fb850513          	addi	a0,a0,-72 # fb8 <symbols.0+0x19c>
 9f4:	f75ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 9f8:	00001537          	lui	a0,0x1
 9fc:	fd850513          	addi	a0,a0,-40 # fd8 <symbols.0+0x1bc>
 a00:	f69ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 a04:	00001537          	lui	a0,0x1
 a08:	ff450513          	addi	a0,a0,-12 # ff4 <symbols.0+0x1d8>
 a0c:	f5dff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 a10:	00001537          	lui	a0,0x1
 a14:	00c50513          	addi	a0,a0,12 # 100c <symbols.0+0x1f0>
 a18:	f51ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 a1c:	00001537          	lui	a0,0x1
 a20:	06050513          	addi	a0,a0,96 # 1060 <symbols.0+0x244>
 a24:	f45ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 a28:	00001537          	lui	a0,0x1
 a2c:	07050513          	addi	a0,a0,112 # 1070 <symbols.0+0x254>
 a30:	f39ff06f          	j	968 <__neorv32_rte_debug_exc_handler+0x118>
 a34:	00c12083          	lw	ra,12(sp)
 a38:	00812403          	lw	s0,8(sp)
 a3c:	00412483          	lw	s1,4(sp)
 a40:	01010113          	addi	sp,sp,16
 a44:	00008067          	ret

00000a48 <neorv32_rte_exception_uninstall>:
 a48:	01f00793          	li	a5,31
 a4c:	02a7e463          	bltu	a5,a0,a74 <neorv32_rte_exception_uninstall+0x2c>
 a50:	800007b7          	lui	a5,0x80000
 a54:	00078793          	mv	a5,a5
 a58:	00251513          	slli	a0,a0,0x2
 a5c:	00a78533          	add	a0,a5,a0
 a60:	000017b7          	lui	a5,0x1
 a64:	85078793          	addi	a5,a5,-1968 # 850 <__neorv32_rte_debug_exc_handler>
 a68:	00f52023          	sw	a5,0(a0)
 a6c:	00000513          	li	a0,0
 a70:	00008067          	ret
 a74:	00100513          	li	a0,1
 a78:	00008067          	ret

00000a7c <neorv32_rte_setup>:
 a7c:	ff010113          	addi	sp,sp,-16
 a80:	00112623          	sw	ra,12(sp)
 a84:	00812423          	sw	s0,8(sp)
 a88:	00912223          	sw	s1,4(sp)
 a8c:	5d000793          	li	a5,1488
 a90:	30579073          	csrw	mtvec,a5
 a94:	00000413          	li	s0,0
 a98:	01d00493          	li	s1,29
 a9c:	00040513          	mv	a0,s0
 aa0:	00140413          	addi	s0,s0,1
 aa4:	0ff47413          	andi	s0,s0,255
 aa8:	fa1ff0ef          	jal	ra,a48 <neorv32_rte_exception_uninstall>
 aac:	fe9418e3          	bne	s0,s1,a9c <neorv32_rte_setup+0x20>
 ab0:	00c12083          	lw	ra,12(sp)
 ab4:	00812403          	lw	s0,8(sp)
 ab8:	00412483          	lw	s1,4(sp)
 abc:	01010113          	addi	sp,sp,16
 ac0:	00008067          	ret

00000ac4 <neorv32_rte_print_logo>:
 ac4:	f2010113          	addi	sp,sp,-224
 ac8:	000015b7          	lui	a1,0x1
 acc:	0b000613          	li	a2,176
 ad0:	58058593          	addi	a1,a1,1408 # 1580 <symbols.0+0x764>
 ad4:	00010513          	mv	a0,sp
 ad8:	0c112e23          	sw	ra,220(sp)
 adc:	0c812c23          	sw	s0,216(sp)
 ae0:	0c912a23          	sw	s1,212(sp)
 ae4:	0d212823          	sw	s2,208(sp)
 ae8:	0d312623          	sw	s3,204(sp)
 aec:	0d412423          	sw	s4,200(sp)
 af0:	0d512223          	sw	s5,196(sp)
 af4:	0d612023          	sw	s6,192(sp)
 af8:	0b712e23          	sw	s7,188(sp)
 afc:	1d8000ef          	jal	ra,cd4 <memcpy>
 b00:	80dff0ef          	jal	ra,30c <neorv32_uart0_available>
 b04:	08050863          	beqz	a0,b94 <neorv32_rte_print_logo+0xd0>
 b08:	00001ab7          	lui	s5,0x1
 b0c:	00010413          	mv	s0,sp
 b10:	000a8b13          	mv	s6,s5
 b14:	00400b93          	li	s7,4
 b18:	408a8513          	addi	a0,s5,1032 # 1408 <symbols.0+0x5ec>
 b1c:	8c5ff0ef          	jal	ra,3e0 <neorv32_uart0_print>
 b20:	00040913          	mv	s2,s0
 b24:	00000493          	li	s1,0
 b28:	00092a03          	lw	s4,0(s2)
 b2c:	02000993          	li	s3,32
 b30:	02300513          	li	a0,35
 b34:	000a4463          	bltz	s4,b3c <neorv32_rte_print_logo+0x78>
 b38:	02000513          	li	a0,32
 b3c:	fff98993          	addi	s3,s3,-1
 b40:	889ff0ef          	jal	ra,3c8 <neorv32_uart0_putc>
 b44:	001a1a13          	slli	s4,s4,0x1
 b48:	fe0994e3          	bnez	s3,b30 <neorv32_rte_print_logo+0x6c>
 b4c:	00148493          	addi	s1,s1,1
 b50:	00490913          	addi	s2,s2,4
 b54:	fd749ae3          	bne	s1,s7,b28 <neorv32_rte_print_logo+0x64>
 b58:	01040413          	addi	s0,s0,16
 b5c:	0b010793          	addi	a5,sp,176
 b60:	fa879ce3          	bne	a5,s0,b18 <neorv32_rte_print_logo+0x54>
 b64:	0d812403          	lw	s0,216(sp)
 b68:	0dc12083          	lw	ra,220(sp)
 b6c:	0d412483          	lw	s1,212(sp)
 b70:	0d012903          	lw	s2,208(sp)
 b74:	0cc12983          	lw	s3,204(sp)
 b78:	0c812a03          	lw	s4,200(sp)
 b7c:	0c412a83          	lw	s5,196(sp)
 b80:	0bc12b83          	lw	s7,188(sp)
 b84:	408b0513          	addi	a0,s6,1032
 b88:	0c012b03          	lw	s6,192(sp)
 b8c:	0e010113          	addi	sp,sp,224
 b90:	851ff06f          	j	3e0 <neorv32_uart0_print>
 b94:	0dc12083          	lw	ra,220(sp)
 b98:	0d812403          	lw	s0,216(sp)
 b9c:	0d412483          	lw	s1,212(sp)
 ba0:	0d012903          	lw	s2,208(sp)
 ba4:	0cc12983          	lw	s3,204(sp)
 ba8:	0c812a03          	lw	s4,200(sp)
 bac:	0c412a83          	lw	s5,196(sp)
 bb0:	0c012b03          	lw	s6,192(sp)
 bb4:	0bc12b83          	lw	s7,188(sp)
 bb8:	0e010113          	addi	sp,sp,224
 bbc:	00008067          	ret

00000bc0 <neorv32_rte_check_isa>:
 bc0:	30102673          	csrr	a2,misa
 bc4:	400007b7          	lui	a5,0x40000
 bc8:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffeac0>
 bcc:	00f67733          	and	a4,a2,a5
 bd0:	04f70463          	beq	a4,a5,c18 <neorv32_rte_check_isa+0x58>
 bd4:	fe010113          	addi	sp,sp,-32
 bd8:	00112e23          	sw	ra,28(sp)
 bdc:	02051463          	bnez	a0,c04 <neorv32_rte_check_isa+0x44>
 be0:	400005b7          	lui	a1,0x40000
 be4:	00001537          	lui	a0,0x1
 be8:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffeac0>
 bec:	4f850513          	addi	a0,a0,1272 # 14f8 <symbols.0+0x6dc>
 bf0:	849ff0ef          	jal	ra,438 <neorv32_uart0_printf>
 bf4:	01c12083          	lw	ra,28(sp)
 bf8:	00100513          	li	a0,1
 bfc:	02010113          	addi	sp,sp,32
 c00:	00008067          	ret
 c04:	00c12623          	sw	a2,12(sp)
 c08:	f04ff0ef          	jal	ra,30c <neorv32_uart0_available>
 c0c:	00c12603          	lw	a2,12(sp)
 c10:	fc0508e3          	beqz	a0,be0 <neorv32_rte_check_isa+0x20>
 c14:	fe1ff06f          	j	bf4 <neorv32_rte_check_isa+0x34>
 c18:	00000513          	li	a0,0
 c1c:	00008067          	ret

00000c20 <__divsi3>:
 c20:	06054063          	bltz	a0,c80 <__umodsi3+0x10>
 c24:	0605c663          	bltz	a1,c90 <__umodsi3+0x20>

00000c28 <__udivsi3>:
 c28:	00058613          	mv	a2,a1
 c2c:	00050593          	mv	a1,a0
 c30:	fff00513          	li	a0,-1
 c34:	02060c63          	beqz	a2,c6c <__udivsi3+0x44>
 c38:	00100693          	li	a3,1
 c3c:	00b67a63          	bgeu	a2,a1,c50 <__udivsi3+0x28>
 c40:	00c05863          	blez	a2,c50 <__udivsi3+0x28>
 c44:	00161613          	slli	a2,a2,0x1
 c48:	00169693          	slli	a3,a3,0x1
 c4c:	feb66ae3          	bltu	a2,a1,c40 <__udivsi3+0x18>
 c50:	00000513          	li	a0,0
 c54:	00c5e663          	bltu	a1,a2,c60 <__udivsi3+0x38>
 c58:	40c585b3          	sub	a1,a1,a2
 c5c:	00d56533          	or	a0,a0,a3
 c60:	0016d693          	srli	a3,a3,0x1
 c64:	00165613          	srli	a2,a2,0x1
 c68:	fe0696e3          	bnez	a3,c54 <__udivsi3+0x2c>
 c6c:	00008067          	ret

00000c70 <__umodsi3>:
 c70:	00008293          	mv	t0,ra
 c74:	fb5ff0ef          	jal	ra,c28 <__udivsi3>
 c78:	00058513          	mv	a0,a1
 c7c:	00028067          	jr	t0
 c80:	40a00533          	neg	a0,a0
 c84:	00b04863          	bgtz	a1,c94 <__umodsi3+0x24>
 c88:	40b005b3          	neg	a1,a1
 c8c:	f9dff06f          	j	c28 <__udivsi3>
 c90:	40b005b3          	neg	a1,a1
 c94:	00008293          	mv	t0,ra
 c98:	f91ff0ef          	jal	ra,c28 <__udivsi3>
 c9c:	40a00533          	neg	a0,a0
 ca0:	00028067          	jr	t0

00000ca4 <__modsi3>:
 ca4:	00008293          	mv	t0,ra
 ca8:	0005ca63          	bltz	a1,cbc <__modsi3+0x18>
 cac:	00054c63          	bltz	a0,cc4 <__modsi3+0x20>
 cb0:	f79ff0ef          	jal	ra,c28 <__udivsi3>
 cb4:	00058513          	mv	a0,a1
 cb8:	00028067          	jr	t0
 cbc:	40b005b3          	neg	a1,a1
 cc0:	fe0558e3          	bgez	a0,cb0 <__modsi3+0xc>
 cc4:	40a00533          	neg	a0,a0
 cc8:	f61ff0ef          	jal	ra,c28 <__udivsi3>
 ccc:	40b00533          	neg	a0,a1
 cd0:	00028067          	jr	t0

00000cd4 <memcpy>:
 cd4:	00a5c7b3          	xor	a5,a1,a0
 cd8:	0037f793          	andi	a5,a5,3
 cdc:	00c508b3          	add	a7,a0,a2
 ce0:	06079663          	bnez	a5,d4c <memcpy+0x78>
 ce4:	00300793          	li	a5,3
 ce8:	06c7f263          	bgeu	a5,a2,d4c <memcpy+0x78>
 cec:	00357793          	andi	a5,a0,3
 cf0:	00050713          	mv	a4,a0
 cf4:	0c079a63          	bnez	a5,dc8 <memcpy+0xf4>
 cf8:	ffc8f613          	andi	a2,a7,-4
 cfc:	40e606b3          	sub	a3,a2,a4
 d00:	02000793          	li	a5,32
 d04:	02000293          	li	t0,32
 d08:	06d7c263          	blt	a5,a3,d6c <memcpy+0x98>
 d0c:	00058693          	mv	a3,a1
 d10:	00070793          	mv	a5,a4
 d14:	02c77863          	bgeu	a4,a2,d44 <memcpy+0x70>
 d18:	0006a803          	lw	a6,0(a3)
 d1c:	00478793          	addi	a5,a5,4
 d20:	00468693          	addi	a3,a3,4
 d24:	ff07ae23          	sw	a6,-4(a5)
 d28:	fec7e8e3          	bltu	a5,a2,d18 <memcpy+0x44>
 d2c:	fff60793          	addi	a5,a2,-1
 d30:	40e787b3          	sub	a5,a5,a4
 d34:	ffc7f793          	andi	a5,a5,-4
 d38:	00478793          	addi	a5,a5,4
 d3c:	00f70733          	add	a4,a4,a5
 d40:	00f585b3          	add	a1,a1,a5
 d44:	01176863          	bltu	a4,a7,d54 <memcpy+0x80>
 d48:	00008067          	ret
 d4c:	00050713          	mv	a4,a0
 d50:	ff157ce3          	bgeu	a0,a7,d48 <memcpy+0x74>
 d54:	0005c783          	lbu	a5,0(a1)
 d58:	00170713          	addi	a4,a4,1
 d5c:	00158593          	addi	a1,a1,1
 d60:	fef70fa3          	sb	a5,-1(a4)
 d64:	ff1768e3          	bltu	a4,a7,d54 <memcpy+0x80>
 d68:	00008067          	ret
 d6c:	0045a683          	lw	a3,4(a1)
 d70:	01c5a783          	lw	a5,28(a1)
 d74:	0005af83          	lw	t6,0(a1)
 d78:	0085af03          	lw	t5,8(a1)
 d7c:	00c5ae83          	lw	t4,12(a1)
 d80:	0105ae03          	lw	t3,16(a1)
 d84:	0145a303          	lw	t1,20(a1)
 d88:	0185a803          	lw	a6,24(a1)
 d8c:	00d72223          	sw	a3,4(a4)
 d90:	0205a683          	lw	a3,32(a1)
 d94:	01f72023          	sw	t6,0(a4)
 d98:	01e72423          	sw	t5,8(a4)
 d9c:	01d72623          	sw	t4,12(a4)
 da0:	01c72823          	sw	t3,16(a4)
 da4:	00672a23          	sw	t1,20(a4)
 da8:	01072c23          	sw	a6,24(a4)
 dac:	00f72e23          	sw	a5,28(a4)
 db0:	02470713          	addi	a4,a4,36
 db4:	40e607b3          	sub	a5,a2,a4
 db8:	fed72e23          	sw	a3,-4(a4)
 dbc:	02458593          	addi	a1,a1,36
 dc0:	faf2c6e3          	blt	t0,a5,d6c <memcpy+0x98>
 dc4:	f49ff06f          	j	d0c <memcpy+0x38>
 dc8:	0005c683          	lbu	a3,0(a1)
 dcc:	00170713          	addi	a4,a4,1
 dd0:	00377793          	andi	a5,a4,3
 dd4:	fed70fa3          	sb	a3,-1(a4)
 dd8:	00158593          	addi	a1,a1,1
 ddc:	f0078ee3          	beqz	a5,cf8 <memcpy+0x24>
 de0:	0005c683          	lbu	a3,0(a1)
 de4:	00170713          	addi	a4,a4,1
 de8:	00377793          	andi	a5,a4,3
 dec:	fed70fa3          	sb	a3,-1(a4)
 df0:	00158593          	addi	a1,a1,1
 df4:	fc079ae3          	bnez	a5,dc8 <memcpy+0xf4>
 df8:	f01ff06f          	j	cf8 <memcpy+0x24>
