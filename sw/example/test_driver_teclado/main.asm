
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
  e0:	e0058593          	addi	a1,a1,-512 # edc <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3c24>
 194:	00112623          	sw	ra,12(sp)
 198:	00812423          	sw	s0,8(sp)
 19c:	00912223          	sw	s1,4(sp)
 1a0:	1b0000ef          	jal	ra,350 <neorv32_uart0_setup>
 1a4:	460000ef          	jal	ra,604 <neorv32_gpio_available>
 1a8:	02050863          	beqz	a0,1d8 <main+0x58>
 1ac:	121000ef          	jal	ra,acc <neorv32_rte_setup>
 1b0:	00001537          	lui	a0,0x1
 1b4:	bec50513          	addi	a0,a0,-1044 # bec <__etext+0x24>
 1b8:	80010437          	lui	s0,0x80010
 1bc:	258000ef          	jal	ra,414 <neorv32_uart0_print>
 1c0:	01040413          	addi	s0,s0,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
 1c4:	000014b7          	lui	s1,0x1
 1c8:	00042583          	lw	a1,0(s0)
 1cc:	c0848513          	addi	a0,s1,-1016 # c08 <__etext+0x40>
 1d0:	29c000ef          	jal	ra,46c <neorv32_uart0_printf>
 1d4:	ff5ff06f          	j	1c8 <main+0x48>
 1d8:	00001537          	lui	a0,0x1
 1dc:	bc850513          	addi	a0,a0,-1080 # bc8 <__etext>
 1e0:	234000ef          	jal	ra,414 <neorv32_uart0_print>
 1e4:	00c12083          	lw	ra,12(sp)
 1e8:	00812403          	lw	s0,8(sp)
 1ec:	00412483          	lw	s1,4(sp)
 1f0:	00100513          	li	a0,1
 1f4:	01010113          	addi	sp,sp,16
 1f8:	00008067          	ret

000001fc <__neorv32_uart_itoa>:
 1fc:	fd010113          	addi	sp,sp,-48
 200:	02812423          	sw	s0,40(sp)
 204:	02912223          	sw	s1,36(sp)
 208:	03212023          	sw	s2,32(sp)
 20c:	01312e23          	sw	s3,28(sp)
 210:	01412c23          	sw	s4,24(sp)
 214:	02112623          	sw	ra,44(sp)
 218:	01512a23          	sw	s5,20(sp)
 21c:	00001a37          	lui	s4,0x1
 220:	00050493          	mv	s1,a0
 224:	00058413          	mv	s0,a1
 228:	00058523          	sb	zero,10(a1)
 22c:	00000993          	li	s3,0
 230:	00410913          	addi	s2,sp,4
 234:	c14a0a13          	addi	s4,s4,-1004 # c14 <numbers.1>
 238:	00a00593          	li	a1,10
 23c:	00048513          	mv	a0,s1
 240:	125000ef          	jal	ra,b64 <__umodsi3>
 244:	00aa0533          	add	a0,s4,a0
 248:	00054783          	lbu	a5,0(a0)
 24c:	01390ab3          	add	s5,s2,s3
 250:	00048513          	mv	a0,s1
 254:	00fa8023          	sb	a5,0(s5)
 258:	00a00593          	li	a1,10
 25c:	0c1000ef          	jal	ra,b1c <__udivsi3>
 260:	00198993          	addi	s3,s3,1
 264:	00a00793          	li	a5,10
 268:	00050493          	mv	s1,a0
 26c:	fcf996e3          	bne	s3,a5,238 <__neorv32_uart_itoa+0x3c>
 270:	00090693          	mv	a3,s2
 274:	00900713          	li	a4,9
 278:	03000613          	li	a2,48
 27c:	0096c583          	lbu	a1,9(a3)
 280:	00070793          	mv	a5,a4
 284:	fff70713          	addi	a4,a4,-1
 288:	01071713          	slli	a4,a4,0x10
 28c:	01075713          	srli	a4,a4,0x10
 290:	00c59a63          	bne	a1,a2,2a4 <__neorv32_uart_itoa+0xa8>
 294:	000684a3          	sb	zero,9(a3)
 298:	fff68693          	addi	a3,a3,-1
 29c:	fe0710e3          	bnez	a4,27c <__neorv32_uart_itoa+0x80>
 2a0:	00000793          	li	a5,0
 2a4:	00f907b3          	add	a5,s2,a5
 2a8:	00000593          	li	a1,0
 2ac:	0007c703          	lbu	a4,0(a5)
 2b0:	00070c63          	beqz	a4,2c8 <__neorv32_uart_itoa+0xcc>
 2b4:	00158693          	addi	a3,a1,1
 2b8:	00b405b3          	add	a1,s0,a1
 2bc:	00e58023          	sb	a4,0(a1)
 2c0:	01069593          	slli	a1,a3,0x10
 2c4:	0105d593          	srli	a1,a1,0x10
 2c8:	fff78713          	addi	a4,a5,-1
 2cc:	02f91863          	bne	s2,a5,2fc <__neorv32_uart_itoa+0x100>
 2d0:	00b40433          	add	s0,s0,a1
 2d4:	00040023          	sb	zero,0(s0)
 2d8:	02c12083          	lw	ra,44(sp)
 2dc:	02812403          	lw	s0,40(sp)
 2e0:	02412483          	lw	s1,36(sp)
 2e4:	02012903          	lw	s2,32(sp)
 2e8:	01c12983          	lw	s3,28(sp)
 2ec:	01812a03          	lw	s4,24(sp)
 2f0:	01412a83          	lw	s5,20(sp)
 2f4:	03010113          	addi	sp,sp,48
 2f8:	00008067          	ret
 2fc:	00070793          	mv	a5,a4
 300:	fadff06f          	j	2ac <__neorv32_uart_itoa+0xb0>

00000304 <__neorv32_uart_tohex>:
 304:	00001637          	lui	a2,0x1
 308:	00758693          	addi	a3,a1,7
 30c:	00000713          	li	a4,0
 310:	c2060613          	addi	a2,a2,-992 # c20 <symbols.0>
 314:	02000813          	li	a6,32
 318:	00e557b3          	srl	a5,a0,a4
 31c:	00f7f793          	andi	a5,a5,15
 320:	00f607b3          	add	a5,a2,a5
 324:	0007c783          	lbu	a5,0(a5)
 328:	00470713          	addi	a4,a4,4
 32c:	fff68693          	addi	a3,a3,-1
 330:	00f680a3          	sb	a5,1(a3)
 334:	ff0712e3          	bne	a4,a6,318 <__neorv32_uart_tohex+0x14>
 338:	00058423          	sb	zero,8(a1)
 33c:	00008067          	ret

00000340 <neorv32_uart0_available>:
 340:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 344:	01255513          	srli	a0,a0,0x12
 348:	00157513          	andi	a0,a0,1
 34c:	00008067          	ret

00000350 <neorv32_uart0_setup>:
 350:	ff010113          	addi	sp,sp,-16
 354:	00812423          	sw	s0,8(sp)
 358:	00912223          	sw	s1,4(sp)
 35c:	00112623          	sw	ra,12(sp)
 360:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 364:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 368:	00058413          	mv	s0,a1
 36c:	00151593          	slli	a1,a0,0x1
 370:	00078513          	mv	a0,a5
 374:	00060493          	mv	s1,a2
 378:	7a4000ef          	jal	ra,b1c <__udivsi3>
 37c:	01051513          	slli	a0,a0,0x10
 380:	000017b7          	lui	a5,0x1
 384:	01055513          	srli	a0,a0,0x10
 388:	00000713          	li	a4,0
 38c:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x122>
 390:	04a7e463          	bltu	a5,a0,3d8 <neorv32_uart0_setup+0x88>
 394:	0034f793          	andi	a5,s1,3
 398:	00347413          	andi	s0,s0,3
 39c:	fff50513          	addi	a0,a0,-1
 3a0:	01479793          	slli	a5,a5,0x14
 3a4:	01641413          	slli	s0,s0,0x16
 3a8:	00f567b3          	or	a5,a0,a5
 3ac:	0087e7b3          	or	a5,a5,s0
 3b0:	01871713          	slli	a4,a4,0x18
 3b4:	00c12083          	lw	ra,12(sp)
 3b8:	00812403          	lw	s0,8(sp)
 3bc:	00e7e7b3          	or	a5,a5,a4
 3c0:	10000737          	lui	a4,0x10000
 3c4:	00e7e7b3          	or	a5,a5,a4
 3c8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3cc:	00412483          	lw	s1,4(sp)
 3d0:	01010113          	addi	sp,sp,16
 3d4:	00008067          	ret
 3d8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff122>
 3dc:	0fd6f693          	andi	a3,a3,253
 3e0:	00069a63          	bnez	a3,3f4 <neorv32_uart0_setup+0xa4>
 3e4:	00355513          	srli	a0,a0,0x3
 3e8:	00170713          	addi	a4,a4,1
 3ec:	0ff77713          	andi	a4,a4,255
 3f0:	fa1ff06f          	j	390 <neorv32_uart0_setup+0x40>
 3f4:	00155513          	srli	a0,a0,0x1
 3f8:	ff1ff06f          	j	3e8 <neorv32_uart0_setup+0x98>

000003fc <neorv32_uart0_putc>:
 3fc:	00040737          	lui	a4,0x40
 400:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 404:	00e7f7b3          	and	a5,a5,a4
 408:	fe079ce3          	bnez	a5,400 <neorv32_uart0_putc+0x4>
 40c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 410:	00008067          	ret

00000414 <neorv32_uart0_print>:
 414:	ff010113          	addi	sp,sp,-16
 418:	00812423          	sw	s0,8(sp)
 41c:	01212023          	sw	s2,0(sp)
 420:	00112623          	sw	ra,12(sp)
 424:	00912223          	sw	s1,4(sp)
 428:	00050413          	mv	s0,a0
 42c:	00a00913          	li	s2,10
 430:	00044483          	lbu	s1,0(s0)
 434:	00140413          	addi	s0,s0,1
 438:	00049e63          	bnez	s1,454 <neorv32_uart0_print+0x40>
 43c:	00c12083          	lw	ra,12(sp)
 440:	00812403          	lw	s0,8(sp)
 444:	00412483          	lw	s1,4(sp)
 448:	00012903          	lw	s2,0(sp)
 44c:	01010113          	addi	sp,sp,16
 450:	00008067          	ret
 454:	01249663          	bne	s1,s2,460 <neorv32_uart0_print+0x4c>
 458:	00d00513          	li	a0,13
 45c:	fa1ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 460:	00048513          	mv	a0,s1
 464:	f99ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 468:	fc9ff06f          	j	430 <neorv32_uart0_print+0x1c>

0000046c <neorv32_uart0_printf>:
 46c:	fa010113          	addi	sp,sp,-96
 470:	04f12a23          	sw	a5,84(sp)
 474:	04410793          	addi	a5,sp,68
 478:	02812c23          	sw	s0,56(sp)
 47c:	03212823          	sw	s2,48(sp)
 480:	03412423          	sw	s4,40(sp)
 484:	03512223          	sw	s5,36(sp)
 488:	03612023          	sw	s6,32(sp)
 48c:	01712e23          	sw	s7,28(sp)
 490:	01812c23          	sw	s8,24(sp)
 494:	01912a23          	sw	s9,20(sp)
 498:	02112e23          	sw	ra,60(sp)
 49c:	02912a23          	sw	s1,52(sp)
 4a0:	03312623          	sw	s3,44(sp)
 4a4:	00050413          	mv	s0,a0
 4a8:	04b12223          	sw	a1,68(sp)
 4ac:	04c12423          	sw	a2,72(sp)
 4b0:	04d12623          	sw	a3,76(sp)
 4b4:	04e12823          	sw	a4,80(sp)
 4b8:	05012c23          	sw	a6,88(sp)
 4bc:	05112e23          	sw	a7,92(sp)
 4c0:	00f12023          	sw	a5,0(sp)
 4c4:	02500a13          	li	s4,37
 4c8:	00a00a93          	li	s5,10
 4cc:	07300913          	li	s2,115
 4d0:	07500b13          	li	s6,117
 4d4:	07800b93          	li	s7,120
 4d8:	06300c13          	li	s8,99
 4dc:	06900c93          	li	s9,105
 4e0:	00044483          	lbu	s1,0(s0)
 4e4:	02049c63          	bnez	s1,51c <neorv32_uart0_printf+0xb0>
 4e8:	03c12083          	lw	ra,60(sp)
 4ec:	03812403          	lw	s0,56(sp)
 4f0:	03412483          	lw	s1,52(sp)
 4f4:	03012903          	lw	s2,48(sp)
 4f8:	02c12983          	lw	s3,44(sp)
 4fc:	02812a03          	lw	s4,40(sp)
 500:	02412a83          	lw	s5,36(sp)
 504:	02012b03          	lw	s6,32(sp)
 508:	01c12b83          	lw	s7,28(sp)
 50c:	01812c03          	lw	s8,24(sp)
 510:	01412c83          	lw	s9,20(sp)
 514:	06010113          	addi	sp,sp,96
 518:	00008067          	ret
 51c:	0d449863          	bne	s1,s4,5ec <neorv32_uart0_printf+0x180>
 520:	00240993          	addi	s3,s0,2
 524:	00144403          	lbu	s0,1(s0)
 528:	05240263          	beq	s0,s2,56c <neorv32_uart0_printf+0x100>
 52c:	00896e63          	bltu	s2,s0,548 <neorv32_uart0_printf+0xdc>
 530:	05840c63          	beq	s0,s8,588 <neorv32_uart0_printf+0x11c>
 534:	07940663          	beq	s0,s9,5a0 <neorv32_uart0_printf+0x134>
 538:	02500513          	li	a0,37
 53c:	ec1ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 540:	00040513          	mv	a0,s0
 544:	0540006f          	j	598 <neorv32_uart0_printf+0x12c>
 548:	09640663          	beq	s0,s6,5d4 <neorv32_uart0_printf+0x168>
 54c:	ff7416e3          	bne	s0,s7,538 <neorv32_uart0_printf+0xcc>
 550:	00012783          	lw	a5,0(sp)
 554:	00410593          	addi	a1,sp,4
 558:	0007a503          	lw	a0,0(a5)
 55c:	00478713          	addi	a4,a5,4
 560:	00e12023          	sw	a4,0(sp)
 564:	da1ff0ef          	jal	ra,304 <__neorv32_uart_tohex>
 568:	0640006f          	j	5cc <neorv32_uart0_printf+0x160>
 56c:	00012783          	lw	a5,0(sp)
 570:	0007a503          	lw	a0,0(a5)
 574:	00478713          	addi	a4,a5,4
 578:	00e12023          	sw	a4,0(sp)
 57c:	e99ff0ef          	jal	ra,414 <neorv32_uart0_print>
 580:	00098413          	mv	s0,s3
 584:	f5dff06f          	j	4e0 <neorv32_uart0_printf+0x74>
 588:	00012783          	lw	a5,0(sp)
 58c:	0007c503          	lbu	a0,0(a5)
 590:	00478713          	addi	a4,a5,4
 594:	00e12023          	sw	a4,0(sp)
 598:	e65ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 59c:	fe5ff06f          	j	580 <neorv32_uart0_printf+0x114>
 5a0:	00012783          	lw	a5,0(sp)
 5a4:	0007a403          	lw	s0,0(a5)
 5a8:	00478713          	addi	a4,a5,4
 5ac:	00e12023          	sw	a4,0(sp)
 5b0:	00045863          	bgez	s0,5c0 <neorv32_uart0_printf+0x154>
 5b4:	02d00513          	li	a0,45
 5b8:	40800433          	neg	s0,s0
 5bc:	e41ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 5c0:	00410593          	addi	a1,sp,4
 5c4:	00040513          	mv	a0,s0
 5c8:	c35ff0ef          	jal	ra,1fc <__neorv32_uart_itoa>
 5cc:	00410513          	addi	a0,sp,4
 5d0:	fadff06f          	j	57c <neorv32_uart0_printf+0x110>
 5d4:	00012783          	lw	a5,0(sp)
 5d8:	00410593          	addi	a1,sp,4
 5dc:	00478713          	addi	a4,a5,4
 5e0:	0007a503          	lw	a0,0(a5)
 5e4:	00e12023          	sw	a4,0(sp)
 5e8:	fe1ff06f          	j	5c8 <neorv32_uart0_printf+0x15c>
 5ec:	01549663          	bne	s1,s5,5f8 <neorv32_uart0_printf+0x18c>
 5f0:	00d00513          	li	a0,13
 5f4:	e09ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 5f8:	00140993          	addi	s3,s0,1
 5fc:	00048513          	mv	a0,s1
 600:	f99ff06f          	j	598 <neorv32_uart0_printf+0x12c>

00000604 <neorv32_gpio_available>:
 604:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 608:	01055513          	srli	a0,a0,0x10
 60c:	00157513          	andi	a0,a0,1
 610:	00008067          	ret
 614:	0000                	unimp
 616:	0000                	unimp
 618:	0000                	unimp
 61a:	0000                	unimp
 61c:	0000                	unimp
 61e:	0000                	unimp

00000620 <__neorv32_rte_core>:
 620:	fc010113          	addi	sp,sp,-64
 624:	02112e23          	sw	ra,60(sp)
 628:	02512c23          	sw	t0,56(sp)
 62c:	02612a23          	sw	t1,52(sp)
 630:	02712823          	sw	t2,48(sp)
 634:	02a12623          	sw	a0,44(sp)
 638:	02b12423          	sw	a1,40(sp)
 63c:	02c12223          	sw	a2,36(sp)
 640:	02d12023          	sw	a3,32(sp)
 644:	00e12e23          	sw	a4,28(sp)
 648:	00f12c23          	sw	a5,24(sp)
 64c:	01012a23          	sw	a6,20(sp)
 650:	01112823          	sw	a7,16(sp)
 654:	01c12623          	sw	t3,12(sp)
 658:	01d12423          	sw	t4,8(sp)
 65c:	01e12223          	sw	t5,4(sp)
 660:	01f12023          	sw	t6,0(sp)
 664:	34102773          	csrr	a4,mepc
 668:	34071073          	csrw	mscratch,a4
 66c:	342027f3          	csrr	a5,mcause
 670:	0807ca63          	bltz	a5,704 <__neorv32_rte_core+0xe4>
 674:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f124>
 678:	00300593          	li	a1,3
 67c:	0036f693          	andi	a3,a3,3
 680:	00270613          	addi	a2,a4,2
 684:	00b69463          	bne	a3,a1,68c <__neorv32_rte_core+0x6c>
 688:	00470613          	addi	a2,a4,4
 68c:	34161073          	csrw	mepc,a2
 690:	00b00713          	li	a4,11
 694:	04f77c63          	bgeu	a4,a5,6ec <__neorv32_rte_core+0xcc>
 698:	000017b7          	lui	a5,0x1
 69c:	8a078793          	addi	a5,a5,-1888 # 8a0 <__neorv32_rte_debug_exc_handler>
 6a0:	000780e7          	jalr	a5
 6a4:	03c12083          	lw	ra,60(sp)
 6a8:	03812283          	lw	t0,56(sp)
 6ac:	03412303          	lw	t1,52(sp)
 6b0:	03012383          	lw	t2,48(sp)
 6b4:	02c12503          	lw	a0,44(sp)
 6b8:	02812583          	lw	a1,40(sp)
 6bc:	02412603          	lw	a2,36(sp)
 6c0:	02012683          	lw	a3,32(sp)
 6c4:	01c12703          	lw	a4,28(sp)
 6c8:	01812783          	lw	a5,24(sp)
 6cc:	01412803          	lw	a6,20(sp)
 6d0:	01012883          	lw	a7,16(sp)
 6d4:	00c12e03          	lw	t3,12(sp)
 6d8:	00812e83          	lw	t4,8(sp)
 6dc:	00412f03          	lw	t5,4(sp)
 6e0:	00012f83          	lw	t6,0(sp)
 6e4:	04010113          	addi	sp,sp,64
 6e8:	30200073          	mret
 6ec:	00001737          	lui	a4,0x1
 6f0:	00279793          	slli	a5,a5,0x2
 6f4:	c3470713          	addi	a4,a4,-972 # c34 <symbols.0+0x14>
 6f8:	00e787b3          	add	a5,a5,a4
 6fc:	0007a783          	lw	a5,0(a5)
 700:	00078067          	jr	a5
 704:	80000737          	lui	a4,0x80000
 708:	ffd74713          	xori	a4,a4,-3
 70c:	00e787b3          	add	a5,a5,a4
 710:	01c00713          	li	a4,28
 714:	f8f762e3          	bltu	a4,a5,698 <__neorv32_rte_core+0x78>
 718:	00001737          	lui	a4,0x1
 71c:	00279793          	slli	a5,a5,0x2
 720:	c6470713          	addi	a4,a4,-924 # c64 <symbols.0+0x44>
 724:	00e787b3          	add	a5,a5,a4
 728:	0007a783          	lw	a5,0(a5)
 72c:	00078067          	jr	a5
 730:	800007b7          	lui	a5,0x80000
 734:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 738:	f69ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 73c:	800007b7          	lui	a5,0x80000
 740:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 744:	f5dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 748:	800007b7          	lui	a5,0x80000
 74c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 750:	f51ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 754:	800007b7          	lui	a5,0x80000
 758:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 75c:	f45ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 760:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 764:	f3dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 768:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 76c:	f35ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 770:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 774:	f2dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 778:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 77c:	f25ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 780:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 784:	f1dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 788:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 78c:	f15ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 790:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 794:	f0dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 798:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 79c:	f05ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7a0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 7a4:	efdff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7a8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 7ac:	ef5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7b0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 7b4:	eedff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7b8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 7bc:	ee5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7c0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 7c4:	eddff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7c8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 7cc:	ed5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7d0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 7d4:	ecdff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7d8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 7dc:	ec5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7e0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 7e4:	ebdff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7e8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 7ec:	eb5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7f0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 7f4:	eadff06f          	j	6a0 <__neorv32_rte_core+0x80>
 7f8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 7fc:	ea5ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 800:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 804:	e9dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 808:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 80c:	e95ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 810:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 814:	e8dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 818:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 81c:	e85ff06f          	j	6a0 <__neorv32_rte_core+0x80>
 820:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 824:	e7dff06f          	j	6a0 <__neorv32_rte_core+0x80>
 828:	0000                	unimp
 82a:	0000                	unimp
 82c:	0000                	unimp
 82e:	0000                	unimp

00000830 <__neorv32_rte_print_hex_word>:
 830:	fe010113          	addi	sp,sp,-32
 834:	01212823          	sw	s2,16(sp)
 838:	00050913          	mv	s2,a0
 83c:	00001537          	lui	a0,0x1
 840:	00912a23          	sw	s1,20(sp)
 844:	cd850513          	addi	a0,a0,-808 # cd8 <symbols.0+0xb8>
 848:	000014b7          	lui	s1,0x1
 84c:	00812c23          	sw	s0,24(sp)
 850:	01312623          	sw	s3,12(sp)
 854:	00112e23          	sw	ra,28(sp)
 858:	01c00413          	li	s0,28
 85c:	bb9ff0ef          	jal	ra,414 <neorv32_uart0_print>
 860:	ecc48493          	addi	s1,s1,-308 # ecc <hex_symbols.0>
 864:	ffc00993          	li	s3,-4
 868:	008957b3          	srl	a5,s2,s0
 86c:	00f7f793          	andi	a5,a5,15
 870:	00f487b3          	add	a5,s1,a5
 874:	0007c503          	lbu	a0,0(a5)
 878:	ffc40413          	addi	s0,s0,-4
 87c:	b81ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 880:	ff3414e3          	bne	s0,s3,868 <__neorv32_rte_print_hex_word+0x38>
 884:	01c12083          	lw	ra,28(sp)
 888:	01812403          	lw	s0,24(sp)
 88c:	01412483          	lw	s1,20(sp)
 890:	01012903          	lw	s2,16(sp)
 894:	00c12983          	lw	s3,12(sp)
 898:	02010113          	addi	sp,sp,32
 89c:	00008067          	ret

000008a0 <__neorv32_rte_debug_exc_handler>:
 8a0:	ff010113          	addi	sp,sp,-16
 8a4:	00112623          	sw	ra,12(sp)
 8a8:	00812423          	sw	s0,8(sp)
 8ac:	00912223          	sw	s1,4(sp)
 8b0:	a91ff0ef          	jal	ra,340 <neorv32_uart0_available>
 8b4:	1c050863          	beqz	a0,a84 <__neorv32_rte_debug_exc_handler+0x1e4>
 8b8:	00001537          	lui	a0,0x1
 8bc:	cdc50513          	addi	a0,a0,-804 # cdc <symbols.0+0xbc>
 8c0:	b55ff0ef          	jal	ra,414 <neorv32_uart0_print>
 8c4:	34202473          	csrr	s0,mcause
 8c8:	00900713          	li	a4,9
 8cc:	00f47793          	andi	a5,s0,15
 8d0:	03078493          	addi	s1,a5,48
 8d4:	00f77463          	bgeu	a4,a5,8dc <__neorv32_rte_debug_exc_handler+0x3c>
 8d8:	05778493          	addi	s1,a5,87
 8dc:	00b00793          	li	a5,11
 8e0:	0087ee63          	bltu	a5,s0,8fc <__neorv32_rte_debug_exc_handler+0x5c>
 8e4:	00001737          	lui	a4,0x1
 8e8:	00241793          	slli	a5,s0,0x2
 8ec:	e9c70713          	addi	a4,a4,-356 # e9c <symbols.0+0x27c>
 8f0:	00e787b3          	add	a5,a5,a4
 8f4:	0007a783          	lw	a5,0(a5)
 8f8:	00078067          	jr	a5
 8fc:	800007b7          	lui	a5,0x80000
 900:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 904:	14e40e63          	beq	s0,a4,a60 <__neorv32_rte_debug_exc_handler+0x1c0>
 908:	02876a63          	bltu	a4,s0,93c <__neorv32_rte_debug_exc_handler+0x9c>
 90c:	00378713          	addi	a4,a5,3
 910:	12e40c63          	beq	s0,a4,a48 <__neorv32_rte_debug_exc_handler+0x1a8>
 914:	00778793          	addi	a5,a5,7
 918:	12f40e63          	beq	s0,a5,a54 <__neorv32_rte_debug_exc_handler+0x1b4>
 91c:	00001537          	lui	a0,0x1
 920:	e3c50513          	addi	a0,a0,-452 # e3c <symbols.0+0x21c>
 924:	af1ff0ef          	jal	ra,414 <neorv32_uart0_print>
 928:	00040513          	mv	a0,s0
 92c:	f05ff0ef          	jal	ra,830 <__neorv32_rte_print_hex_word>
 930:	00100793          	li	a5,1
 934:	08f40c63          	beq	s0,a5,9cc <__neorv32_rte_debug_exc_handler+0x12c>
 938:	0280006f          	j	960 <__neorv32_rte_debug_exc_handler+0xc0>
 93c:	ff07c793          	xori	a5,a5,-16
 940:	00f407b3          	add	a5,s0,a5
 944:	00f00713          	li	a4,15
 948:	fcf76ae3          	bltu	a4,a5,91c <__neorv32_rte_debug_exc_handler+0x7c>
 94c:	00001537          	lui	a0,0x1
 950:	e2c50513          	addi	a0,a0,-468 # e2c <symbols.0+0x20c>
 954:	ac1ff0ef          	jal	ra,414 <neorv32_uart0_print>
 958:	00048513          	mv	a0,s1
 95c:	aa1ff0ef          	jal	ra,3fc <neorv32_uart0_putc>
 960:	ffd47413          	andi	s0,s0,-3
 964:	00500793          	li	a5,5
 968:	06f40263          	beq	s0,a5,9cc <__neorv32_rte_debug_exc_handler+0x12c>
 96c:	00001537          	lui	a0,0x1
 970:	e8050513          	addi	a0,a0,-384 # e80 <symbols.0+0x260>
 974:	aa1ff0ef          	jal	ra,414 <neorv32_uart0_print>
 978:	34002573          	csrr	a0,mscratch
 97c:	eb5ff0ef          	jal	ra,830 <__neorv32_rte_print_hex_word>
 980:	00001537          	lui	a0,0x1
 984:	e8850513          	addi	a0,a0,-376 # e88 <symbols.0+0x268>
 988:	a8dff0ef          	jal	ra,414 <neorv32_uart0_print>
 98c:	34302573          	csrr	a0,mtval
 990:	ea1ff0ef          	jal	ra,830 <__neorv32_rte_print_hex_word>
 994:	00812403          	lw	s0,8(sp)
 998:	00c12083          	lw	ra,12(sp)
 99c:	00412483          	lw	s1,4(sp)
 9a0:	00001537          	lui	a0,0x1
 9a4:	e9450513          	addi	a0,a0,-364 # e94 <symbols.0+0x274>
 9a8:	01010113          	addi	sp,sp,16
 9ac:	a69ff06f          	j	414 <neorv32_uart0_print>
 9b0:	00001537          	lui	a0,0x1
 9b4:	ce450513          	addi	a0,a0,-796 # ce4 <symbols.0+0xc4>
 9b8:	a5dff0ef          	jal	ra,414 <neorv32_uart0_print>
 9bc:	fb1ff06f          	j	96c <__neorv32_rte_debug_exc_handler+0xcc>
 9c0:	00001537          	lui	a0,0x1
 9c4:	d0450513          	addi	a0,a0,-764 # d04 <symbols.0+0xe4>
 9c8:	a4dff0ef          	jal	ra,414 <neorv32_uart0_print>
 9cc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 9d0:	0a07d463          	bgez	a5,a78 <__neorv32_rte_debug_exc_handler+0x1d8>
 9d4:	0017f793          	andi	a5,a5,1
 9d8:	08078a63          	beqz	a5,a6c <__neorv32_rte_debug_exc_handler+0x1cc>
 9dc:	00001537          	lui	a0,0x1
 9e0:	e5450513          	addi	a0,a0,-428 # e54 <symbols.0+0x234>
 9e4:	fd5ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 9e8:	00001537          	lui	a0,0x1
 9ec:	d2050513          	addi	a0,a0,-736 # d20 <symbols.0+0x100>
 9f0:	fc9ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 9f4:	00001537          	lui	a0,0x1
 9f8:	d3450513          	addi	a0,a0,-716 # d34 <symbols.0+0x114>
 9fc:	fbdff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a00:	00001537          	lui	a0,0x1
 a04:	d4050513          	addi	a0,a0,-704 # d40 <symbols.0+0x120>
 a08:	fb1ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a0c:	00001537          	lui	a0,0x1
 a10:	d5850513          	addi	a0,a0,-680 # d58 <symbols.0+0x138>
 a14:	fb5ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x128>
 a18:	00001537          	lui	a0,0x1
 a1c:	d6c50513          	addi	a0,a0,-660 # d6c <symbols.0+0x14c>
 a20:	f99ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a24:	00001537          	lui	a0,0x1
 a28:	d8850513          	addi	a0,a0,-632 # d88 <symbols.0+0x168>
 a2c:	f9dff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x128>
 a30:	00001537          	lui	a0,0x1
 a34:	d9c50513          	addi	a0,a0,-612 # d9c <symbols.0+0x17c>
 a38:	f81ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a3c:	00001537          	lui	a0,0x1
 a40:	dbc50513          	addi	a0,a0,-580 # dbc <symbols.0+0x19c>
 a44:	f75ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a48:	00001537          	lui	a0,0x1
 a4c:	ddc50513          	addi	a0,a0,-548 # ddc <symbols.0+0x1bc>
 a50:	f69ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a54:	00001537          	lui	a0,0x1
 a58:	df850513          	addi	a0,a0,-520 # df8 <symbols.0+0x1d8>
 a5c:	f5dff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a60:	00001537          	lui	a0,0x1
 a64:	e1050513          	addi	a0,a0,-496 # e10 <symbols.0+0x1f0>
 a68:	f51ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a6c:	00001537          	lui	a0,0x1
 a70:	e6450513          	addi	a0,a0,-412 # e64 <symbols.0+0x244>
 a74:	f45ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a78:	00001537          	lui	a0,0x1
 a7c:	e7450513          	addi	a0,a0,-396 # e74 <symbols.0+0x254>
 a80:	f39ff06f          	j	9b8 <__neorv32_rte_debug_exc_handler+0x118>
 a84:	00c12083          	lw	ra,12(sp)
 a88:	00812403          	lw	s0,8(sp)
 a8c:	00412483          	lw	s1,4(sp)
 a90:	01010113          	addi	sp,sp,16
 a94:	00008067          	ret

00000a98 <neorv32_rte_exception_uninstall>:
 a98:	01f00793          	li	a5,31
 a9c:	02a7e463          	bltu	a5,a0,ac4 <neorv32_rte_exception_uninstall+0x2c>
 aa0:	800007b7          	lui	a5,0x80000
 aa4:	00078793          	mv	a5,a5
 aa8:	00251513          	slli	a0,a0,0x2
 aac:	00a78533          	add	a0,a5,a0
 ab0:	000017b7          	lui	a5,0x1
 ab4:	8a078793          	addi	a5,a5,-1888 # 8a0 <__neorv32_rte_debug_exc_handler>
 ab8:	00f52023          	sw	a5,0(a0)
 abc:	00000513          	li	a0,0
 ac0:	00008067          	ret
 ac4:	00100513          	li	a0,1
 ac8:	00008067          	ret

00000acc <neorv32_rte_setup>:
 acc:	ff010113          	addi	sp,sp,-16
 ad0:	00112623          	sw	ra,12(sp)
 ad4:	00812423          	sw	s0,8(sp)
 ad8:	00912223          	sw	s1,4(sp)
 adc:	62000793          	li	a5,1568
 ae0:	30579073          	csrw	mtvec,a5
 ae4:	00000413          	li	s0,0
 ae8:	01d00493          	li	s1,29
 aec:	00040513          	mv	a0,s0
 af0:	00140413          	addi	s0,s0,1
 af4:	0ff47413          	andi	s0,s0,255
 af8:	fa1ff0ef          	jal	ra,a98 <neorv32_rte_exception_uninstall>
 afc:	fe9418e3          	bne	s0,s1,aec <neorv32_rte_setup+0x20>
 b00:	00c12083          	lw	ra,12(sp)
 b04:	00812403          	lw	s0,8(sp)
 b08:	00412483          	lw	s1,4(sp)
 b0c:	01010113          	addi	sp,sp,16
 b10:	00008067          	ret

00000b14 <__divsi3>:
 b14:	06054063          	bltz	a0,b74 <__umodsi3+0x10>
 b18:	0605c663          	bltz	a1,b84 <__umodsi3+0x20>

00000b1c <__udivsi3>:
 b1c:	00058613          	mv	a2,a1
 b20:	00050593          	mv	a1,a0
 b24:	fff00513          	li	a0,-1
 b28:	02060c63          	beqz	a2,b60 <__udivsi3+0x44>
 b2c:	00100693          	li	a3,1
 b30:	00b67a63          	bgeu	a2,a1,b44 <__udivsi3+0x28>
 b34:	00c05863          	blez	a2,b44 <__udivsi3+0x28>
 b38:	00161613          	slli	a2,a2,0x1
 b3c:	00169693          	slli	a3,a3,0x1
 b40:	feb66ae3          	bltu	a2,a1,b34 <__udivsi3+0x18>
 b44:	00000513          	li	a0,0
 b48:	00c5e663          	bltu	a1,a2,b54 <__udivsi3+0x38>
 b4c:	40c585b3          	sub	a1,a1,a2
 b50:	00d56533          	or	a0,a0,a3
 b54:	0016d693          	srli	a3,a3,0x1
 b58:	00165613          	srli	a2,a2,0x1
 b5c:	fe0696e3          	bnez	a3,b48 <__udivsi3+0x2c>
 b60:	00008067          	ret

00000b64 <__umodsi3>:
 b64:	00008293          	mv	t0,ra
 b68:	fb5ff0ef          	jal	ra,b1c <__udivsi3>
 b6c:	00058513          	mv	a0,a1
 b70:	00028067          	jr	t0
 b74:	40a00533          	neg	a0,a0
 b78:	00b04863          	bgtz	a1,b88 <__umodsi3+0x24>
 b7c:	40b005b3          	neg	a1,a1
 b80:	f9dff06f          	j	b1c <__udivsi3>
 b84:	40b005b3          	neg	a1,a1
 b88:	00008293          	mv	t0,ra
 b8c:	f91ff0ef          	jal	ra,b1c <__udivsi3>
 b90:	40a00533          	neg	a0,a0
 b94:	00028067          	jr	t0

00000b98 <__modsi3>:
 b98:	00008293          	mv	t0,ra
 b9c:	0005ca63          	bltz	a1,bb0 <__modsi3+0x18>
 ba0:	00054c63          	bltz	a0,bb8 <__modsi3+0x20>
 ba4:	f79ff0ef          	jal	ra,b1c <__udivsi3>
 ba8:	00058513          	mv	a0,a1
 bac:	00028067          	jr	t0
 bb0:	40b005b3          	neg	a1,a1
 bb4:	fe0558e3          	bgez	a0,ba4 <__modsi3+0xc>
 bb8:	40a00533          	neg	a0,a0
 bbc:	f61ff0ef          	jal	ra,b1c <__udivsi3>
 bc0:	40b00533          	neg	a0,a1
 bc4:	00028067          	jr	t0
