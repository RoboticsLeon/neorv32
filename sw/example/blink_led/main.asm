
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
  e0:	cb058593          	addi	a1,a1,-848 # d8c <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3d74>
 194:	00112623          	sw	ra,12(sp)
 198:	088000ef          	jal	ra,220 <neorv32_uart0_setup>
 19c:	1a0000ef          	jal	ra,33c <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	750000ef          	jal	ra,8f4 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	ac850513          	addi	a0,a0,-1336 # ac8 <__etext+0x24>
 1b0:	134000ef          	jal	ra,2e4 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <blink_led_c>
 1b8:	00001537          	lui	a0,0x1
 1bc:	aa450513          	addi	a0,a0,-1372 # aa4 <__etext>
 1c0:	124000ef          	jal	ra,2e4 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <blink_led_c>:
 1d4:	ff010113          	addi	sp,sp,-16
 1d8:	00000513          	li	a0,0
 1dc:	00000593          	li	a1,0
 1e0:	00112623          	sw	ra,12(sp)
 1e4:	00812423          	sw	s0,8(sp)
 1e8:	164000ef          	jal	ra,34c <neorv32_gpio_port_set>
 1ec:	00000513          	li	a0,0
 1f0:	00150413          	addi	s0,a0,1
 1f4:	00000593          	li	a1,0
 1f8:	0ff57513          	andi	a0,a0,255
 1fc:	150000ef          	jal	ra,34c <neorv32_gpio_port_set>
 200:	0c800513          	li	a0,200
 204:	184000ef          	jal	ra,388 <neorv32_cpu_delay_ms>
 208:	00040513          	mv	a0,s0
 20c:	fe5ff06f          	j	1f0 <blink_led_c+0x1c>

00000210 <neorv32_uart0_available>:
 210:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 214:	01255513          	srli	a0,a0,0x12
 218:	00157513          	andi	a0,a0,1
 21c:	00008067          	ret

00000220 <neorv32_uart0_setup>:
 220:	ff010113          	addi	sp,sp,-16
 224:	00812423          	sw	s0,8(sp)
 228:	00912223          	sw	s1,4(sp)
 22c:	00112623          	sw	ra,12(sp)
 230:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 234:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 238:	00058413          	mv	s0,a1
 23c:	00151593          	slli	a1,a0,0x1
 240:	00078513          	mv	a0,a5
 244:	00060493          	mv	s1,a2
 248:	7b0000ef          	jal	ra,9f8 <__udivsi3>
 24c:	01051513          	slli	a0,a0,0x10
 250:	000017b7          	lui	a5,0x1
 254:	01055513          	srli	a0,a0,0x10
 258:	00000713          	li	a4,0
 25c:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x272>
 260:	04a7e463          	bltu	a5,a0,2a8 <neorv32_uart0_setup+0x88>
 264:	0034f793          	andi	a5,s1,3
 268:	00347413          	andi	s0,s0,3
 26c:	fff50513          	addi	a0,a0,-1
 270:	01479793          	slli	a5,a5,0x14
 274:	01641413          	slli	s0,s0,0x16
 278:	00f567b3          	or	a5,a0,a5
 27c:	0087e7b3          	or	a5,a5,s0
 280:	01871713          	slli	a4,a4,0x18
 284:	00c12083          	lw	ra,12(sp)
 288:	00812403          	lw	s0,8(sp)
 28c:	00e7e7b3          	or	a5,a5,a4
 290:	10000737          	lui	a4,0x10000
 294:	00e7e7b3          	or	a5,a5,a4
 298:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 29c:	00412483          	lw	s1,4(sp)
 2a0:	01010113          	addi	sp,sp,16
 2a4:	00008067          	ret
 2a8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff272>
 2ac:	0fd6f693          	andi	a3,a3,253
 2b0:	00069a63          	bnez	a3,2c4 <neorv32_uart0_setup+0xa4>
 2b4:	00355513          	srli	a0,a0,0x3
 2b8:	00170713          	addi	a4,a4,1
 2bc:	0ff77713          	andi	a4,a4,255
 2c0:	fa1ff06f          	j	260 <neorv32_uart0_setup+0x40>
 2c4:	00155513          	srli	a0,a0,0x1
 2c8:	ff1ff06f          	j	2b8 <neorv32_uart0_setup+0x98>

000002cc <neorv32_uart0_putc>:
 2cc:	00040737          	lui	a4,0x40
 2d0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 2d4:	00e7f7b3          	and	a5,a5,a4
 2d8:	fe079ce3          	bnez	a5,2d0 <neorv32_uart0_putc+0x4>
 2dc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 2e0:	00008067          	ret

000002e4 <neorv32_uart0_print>:
 2e4:	ff010113          	addi	sp,sp,-16
 2e8:	00812423          	sw	s0,8(sp)
 2ec:	01212023          	sw	s2,0(sp)
 2f0:	00112623          	sw	ra,12(sp)
 2f4:	00912223          	sw	s1,4(sp)
 2f8:	00050413          	mv	s0,a0
 2fc:	00a00913          	li	s2,10
 300:	00044483          	lbu	s1,0(s0)
 304:	00140413          	addi	s0,s0,1
 308:	00049e63          	bnez	s1,324 <neorv32_uart0_print+0x40>
 30c:	00c12083          	lw	ra,12(sp)
 310:	00812403          	lw	s0,8(sp)
 314:	00412483          	lw	s1,4(sp)
 318:	00012903          	lw	s2,0(sp)
 31c:	01010113          	addi	sp,sp,16
 320:	00008067          	ret
 324:	01249663          	bne	s1,s2,330 <neorv32_uart0_print+0x4c>
 328:	00d00513          	li	a0,13
 32c:	fa1ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 330:	00048513          	mv	a0,s1
 334:	f99ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 338:	fc9ff06f          	j	300 <neorv32_uart0_print+0x1c>

0000033c <neorv32_gpio_available>:
 33c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 340:	01055513          	srli	a0,a0,0x10
 344:	00157513          	andi	a0,a0,1
 348:	00008067          	ret

0000034c <neorv32_gpio_port_set>:
 34c:	fc000793          	li	a5,-64
 350:	00a7a423          	sw	a0,8(a5)
 354:	00b7a623          	sw	a1,12(a5)
 358:	00008067          	ret

0000035c <neorv32_cpu_get_systime>:
 35c:	ff010113          	addi	sp,sp,-16
 360:	c81026f3          	rdtimeh	a3
 364:	c0102773          	rdtime	a4
 368:	c81027f3          	rdtimeh	a5
 36c:	fed79ae3          	bne	a5,a3,360 <neorv32_cpu_get_systime+0x4>
 370:	00e12023          	sw	a4,0(sp)
 374:	00f12223          	sw	a5,4(sp)
 378:	00012503          	lw	a0,0(sp)
 37c:	00412583          	lw	a1,4(sp)
 380:	01010113          	addi	sp,sp,16
 384:	00008067          	ret

00000388 <neorv32_cpu_delay_ms>:
 388:	fd010113          	addi	sp,sp,-48
 38c:	00a12623          	sw	a0,12(sp)
 390:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 394:	3e800593          	li	a1,1000
 398:	02112623          	sw	ra,44(sp)
 39c:	02812423          	sw	s0,40(sp)
 3a0:	02912223          	sw	s1,36(sp)
 3a4:	03212023          	sw	s2,32(sp)
 3a8:	01312e23          	sw	s3,28(sp)
 3ac:	64c000ef          	jal	ra,9f8 <__udivsi3>
 3b0:	00c12603          	lw	a2,12(sp)
 3b4:	00000693          	li	a3,0
 3b8:	00000593          	li	a1,0
 3bc:	5a4000ef          	jal	ra,960 <__muldi3>
 3c0:	00050413          	mv	s0,a0
 3c4:	00058993          	mv	s3,a1
 3c8:	f95ff0ef          	jal	ra,35c <neorv32_cpu_get_systime>
 3cc:	00058913          	mv	s2,a1
 3d0:	00050493          	mv	s1,a0
 3d4:	f89ff0ef          	jal	ra,35c <neorv32_cpu_get_systime>
 3d8:	00b96663          	bltu	s2,a1,3e4 <neorv32_cpu_delay_ms+0x5c>
 3dc:	05259263          	bne	a1,s2,420 <neorv32_cpu_delay_ms+0x98>
 3e0:	04a4f063          	bgeu	s1,a0,420 <neorv32_cpu_delay_ms+0x98>
 3e4:	008484b3          	add	s1,s1,s0
 3e8:	0084b433          	sltu	s0,s1,s0
 3ec:	01390933          	add	s2,s2,s3
 3f0:	01240433          	add	s0,s0,s2
 3f4:	f69ff0ef          	jal	ra,35c <neorv32_cpu_get_systime>
 3f8:	fe85eee3          	bltu	a1,s0,3f4 <neorv32_cpu_delay_ms+0x6c>
 3fc:	00b41463          	bne	s0,a1,404 <neorv32_cpu_delay_ms+0x7c>
 400:	fe956ae3          	bltu	a0,s1,3f4 <neorv32_cpu_delay_ms+0x6c>
 404:	02c12083          	lw	ra,44(sp)
 408:	02812403          	lw	s0,40(sp)
 40c:	02412483          	lw	s1,36(sp)
 410:	02012903          	lw	s2,32(sp)
 414:	01c12983          	lw	s3,28(sp)
 418:	03010113          	addi	sp,sp,48
 41c:	00008067          	ret
 420:	01c99913          	slli	s2,s3,0x1c
 424:	00445413          	srli	s0,s0,0x4
 428:	00896433          	or	s0,s2,s0

0000042c <__neorv32_cpu_delay_ms_start>:
 42c:	00040a63          	beqz	s0,440 <__neorv32_cpu_delay_ms_end>
 430:	00040863          	beqz	s0,440 <__neorv32_cpu_delay_ms_end>
 434:	fff40413          	addi	s0,s0,-1
 438:	00000013          	nop
 43c:	ff1ff06f          	j	42c <__neorv32_cpu_delay_ms_start>

00000440 <__neorv32_cpu_delay_ms_end>:
 440:	fc5ff06f          	j	404 <neorv32_cpu_delay_ms+0x7c>
 444:	0000                	unimp
 446:	0000                	unimp
 448:	0000                	unimp
 44a:	0000                	unimp
 44c:	0000                	unimp
 44e:	0000                	unimp

00000450 <__neorv32_rte_core>:
 450:	fc010113          	addi	sp,sp,-64
 454:	02112e23          	sw	ra,60(sp)
 458:	02512c23          	sw	t0,56(sp)
 45c:	02612a23          	sw	t1,52(sp)
 460:	02712823          	sw	t2,48(sp)
 464:	02a12623          	sw	a0,44(sp)
 468:	02b12423          	sw	a1,40(sp)
 46c:	02c12223          	sw	a2,36(sp)
 470:	02d12023          	sw	a3,32(sp)
 474:	00e12e23          	sw	a4,28(sp)
 478:	00f12c23          	sw	a5,24(sp)
 47c:	01012a23          	sw	a6,20(sp)
 480:	01112823          	sw	a7,16(sp)
 484:	01c12623          	sw	t3,12(sp)
 488:	01d12423          	sw	t4,8(sp)
 48c:	01e12223          	sw	t5,4(sp)
 490:	01f12023          	sw	t6,0(sp)
 494:	34102773          	csrr	a4,mepc
 498:	34071073          	csrw	mscratch,a4
 49c:	342027f3          	csrr	a5,mcause
 4a0:	0807c863          	bltz	a5,530 <__neorv32_rte_core+0xe0>
 4a4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f274>
 4a8:	00300593          	li	a1,3
 4ac:	0036f693          	andi	a3,a3,3
 4b0:	00270613          	addi	a2,a4,2
 4b4:	00b69463          	bne	a3,a1,4bc <__neorv32_rte_core+0x6c>
 4b8:	00470613          	addi	a2,a4,4
 4bc:	34161073          	csrw	mepc,a2
 4c0:	00b00713          	li	a4,11
 4c4:	04f77a63          	bgeu	a4,a5,518 <__neorv32_rte_core+0xc8>
 4c8:	6cc00793          	li	a5,1740
 4cc:	000780e7          	jalr	a5
 4d0:	03c12083          	lw	ra,60(sp)
 4d4:	03812283          	lw	t0,56(sp)
 4d8:	03412303          	lw	t1,52(sp)
 4dc:	03012383          	lw	t2,48(sp)
 4e0:	02c12503          	lw	a0,44(sp)
 4e4:	02812583          	lw	a1,40(sp)
 4e8:	02412603          	lw	a2,36(sp)
 4ec:	02012683          	lw	a3,32(sp)
 4f0:	01c12703          	lw	a4,28(sp)
 4f4:	01812783          	lw	a5,24(sp)
 4f8:	01412803          	lw	a6,20(sp)
 4fc:	01012883          	lw	a7,16(sp)
 500:	00c12e03          	lw	t3,12(sp)
 504:	00812e83          	lw	t4,8(sp)
 508:	00412f03          	lw	t5,4(sp)
 50c:	00012f83          	lw	t6,0(sp)
 510:	04010113          	addi	sp,sp,64
 514:	30200073          	mret
 518:	00001737          	lui	a4,0x1
 51c:	00279793          	slli	a5,a5,0x2
 520:	ae470713          	addi	a4,a4,-1308 # ae4 <__etext+0x40>
 524:	00e787b3          	add	a5,a5,a4
 528:	0007a783          	lw	a5,0(a5)
 52c:	00078067          	jr	a5
 530:	80000737          	lui	a4,0x80000
 534:	ffd74713          	xori	a4,a4,-3
 538:	00e787b3          	add	a5,a5,a4
 53c:	01c00713          	li	a4,28
 540:	f8f764e3          	bltu	a4,a5,4c8 <__neorv32_rte_core+0x78>
 544:	00001737          	lui	a4,0x1
 548:	00279793          	slli	a5,a5,0x2
 54c:	b1470713          	addi	a4,a4,-1260 # b14 <__etext+0x70>
 550:	00e787b3          	add	a5,a5,a4
 554:	0007a783          	lw	a5,0(a5)
 558:	00078067          	jr	a5
 55c:	800007b7          	lui	a5,0x80000
 560:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 564:	f69ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 568:	800007b7          	lui	a5,0x80000
 56c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 570:	f5dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 574:	800007b7          	lui	a5,0x80000
 578:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 57c:	f51ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 580:	800007b7          	lui	a5,0x80000
 584:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 588:	f45ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 58c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 590:	f3dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 594:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 598:	f35ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 59c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 5a0:	f2dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5a4:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 5a8:	f25ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5ac:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 5b0:	f1dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5b4:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 5b8:	f15ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5bc:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 5c0:	f0dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5c4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 5c8:	f05ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5cc:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 5d0:	efdff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5d4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 5d8:	ef5ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5dc:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 5e0:	eedff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5e4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 5e8:	ee5ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5ec:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 5f0:	eddff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5f4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 5f8:	ed5ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 5fc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 600:	ecdff06f          	j	4cc <__neorv32_rte_core+0x7c>
 604:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 608:	ec5ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 60c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 610:	ebdff06f          	j	4cc <__neorv32_rte_core+0x7c>
 614:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 618:	eb5ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 61c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 620:	eadff06f          	j	4cc <__neorv32_rte_core+0x7c>
 624:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 628:	ea5ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 62c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 630:	e9dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 634:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 638:	e95ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 63c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 640:	e8dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 644:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 648:	e85ff06f          	j	4cc <__neorv32_rte_core+0x7c>
 64c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 650:	e7dff06f          	j	4cc <__neorv32_rte_core+0x7c>
 654:	0000                	unimp
 656:	0000                	unimp
 658:	0000                	unimp
 65a:	0000                	unimp

0000065c <__neorv32_rte_print_hex_word>:
 65c:	fe010113          	addi	sp,sp,-32
 660:	01212823          	sw	s2,16(sp)
 664:	00050913          	mv	s2,a0
 668:	00001537          	lui	a0,0x1
 66c:	00912a23          	sw	s1,20(sp)
 670:	b8850513          	addi	a0,a0,-1144 # b88 <__etext+0xe4>
 674:	000014b7          	lui	s1,0x1
 678:	00812c23          	sw	s0,24(sp)
 67c:	01312623          	sw	s3,12(sp)
 680:	00112e23          	sw	ra,28(sp)
 684:	01c00413          	li	s0,28
 688:	c5dff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 68c:	d7c48493          	addi	s1,s1,-644 # d7c <hex_symbols.0>
 690:	ffc00993          	li	s3,-4
 694:	008957b3          	srl	a5,s2,s0
 698:	00f7f793          	andi	a5,a5,15
 69c:	00f487b3          	add	a5,s1,a5
 6a0:	0007c503          	lbu	a0,0(a5)
 6a4:	ffc40413          	addi	s0,s0,-4
 6a8:	c25ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 6ac:	ff3414e3          	bne	s0,s3,694 <__neorv32_rte_print_hex_word+0x38>
 6b0:	01c12083          	lw	ra,28(sp)
 6b4:	01812403          	lw	s0,24(sp)
 6b8:	01412483          	lw	s1,20(sp)
 6bc:	01012903          	lw	s2,16(sp)
 6c0:	00c12983          	lw	s3,12(sp)
 6c4:	02010113          	addi	sp,sp,32
 6c8:	00008067          	ret

000006cc <__neorv32_rte_debug_exc_handler>:
 6cc:	ff010113          	addi	sp,sp,-16
 6d0:	00112623          	sw	ra,12(sp)
 6d4:	00812423          	sw	s0,8(sp)
 6d8:	00912223          	sw	s1,4(sp)
 6dc:	b35ff0ef          	jal	ra,210 <neorv32_uart0_available>
 6e0:	1c050863          	beqz	a0,8b0 <__neorv32_rte_debug_exc_handler+0x1e4>
 6e4:	00001537          	lui	a0,0x1
 6e8:	b8c50513          	addi	a0,a0,-1140 # b8c <__etext+0xe8>
 6ec:	bf9ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 6f0:	34202473          	csrr	s0,mcause
 6f4:	00900713          	li	a4,9
 6f8:	00f47793          	andi	a5,s0,15
 6fc:	03078493          	addi	s1,a5,48
 700:	00f77463          	bgeu	a4,a5,708 <__neorv32_rte_debug_exc_handler+0x3c>
 704:	05778493          	addi	s1,a5,87
 708:	00b00793          	li	a5,11
 70c:	0087ee63          	bltu	a5,s0,728 <__neorv32_rte_debug_exc_handler+0x5c>
 710:	00001737          	lui	a4,0x1
 714:	00241793          	slli	a5,s0,0x2
 718:	d4c70713          	addi	a4,a4,-692 # d4c <__etext+0x2a8>
 71c:	00e787b3          	add	a5,a5,a4
 720:	0007a783          	lw	a5,0(a5)
 724:	00078067          	jr	a5
 728:	800007b7          	lui	a5,0x80000
 72c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 730:	14e40e63          	beq	s0,a4,88c <__neorv32_rte_debug_exc_handler+0x1c0>
 734:	02876a63          	bltu	a4,s0,768 <__neorv32_rte_debug_exc_handler+0x9c>
 738:	00378713          	addi	a4,a5,3
 73c:	12e40c63          	beq	s0,a4,874 <__neorv32_rte_debug_exc_handler+0x1a8>
 740:	00778793          	addi	a5,a5,7
 744:	12f40e63          	beq	s0,a5,880 <__neorv32_rte_debug_exc_handler+0x1b4>
 748:	00001537          	lui	a0,0x1
 74c:	cec50513          	addi	a0,a0,-788 # cec <__etext+0x248>
 750:	b95ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 754:	00040513          	mv	a0,s0
 758:	f05ff0ef          	jal	ra,65c <__neorv32_rte_print_hex_word>
 75c:	00100793          	li	a5,1
 760:	08f40c63          	beq	s0,a5,7f8 <__neorv32_rte_debug_exc_handler+0x12c>
 764:	0280006f          	j	78c <__neorv32_rte_debug_exc_handler+0xc0>
 768:	ff07c793          	xori	a5,a5,-16
 76c:	00f407b3          	add	a5,s0,a5
 770:	00f00713          	li	a4,15
 774:	fcf76ae3          	bltu	a4,a5,748 <__neorv32_rte_debug_exc_handler+0x7c>
 778:	00001537          	lui	a0,0x1
 77c:	cdc50513          	addi	a0,a0,-804 # cdc <__etext+0x238>
 780:	b65ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 784:	00048513          	mv	a0,s1
 788:	b45ff0ef          	jal	ra,2cc <neorv32_uart0_putc>
 78c:	ffd47413          	andi	s0,s0,-3
 790:	00500793          	li	a5,5
 794:	06f40263          	beq	s0,a5,7f8 <__neorv32_rte_debug_exc_handler+0x12c>
 798:	00001537          	lui	a0,0x1
 79c:	d3050513          	addi	a0,a0,-720 # d30 <__etext+0x28c>
 7a0:	b45ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 7a4:	34002573          	csrr	a0,mscratch
 7a8:	eb5ff0ef          	jal	ra,65c <__neorv32_rte_print_hex_word>
 7ac:	00001537          	lui	a0,0x1
 7b0:	d3850513          	addi	a0,a0,-712 # d38 <__etext+0x294>
 7b4:	b31ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 7b8:	34302573          	csrr	a0,mtval
 7bc:	ea1ff0ef          	jal	ra,65c <__neorv32_rte_print_hex_word>
 7c0:	00812403          	lw	s0,8(sp)
 7c4:	00c12083          	lw	ra,12(sp)
 7c8:	00412483          	lw	s1,4(sp)
 7cc:	00001537          	lui	a0,0x1
 7d0:	d4450513          	addi	a0,a0,-700 # d44 <__etext+0x2a0>
 7d4:	01010113          	addi	sp,sp,16
 7d8:	b0dff06f          	j	2e4 <neorv32_uart0_print>
 7dc:	00001537          	lui	a0,0x1
 7e0:	b9450513          	addi	a0,a0,-1132 # b94 <__etext+0xf0>
 7e4:	b01ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 7e8:	fb1ff06f          	j	798 <__neorv32_rte_debug_exc_handler+0xcc>
 7ec:	00001537          	lui	a0,0x1
 7f0:	bb450513          	addi	a0,a0,-1100 # bb4 <__etext+0x110>
 7f4:	af1ff0ef          	jal	ra,2e4 <neorv32_uart0_print>
 7f8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 7fc:	0a07d463          	bgez	a5,8a4 <__neorv32_rte_debug_exc_handler+0x1d8>
 800:	0017f793          	andi	a5,a5,1
 804:	08078a63          	beqz	a5,898 <__neorv32_rte_debug_exc_handler+0x1cc>
 808:	00001537          	lui	a0,0x1
 80c:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0x260>
 810:	fd5ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 814:	00001537          	lui	a0,0x1
 818:	bd050513          	addi	a0,a0,-1072 # bd0 <__etext+0x12c>
 81c:	fc9ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 820:	00001537          	lui	a0,0x1
 824:	be450513          	addi	a0,a0,-1052 # be4 <__etext+0x140>
 828:	fbdff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 82c:	00001537          	lui	a0,0x1
 830:	bf050513          	addi	a0,a0,-1040 # bf0 <__etext+0x14c>
 834:	fb1ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 838:	00001537          	lui	a0,0x1
 83c:	c0850513          	addi	a0,a0,-1016 # c08 <__etext+0x164>
 840:	fb5ff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x128>
 844:	00001537          	lui	a0,0x1
 848:	c1c50513          	addi	a0,a0,-996 # c1c <__etext+0x178>
 84c:	f99ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 850:	00001537          	lui	a0,0x1
 854:	c3850513          	addi	a0,a0,-968 # c38 <__etext+0x194>
 858:	f9dff06f          	j	7f4 <__neorv32_rte_debug_exc_handler+0x128>
 85c:	00001537          	lui	a0,0x1
 860:	c4c50513          	addi	a0,a0,-948 # c4c <__etext+0x1a8>
 864:	f81ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 868:	00001537          	lui	a0,0x1
 86c:	c6c50513          	addi	a0,a0,-916 # c6c <__etext+0x1c8>
 870:	f75ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 874:	00001537          	lui	a0,0x1
 878:	c8c50513          	addi	a0,a0,-884 # c8c <__etext+0x1e8>
 87c:	f69ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 880:	00001537          	lui	a0,0x1
 884:	ca850513          	addi	a0,a0,-856 # ca8 <__etext+0x204>
 888:	f5dff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 88c:	00001537          	lui	a0,0x1
 890:	cc050513          	addi	a0,a0,-832 # cc0 <__etext+0x21c>
 894:	f51ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 898:	00001537          	lui	a0,0x1
 89c:	d1450513          	addi	a0,a0,-748 # d14 <__etext+0x270>
 8a0:	f45ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 8a4:	00001537          	lui	a0,0x1
 8a8:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x280>
 8ac:	f39ff06f          	j	7e4 <__neorv32_rte_debug_exc_handler+0x118>
 8b0:	00c12083          	lw	ra,12(sp)
 8b4:	00812403          	lw	s0,8(sp)
 8b8:	00412483          	lw	s1,4(sp)
 8bc:	01010113          	addi	sp,sp,16
 8c0:	00008067          	ret

000008c4 <neorv32_rte_exception_uninstall>:
 8c4:	01f00793          	li	a5,31
 8c8:	02a7e263          	bltu	a5,a0,8ec <neorv32_rte_exception_uninstall+0x28>
 8cc:	800007b7          	lui	a5,0x80000
 8d0:	00078793          	mv	a5,a5
 8d4:	00251513          	slli	a0,a0,0x2
 8d8:	00a78533          	add	a0,a5,a0
 8dc:	6cc00793          	li	a5,1740
 8e0:	00f52023          	sw	a5,0(a0)
 8e4:	00000513          	li	a0,0
 8e8:	00008067          	ret
 8ec:	00100513          	li	a0,1
 8f0:	00008067          	ret

000008f4 <neorv32_rte_setup>:
 8f4:	ff010113          	addi	sp,sp,-16
 8f8:	00112623          	sw	ra,12(sp)
 8fc:	00812423          	sw	s0,8(sp)
 900:	00912223          	sw	s1,4(sp)
 904:	45000793          	li	a5,1104
 908:	30579073          	csrw	mtvec,a5
 90c:	00000413          	li	s0,0
 910:	01d00493          	li	s1,29
 914:	00040513          	mv	a0,s0
 918:	00140413          	addi	s0,s0,1
 91c:	0ff47413          	andi	s0,s0,255
 920:	fa5ff0ef          	jal	ra,8c4 <neorv32_rte_exception_uninstall>
 924:	fe9418e3          	bne	s0,s1,914 <neorv32_rte_setup+0x20>
 928:	00c12083          	lw	ra,12(sp)
 92c:	00812403          	lw	s0,8(sp)
 930:	00412483          	lw	s1,4(sp)
 934:	01010113          	addi	sp,sp,16
 938:	00008067          	ret

0000093c <__mulsi3>:
 93c:	00050613          	mv	a2,a0
 940:	00000513          	li	a0,0
 944:	0015f693          	andi	a3,a1,1
 948:	00068463          	beqz	a3,950 <__mulsi3+0x14>
 94c:	00c50533          	add	a0,a0,a2
 950:	0015d593          	srli	a1,a1,0x1
 954:	00161613          	slli	a2,a2,0x1
 958:	fe0596e3          	bnez	a1,944 <__mulsi3+0x8>
 95c:	00008067          	ret

00000960 <__muldi3>:
 960:	00050313          	mv	t1,a0
 964:	ff010113          	addi	sp,sp,-16
 968:	00060513          	mv	a0,a2
 96c:	00068893          	mv	a7,a3
 970:	00112623          	sw	ra,12(sp)
 974:	00030613          	mv	a2,t1
 978:	00050693          	mv	a3,a0
 97c:	00000713          	li	a4,0
 980:	00000793          	li	a5,0
 984:	00000813          	li	a6,0
 988:	0016fe13          	andi	t3,a3,1
 98c:	00171e93          	slli	t4,a4,0x1
 990:	000e0c63          	beqz	t3,9a8 <__muldi3+0x48>
 994:	01060e33          	add	t3,a2,a6
 998:	010e3833          	sltu	a6,t3,a6
 99c:	00e787b3          	add	a5,a5,a4
 9a0:	00f807b3          	add	a5,a6,a5
 9a4:	000e0813          	mv	a6,t3
 9a8:	01f65713          	srli	a4,a2,0x1f
 9ac:	0016d693          	srli	a3,a3,0x1
 9b0:	00eee733          	or	a4,t4,a4
 9b4:	00161613          	slli	a2,a2,0x1
 9b8:	fc0698e3          	bnez	a3,988 <__muldi3+0x28>
 9bc:	00058663          	beqz	a1,9c8 <__muldi3+0x68>
 9c0:	f7dff0ef          	jal	ra,93c <__mulsi3>
 9c4:	00a787b3          	add	a5,a5,a0
 9c8:	00088a63          	beqz	a7,9dc <__muldi3+0x7c>
 9cc:	00030513          	mv	a0,t1
 9d0:	00088593          	mv	a1,a7
 9d4:	f69ff0ef          	jal	ra,93c <__mulsi3>
 9d8:	00f507b3          	add	a5,a0,a5
 9dc:	00c12083          	lw	ra,12(sp)
 9e0:	00080513          	mv	a0,a6
 9e4:	00078593          	mv	a1,a5
 9e8:	01010113          	addi	sp,sp,16
 9ec:	00008067          	ret

000009f0 <__divsi3>:
 9f0:	06054063          	bltz	a0,a50 <__umodsi3+0x10>
 9f4:	0605c663          	bltz	a1,a60 <__umodsi3+0x20>

000009f8 <__udivsi3>:
 9f8:	00058613          	mv	a2,a1
 9fc:	00050593          	mv	a1,a0
 a00:	fff00513          	li	a0,-1
 a04:	02060c63          	beqz	a2,a3c <__udivsi3+0x44>
 a08:	00100693          	li	a3,1
 a0c:	00b67a63          	bgeu	a2,a1,a20 <__udivsi3+0x28>
 a10:	00c05863          	blez	a2,a20 <__udivsi3+0x28>
 a14:	00161613          	slli	a2,a2,0x1
 a18:	00169693          	slli	a3,a3,0x1
 a1c:	feb66ae3          	bltu	a2,a1,a10 <__udivsi3+0x18>
 a20:	00000513          	li	a0,0
 a24:	00c5e663          	bltu	a1,a2,a30 <__udivsi3+0x38>
 a28:	40c585b3          	sub	a1,a1,a2
 a2c:	00d56533          	or	a0,a0,a3
 a30:	0016d693          	srli	a3,a3,0x1
 a34:	00165613          	srli	a2,a2,0x1
 a38:	fe0696e3          	bnez	a3,a24 <__udivsi3+0x2c>
 a3c:	00008067          	ret

00000a40 <__umodsi3>:
 a40:	00008293          	mv	t0,ra
 a44:	fb5ff0ef          	jal	ra,9f8 <__udivsi3>
 a48:	00058513          	mv	a0,a1
 a4c:	00028067          	jr	t0
 a50:	40a00533          	neg	a0,a0
 a54:	00b04863          	bgtz	a1,a64 <__umodsi3+0x24>
 a58:	40b005b3          	neg	a1,a1
 a5c:	f9dff06f          	j	9f8 <__udivsi3>
 a60:	40b005b3          	neg	a1,a1
 a64:	00008293          	mv	t0,ra
 a68:	f91ff0ef          	jal	ra,9f8 <__udivsi3>
 a6c:	40a00533          	neg	a0,a0
 a70:	00028067          	jr	t0

00000a74 <__modsi3>:
 a74:	00008293          	mv	t0,ra
 a78:	0005ca63          	bltz	a1,a8c <__modsi3+0x18>
 a7c:	00054c63          	bltz	a0,a94 <__modsi3+0x20>
 a80:	f79ff0ef          	jal	ra,9f8 <__udivsi3>
 a84:	00058513          	mv	a0,a1
 a88:	00028067          	jr	t0
 a8c:	40b005b3          	neg	a1,a1
 a90:	fe0558e3          	bgez	a0,a80 <__modsi3+0xc>
 a94:	40a00533          	neg	a0,a0
 a98:	f61ff0ef          	jal	ra,9f8 <__udivsi3>
 a9c:	40b00533          	neg	a0,a1
 aa0:	00028067          	jr	t0
