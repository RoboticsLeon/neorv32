
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
  e0:	b5858593          	addi	a1,a1,-1192 # c34 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3ecc>
 194:	00112623          	sw	ra,12(sp)
 198:	00812423          	sw	s0,8(sp)
 19c:	074000ef          	jal	ra,210 <neorv32_uart0_setup>
 1a0:	18c000ef          	jal	ra,32c <neorv32_gpio_available>
 1a4:	02050e63          	beqz	a0,1e0 <main+0x60>
 1a8:	6ac000ef          	jal	ra,854 <neorv32_rte_setup>
 1ac:	00001537          	lui	a0,0x1
 1b0:	97450513          	addi	a0,a0,-1676 # 974 <__etext+0x24>
 1b4:	120000ef          	jal	ra,2d4 <neorv32_uart0_print>
 1b8:	1a0000ef          	jal	ra,358 <neorv32_pwm_enable>
 1bc:	00700513          	li	a0,7
 1c0:	17c000ef          	jal	ra,33c <neorv32_pwm_setup>
 1c4:	00000413          	li	s0,0
 1c8:	00040593          	mv	a1,s0
 1cc:	00000513          	li	a0,0
 1d0:	00140413          	addi	s0,s0,1
 1d4:	198000ef          	jal	ra,36c <neorv32_pwm_set>
 1d8:	0ff47413          	andi	s0,s0,255
 1dc:	fedff06f          	j	1c8 <main+0x48>
 1e0:	00001537          	lui	a0,0x1
 1e4:	95050513          	addi	a0,a0,-1712 # 950 <__etext>
 1e8:	0ec000ef          	jal	ra,2d4 <neorv32_uart0_print>
 1ec:	00c12083          	lw	ra,12(sp)
 1f0:	00812403          	lw	s0,8(sp)
 1f4:	00100513          	li	a0,1
 1f8:	01010113          	addi	sp,sp,16
 1fc:	00008067          	ret

00000200 <neorv32_uart0_available>:
 200:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 204:	01255513          	srli	a0,a0,0x12
 208:	00157513          	andi	a0,a0,1
 20c:	00008067          	ret

00000210 <neorv32_uart0_setup>:
 210:	ff010113          	addi	sp,sp,-16
 214:	00812423          	sw	s0,8(sp)
 218:	00912223          	sw	s1,4(sp)
 21c:	00112623          	sw	ra,12(sp)
 220:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 224:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 228:	00058413          	mv	s0,a1
 22c:	00151593          	slli	a1,a0,0x1
 230:	00078513          	mv	a0,a5
 234:	00060493          	mv	s1,a2
 238:	66c000ef          	jal	ra,8a4 <__udivsi3>
 23c:	01051513          	slli	a0,a0,0x10
 240:	000017b7          	lui	a5,0x1
 244:	01055513          	srli	a0,a0,0x10
 248:	00000713          	li	a4,0
 24c:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x3ca>
 250:	04a7e463          	bltu	a5,a0,298 <neorv32_uart0_setup+0x88>
 254:	0034f793          	andi	a5,s1,3
 258:	00347413          	andi	s0,s0,3
 25c:	fff50513          	addi	a0,a0,-1
 260:	01479793          	slli	a5,a5,0x14
 264:	01641413          	slli	s0,s0,0x16
 268:	00f567b3          	or	a5,a0,a5
 26c:	0087e7b3          	or	a5,a5,s0
 270:	01871713          	slli	a4,a4,0x18
 274:	00c12083          	lw	ra,12(sp)
 278:	00812403          	lw	s0,8(sp)
 27c:	00e7e7b3          	or	a5,a5,a4
 280:	10000737          	lui	a4,0x10000
 284:	00e7e7b3          	or	a5,a5,a4
 288:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 28c:	00412483          	lw	s1,4(sp)
 290:	01010113          	addi	sp,sp,16
 294:	00008067          	ret
 298:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff3ca>
 29c:	0fd6f693          	andi	a3,a3,253
 2a0:	00069a63          	bnez	a3,2b4 <neorv32_uart0_setup+0xa4>
 2a4:	00355513          	srli	a0,a0,0x3
 2a8:	00170713          	addi	a4,a4,1
 2ac:	0ff77713          	andi	a4,a4,255
 2b0:	fa1ff06f          	j	250 <neorv32_uart0_setup+0x40>
 2b4:	00155513          	srli	a0,a0,0x1
 2b8:	ff1ff06f          	j	2a8 <neorv32_uart0_setup+0x98>

000002bc <neorv32_uart0_putc>:
 2bc:	00040737          	lui	a4,0x40
 2c0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 2c4:	00e7f7b3          	and	a5,a5,a4
 2c8:	fe079ce3          	bnez	a5,2c0 <neorv32_uart0_putc+0x4>
 2cc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 2d0:	00008067          	ret

000002d4 <neorv32_uart0_print>:
 2d4:	ff010113          	addi	sp,sp,-16
 2d8:	00812423          	sw	s0,8(sp)
 2dc:	01212023          	sw	s2,0(sp)
 2e0:	00112623          	sw	ra,12(sp)
 2e4:	00912223          	sw	s1,4(sp)
 2e8:	00050413          	mv	s0,a0
 2ec:	00a00913          	li	s2,10
 2f0:	00044483          	lbu	s1,0(s0)
 2f4:	00140413          	addi	s0,s0,1
 2f8:	00049e63          	bnez	s1,314 <neorv32_uart0_print+0x40>
 2fc:	00c12083          	lw	ra,12(sp)
 300:	00812403          	lw	s0,8(sp)
 304:	00412483          	lw	s1,4(sp)
 308:	00012903          	lw	s2,0(sp)
 30c:	01010113          	addi	sp,sp,16
 310:	00008067          	ret
 314:	01249663          	bne	s1,s2,320 <neorv32_uart0_print+0x4c>
 318:	00d00513          	li	a0,13
 31c:	fa1ff0ef          	jal	ra,2bc <neorv32_uart0_putc>
 320:	00048513          	mv	a0,s1
 324:	f99ff0ef          	jal	ra,2bc <neorv32_uart0_putc>
 328:	fc9ff06f          	j	2f0 <neorv32_uart0_print+0x1c>

0000032c <neorv32_gpio_available>:
 32c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 330:	01055513          	srli	a0,a0,0x10
 334:	00157513          	andi	a0,a0,1
 338:	00008067          	ret

0000033c <neorv32_pwm_setup>:
 33c:	00757513          	andi	a0,a0,7
 340:	e8000793          	li	a5,-384
 344:	00151513          	slli	a0,a0,0x1
 348:	0007a023          	sw	zero,0(a5)
 34c:	00156513          	ori	a0,a0,1
 350:	00a7a023          	sw	a0,0(a5)
 354:	00008067          	ret

00000358 <neorv32_pwm_enable>:
 358:	e8000713          	li	a4,-384
 35c:	00072783          	lw	a5,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f3cc>
 360:	0017e793          	ori	a5,a5,1
 364:	00f72023          	sw	a5,0(a4)
 368:	00008067          	ret

0000036c <neorv32_pwm_set>:
 36c:	03b00793          	li	a5,59
 370:	02a7e863          	bltu	a5,a0,3a0 <neorv32_pwm_set+0x34>
 374:	00357713          	andi	a4,a0,3
 378:	0fc57513          	andi	a0,a0,252
 37c:	e8452683          	lw	a3,-380(a0)
 380:	00371713          	slli	a4,a4,0x3
 384:	0ff00793          	li	a5,255
 388:	00e797b3          	sll	a5,a5,a4
 38c:	fff7c793          	not	a5,a5
 390:	00d7f7b3          	and	a5,a5,a3
 394:	00e595b3          	sll	a1,a1,a4
 398:	00f5e5b3          	or	a1,a1,a5
 39c:	e8b52223          	sw	a1,-380(a0)
 3a0:	00008067          	ret
 3a4:	0000                	unimp
 3a6:	0000                	unimp
 3a8:	0000                	unimp
 3aa:	0000                	unimp
 3ac:	0000                	unimp
 3ae:	0000                	unimp

000003b0 <__neorv32_rte_core>:
 3b0:	fc010113          	addi	sp,sp,-64
 3b4:	02112e23          	sw	ra,60(sp)
 3b8:	02512c23          	sw	t0,56(sp)
 3bc:	02612a23          	sw	t1,52(sp)
 3c0:	02712823          	sw	t2,48(sp)
 3c4:	02a12623          	sw	a0,44(sp)
 3c8:	02b12423          	sw	a1,40(sp)
 3cc:	02c12223          	sw	a2,36(sp)
 3d0:	02d12023          	sw	a3,32(sp)
 3d4:	00e12e23          	sw	a4,28(sp)
 3d8:	00f12c23          	sw	a5,24(sp)
 3dc:	01012a23          	sw	a6,20(sp)
 3e0:	01112823          	sw	a7,16(sp)
 3e4:	01c12623          	sw	t3,12(sp)
 3e8:	01d12423          	sw	t4,8(sp)
 3ec:	01e12223          	sw	t5,4(sp)
 3f0:	01f12023          	sw	t6,0(sp)
 3f4:	34102773          	csrr	a4,mepc
 3f8:	34071073          	csrw	mscratch,a4
 3fc:	342027f3          	csrr	a5,mcause
 400:	0807c863          	bltz	a5,490 <__neorv32_rte_core+0xe0>
 404:	00071683          	lh	a3,0(a4)
 408:	00300593          	li	a1,3
 40c:	0036f693          	andi	a3,a3,3
 410:	00270613          	addi	a2,a4,2
 414:	00b69463          	bne	a3,a1,41c <__neorv32_rte_core+0x6c>
 418:	00470613          	addi	a2,a4,4
 41c:	34161073          	csrw	mepc,a2
 420:	00b00713          	li	a4,11
 424:	04f77a63          	bgeu	a4,a5,478 <__neorv32_rte_core+0xc8>
 428:	62c00793          	li	a5,1580
 42c:	000780e7          	jalr	a5
 430:	03c12083          	lw	ra,60(sp)
 434:	03812283          	lw	t0,56(sp)
 438:	03412303          	lw	t1,52(sp)
 43c:	03012383          	lw	t2,48(sp)
 440:	02c12503          	lw	a0,44(sp)
 444:	02812583          	lw	a1,40(sp)
 448:	02412603          	lw	a2,36(sp)
 44c:	02012683          	lw	a3,32(sp)
 450:	01c12703          	lw	a4,28(sp)
 454:	01812783          	lw	a5,24(sp)
 458:	01412803          	lw	a6,20(sp)
 45c:	01012883          	lw	a7,16(sp)
 460:	00c12e03          	lw	t3,12(sp)
 464:	00812e83          	lw	t4,8(sp)
 468:	00412f03          	lw	t5,4(sp)
 46c:	00012f83          	lw	t6,0(sp)
 470:	04010113          	addi	sp,sp,64
 474:	30200073          	mret
 478:	00001737          	lui	a4,0x1
 47c:	00279793          	slli	a5,a5,0x2
 480:	98c70713          	addi	a4,a4,-1652 # 98c <__etext+0x3c>
 484:	00e787b3          	add	a5,a5,a4
 488:	0007a783          	lw	a5,0(a5)
 48c:	00078067          	jr	a5
 490:	80000737          	lui	a4,0x80000
 494:	ffd74713          	xori	a4,a4,-3
 498:	00e787b3          	add	a5,a5,a4
 49c:	01c00713          	li	a4,28
 4a0:	f8f764e3          	bltu	a4,a5,428 <__neorv32_rte_core+0x78>
 4a4:	00001737          	lui	a4,0x1
 4a8:	00279793          	slli	a5,a5,0x2
 4ac:	9bc70713          	addi	a4,a4,-1604 # 9bc <__etext+0x6c>
 4b0:	00e787b3          	add	a5,a5,a4
 4b4:	0007a783          	lw	a5,0(a5)
 4b8:	00078067          	jr	a5
 4bc:	800007b7          	lui	a5,0x80000
 4c0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 4c4:	f69ff06f          	j	42c <__neorv32_rte_core+0x7c>
 4c8:	800007b7          	lui	a5,0x80000
 4cc:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 4d0:	f5dff06f          	j	42c <__neorv32_rte_core+0x7c>
 4d4:	800007b7          	lui	a5,0x80000
 4d8:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 4dc:	f51ff06f          	j	42c <__neorv32_rte_core+0x7c>
 4e0:	800007b7          	lui	a5,0x80000
 4e4:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 4e8:	f45ff06f          	j	42c <__neorv32_rte_core+0x7c>
 4ec:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 4f0:	f3dff06f          	j	42c <__neorv32_rte_core+0x7c>
 4f4:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 4f8:	f35ff06f          	j	42c <__neorv32_rte_core+0x7c>
 4fc:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 500:	f2dff06f          	j	42c <__neorv32_rte_core+0x7c>
 504:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 508:	f25ff06f          	j	42c <__neorv32_rte_core+0x7c>
 50c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 510:	f1dff06f          	j	42c <__neorv32_rte_core+0x7c>
 514:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 518:	f15ff06f          	j	42c <__neorv32_rte_core+0x7c>
 51c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 520:	f0dff06f          	j	42c <__neorv32_rte_core+0x7c>
 524:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 528:	f05ff06f          	j	42c <__neorv32_rte_core+0x7c>
 52c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 530:	efdff06f          	j	42c <__neorv32_rte_core+0x7c>
 534:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 538:	ef5ff06f          	j	42c <__neorv32_rte_core+0x7c>
 53c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 540:	eedff06f          	j	42c <__neorv32_rte_core+0x7c>
 544:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 548:	ee5ff06f          	j	42c <__neorv32_rte_core+0x7c>
 54c:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 550:	eddff06f          	j	42c <__neorv32_rte_core+0x7c>
 554:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 558:	ed5ff06f          	j	42c <__neorv32_rte_core+0x7c>
 55c:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 560:	ecdff06f          	j	42c <__neorv32_rte_core+0x7c>
 564:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 568:	ec5ff06f          	j	42c <__neorv32_rte_core+0x7c>
 56c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 570:	ebdff06f          	j	42c <__neorv32_rte_core+0x7c>
 574:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 578:	eb5ff06f          	j	42c <__neorv32_rte_core+0x7c>
 57c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 580:	eadff06f          	j	42c <__neorv32_rte_core+0x7c>
 584:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 588:	ea5ff06f          	j	42c <__neorv32_rte_core+0x7c>
 58c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 590:	e9dff06f          	j	42c <__neorv32_rte_core+0x7c>
 594:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 598:	e95ff06f          	j	42c <__neorv32_rte_core+0x7c>
 59c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 5a0:	e8dff06f          	j	42c <__neorv32_rte_core+0x7c>
 5a4:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 5a8:	e85ff06f          	j	42c <__neorv32_rte_core+0x7c>
 5ac:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 5b0:	e7dff06f          	j	42c <__neorv32_rte_core+0x7c>
 5b4:	0000                	unimp
 5b6:	0000                	unimp
 5b8:	0000                	unimp
 5ba:	0000                	unimp

000005bc <__neorv32_rte_print_hex_word>:
 5bc:	fe010113          	addi	sp,sp,-32
 5c0:	01212823          	sw	s2,16(sp)
 5c4:	00050913          	mv	s2,a0
 5c8:	00001537          	lui	a0,0x1
 5cc:	00912a23          	sw	s1,20(sp)
 5d0:	a3050513          	addi	a0,a0,-1488 # a30 <__etext+0xe0>
 5d4:	000014b7          	lui	s1,0x1
 5d8:	00812c23          	sw	s0,24(sp)
 5dc:	01312623          	sw	s3,12(sp)
 5e0:	00112e23          	sw	ra,28(sp)
 5e4:	01c00413          	li	s0,28
 5e8:	cedff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 5ec:	c2448493          	addi	s1,s1,-988 # c24 <hex_symbols.0>
 5f0:	ffc00993          	li	s3,-4
 5f4:	008957b3          	srl	a5,s2,s0
 5f8:	00f7f793          	andi	a5,a5,15
 5fc:	00f487b3          	add	a5,s1,a5
 600:	0007c503          	lbu	a0,0(a5)
 604:	ffc40413          	addi	s0,s0,-4
 608:	cb5ff0ef          	jal	ra,2bc <neorv32_uart0_putc>
 60c:	ff3414e3          	bne	s0,s3,5f4 <__neorv32_rte_print_hex_word+0x38>
 610:	01c12083          	lw	ra,28(sp)
 614:	01812403          	lw	s0,24(sp)
 618:	01412483          	lw	s1,20(sp)
 61c:	01012903          	lw	s2,16(sp)
 620:	00c12983          	lw	s3,12(sp)
 624:	02010113          	addi	sp,sp,32
 628:	00008067          	ret

0000062c <__neorv32_rte_debug_exc_handler>:
 62c:	ff010113          	addi	sp,sp,-16
 630:	00112623          	sw	ra,12(sp)
 634:	00812423          	sw	s0,8(sp)
 638:	00912223          	sw	s1,4(sp)
 63c:	bc5ff0ef          	jal	ra,200 <neorv32_uart0_available>
 640:	1c050863          	beqz	a0,810 <__neorv32_rte_debug_exc_handler+0x1e4>
 644:	00001537          	lui	a0,0x1
 648:	a3450513          	addi	a0,a0,-1484 # a34 <__etext+0xe4>
 64c:	c89ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 650:	34202473          	csrr	s0,mcause
 654:	00900713          	li	a4,9
 658:	00f47793          	andi	a5,s0,15
 65c:	03078493          	addi	s1,a5,48
 660:	00f77463          	bgeu	a4,a5,668 <__neorv32_rte_debug_exc_handler+0x3c>
 664:	05778493          	addi	s1,a5,87
 668:	00b00793          	li	a5,11
 66c:	0087ee63          	bltu	a5,s0,688 <__neorv32_rte_debug_exc_handler+0x5c>
 670:	00001737          	lui	a4,0x1
 674:	00241793          	slli	a5,s0,0x2
 678:	bf470713          	addi	a4,a4,-1036 # bf4 <__etext+0x2a4>
 67c:	00e787b3          	add	a5,a5,a4
 680:	0007a783          	lw	a5,0(a5)
 684:	00078067          	jr	a5
 688:	800007b7          	lui	a5,0x80000
 68c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 690:	14e40e63          	beq	s0,a4,7ec <__neorv32_rte_debug_exc_handler+0x1c0>
 694:	02876a63          	bltu	a4,s0,6c8 <__neorv32_rte_debug_exc_handler+0x9c>
 698:	00378713          	addi	a4,a5,3
 69c:	12e40c63          	beq	s0,a4,7d4 <__neorv32_rte_debug_exc_handler+0x1a8>
 6a0:	00778793          	addi	a5,a5,7
 6a4:	12f40e63          	beq	s0,a5,7e0 <__neorv32_rte_debug_exc_handler+0x1b4>
 6a8:	00001537          	lui	a0,0x1
 6ac:	b9450513          	addi	a0,a0,-1132 # b94 <__etext+0x244>
 6b0:	c25ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 6b4:	00040513          	mv	a0,s0
 6b8:	f05ff0ef          	jal	ra,5bc <__neorv32_rte_print_hex_word>
 6bc:	00100793          	li	a5,1
 6c0:	08f40c63          	beq	s0,a5,758 <__neorv32_rte_debug_exc_handler+0x12c>
 6c4:	0280006f          	j	6ec <__neorv32_rte_debug_exc_handler+0xc0>
 6c8:	ff07c793          	xori	a5,a5,-16
 6cc:	00f407b3          	add	a5,s0,a5
 6d0:	00f00713          	li	a4,15
 6d4:	fcf76ae3          	bltu	a4,a5,6a8 <__neorv32_rte_debug_exc_handler+0x7c>
 6d8:	00001537          	lui	a0,0x1
 6dc:	b8450513          	addi	a0,a0,-1148 # b84 <__etext+0x234>
 6e0:	bf5ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 6e4:	00048513          	mv	a0,s1
 6e8:	bd5ff0ef          	jal	ra,2bc <neorv32_uart0_putc>
 6ec:	ffd47413          	andi	s0,s0,-3
 6f0:	00500793          	li	a5,5
 6f4:	06f40263          	beq	s0,a5,758 <__neorv32_rte_debug_exc_handler+0x12c>
 6f8:	00001537          	lui	a0,0x1
 6fc:	bd850513          	addi	a0,a0,-1064 # bd8 <__etext+0x288>
 700:	bd5ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 704:	34002573          	csrr	a0,mscratch
 708:	eb5ff0ef          	jal	ra,5bc <__neorv32_rte_print_hex_word>
 70c:	00001537          	lui	a0,0x1
 710:	be050513          	addi	a0,a0,-1056 # be0 <__etext+0x290>
 714:	bc1ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 718:	34302573          	csrr	a0,mtval
 71c:	ea1ff0ef          	jal	ra,5bc <__neorv32_rte_print_hex_word>
 720:	00812403          	lw	s0,8(sp)
 724:	00c12083          	lw	ra,12(sp)
 728:	00412483          	lw	s1,4(sp)
 72c:	00001537          	lui	a0,0x1
 730:	bec50513          	addi	a0,a0,-1044 # bec <__etext+0x29c>
 734:	01010113          	addi	sp,sp,16
 738:	b9dff06f          	j	2d4 <neorv32_uart0_print>
 73c:	00001537          	lui	a0,0x1
 740:	a3c50513          	addi	a0,a0,-1476 # a3c <__etext+0xec>
 744:	b91ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 748:	fb1ff06f          	j	6f8 <__neorv32_rte_debug_exc_handler+0xcc>
 74c:	00001537          	lui	a0,0x1
 750:	a5c50513          	addi	a0,a0,-1444 # a5c <__etext+0x10c>
 754:	b81ff0ef          	jal	ra,2d4 <neorv32_uart0_print>
 758:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 75c:	0a07d463          	bgez	a5,804 <__neorv32_rte_debug_exc_handler+0x1d8>
 760:	0017f793          	andi	a5,a5,1
 764:	08078a63          	beqz	a5,7f8 <__neorv32_rte_debug_exc_handler+0x1cc>
 768:	00001537          	lui	a0,0x1
 76c:	bac50513          	addi	a0,a0,-1108 # bac <__etext+0x25c>
 770:	fd5ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 774:	00001537          	lui	a0,0x1
 778:	a7850513          	addi	a0,a0,-1416 # a78 <__etext+0x128>
 77c:	fc9ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 780:	00001537          	lui	a0,0x1
 784:	a8c50513          	addi	a0,a0,-1396 # a8c <__etext+0x13c>
 788:	fbdff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 78c:	00001537          	lui	a0,0x1
 790:	a9850513          	addi	a0,a0,-1384 # a98 <__etext+0x148>
 794:	fb1ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 798:	00001537          	lui	a0,0x1
 79c:	ab050513          	addi	a0,a0,-1360 # ab0 <__etext+0x160>
 7a0:	fb5ff06f          	j	754 <__neorv32_rte_debug_exc_handler+0x128>
 7a4:	00001537          	lui	a0,0x1
 7a8:	ac450513          	addi	a0,a0,-1340 # ac4 <__etext+0x174>
 7ac:	f99ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 7b0:	00001537          	lui	a0,0x1
 7b4:	ae050513          	addi	a0,a0,-1312 # ae0 <__etext+0x190>
 7b8:	f9dff06f          	j	754 <__neorv32_rte_debug_exc_handler+0x128>
 7bc:	00001537          	lui	a0,0x1
 7c0:	af450513          	addi	a0,a0,-1292 # af4 <__etext+0x1a4>
 7c4:	f81ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 7c8:	00001537          	lui	a0,0x1
 7cc:	b1450513          	addi	a0,a0,-1260 # b14 <__etext+0x1c4>
 7d0:	f75ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 7d4:	00001537          	lui	a0,0x1
 7d8:	b3450513          	addi	a0,a0,-1228 # b34 <__etext+0x1e4>
 7dc:	f69ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 7e0:	00001537          	lui	a0,0x1
 7e4:	b5050513          	addi	a0,a0,-1200 # b50 <__etext+0x200>
 7e8:	f5dff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 7ec:	00001537          	lui	a0,0x1
 7f0:	b6850513          	addi	a0,a0,-1176 # b68 <__etext+0x218>
 7f4:	f51ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 7f8:	00001537          	lui	a0,0x1
 7fc:	bbc50513          	addi	a0,a0,-1092 # bbc <__etext+0x26c>
 800:	f45ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 804:	00001537          	lui	a0,0x1
 808:	bcc50513          	addi	a0,a0,-1076 # bcc <__etext+0x27c>
 80c:	f39ff06f          	j	744 <__neorv32_rte_debug_exc_handler+0x118>
 810:	00c12083          	lw	ra,12(sp)
 814:	00812403          	lw	s0,8(sp)
 818:	00412483          	lw	s1,4(sp)
 81c:	01010113          	addi	sp,sp,16
 820:	00008067          	ret

00000824 <neorv32_rte_exception_uninstall>:
 824:	01f00793          	li	a5,31
 828:	02a7e263          	bltu	a5,a0,84c <neorv32_rte_exception_uninstall+0x28>
 82c:	800007b7          	lui	a5,0x80000
 830:	00078793          	mv	a5,a5
 834:	00251513          	slli	a0,a0,0x2
 838:	00a78533          	add	a0,a5,a0
 83c:	62c00793          	li	a5,1580
 840:	00f52023          	sw	a5,0(a0)
 844:	00000513          	li	a0,0
 848:	00008067          	ret
 84c:	00100513          	li	a0,1
 850:	00008067          	ret

00000854 <neorv32_rte_setup>:
 854:	ff010113          	addi	sp,sp,-16
 858:	00112623          	sw	ra,12(sp)
 85c:	00812423          	sw	s0,8(sp)
 860:	00912223          	sw	s1,4(sp)
 864:	3b000793          	li	a5,944
 868:	30579073          	csrw	mtvec,a5
 86c:	00000413          	li	s0,0
 870:	01d00493          	li	s1,29
 874:	00040513          	mv	a0,s0
 878:	00140413          	addi	s0,s0,1
 87c:	0ff47413          	andi	s0,s0,255
 880:	fa5ff0ef          	jal	ra,824 <neorv32_rte_exception_uninstall>
 884:	fe9418e3          	bne	s0,s1,874 <neorv32_rte_setup+0x20>
 888:	00c12083          	lw	ra,12(sp)
 88c:	00812403          	lw	s0,8(sp)
 890:	00412483          	lw	s1,4(sp)
 894:	01010113          	addi	sp,sp,16
 898:	00008067          	ret

0000089c <__divsi3>:
 89c:	06054063          	bltz	a0,8fc <__umodsi3+0x10>
 8a0:	0605c663          	bltz	a1,90c <__umodsi3+0x20>

000008a4 <__udivsi3>:
 8a4:	00058613          	mv	a2,a1
 8a8:	00050593          	mv	a1,a0
 8ac:	fff00513          	li	a0,-1
 8b0:	02060c63          	beqz	a2,8e8 <__udivsi3+0x44>
 8b4:	00100693          	li	a3,1
 8b8:	00b67a63          	bgeu	a2,a1,8cc <__udivsi3+0x28>
 8bc:	00c05863          	blez	a2,8cc <__udivsi3+0x28>
 8c0:	00161613          	slli	a2,a2,0x1
 8c4:	00169693          	slli	a3,a3,0x1
 8c8:	feb66ae3          	bltu	a2,a1,8bc <__udivsi3+0x18>
 8cc:	00000513          	li	a0,0
 8d0:	00c5e663          	bltu	a1,a2,8dc <__udivsi3+0x38>
 8d4:	40c585b3          	sub	a1,a1,a2
 8d8:	00d56533          	or	a0,a0,a3
 8dc:	0016d693          	srli	a3,a3,0x1
 8e0:	00165613          	srli	a2,a2,0x1
 8e4:	fe0696e3          	bnez	a3,8d0 <__udivsi3+0x2c>
 8e8:	00008067          	ret

000008ec <__umodsi3>:
 8ec:	00008293          	mv	t0,ra
 8f0:	fb5ff0ef          	jal	ra,8a4 <__udivsi3>
 8f4:	00058513          	mv	a0,a1
 8f8:	00028067          	jr	t0
 8fc:	40a00533          	neg	a0,a0
 900:	00b04863          	bgtz	a1,910 <__umodsi3+0x24>
 904:	40b005b3          	neg	a1,a1
 908:	f9dff06f          	j	8a4 <__udivsi3>
 90c:	40b005b3          	neg	a1,a1
 910:	00008293          	mv	t0,ra
 914:	f91ff0ef          	jal	ra,8a4 <__udivsi3>
 918:	40a00533          	neg	a0,a0
 91c:	00028067          	jr	t0

00000920 <__modsi3>:
 920:	00008293          	mv	t0,ra
 924:	0005ca63          	bltz	a1,938 <__modsi3+0x18>
 928:	00054c63          	bltz	a0,940 <__modsi3+0x20>
 92c:	f79ff0ef          	jal	ra,8a4 <__udivsi3>
 930:	00058513          	mv	a0,a1
 934:	00028067          	jr	t0
 938:	40b005b3          	neg	a1,a1
 93c:	fe0558e3          	bgez	a0,92c <__modsi3+0xc>
 940:	40a00533          	neg	a0,a0
 944:	f61ff0ef          	jal	ra,8a4 <__udivsi3>
 948:	40b00533          	neg	a0,a1
 94c:	00028067          	jr	t0
