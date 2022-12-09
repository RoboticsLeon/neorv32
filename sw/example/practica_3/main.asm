
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
  e0:	e4458593          	addi	a1,a1,-444 # f20 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3be0>
 194:	00112623          	sw	ra,12(sp)
 198:	00812423          	sw	s0,8(sp)
 19c:	1c8000ef          	jal	ra,364 <neorv32_uart0_setup>
 1a0:	478000ef          	jal	ra,618 <neorv32_gpio_available>
 1a4:	02051263          	bnez	a0,1c8 <main+0x48>
 1a8:	00001537          	lui	a0,0x1
 1ac:	bd850513          	addi	a0,a0,-1064 # bd8 <__etext>
 1b0:	278000ef          	jal	ra,428 <neorv32_uart0_print>
 1b4:	00100513          	li	a0,1
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	01010113          	addi	sp,sp,16
 1c4:	00008067          	ret
 1c8:	115000ef          	jal	ra,adc <neorv32_rte_setup>
 1cc:	00001537          	lui	a0,0x1
 1d0:	bfc50513          	addi	a0,a0,-1028 # bfc <__etext+0x24>
 1d4:	254000ef          	jal	ra,428 <neorv32_uart0_print>
 1d8:	80002437          	lui	s0,0x80002
 1dc:	00042583          	lw	a1,0(s0) # 80002000 <__ctr0_io_space_begin+0x80002200>
 1e0:	00001537          	lui	a0,0x1
 1e4:	c1c50513          	addi	a0,a0,-996 # c1c <__etext+0x44>
 1e8:	298000ef          	jal	ra,480 <neorv32_uart0_printf>
 1ec:	c0fff7b7          	lui	a5,0xc0fff
 1f0:	bed78793          	addi	a5,a5,-1043 # c0ffebed <__ctr0_io_space_begin+0xc0ffeded>
 1f4:	00f42023          	sw	a5,0(s0)
 1f8:	00042583          	lw	a1,0(s0)
 1fc:	00001537          	lui	a0,0x1
 200:	c3c50513          	addi	a0,a0,-964 # c3c <__etext+0x64>
 204:	27c000ef          	jal	ra,480 <neorv32_uart0_printf>
 208:	00000513          	li	a0,0
 20c:	fadff06f          	j	1b8 <main+0x38>

00000210 <__neorv32_uart_itoa>:
 210:	fd010113          	addi	sp,sp,-48
 214:	02812423          	sw	s0,40(sp)
 218:	02912223          	sw	s1,36(sp)
 21c:	03212023          	sw	s2,32(sp)
 220:	01312e23          	sw	s3,28(sp)
 224:	01412c23          	sw	s4,24(sp)
 228:	02112623          	sw	ra,44(sp)
 22c:	01512a23          	sw	s5,20(sp)
 230:	00001a37          	lui	s4,0x1
 234:	00050493          	mv	s1,a0
 238:	00058413          	mv	s0,a1
 23c:	00058523          	sb	zero,10(a1)
 240:	00000993          	li	s3,0
 244:	00410913          	addi	s2,sp,4
 248:	c58a0a13          	addi	s4,s4,-936 # c58 <numbers.1>
 24c:	00a00593          	li	a1,10
 250:	00048513          	mv	a0,s1
 254:	121000ef          	jal	ra,b74 <__umodsi3>
 258:	00aa0533          	add	a0,s4,a0
 25c:	00054783          	lbu	a5,0(a0)
 260:	01390ab3          	add	s5,s2,s3
 264:	00048513          	mv	a0,s1
 268:	00fa8023          	sb	a5,0(s5)
 26c:	00a00593          	li	a1,10
 270:	0bd000ef          	jal	ra,b2c <__udivsi3>
 274:	00198993          	addi	s3,s3,1
 278:	00a00793          	li	a5,10
 27c:	00050493          	mv	s1,a0
 280:	fcf996e3          	bne	s3,a5,24c <__neorv32_uart_itoa+0x3c>
 284:	00090693          	mv	a3,s2
 288:	00900713          	li	a4,9
 28c:	03000613          	li	a2,48
 290:	0096c583          	lbu	a1,9(a3)
 294:	00070793          	mv	a5,a4
 298:	fff70713          	addi	a4,a4,-1
 29c:	01071713          	slli	a4,a4,0x10
 2a0:	01075713          	srli	a4,a4,0x10
 2a4:	00c59a63          	bne	a1,a2,2b8 <__neorv32_uart_itoa+0xa8>
 2a8:	000684a3          	sb	zero,9(a3)
 2ac:	fff68693          	addi	a3,a3,-1
 2b0:	fe0710e3          	bnez	a4,290 <__neorv32_uart_itoa+0x80>
 2b4:	00000793          	li	a5,0
 2b8:	00f907b3          	add	a5,s2,a5
 2bc:	00000593          	li	a1,0
 2c0:	0007c703          	lbu	a4,0(a5)
 2c4:	00070c63          	beqz	a4,2dc <__neorv32_uart_itoa+0xcc>
 2c8:	00158693          	addi	a3,a1,1
 2cc:	00b405b3          	add	a1,s0,a1
 2d0:	00e58023          	sb	a4,0(a1)
 2d4:	01069593          	slli	a1,a3,0x10
 2d8:	0105d593          	srli	a1,a1,0x10
 2dc:	fff78713          	addi	a4,a5,-1
 2e0:	02f91863          	bne	s2,a5,310 <__neorv32_uart_itoa+0x100>
 2e4:	00b40433          	add	s0,s0,a1
 2e8:	00040023          	sb	zero,0(s0)
 2ec:	02c12083          	lw	ra,44(sp)
 2f0:	02812403          	lw	s0,40(sp)
 2f4:	02412483          	lw	s1,36(sp)
 2f8:	02012903          	lw	s2,32(sp)
 2fc:	01c12983          	lw	s3,28(sp)
 300:	01812a03          	lw	s4,24(sp)
 304:	01412a83          	lw	s5,20(sp)
 308:	03010113          	addi	sp,sp,48
 30c:	00008067          	ret
 310:	00070793          	mv	a5,a4
 314:	fadff06f          	j	2c0 <__neorv32_uart_itoa+0xb0>

00000318 <__neorv32_uart_tohex>:
 318:	00001637          	lui	a2,0x1
 31c:	00758693          	addi	a3,a1,7
 320:	00000713          	li	a4,0
 324:	c6460613          	addi	a2,a2,-924 # c64 <symbols.0>
 328:	02000813          	li	a6,32
 32c:	00e557b3          	srl	a5,a0,a4
 330:	00f7f793          	andi	a5,a5,15
 334:	00f607b3          	add	a5,a2,a5
 338:	0007c783          	lbu	a5,0(a5)
 33c:	00470713          	addi	a4,a4,4
 340:	fff68693          	addi	a3,a3,-1
 344:	00f680a3          	sb	a5,1(a3)
 348:	ff0712e3          	bne	a4,a6,32c <__neorv32_uart_tohex+0x14>
 34c:	00058423          	sb	zero,8(a1)
 350:	00008067          	ret

00000354 <neorv32_uart0_available>:
 354:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 358:	01255513          	srli	a0,a0,0x12
 35c:	00157513          	andi	a0,a0,1
 360:	00008067          	ret

00000364 <neorv32_uart0_setup>:
 364:	ff010113          	addi	sp,sp,-16
 368:	00812423          	sw	s0,8(sp)
 36c:	00912223          	sw	s1,4(sp)
 370:	00112623          	sw	ra,12(sp)
 374:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 378:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 37c:	00058413          	mv	s0,a1
 380:	00151593          	slli	a1,a0,0x1
 384:	00078513          	mv	a0,a5
 388:	00060493          	mv	s1,a2
 38c:	7a0000ef          	jal	ra,b2c <__udivsi3>
 390:	01051513          	slli	a0,a0,0x10
 394:	000017b7          	lui	a5,0x1
 398:	01055513          	srli	a0,a0,0x10
 39c:	00000713          	li	a4,0
 3a0:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0xde>
 3a4:	04a7e463          	bltu	a5,a0,3ec <neorv32_uart0_setup+0x88>
 3a8:	0034f793          	andi	a5,s1,3
 3ac:	00347413          	andi	s0,s0,3
 3b0:	fff50513          	addi	a0,a0,-1
 3b4:	01479793          	slli	a5,a5,0x14
 3b8:	01641413          	slli	s0,s0,0x16
 3bc:	00f567b3          	or	a5,a0,a5
 3c0:	0087e7b3          	or	a5,a5,s0
 3c4:	01871713          	slli	a4,a4,0x18
 3c8:	00c12083          	lw	ra,12(sp)
 3cc:	00812403          	lw	s0,8(sp)
 3d0:	00e7e7b3          	or	a5,a5,a4
 3d4:	10000737          	lui	a4,0x10000
 3d8:	00e7e7b3          	or	a5,a5,a4
 3dc:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3e0:	00412483          	lw	s1,4(sp)
 3e4:	01010113          	addi	sp,sp,16
 3e8:	00008067          	ret
 3ec:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff0de>
 3f0:	0fd6f693          	andi	a3,a3,253
 3f4:	00069a63          	bnez	a3,408 <neorv32_uart0_setup+0xa4>
 3f8:	00355513          	srli	a0,a0,0x3
 3fc:	00170713          	addi	a4,a4,1
 400:	0ff77713          	andi	a4,a4,255
 404:	fa1ff06f          	j	3a4 <neorv32_uart0_setup+0x40>
 408:	00155513          	srli	a0,a0,0x1
 40c:	ff1ff06f          	j	3fc <neorv32_uart0_setup+0x98>

00000410 <neorv32_uart0_putc>:
 410:	00040737          	lui	a4,0x40
 414:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 418:	00e7f7b3          	and	a5,a5,a4
 41c:	fe079ce3          	bnez	a5,414 <neorv32_uart0_putc+0x4>
 420:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 424:	00008067          	ret

00000428 <neorv32_uart0_print>:
 428:	ff010113          	addi	sp,sp,-16
 42c:	00812423          	sw	s0,8(sp)
 430:	01212023          	sw	s2,0(sp)
 434:	00112623          	sw	ra,12(sp)
 438:	00912223          	sw	s1,4(sp)
 43c:	00050413          	mv	s0,a0
 440:	00a00913          	li	s2,10
 444:	00044483          	lbu	s1,0(s0)
 448:	00140413          	addi	s0,s0,1
 44c:	00049e63          	bnez	s1,468 <neorv32_uart0_print+0x40>
 450:	00c12083          	lw	ra,12(sp)
 454:	00812403          	lw	s0,8(sp)
 458:	00412483          	lw	s1,4(sp)
 45c:	00012903          	lw	s2,0(sp)
 460:	01010113          	addi	sp,sp,16
 464:	00008067          	ret
 468:	01249663          	bne	s1,s2,474 <neorv32_uart0_print+0x4c>
 46c:	00d00513          	li	a0,13
 470:	fa1ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 474:	00048513          	mv	a0,s1
 478:	f99ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 47c:	fc9ff06f          	j	444 <neorv32_uart0_print+0x1c>

00000480 <neorv32_uart0_printf>:
 480:	fa010113          	addi	sp,sp,-96
 484:	04f12a23          	sw	a5,84(sp)
 488:	04410793          	addi	a5,sp,68
 48c:	02812c23          	sw	s0,56(sp)
 490:	03212823          	sw	s2,48(sp)
 494:	03412423          	sw	s4,40(sp)
 498:	03512223          	sw	s5,36(sp)
 49c:	03612023          	sw	s6,32(sp)
 4a0:	01712e23          	sw	s7,28(sp)
 4a4:	01812c23          	sw	s8,24(sp)
 4a8:	01912a23          	sw	s9,20(sp)
 4ac:	02112e23          	sw	ra,60(sp)
 4b0:	02912a23          	sw	s1,52(sp)
 4b4:	03312623          	sw	s3,44(sp)
 4b8:	00050413          	mv	s0,a0
 4bc:	04b12223          	sw	a1,68(sp)
 4c0:	04c12423          	sw	a2,72(sp)
 4c4:	04d12623          	sw	a3,76(sp)
 4c8:	04e12823          	sw	a4,80(sp)
 4cc:	05012c23          	sw	a6,88(sp)
 4d0:	05112e23          	sw	a7,92(sp)
 4d4:	00f12023          	sw	a5,0(sp)
 4d8:	02500a13          	li	s4,37
 4dc:	00a00a93          	li	s5,10
 4e0:	07300913          	li	s2,115
 4e4:	07500b13          	li	s6,117
 4e8:	07800b93          	li	s7,120
 4ec:	06300c13          	li	s8,99
 4f0:	06900c93          	li	s9,105
 4f4:	00044483          	lbu	s1,0(s0)
 4f8:	02049c63          	bnez	s1,530 <neorv32_uart0_printf+0xb0>
 4fc:	03c12083          	lw	ra,60(sp)
 500:	03812403          	lw	s0,56(sp)
 504:	03412483          	lw	s1,52(sp)
 508:	03012903          	lw	s2,48(sp)
 50c:	02c12983          	lw	s3,44(sp)
 510:	02812a03          	lw	s4,40(sp)
 514:	02412a83          	lw	s5,36(sp)
 518:	02012b03          	lw	s6,32(sp)
 51c:	01c12b83          	lw	s7,28(sp)
 520:	01812c03          	lw	s8,24(sp)
 524:	01412c83          	lw	s9,20(sp)
 528:	06010113          	addi	sp,sp,96
 52c:	00008067          	ret
 530:	0d449863          	bne	s1,s4,600 <neorv32_uart0_printf+0x180>
 534:	00240993          	addi	s3,s0,2
 538:	00144403          	lbu	s0,1(s0)
 53c:	05240263          	beq	s0,s2,580 <neorv32_uart0_printf+0x100>
 540:	00896e63          	bltu	s2,s0,55c <neorv32_uart0_printf+0xdc>
 544:	05840c63          	beq	s0,s8,59c <neorv32_uart0_printf+0x11c>
 548:	07940663          	beq	s0,s9,5b4 <neorv32_uart0_printf+0x134>
 54c:	02500513          	li	a0,37
 550:	ec1ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 554:	00040513          	mv	a0,s0
 558:	0540006f          	j	5ac <neorv32_uart0_printf+0x12c>
 55c:	09640663          	beq	s0,s6,5e8 <neorv32_uart0_printf+0x168>
 560:	ff7416e3          	bne	s0,s7,54c <neorv32_uart0_printf+0xcc>
 564:	00012783          	lw	a5,0(sp)
 568:	00410593          	addi	a1,sp,4
 56c:	0007a503          	lw	a0,0(a5)
 570:	00478713          	addi	a4,a5,4
 574:	00e12023          	sw	a4,0(sp)
 578:	da1ff0ef          	jal	ra,318 <__neorv32_uart_tohex>
 57c:	0640006f          	j	5e0 <neorv32_uart0_printf+0x160>
 580:	00012783          	lw	a5,0(sp)
 584:	0007a503          	lw	a0,0(a5)
 588:	00478713          	addi	a4,a5,4
 58c:	00e12023          	sw	a4,0(sp)
 590:	e99ff0ef          	jal	ra,428 <neorv32_uart0_print>
 594:	00098413          	mv	s0,s3
 598:	f5dff06f          	j	4f4 <neorv32_uart0_printf+0x74>
 59c:	00012783          	lw	a5,0(sp)
 5a0:	0007c503          	lbu	a0,0(a5)
 5a4:	00478713          	addi	a4,a5,4
 5a8:	00e12023          	sw	a4,0(sp)
 5ac:	e65ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 5b0:	fe5ff06f          	j	594 <neorv32_uart0_printf+0x114>
 5b4:	00012783          	lw	a5,0(sp)
 5b8:	0007a403          	lw	s0,0(a5)
 5bc:	00478713          	addi	a4,a5,4
 5c0:	00e12023          	sw	a4,0(sp)
 5c4:	00045863          	bgez	s0,5d4 <neorv32_uart0_printf+0x154>
 5c8:	02d00513          	li	a0,45
 5cc:	40800433          	neg	s0,s0
 5d0:	e41ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 5d4:	00410593          	addi	a1,sp,4
 5d8:	00040513          	mv	a0,s0
 5dc:	c35ff0ef          	jal	ra,210 <__neorv32_uart_itoa>
 5e0:	00410513          	addi	a0,sp,4
 5e4:	fadff06f          	j	590 <neorv32_uart0_printf+0x110>
 5e8:	00012783          	lw	a5,0(sp)
 5ec:	00410593          	addi	a1,sp,4
 5f0:	00478713          	addi	a4,a5,4
 5f4:	0007a503          	lw	a0,0(a5)
 5f8:	00e12023          	sw	a4,0(sp)
 5fc:	fe1ff06f          	j	5dc <neorv32_uart0_printf+0x15c>
 600:	01549663          	bne	s1,s5,60c <neorv32_uart0_printf+0x18c>
 604:	00d00513          	li	a0,13
 608:	e09ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 60c:	00140993          	addi	s3,s0,1
 610:	00048513          	mv	a0,s1
 614:	f99ff06f          	j	5ac <neorv32_uart0_printf+0x12c>

00000618 <neorv32_gpio_available>:
 618:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 61c:	01055513          	srli	a0,a0,0x10
 620:	00157513          	andi	a0,a0,1
 624:	00008067          	ret
 628:	0000                	unimp
 62a:	0000                	unimp
 62c:	0000                	unimp
 62e:	0000                	unimp

00000630 <__neorv32_rte_core>:
 630:	fc010113          	addi	sp,sp,-64
 634:	02112e23          	sw	ra,60(sp)
 638:	02512c23          	sw	t0,56(sp)
 63c:	02612a23          	sw	t1,52(sp)
 640:	02712823          	sw	t2,48(sp)
 644:	02a12623          	sw	a0,44(sp)
 648:	02b12423          	sw	a1,40(sp)
 64c:	02c12223          	sw	a2,36(sp)
 650:	02d12023          	sw	a3,32(sp)
 654:	00e12e23          	sw	a4,28(sp)
 658:	00f12c23          	sw	a5,24(sp)
 65c:	01012a23          	sw	a6,20(sp)
 660:	01112823          	sw	a7,16(sp)
 664:	01c12623          	sw	t3,12(sp)
 668:	01d12423          	sw	t4,8(sp)
 66c:	01e12223          	sw	t5,4(sp)
 670:	01f12023          	sw	t6,0(sp)
 674:	34102773          	csrr	a4,mepc
 678:	34071073          	csrw	mscratch,a4
 67c:	342027f3          	csrr	a5,mcause
 680:	0807ca63          	bltz	a5,714 <__neorv32_rte_core+0xe4>
 684:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f0e0>
 688:	00300593          	li	a1,3
 68c:	0036f693          	andi	a3,a3,3
 690:	00270613          	addi	a2,a4,2
 694:	00b69463          	bne	a3,a1,69c <__neorv32_rte_core+0x6c>
 698:	00470613          	addi	a2,a4,4
 69c:	34161073          	csrw	mepc,a2
 6a0:	00b00713          	li	a4,11
 6a4:	04f77c63          	bgeu	a4,a5,6fc <__neorv32_rte_core+0xcc>
 6a8:	000017b7          	lui	a5,0x1
 6ac:	8b078793          	addi	a5,a5,-1872 # 8b0 <__neorv32_rte_debug_exc_handler>
 6b0:	000780e7          	jalr	a5
 6b4:	03c12083          	lw	ra,60(sp)
 6b8:	03812283          	lw	t0,56(sp)
 6bc:	03412303          	lw	t1,52(sp)
 6c0:	03012383          	lw	t2,48(sp)
 6c4:	02c12503          	lw	a0,44(sp)
 6c8:	02812583          	lw	a1,40(sp)
 6cc:	02412603          	lw	a2,36(sp)
 6d0:	02012683          	lw	a3,32(sp)
 6d4:	01c12703          	lw	a4,28(sp)
 6d8:	01812783          	lw	a5,24(sp)
 6dc:	01412803          	lw	a6,20(sp)
 6e0:	01012883          	lw	a7,16(sp)
 6e4:	00c12e03          	lw	t3,12(sp)
 6e8:	00812e83          	lw	t4,8(sp)
 6ec:	00412f03          	lw	t5,4(sp)
 6f0:	00012f83          	lw	t6,0(sp)
 6f4:	04010113          	addi	sp,sp,64
 6f8:	30200073          	mret
 6fc:	00001737          	lui	a4,0x1
 700:	00279793          	slli	a5,a5,0x2
 704:	c7870713          	addi	a4,a4,-904 # c78 <symbols.0+0x14>
 708:	00e787b3          	add	a5,a5,a4
 70c:	0007a783          	lw	a5,0(a5)
 710:	00078067          	jr	a5
 714:	80000737          	lui	a4,0x80000
 718:	ffd74713          	xori	a4,a4,-3
 71c:	00e787b3          	add	a5,a5,a4
 720:	01c00713          	li	a4,28
 724:	f8f762e3          	bltu	a4,a5,6a8 <__neorv32_rte_core+0x78>
 728:	00001737          	lui	a4,0x1
 72c:	00279793          	slli	a5,a5,0x2
 730:	ca870713          	addi	a4,a4,-856 # ca8 <symbols.0+0x44>
 734:	00e787b3          	add	a5,a5,a4
 738:	0007a783          	lw	a5,0(a5)
 73c:	00078067          	jr	a5
 740:	800007b7          	lui	a5,0x80000
 744:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 748:	f69ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 74c:	800007b7          	lui	a5,0x80000
 750:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 754:	f5dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 758:	800007b7          	lui	a5,0x80000
 75c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 760:	f51ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 764:	800007b7          	lui	a5,0x80000
 768:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 76c:	f45ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 770:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 774:	f3dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 778:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 77c:	f35ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 780:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 784:	f2dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 788:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 78c:	f25ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 790:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 794:	f1dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 798:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 79c:	f15ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7a0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 7a4:	f0dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7a8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 7ac:	f05ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7b0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 7b4:	efdff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7b8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 7bc:	ef5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7c0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 7c4:	eedff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7c8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 7cc:	ee5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7d0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 7d4:	eddff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7d8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 7dc:	ed5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7e0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 7e4:	ecdff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7e8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 7ec:	ec5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7f0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 7f4:	ebdff06f          	j	6b0 <__neorv32_rte_core+0x80>
 7f8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 7fc:	eb5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 800:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 804:	eadff06f          	j	6b0 <__neorv32_rte_core+0x80>
 808:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 80c:	ea5ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 810:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 814:	e9dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 818:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 81c:	e95ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 820:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 824:	e8dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 828:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 82c:	e85ff06f          	j	6b0 <__neorv32_rte_core+0x80>
 830:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 834:	e7dff06f          	j	6b0 <__neorv32_rte_core+0x80>
 838:	0000                	unimp
 83a:	0000                	unimp
 83c:	0000                	unimp
 83e:	0000                	unimp

00000840 <__neorv32_rte_print_hex_word>:
 840:	fe010113          	addi	sp,sp,-32
 844:	01212823          	sw	s2,16(sp)
 848:	00050913          	mv	s2,a0
 84c:	00001537          	lui	a0,0x1
 850:	00912a23          	sw	s1,20(sp)
 854:	d1c50513          	addi	a0,a0,-740 # d1c <symbols.0+0xb8>
 858:	000014b7          	lui	s1,0x1
 85c:	00812c23          	sw	s0,24(sp)
 860:	01312623          	sw	s3,12(sp)
 864:	00112e23          	sw	ra,28(sp)
 868:	01c00413          	li	s0,28
 86c:	bbdff0ef          	jal	ra,428 <neorv32_uart0_print>
 870:	f1048493          	addi	s1,s1,-240 # f10 <hex_symbols.0>
 874:	ffc00993          	li	s3,-4
 878:	008957b3          	srl	a5,s2,s0
 87c:	00f7f793          	andi	a5,a5,15
 880:	00f487b3          	add	a5,s1,a5
 884:	0007c503          	lbu	a0,0(a5)
 888:	ffc40413          	addi	s0,s0,-4
 88c:	b85ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 890:	ff3414e3          	bne	s0,s3,878 <__neorv32_rte_print_hex_word+0x38>
 894:	01c12083          	lw	ra,28(sp)
 898:	01812403          	lw	s0,24(sp)
 89c:	01412483          	lw	s1,20(sp)
 8a0:	01012903          	lw	s2,16(sp)
 8a4:	00c12983          	lw	s3,12(sp)
 8a8:	02010113          	addi	sp,sp,32
 8ac:	00008067          	ret

000008b0 <__neorv32_rte_debug_exc_handler>:
 8b0:	ff010113          	addi	sp,sp,-16
 8b4:	00112623          	sw	ra,12(sp)
 8b8:	00812423          	sw	s0,8(sp)
 8bc:	00912223          	sw	s1,4(sp)
 8c0:	a95ff0ef          	jal	ra,354 <neorv32_uart0_available>
 8c4:	1c050863          	beqz	a0,a94 <__neorv32_rte_debug_exc_handler+0x1e4>
 8c8:	00001537          	lui	a0,0x1
 8cc:	d2050513          	addi	a0,a0,-736 # d20 <symbols.0+0xbc>
 8d0:	b59ff0ef          	jal	ra,428 <neorv32_uart0_print>
 8d4:	34202473          	csrr	s0,mcause
 8d8:	00900713          	li	a4,9
 8dc:	00f47793          	andi	a5,s0,15
 8e0:	03078493          	addi	s1,a5,48
 8e4:	00f77463          	bgeu	a4,a5,8ec <__neorv32_rte_debug_exc_handler+0x3c>
 8e8:	05778493          	addi	s1,a5,87
 8ec:	00b00793          	li	a5,11
 8f0:	0087ee63          	bltu	a5,s0,90c <__neorv32_rte_debug_exc_handler+0x5c>
 8f4:	00001737          	lui	a4,0x1
 8f8:	00241793          	slli	a5,s0,0x2
 8fc:	ee070713          	addi	a4,a4,-288 # ee0 <symbols.0+0x27c>
 900:	00e787b3          	add	a5,a5,a4
 904:	0007a783          	lw	a5,0(a5)
 908:	00078067          	jr	a5
 90c:	800007b7          	lui	a5,0x80000
 910:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 914:	14e40e63          	beq	s0,a4,a70 <__neorv32_rte_debug_exc_handler+0x1c0>
 918:	02876a63          	bltu	a4,s0,94c <__neorv32_rte_debug_exc_handler+0x9c>
 91c:	00378713          	addi	a4,a5,3
 920:	12e40c63          	beq	s0,a4,a58 <__neorv32_rte_debug_exc_handler+0x1a8>
 924:	00778793          	addi	a5,a5,7
 928:	12f40e63          	beq	s0,a5,a64 <__neorv32_rte_debug_exc_handler+0x1b4>
 92c:	00001537          	lui	a0,0x1
 930:	e8050513          	addi	a0,a0,-384 # e80 <symbols.0+0x21c>
 934:	af5ff0ef          	jal	ra,428 <neorv32_uart0_print>
 938:	00040513          	mv	a0,s0
 93c:	f05ff0ef          	jal	ra,840 <__neorv32_rte_print_hex_word>
 940:	00100793          	li	a5,1
 944:	08f40c63          	beq	s0,a5,9dc <__neorv32_rte_debug_exc_handler+0x12c>
 948:	0280006f          	j	970 <__neorv32_rte_debug_exc_handler+0xc0>
 94c:	ff07c793          	xori	a5,a5,-16
 950:	00f407b3          	add	a5,s0,a5
 954:	00f00713          	li	a4,15
 958:	fcf76ae3          	bltu	a4,a5,92c <__neorv32_rte_debug_exc_handler+0x7c>
 95c:	00001537          	lui	a0,0x1
 960:	e7050513          	addi	a0,a0,-400 # e70 <symbols.0+0x20c>
 964:	ac5ff0ef          	jal	ra,428 <neorv32_uart0_print>
 968:	00048513          	mv	a0,s1
 96c:	aa5ff0ef          	jal	ra,410 <neorv32_uart0_putc>
 970:	ffd47413          	andi	s0,s0,-3
 974:	00500793          	li	a5,5
 978:	06f40263          	beq	s0,a5,9dc <__neorv32_rte_debug_exc_handler+0x12c>
 97c:	00001537          	lui	a0,0x1
 980:	ec450513          	addi	a0,a0,-316 # ec4 <symbols.0+0x260>
 984:	aa5ff0ef          	jal	ra,428 <neorv32_uart0_print>
 988:	34002573          	csrr	a0,mscratch
 98c:	eb5ff0ef          	jal	ra,840 <__neorv32_rte_print_hex_word>
 990:	00001537          	lui	a0,0x1
 994:	ecc50513          	addi	a0,a0,-308 # ecc <symbols.0+0x268>
 998:	a91ff0ef          	jal	ra,428 <neorv32_uart0_print>
 99c:	34302573          	csrr	a0,mtval
 9a0:	ea1ff0ef          	jal	ra,840 <__neorv32_rte_print_hex_word>
 9a4:	00812403          	lw	s0,8(sp)
 9a8:	00c12083          	lw	ra,12(sp)
 9ac:	00412483          	lw	s1,4(sp)
 9b0:	00001537          	lui	a0,0x1
 9b4:	ed850513          	addi	a0,a0,-296 # ed8 <symbols.0+0x274>
 9b8:	01010113          	addi	sp,sp,16
 9bc:	a6dff06f          	j	428 <neorv32_uart0_print>
 9c0:	00001537          	lui	a0,0x1
 9c4:	d2850513          	addi	a0,a0,-728 # d28 <symbols.0+0xc4>
 9c8:	a61ff0ef          	jal	ra,428 <neorv32_uart0_print>
 9cc:	fb1ff06f          	j	97c <__neorv32_rte_debug_exc_handler+0xcc>
 9d0:	00001537          	lui	a0,0x1
 9d4:	d4850513          	addi	a0,a0,-696 # d48 <symbols.0+0xe4>
 9d8:	a51ff0ef          	jal	ra,428 <neorv32_uart0_print>
 9dc:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 9e0:	0a07d463          	bgez	a5,a88 <__neorv32_rte_debug_exc_handler+0x1d8>
 9e4:	0017f793          	andi	a5,a5,1
 9e8:	08078a63          	beqz	a5,a7c <__neorv32_rte_debug_exc_handler+0x1cc>
 9ec:	00001537          	lui	a0,0x1
 9f0:	e9850513          	addi	a0,a0,-360 # e98 <symbols.0+0x234>
 9f4:	fd5ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 9f8:	00001537          	lui	a0,0x1
 9fc:	d6450513          	addi	a0,a0,-668 # d64 <symbols.0+0x100>
 a00:	fc9ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a04:	00001537          	lui	a0,0x1
 a08:	d7850513          	addi	a0,a0,-648 # d78 <symbols.0+0x114>
 a0c:	fbdff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a10:	00001537          	lui	a0,0x1
 a14:	d8450513          	addi	a0,a0,-636 # d84 <symbols.0+0x120>
 a18:	fb1ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a1c:	00001537          	lui	a0,0x1
 a20:	d9c50513          	addi	a0,a0,-612 # d9c <symbols.0+0x138>
 a24:	fb5ff06f          	j	9d8 <__neorv32_rte_debug_exc_handler+0x128>
 a28:	00001537          	lui	a0,0x1
 a2c:	db050513          	addi	a0,a0,-592 # db0 <symbols.0+0x14c>
 a30:	f99ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a34:	00001537          	lui	a0,0x1
 a38:	dcc50513          	addi	a0,a0,-564 # dcc <symbols.0+0x168>
 a3c:	f9dff06f          	j	9d8 <__neorv32_rte_debug_exc_handler+0x128>
 a40:	00001537          	lui	a0,0x1
 a44:	de050513          	addi	a0,a0,-544 # de0 <symbols.0+0x17c>
 a48:	f81ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a4c:	00001537          	lui	a0,0x1
 a50:	e0050513          	addi	a0,a0,-512 # e00 <symbols.0+0x19c>
 a54:	f75ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a58:	00001537          	lui	a0,0x1
 a5c:	e2050513          	addi	a0,a0,-480 # e20 <symbols.0+0x1bc>
 a60:	f69ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a64:	00001537          	lui	a0,0x1
 a68:	e3c50513          	addi	a0,a0,-452 # e3c <symbols.0+0x1d8>
 a6c:	f5dff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a70:	00001537          	lui	a0,0x1
 a74:	e5450513          	addi	a0,a0,-428 # e54 <symbols.0+0x1f0>
 a78:	f51ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a7c:	00001537          	lui	a0,0x1
 a80:	ea850513          	addi	a0,a0,-344 # ea8 <symbols.0+0x244>
 a84:	f45ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a88:	00001537          	lui	a0,0x1
 a8c:	eb850513          	addi	a0,a0,-328 # eb8 <symbols.0+0x254>
 a90:	f39ff06f          	j	9c8 <__neorv32_rte_debug_exc_handler+0x118>
 a94:	00c12083          	lw	ra,12(sp)
 a98:	00812403          	lw	s0,8(sp)
 a9c:	00412483          	lw	s1,4(sp)
 aa0:	01010113          	addi	sp,sp,16
 aa4:	00008067          	ret

00000aa8 <neorv32_rte_exception_uninstall>:
 aa8:	01f00793          	li	a5,31
 aac:	02a7e463          	bltu	a5,a0,ad4 <neorv32_rte_exception_uninstall+0x2c>
 ab0:	800007b7          	lui	a5,0x80000
 ab4:	00078793          	mv	a5,a5
 ab8:	00251513          	slli	a0,a0,0x2
 abc:	00a78533          	add	a0,a5,a0
 ac0:	000017b7          	lui	a5,0x1
 ac4:	8b078793          	addi	a5,a5,-1872 # 8b0 <__neorv32_rte_debug_exc_handler>
 ac8:	00f52023          	sw	a5,0(a0)
 acc:	00000513          	li	a0,0
 ad0:	00008067          	ret
 ad4:	00100513          	li	a0,1
 ad8:	00008067          	ret

00000adc <neorv32_rte_setup>:
 adc:	ff010113          	addi	sp,sp,-16
 ae0:	00112623          	sw	ra,12(sp)
 ae4:	00812423          	sw	s0,8(sp)
 ae8:	00912223          	sw	s1,4(sp)
 aec:	63000793          	li	a5,1584
 af0:	30579073          	csrw	mtvec,a5
 af4:	00000413          	li	s0,0
 af8:	01d00493          	li	s1,29
 afc:	00040513          	mv	a0,s0
 b00:	00140413          	addi	s0,s0,1
 b04:	0ff47413          	andi	s0,s0,255
 b08:	fa1ff0ef          	jal	ra,aa8 <neorv32_rte_exception_uninstall>
 b0c:	fe9418e3          	bne	s0,s1,afc <neorv32_rte_setup+0x20>
 b10:	00c12083          	lw	ra,12(sp)
 b14:	00812403          	lw	s0,8(sp)
 b18:	00412483          	lw	s1,4(sp)
 b1c:	01010113          	addi	sp,sp,16
 b20:	00008067          	ret

00000b24 <__divsi3>:
 b24:	06054063          	bltz	a0,b84 <__umodsi3+0x10>
 b28:	0605c663          	bltz	a1,b94 <__umodsi3+0x20>

00000b2c <__udivsi3>:
 b2c:	00058613          	mv	a2,a1
 b30:	00050593          	mv	a1,a0
 b34:	fff00513          	li	a0,-1
 b38:	02060c63          	beqz	a2,b70 <__udivsi3+0x44>
 b3c:	00100693          	li	a3,1
 b40:	00b67a63          	bgeu	a2,a1,b54 <__udivsi3+0x28>
 b44:	00c05863          	blez	a2,b54 <__udivsi3+0x28>
 b48:	00161613          	slli	a2,a2,0x1
 b4c:	00169693          	slli	a3,a3,0x1
 b50:	feb66ae3          	bltu	a2,a1,b44 <__udivsi3+0x18>
 b54:	00000513          	li	a0,0
 b58:	00c5e663          	bltu	a1,a2,b64 <__udivsi3+0x38>
 b5c:	40c585b3          	sub	a1,a1,a2
 b60:	00d56533          	or	a0,a0,a3
 b64:	0016d693          	srli	a3,a3,0x1
 b68:	00165613          	srli	a2,a2,0x1
 b6c:	fe0696e3          	bnez	a3,b58 <__udivsi3+0x2c>
 b70:	00008067          	ret

00000b74 <__umodsi3>:
 b74:	00008293          	mv	t0,ra
 b78:	fb5ff0ef          	jal	ra,b2c <__udivsi3>
 b7c:	00058513          	mv	a0,a1
 b80:	00028067          	jr	t0
 b84:	40a00533          	neg	a0,a0
 b88:	00b04863          	bgtz	a1,b98 <__umodsi3+0x24>
 b8c:	40b005b3          	neg	a1,a1
 b90:	f9dff06f          	j	b2c <__udivsi3>
 b94:	40b005b3          	neg	a1,a1
 b98:	00008293          	mv	t0,ra
 b9c:	f91ff0ef          	jal	ra,b2c <__udivsi3>
 ba0:	40a00533          	neg	a0,a0
 ba4:	00028067          	jr	t0

00000ba8 <__modsi3>:
 ba8:	00008293          	mv	t0,ra
 bac:	0005ca63          	bltz	a1,bc0 <__modsi3+0x18>
 bb0:	00054c63          	bltz	a0,bc8 <__modsi3+0x20>
 bb4:	f79ff0ef          	jal	ra,b2c <__udivsi3>
 bb8:	00058513          	mv	a0,a1
 bbc:	00028067          	jr	t0
 bc0:	40b005b3          	neg	a1,a1
 bc4:	fe0558e3          	bgez	a0,bb4 <__modsi3+0xc>
 bc8:	40a00533          	neg	a0,a0
 bcc:	f61ff0ef          	jal	ra,b2c <__udivsi3>
 bd0:	40b00533          	neg	a0,a1
 bd4:	00028067          	jr	t0
