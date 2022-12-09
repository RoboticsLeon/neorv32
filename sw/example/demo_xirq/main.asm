
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
  c8:	8f418613          	addi	a2,gp,-1804 # 800000f4 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	01c58593          	addi	a1,a1,28 # 10f8 <__crt0_copy_data_src_begin>
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
 188:	00812423          	sw	s0,8(sp)
 18c:	305000ef          	jal	ra,c90 <neorv32_rte_setup>
 190:	00005537          	lui	a0,0x5
 194:	00000613          	li	a2,0
 198:	00000593          	li	a1,0
 19c:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3a08>
 1a0:	330000ef          	jal	ra,4d0 <neorv32_uart0_setup>
 1a4:	148000ef          	jal	ra,2ec <neorv32_xirq_available>
 1a8:	02051263          	bnez	a0,1cc <main+0x4c>
 1ac:	00001537          	lui	a0,0x1
 1b0:	dac50513          	addi	a0,a0,-596 # dac <__etext+0x20>
 1b4:	438000ef          	jal	ra,5ec <neorv32_uart0_printf>
 1b8:	00c12083          	lw	ra,12(sp)
 1bc:	00812403          	lw	s0,8(sp)
 1c0:	00100513          	li	a0,1
 1c4:	01010113          	addi	sp,sp,16
 1c8:	00008067          	ret
 1cc:	00001537          	lui	a0,0x1
 1d0:	dc450513          	addi	a0,a0,-572 # dc4 <__etext+0x38>
 1d4:	418000ef          	jal	ra,5ec <neorv32_uart0_printf>
 1d8:	124000ef          	jal	ra,2fc <neorv32_xirq_setup>
 1dc:	00050863          	beqz	a0,1ec <main+0x6c>
 1e0:	00001537          	lui	a0,0x1
 1e4:	df850513          	addi	a0,a0,-520 # df8 <__etext+0x6c>
 1e8:	fcdff06f          	j	1b4 <main+0x34>
 1ec:	26400593          	li	a1,612
 1f0:	144000ef          	jal	ra,334 <neorv32_xirq_install>
 1f4:	00050413          	mv	s0,a0
 1f8:	27400593          	li	a1,628
 1fc:	00100513          	li	a0,1
 200:	134000ef          	jal	ra,334 <neorv32_xirq_install>
 204:	00a40433          	add	s0,s0,a0
 208:	28400593          	li	a1,644
 20c:	00200513          	li	a0,2
 210:	124000ef          	jal	ra,334 <neorv32_xirq_install>
 214:	00a40433          	add	s0,s0,a0
 218:	29400593          	li	a1,660
 21c:	00300513          	li	a0,3
 220:	114000ef          	jal	ra,334 <neorv32_xirq_install>
 224:	00a40433          	add	s0,s0,a0
 228:	00040863          	beqz	s0,238 <main+0xb8>
 22c:	00001537          	lui	a0,0x1
 230:	e1450513          	addi	a0,a0,-492 # e14 <__etext+0x88>
 234:	f81ff06f          	j	1b4 <main+0x34>
 238:	0f4000ef          	jal	ra,32c <neorv32_xirq_global_enable>
 23c:	30046073          	csrsi	mstatus,8
 240:	00000013          	nop
 244:	00000013          	nop
 248:	00f00513          	li	a0,15
 24c:	00000593          	li	a1,0
 250:	534000ef          	jal	ra,784 <neorv32_gpio_port_set>
 254:	00000513          	li	a0,0
 258:	00000593          	li	a1,0
 25c:	528000ef          	jal	ra,784 <neorv32_gpio_port_set>
 260:	0000006f          	j	260 <main+0xe0>

00000264 <xirq_handler_ch0>:
 264:	00001537          	lui	a0,0x1
 268:	00000593          	li	a1,0
 26c:	d8c50513          	addi	a0,a0,-628 # d8c <__etext>
 270:	37c0006f          	j	5ec <neorv32_uart0_printf>

00000274 <xirq_handler_ch1>:
 274:	00001537          	lui	a0,0x1
 278:	00100593          	li	a1,1
 27c:	d8c50513          	addi	a0,a0,-628 # d8c <__etext>
 280:	36c0006f          	j	5ec <neorv32_uart0_printf>

00000284 <xirq_handler_ch2>:
 284:	00001537          	lui	a0,0x1
 288:	00200593          	li	a1,2
 28c:	d8c50513          	addi	a0,a0,-628 # d8c <__etext>
 290:	35c0006f          	j	5ec <neorv32_uart0_printf>

00000294 <xirq_handler_ch3>:
 294:	00001537          	lui	a0,0x1
 298:	00300593          	li	a1,3
 29c:	d8c50513          	addi	a0,a0,-628 # d8c <__etext>
 2a0:	34c0006f          	j	5ec <neorv32_uart0_printf>
 2a4:	0000                	unimp
 2a6:	0000                	unimp
 2a8:	0000                	unimp
 2aa:	0000                	unimp
 2ac:	0000                	unimp
 2ae:	0000                	unimp

000002b0 <__neorv32_xirq_core>:
 2b0:	f8000693          	li	a3,-128
 2b4:	0086a783          	lw	a5,8(a3)
 2b8:	00100713          	li	a4,1
 2bc:	00f71733          	sll	a4,a4,a5
 2c0:	fff74713          	not	a4,a4
 2c4:	00e6a223          	sw	a4,4(a3)
 2c8:	00279713          	slli	a4,a5,0x2
 2cc:	800007b7          	lui	a5,0x80000
 2d0:	00078793          	mv	a5,a5
 2d4:	0006a423          	sw	zero,8(a3)
 2d8:	00e787b3          	add	a5,a5,a4
 2dc:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 2e0:	00078067          	jr	a5

000002e4 <__neorv32_xirq_dummy_handler>:
 2e4:	00000013          	nop
 2e8:	00008067          	ret

000002ec <neorv32_xirq_available>:
 2ec:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 2f0:	01c55513          	srli	a0,a0,0x1c
 2f4:	00157513          	andi	a0,a0,1
 2f8:	00008067          	ret

000002fc <neorv32_xirq_setup>:
 2fc:	800007b7          	lui	a5,0x80000
 300:	f8002023          	sw	zero,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 304:	00078793          	mv	a5,a5
 308:	f8002223          	sw	zero,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 30c:	08078693          	addi	a3,a5,128 # 80000080 <__ctr0_io_space_begin+0x80000280>
 310:	2e400713          	li	a4,740
 314:	00e7a023          	sw	a4,0(a5)
 318:	00478793          	addi	a5,a5,4
 31c:	fed79ce3          	bne	a5,a3,314 <neorv32_xirq_setup+0x18>
 320:	2b000593          	li	a1,688
 324:	01500513          	li	a0,21
 328:	1110006f          	j	c38 <neorv32_rte_exception_install>

0000032c <neorv32_xirq_global_enable>:
 32c:	01800513          	li	a0,24
 330:	4640006f          	j	794 <neorv32_cpu_irq_enable>

00000334 <neorv32_xirq_install>:
 334:	01f00793          	li	a5,31
 338:	02a7ee63          	bltu	a5,a0,374 <neorv32_xirq_install+0x40>
 33c:	800007b7          	lui	a5,0x80000
 340:	00251713          	slli	a4,a0,0x2
 344:	00078793          	mv	a5,a5
 348:	00e787b3          	add	a5,a5,a4
 34c:	00b7a023          	sw	a1,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 350:	00100793          	li	a5,1
 354:	00a79533          	sll	a0,a5,a0
 358:	fff54793          	not	a5,a0
 35c:	f8f02223          	sw	a5,-124(zero) # ffffff84 <__ctr0_io_space_begin+0x184>
 360:	f8002783          	lw	a5,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 364:	00a7e533          	or	a0,a5,a0
 368:	f8a02023          	sw	a0,-128(zero) # ffffff80 <__ctr0_io_space_begin+0x180>
 36c:	00000513          	li	a0,0
 370:	00008067          	ret
 374:	00100513          	li	a0,1
 378:	00008067          	ret

0000037c <__neorv32_uart_itoa>:
 37c:	fd010113          	addi	sp,sp,-48
 380:	02812423          	sw	s0,40(sp)
 384:	02912223          	sw	s1,36(sp)
 388:	03212023          	sw	s2,32(sp)
 38c:	01312e23          	sw	s3,28(sp)
 390:	01412c23          	sw	s4,24(sp)
 394:	02112623          	sw	ra,44(sp)
 398:	01512a23          	sw	s5,20(sp)
 39c:	00001a37          	lui	s4,0x1
 3a0:	00050493          	mv	s1,a0
 3a4:	00058413          	mv	s0,a1
 3a8:	00058523          	sb	zero,10(a1)
 3ac:	00000993          	li	s3,0
 3b0:	00410913          	addi	s2,sp,4
 3b4:	e30a0a13          	addi	s4,s4,-464 # e30 <numbers.1>
 3b8:	00a00593          	li	a1,10
 3bc:	00048513          	mv	a0,s1
 3c0:	169000ef          	jal	ra,d28 <__umodsi3>
 3c4:	00aa0533          	add	a0,s4,a0
 3c8:	00054783          	lbu	a5,0(a0)
 3cc:	01390ab3          	add	s5,s2,s3
 3d0:	00048513          	mv	a0,s1
 3d4:	00fa8023          	sb	a5,0(s5)
 3d8:	00a00593          	li	a1,10
 3dc:	105000ef          	jal	ra,ce0 <__udivsi3>
 3e0:	00198993          	addi	s3,s3,1
 3e4:	00a00793          	li	a5,10
 3e8:	00050493          	mv	s1,a0
 3ec:	fcf996e3          	bne	s3,a5,3b8 <__neorv32_uart_itoa+0x3c>
 3f0:	00090693          	mv	a3,s2
 3f4:	00900713          	li	a4,9
 3f8:	03000613          	li	a2,48
 3fc:	0096c583          	lbu	a1,9(a3)
 400:	00070793          	mv	a5,a4
 404:	fff70713          	addi	a4,a4,-1
 408:	01071713          	slli	a4,a4,0x10
 40c:	01075713          	srli	a4,a4,0x10
 410:	00c59a63          	bne	a1,a2,424 <__neorv32_uart_itoa+0xa8>
 414:	000684a3          	sb	zero,9(a3)
 418:	fff68693          	addi	a3,a3,-1
 41c:	fe0710e3          	bnez	a4,3fc <__neorv32_uart_itoa+0x80>
 420:	00000793          	li	a5,0
 424:	00f907b3          	add	a5,s2,a5
 428:	00000593          	li	a1,0
 42c:	0007c703          	lbu	a4,0(a5)
 430:	00070c63          	beqz	a4,448 <__neorv32_uart_itoa+0xcc>
 434:	00158693          	addi	a3,a1,1
 438:	00b405b3          	add	a1,s0,a1
 43c:	00e58023          	sb	a4,0(a1)
 440:	01069593          	slli	a1,a3,0x10
 444:	0105d593          	srli	a1,a1,0x10
 448:	fff78713          	addi	a4,a5,-1
 44c:	02f91863          	bne	s2,a5,47c <__neorv32_uart_itoa+0x100>
 450:	00b40433          	add	s0,s0,a1
 454:	00040023          	sb	zero,0(s0)
 458:	02c12083          	lw	ra,44(sp)
 45c:	02812403          	lw	s0,40(sp)
 460:	02412483          	lw	s1,36(sp)
 464:	02012903          	lw	s2,32(sp)
 468:	01c12983          	lw	s3,28(sp)
 46c:	01812a03          	lw	s4,24(sp)
 470:	01412a83          	lw	s5,20(sp)
 474:	03010113          	addi	sp,sp,48
 478:	00008067          	ret
 47c:	00070793          	mv	a5,a4
 480:	fadff06f          	j	42c <__neorv32_uart_itoa+0xb0>

00000484 <__neorv32_uart_tohex>:
 484:	00001637          	lui	a2,0x1
 488:	00758693          	addi	a3,a1,7
 48c:	00000713          	li	a4,0
 490:	e3c60613          	addi	a2,a2,-452 # e3c <symbols.0>
 494:	02000813          	li	a6,32
 498:	00e557b3          	srl	a5,a0,a4
 49c:	00f7f793          	andi	a5,a5,15
 4a0:	00f607b3          	add	a5,a2,a5
 4a4:	0007c783          	lbu	a5,0(a5)
 4a8:	00470713          	addi	a4,a4,4
 4ac:	fff68693          	addi	a3,a3,-1
 4b0:	00f680a3          	sb	a5,1(a3)
 4b4:	ff0712e3          	bne	a4,a6,498 <__neorv32_uart_tohex+0x14>
 4b8:	00058423          	sb	zero,8(a1)
 4bc:	00008067          	ret

000004c0 <neorv32_uart0_available>:
 4c0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 4c4:	01255513          	srli	a0,a0,0x12
 4c8:	00157513          	andi	a0,a0,1
 4cc:	00008067          	ret

000004d0 <neorv32_uart0_setup>:
 4d0:	ff010113          	addi	sp,sp,-16
 4d4:	00812423          	sw	s0,8(sp)
 4d8:	00912223          	sw	s1,4(sp)
 4dc:	00112623          	sw	ra,12(sp)
 4e0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4e4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 4e8:	00058413          	mv	s0,a1
 4ec:	00151593          	slli	a1,a0,0x1
 4f0:	00078513          	mv	a0,a5
 4f4:	00060493          	mv	s1,a2
 4f8:	7e8000ef          	jal	ra,ce0 <__udivsi3>
 4fc:	01051513          	slli	a0,a0,0x10
 500:	000017b7          	lui	a5,0x1
 504:	01055513          	srli	a0,a0,0x10
 508:	00000713          	li	a4,0
 50c:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x1c2>
 510:	04a7e463          	bltu	a5,a0,558 <neorv32_uart0_setup+0x88>
 514:	0034f793          	andi	a5,s1,3
 518:	00347413          	andi	s0,s0,3
 51c:	fff50513          	addi	a0,a0,-1
 520:	01479793          	slli	a5,a5,0x14
 524:	01641413          	slli	s0,s0,0x16
 528:	00f567b3          	or	a5,a0,a5
 52c:	0087e7b3          	or	a5,a5,s0
 530:	01871713          	slli	a4,a4,0x18
 534:	00c12083          	lw	ra,12(sp)
 538:	00812403          	lw	s0,8(sp)
 53c:	00e7e7b3          	or	a5,a5,a4
 540:	10000737          	lui	a4,0x10000
 544:	00e7e7b3          	or	a5,a5,a4
 548:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 54c:	00412483          	lw	s1,4(sp)
 550:	01010113          	addi	sp,sp,16
 554:	00008067          	ret
 558:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffef06>
 55c:	0fd6f693          	andi	a3,a3,253
 560:	00069a63          	bnez	a3,574 <neorv32_uart0_setup+0xa4>
 564:	00355513          	srli	a0,a0,0x3
 568:	00170713          	addi	a4,a4,1
 56c:	0ff77713          	andi	a4,a4,255
 570:	fa1ff06f          	j	510 <neorv32_uart0_setup+0x40>
 574:	00155513          	srli	a0,a0,0x1
 578:	ff1ff06f          	j	568 <neorv32_uart0_setup+0x98>

0000057c <neorv32_uart0_putc>:
 57c:	00040737          	lui	a4,0x40
 580:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 584:	00e7f7b3          	and	a5,a5,a4
 588:	fe079ce3          	bnez	a5,580 <neorv32_uart0_putc+0x4>
 58c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 590:	00008067          	ret

00000594 <neorv32_uart0_print>:
 594:	ff010113          	addi	sp,sp,-16
 598:	00812423          	sw	s0,8(sp)
 59c:	01212023          	sw	s2,0(sp)
 5a0:	00112623          	sw	ra,12(sp)
 5a4:	00912223          	sw	s1,4(sp)
 5a8:	00050413          	mv	s0,a0
 5ac:	00a00913          	li	s2,10
 5b0:	00044483          	lbu	s1,0(s0)
 5b4:	00140413          	addi	s0,s0,1
 5b8:	00049e63          	bnez	s1,5d4 <neorv32_uart0_print+0x40>
 5bc:	00c12083          	lw	ra,12(sp)
 5c0:	00812403          	lw	s0,8(sp)
 5c4:	00412483          	lw	s1,4(sp)
 5c8:	00012903          	lw	s2,0(sp)
 5cc:	01010113          	addi	sp,sp,16
 5d0:	00008067          	ret
 5d4:	01249663          	bne	s1,s2,5e0 <neorv32_uart0_print+0x4c>
 5d8:	00d00513          	li	a0,13
 5dc:	fa1ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 5e0:	00048513          	mv	a0,s1
 5e4:	f99ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 5e8:	fc9ff06f          	j	5b0 <neorv32_uart0_print+0x1c>

000005ec <neorv32_uart0_printf>:
 5ec:	fa010113          	addi	sp,sp,-96
 5f0:	04f12a23          	sw	a5,84(sp)
 5f4:	04410793          	addi	a5,sp,68
 5f8:	02812c23          	sw	s0,56(sp)
 5fc:	03212823          	sw	s2,48(sp)
 600:	03412423          	sw	s4,40(sp)
 604:	03512223          	sw	s5,36(sp)
 608:	03612023          	sw	s6,32(sp)
 60c:	01712e23          	sw	s7,28(sp)
 610:	01812c23          	sw	s8,24(sp)
 614:	01912a23          	sw	s9,20(sp)
 618:	02112e23          	sw	ra,60(sp)
 61c:	02912a23          	sw	s1,52(sp)
 620:	03312623          	sw	s3,44(sp)
 624:	00050413          	mv	s0,a0
 628:	04b12223          	sw	a1,68(sp)
 62c:	04c12423          	sw	a2,72(sp)
 630:	04d12623          	sw	a3,76(sp)
 634:	04e12823          	sw	a4,80(sp)
 638:	05012c23          	sw	a6,88(sp)
 63c:	05112e23          	sw	a7,92(sp)
 640:	00f12023          	sw	a5,0(sp)
 644:	02500a13          	li	s4,37
 648:	00a00a93          	li	s5,10
 64c:	07300913          	li	s2,115
 650:	07500b13          	li	s6,117
 654:	07800b93          	li	s7,120
 658:	06300c13          	li	s8,99
 65c:	06900c93          	li	s9,105
 660:	00044483          	lbu	s1,0(s0)
 664:	02049c63          	bnez	s1,69c <neorv32_uart0_printf+0xb0>
 668:	03c12083          	lw	ra,60(sp)
 66c:	03812403          	lw	s0,56(sp)
 670:	03412483          	lw	s1,52(sp)
 674:	03012903          	lw	s2,48(sp)
 678:	02c12983          	lw	s3,44(sp)
 67c:	02812a03          	lw	s4,40(sp)
 680:	02412a83          	lw	s5,36(sp)
 684:	02012b03          	lw	s6,32(sp)
 688:	01c12b83          	lw	s7,28(sp)
 68c:	01812c03          	lw	s8,24(sp)
 690:	01412c83          	lw	s9,20(sp)
 694:	06010113          	addi	sp,sp,96
 698:	00008067          	ret
 69c:	0d449863          	bne	s1,s4,76c <neorv32_uart0_printf+0x180>
 6a0:	00240993          	addi	s3,s0,2
 6a4:	00144403          	lbu	s0,1(s0)
 6a8:	05240263          	beq	s0,s2,6ec <neorv32_uart0_printf+0x100>
 6ac:	00896e63          	bltu	s2,s0,6c8 <neorv32_uart0_printf+0xdc>
 6b0:	05840c63          	beq	s0,s8,708 <neorv32_uart0_printf+0x11c>
 6b4:	07940663          	beq	s0,s9,720 <neorv32_uart0_printf+0x134>
 6b8:	02500513          	li	a0,37
 6bc:	ec1ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 6c0:	00040513          	mv	a0,s0
 6c4:	0540006f          	j	718 <neorv32_uart0_printf+0x12c>
 6c8:	09640663          	beq	s0,s6,754 <neorv32_uart0_printf+0x168>
 6cc:	ff7416e3          	bne	s0,s7,6b8 <neorv32_uart0_printf+0xcc>
 6d0:	00012783          	lw	a5,0(sp)
 6d4:	00410593          	addi	a1,sp,4
 6d8:	0007a503          	lw	a0,0(a5)
 6dc:	00478713          	addi	a4,a5,4
 6e0:	00e12023          	sw	a4,0(sp)
 6e4:	da1ff0ef          	jal	ra,484 <__neorv32_uart_tohex>
 6e8:	0640006f          	j	74c <neorv32_uart0_printf+0x160>
 6ec:	00012783          	lw	a5,0(sp)
 6f0:	0007a503          	lw	a0,0(a5)
 6f4:	00478713          	addi	a4,a5,4
 6f8:	00e12023          	sw	a4,0(sp)
 6fc:	e99ff0ef          	jal	ra,594 <neorv32_uart0_print>
 700:	00098413          	mv	s0,s3
 704:	f5dff06f          	j	660 <neorv32_uart0_printf+0x74>
 708:	00012783          	lw	a5,0(sp)
 70c:	0007c503          	lbu	a0,0(a5)
 710:	00478713          	addi	a4,a5,4
 714:	00e12023          	sw	a4,0(sp)
 718:	e65ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 71c:	fe5ff06f          	j	700 <neorv32_uart0_printf+0x114>
 720:	00012783          	lw	a5,0(sp)
 724:	0007a403          	lw	s0,0(a5)
 728:	00478713          	addi	a4,a5,4
 72c:	00e12023          	sw	a4,0(sp)
 730:	00045863          	bgez	s0,740 <neorv32_uart0_printf+0x154>
 734:	02d00513          	li	a0,45
 738:	40800433          	neg	s0,s0
 73c:	e41ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 740:	00410593          	addi	a1,sp,4
 744:	00040513          	mv	a0,s0
 748:	c35ff0ef          	jal	ra,37c <__neorv32_uart_itoa>
 74c:	00410513          	addi	a0,sp,4
 750:	fadff06f          	j	6fc <neorv32_uart0_printf+0x110>
 754:	00012783          	lw	a5,0(sp)
 758:	00410593          	addi	a1,sp,4
 75c:	00478713          	addi	a4,a5,4
 760:	0007a503          	lw	a0,0(a5)
 764:	00e12023          	sw	a4,0(sp)
 768:	fe1ff06f          	j	748 <neorv32_uart0_printf+0x15c>
 76c:	01549663          	bne	s1,s5,778 <neorv32_uart0_printf+0x18c>
 770:	00d00513          	li	a0,13
 774:	e09ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 778:	00140993          	addi	s3,s0,1
 77c:	00048513          	mv	a0,s1
 780:	f99ff06f          	j	718 <neorv32_uart0_printf+0x12c>

00000784 <neorv32_gpio_port_set>:
 784:	fc000793          	li	a5,-64
 788:	00a7a423          	sw	a0,8(a5)
 78c:	00b7a623          	sw	a1,12(a5)
 790:	00008067          	ret

00000794 <neorv32_cpu_irq_enable>:
 794:	01f00793          	li	a5,31
 798:	00050713          	mv	a4,a0
 79c:	02a7e663          	bltu	a5,a0,7c8 <neorv32_cpu_irq_enable+0x34>
 7a0:	ffff17b7          	lui	a5,0xffff1
 7a4:	88878793          	addi	a5,a5,-1912 # ffff0888 <__ctr0_io_space_begin+0xffff0a88>
 7a8:	00a7d7b3          	srl	a5,a5,a0
 7ac:	0017f793          	andi	a5,a5,1
 7b0:	00100513          	li	a0,1
 7b4:	00078c63          	beqz	a5,7cc <neorv32_cpu_irq_enable+0x38>
 7b8:	00e51533          	sll	a0,a0,a4
 7bc:	30452073          	csrs	mie,a0
 7c0:	00000513          	li	a0,0
 7c4:	00008067          	ret
 7c8:	00100513          	li	a0,1
 7cc:	00008067          	ret

000007d0 <__neorv32_rte_core>:
 7d0:	fc010113          	addi	sp,sp,-64
 7d4:	02112e23          	sw	ra,60(sp)
 7d8:	02512c23          	sw	t0,56(sp)
 7dc:	02612a23          	sw	t1,52(sp)
 7e0:	02712823          	sw	t2,48(sp)
 7e4:	02a12623          	sw	a0,44(sp)
 7e8:	02b12423          	sw	a1,40(sp)
 7ec:	02c12223          	sw	a2,36(sp)
 7f0:	02d12023          	sw	a3,32(sp)
 7f4:	00e12e23          	sw	a4,28(sp)
 7f8:	00f12c23          	sw	a5,24(sp)
 7fc:	01012a23          	sw	a6,20(sp)
 800:	01112823          	sw	a7,16(sp)
 804:	01c12623          	sw	t3,12(sp)
 808:	01d12423          	sw	t4,8(sp)
 80c:	01e12223          	sw	t5,4(sp)
 810:	01f12023          	sw	t6,0(sp)
 814:	34102773          	csrr	a4,mepc
 818:	34071073          	csrw	mscratch,a4
 81c:	342027f3          	csrr	a5,mcause
 820:	0807ca63          	bltz	a5,8b4 <__neorv32_rte_core+0xe4>
 824:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ef08>
 828:	00300593          	li	a1,3
 82c:	0036f693          	andi	a3,a3,3
 830:	00270613          	addi	a2,a4,2
 834:	00b69463          	bne	a3,a1,83c <__neorv32_rte_core+0x6c>
 838:	00470613          	addi	a2,a4,4
 83c:	34161073          	csrw	mepc,a2
 840:	00b00713          	li	a4,11
 844:	04f77c63          	bgeu	a4,a5,89c <__neorv32_rte_core+0xcc>
 848:	000017b7          	lui	a5,0x1
 84c:	a4078793          	addi	a5,a5,-1472 # a40 <__neorv32_rte_debug_exc_handler>
 850:	000780e7          	jalr	a5
 854:	03c12083          	lw	ra,60(sp)
 858:	03812283          	lw	t0,56(sp)
 85c:	03412303          	lw	t1,52(sp)
 860:	03012383          	lw	t2,48(sp)
 864:	02c12503          	lw	a0,44(sp)
 868:	02812583          	lw	a1,40(sp)
 86c:	02412603          	lw	a2,36(sp)
 870:	02012683          	lw	a3,32(sp)
 874:	01c12703          	lw	a4,28(sp)
 878:	01812783          	lw	a5,24(sp)
 87c:	01412803          	lw	a6,20(sp)
 880:	01012883          	lw	a7,16(sp)
 884:	00c12e03          	lw	t3,12(sp)
 888:	00812e83          	lw	t4,8(sp)
 88c:	00412f03          	lw	t5,4(sp)
 890:	00012f83          	lw	t6,0(sp)
 894:	04010113          	addi	sp,sp,64
 898:	30200073          	mret
 89c:	00001737          	lui	a4,0x1
 8a0:	00279793          	slli	a5,a5,0x2
 8a4:	e5070713          	addi	a4,a4,-432 # e50 <symbols.0+0x14>
 8a8:	00e787b3          	add	a5,a5,a4
 8ac:	0007a783          	lw	a5,0(a5)
 8b0:	00078067          	jr	a5
 8b4:	80000737          	lui	a4,0x80000
 8b8:	ffd74713          	xori	a4,a4,-3
 8bc:	00e787b3          	add	a5,a5,a4
 8c0:	01c00713          	li	a4,28
 8c4:	f8f762e3          	bltu	a4,a5,848 <__neorv32_rte_core+0x78>
 8c8:	00001737          	lui	a4,0x1
 8cc:	00279793          	slli	a5,a5,0x2
 8d0:	e8070713          	addi	a4,a4,-384 # e80 <symbols.0+0x44>
 8d4:	00e787b3          	add	a5,a5,a4
 8d8:	0007a783          	lw	a5,0(a5)
 8dc:	00078067          	jr	a5
 8e0:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut>
 8e4:	f6dff06f          	j	850 <__neorv32_rte_core+0x80>
 8e8:	8841a783          	lw	a5,-1916(gp) # 80000084 <__neorv32_rte_vector_lut+0x4>
 8ec:	f65ff06f          	j	850 <__neorv32_rte_core+0x80>
 8f0:	8881a783          	lw	a5,-1912(gp) # 80000088 <__neorv32_rte_vector_lut+0x8>
 8f4:	f5dff06f          	j	850 <__neorv32_rte_core+0x80>
 8f8:	88c1a783          	lw	a5,-1908(gp) # 8000008c <__neorv32_rte_vector_lut+0xc>
 8fc:	f55ff06f          	j	850 <__neorv32_rte_core+0x80>
 900:	8901a783          	lw	a5,-1904(gp) # 80000090 <__neorv32_rte_vector_lut+0x10>
 904:	f4dff06f          	j	850 <__neorv32_rte_core+0x80>
 908:	8941a783          	lw	a5,-1900(gp) # 80000094 <__neorv32_rte_vector_lut+0x14>
 90c:	f45ff06f          	j	850 <__neorv32_rte_core+0x80>
 910:	8981a783          	lw	a5,-1896(gp) # 80000098 <__neorv32_rte_vector_lut+0x18>
 914:	f3dff06f          	j	850 <__neorv32_rte_core+0x80>
 918:	89c1a783          	lw	a5,-1892(gp) # 8000009c <__neorv32_rte_vector_lut+0x1c>
 91c:	f35ff06f          	j	850 <__neorv32_rte_core+0x80>
 920:	8a01a783          	lw	a5,-1888(gp) # 800000a0 <__neorv32_rte_vector_lut+0x20>
 924:	f2dff06f          	j	850 <__neorv32_rte_core+0x80>
 928:	8a41a783          	lw	a5,-1884(gp) # 800000a4 <__neorv32_rte_vector_lut+0x24>
 92c:	f25ff06f          	j	850 <__neorv32_rte_core+0x80>
 930:	8a81a783          	lw	a5,-1880(gp) # 800000a8 <__neorv32_rte_vector_lut+0x28>
 934:	f1dff06f          	j	850 <__neorv32_rte_core+0x80>
 938:	8ac1a783          	lw	a5,-1876(gp) # 800000ac <__neorv32_rte_vector_lut+0x2c>
 93c:	f15ff06f          	j	850 <__neorv32_rte_core+0x80>
 940:	8b01a783          	lw	a5,-1872(gp) # 800000b0 <__neorv32_rte_vector_lut+0x30>
 944:	f0dff06f          	j	850 <__neorv32_rte_core+0x80>
 948:	8b41a783          	lw	a5,-1868(gp) # 800000b4 <__neorv32_rte_vector_lut+0x34>
 94c:	f05ff06f          	j	850 <__neorv32_rte_core+0x80>
 950:	8b81a783          	lw	a5,-1864(gp) # 800000b8 <__neorv32_rte_vector_lut+0x38>
 954:	efdff06f          	j	850 <__neorv32_rte_core+0x80>
 958:	8bc1a783          	lw	a5,-1860(gp) # 800000bc <__neorv32_rte_vector_lut+0x3c>
 95c:	ef5ff06f          	j	850 <__neorv32_rte_core+0x80>
 960:	8c01a783          	lw	a5,-1856(gp) # 800000c0 <__neorv32_rte_vector_lut+0x40>
 964:	eedff06f          	j	850 <__neorv32_rte_core+0x80>
 968:	8c41a783          	lw	a5,-1852(gp) # 800000c4 <__neorv32_rte_vector_lut+0x44>
 96c:	ee5ff06f          	j	850 <__neorv32_rte_core+0x80>
 970:	8c81a783          	lw	a5,-1848(gp) # 800000c8 <__neorv32_rte_vector_lut+0x48>
 974:	eddff06f          	j	850 <__neorv32_rte_core+0x80>
 978:	8cc1a783          	lw	a5,-1844(gp) # 800000cc <__neorv32_rte_vector_lut+0x4c>
 97c:	ed5ff06f          	j	850 <__neorv32_rte_core+0x80>
 980:	8d01a783          	lw	a5,-1840(gp) # 800000d0 <__neorv32_rte_vector_lut+0x50>
 984:	ecdff06f          	j	850 <__neorv32_rte_core+0x80>
 988:	8d41a783          	lw	a5,-1836(gp) # 800000d4 <__neorv32_rte_vector_lut+0x54>
 98c:	ec5ff06f          	j	850 <__neorv32_rte_core+0x80>
 990:	8d81a783          	lw	a5,-1832(gp) # 800000d8 <__neorv32_rte_vector_lut+0x58>
 994:	ebdff06f          	j	850 <__neorv32_rte_core+0x80>
 998:	8dc1a783          	lw	a5,-1828(gp) # 800000dc <__neorv32_rte_vector_lut+0x5c>
 99c:	eb5ff06f          	j	850 <__neorv32_rte_core+0x80>
 9a0:	8e01a783          	lw	a5,-1824(gp) # 800000e0 <__neorv32_rte_vector_lut+0x60>
 9a4:	eadff06f          	j	850 <__neorv32_rte_core+0x80>
 9a8:	8e41a783          	lw	a5,-1820(gp) # 800000e4 <__neorv32_rte_vector_lut+0x64>
 9ac:	ea5ff06f          	j	850 <__neorv32_rte_core+0x80>
 9b0:	8e81a783          	lw	a5,-1816(gp) # 800000e8 <__neorv32_rte_vector_lut+0x68>
 9b4:	e9dff06f          	j	850 <__neorv32_rte_core+0x80>
 9b8:	8ec1a783          	lw	a5,-1812(gp) # 800000ec <__neorv32_rte_vector_lut+0x6c>
 9bc:	e95ff06f          	j	850 <__neorv32_rte_core+0x80>
 9c0:	8f01a783          	lw	a5,-1808(gp) # 800000f0 <__neorv32_rte_vector_lut+0x70>
 9c4:	e8dff06f          	j	850 <__neorv32_rte_core+0x80>
 9c8:	0000                	unimp
 9ca:	0000                	unimp
 9cc:	0000                	unimp
 9ce:	0000                	unimp

000009d0 <__neorv32_rte_print_hex_word>:
 9d0:	fe010113          	addi	sp,sp,-32
 9d4:	01212823          	sw	s2,16(sp)
 9d8:	00050913          	mv	s2,a0
 9dc:	00001537          	lui	a0,0x1
 9e0:	00912a23          	sw	s1,20(sp)
 9e4:	ef450513          	addi	a0,a0,-268 # ef4 <symbols.0+0xb8>
 9e8:	000014b7          	lui	s1,0x1
 9ec:	00812c23          	sw	s0,24(sp)
 9f0:	01312623          	sw	s3,12(sp)
 9f4:	00112e23          	sw	ra,28(sp)
 9f8:	01c00413          	li	s0,28
 9fc:	b99ff0ef          	jal	ra,594 <neorv32_uart0_print>
 a00:	0e848493          	addi	s1,s1,232 # 10e8 <hex_symbols.0>
 a04:	ffc00993          	li	s3,-4
 a08:	008957b3          	srl	a5,s2,s0
 a0c:	00f7f793          	andi	a5,a5,15
 a10:	00f487b3          	add	a5,s1,a5
 a14:	0007c503          	lbu	a0,0(a5)
 a18:	ffc40413          	addi	s0,s0,-4
 a1c:	b61ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 a20:	ff3414e3          	bne	s0,s3,a08 <__neorv32_rte_print_hex_word+0x38>
 a24:	01c12083          	lw	ra,28(sp)
 a28:	01812403          	lw	s0,24(sp)
 a2c:	01412483          	lw	s1,20(sp)
 a30:	01012903          	lw	s2,16(sp)
 a34:	00c12983          	lw	s3,12(sp)
 a38:	02010113          	addi	sp,sp,32
 a3c:	00008067          	ret

00000a40 <__neorv32_rte_debug_exc_handler>:
 a40:	ff010113          	addi	sp,sp,-16
 a44:	00112623          	sw	ra,12(sp)
 a48:	00812423          	sw	s0,8(sp)
 a4c:	00912223          	sw	s1,4(sp)
 a50:	a71ff0ef          	jal	ra,4c0 <neorv32_uart0_available>
 a54:	1c050863          	beqz	a0,c24 <__neorv32_rte_debug_exc_handler+0x1e4>
 a58:	00001537          	lui	a0,0x1
 a5c:	ef850513          	addi	a0,a0,-264 # ef8 <symbols.0+0xbc>
 a60:	b35ff0ef          	jal	ra,594 <neorv32_uart0_print>
 a64:	34202473          	csrr	s0,mcause
 a68:	00900713          	li	a4,9
 a6c:	00f47793          	andi	a5,s0,15
 a70:	03078493          	addi	s1,a5,48
 a74:	00f77463          	bgeu	a4,a5,a7c <__neorv32_rte_debug_exc_handler+0x3c>
 a78:	05778493          	addi	s1,a5,87
 a7c:	00b00793          	li	a5,11
 a80:	0087ee63          	bltu	a5,s0,a9c <__neorv32_rte_debug_exc_handler+0x5c>
 a84:	00001737          	lui	a4,0x1
 a88:	00241793          	slli	a5,s0,0x2
 a8c:	0b870713          	addi	a4,a4,184 # 10b8 <symbols.0+0x27c>
 a90:	00e787b3          	add	a5,a5,a4
 a94:	0007a783          	lw	a5,0(a5)
 a98:	00078067          	jr	a5
 a9c:	800007b7          	lui	a5,0x80000
 aa0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 aa4:	14e40e63          	beq	s0,a4,c00 <__neorv32_rte_debug_exc_handler+0x1c0>
 aa8:	02876a63          	bltu	a4,s0,adc <__neorv32_rte_debug_exc_handler+0x9c>
 aac:	00378713          	addi	a4,a5,3
 ab0:	12e40c63          	beq	s0,a4,be8 <__neorv32_rte_debug_exc_handler+0x1a8>
 ab4:	00778793          	addi	a5,a5,7
 ab8:	12f40e63          	beq	s0,a5,bf4 <__neorv32_rte_debug_exc_handler+0x1b4>
 abc:	00001537          	lui	a0,0x1
 ac0:	05850513          	addi	a0,a0,88 # 1058 <symbols.0+0x21c>
 ac4:	ad1ff0ef          	jal	ra,594 <neorv32_uart0_print>
 ac8:	00040513          	mv	a0,s0
 acc:	f05ff0ef          	jal	ra,9d0 <__neorv32_rte_print_hex_word>
 ad0:	00100793          	li	a5,1
 ad4:	08f40c63          	beq	s0,a5,b6c <__neorv32_rte_debug_exc_handler+0x12c>
 ad8:	0280006f          	j	b00 <__neorv32_rte_debug_exc_handler+0xc0>
 adc:	ff07c793          	xori	a5,a5,-16
 ae0:	00f407b3          	add	a5,s0,a5
 ae4:	00f00713          	li	a4,15
 ae8:	fcf76ae3          	bltu	a4,a5,abc <__neorv32_rte_debug_exc_handler+0x7c>
 aec:	00001537          	lui	a0,0x1
 af0:	04850513          	addi	a0,a0,72 # 1048 <symbols.0+0x20c>
 af4:	aa1ff0ef          	jal	ra,594 <neorv32_uart0_print>
 af8:	00048513          	mv	a0,s1
 afc:	a81ff0ef          	jal	ra,57c <neorv32_uart0_putc>
 b00:	ffd47413          	andi	s0,s0,-3
 b04:	00500793          	li	a5,5
 b08:	06f40263          	beq	s0,a5,b6c <__neorv32_rte_debug_exc_handler+0x12c>
 b0c:	00001537          	lui	a0,0x1
 b10:	09c50513          	addi	a0,a0,156 # 109c <symbols.0+0x260>
 b14:	a81ff0ef          	jal	ra,594 <neorv32_uart0_print>
 b18:	34002573          	csrr	a0,mscratch
 b1c:	eb5ff0ef          	jal	ra,9d0 <__neorv32_rte_print_hex_word>
 b20:	00001537          	lui	a0,0x1
 b24:	0a450513          	addi	a0,a0,164 # 10a4 <symbols.0+0x268>
 b28:	a6dff0ef          	jal	ra,594 <neorv32_uart0_print>
 b2c:	34302573          	csrr	a0,mtval
 b30:	ea1ff0ef          	jal	ra,9d0 <__neorv32_rte_print_hex_word>
 b34:	00812403          	lw	s0,8(sp)
 b38:	00c12083          	lw	ra,12(sp)
 b3c:	00412483          	lw	s1,4(sp)
 b40:	00001537          	lui	a0,0x1
 b44:	0b050513          	addi	a0,a0,176 # 10b0 <symbols.0+0x274>
 b48:	01010113          	addi	sp,sp,16
 b4c:	a49ff06f          	j	594 <neorv32_uart0_print>
 b50:	00001537          	lui	a0,0x1
 b54:	f0050513          	addi	a0,a0,-256 # f00 <symbols.0+0xc4>
 b58:	a3dff0ef          	jal	ra,594 <neorv32_uart0_print>
 b5c:	fb1ff06f          	j	b0c <__neorv32_rte_debug_exc_handler+0xcc>
 b60:	00001537          	lui	a0,0x1
 b64:	f2050513          	addi	a0,a0,-224 # f20 <symbols.0+0xe4>
 b68:	a2dff0ef          	jal	ra,594 <neorv32_uart0_print>
 b6c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b70:	0a07d463          	bgez	a5,c18 <__neorv32_rte_debug_exc_handler+0x1d8>
 b74:	0017f793          	andi	a5,a5,1
 b78:	08078a63          	beqz	a5,c0c <__neorv32_rte_debug_exc_handler+0x1cc>
 b7c:	00001537          	lui	a0,0x1
 b80:	07050513          	addi	a0,a0,112 # 1070 <symbols.0+0x234>
 b84:	fd5ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 b88:	00001537          	lui	a0,0x1
 b8c:	f3c50513          	addi	a0,a0,-196 # f3c <symbols.0+0x100>
 b90:	fc9ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 b94:	00001537          	lui	a0,0x1
 b98:	f5050513          	addi	a0,a0,-176 # f50 <symbols.0+0x114>
 b9c:	fbdff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 ba0:	00001537          	lui	a0,0x1
 ba4:	f5c50513          	addi	a0,a0,-164 # f5c <symbols.0+0x120>
 ba8:	fb1ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bac:	00001537          	lui	a0,0x1
 bb0:	f7450513          	addi	a0,a0,-140 # f74 <symbols.0+0x138>
 bb4:	fb5ff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x128>
 bb8:	00001537          	lui	a0,0x1
 bbc:	f8850513          	addi	a0,a0,-120 # f88 <symbols.0+0x14c>
 bc0:	f99ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bc4:	00001537          	lui	a0,0x1
 bc8:	fa450513          	addi	a0,a0,-92 # fa4 <symbols.0+0x168>
 bcc:	f9dff06f          	j	b68 <__neorv32_rte_debug_exc_handler+0x128>
 bd0:	00001537          	lui	a0,0x1
 bd4:	fb850513          	addi	a0,a0,-72 # fb8 <symbols.0+0x17c>
 bd8:	f81ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bdc:	00001537          	lui	a0,0x1
 be0:	fd850513          	addi	a0,a0,-40 # fd8 <symbols.0+0x19c>
 be4:	f75ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 be8:	00001537          	lui	a0,0x1
 bec:	ff850513          	addi	a0,a0,-8 # ff8 <symbols.0+0x1bc>
 bf0:	f69ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 bf4:	00001537          	lui	a0,0x1
 bf8:	01450513          	addi	a0,a0,20 # 1014 <symbols.0+0x1d8>
 bfc:	f5dff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c00:	00001537          	lui	a0,0x1
 c04:	02c50513          	addi	a0,a0,44 # 102c <symbols.0+0x1f0>
 c08:	f51ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c0c:	00001537          	lui	a0,0x1
 c10:	08050513          	addi	a0,a0,128 # 1080 <symbols.0+0x244>
 c14:	f45ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c18:	00001537          	lui	a0,0x1
 c1c:	09050513          	addi	a0,a0,144 # 1090 <symbols.0+0x254>
 c20:	f39ff06f          	j	b58 <__neorv32_rte_debug_exc_handler+0x118>
 c24:	00c12083          	lw	ra,12(sp)
 c28:	00812403          	lw	s0,8(sp)
 c2c:	00412483          	lw	s1,4(sp)
 c30:	01010113          	addi	sp,sp,16
 c34:	00008067          	ret

00000c38 <neorv32_rte_exception_install>:
 c38:	01f00793          	li	a5,31
 c3c:	00a7ee63          	bltu	a5,a0,c58 <neorv32_rte_exception_install+0x20>
 c40:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 c44:	00251513          	slli	a0,a0,0x2
 c48:	00a78533          	add	a0,a5,a0
 c4c:	00b52023          	sw	a1,0(a0)
 c50:	00000513          	li	a0,0
 c54:	00008067          	ret
 c58:	00100513          	li	a0,1
 c5c:	00008067          	ret

00000c60 <neorv32_rte_exception_uninstall>:
 c60:	01f00793          	li	a5,31
 c64:	02a7e263          	bltu	a5,a0,c88 <neorv32_rte_exception_uninstall+0x28>
 c68:	88018793          	addi	a5,gp,-1920 # 80000080 <__neorv32_rte_vector_lut>
 c6c:	00251513          	slli	a0,a0,0x2
 c70:	00a78533          	add	a0,a5,a0
 c74:	000017b7          	lui	a5,0x1
 c78:	a4078793          	addi	a5,a5,-1472 # a40 <__neorv32_rte_debug_exc_handler>
 c7c:	00f52023          	sw	a5,0(a0)
 c80:	00000513          	li	a0,0
 c84:	00008067          	ret
 c88:	00100513          	li	a0,1
 c8c:	00008067          	ret

00000c90 <neorv32_rte_setup>:
 c90:	ff010113          	addi	sp,sp,-16
 c94:	00112623          	sw	ra,12(sp)
 c98:	00812423          	sw	s0,8(sp)
 c9c:	00912223          	sw	s1,4(sp)
 ca0:	7d000793          	li	a5,2000
 ca4:	30579073          	csrw	mtvec,a5
 ca8:	00000413          	li	s0,0
 cac:	01d00493          	li	s1,29
 cb0:	00040513          	mv	a0,s0
 cb4:	00140413          	addi	s0,s0,1
 cb8:	0ff47413          	andi	s0,s0,255
 cbc:	fa5ff0ef          	jal	ra,c60 <neorv32_rte_exception_uninstall>
 cc0:	fe9418e3          	bne	s0,s1,cb0 <neorv32_rte_setup+0x20>
 cc4:	00c12083          	lw	ra,12(sp)
 cc8:	00812403          	lw	s0,8(sp)
 ccc:	00412483          	lw	s1,4(sp)
 cd0:	01010113          	addi	sp,sp,16
 cd4:	00008067          	ret

00000cd8 <__divsi3>:
 cd8:	06054063          	bltz	a0,d38 <__umodsi3+0x10>
 cdc:	0605c663          	bltz	a1,d48 <__umodsi3+0x20>

00000ce0 <__udivsi3>:
 ce0:	00058613          	mv	a2,a1
 ce4:	00050593          	mv	a1,a0
 ce8:	fff00513          	li	a0,-1
 cec:	02060c63          	beqz	a2,d24 <__udivsi3+0x44>
 cf0:	00100693          	li	a3,1
 cf4:	00b67a63          	bgeu	a2,a1,d08 <__udivsi3+0x28>
 cf8:	00c05863          	blez	a2,d08 <__udivsi3+0x28>
 cfc:	00161613          	slli	a2,a2,0x1
 d00:	00169693          	slli	a3,a3,0x1
 d04:	feb66ae3          	bltu	a2,a1,cf8 <__udivsi3+0x18>
 d08:	00000513          	li	a0,0
 d0c:	00c5e663          	bltu	a1,a2,d18 <__udivsi3+0x38>
 d10:	40c585b3          	sub	a1,a1,a2
 d14:	00d56533          	or	a0,a0,a3
 d18:	0016d693          	srli	a3,a3,0x1
 d1c:	00165613          	srli	a2,a2,0x1
 d20:	fe0696e3          	bnez	a3,d0c <__udivsi3+0x2c>
 d24:	00008067          	ret

00000d28 <__umodsi3>:
 d28:	00008293          	mv	t0,ra
 d2c:	fb5ff0ef          	jal	ra,ce0 <__udivsi3>
 d30:	00058513          	mv	a0,a1
 d34:	00028067          	jr	t0
 d38:	40a00533          	neg	a0,a0
 d3c:	00b04863          	bgtz	a1,d4c <__umodsi3+0x24>
 d40:	40b005b3          	neg	a1,a1
 d44:	f9dff06f          	j	ce0 <__udivsi3>
 d48:	40b005b3          	neg	a1,a1
 d4c:	00008293          	mv	t0,ra
 d50:	f91ff0ef          	jal	ra,ce0 <__udivsi3>
 d54:	40a00533          	neg	a0,a0
 d58:	00028067          	jr	t0

00000d5c <__modsi3>:
 d5c:	00008293          	mv	t0,ra
 d60:	0005ca63          	bltz	a1,d74 <__modsi3+0x18>
 d64:	00054c63          	bltz	a0,d7c <__modsi3+0x20>
 d68:	f79ff0ef          	jal	ra,ce0 <__udivsi3>
 d6c:	00058513          	mv	a0,a1
 d70:	00028067          	jr	t0
 d74:	40b005b3          	neg	a1,a1
 d78:	fe0558e3          	bgez	a0,d68 <__modsi3+0xc>
 d7c:	40a00533          	neg	a0,a0
 d80:	f61ff0ef          	jal	ra,ce0 <__udivsi3>
 d84:	40b00533          	neg	a0,a1
 d88:	00028067          	jr	t0
