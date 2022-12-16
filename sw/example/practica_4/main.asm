
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
  e0:	e9058593          	addi	a1,a1,-368 # f6c <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3b94>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	01412c23          	sw	s4,24(sp)
 1ac:	01512a23          	sw	s5,20(sp)
 1b0:	01612823          	sw	s6,16(sp)
 1b4:	01712623          	sw	s7,12(sp)
 1b8:	204000ef          	jal	ra,3bc <neorv32_uart0_setup>
 1bc:	4b4000ef          	jal	ra,670 <neorv32_gpio_available>
 1c0:	06050663          	beqz	a0,22c <main+0xac>
 1c4:	169000ef          	jal	ra,b2c <neorv32_rte_setup>
 1c8:	00001537          	lui	a0,0x1
 1cc:	c4c50513          	addi	a0,a0,-948 # c4c <__etext+0x24>
 1d0:	80010937          	lui	s2,0x80010
 1d4:	2ac000ef          	jal	ra,480 <neorv32_uart0_print>
 1d8:	01090a13          	addi	s4,s2,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
 1dc:	00001b37          	lui	s6,0x1
 1e0:	00001bb7          	lui	s7,0x1
 1e4:	01000a93          	li	s5,16
 1e8:	000a2983          	lw	s3,0(s4)
 1ec:	00000413          	li	s0,0
 1f0:	00100493          	li	s1,1
 1f4:	fff9c993          	not	s3,s3
 1f8:	0099f7b3          	and	a5,s3,s1
 1fc:	02979063          	bne	a5,s1,21c <main+0x9c>
 200:	00040593          	mv	a1,s0
 204:	c70b0513          	addi	a0,s6,-912 # c70 <__etext+0x48>
 208:	2d0000ef          	jal	ra,4d8 <neorv32_uart0_printf>
 20c:	00892023          	sw	s0,0(s2)
 210:	00092583          	lw	a1,0(s2)
 214:	c84b8513          	addi	a0,s7,-892 # c84 <__etext+0x5c>
 218:	2c0000ef          	jal	ra,4d8 <neorv32_uart0_printf>
 21c:	00140413          	addi	s0,s0,1
 220:	00149493          	slli	s1,s1,0x1
 224:	fd541ae3          	bne	s0,s5,1f8 <main+0x78>
 228:	fc1ff06f          	j	1e8 <main+0x68>
 22c:	00001537          	lui	a0,0x1
 230:	c2850513          	addi	a0,a0,-984 # c28 <__etext>
 234:	24c000ef          	jal	ra,480 <neorv32_uart0_print>
 238:	02c12083          	lw	ra,44(sp)
 23c:	02812403          	lw	s0,40(sp)
 240:	02412483          	lw	s1,36(sp)
 244:	02012903          	lw	s2,32(sp)
 248:	01c12983          	lw	s3,28(sp)
 24c:	01812a03          	lw	s4,24(sp)
 250:	01412a83          	lw	s5,20(sp)
 254:	01012b03          	lw	s6,16(sp)
 258:	00c12b83          	lw	s7,12(sp)
 25c:	00100513          	li	a0,1
 260:	03010113          	addi	sp,sp,48
 264:	00008067          	ret

00000268 <__neorv32_uart_itoa>:
 268:	fd010113          	addi	sp,sp,-48
 26c:	02812423          	sw	s0,40(sp)
 270:	02912223          	sw	s1,36(sp)
 274:	03212023          	sw	s2,32(sp)
 278:	01312e23          	sw	s3,28(sp)
 27c:	01412c23          	sw	s4,24(sp)
 280:	02112623          	sw	ra,44(sp)
 284:	01512a23          	sw	s5,20(sp)
 288:	00001a37          	lui	s4,0x1
 28c:	00050493          	mv	s1,a0
 290:	00058413          	mv	s0,a1
 294:	00058523          	sb	zero,10(a1)
 298:	00000993          	li	s3,0
 29c:	00410913          	addi	s2,sp,4
 2a0:	ca4a0a13          	addi	s4,s4,-860 # ca4 <numbers.1>
 2a4:	00a00593          	li	a1,10
 2a8:	00048513          	mv	a0,s1
 2ac:	119000ef          	jal	ra,bc4 <__umodsi3>
 2b0:	00aa0533          	add	a0,s4,a0
 2b4:	00054783          	lbu	a5,0(a0)
 2b8:	01390ab3          	add	s5,s2,s3
 2bc:	00048513          	mv	a0,s1
 2c0:	00fa8023          	sb	a5,0(s5)
 2c4:	00a00593          	li	a1,10
 2c8:	0b5000ef          	jal	ra,b7c <__udivsi3>
 2cc:	00198993          	addi	s3,s3,1
 2d0:	00a00793          	li	a5,10
 2d4:	00050493          	mv	s1,a0
 2d8:	fcf996e3          	bne	s3,a5,2a4 <__neorv32_uart_itoa+0x3c>
 2dc:	00090693          	mv	a3,s2
 2e0:	00900713          	li	a4,9
 2e4:	03000613          	li	a2,48
 2e8:	0096c583          	lbu	a1,9(a3)
 2ec:	00070793          	mv	a5,a4
 2f0:	fff70713          	addi	a4,a4,-1
 2f4:	01071713          	slli	a4,a4,0x10
 2f8:	01075713          	srli	a4,a4,0x10
 2fc:	00c59a63          	bne	a1,a2,310 <__neorv32_uart_itoa+0xa8>
 300:	000684a3          	sb	zero,9(a3)
 304:	fff68693          	addi	a3,a3,-1
 308:	fe0710e3          	bnez	a4,2e8 <__neorv32_uart_itoa+0x80>
 30c:	00000793          	li	a5,0
 310:	00f907b3          	add	a5,s2,a5
 314:	00000593          	li	a1,0
 318:	0007c703          	lbu	a4,0(a5)
 31c:	00070c63          	beqz	a4,334 <__neorv32_uart_itoa+0xcc>
 320:	00158693          	addi	a3,a1,1
 324:	00b405b3          	add	a1,s0,a1
 328:	00e58023          	sb	a4,0(a1)
 32c:	01069593          	slli	a1,a3,0x10
 330:	0105d593          	srli	a1,a1,0x10
 334:	fff78713          	addi	a4,a5,-1
 338:	02f91863          	bne	s2,a5,368 <__neorv32_uart_itoa+0x100>
 33c:	00b40433          	add	s0,s0,a1
 340:	00040023          	sb	zero,0(s0)
 344:	02c12083          	lw	ra,44(sp)
 348:	02812403          	lw	s0,40(sp)
 34c:	02412483          	lw	s1,36(sp)
 350:	02012903          	lw	s2,32(sp)
 354:	01c12983          	lw	s3,28(sp)
 358:	01812a03          	lw	s4,24(sp)
 35c:	01412a83          	lw	s5,20(sp)
 360:	03010113          	addi	sp,sp,48
 364:	00008067          	ret
 368:	00070793          	mv	a5,a4
 36c:	fadff06f          	j	318 <__neorv32_uart_itoa+0xb0>

00000370 <__neorv32_uart_tohex>:
 370:	00001637          	lui	a2,0x1
 374:	00758693          	addi	a3,a1,7
 378:	00000713          	li	a4,0
 37c:	cb060613          	addi	a2,a2,-848 # cb0 <symbols.0>
 380:	02000813          	li	a6,32
 384:	00e557b3          	srl	a5,a0,a4
 388:	00f7f793          	andi	a5,a5,15
 38c:	00f607b3          	add	a5,a2,a5
 390:	0007c783          	lbu	a5,0(a5)
 394:	00470713          	addi	a4,a4,4
 398:	fff68693          	addi	a3,a3,-1
 39c:	00f680a3          	sb	a5,1(a3)
 3a0:	ff0712e3          	bne	a4,a6,384 <__neorv32_uart_tohex+0x14>
 3a4:	00058423          	sb	zero,8(a1)
 3a8:	00008067          	ret

000003ac <neorv32_uart0_available>:
 3ac:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3b0:	01255513          	srli	a0,a0,0x12
 3b4:	00157513          	andi	a0,a0,1
 3b8:	00008067          	ret

000003bc <neorv32_uart0_setup>:
 3bc:	ff010113          	addi	sp,sp,-16
 3c0:	00812423          	sw	s0,8(sp)
 3c4:	00912223          	sw	s1,4(sp)
 3c8:	00112623          	sw	ra,12(sp)
 3cc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3d0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 3d4:	00058413          	mv	s0,a1
 3d8:	00151593          	slli	a1,a0,0x1
 3dc:	00078513          	mv	a0,a5
 3e0:	00060493          	mv	s1,a2
 3e4:	798000ef          	jal	ra,b7c <__udivsi3>
 3e8:	01051513          	slli	a0,a0,0x10
 3ec:	000017b7          	lui	a5,0x1
 3f0:	01055513          	srli	a0,a0,0x10
 3f4:	00000713          	li	a4,0
 3f8:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x92>
 3fc:	04a7e463          	bltu	a5,a0,444 <neorv32_uart0_setup+0x88>
 400:	0034f793          	andi	a5,s1,3
 404:	00347413          	andi	s0,s0,3
 408:	fff50513          	addi	a0,a0,-1
 40c:	01479793          	slli	a5,a5,0x14
 410:	01641413          	slli	s0,s0,0x16
 414:	00f567b3          	or	a5,a0,a5
 418:	0087e7b3          	or	a5,a5,s0
 41c:	01871713          	slli	a4,a4,0x18
 420:	00c12083          	lw	ra,12(sp)
 424:	00812403          	lw	s0,8(sp)
 428:	00e7e7b3          	or	a5,a5,a4
 42c:	10000737          	lui	a4,0x10000
 430:	00e7e7b3          	or	a5,a5,a4
 434:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 438:	00412483          	lw	s1,4(sp)
 43c:	01010113          	addi	sp,sp,16
 440:	00008067          	ret
 444:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff092>
 448:	0fd6f693          	andi	a3,a3,253
 44c:	00069a63          	bnez	a3,460 <neorv32_uart0_setup+0xa4>
 450:	00355513          	srli	a0,a0,0x3
 454:	00170713          	addi	a4,a4,1
 458:	0ff77713          	andi	a4,a4,255
 45c:	fa1ff06f          	j	3fc <neorv32_uart0_setup+0x40>
 460:	00155513          	srli	a0,a0,0x1
 464:	ff1ff06f          	j	454 <neorv32_uart0_setup+0x98>

00000468 <neorv32_uart0_putc>:
 468:	00040737          	lui	a4,0x40
 46c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 470:	00e7f7b3          	and	a5,a5,a4
 474:	fe079ce3          	bnez	a5,46c <neorv32_uart0_putc+0x4>
 478:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 47c:	00008067          	ret

00000480 <neorv32_uart0_print>:
 480:	ff010113          	addi	sp,sp,-16
 484:	00812423          	sw	s0,8(sp)
 488:	01212023          	sw	s2,0(sp)
 48c:	00112623          	sw	ra,12(sp)
 490:	00912223          	sw	s1,4(sp)
 494:	00050413          	mv	s0,a0
 498:	00a00913          	li	s2,10
 49c:	00044483          	lbu	s1,0(s0)
 4a0:	00140413          	addi	s0,s0,1
 4a4:	00049e63          	bnez	s1,4c0 <neorv32_uart0_print+0x40>
 4a8:	00c12083          	lw	ra,12(sp)
 4ac:	00812403          	lw	s0,8(sp)
 4b0:	00412483          	lw	s1,4(sp)
 4b4:	00012903          	lw	s2,0(sp)
 4b8:	01010113          	addi	sp,sp,16
 4bc:	00008067          	ret
 4c0:	01249663          	bne	s1,s2,4cc <neorv32_uart0_print+0x4c>
 4c4:	00d00513          	li	a0,13
 4c8:	fa1ff0ef          	jal	ra,468 <neorv32_uart0_putc>
 4cc:	00048513          	mv	a0,s1
 4d0:	f99ff0ef          	jal	ra,468 <neorv32_uart0_putc>
 4d4:	fc9ff06f          	j	49c <neorv32_uart0_print+0x1c>

000004d8 <neorv32_uart0_printf>:
 4d8:	fa010113          	addi	sp,sp,-96
 4dc:	04f12a23          	sw	a5,84(sp)
 4e0:	04410793          	addi	a5,sp,68
 4e4:	02812c23          	sw	s0,56(sp)
 4e8:	03212823          	sw	s2,48(sp)
 4ec:	03412423          	sw	s4,40(sp)
 4f0:	03512223          	sw	s5,36(sp)
 4f4:	03612023          	sw	s6,32(sp)
 4f8:	01712e23          	sw	s7,28(sp)
 4fc:	01812c23          	sw	s8,24(sp)
 500:	01912a23          	sw	s9,20(sp)
 504:	02112e23          	sw	ra,60(sp)
 508:	02912a23          	sw	s1,52(sp)
 50c:	03312623          	sw	s3,44(sp)
 510:	00050413          	mv	s0,a0
 514:	04b12223          	sw	a1,68(sp)
 518:	04c12423          	sw	a2,72(sp)
 51c:	04d12623          	sw	a3,76(sp)
 520:	04e12823          	sw	a4,80(sp)
 524:	05012c23          	sw	a6,88(sp)
 528:	05112e23          	sw	a7,92(sp)
 52c:	00f12023          	sw	a5,0(sp)
 530:	02500a13          	li	s4,37
 534:	00a00a93          	li	s5,10
 538:	07300913          	li	s2,115
 53c:	07500b13          	li	s6,117
 540:	07800b93          	li	s7,120
 544:	06300c13          	li	s8,99
 548:	06900c93          	li	s9,105
 54c:	00044483          	lbu	s1,0(s0)
 550:	02049c63          	bnez	s1,588 <neorv32_uart0_printf+0xb0>
 554:	03c12083          	lw	ra,60(sp)
 558:	03812403          	lw	s0,56(sp)
 55c:	03412483          	lw	s1,52(sp)
 560:	03012903          	lw	s2,48(sp)
 564:	02c12983          	lw	s3,44(sp)
 568:	02812a03          	lw	s4,40(sp)
 56c:	02412a83          	lw	s5,36(sp)
 570:	02012b03          	lw	s6,32(sp)
 574:	01c12b83          	lw	s7,28(sp)
 578:	01812c03          	lw	s8,24(sp)
 57c:	01412c83          	lw	s9,20(sp)
 580:	06010113          	addi	sp,sp,96
 584:	00008067          	ret
 588:	0d449863          	bne	s1,s4,658 <neorv32_uart0_printf+0x180>
 58c:	00240993          	addi	s3,s0,2
 590:	00144403          	lbu	s0,1(s0)
 594:	05240263          	beq	s0,s2,5d8 <neorv32_uart0_printf+0x100>
 598:	00896e63          	bltu	s2,s0,5b4 <neorv32_uart0_printf+0xdc>
 59c:	05840c63          	beq	s0,s8,5f4 <neorv32_uart0_printf+0x11c>
 5a0:	07940663          	beq	s0,s9,60c <neorv32_uart0_printf+0x134>
 5a4:	02500513          	li	a0,37
 5a8:	ec1ff0ef          	jal	ra,468 <neorv32_uart0_putc>
 5ac:	00040513          	mv	a0,s0
 5b0:	0540006f          	j	604 <neorv32_uart0_printf+0x12c>
 5b4:	09640663          	beq	s0,s6,640 <neorv32_uart0_printf+0x168>
 5b8:	ff7416e3          	bne	s0,s7,5a4 <neorv32_uart0_printf+0xcc>
 5bc:	00012783          	lw	a5,0(sp)
 5c0:	00410593          	addi	a1,sp,4
 5c4:	0007a503          	lw	a0,0(a5)
 5c8:	00478713          	addi	a4,a5,4
 5cc:	00e12023          	sw	a4,0(sp)
 5d0:	da1ff0ef          	jal	ra,370 <__neorv32_uart_tohex>
 5d4:	0640006f          	j	638 <neorv32_uart0_printf+0x160>
 5d8:	00012783          	lw	a5,0(sp)
 5dc:	0007a503          	lw	a0,0(a5)
 5e0:	00478713          	addi	a4,a5,4
 5e4:	00e12023          	sw	a4,0(sp)
 5e8:	e99ff0ef          	jal	ra,480 <neorv32_uart0_print>
 5ec:	00098413          	mv	s0,s3
 5f0:	f5dff06f          	j	54c <neorv32_uart0_printf+0x74>
 5f4:	00012783          	lw	a5,0(sp)
 5f8:	0007c503          	lbu	a0,0(a5)
 5fc:	00478713          	addi	a4,a5,4
 600:	00e12023          	sw	a4,0(sp)
 604:	e65ff0ef          	jal	ra,468 <neorv32_uart0_putc>
 608:	fe5ff06f          	j	5ec <neorv32_uart0_printf+0x114>
 60c:	00012783          	lw	a5,0(sp)
 610:	0007a403          	lw	s0,0(a5)
 614:	00478713          	addi	a4,a5,4
 618:	00e12023          	sw	a4,0(sp)
 61c:	00045863          	bgez	s0,62c <neorv32_uart0_printf+0x154>
 620:	02d00513          	li	a0,45
 624:	40800433          	neg	s0,s0
 628:	e41ff0ef          	jal	ra,468 <neorv32_uart0_putc>
 62c:	00410593          	addi	a1,sp,4
 630:	00040513          	mv	a0,s0
 634:	c35ff0ef          	jal	ra,268 <__neorv32_uart_itoa>
 638:	00410513          	addi	a0,sp,4
 63c:	fadff06f          	j	5e8 <neorv32_uart0_printf+0x110>
 640:	00012783          	lw	a5,0(sp)
 644:	00410593          	addi	a1,sp,4
 648:	00478713          	addi	a4,a5,4
 64c:	0007a503          	lw	a0,0(a5)
 650:	00e12023          	sw	a4,0(sp)
 654:	fe1ff06f          	j	634 <neorv32_uart0_printf+0x15c>
 658:	01549663          	bne	s1,s5,664 <neorv32_uart0_printf+0x18c>
 65c:	00d00513          	li	a0,13
 660:	e09ff0ef          	jal	ra,468 <neorv32_uart0_putc>
 664:	00140993          	addi	s3,s0,1
 668:	00048513          	mv	a0,s1
 66c:	f99ff06f          	j	604 <neorv32_uart0_printf+0x12c>

00000670 <neorv32_gpio_available>:
 670:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 674:	01055513          	srli	a0,a0,0x10
 678:	00157513          	andi	a0,a0,1
 67c:	00008067          	ret

00000680 <__neorv32_rte_core>:
 680:	fc010113          	addi	sp,sp,-64
 684:	02112e23          	sw	ra,60(sp)
 688:	02512c23          	sw	t0,56(sp)
 68c:	02612a23          	sw	t1,52(sp)
 690:	02712823          	sw	t2,48(sp)
 694:	02a12623          	sw	a0,44(sp)
 698:	02b12423          	sw	a1,40(sp)
 69c:	02c12223          	sw	a2,36(sp)
 6a0:	02d12023          	sw	a3,32(sp)
 6a4:	00e12e23          	sw	a4,28(sp)
 6a8:	00f12c23          	sw	a5,24(sp)
 6ac:	01012a23          	sw	a6,20(sp)
 6b0:	01112823          	sw	a7,16(sp)
 6b4:	01c12623          	sw	t3,12(sp)
 6b8:	01d12423          	sw	t4,8(sp)
 6bc:	01e12223          	sw	t5,4(sp)
 6c0:	01f12023          	sw	t6,0(sp)
 6c4:	34102773          	csrr	a4,mepc
 6c8:	34071073          	csrw	mscratch,a4
 6cc:	342027f3          	csrr	a5,mcause
 6d0:	0807ca63          	bltz	a5,764 <__neorv32_rte_core+0xe4>
 6d4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f094>
 6d8:	00300593          	li	a1,3
 6dc:	0036f693          	andi	a3,a3,3
 6e0:	00270613          	addi	a2,a4,2
 6e4:	00b69463          	bne	a3,a1,6ec <__neorv32_rte_core+0x6c>
 6e8:	00470613          	addi	a2,a4,4
 6ec:	34161073          	csrw	mepc,a2
 6f0:	00b00713          	li	a4,11
 6f4:	04f77c63          	bgeu	a4,a5,74c <__neorv32_rte_core+0xcc>
 6f8:	000017b7          	lui	a5,0x1
 6fc:	90078793          	addi	a5,a5,-1792 # 900 <__neorv32_rte_debug_exc_handler>
 700:	000780e7          	jalr	a5
 704:	03c12083          	lw	ra,60(sp)
 708:	03812283          	lw	t0,56(sp)
 70c:	03412303          	lw	t1,52(sp)
 710:	03012383          	lw	t2,48(sp)
 714:	02c12503          	lw	a0,44(sp)
 718:	02812583          	lw	a1,40(sp)
 71c:	02412603          	lw	a2,36(sp)
 720:	02012683          	lw	a3,32(sp)
 724:	01c12703          	lw	a4,28(sp)
 728:	01812783          	lw	a5,24(sp)
 72c:	01412803          	lw	a6,20(sp)
 730:	01012883          	lw	a7,16(sp)
 734:	00c12e03          	lw	t3,12(sp)
 738:	00812e83          	lw	t4,8(sp)
 73c:	00412f03          	lw	t5,4(sp)
 740:	00012f83          	lw	t6,0(sp)
 744:	04010113          	addi	sp,sp,64
 748:	30200073          	mret
 74c:	00001737          	lui	a4,0x1
 750:	00279793          	slli	a5,a5,0x2
 754:	cc470713          	addi	a4,a4,-828 # cc4 <symbols.0+0x14>
 758:	00e787b3          	add	a5,a5,a4
 75c:	0007a783          	lw	a5,0(a5)
 760:	00078067          	jr	a5
 764:	80000737          	lui	a4,0x80000
 768:	ffd74713          	xori	a4,a4,-3
 76c:	00e787b3          	add	a5,a5,a4
 770:	01c00713          	li	a4,28
 774:	f8f762e3          	bltu	a4,a5,6f8 <__neorv32_rte_core+0x78>
 778:	00001737          	lui	a4,0x1
 77c:	00279793          	slli	a5,a5,0x2
 780:	cf470713          	addi	a4,a4,-780 # cf4 <symbols.0+0x44>
 784:	00e787b3          	add	a5,a5,a4
 788:	0007a783          	lw	a5,0(a5)
 78c:	00078067          	jr	a5
 790:	800007b7          	lui	a5,0x80000
 794:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 798:	f69ff06f          	j	700 <__neorv32_rte_core+0x80>
 79c:	800007b7          	lui	a5,0x80000
 7a0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 7a4:	f5dff06f          	j	700 <__neorv32_rte_core+0x80>
 7a8:	800007b7          	lui	a5,0x80000
 7ac:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 7b0:	f51ff06f          	j	700 <__neorv32_rte_core+0x80>
 7b4:	800007b7          	lui	a5,0x80000
 7b8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 7bc:	f45ff06f          	j	700 <__neorv32_rte_core+0x80>
 7c0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 7c4:	f3dff06f          	j	700 <__neorv32_rte_core+0x80>
 7c8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 7cc:	f35ff06f          	j	700 <__neorv32_rte_core+0x80>
 7d0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 7d4:	f2dff06f          	j	700 <__neorv32_rte_core+0x80>
 7d8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 7dc:	f25ff06f          	j	700 <__neorv32_rte_core+0x80>
 7e0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 7e4:	f1dff06f          	j	700 <__neorv32_rte_core+0x80>
 7e8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 7ec:	f15ff06f          	j	700 <__neorv32_rte_core+0x80>
 7f0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 7f4:	f0dff06f          	j	700 <__neorv32_rte_core+0x80>
 7f8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 7fc:	f05ff06f          	j	700 <__neorv32_rte_core+0x80>
 800:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 804:	efdff06f          	j	700 <__neorv32_rte_core+0x80>
 808:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 80c:	ef5ff06f          	j	700 <__neorv32_rte_core+0x80>
 810:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 814:	eedff06f          	j	700 <__neorv32_rte_core+0x80>
 818:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 81c:	ee5ff06f          	j	700 <__neorv32_rte_core+0x80>
 820:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 824:	eddff06f          	j	700 <__neorv32_rte_core+0x80>
 828:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 82c:	ed5ff06f          	j	700 <__neorv32_rte_core+0x80>
 830:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 834:	ecdff06f          	j	700 <__neorv32_rte_core+0x80>
 838:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 83c:	ec5ff06f          	j	700 <__neorv32_rte_core+0x80>
 840:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 844:	ebdff06f          	j	700 <__neorv32_rte_core+0x80>
 848:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 84c:	eb5ff06f          	j	700 <__neorv32_rte_core+0x80>
 850:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 854:	eadff06f          	j	700 <__neorv32_rte_core+0x80>
 858:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 85c:	ea5ff06f          	j	700 <__neorv32_rte_core+0x80>
 860:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 864:	e9dff06f          	j	700 <__neorv32_rte_core+0x80>
 868:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 86c:	e95ff06f          	j	700 <__neorv32_rte_core+0x80>
 870:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 874:	e8dff06f          	j	700 <__neorv32_rte_core+0x80>
 878:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 87c:	e85ff06f          	j	700 <__neorv32_rte_core+0x80>
 880:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 884:	e7dff06f          	j	700 <__neorv32_rte_core+0x80>
 888:	0000                	unimp
 88a:	0000                	unimp
 88c:	0000                	unimp
 88e:	0000                	unimp

00000890 <__neorv32_rte_print_hex_word>:
 890:	fe010113          	addi	sp,sp,-32
 894:	01212823          	sw	s2,16(sp)
 898:	00050913          	mv	s2,a0
 89c:	00001537          	lui	a0,0x1
 8a0:	00912a23          	sw	s1,20(sp)
 8a4:	d6850513          	addi	a0,a0,-664 # d68 <symbols.0+0xb8>
 8a8:	000014b7          	lui	s1,0x1
 8ac:	00812c23          	sw	s0,24(sp)
 8b0:	01312623          	sw	s3,12(sp)
 8b4:	00112e23          	sw	ra,28(sp)
 8b8:	01c00413          	li	s0,28
 8bc:	bc5ff0ef          	jal	ra,480 <neorv32_uart0_print>
 8c0:	f5c48493          	addi	s1,s1,-164 # f5c <hex_symbols.0>
 8c4:	ffc00993          	li	s3,-4
 8c8:	008957b3          	srl	a5,s2,s0
 8cc:	00f7f793          	andi	a5,a5,15
 8d0:	00f487b3          	add	a5,s1,a5
 8d4:	0007c503          	lbu	a0,0(a5)
 8d8:	ffc40413          	addi	s0,s0,-4
 8dc:	b8dff0ef          	jal	ra,468 <neorv32_uart0_putc>
 8e0:	ff3414e3          	bne	s0,s3,8c8 <__neorv32_rte_print_hex_word+0x38>
 8e4:	01c12083          	lw	ra,28(sp)
 8e8:	01812403          	lw	s0,24(sp)
 8ec:	01412483          	lw	s1,20(sp)
 8f0:	01012903          	lw	s2,16(sp)
 8f4:	00c12983          	lw	s3,12(sp)
 8f8:	02010113          	addi	sp,sp,32
 8fc:	00008067          	ret

00000900 <__neorv32_rte_debug_exc_handler>:
 900:	ff010113          	addi	sp,sp,-16
 904:	00112623          	sw	ra,12(sp)
 908:	00812423          	sw	s0,8(sp)
 90c:	00912223          	sw	s1,4(sp)
 910:	a9dff0ef          	jal	ra,3ac <neorv32_uart0_available>
 914:	1c050863          	beqz	a0,ae4 <__neorv32_rte_debug_exc_handler+0x1e4>
 918:	00001537          	lui	a0,0x1
 91c:	d6c50513          	addi	a0,a0,-660 # d6c <symbols.0+0xbc>
 920:	b61ff0ef          	jal	ra,480 <neorv32_uart0_print>
 924:	34202473          	csrr	s0,mcause
 928:	00900713          	li	a4,9
 92c:	00f47793          	andi	a5,s0,15
 930:	03078493          	addi	s1,a5,48
 934:	00f77463          	bgeu	a4,a5,93c <__neorv32_rte_debug_exc_handler+0x3c>
 938:	05778493          	addi	s1,a5,87
 93c:	00b00793          	li	a5,11
 940:	0087ee63          	bltu	a5,s0,95c <__neorv32_rte_debug_exc_handler+0x5c>
 944:	00001737          	lui	a4,0x1
 948:	00241793          	slli	a5,s0,0x2
 94c:	f2c70713          	addi	a4,a4,-212 # f2c <symbols.0+0x27c>
 950:	00e787b3          	add	a5,a5,a4
 954:	0007a783          	lw	a5,0(a5)
 958:	00078067          	jr	a5
 95c:	800007b7          	lui	a5,0x80000
 960:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 964:	14e40e63          	beq	s0,a4,ac0 <__neorv32_rte_debug_exc_handler+0x1c0>
 968:	02876a63          	bltu	a4,s0,99c <__neorv32_rte_debug_exc_handler+0x9c>
 96c:	00378713          	addi	a4,a5,3
 970:	12e40c63          	beq	s0,a4,aa8 <__neorv32_rte_debug_exc_handler+0x1a8>
 974:	00778793          	addi	a5,a5,7
 978:	12f40e63          	beq	s0,a5,ab4 <__neorv32_rte_debug_exc_handler+0x1b4>
 97c:	00001537          	lui	a0,0x1
 980:	ecc50513          	addi	a0,a0,-308 # ecc <symbols.0+0x21c>
 984:	afdff0ef          	jal	ra,480 <neorv32_uart0_print>
 988:	00040513          	mv	a0,s0
 98c:	f05ff0ef          	jal	ra,890 <__neorv32_rte_print_hex_word>
 990:	00100793          	li	a5,1
 994:	08f40c63          	beq	s0,a5,a2c <__neorv32_rte_debug_exc_handler+0x12c>
 998:	0280006f          	j	9c0 <__neorv32_rte_debug_exc_handler+0xc0>
 99c:	ff07c793          	xori	a5,a5,-16
 9a0:	00f407b3          	add	a5,s0,a5
 9a4:	00f00713          	li	a4,15
 9a8:	fcf76ae3          	bltu	a4,a5,97c <__neorv32_rte_debug_exc_handler+0x7c>
 9ac:	00001537          	lui	a0,0x1
 9b0:	ebc50513          	addi	a0,a0,-324 # ebc <symbols.0+0x20c>
 9b4:	acdff0ef          	jal	ra,480 <neorv32_uart0_print>
 9b8:	00048513          	mv	a0,s1
 9bc:	aadff0ef          	jal	ra,468 <neorv32_uart0_putc>
 9c0:	ffd47413          	andi	s0,s0,-3
 9c4:	00500793          	li	a5,5
 9c8:	06f40263          	beq	s0,a5,a2c <__neorv32_rte_debug_exc_handler+0x12c>
 9cc:	00001537          	lui	a0,0x1
 9d0:	f1050513          	addi	a0,a0,-240 # f10 <symbols.0+0x260>
 9d4:	aadff0ef          	jal	ra,480 <neorv32_uart0_print>
 9d8:	34002573          	csrr	a0,mscratch
 9dc:	eb5ff0ef          	jal	ra,890 <__neorv32_rte_print_hex_word>
 9e0:	00001537          	lui	a0,0x1
 9e4:	f1850513          	addi	a0,a0,-232 # f18 <symbols.0+0x268>
 9e8:	a99ff0ef          	jal	ra,480 <neorv32_uart0_print>
 9ec:	34302573          	csrr	a0,mtval
 9f0:	ea1ff0ef          	jal	ra,890 <__neorv32_rte_print_hex_word>
 9f4:	00812403          	lw	s0,8(sp)
 9f8:	00c12083          	lw	ra,12(sp)
 9fc:	00412483          	lw	s1,4(sp)
 a00:	00001537          	lui	a0,0x1
 a04:	f2450513          	addi	a0,a0,-220 # f24 <symbols.0+0x274>
 a08:	01010113          	addi	sp,sp,16
 a0c:	a75ff06f          	j	480 <neorv32_uart0_print>
 a10:	00001537          	lui	a0,0x1
 a14:	d7450513          	addi	a0,a0,-652 # d74 <symbols.0+0xc4>
 a18:	a69ff0ef          	jal	ra,480 <neorv32_uart0_print>
 a1c:	fb1ff06f          	j	9cc <__neorv32_rte_debug_exc_handler+0xcc>
 a20:	00001537          	lui	a0,0x1
 a24:	d9450513          	addi	a0,a0,-620 # d94 <symbols.0+0xe4>
 a28:	a59ff0ef          	jal	ra,480 <neorv32_uart0_print>
 a2c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 a30:	0a07d463          	bgez	a5,ad8 <__neorv32_rte_debug_exc_handler+0x1d8>
 a34:	0017f793          	andi	a5,a5,1
 a38:	08078a63          	beqz	a5,acc <__neorv32_rte_debug_exc_handler+0x1cc>
 a3c:	00001537          	lui	a0,0x1
 a40:	ee450513          	addi	a0,a0,-284 # ee4 <symbols.0+0x234>
 a44:	fd5ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a48:	00001537          	lui	a0,0x1
 a4c:	db050513          	addi	a0,a0,-592 # db0 <symbols.0+0x100>
 a50:	fc9ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a54:	00001537          	lui	a0,0x1
 a58:	dc450513          	addi	a0,a0,-572 # dc4 <symbols.0+0x114>
 a5c:	fbdff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a60:	00001537          	lui	a0,0x1
 a64:	dd050513          	addi	a0,a0,-560 # dd0 <symbols.0+0x120>
 a68:	fb1ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a6c:	00001537          	lui	a0,0x1
 a70:	de850513          	addi	a0,a0,-536 # de8 <symbols.0+0x138>
 a74:	fb5ff06f          	j	a28 <__neorv32_rte_debug_exc_handler+0x128>
 a78:	00001537          	lui	a0,0x1
 a7c:	dfc50513          	addi	a0,a0,-516 # dfc <symbols.0+0x14c>
 a80:	f99ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a84:	00001537          	lui	a0,0x1
 a88:	e1850513          	addi	a0,a0,-488 # e18 <symbols.0+0x168>
 a8c:	f9dff06f          	j	a28 <__neorv32_rte_debug_exc_handler+0x128>
 a90:	00001537          	lui	a0,0x1
 a94:	e2c50513          	addi	a0,a0,-468 # e2c <symbols.0+0x17c>
 a98:	f81ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a9c:	00001537          	lui	a0,0x1
 aa0:	e4c50513          	addi	a0,a0,-436 # e4c <symbols.0+0x19c>
 aa4:	f75ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 aa8:	00001537          	lui	a0,0x1
 aac:	e6c50513          	addi	a0,a0,-404 # e6c <symbols.0+0x1bc>
 ab0:	f69ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ab4:	00001537          	lui	a0,0x1
 ab8:	e8850513          	addi	a0,a0,-376 # e88 <symbols.0+0x1d8>
 abc:	f5dff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ac0:	00001537          	lui	a0,0x1
 ac4:	ea050513          	addi	a0,a0,-352 # ea0 <symbols.0+0x1f0>
 ac8:	f51ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 acc:	00001537          	lui	a0,0x1
 ad0:	ef450513          	addi	a0,a0,-268 # ef4 <symbols.0+0x244>
 ad4:	f45ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ad8:	00001537          	lui	a0,0x1
 adc:	f0450513          	addi	a0,a0,-252 # f04 <symbols.0+0x254>
 ae0:	f39ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ae4:	00c12083          	lw	ra,12(sp)
 ae8:	00812403          	lw	s0,8(sp)
 aec:	00412483          	lw	s1,4(sp)
 af0:	01010113          	addi	sp,sp,16
 af4:	00008067          	ret

00000af8 <neorv32_rte_exception_uninstall>:
 af8:	01f00793          	li	a5,31
 afc:	02a7e463          	bltu	a5,a0,b24 <neorv32_rte_exception_uninstall+0x2c>
 b00:	800007b7          	lui	a5,0x80000
 b04:	00078793          	mv	a5,a5
 b08:	00251513          	slli	a0,a0,0x2
 b0c:	00a78533          	add	a0,a5,a0
 b10:	000017b7          	lui	a5,0x1
 b14:	90078793          	addi	a5,a5,-1792 # 900 <__neorv32_rte_debug_exc_handler>
 b18:	00f52023          	sw	a5,0(a0)
 b1c:	00000513          	li	a0,0
 b20:	00008067          	ret
 b24:	00100513          	li	a0,1
 b28:	00008067          	ret

00000b2c <neorv32_rte_setup>:
 b2c:	ff010113          	addi	sp,sp,-16
 b30:	00112623          	sw	ra,12(sp)
 b34:	00812423          	sw	s0,8(sp)
 b38:	00912223          	sw	s1,4(sp)
 b3c:	68000793          	li	a5,1664
 b40:	30579073          	csrw	mtvec,a5
 b44:	00000413          	li	s0,0
 b48:	01d00493          	li	s1,29
 b4c:	00040513          	mv	a0,s0
 b50:	00140413          	addi	s0,s0,1
 b54:	0ff47413          	andi	s0,s0,255
 b58:	fa1ff0ef          	jal	ra,af8 <neorv32_rte_exception_uninstall>
 b5c:	fe9418e3          	bne	s0,s1,b4c <neorv32_rte_setup+0x20>
 b60:	00c12083          	lw	ra,12(sp)
 b64:	00812403          	lw	s0,8(sp)
 b68:	00412483          	lw	s1,4(sp)
 b6c:	01010113          	addi	sp,sp,16
 b70:	00008067          	ret

00000b74 <__divsi3>:
 b74:	06054063          	bltz	a0,bd4 <__umodsi3+0x10>
 b78:	0605c663          	bltz	a1,be4 <__umodsi3+0x20>

00000b7c <__udivsi3>:
 b7c:	00058613          	mv	a2,a1
 b80:	00050593          	mv	a1,a0
 b84:	fff00513          	li	a0,-1
 b88:	02060c63          	beqz	a2,bc0 <__udivsi3+0x44>
 b8c:	00100693          	li	a3,1
 b90:	00b67a63          	bgeu	a2,a1,ba4 <__udivsi3+0x28>
 b94:	00c05863          	blez	a2,ba4 <__udivsi3+0x28>
 b98:	00161613          	slli	a2,a2,0x1
 b9c:	00169693          	slli	a3,a3,0x1
 ba0:	feb66ae3          	bltu	a2,a1,b94 <__udivsi3+0x18>
 ba4:	00000513          	li	a0,0
 ba8:	00c5e663          	bltu	a1,a2,bb4 <__udivsi3+0x38>
 bac:	40c585b3          	sub	a1,a1,a2
 bb0:	00d56533          	or	a0,a0,a3
 bb4:	0016d693          	srli	a3,a3,0x1
 bb8:	00165613          	srli	a2,a2,0x1
 bbc:	fe0696e3          	bnez	a3,ba8 <__udivsi3+0x2c>
 bc0:	00008067          	ret

00000bc4 <__umodsi3>:
 bc4:	00008293          	mv	t0,ra
 bc8:	fb5ff0ef          	jal	ra,b7c <__udivsi3>
 bcc:	00058513          	mv	a0,a1
 bd0:	00028067          	jr	t0
 bd4:	40a00533          	neg	a0,a0
 bd8:	00b04863          	bgtz	a1,be8 <__umodsi3+0x24>
 bdc:	40b005b3          	neg	a1,a1
 be0:	f9dff06f          	j	b7c <__udivsi3>
 be4:	40b005b3          	neg	a1,a1
 be8:	00008293          	mv	t0,ra
 bec:	f91ff0ef          	jal	ra,b7c <__udivsi3>
 bf0:	40a00533          	neg	a0,a0
 bf4:	00028067          	jr	t0

00000bf8 <__modsi3>:
 bf8:	00008293          	mv	t0,ra
 bfc:	0005ca63          	bltz	a1,c10 <__modsi3+0x18>
 c00:	00054c63          	bltz	a0,c18 <__modsi3+0x20>
 c04:	f79ff0ef          	jal	ra,b7c <__udivsi3>
 c08:	00058513          	mv	a0,a1
 c0c:	00028067          	jr	t0
 c10:	40b005b3          	neg	a1,a1
 c14:	fe0558e3          	bgez	a0,c04 <__modsi3+0xc>
 c18:	40a00533          	neg	a0,a0
 c1c:	f61ff0ef          	jal	ra,b7c <__udivsi3>
 c20:	40b00533          	neg	a0,a1
 c24:	00028067          	jr	t0
