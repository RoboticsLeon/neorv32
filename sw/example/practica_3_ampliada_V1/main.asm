
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
  e0:	f4458593          	addi	a1,a1,-188 # 1020 <__crt0_copy_data_src_begin>
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
 184:	fd010113          	addi	sp,sp,-48
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3ae0>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	01412c23          	sw	s4,24(sp)
 1ac:	01512a23          	sw	s5,20(sp)
 1b0:	01612823          	sw	s6,16(sp)
 1b4:	01712623          	sw	s7,12(sp)
 1b8:	01812423          	sw	s8,8(sp)
 1bc:	26c000ef          	jal	ra,428 <neorv32_uart0_setup>
 1c0:	51c000ef          	jal	ra,6dc <neorv32_gpio_available>
 1c4:	04051263          	bnez	a0,208 <main+0x88>
 1c8:	00001537          	lui	a0,0x1
 1cc:	c9850513          	addi	a0,a0,-872 # c98 <__etext>
 1d0:	31c000ef          	jal	ra,4ec <neorv32_uart0_print>
 1d4:	00100513          	li	a0,1
 1d8:	02c12083          	lw	ra,44(sp)
 1dc:	02812403          	lw	s0,40(sp)
 1e0:	02412483          	lw	s1,36(sp)
 1e4:	02012903          	lw	s2,32(sp)
 1e8:	01c12983          	lw	s3,28(sp)
 1ec:	01812a03          	lw	s4,24(sp)
 1f0:	01412a83          	lw	s5,20(sp)
 1f4:	01012b03          	lw	s6,16(sp)
 1f8:	00c12b83          	lw	s7,12(sp)
 1fc:	00812c03          	lw	s8,8(sp)
 200:	03010113          	addi	sp,sp,48
 204:	00008067          	ret
 208:	195000ef          	jal	ra,b9c <neorv32_rte_setup>
 20c:	00001537          	lui	a0,0x1
 210:	cbc50513          	addi	a0,a0,-836 # cbc <__etext+0x24>
 214:	2d8000ef          	jal	ra,4ec <neorv32_uart0_print>
 218:	800107b7          	lui	a5,0x80010
 21c:	35200713          	li	a4,850
 220:	00e7a023          	sw	a4,0(a5) # 80010000 <__ctr0_io_space_begin+0x80010200>
 224:	1f400713          	li	a4,500
 228:	00478793          	addi	a5,a5,4
 22c:	00e7a023          	sw	a4,0(a5)
 230:	800104b7          	lui	s1,0x80010
 234:	00000413          	li	s0,0
 238:	00848913          	addi	s2,s1,8 # 80010008 <__ctr0_io_space_begin+0x80010208>
 23c:	00001a37          	lui	s4,0x1
 240:	00001ab7          	lui	s5,0x1
 244:	00001b37          	lui	s6,0x1
 248:	00001bb7          	lui	s7,0x1
 24c:	00001c37          	lui	s8,0x1
 250:	000019b7          	lui	s3,0x1
 254:	00892023          	sw	s0,0(s2)
 258:	0004a583          	lw	a1,0(s1)
 25c:	cd4a0513          	addi	a0,s4,-812 # cd4 <__etext+0x3c>
 260:	2e4000ef          	jal	ra,544 <neorv32_uart0_printf>
 264:	00448593          	addi	a1,s1,4
 268:	0005a583          	lw	a1,0(a1)
 26c:	ce4a8513          	addi	a0,s5,-796 # ce4 <__etext+0x4c>
 270:	2d4000ef          	jal	ra,544 <neorv32_uart0_printf>
 274:	00092783          	lw	a5,0(s2)
 278:	00100713          	li	a4,1
 27c:	04e78263          	beq	a5,a4,2c0 <main+0x140>
 280:	00200713          	li	a4,2
 284:	04e78463          	beq	a5,a4,2cc <main+0x14c>
 288:	cf4c0513          	addi	a0,s8,-780 # cf4 <__etext+0x5c>
 28c:	02078c63          	beqz	a5,2c4 <main+0x144>
 290:	00c48593          	addi	a1,s1,12
 294:	0005a583          	lw	a1,0(a1)
 298:	d2c98513          	addi	a0,s3,-724 # d2c <__etext+0x94>
 29c:	2a8000ef          	jal	ra,544 <neorv32_uart0_printf>
 2a0:	00001537          	lui	a0,0x1
 2a4:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0xa4>
 2a8:	244000ef          	jal	ra,4ec <neorv32_uart0_print>
 2ac:	00140413          	addi	s0,s0,1
 2b0:	00300793          	li	a5,3
 2b4:	faf410e3          	bne	s0,a5,254 <main+0xd4>
 2b8:	00000513          	li	a0,0
 2bc:	f1dff06f          	j	1d8 <main+0x58>
 2c0:	d04b0513          	addi	a0,s6,-764 # d04 <__etext+0x6c>
 2c4:	228000ef          	jal	ra,4ec <neorv32_uart0_print>
 2c8:	fc9ff06f          	j	290 <main+0x110>
 2cc:	d14b8513          	addi	a0,s7,-748 # d14 <__etext+0x7c>
 2d0:	ff5ff06f          	j	2c4 <main+0x144>

000002d4 <__neorv32_uart_itoa>:
 2d4:	fd010113          	addi	sp,sp,-48
 2d8:	02812423          	sw	s0,40(sp)
 2dc:	02912223          	sw	s1,36(sp)
 2e0:	03212023          	sw	s2,32(sp)
 2e4:	01312e23          	sw	s3,28(sp)
 2e8:	01412c23          	sw	s4,24(sp)
 2ec:	02112623          	sw	ra,44(sp)
 2f0:	01512a23          	sw	s5,20(sp)
 2f4:	00001a37          	lui	s4,0x1
 2f8:	00050493          	mv	s1,a0
 2fc:	00058413          	mv	s0,a1
 300:	00058523          	sb	zero,10(a1)
 304:	00000993          	li	s3,0
 308:	00410913          	addi	s2,sp,4
 30c:	d58a0a13          	addi	s4,s4,-680 # d58 <numbers.1>
 310:	00a00593          	li	a1,10
 314:	00048513          	mv	a0,s1
 318:	11d000ef          	jal	ra,c34 <__umodsi3>
 31c:	00aa0533          	add	a0,s4,a0
 320:	00054783          	lbu	a5,0(a0)
 324:	01390ab3          	add	s5,s2,s3
 328:	00048513          	mv	a0,s1
 32c:	00fa8023          	sb	a5,0(s5)
 330:	00a00593          	li	a1,10
 334:	0b9000ef          	jal	ra,bec <__udivsi3>
 338:	00198993          	addi	s3,s3,1
 33c:	00a00793          	li	a5,10
 340:	00050493          	mv	s1,a0
 344:	fcf996e3          	bne	s3,a5,310 <__neorv32_uart_itoa+0x3c>
 348:	00090693          	mv	a3,s2
 34c:	00900713          	li	a4,9
 350:	03000613          	li	a2,48
 354:	0096c583          	lbu	a1,9(a3)
 358:	00070793          	mv	a5,a4
 35c:	fff70713          	addi	a4,a4,-1
 360:	01071713          	slli	a4,a4,0x10
 364:	01075713          	srli	a4,a4,0x10
 368:	00c59a63          	bne	a1,a2,37c <__neorv32_uart_itoa+0xa8>
 36c:	000684a3          	sb	zero,9(a3)
 370:	fff68693          	addi	a3,a3,-1
 374:	fe0710e3          	bnez	a4,354 <__neorv32_uart_itoa+0x80>
 378:	00000793          	li	a5,0
 37c:	00f907b3          	add	a5,s2,a5
 380:	00000593          	li	a1,0
 384:	0007c703          	lbu	a4,0(a5)
 388:	00070c63          	beqz	a4,3a0 <__neorv32_uart_itoa+0xcc>
 38c:	00158693          	addi	a3,a1,1
 390:	00b405b3          	add	a1,s0,a1
 394:	00e58023          	sb	a4,0(a1)
 398:	01069593          	slli	a1,a3,0x10
 39c:	0105d593          	srli	a1,a1,0x10
 3a0:	fff78713          	addi	a4,a5,-1
 3a4:	02f91863          	bne	s2,a5,3d4 <__neorv32_uart_itoa+0x100>
 3a8:	00b40433          	add	s0,s0,a1
 3ac:	00040023          	sb	zero,0(s0)
 3b0:	02c12083          	lw	ra,44(sp)
 3b4:	02812403          	lw	s0,40(sp)
 3b8:	02412483          	lw	s1,36(sp)
 3bc:	02012903          	lw	s2,32(sp)
 3c0:	01c12983          	lw	s3,28(sp)
 3c4:	01812a03          	lw	s4,24(sp)
 3c8:	01412a83          	lw	s5,20(sp)
 3cc:	03010113          	addi	sp,sp,48
 3d0:	00008067          	ret
 3d4:	00070793          	mv	a5,a4
 3d8:	fadff06f          	j	384 <__neorv32_uart_itoa+0xb0>

000003dc <__neorv32_uart_tohex>:
 3dc:	00001637          	lui	a2,0x1
 3e0:	00758693          	addi	a3,a1,7
 3e4:	00000713          	li	a4,0
 3e8:	d6460613          	addi	a2,a2,-668 # d64 <symbols.0>
 3ec:	02000813          	li	a6,32
 3f0:	00e557b3          	srl	a5,a0,a4
 3f4:	00f7f793          	andi	a5,a5,15
 3f8:	00f607b3          	add	a5,a2,a5
 3fc:	0007c783          	lbu	a5,0(a5)
 400:	00470713          	addi	a4,a4,4
 404:	fff68693          	addi	a3,a3,-1
 408:	00f680a3          	sb	a5,1(a3)
 40c:	ff0712e3          	bne	a4,a6,3f0 <__neorv32_uart_tohex+0x14>
 410:	00058423          	sb	zero,8(a1)
 414:	00008067          	ret

00000418 <neorv32_uart0_available>:
 418:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 41c:	01255513          	srli	a0,a0,0x12
 420:	00157513          	andi	a0,a0,1
 424:	00008067          	ret

00000428 <neorv32_uart0_setup>:
 428:	ff010113          	addi	sp,sp,-16
 42c:	00812423          	sw	s0,8(sp)
 430:	00912223          	sw	s1,4(sp)
 434:	00112623          	sw	ra,12(sp)
 438:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 43c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 440:	00058413          	mv	s0,a1
 444:	00151593          	slli	a1,a0,0x1
 448:	00078513          	mv	a0,a5
 44c:	00060493          	mv	s1,a2
 450:	79c000ef          	jal	ra,bec <__udivsi3>
 454:	01051513          	slli	a0,a0,0x10
 458:	000017b7          	lui	a5,0x1
 45c:	01055513          	srli	a0,a0,0x10
 460:	00000713          	li	a4,0
 464:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x29a>
 468:	04a7e463          	bltu	a5,a0,4b0 <neorv32_uart0_setup+0x88>
 46c:	0034f793          	andi	a5,s1,3
 470:	00347413          	andi	s0,s0,3
 474:	fff50513          	addi	a0,a0,-1
 478:	01479793          	slli	a5,a5,0x14
 47c:	01641413          	slli	s0,s0,0x16
 480:	00f567b3          	or	a5,a0,a5
 484:	0087e7b3          	or	a5,a5,s0
 488:	01871713          	slli	a4,a4,0x18
 48c:	00c12083          	lw	ra,12(sp)
 490:	00812403          	lw	s0,8(sp)
 494:	00e7e7b3          	or	a5,a5,a4
 498:	10000737          	lui	a4,0x10000
 49c:	00e7e7b3          	or	a5,a5,a4
 4a0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4a4:	00412483          	lw	s1,4(sp)
 4a8:	01010113          	addi	sp,sp,16
 4ac:	00008067          	ret
 4b0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffefde>
 4b4:	0fd6f693          	andi	a3,a3,253
 4b8:	00069a63          	bnez	a3,4cc <neorv32_uart0_setup+0xa4>
 4bc:	00355513          	srli	a0,a0,0x3
 4c0:	00170713          	addi	a4,a4,1
 4c4:	0ff77713          	andi	a4,a4,255
 4c8:	fa1ff06f          	j	468 <neorv32_uart0_setup+0x40>
 4cc:	00155513          	srli	a0,a0,0x1
 4d0:	ff1ff06f          	j	4c0 <neorv32_uart0_setup+0x98>

000004d4 <neorv32_uart0_putc>:
 4d4:	00040737          	lui	a4,0x40
 4d8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4dc:	00e7f7b3          	and	a5,a5,a4
 4e0:	fe079ce3          	bnez	a5,4d8 <neorv32_uart0_putc+0x4>
 4e4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4e8:	00008067          	ret

000004ec <neorv32_uart0_print>:
 4ec:	ff010113          	addi	sp,sp,-16
 4f0:	00812423          	sw	s0,8(sp)
 4f4:	01212023          	sw	s2,0(sp)
 4f8:	00112623          	sw	ra,12(sp)
 4fc:	00912223          	sw	s1,4(sp)
 500:	00050413          	mv	s0,a0
 504:	00a00913          	li	s2,10
 508:	00044483          	lbu	s1,0(s0)
 50c:	00140413          	addi	s0,s0,1
 510:	00049e63          	bnez	s1,52c <neorv32_uart0_print+0x40>
 514:	00c12083          	lw	ra,12(sp)
 518:	00812403          	lw	s0,8(sp)
 51c:	00412483          	lw	s1,4(sp)
 520:	00012903          	lw	s2,0(sp)
 524:	01010113          	addi	sp,sp,16
 528:	00008067          	ret
 52c:	01249663          	bne	s1,s2,538 <neorv32_uart0_print+0x4c>
 530:	00d00513          	li	a0,13
 534:	fa1ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 538:	00048513          	mv	a0,s1
 53c:	f99ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 540:	fc9ff06f          	j	508 <neorv32_uart0_print+0x1c>

00000544 <neorv32_uart0_printf>:
 544:	fa010113          	addi	sp,sp,-96
 548:	04f12a23          	sw	a5,84(sp)
 54c:	04410793          	addi	a5,sp,68
 550:	02812c23          	sw	s0,56(sp)
 554:	03212823          	sw	s2,48(sp)
 558:	03412423          	sw	s4,40(sp)
 55c:	03512223          	sw	s5,36(sp)
 560:	03612023          	sw	s6,32(sp)
 564:	01712e23          	sw	s7,28(sp)
 568:	01812c23          	sw	s8,24(sp)
 56c:	01912a23          	sw	s9,20(sp)
 570:	02112e23          	sw	ra,60(sp)
 574:	02912a23          	sw	s1,52(sp)
 578:	03312623          	sw	s3,44(sp)
 57c:	00050413          	mv	s0,a0
 580:	04b12223          	sw	a1,68(sp)
 584:	04c12423          	sw	a2,72(sp)
 588:	04d12623          	sw	a3,76(sp)
 58c:	04e12823          	sw	a4,80(sp)
 590:	05012c23          	sw	a6,88(sp)
 594:	05112e23          	sw	a7,92(sp)
 598:	00f12023          	sw	a5,0(sp)
 59c:	02500a13          	li	s4,37
 5a0:	00a00a93          	li	s5,10
 5a4:	07300913          	li	s2,115
 5a8:	07500b13          	li	s6,117
 5ac:	07800b93          	li	s7,120
 5b0:	06300c13          	li	s8,99
 5b4:	06900c93          	li	s9,105
 5b8:	00044483          	lbu	s1,0(s0)
 5bc:	02049c63          	bnez	s1,5f4 <neorv32_uart0_printf+0xb0>
 5c0:	03c12083          	lw	ra,60(sp)
 5c4:	03812403          	lw	s0,56(sp)
 5c8:	03412483          	lw	s1,52(sp)
 5cc:	03012903          	lw	s2,48(sp)
 5d0:	02c12983          	lw	s3,44(sp)
 5d4:	02812a03          	lw	s4,40(sp)
 5d8:	02412a83          	lw	s5,36(sp)
 5dc:	02012b03          	lw	s6,32(sp)
 5e0:	01c12b83          	lw	s7,28(sp)
 5e4:	01812c03          	lw	s8,24(sp)
 5e8:	01412c83          	lw	s9,20(sp)
 5ec:	06010113          	addi	sp,sp,96
 5f0:	00008067          	ret
 5f4:	0d449863          	bne	s1,s4,6c4 <neorv32_uart0_printf+0x180>
 5f8:	00240993          	addi	s3,s0,2
 5fc:	00144403          	lbu	s0,1(s0)
 600:	05240263          	beq	s0,s2,644 <neorv32_uart0_printf+0x100>
 604:	00896e63          	bltu	s2,s0,620 <neorv32_uart0_printf+0xdc>
 608:	05840c63          	beq	s0,s8,660 <neorv32_uart0_printf+0x11c>
 60c:	07940663          	beq	s0,s9,678 <neorv32_uart0_printf+0x134>
 610:	02500513          	li	a0,37
 614:	ec1ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 618:	00040513          	mv	a0,s0
 61c:	0540006f          	j	670 <neorv32_uart0_printf+0x12c>
 620:	09640663          	beq	s0,s6,6ac <neorv32_uart0_printf+0x168>
 624:	ff7416e3          	bne	s0,s7,610 <neorv32_uart0_printf+0xcc>
 628:	00012783          	lw	a5,0(sp)
 62c:	00410593          	addi	a1,sp,4
 630:	0007a503          	lw	a0,0(a5)
 634:	00478713          	addi	a4,a5,4
 638:	00e12023          	sw	a4,0(sp)
 63c:	da1ff0ef          	jal	ra,3dc <__neorv32_uart_tohex>
 640:	0640006f          	j	6a4 <neorv32_uart0_printf+0x160>
 644:	00012783          	lw	a5,0(sp)
 648:	0007a503          	lw	a0,0(a5)
 64c:	00478713          	addi	a4,a5,4
 650:	00e12023          	sw	a4,0(sp)
 654:	e99ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 658:	00098413          	mv	s0,s3
 65c:	f5dff06f          	j	5b8 <neorv32_uart0_printf+0x74>
 660:	00012783          	lw	a5,0(sp)
 664:	0007c503          	lbu	a0,0(a5)
 668:	00478713          	addi	a4,a5,4
 66c:	00e12023          	sw	a4,0(sp)
 670:	e65ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 674:	fe5ff06f          	j	658 <neorv32_uart0_printf+0x114>
 678:	00012783          	lw	a5,0(sp)
 67c:	0007a403          	lw	s0,0(a5)
 680:	00478713          	addi	a4,a5,4
 684:	00e12023          	sw	a4,0(sp)
 688:	00045863          	bgez	s0,698 <neorv32_uart0_printf+0x154>
 68c:	02d00513          	li	a0,45
 690:	40800433          	neg	s0,s0
 694:	e41ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 698:	00410593          	addi	a1,sp,4
 69c:	00040513          	mv	a0,s0
 6a0:	c35ff0ef          	jal	ra,2d4 <__neorv32_uart_itoa>
 6a4:	00410513          	addi	a0,sp,4
 6a8:	fadff06f          	j	654 <neorv32_uart0_printf+0x110>
 6ac:	00012783          	lw	a5,0(sp)
 6b0:	00410593          	addi	a1,sp,4
 6b4:	00478713          	addi	a4,a5,4
 6b8:	0007a503          	lw	a0,0(a5)
 6bc:	00e12023          	sw	a4,0(sp)
 6c0:	fe1ff06f          	j	6a0 <neorv32_uart0_printf+0x15c>
 6c4:	01549663          	bne	s1,s5,6d0 <neorv32_uart0_printf+0x18c>
 6c8:	00d00513          	li	a0,13
 6cc:	e09ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 6d0:	00140993          	addi	s3,s0,1
 6d4:	00048513          	mv	a0,s1
 6d8:	f99ff06f          	j	670 <neorv32_uart0_printf+0x12c>

000006dc <neorv32_gpio_available>:
 6dc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 6e0:	01055513          	srli	a0,a0,0x10
 6e4:	00157513          	andi	a0,a0,1
 6e8:	00008067          	ret
 6ec:	0000                	unimp
 6ee:	0000                	unimp

000006f0 <__neorv32_rte_core>:
 6f0:	fc010113          	addi	sp,sp,-64
 6f4:	02112e23          	sw	ra,60(sp)
 6f8:	02512c23          	sw	t0,56(sp)
 6fc:	02612a23          	sw	t1,52(sp)
 700:	02712823          	sw	t2,48(sp)
 704:	02a12623          	sw	a0,44(sp)
 708:	02b12423          	sw	a1,40(sp)
 70c:	02c12223          	sw	a2,36(sp)
 710:	02d12023          	sw	a3,32(sp)
 714:	00e12e23          	sw	a4,28(sp)
 718:	00f12c23          	sw	a5,24(sp)
 71c:	01012a23          	sw	a6,20(sp)
 720:	01112823          	sw	a7,16(sp)
 724:	01c12623          	sw	t3,12(sp)
 728:	01d12423          	sw	t4,8(sp)
 72c:	01e12223          	sw	t5,4(sp)
 730:	01f12023          	sw	t6,0(sp)
 734:	34102773          	csrr	a4,mepc
 738:	34071073          	csrw	mscratch,a4
 73c:	342027f3          	csrr	a5,mcause
 740:	0807ca63          	bltz	a5,7d4 <__neorv32_rte_core+0xe4>
 744:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3efe0>
 748:	00300593          	li	a1,3
 74c:	0036f693          	andi	a3,a3,3
 750:	00270613          	addi	a2,a4,2
 754:	00b69463          	bne	a3,a1,75c <__neorv32_rte_core+0x6c>
 758:	00470613          	addi	a2,a4,4
 75c:	34161073          	csrw	mepc,a2
 760:	00b00713          	li	a4,11
 764:	04f77c63          	bgeu	a4,a5,7bc <__neorv32_rte_core+0xcc>
 768:	000017b7          	lui	a5,0x1
 76c:	97078793          	addi	a5,a5,-1680 # 970 <__neorv32_rte_debug_exc_handler>
 770:	000780e7          	jalr	a5
 774:	03c12083          	lw	ra,60(sp)
 778:	03812283          	lw	t0,56(sp)
 77c:	03412303          	lw	t1,52(sp)
 780:	03012383          	lw	t2,48(sp)
 784:	02c12503          	lw	a0,44(sp)
 788:	02812583          	lw	a1,40(sp)
 78c:	02412603          	lw	a2,36(sp)
 790:	02012683          	lw	a3,32(sp)
 794:	01c12703          	lw	a4,28(sp)
 798:	01812783          	lw	a5,24(sp)
 79c:	01412803          	lw	a6,20(sp)
 7a0:	01012883          	lw	a7,16(sp)
 7a4:	00c12e03          	lw	t3,12(sp)
 7a8:	00812e83          	lw	t4,8(sp)
 7ac:	00412f03          	lw	t5,4(sp)
 7b0:	00012f83          	lw	t6,0(sp)
 7b4:	04010113          	addi	sp,sp,64
 7b8:	30200073          	mret
 7bc:	00001737          	lui	a4,0x1
 7c0:	00279793          	slli	a5,a5,0x2
 7c4:	d7870713          	addi	a4,a4,-648 # d78 <symbols.0+0x14>
 7c8:	00e787b3          	add	a5,a5,a4
 7cc:	0007a783          	lw	a5,0(a5)
 7d0:	00078067          	jr	a5
 7d4:	80000737          	lui	a4,0x80000
 7d8:	ffd74713          	xori	a4,a4,-3
 7dc:	00e787b3          	add	a5,a5,a4
 7e0:	01c00713          	li	a4,28
 7e4:	f8f762e3          	bltu	a4,a5,768 <__neorv32_rte_core+0x78>
 7e8:	00001737          	lui	a4,0x1
 7ec:	00279793          	slli	a5,a5,0x2
 7f0:	da870713          	addi	a4,a4,-600 # da8 <symbols.0+0x44>
 7f4:	00e787b3          	add	a5,a5,a4
 7f8:	0007a783          	lw	a5,0(a5)
 7fc:	00078067          	jr	a5
 800:	800007b7          	lui	a5,0x80000
 804:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 808:	f69ff06f          	j	770 <__neorv32_rte_core+0x80>
 80c:	800007b7          	lui	a5,0x80000
 810:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 814:	f5dff06f          	j	770 <__neorv32_rte_core+0x80>
 818:	800007b7          	lui	a5,0x80000
 81c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 820:	f51ff06f          	j	770 <__neorv32_rte_core+0x80>
 824:	800007b7          	lui	a5,0x80000
 828:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 82c:	f45ff06f          	j	770 <__neorv32_rte_core+0x80>
 830:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 834:	f3dff06f          	j	770 <__neorv32_rte_core+0x80>
 838:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 83c:	f35ff06f          	j	770 <__neorv32_rte_core+0x80>
 840:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 844:	f2dff06f          	j	770 <__neorv32_rte_core+0x80>
 848:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 84c:	f25ff06f          	j	770 <__neorv32_rte_core+0x80>
 850:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 854:	f1dff06f          	j	770 <__neorv32_rte_core+0x80>
 858:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 85c:	f15ff06f          	j	770 <__neorv32_rte_core+0x80>
 860:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 864:	f0dff06f          	j	770 <__neorv32_rte_core+0x80>
 868:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 86c:	f05ff06f          	j	770 <__neorv32_rte_core+0x80>
 870:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 874:	efdff06f          	j	770 <__neorv32_rte_core+0x80>
 878:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 87c:	ef5ff06f          	j	770 <__neorv32_rte_core+0x80>
 880:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 884:	eedff06f          	j	770 <__neorv32_rte_core+0x80>
 888:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 88c:	ee5ff06f          	j	770 <__neorv32_rte_core+0x80>
 890:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 894:	eddff06f          	j	770 <__neorv32_rte_core+0x80>
 898:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 89c:	ed5ff06f          	j	770 <__neorv32_rte_core+0x80>
 8a0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 8a4:	ecdff06f          	j	770 <__neorv32_rte_core+0x80>
 8a8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 8ac:	ec5ff06f          	j	770 <__neorv32_rte_core+0x80>
 8b0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 8b4:	ebdff06f          	j	770 <__neorv32_rte_core+0x80>
 8b8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 8bc:	eb5ff06f          	j	770 <__neorv32_rte_core+0x80>
 8c0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 8c4:	eadff06f          	j	770 <__neorv32_rte_core+0x80>
 8c8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 8cc:	ea5ff06f          	j	770 <__neorv32_rte_core+0x80>
 8d0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 8d4:	e9dff06f          	j	770 <__neorv32_rte_core+0x80>
 8d8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 8dc:	e95ff06f          	j	770 <__neorv32_rte_core+0x80>
 8e0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 8e4:	e8dff06f          	j	770 <__neorv32_rte_core+0x80>
 8e8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 8ec:	e85ff06f          	j	770 <__neorv32_rte_core+0x80>
 8f0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 8f4:	e7dff06f          	j	770 <__neorv32_rte_core+0x80>
 8f8:	0000                	unimp
 8fa:	0000                	unimp
 8fc:	0000                	unimp
 8fe:	0000                	unimp

00000900 <__neorv32_rte_print_hex_word>:
 900:	fe010113          	addi	sp,sp,-32
 904:	01212823          	sw	s2,16(sp)
 908:	00050913          	mv	s2,a0
 90c:	00001537          	lui	a0,0x1
 910:	00912a23          	sw	s1,20(sp)
 914:	e1c50513          	addi	a0,a0,-484 # e1c <symbols.0+0xb8>
 918:	000014b7          	lui	s1,0x1
 91c:	00812c23          	sw	s0,24(sp)
 920:	01312623          	sw	s3,12(sp)
 924:	00112e23          	sw	ra,28(sp)
 928:	01c00413          	li	s0,28
 92c:	bc1ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 930:	01048493          	addi	s1,s1,16 # 1010 <hex_symbols.0>
 934:	ffc00993          	li	s3,-4
 938:	008957b3          	srl	a5,s2,s0
 93c:	00f7f793          	andi	a5,a5,15
 940:	00f487b3          	add	a5,s1,a5
 944:	0007c503          	lbu	a0,0(a5)
 948:	ffc40413          	addi	s0,s0,-4
 94c:	b89ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 950:	ff3414e3          	bne	s0,s3,938 <__neorv32_rte_print_hex_word+0x38>
 954:	01c12083          	lw	ra,28(sp)
 958:	01812403          	lw	s0,24(sp)
 95c:	01412483          	lw	s1,20(sp)
 960:	01012903          	lw	s2,16(sp)
 964:	00c12983          	lw	s3,12(sp)
 968:	02010113          	addi	sp,sp,32
 96c:	00008067          	ret

00000970 <__neorv32_rte_debug_exc_handler>:
 970:	ff010113          	addi	sp,sp,-16
 974:	00112623          	sw	ra,12(sp)
 978:	00812423          	sw	s0,8(sp)
 97c:	00912223          	sw	s1,4(sp)
 980:	a99ff0ef          	jal	ra,418 <neorv32_uart0_available>
 984:	1c050863          	beqz	a0,b54 <__neorv32_rte_debug_exc_handler+0x1e4>
 988:	00001537          	lui	a0,0x1
 98c:	e2050513          	addi	a0,a0,-480 # e20 <symbols.0+0xbc>
 990:	b5dff0ef          	jal	ra,4ec <neorv32_uart0_print>
 994:	34202473          	csrr	s0,mcause
 998:	00900713          	li	a4,9
 99c:	00f47793          	andi	a5,s0,15
 9a0:	03078493          	addi	s1,a5,48
 9a4:	00f77463          	bgeu	a4,a5,9ac <__neorv32_rte_debug_exc_handler+0x3c>
 9a8:	05778493          	addi	s1,a5,87
 9ac:	00b00793          	li	a5,11
 9b0:	0087ee63          	bltu	a5,s0,9cc <__neorv32_rte_debug_exc_handler+0x5c>
 9b4:	00001737          	lui	a4,0x1
 9b8:	00241793          	slli	a5,s0,0x2
 9bc:	fe070713          	addi	a4,a4,-32 # fe0 <symbols.0+0x27c>
 9c0:	00e787b3          	add	a5,a5,a4
 9c4:	0007a783          	lw	a5,0(a5)
 9c8:	00078067          	jr	a5
 9cc:	800007b7          	lui	a5,0x80000
 9d0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 9d4:	14e40e63          	beq	s0,a4,b30 <__neorv32_rte_debug_exc_handler+0x1c0>
 9d8:	02876a63          	bltu	a4,s0,a0c <__neorv32_rte_debug_exc_handler+0x9c>
 9dc:	00378713          	addi	a4,a5,3
 9e0:	12e40c63          	beq	s0,a4,b18 <__neorv32_rte_debug_exc_handler+0x1a8>
 9e4:	00778793          	addi	a5,a5,7
 9e8:	12f40e63          	beq	s0,a5,b24 <__neorv32_rte_debug_exc_handler+0x1b4>
 9ec:	00001537          	lui	a0,0x1
 9f0:	f8050513          	addi	a0,a0,-128 # f80 <symbols.0+0x21c>
 9f4:	af9ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 9f8:	00040513          	mv	a0,s0
 9fc:	f05ff0ef          	jal	ra,900 <__neorv32_rte_print_hex_word>
 a00:	00100793          	li	a5,1
 a04:	08f40c63          	beq	s0,a5,a9c <__neorv32_rte_debug_exc_handler+0x12c>
 a08:	0280006f          	j	a30 <__neorv32_rte_debug_exc_handler+0xc0>
 a0c:	ff07c793          	xori	a5,a5,-16
 a10:	00f407b3          	add	a5,s0,a5
 a14:	00f00713          	li	a4,15
 a18:	fcf76ae3          	bltu	a4,a5,9ec <__neorv32_rte_debug_exc_handler+0x7c>
 a1c:	00001537          	lui	a0,0x1
 a20:	f7050513          	addi	a0,a0,-144 # f70 <symbols.0+0x20c>
 a24:	ac9ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 a28:	00048513          	mv	a0,s1
 a2c:	aa9ff0ef          	jal	ra,4d4 <neorv32_uart0_putc>
 a30:	ffd47413          	andi	s0,s0,-3
 a34:	00500793          	li	a5,5
 a38:	06f40263          	beq	s0,a5,a9c <__neorv32_rte_debug_exc_handler+0x12c>
 a3c:	00001537          	lui	a0,0x1
 a40:	fc450513          	addi	a0,a0,-60 # fc4 <symbols.0+0x260>
 a44:	aa9ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 a48:	34002573          	csrr	a0,mscratch
 a4c:	eb5ff0ef          	jal	ra,900 <__neorv32_rte_print_hex_word>
 a50:	00001537          	lui	a0,0x1
 a54:	fcc50513          	addi	a0,a0,-52 # fcc <symbols.0+0x268>
 a58:	a95ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 a5c:	34302573          	csrr	a0,mtval
 a60:	ea1ff0ef          	jal	ra,900 <__neorv32_rte_print_hex_word>
 a64:	00812403          	lw	s0,8(sp)
 a68:	00c12083          	lw	ra,12(sp)
 a6c:	00412483          	lw	s1,4(sp)
 a70:	00001537          	lui	a0,0x1
 a74:	fd850513          	addi	a0,a0,-40 # fd8 <symbols.0+0x274>
 a78:	01010113          	addi	sp,sp,16
 a7c:	a71ff06f          	j	4ec <neorv32_uart0_print>
 a80:	00001537          	lui	a0,0x1
 a84:	e2850513          	addi	a0,a0,-472 # e28 <symbols.0+0xc4>
 a88:	a65ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 a8c:	fb1ff06f          	j	a3c <__neorv32_rte_debug_exc_handler+0xcc>
 a90:	00001537          	lui	a0,0x1
 a94:	e4850513          	addi	a0,a0,-440 # e48 <symbols.0+0xe4>
 a98:	a55ff0ef          	jal	ra,4ec <neorv32_uart0_print>
 a9c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 aa0:	0a07d463          	bgez	a5,b48 <__neorv32_rte_debug_exc_handler+0x1d8>
 aa4:	0017f793          	andi	a5,a5,1
 aa8:	08078a63          	beqz	a5,b3c <__neorv32_rte_debug_exc_handler+0x1cc>
 aac:	00001537          	lui	a0,0x1
 ab0:	f9850513          	addi	a0,a0,-104 # f98 <symbols.0+0x234>
 ab4:	fd5ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 ab8:	00001537          	lui	a0,0x1
 abc:	e6450513          	addi	a0,a0,-412 # e64 <symbols.0+0x100>
 ac0:	fc9ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 ac4:	00001537          	lui	a0,0x1
 ac8:	e7850513          	addi	a0,a0,-392 # e78 <symbols.0+0x114>
 acc:	fbdff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 ad0:	00001537          	lui	a0,0x1
 ad4:	e8450513          	addi	a0,a0,-380 # e84 <symbols.0+0x120>
 ad8:	fb1ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 adc:	00001537          	lui	a0,0x1
 ae0:	e9c50513          	addi	a0,a0,-356 # e9c <symbols.0+0x138>
 ae4:	fb5ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x128>
 ae8:	00001537          	lui	a0,0x1
 aec:	eb050513          	addi	a0,a0,-336 # eb0 <symbols.0+0x14c>
 af0:	f99ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 af4:	00001537          	lui	a0,0x1
 af8:	ecc50513          	addi	a0,a0,-308 # ecc <symbols.0+0x168>
 afc:	f9dff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x128>
 b00:	00001537          	lui	a0,0x1
 b04:	ee050513          	addi	a0,a0,-288 # ee0 <symbols.0+0x17c>
 b08:	f81ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b0c:	00001537          	lui	a0,0x1
 b10:	f0050513          	addi	a0,a0,-256 # f00 <symbols.0+0x19c>
 b14:	f75ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b18:	00001537          	lui	a0,0x1
 b1c:	f2050513          	addi	a0,a0,-224 # f20 <symbols.0+0x1bc>
 b20:	f69ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b24:	00001537          	lui	a0,0x1
 b28:	f3c50513          	addi	a0,a0,-196 # f3c <symbols.0+0x1d8>
 b2c:	f5dff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b30:	00001537          	lui	a0,0x1
 b34:	f5450513          	addi	a0,a0,-172 # f54 <symbols.0+0x1f0>
 b38:	f51ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b3c:	00001537          	lui	a0,0x1
 b40:	fa850513          	addi	a0,a0,-88 # fa8 <symbols.0+0x244>
 b44:	f45ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b48:	00001537          	lui	a0,0x1
 b4c:	fb850513          	addi	a0,a0,-72 # fb8 <symbols.0+0x254>
 b50:	f39ff06f          	j	a88 <__neorv32_rte_debug_exc_handler+0x118>
 b54:	00c12083          	lw	ra,12(sp)
 b58:	00812403          	lw	s0,8(sp)
 b5c:	00412483          	lw	s1,4(sp)
 b60:	01010113          	addi	sp,sp,16
 b64:	00008067          	ret

00000b68 <neorv32_rte_exception_uninstall>:
 b68:	01f00793          	li	a5,31
 b6c:	02a7e463          	bltu	a5,a0,b94 <neorv32_rte_exception_uninstall+0x2c>
 b70:	800007b7          	lui	a5,0x80000
 b74:	00078793          	mv	a5,a5
 b78:	00251513          	slli	a0,a0,0x2
 b7c:	00a78533          	add	a0,a5,a0
 b80:	000017b7          	lui	a5,0x1
 b84:	97078793          	addi	a5,a5,-1680 # 970 <__neorv32_rte_debug_exc_handler>
 b88:	00f52023          	sw	a5,0(a0)
 b8c:	00000513          	li	a0,0
 b90:	00008067          	ret
 b94:	00100513          	li	a0,1
 b98:	00008067          	ret

00000b9c <neorv32_rte_setup>:
 b9c:	ff010113          	addi	sp,sp,-16
 ba0:	00112623          	sw	ra,12(sp)
 ba4:	00812423          	sw	s0,8(sp)
 ba8:	00912223          	sw	s1,4(sp)
 bac:	6f000793          	li	a5,1776
 bb0:	30579073          	csrw	mtvec,a5
 bb4:	00000413          	li	s0,0
 bb8:	01d00493          	li	s1,29
 bbc:	00040513          	mv	a0,s0
 bc0:	00140413          	addi	s0,s0,1
 bc4:	0ff47413          	andi	s0,s0,255
 bc8:	fa1ff0ef          	jal	ra,b68 <neorv32_rte_exception_uninstall>
 bcc:	fe9418e3          	bne	s0,s1,bbc <neorv32_rte_setup+0x20>
 bd0:	00c12083          	lw	ra,12(sp)
 bd4:	00812403          	lw	s0,8(sp)
 bd8:	00412483          	lw	s1,4(sp)
 bdc:	01010113          	addi	sp,sp,16
 be0:	00008067          	ret

00000be4 <__divsi3>:
 be4:	06054063          	bltz	a0,c44 <__umodsi3+0x10>
 be8:	0605c663          	bltz	a1,c54 <__umodsi3+0x20>

00000bec <__udivsi3>:
 bec:	00058613          	mv	a2,a1
 bf0:	00050593          	mv	a1,a0
 bf4:	fff00513          	li	a0,-1
 bf8:	02060c63          	beqz	a2,c30 <__udivsi3+0x44>
 bfc:	00100693          	li	a3,1
 c00:	00b67a63          	bgeu	a2,a1,c14 <__udivsi3+0x28>
 c04:	00c05863          	blez	a2,c14 <__udivsi3+0x28>
 c08:	00161613          	slli	a2,a2,0x1
 c0c:	00169693          	slli	a3,a3,0x1
 c10:	feb66ae3          	bltu	a2,a1,c04 <__udivsi3+0x18>
 c14:	00000513          	li	a0,0
 c18:	00c5e663          	bltu	a1,a2,c24 <__udivsi3+0x38>
 c1c:	40c585b3          	sub	a1,a1,a2
 c20:	00d56533          	or	a0,a0,a3
 c24:	0016d693          	srli	a3,a3,0x1
 c28:	00165613          	srli	a2,a2,0x1
 c2c:	fe0696e3          	bnez	a3,c18 <__udivsi3+0x2c>
 c30:	00008067          	ret

00000c34 <__umodsi3>:
 c34:	00008293          	mv	t0,ra
 c38:	fb5ff0ef          	jal	ra,bec <__udivsi3>
 c3c:	00058513          	mv	a0,a1
 c40:	00028067          	jr	t0
 c44:	40a00533          	neg	a0,a0
 c48:	00b04863          	bgtz	a1,c58 <__umodsi3+0x24>
 c4c:	40b005b3          	neg	a1,a1
 c50:	f9dff06f          	j	bec <__udivsi3>
 c54:	40b005b3          	neg	a1,a1
 c58:	00008293          	mv	t0,ra
 c5c:	f91ff0ef          	jal	ra,bec <__udivsi3>
 c60:	40a00533          	neg	a0,a0
 c64:	00028067          	jr	t0

00000c68 <__modsi3>:
 c68:	00008293          	mv	t0,ra
 c6c:	0005ca63          	bltz	a1,c80 <__modsi3+0x18>
 c70:	00054c63          	bltz	a0,c88 <__modsi3+0x20>
 c74:	f79ff0ef          	jal	ra,bec <__udivsi3>
 c78:	00058513          	mv	a0,a1
 c7c:	00028067          	jr	t0
 c80:	40b005b3          	neg	a1,a1
 c84:	fe0558e3          	bgez	a0,c74 <__modsi3+0xc>
 c88:	40a00533          	neg	a0,a0
 c8c:	f61ff0ef          	jal	ra,bec <__udivsi3>
 c90:	40b00533          	neg	a0,a1
 c94:	00028067          	jr	t0
