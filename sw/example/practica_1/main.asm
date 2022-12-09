
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
  e0:	d2c58593          	addi	a1,a1,-724 # e08 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3cf8>
 194:	00112623          	sw	ra,12(sp)
 198:	07c000ef          	jal	ra,214 <neorv32_uart0_setup>
 19c:	194000ef          	jal	ra,330 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	7c0000ef          	jal	ra,964 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	b3850513          	addi	a0,a0,-1224 # b38 <__etext+0x24>
 1b0:	128000ef          	jal	ra,2d8 <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <enciende_led>
 1b8:	00001537          	lui	a0,0x1
 1bc:	b1450513          	addi	a0,a0,-1260 # b14 <__etext>
 1c0:	118000ef          	jal	ra,2d8 <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <enciende_led>:
 1d4:	ff010113          	addi	sp,sp,-16
 1d8:	00112623          	sw	ra,12(sp)
 1dc:	03200513          	li	a0,50
 1e0:	218000ef          	jal	ra,3f8 <neorv32_cpu_delay_ms>
 1e4:	00000513          	li	a0,0
 1e8:	1bc000ef          	jal	ra,3a4 <neorv32_gpio_pin_get>
 1ec:	00050863          	beqz	a0,1fc <enciende_led+0x28>
 1f0:	00000513          	li	a0,0
 1f4:	14c000ef          	jal	ra,340 <neorv32_gpio_pin_set>
 1f8:	fe5ff06f          	j	1dc <enciende_led+0x8>
 1fc:	174000ef          	jal	ra,370 <neorv32_gpio_pin_clr>
 200:	fddff06f          	j	1dc <enciende_led+0x8>

00000204 <neorv32_uart0_available>:
 204:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 208:	01255513          	srli	a0,a0,0x12
 20c:	00157513          	andi	a0,a0,1
 210:	00008067          	ret

00000214 <neorv32_uart0_setup>:
 214:	ff010113          	addi	sp,sp,-16
 218:	00812423          	sw	s0,8(sp)
 21c:	00912223          	sw	s1,4(sp)
 220:	00112623          	sw	ra,12(sp)
 224:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 228:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 22c:	00058413          	mv	s0,a1
 230:	00151593          	slli	a1,a0,0x1
 234:	00078513          	mv	a0,a5
 238:	00060493          	mv	s1,a2
 23c:	02d000ef          	jal	ra,a68 <__udivsi3>
 240:	01051513          	slli	a0,a0,0x10
 244:	000017b7          	lui	a5,0x1
 248:	01055513          	srli	a0,a0,0x10
 24c:	00000713          	li	a4,0
 250:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x1f6>
 254:	04a7e463          	bltu	a5,a0,29c <neorv32_uart0_setup+0x88>
 258:	0034f793          	andi	a5,s1,3
 25c:	00347413          	andi	s0,s0,3
 260:	fff50513          	addi	a0,a0,-1
 264:	01479793          	slli	a5,a5,0x14
 268:	01641413          	slli	s0,s0,0x16
 26c:	00f567b3          	or	a5,a0,a5
 270:	0087e7b3          	or	a5,a5,s0
 274:	01871713          	slli	a4,a4,0x18
 278:	00c12083          	lw	ra,12(sp)
 27c:	00812403          	lw	s0,8(sp)
 280:	00e7e7b3          	or	a5,a5,a4
 284:	10000737          	lui	a4,0x10000
 288:	00e7e7b3          	or	a5,a5,a4
 28c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 290:	00412483          	lw	s1,4(sp)
 294:	01010113          	addi	sp,sp,16
 298:	00008067          	ret
 29c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff1f6>
 2a0:	0fd6f693          	andi	a3,a3,253
 2a4:	00069a63          	bnez	a3,2b8 <neorv32_uart0_setup+0xa4>
 2a8:	00355513          	srli	a0,a0,0x3
 2ac:	00170713          	addi	a4,a4,1
 2b0:	0ff77713          	andi	a4,a4,255
 2b4:	fa1ff06f          	j	254 <neorv32_uart0_setup+0x40>
 2b8:	00155513          	srli	a0,a0,0x1
 2bc:	ff1ff06f          	j	2ac <neorv32_uart0_setup+0x98>

000002c0 <neorv32_uart0_putc>:
 2c0:	00040737          	lui	a4,0x40
 2c4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 2c8:	00e7f7b3          	and	a5,a5,a4
 2cc:	fe079ce3          	bnez	a5,2c4 <neorv32_uart0_putc+0x4>
 2d0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 2d4:	00008067          	ret

000002d8 <neorv32_uart0_print>:
 2d8:	ff010113          	addi	sp,sp,-16
 2dc:	00812423          	sw	s0,8(sp)
 2e0:	01212023          	sw	s2,0(sp)
 2e4:	00112623          	sw	ra,12(sp)
 2e8:	00912223          	sw	s1,4(sp)
 2ec:	00050413          	mv	s0,a0
 2f0:	00a00913          	li	s2,10
 2f4:	00044483          	lbu	s1,0(s0)
 2f8:	00140413          	addi	s0,s0,1
 2fc:	00049e63          	bnez	s1,318 <neorv32_uart0_print+0x40>
 300:	00c12083          	lw	ra,12(sp)
 304:	00812403          	lw	s0,8(sp)
 308:	00412483          	lw	s1,4(sp)
 30c:	00012903          	lw	s2,0(sp)
 310:	01010113          	addi	sp,sp,16
 314:	00008067          	ret
 318:	01249663          	bne	s1,s2,324 <neorv32_uart0_print+0x4c>
 31c:	00d00513          	li	a0,13
 320:	fa1ff0ef          	jal	ra,2c0 <neorv32_uart0_putc>
 324:	00048513          	mv	a0,s1
 328:	f99ff0ef          	jal	ra,2c0 <neorv32_uart0_putc>
 32c:	fc9ff06f          	j	2f4 <neorv32_uart0_print+0x1c>

00000330 <neorv32_gpio_available>:
 330:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 334:	01055513          	srli	a0,a0,0x10
 338:	00157513          	andi	a0,a0,1
 33c:	00008067          	ret

00000340 <neorv32_gpio_pin_set>:
 340:	00100793          	li	a5,1
 344:	01f00713          	li	a4,31
 348:	00a797b3          	sll	a5,a5,a0
 34c:	00a74a63          	blt	a4,a0,360 <neorv32_gpio_pin_set+0x20>
 350:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 354:	00f767b3          	or	a5,a4,a5
 358:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 35c:	00008067          	ret
 360:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 364:	00f767b3          	or	a5,a4,a5
 368:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 36c:	00008067          	ret

00000370 <neorv32_gpio_pin_clr>:
 370:	00100793          	li	a5,1
 374:	00a797b3          	sll	a5,a5,a0
 378:	01f00713          	li	a4,31
 37c:	fff7c793          	not	a5,a5
 380:	00a74a63          	blt	a4,a0,394 <neorv32_gpio_pin_clr+0x24>
 384:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 388:	00f777b3          	and	a5,a4,a5
 38c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 390:	00008067          	ret
 394:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 398:	00f777b3          	and	a5,a4,a5
 39c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 3a0:	00008067          	ret

000003a4 <neorv32_gpio_pin_get>:
 3a4:	00050793          	mv	a5,a0
 3a8:	01f00713          	li	a4,31
 3ac:	00100513          	li	a0,1
 3b0:	00f51533          	sll	a0,a0,a5
 3b4:	00f74863          	blt	a4,a5,3c4 <neorv32_gpio_pin_get+0x20>
 3b8:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 3bc:	00a7f533          	and	a0,a5,a0
 3c0:	00008067          	ret
 3c4:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 3c8:	ff5ff06f          	j	3bc <neorv32_gpio_pin_get+0x18>

000003cc <neorv32_cpu_get_systime>:
 3cc:	ff010113          	addi	sp,sp,-16
 3d0:	c81026f3          	rdtimeh	a3
 3d4:	c0102773          	rdtime	a4
 3d8:	c81027f3          	rdtimeh	a5
 3dc:	fed79ae3          	bne	a5,a3,3d0 <neorv32_cpu_get_systime+0x4>
 3e0:	00e12023          	sw	a4,0(sp)
 3e4:	00f12223          	sw	a5,4(sp)
 3e8:	00012503          	lw	a0,0(sp)
 3ec:	00412583          	lw	a1,4(sp)
 3f0:	01010113          	addi	sp,sp,16
 3f4:	00008067          	ret

000003f8 <neorv32_cpu_delay_ms>:
 3f8:	fd010113          	addi	sp,sp,-48
 3fc:	00a12623          	sw	a0,12(sp)
 400:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 404:	3e800593          	li	a1,1000
 408:	02112623          	sw	ra,44(sp)
 40c:	02812423          	sw	s0,40(sp)
 410:	02912223          	sw	s1,36(sp)
 414:	03212023          	sw	s2,32(sp)
 418:	01312e23          	sw	s3,28(sp)
 41c:	64c000ef          	jal	ra,a68 <__udivsi3>
 420:	00c12603          	lw	a2,12(sp)
 424:	00000693          	li	a3,0
 428:	00000593          	li	a1,0
 42c:	5a4000ef          	jal	ra,9d0 <__muldi3>
 430:	00050413          	mv	s0,a0
 434:	00058993          	mv	s3,a1
 438:	f95ff0ef          	jal	ra,3cc <neorv32_cpu_get_systime>
 43c:	00058913          	mv	s2,a1
 440:	00050493          	mv	s1,a0
 444:	f89ff0ef          	jal	ra,3cc <neorv32_cpu_get_systime>
 448:	00b96663          	bltu	s2,a1,454 <neorv32_cpu_delay_ms+0x5c>
 44c:	05259263          	bne	a1,s2,490 <neorv32_cpu_delay_ms+0x98>
 450:	04a4f063          	bgeu	s1,a0,490 <neorv32_cpu_delay_ms+0x98>
 454:	008484b3          	add	s1,s1,s0
 458:	0084b433          	sltu	s0,s1,s0
 45c:	01390933          	add	s2,s2,s3
 460:	01240433          	add	s0,s0,s2
 464:	f69ff0ef          	jal	ra,3cc <neorv32_cpu_get_systime>
 468:	fe85eee3          	bltu	a1,s0,464 <neorv32_cpu_delay_ms+0x6c>
 46c:	00b41463          	bne	s0,a1,474 <neorv32_cpu_delay_ms+0x7c>
 470:	fe956ae3          	bltu	a0,s1,464 <neorv32_cpu_delay_ms+0x6c>
 474:	02c12083          	lw	ra,44(sp)
 478:	02812403          	lw	s0,40(sp)
 47c:	02412483          	lw	s1,36(sp)
 480:	02012903          	lw	s2,32(sp)
 484:	01c12983          	lw	s3,28(sp)
 488:	03010113          	addi	sp,sp,48
 48c:	00008067          	ret
 490:	01c99913          	slli	s2,s3,0x1c
 494:	00445413          	srli	s0,s0,0x4
 498:	00896433          	or	s0,s2,s0

0000049c <__neorv32_cpu_delay_ms_start>:
 49c:	00040a63          	beqz	s0,4b0 <__neorv32_cpu_delay_ms_end>
 4a0:	00040863          	beqz	s0,4b0 <__neorv32_cpu_delay_ms_end>
 4a4:	fff40413          	addi	s0,s0,-1
 4a8:	00000013          	nop
 4ac:	ff1ff06f          	j	49c <__neorv32_cpu_delay_ms_start>

000004b0 <__neorv32_cpu_delay_ms_end>:
 4b0:	fc5ff06f          	j	474 <neorv32_cpu_delay_ms+0x7c>
 4b4:	0000                	unimp
 4b6:	0000                	unimp
 4b8:	0000                	unimp
 4ba:	0000                	unimp
 4bc:	0000                	unimp
 4be:	0000                	unimp

000004c0 <__neorv32_rte_core>:
 4c0:	fc010113          	addi	sp,sp,-64
 4c4:	02112e23          	sw	ra,60(sp)
 4c8:	02512c23          	sw	t0,56(sp)
 4cc:	02612a23          	sw	t1,52(sp)
 4d0:	02712823          	sw	t2,48(sp)
 4d4:	02a12623          	sw	a0,44(sp)
 4d8:	02b12423          	sw	a1,40(sp)
 4dc:	02c12223          	sw	a2,36(sp)
 4e0:	02d12023          	sw	a3,32(sp)
 4e4:	00e12e23          	sw	a4,28(sp)
 4e8:	00f12c23          	sw	a5,24(sp)
 4ec:	01012a23          	sw	a6,20(sp)
 4f0:	01112823          	sw	a7,16(sp)
 4f4:	01c12623          	sw	t3,12(sp)
 4f8:	01d12423          	sw	t4,8(sp)
 4fc:	01e12223          	sw	t5,4(sp)
 500:	01f12023          	sw	t6,0(sp)
 504:	34102773          	csrr	a4,mepc
 508:	34071073          	csrw	mscratch,a4
 50c:	342027f3          	csrr	a5,mcause
 510:	0807c863          	bltz	a5,5a0 <__neorv32_rte_core+0xe0>
 514:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f1f8>
 518:	00300593          	li	a1,3
 51c:	0036f693          	andi	a3,a3,3
 520:	00270613          	addi	a2,a4,2
 524:	00b69463          	bne	a3,a1,52c <__neorv32_rte_core+0x6c>
 528:	00470613          	addi	a2,a4,4
 52c:	34161073          	csrw	mepc,a2
 530:	00b00713          	li	a4,11
 534:	04f77a63          	bgeu	a4,a5,588 <__neorv32_rte_core+0xc8>
 538:	73c00793          	li	a5,1852
 53c:	000780e7          	jalr	a5
 540:	03c12083          	lw	ra,60(sp)
 544:	03812283          	lw	t0,56(sp)
 548:	03412303          	lw	t1,52(sp)
 54c:	03012383          	lw	t2,48(sp)
 550:	02c12503          	lw	a0,44(sp)
 554:	02812583          	lw	a1,40(sp)
 558:	02412603          	lw	a2,36(sp)
 55c:	02012683          	lw	a3,32(sp)
 560:	01c12703          	lw	a4,28(sp)
 564:	01812783          	lw	a5,24(sp)
 568:	01412803          	lw	a6,20(sp)
 56c:	01012883          	lw	a7,16(sp)
 570:	00c12e03          	lw	t3,12(sp)
 574:	00812e83          	lw	t4,8(sp)
 578:	00412f03          	lw	t5,4(sp)
 57c:	00012f83          	lw	t6,0(sp)
 580:	04010113          	addi	sp,sp,64
 584:	30200073          	mret
 588:	00001737          	lui	a4,0x1
 58c:	00279793          	slli	a5,a5,0x2
 590:	b6070713          	addi	a4,a4,-1184 # b60 <__etext+0x4c>
 594:	00e787b3          	add	a5,a5,a4
 598:	0007a783          	lw	a5,0(a5)
 59c:	00078067          	jr	a5
 5a0:	80000737          	lui	a4,0x80000
 5a4:	ffd74713          	xori	a4,a4,-3
 5a8:	00e787b3          	add	a5,a5,a4
 5ac:	01c00713          	li	a4,28
 5b0:	f8f764e3          	bltu	a4,a5,538 <__neorv32_rte_core+0x78>
 5b4:	00001737          	lui	a4,0x1
 5b8:	00279793          	slli	a5,a5,0x2
 5bc:	b9070713          	addi	a4,a4,-1136 # b90 <__etext+0x7c>
 5c0:	00e787b3          	add	a5,a5,a4
 5c4:	0007a783          	lw	a5,0(a5)
 5c8:	00078067          	jr	a5
 5cc:	800007b7          	lui	a5,0x80000
 5d0:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 5d4:	f69ff06f          	j	53c <__neorv32_rte_core+0x7c>
 5d8:	800007b7          	lui	a5,0x80000
 5dc:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 5e0:	f5dff06f          	j	53c <__neorv32_rte_core+0x7c>
 5e4:	800007b7          	lui	a5,0x80000
 5e8:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 5ec:	f51ff06f          	j	53c <__neorv32_rte_core+0x7c>
 5f0:	800007b7          	lui	a5,0x80000
 5f4:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 5f8:	f45ff06f          	j	53c <__neorv32_rte_core+0x7c>
 5fc:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 600:	f3dff06f          	j	53c <__neorv32_rte_core+0x7c>
 604:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 608:	f35ff06f          	j	53c <__neorv32_rte_core+0x7c>
 60c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 610:	f2dff06f          	j	53c <__neorv32_rte_core+0x7c>
 614:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 618:	f25ff06f          	j	53c <__neorv32_rte_core+0x7c>
 61c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 620:	f1dff06f          	j	53c <__neorv32_rte_core+0x7c>
 624:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 628:	f15ff06f          	j	53c <__neorv32_rte_core+0x7c>
 62c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 630:	f0dff06f          	j	53c <__neorv32_rte_core+0x7c>
 634:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 638:	f05ff06f          	j	53c <__neorv32_rte_core+0x7c>
 63c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 640:	efdff06f          	j	53c <__neorv32_rte_core+0x7c>
 644:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 648:	ef5ff06f          	j	53c <__neorv32_rte_core+0x7c>
 64c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 650:	eedff06f          	j	53c <__neorv32_rte_core+0x7c>
 654:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 658:	ee5ff06f          	j	53c <__neorv32_rte_core+0x7c>
 65c:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 660:	eddff06f          	j	53c <__neorv32_rte_core+0x7c>
 664:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 668:	ed5ff06f          	j	53c <__neorv32_rte_core+0x7c>
 66c:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 670:	ecdff06f          	j	53c <__neorv32_rte_core+0x7c>
 674:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 678:	ec5ff06f          	j	53c <__neorv32_rte_core+0x7c>
 67c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 680:	ebdff06f          	j	53c <__neorv32_rte_core+0x7c>
 684:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 688:	eb5ff06f          	j	53c <__neorv32_rte_core+0x7c>
 68c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 690:	eadff06f          	j	53c <__neorv32_rte_core+0x7c>
 694:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 698:	ea5ff06f          	j	53c <__neorv32_rte_core+0x7c>
 69c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 6a0:	e9dff06f          	j	53c <__neorv32_rte_core+0x7c>
 6a4:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 6a8:	e95ff06f          	j	53c <__neorv32_rte_core+0x7c>
 6ac:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 6b0:	e8dff06f          	j	53c <__neorv32_rte_core+0x7c>
 6b4:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 6b8:	e85ff06f          	j	53c <__neorv32_rte_core+0x7c>
 6bc:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 6c0:	e7dff06f          	j	53c <__neorv32_rte_core+0x7c>
 6c4:	0000                	unimp
 6c6:	0000                	unimp
 6c8:	0000                	unimp
 6ca:	0000                	unimp

000006cc <__neorv32_rte_print_hex_word>:
 6cc:	fe010113          	addi	sp,sp,-32
 6d0:	01212823          	sw	s2,16(sp)
 6d4:	00050913          	mv	s2,a0
 6d8:	00001537          	lui	a0,0x1
 6dc:	00912a23          	sw	s1,20(sp)
 6e0:	c0450513          	addi	a0,a0,-1020 # c04 <__etext+0xf0>
 6e4:	000014b7          	lui	s1,0x1
 6e8:	00812c23          	sw	s0,24(sp)
 6ec:	01312623          	sw	s3,12(sp)
 6f0:	00112e23          	sw	ra,28(sp)
 6f4:	01c00413          	li	s0,28
 6f8:	be1ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 6fc:	df848493          	addi	s1,s1,-520 # df8 <hex_symbols.0>
 700:	ffc00993          	li	s3,-4
 704:	008957b3          	srl	a5,s2,s0
 708:	00f7f793          	andi	a5,a5,15
 70c:	00f487b3          	add	a5,s1,a5
 710:	0007c503          	lbu	a0,0(a5)
 714:	ffc40413          	addi	s0,s0,-4
 718:	ba9ff0ef          	jal	ra,2c0 <neorv32_uart0_putc>
 71c:	ff3414e3          	bne	s0,s3,704 <__neorv32_rte_print_hex_word+0x38>
 720:	01c12083          	lw	ra,28(sp)
 724:	01812403          	lw	s0,24(sp)
 728:	01412483          	lw	s1,20(sp)
 72c:	01012903          	lw	s2,16(sp)
 730:	00c12983          	lw	s3,12(sp)
 734:	02010113          	addi	sp,sp,32
 738:	00008067          	ret

0000073c <__neorv32_rte_debug_exc_handler>:
 73c:	ff010113          	addi	sp,sp,-16
 740:	00112623          	sw	ra,12(sp)
 744:	00812423          	sw	s0,8(sp)
 748:	00912223          	sw	s1,4(sp)
 74c:	ab9ff0ef          	jal	ra,204 <neorv32_uart0_available>
 750:	1c050863          	beqz	a0,920 <__neorv32_rte_debug_exc_handler+0x1e4>
 754:	00001537          	lui	a0,0x1
 758:	c0850513          	addi	a0,a0,-1016 # c08 <__etext+0xf4>
 75c:	b7dff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 760:	34202473          	csrr	s0,mcause
 764:	00900713          	li	a4,9
 768:	00f47793          	andi	a5,s0,15
 76c:	03078493          	addi	s1,a5,48
 770:	00f77463          	bgeu	a4,a5,778 <__neorv32_rte_debug_exc_handler+0x3c>
 774:	05778493          	addi	s1,a5,87
 778:	00b00793          	li	a5,11
 77c:	0087ee63          	bltu	a5,s0,798 <__neorv32_rte_debug_exc_handler+0x5c>
 780:	00001737          	lui	a4,0x1
 784:	00241793          	slli	a5,s0,0x2
 788:	dc870713          	addi	a4,a4,-568 # dc8 <__etext+0x2b4>
 78c:	00e787b3          	add	a5,a5,a4
 790:	0007a783          	lw	a5,0(a5)
 794:	00078067          	jr	a5
 798:	800007b7          	lui	a5,0x80000
 79c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 7a0:	14e40e63          	beq	s0,a4,8fc <__neorv32_rte_debug_exc_handler+0x1c0>
 7a4:	02876a63          	bltu	a4,s0,7d8 <__neorv32_rte_debug_exc_handler+0x9c>
 7a8:	00378713          	addi	a4,a5,3
 7ac:	12e40c63          	beq	s0,a4,8e4 <__neorv32_rte_debug_exc_handler+0x1a8>
 7b0:	00778793          	addi	a5,a5,7
 7b4:	12f40e63          	beq	s0,a5,8f0 <__neorv32_rte_debug_exc_handler+0x1b4>
 7b8:	00001537          	lui	a0,0x1
 7bc:	d6850513          	addi	a0,a0,-664 # d68 <__etext+0x254>
 7c0:	b19ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 7c4:	00040513          	mv	a0,s0
 7c8:	f05ff0ef          	jal	ra,6cc <__neorv32_rte_print_hex_word>
 7cc:	00100793          	li	a5,1
 7d0:	08f40c63          	beq	s0,a5,868 <__neorv32_rte_debug_exc_handler+0x12c>
 7d4:	0280006f          	j	7fc <__neorv32_rte_debug_exc_handler+0xc0>
 7d8:	ff07c793          	xori	a5,a5,-16
 7dc:	00f407b3          	add	a5,s0,a5
 7e0:	00f00713          	li	a4,15
 7e4:	fcf76ae3          	bltu	a4,a5,7b8 <__neorv32_rte_debug_exc_handler+0x7c>
 7e8:	00001537          	lui	a0,0x1
 7ec:	d5850513          	addi	a0,a0,-680 # d58 <__etext+0x244>
 7f0:	ae9ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 7f4:	00048513          	mv	a0,s1
 7f8:	ac9ff0ef          	jal	ra,2c0 <neorv32_uart0_putc>
 7fc:	ffd47413          	andi	s0,s0,-3
 800:	00500793          	li	a5,5
 804:	06f40263          	beq	s0,a5,868 <__neorv32_rte_debug_exc_handler+0x12c>
 808:	00001537          	lui	a0,0x1
 80c:	dac50513          	addi	a0,a0,-596 # dac <__etext+0x298>
 810:	ac9ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 814:	34002573          	csrr	a0,mscratch
 818:	eb5ff0ef          	jal	ra,6cc <__neorv32_rte_print_hex_word>
 81c:	00001537          	lui	a0,0x1
 820:	db450513          	addi	a0,a0,-588 # db4 <__etext+0x2a0>
 824:	ab5ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 828:	34302573          	csrr	a0,mtval
 82c:	ea1ff0ef          	jal	ra,6cc <__neorv32_rte_print_hex_word>
 830:	00812403          	lw	s0,8(sp)
 834:	00c12083          	lw	ra,12(sp)
 838:	00412483          	lw	s1,4(sp)
 83c:	00001537          	lui	a0,0x1
 840:	dc050513          	addi	a0,a0,-576 # dc0 <__etext+0x2ac>
 844:	01010113          	addi	sp,sp,16
 848:	a91ff06f          	j	2d8 <neorv32_uart0_print>
 84c:	00001537          	lui	a0,0x1
 850:	c1050513          	addi	a0,a0,-1008 # c10 <__etext+0xfc>
 854:	a85ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 858:	fb1ff06f          	j	808 <__neorv32_rte_debug_exc_handler+0xcc>
 85c:	00001537          	lui	a0,0x1
 860:	c3050513          	addi	a0,a0,-976 # c30 <__etext+0x11c>
 864:	a75ff0ef          	jal	ra,2d8 <neorv32_uart0_print>
 868:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 86c:	0a07d463          	bgez	a5,914 <__neorv32_rte_debug_exc_handler+0x1d8>
 870:	0017f793          	andi	a5,a5,1
 874:	08078a63          	beqz	a5,908 <__neorv32_rte_debug_exc_handler+0x1cc>
 878:	00001537          	lui	a0,0x1
 87c:	d8050513          	addi	a0,a0,-640 # d80 <__etext+0x26c>
 880:	fd5ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 884:	00001537          	lui	a0,0x1
 888:	c4c50513          	addi	a0,a0,-948 # c4c <__etext+0x138>
 88c:	fc9ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 890:	00001537          	lui	a0,0x1
 894:	c6050513          	addi	a0,a0,-928 # c60 <__etext+0x14c>
 898:	fbdff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 89c:	00001537          	lui	a0,0x1
 8a0:	c6c50513          	addi	a0,a0,-916 # c6c <__etext+0x158>
 8a4:	fb1ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 8a8:	00001537          	lui	a0,0x1
 8ac:	c8450513          	addi	a0,a0,-892 # c84 <__etext+0x170>
 8b0:	fb5ff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x128>
 8b4:	00001537          	lui	a0,0x1
 8b8:	c9850513          	addi	a0,a0,-872 # c98 <__etext+0x184>
 8bc:	f99ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 8c0:	00001537          	lui	a0,0x1
 8c4:	cb450513          	addi	a0,a0,-844 # cb4 <__etext+0x1a0>
 8c8:	f9dff06f          	j	864 <__neorv32_rte_debug_exc_handler+0x128>
 8cc:	00001537          	lui	a0,0x1
 8d0:	cc850513          	addi	a0,a0,-824 # cc8 <__etext+0x1b4>
 8d4:	f81ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 8d8:	00001537          	lui	a0,0x1
 8dc:	ce850513          	addi	a0,a0,-792 # ce8 <__etext+0x1d4>
 8e0:	f75ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 8e4:	00001537          	lui	a0,0x1
 8e8:	d0850513          	addi	a0,a0,-760 # d08 <__etext+0x1f4>
 8ec:	f69ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 8f0:	00001537          	lui	a0,0x1
 8f4:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x210>
 8f8:	f5dff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 8fc:	00001537          	lui	a0,0x1
 900:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0x228>
 904:	f51ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 908:	00001537          	lui	a0,0x1
 90c:	d9050513          	addi	a0,a0,-624 # d90 <__etext+0x27c>
 910:	f45ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 914:	00001537          	lui	a0,0x1
 918:	da050513          	addi	a0,a0,-608 # da0 <__etext+0x28c>
 91c:	f39ff06f          	j	854 <__neorv32_rte_debug_exc_handler+0x118>
 920:	00c12083          	lw	ra,12(sp)
 924:	00812403          	lw	s0,8(sp)
 928:	00412483          	lw	s1,4(sp)
 92c:	01010113          	addi	sp,sp,16
 930:	00008067          	ret

00000934 <neorv32_rte_exception_uninstall>:
 934:	01f00793          	li	a5,31
 938:	02a7e263          	bltu	a5,a0,95c <neorv32_rte_exception_uninstall+0x28>
 93c:	800007b7          	lui	a5,0x80000
 940:	00078793          	mv	a5,a5
 944:	00251513          	slli	a0,a0,0x2
 948:	00a78533          	add	a0,a5,a0
 94c:	73c00793          	li	a5,1852
 950:	00f52023          	sw	a5,0(a0)
 954:	00000513          	li	a0,0
 958:	00008067          	ret
 95c:	00100513          	li	a0,1
 960:	00008067          	ret

00000964 <neorv32_rte_setup>:
 964:	ff010113          	addi	sp,sp,-16
 968:	00112623          	sw	ra,12(sp)
 96c:	00812423          	sw	s0,8(sp)
 970:	00912223          	sw	s1,4(sp)
 974:	4c000793          	li	a5,1216
 978:	30579073          	csrw	mtvec,a5
 97c:	00000413          	li	s0,0
 980:	01d00493          	li	s1,29
 984:	00040513          	mv	a0,s0
 988:	00140413          	addi	s0,s0,1
 98c:	0ff47413          	andi	s0,s0,255
 990:	fa5ff0ef          	jal	ra,934 <neorv32_rte_exception_uninstall>
 994:	fe9418e3          	bne	s0,s1,984 <neorv32_rte_setup+0x20>
 998:	00c12083          	lw	ra,12(sp)
 99c:	00812403          	lw	s0,8(sp)
 9a0:	00412483          	lw	s1,4(sp)
 9a4:	01010113          	addi	sp,sp,16
 9a8:	00008067          	ret

000009ac <__mulsi3>:
 9ac:	00050613          	mv	a2,a0
 9b0:	00000513          	li	a0,0
 9b4:	0015f693          	andi	a3,a1,1
 9b8:	00068463          	beqz	a3,9c0 <__mulsi3+0x14>
 9bc:	00c50533          	add	a0,a0,a2
 9c0:	0015d593          	srli	a1,a1,0x1
 9c4:	00161613          	slli	a2,a2,0x1
 9c8:	fe0596e3          	bnez	a1,9b4 <__mulsi3+0x8>
 9cc:	00008067          	ret

000009d0 <__muldi3>:
 9d0:	00050313          	mv	t1,a0
 9d4:	ff010113          	addi	sp,sp,-16
 9d8:	00060513          	mv	a0,a2
 9dc:	00068893          	mv	a7,a3
 9e0:	00112623          	sw	ra,12(sp)
 9e4:	00030613          	mv	a2,t1
 9e8:	00050693          	mv	a3,a0
 9ec:	00000713          	li	a4,0
 9f0:	00000793          	li	a5,0
 9f4:	00000813          	li	a6,0
 9f8:	0016fe13          	andi	t3,a3,1
 9fc:	00171e93          	slli	t4,a4,0x1
 a00:	000e0c63          	beqz	t3,a18 <__muldi3+0x48>
 a04:	01060e33          	add	t3,a2,a6
 a08:	010e3833          	sltu	a6,t3,a6
 a0c:	00e787b3          	add	a5,a5,a4
 a10:	00f807b3          	add	a5,a6,a5
 a14:	000e0813          	mv	a6,t3
 a18:	01f65713          	srli	a4,a2,0x1f
 a1c:	0016d693          	srli	a3,a3,0x1
 a20:	00eee733          	or	a4,t4,a4
 a24:	00161613          	slli	a2,a2,0x1
 a28:	fc0698e3          	bnez	a3,9f8 <__muldi3+0x28>
 a2c:	00058663          	beqz	a1,a38 <__muldi3+0x68>
 a30:	f7dff0ef          	jal	ra,9ac <__mulsi3>
 a34:	00a787b3          	add	a5,a5,a0
 a38:	00088a63          	beqz	a7,a4c <__muldi3+0x7c>
 a3c:	00030513          	mv	a0,t1
 a40:	00088593          	mv	a1,a7
 a44:	f69ff0ef          	jal	ra,9ac <__mulsi3>
 a48:	00f507b3          	add	a5,a0,a5
 a4c:	00c12083          	lw	ra,12(sp)
 a50:	00080513          	mv	a0,a6
 a54:	00078593          	mv	a1,a5
 a58:	01010113          	addi	sp,sp,16
 a5c:	00008067          	ret

00000a60 <__divsi3>:
 a60:	06054063          	bltz	a0,ac0 <__umodsi3+0x10>
 a64:	0605c663          	bltz	a1,ad0 <__umodsi3+0x20>

00000a68 <__udivsi3>:
 a68:	00058613          	mv	a2,a1
 a6c:	00050593          	mv	a1,a0
 a70:	fff00513          	li	a0,-1
 a74:	02060c63          	beqz	a2,aac <__udivsi3+0x44>
 a78:	00100693          	li	a3,1
 a7c:	00b67a63          	bgeu	a2,a1,a90 <__udivsi3+0x28>
 a80:	00c05863          	blez	a2,a90 <__udivsi3+0x28>
 a84:	00161613          	slli	a2,a2,0x1
 a88:	00169693          	slli	a3,a3,0x1
 a8c:	feb66ae3          	bltu	a2,a1,a80 <__udivsi3+0x18>
 a90:	00000513          	li	a0,0
 a94:	00c5e663          	bltu	a1,a2,aa0 <__udivsi3+0x38>
 a98:	40c585b3          	sub	a1,a1,a2
 a9c:	00d56533          	or	a0,a0,a3
 aa0:	0016d693          	srli	a3,a3,0x1
 aa4:	00165613          	srli	a2,a2,0x1
 aa8:	fe0696e3          	bnez	a3,a94 <__udivsi3+0x2c>
 aac:	00008067          	ret

00000ab0 <__umodsi3>:
 ab0:	00008293          	mv	t0,ra
 ab4:	fb5ff0ef          	jal	ra,a68 <__udivsi3>
 ab8:	00058513          	mv	a0,a1
 abc:	00028067          	jr	t0
 ac0:	40a00533          	neg	a0,a0
 ac4:	00b04863          	bgtz	a1,ad4 <__umodsi3+0x24>
 ac8:	40b005b3          	neg	a1,a1
 acc:	f9dff06f          	j	a68 <__udivsi3>
 ad0:	40b005b3          	neg	a1,a1
 ad4:	00008293          	mv	t0,ra
 ad8:	f91ff0ef          	jal	ra,a68 <__udivsi3>
 adc:	40a00533          	neg	a0,a0
 ae0:	00028067          	jr	t0

00000ae4 <__modsi3>:
 ae4:	00008293          	mv	t0,ra
 ae8:	0005ca63          	bltz	a1,afc <__modsi3+0x18>
 aec:	00054c63          	bltz	a0,b04 <__modsi3+0x20>
 af0:	f79ff0ef          	jal	ra,a68 <__udivsi3>
 af4:	00058513          	mv	a0,a1
 af8:	00028067          	jr	t0
 afc:	40b005b3          	neg	a1,a1
 b00:	fe0558e3          	bgez	a0,af0 <__modsi3+0xc>
 b04:	40a00533          	neg	a0,a0
 b08:	f61ff0ef          	jal	ra,a68 <__udivsi3>
 b0c:	40b00533          	neg	a0,a1
 b10:	00028067          	jr	t0
