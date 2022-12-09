
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
  c4:	f4858593          	addi	a1,a1,-184 # 80000008 <__ctr0_io_space_begin+0x80000208>
  c8:	88418613          	addi	a2,gp,-1916 # 80000084 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	f2458593          	addi	a1,a1,-220 # 1000 <__crt0_copy_data_src_begin>
  e4:	80000617          	auipc	a2,0x80000
  e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
  ec:	80000697          	auipc	a3,0x80000
  f0:	f1c68693          	addi	a3,a3,-228 # 80000008 <__ctr0_io_space_begin+0x80000208>

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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3b00>
 194:	00112623          	sw	ra,12(sp)
 198:	270000ef          	jal	ra,408 <neorv32_uart0_setup>
 19c:	388000ef          	jal	ra,524 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	185000ef          	jal	ra,b28 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	d3c50513          	addi	a0,a0,-708 # d3c <__etext+0x64>
 1b0:	31c000ef          	jal	ra,4cc <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <control_teclado>
 1b8:	00001537          	lui	a0,0x1
 1bc:	d1850513          	addi	a0,a0,-744 # d18 <__etext+0x40>
 1c0:	30c000ef          	jal	ra,4cc <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <control_teclado>:
 1d4:	fc010113          	addi	sp,sp,-64
 1d8:	02912a23          	sw	s1,52(sp)
 1dc:	800004b7          	lui	s1,0x80000
 1e0:	03212823          	sw	s2,48(sp)
 1e4:	03312623          	sw	s3,44(sp)
 1e8:	03412423          	sw	s4,40(sp)
 1ec:	03512223          	sw	s5,36(sp)
 1f0:	03612023          	sw	s6,32(sp)
 1f4:	01712e23          	sw	s7,28(sp)
 1f8:	01812c23          	sw	s8,24(sp)
 1fc:	02112e23          	sw	ra,60(sp)
 200:	02812c23          	sw	s0,56(sp)
 204:	01912a23          	sw	s9,20(sp)
 208:	01a12823          	sw	s10,16(sp)
 20c:	01b12623          	sw	s11,12(sp)
 210:	00000993          	li	s3,0
 214:	00448493          	addi	s1,s1,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
 218:	fff00b93          	li	s7,-1
 21c:	80000a37          	lui	s4,0x80000
 220:	80000ab7          	lui	s5,0x80000
 224:	80000b37          	lui	s6,0x80000
 228:	00100913          	li	s2,1
 22c:	00001c37          	lui	s8,0x1
 230:	0174a023          	sw	s7,0(s1)
 234:	017a2023          	sw	s7,0(s4) # 80000000 <__ctr0_io_space_begin+0x80000200>
 238:	000aa423          	sw	zero,8(s5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 23c:	000a0c93          	mv	s9,s4
 240:	008a8d13          	addi	s10,s5,8
 244:	00300413          	li	s0,3
 248:	00000593          	li	a1,0
 24c:	00f00513          	li	a0,15
 250:	340000ef          	jal	ra,590 <neorv32_gpio_port_set>
 254:	000d2503          	lw	a0,0(s10)
 258:	00cb0d93          	addi	s11,s6,12 # 8000000c <__ctr0_io_space_begin+0x8000020c>
 25c:	2d8000ef          	jal	ra,534 <neorv32_gpio_pin_clr>
 260:	00500513          	li	a0,5
 264:	368000ef          	jal	ra,5cc <neorv32_cpu_delay_ms>
 268:	000d2503          	lw	a0,0(s10)
 26c:	2fc000ef          	jal	ra,568 <neorv32_gpio_pin_get>
 270:	000b2623          	sw	zero,12(s6)
 274:	000da503          	lw	a0,0(s11)
 278:	04a45663          	bge	s0,a0,2c4 <control_teclado+0xf0>
 27c:	000d2783          	lw	a5,0(s10)
 280:	00178793          	addi	a5,a5,1
 284:	00fd2023          	sw	a5,0(s10)
 288:	fcf450e3          	bge	s0,a5,248 <control_teclado+0x74>
 28c:	0004a703          	lw	a4,0(s1)
 290:	00200793          	li	a5,2
 294:	0ef70c63          	beq	a4,a5,38c <control_teclado+0x1b8>
 298:	04e7ce63          	blt	a5,a4,2f4 <control_teclado+0x120>
 29c:	06070e63          	beqz	a4,318 <control_teclado+0x144>
 2a0:	f92718e3          	bne	a4,s2,230 <control_teclado+0x5c>
 2a4:	000ca703          	lw	a4,0(s9)
 2a8:	0cf70c63          	beq	a4,a5,380 <control_teclado+0x1ac>
 2ac:	0ae7cc63          	blt	a5,a4,364 <control_teclado+0x190>
 2b0:	0c070263          	beqz	a4,374 <control_teclado+0x1a0>
 2b4:	f7271ee3          	bne	a4,s2,230 <control_teclado+0x5c>
 2b8:	00001537          	lui	a0,0x1
 2bc:	cec50513          	addi	a0,a0,-788 # cec <__etext+0x14>
 2c0:	0900006f          	j	350 <control_teclado+0x17c>
 2c4:	2a4000ef          	jal	ra,568 <neorv32_gpio_pin_get>
 2c8:	00051e63          	bnez	a0,2e4 <control_teclado+0x110>
 2cc:	00099c63          	bnez	s3,2e4 <control_teclado+0x110>
 2d0:	000da783          	lw	a5,0(s11)
 2d4:	00100993          	li	s3,1
 2d8:	00f4a023          	sw	a5,0(s1)
 2dc:	000d2783          	lw	a5,0(s10)
 2e0:	00fca023          	sw	a5,0(s9)
 2e4:	000da783          	lw	a5,0(s11)
 2e8:	00178793          	addi	a5,a5,1
 2ec:	00fda023          	sw	a5,0(s11)
 2f0:	f85ff06f          	j	274 <control_teclado+0xa0>
 2f4:	f2871ee3          	bne	a4,s0,230 <control_teclado+0x5c>
 2f8:	000ca703          	lw	a4,0(s9)
 2fc:	0ef70863          	beq	a4,a5,3ec <control_teclado+0x218>
 300:	0ce7c863          	blt	a5,a4,3d0 <control_teclado+0x1fc>
 304:	0c070e63          	beqz	a4,3e0 <control_teclado+0x20c>
 308:	f32714e3          	bne	a4,s2,230 <control_teclado+0x5c>
 30c:	00001537          	lui	a0,0x1
 310:	d0c50513          	addi	a0,a0,-756 # d0c <__etext+0x34>
 314:	03c0006f          	j	350 <control_teclado+0x17c>
 318:	000ca703          	lw	a4,0(s9)
 31c:	02f70e63          	beq	a4,a5,358 <control_teclado+0x184>
 320:	00e7cc63          	blt	a5,a4,338 <control_teclado+0x164>
 324:	02070263          	beqz	a4,348 <control_teclado+0x174>
 328:	f12714e3          	bne	a4,s2,230 <control_teclado+0x5c>
 32c:	00001537          	lui	a0,0x1
 330:	cdc50513          	addi	a0,a0,-804 # cdc <__etext+0x4>
 334:	01c0006f          	j	350 <control_teclado+0x17c>
 338:	ee871ce3          	bne	a4,s0,230 <control_teclado+0x5c>
 33c:	00001537          	lui	a0,0x1
 340:	ce450513          	addi	a0,a0,-796 # ce4 <__etext+0xc>
 344:	00c0006f          	j	350 <control_teclado+0x17c>
 348:	00001537          	lui	a0,0x1
 34c:	cd850513          	addi	a0,a0,-808 # cd8 <__etext>
 350:	17c000ef          	jal	ra,4cc <neorv32_uart0_print>
 354:	eddff06f          	j	230 <control_teclado+0x5c>
 358:	00001537          	lui	a0,0x1
 35c:	ce050513          	addi	a0,a0,-800 # ce0 <__etext+0x8>
 360:	ff1ff06f          	j	350 <control_teclado+0x17c>
 364:	ec8716e3          	bne	a4,s0,230 <control_teclado+0x5c>
 368:	00001537          	lui	a0,0x1
 36c:	cf450513          	addi	a0,a0,-780 # cf4 <__etext+0x1c>
 370:	fe1ff06f          	j	350 <control_teclado+0x17c>
 374:	00001537          	lui	a0,0x1
 378:	ce850513          	addi	a0,a0,-792 # ce8 <__etext+0x10>
 37c:	fd5ff06f          	j	350 <control_teclado+0x17c>
 380:	00001537          	lui	a0,0x1
 384:	cf050513          	addi	a0,a0,-784 # cf0 <__etext+0x18>
 388:	fc9ff06f          	j	350 <control_teclado+0x17c>
 38c:	000ca783          	lw	a5,0(s9)
 390:	02e78c63          	beq	a5,a4,3c8 <control_teclado+0x1f4>
 394:	00f74c63          	blt	a4,a5,3ac <control_teclado+0x1d8>
 398:	02078263          	beqz	a5,3bc <control_teclado+0x1e8>
 39c:	e9279ae3          	bne	a5,s2,230 <control_teclado+0x5c>
 3a0:	00001537          	lui	a0,0x1
 3a4:	cfc50513          	addi	a0,a0,-772 # cfc <__etext+0x24>
 3a8:	fa9ff06f          	j	350 <control_teclado+0x17c>
 3ac:	e88792e3          	bne	a5,s0,230 <control_teclado+0x5c>
 3b0:	00001537          	lui	a0,0x1
 3b4:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0x2c>
 3b8:	f99ff06f          	j	350 <control_teclado+0x17c>
 3bc:	00001537          	lui	a0,0x1
 3c0:	cf850513          	addi	a0,a0,-776 # cf8 <__etext+0x20>
 3c4:	f8dff06f          	j	350 <control_teclado+0x17c>
 3c8:	d00c0513          	addi	a0,s8,-768 # d00 <__etext+0x28>
 3cc:	f85ff06f          	j	350 <control_teclado+0x17c>
 3d0:	e68710e3          	bne	a4,s0,230 <control_teclado+0x5c>
 3d4:	00001537          	lui	a0,0x1
 3d8:	d1450513          	addi	a0,a0,-748 # d14 <__etext+0x3c>
 3dc:	f75ff06f          	j	350 <control_teclado+0x17c>
 3e0:	00001537          	lui	a0,0x1
 3e4:	d0850513          	addi	a0,a0,-760 # d08 <__etext+0x30>
 3e8:	f69ff06f          	j	350 <control_teclado+0x17c>
 3ec:	00001537          	lui	a0,0x1
 3f0:	d1050513          	addi	a0,a0,-752 # d10 <__etext+0x38>
 3f4:	f5dff06f          	j	350 <control_teclado+0x17c>

000003f8 <neorv32_uart0_available>:
 3f8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3fc:	01255513          	srli	a0,a0,0x12
 400:	00157513          	andi	a0,a0,1
 404:	00008067          	ret

00000408 <neorv32_uart0_setup>:
 408:	ff010113          	addi	sp,sp,-16
 40c:	00812423          	sw	s0,8(sp)
 410:	00912223          	sw	s1,4(sp)
 414:	00112623          	sw	ra,12(sp)
 418:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 41c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 420:	00058413          	mv	s0,a1
 424:	00151593          	slli	a1,a0,0x1
 428:	00078513          	mv	a0,a5
 42c:	00060493          	mv	s1,a2
 430:	7fc000ef          	jal	ra,c2c <__udivsi3>
 434:	01051513          	slli	a0,a0,0x10
 438:	000017b7          	lui	a5,0x1
 43c:	01055513          	srli	a0,a0,0x10
 440:	00000713          	li	a4,0
 444:	ffe78793          	addi	a5,a5,-2 # ffe <hex_symbols.0+0xe>
 448:	04a7e463          	bltu	a5,a0,490 <neorv32_uart0_setup+0x88>
 44c:	0034f793          	andi	a5,s1,3
 450:	00347413          	andi	s0,s0,3
 454:	fff50513          	addi	a0,a0,-1
 458:	01479793          	slli	a5,a5,0x14
 45c:	01641413          	slli	s0,s0,0x16
 460:	00f567b3          	or	a5,a0,a5
 464:	0087e7b3          	or	a5,a5,s0
 468:	01871713          	slli	a4,a4,0x18
 46c:	00c12083          	lw	ra,12(sp)
 470:	00812403          	lw	s0,8(sp)
 474:	00e7e7b3          	or	a5,a5,a4
 478:	10000737          	lui	a4,0x10000
 47c:	00e7e7b3          	or	a5,a5,a4
 480:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 484:	00412483          	lw	s1,4(sp)
 488:	01010113          	addi	sp,sp,16
 48c:	00008067          	ret
 490:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeffe>
 494:	0fd6f693          	andi	a3,a3,253
 498:	00069a63          	bnez	a3,4ac <neorv32_uart0_setup+0xa4>
 49c:	00355513          	srli	a0,a0,0x3
 4a0:	00170713          	addi	a4,a4,1
 4a4:	0ff77713          	andi	a4,a4,255
 4a8:	fa1ff06f          	j	448 <neorv32_uart0_setup+0x40>
 4ac:	00155513          	srli	a0,a0,0x1
 4b0:	ff1ff06f          	j	4a0 <neorv32_uart0_setup+0x98>

000004b4 <neorv32_uart0_putc>:
 4b4:	00040737          	lui	a4,0x40
 4b8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4bc:	00e7f7b3          	and	a5,a5,a4
 4c0:	fe079ce3          	bnez	a5,4b8 <neorv32_uart0_putc+0x4>
 4c4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4c8:	00008067          	ret

000004cc <neorv32_uart0_print>:
 4cc:	ff010113          	addi	sp,sp,-16
 4d0:	00812423          	sw	s0,8(sp)
 4d4:	01212023          	sw	s2,0(sp)
 4d8:	00112623          	sw	ra,12(sp)
 4dc:	00912223          	sw	s1,4(sp)
 4e0:	00050413          	mv	s0,a0
 4e4:	00a00913          	li	s2,10
 4e8:	00044483          	lbu	s1,0(s0)
 4ec:	00140413          	addi	s0,s0,1
 4f0:	00049e63          	bnez	s1,50c <neorv32_uart0_print+0x40>
 4f4:	00c12083          	lw	ra,12(sp)
 4f8:	00812403          	lw	s0,8(sp)
 4fc:	00412483          	lw	s1,4(sp)
 500:	00012903          	lw	s2,0(sp)
 504:	01010113          	addi	sp,sp,16
 508:	00008067          	ret
 50c:	01249663          	bne	s1,s2,518 <neorv32_uart0_print+0x4c>
 510:	00d00513          	li	a0,13
 514:	fa1ff0ef          	jal	ra,4b4 <neorv32_uart0_putc>
 518:	00048513          	mv	a0,s1
 51c:	f99ff0ef          	jal	ra,4b4 <neorv32_uart0_putc>
 520:	fc9ff06f          	j	4e8 <neorv32_uart0_print+0x1c>

00000524 <neorv32_gpio_available>:
 524:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 528:	01055513          	srli	a0,a0,0x10
 52c:	00157513          	andi	a0,a0,1
 530:	00008067          	ret

00000534 <neorv32_gpio_pin_clr>:
 534:	00100793          	li	a5,1
 538:	00a797b3          	sll	a5,a5,a0
 53c:	01f00713          	li	a4,31
 540:	fff7c793          	not	a5,a5
 544:	00a74a63          	blt	a4,a0,558 <neorv32_gpio_pin_clr+0x24>
 548:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 54c:	00f777b3          	and	a5,a4,a5
 550:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 554:	00008067          	ret
 558:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 55c:	00f777b3          	and	a5,a4,a5
 560:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 564:	00008067          	ret

00000568 <neorv32_gpio_pin_get>:
 568:	00050793          	mv	a5,a0
 56c:	01f00713          	li	a4,31
 570:	00100513          	li	a0,1
 574:	00f51533          	sll	a0,a0,a5
 578:	00f74863          	blt	a4,a5,588 <neorv32_gpio_pin_get+0x20>
 57c:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 580:	00a7f533          	and	a0,a5,a0
 584:	00008067          	ret
 588:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 58c:	ff5ff06f          	j	580 <neorv32_gpio_pin_get+0x18>

00000590 <neorv32_gpio_port_set>:
 590:	fc000793          	li	a5,-64
 594:	00a7a423          	sw	a0,8(a5)
 598:	00b7a623          	sw	a1,12(a5)
 59c:	00008067          	ret

000005a0 <neorv32_cpu_get_systime>:
 5a0:	ff010113          	addi	sp,sp,-16
 5a4:	c81026f3          	rdtimeh	a3
 5a8:	c0102773          	rdtime	a4
 5ac:	c81027f3          	rdtimeh	a5
 5b0:	fed79ae3          	bne	a5,a3,5a4 <neorv32_cpu_get_systime+0x4>
 5b4:	00e12023          	sw	a4,0(sp)
 5b8:	00f12223          	sw	a5,4(sp)
 5bc:	00012503          	lw	a0,0(sp)
 5c0:	00412583          	lw	a1,4(sp)
 5c4:	01010113          	addi	sp,sp,16
 5c8:	00008067          	ret

000005cc <neorv32_cpu_delay_ms>:
 5cc:	fd010113          	addi	sp,sp,-48
 5d0:	00a12623          	sw	a0,12(sp)
 5d4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 5d8:	3e800593          	li	a1,1000
 5dc:	02112623          	sw	ra,44(sp)
 5e0:	02812423          	sw	s0,40(sp)
 5e4:	02912223          	sw	s1,36(sp)
 5e8:	03212023          	sw	s2,32(sp)
 5ec:	01312e23          	sw	s3,28(sp)
 5f0:	63c000ef          	jal	ra,c2c <__udivsi3>
 5f4:	00c12603          	lw	a2,12(sp)
 5f8:	00000693          	li	a3,0
 5fc:	00000593          	li	a1,0
 600:	594000ef          	jal	ra,b94 <__muldi3>
 604:	00050413          	mv	s0,a0
 608:	00058993          	mv	s3,a1
 60c:	f95ff0ef          	jal	ra,5a0 <neorv32_cpu_get_systime>
 610:	00058913          	mv	s2,a1
 614:	00050493          	mv	s1,a0
 618:	f89ff0ef          	jal	ra,5a0 <neorv32_cpu_get_systime>
 61c:	00b96663          	bltu	s2,a1,628 <neorv32_cpu_delay_ms+0x5c>
 620:	05259263          	bne	a1,s2,664 <neorv32_cpu_delay_ms+0x98>
 624:	04a4f063          	bgeu	s1,a0,664 <neorv32_cpu_delay_ms+0x98>
 628:	008484b3          	add	s1,s1,s0
 62c:	0084b433          	sltu	s0,s1,s0
 630:	01390933          	add	s2,s2,s3
 634:	01240433          	add	s0,s0,s2
 638:	f69ff0ef          	jal	ra,5a0 <neorv32_cpu_get_systime>
 63c:	fe85eee3          	bltu	a1,s0,638 <neorv32_cpu_delay_ms+0x6c>
 640:	00b41463          	bne	s0,a1,648 <neorv32_cpu_delay_ms+0x7c>
 644:	fe956ae3          	bltu	a0,s1,638 <neorv32_cpu_delay_ms+0x6c>
 648:	02c12083          	lw	ra,44(sp)
 64c:	02812403          	lw	s0,40(sp)
 650:	02412483          	lw	s1,36(sp)
 654:	02012903          	lw	s2,32(sp)
 658:	01c12983          	lw	s3,28(sp)
 65c:	03010113          	addi	sp,sp,48
 660:	00008067          	ret
 664:	01c99913          	slli	s2,s3,0x1c
 668:	00445413          	srli	s0,s0,0x4
 66c:	00896433          	or	s0,s2,s0

00000670 <__neorv32_cpu_delay_ms_start>:
 670:	00040a63          	beqz	s0,684 <__neorv32_cpu_delay_ms_end>
 674:	00040863          	beqz	s0,684 <__neorv32_cpu_delay_ms_end>
 678:	fff40413          	addi	s0,s0,-1
 67c:	00000013          	nop
 680:	ff1ff06f          	j	670 <__neorv32_cpu_delay_ms_start>

00000684 <__neorv32_cpu_delay_ms_end>:
 684:	fc5ff06f          	j	648 <neorv32_cpu_delay_ms+0x7c>
 688:	0000                	unimp
 68a:	0000                	unimp
 68c:	0000                	unimp
 68e:	0000                	unimp

00000690 <__neorv32_rte_core>:
 690:	fc010113          	addi	sp,sp,-64
 694:	02112e23          	sw	ra,60(sp)
 698:	02512c23          	sw	t0,56(sp)
 69c:	02612a23          	sw	t1,52(sp)
 6a0:	02712823          	sw	t2,48(sp)
 6a4:	02a12623          	sw	a0,44(sp)
 6a8:	02b12423          	sw	a1,40(sp)
 6ac:	02c12223          	sw	a2,36(sp)
 6b0:	02d12023          	sw	a3,32(sp)
 6b4:	00e12e23          	sw	a4,28(sp)
 6b8:	00f12c23          	sw	a5,24(sp)
 6bc:	01012a23          	sw	a6,20(sp)
 6c0:	01112823          	sw	a7,16(sp)
 6c4:	01c12623          	sw	t3,12(sp)
 6c8:	01d12423          	sw	t4,8(sp)
 6cc:	01e12223          	sw	t5,4(sp)
 6d0:	01f12023          	sw	t6,0(sp)
 6d4:	34102773          	csrr	a4,mepc
 6d8:	34071073          	csrw	mscratch,a4
 6dc:	342027f3          	csrr	a5,mcause
 6e0:	0807ca63          	bltz	a5,774 <__neorv32_rte_core+0xe4>
 6e4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f000>
 6e8:	00300593          	li	a1,3
 6ec:	0036f693          	andi	a3,a3,3
 6f0:	00270613          	addi	a2,a4,2
 6f4:	00b69463          	bne	a3,a1,6fc <__neorv32_rte_core+0x6c>
 6f8:	00470613          	addi	a2,a4,4
 6fc:	34161073          	csrw	mepc,a2
 700:	00b00713          	li	a4,11
 704:	04f77c63          	bgeu	a4,a5,75c <__neorv32_rte_core+0xcc>
 708:	000017b7          	lui	a5,0x1
 70c:	90078793          	addi	a5,a5,-1792 # 900 <__neorv32_rte_debug_exc_handler>
 710:	000780e7          	jalr	a5
 714:	03c12083          	lw	ra,60(sp)
 718:	03812283          	lw	t0,56(sp)
 71c:	03412303          	lw	t1,52(sp)
 720:	03012383          	lw	t2,48(sp)
 724:	02c12503          	lw	a0,44(sp)
 728:	02812583          	lw	a1,40(sp)
 72c:	02412603          	lw	a2,36(sp)
 730:	02012683          	lw	a3,32(sp)
 734:	01c12703          	lw	a4,28(sp)
 738:	01812783          	lw	a5,24(sp)
 73c:	01412803          	lw	a6,20(sp)
 740:	01012883          	lw	a7,16(sp)
 744:	00c12e03          	lw	t3,12(sp)
 748:	00812e83          	lw	t4,8(sp)
 74c:	00412f03          	lw	t5,4(sp)
 750:	00012f83          	lw	t6,0(sp)
 754:	04010113          	addi	sp,sp,64
 758:	30200073          	mret
 75c:	00001737          	lui	a4,0x1
 760:	00279793          	slli	a5,a5,0x2
 764:	d5870713          	addi	a4,a4,-680 # d58 <__etext+0x80>
 768:	00e787b3          	add	a5,a5,a4
 76c:	0007a783          	lw	a5,0(a5)
 770:	00078067          	jr	a5
 774:	80000737          	lui	a4,0x80000
 778:	ffd74713          	xori	a4,a4,-3
 77c:	00e787b3          	add	a5,a5,a4
 780:	01c00713          	li	a4,28
 784:	f8f762e3          	bltu	a4,a5,708 <__neorv32_rte_core+0x78>
 788:	00001737          	lui	a4,0x1
 78c:	00279793          	slli	a5,a5,0x2
 790:	d8870713          	addi	a4,a4,-632 # d88 <__etext+0xb0>
 794:	00e787b3          	add	a5,a5,a4
 798:	0007a783          	lw	a5,0(a5)
 79c:	00078067          	jr	a5
 7a0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
 7a4:	f6dff06f          	j	710 <__neorv32_rte_core+0x80>
 7a8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
 7ac:	f65ff06f          	j	710 <__neorv32_rte_core+0x80>
 7b0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
 7b4:	f5dff06f          	j	710 <__neorv32_rte_core+0x80>
 7b8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
 7bc:	f55ff06f          	j	710 <__neorv32_rte_core+0x80>
 7c0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
 7c4:	f4dff06f          	j	710 <__neorv32_rte_core+0x80>
 7c8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
 7cc:	f45ff06f          	j	710 <__neorv32_rte_core+0x80>
 7d0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
 7d4:	f3dff06f          	j	710 <__neorv32_rte_core+0x80>
 7d8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
 7dc:	f35ff06f          	j	710 <__neorv32_rte_core+0x80>
 7e0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
 7e4:	f2dff06f          	j	710 <__neorv32_rte_core+0x80>
 7e8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
 7ec:	f25ff06f          	j	710 <__neorv32_rte_core+0x80>
 7f0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
 7f4:	f1dff06f          	j	710 <__neorv32_rte_core+0x80>
 7f8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
 7fc:	f15ff06f          	j	710 <__neorv32_rte_core+0x80>
 800:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
 804:	f0dff06f          	j	710 <__neorv32_rte_core+0x80>
 808:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
 80c:	f05ff06f          	j	710 <__neorv32_rte_core+0x80>
 810:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
 814:	efdff06f          	j	710 <__neorv32_rte_core+0x80>
 818:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
 81c:	ef5ff06f          	j	710 <__neorv32_rte_core+0x80>
 820:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
 824:	eedff06f          	j	710 <__neorv32_rte_core+0x80>
 828:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
 82c:	ee5ff06f          	j	710 <__neorv32_rte_core+0x80>
 830:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
 834:	eddff06f          	j	710 <__neorv32_rte_core+0x80>
 838:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
 83c:	ed5ff06f          	j	710 <__neorv32_rte_core+0x80>
 840:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
 844:	ecdff06f          	j	710 <__neorv32_rte_core+0x80>
 848:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
 84c:	ec5ff06f          	j	710 <__neorv32_rte_core+0x80>
 850:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
 854:	ebdff06f          	j	710 <__neorv32_rte_core+0x80>
 858:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
 85c:	eb5ff06f          	j	710 <__neorv32_rte_core+0x80>
 860:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
 864:	eadff06f          	j	710 <__neorv32_rte_core+0x80>
 868:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
 86c:	ea5ff06f          	j	710 <__neorv32_rte_core+0x80>
 870:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
 874:	e9dff06f          	j	710 <__neorv32_rte_core+0x80>
 878:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
 87c:	e95ff06f          	j	710 <__neorv32_rte_core+0x80>
 880:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
 884:	e8dff06f          	j	710 <__neorv32_rte_core+0x80>
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
 8a4:	dfc50513          	addi	a0,a0,-516 # dfc <__etext+0x124>
 8a8:	000014b7          	lui	s1,0x1
 8ac:	00812c23          	sw	s0,24(sp)
 8b0:	01312623          	sw	s3,12(sp)
 8b4:	00112e23          	sw	ra,28(sp)
 8b8:	01c00413          	li	s0,28
 8bc:	c11ff0ef          	jal	ra,4cc <neorv32_uart0_print>
 8c0:	ff048493          	addi	s1,s1,-16 # ff0 <hex_symbols.0>
 8c4:	ffc00993          	li	s3,-4
 8c8:	008957b3          	srl	a5,s2,s0
 8cc:	00f7f793          	andi	a5,a5,15
 8d0:	00f487b3          	add	a5,s1,a5
 8d4:	0007c503          	lbu	a0,0(a5)
 8d8:	ffc40413          	addi	s0,s0,-4
 8dc:	bd9ff0ef          	jal	ra,4b4 <neorv32_uart0_putc>
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
 910:	ae9ff0ef          	jal	ra,3f8 <neorv32_uart0_available>
 914:	1c050863          	beqz	a0,ae4 <__neorv32_rte_debug_exc_handler+0x1e4>
 918:	00001537          	lui	a0,0x1
 91c:	e0050513          	addi	a0,a0,-512 # e00 <__etext+0x128>
 920:	badff0ef          	jal	ra,4cc <neorv32_uart0_print>
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
 94c:	fc070713          	addi	a4,a4,-64 # fc0 <__etext+0x2e8>
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
 980:	f6050513          	addi	a0,a0,-160 # f60 <__etext+0x288>
 984:	b49ff0ef          	jal	ra,4cc <neorv32_uart0_print>
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
 9b0:	f5050513          	addi	a0,a0,-176 # f50 <__etext+0x278>
 9b4:	b19ff0ef          	jal	ra,4cc <neorv32_uart0_print>
 9b8:	00048513          	mv	a0,s1
 9bc:	af9ff0ef          	jal	ra,4b4 <neorv32_uart0_putc>
 9c0:	ffd47413          	andi	s0,s0,-3
 9c4:	00500793          	li	a5,5
 9c8:	06f40263          	beq	s0,a5,a2c <__neorv32_rte_debug_exc_handler+0x12c>
 9cc:	00001537          	lui	a0,0x1
 9d0:	fa450513          	addi	a0,a0,-92 # fa4 <__etext+0x2cc>
 9d4:	af9ff0ef          	jal	ra,4cc <neorv32_uart0_print>
 9d8:	34002573          	csrr	a0,mscratch
 9dc:	eb5ff0ef          	jal	ra,890 <__neorv32_rte_print_hex_word>
 9e0:	00001537          	lui	a0,0x1
 9e4:	fac50513          	addi	a0,a0,-84 # fac <__etext+0x2d4>
 9e8:	ae5ff0ef          	jal	ra,4cc <neorv32_uart0_print>
 9ec:	34302573          	csrr	a0,mtval
 9f0:	ea1ff0ef          	jal	ra,890 <__neorv32_rte_print_hex_word>
 9f4:	00812403          	lw	s0,8(sp)
 9f8:	00c12083          	lw	ra,12(sp)
 9fc:	00412483          	lw	s1,4(sp)
 a00:	00001537          	lui	a0,0x1
 a04:	fb850513          	addi	a0,a0,-72 # fb8 <__etext+0x2e0>
 a08:	01010113          	addi	sp,sp,16
 a0c:	ac1ff06f          	j	4cc <neorv32_uart0_print>
 a10:	00001537          	lui	a0,0x1
 a14:	e0850513          	addi	a0,a0,-504 # e08 <__etext+0x130>
 a18:	ab5ff0ef          	jal	ra,4cc <neorv32_uart0_print>
 a1c:	fb1ff06f          	j	9cc <__neorv32_rte_debug_exc_handler+0xcc>
 a20:	00001537          	lui	a0,0x1
 a24:	e2850513          	addi	a0,a0,-472 # e28 <__etext+0x150>
 a28:	aa5ff0ef          	jal	ra,4cc <neorv32_uart0_print>
 a2c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 a30:	0a07d463          	bgez	a5,ad8 <__neorv32_rte_debug_exc_handler+0x1d8>
 a34:	0017f793          	andi	a5,a5,1
 a38:	08078a63          	beqz	a5,acc <__neorv32_rte_debug_exc_handler+0x1cc>
 a3c:	00001537          	lui	a0,0x1
 a40:	f7850513          	addi	a0,a0,-136 # f78 <__etext+0x2a0>
 a44:	fd5ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a48:	00001537          	lui	a0,0x1
 a4c:	e4450513          	addi	a0,a0,-444 # e44 <__etext+0x16c>
 a50:	fc9ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a54:	00001537          	lui	a0,0x1
 a58:	e5850513          	addi	a0,a0,-424 # e58 <__etext+0x180>
 a5c:	fbdff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a60:	00001537          	lui	a0,0x1
 a64:	e6450513          	addi	a0,a0,-412 # e64 <__etext+0x18c>
 a68:	fb1ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a6c:	00001537          	lui	a0,0x1
 a70:	e7c50513          	addi	a0,a0,-388 # e7c <__etext+0x1a4>
 a74:	fb5ff06f          	j	a28 <__neorv32_rte_debug_exc_handler+0x128>
 a78:	00001537          	lui	a0,0x1
 a7c:	e9050513          	addi	a0,a0,-368 # e90 <__etext+0x1b8>
 a80:	f99ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a84:	00001537          	lui	a0,0x1
 a88:	eac50513          	addi	a0,a0,-340 # eac <__etext+0x1d4>
 a8c:	f9dff06f          	j	a28 <__neorv32_rte_debug_exc_handler+0x128>
 a90:	00001537          	lui	a0,0x1
 a94:	ec050513          	addi	a0,a0,-320 # ec0 <__etext+0x1e8>
 a98:	f81ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 a9c:	00001537          	lui	a0,0x1
 aa0:	ee050513          	addi	a0,a0,-288 # ee0 <__etext+0x208>
 aa4:	f75ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 aa8:	00001537          	lui	a0,0x1
 aac:	f0050513          	addi	a0,a0,-256 # f00 <__etext+0x228>
 ab0:	f69ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ab4:	00001537          	lui	a0,0x1
 ab8:	f1c50513          	addi	a0,a0,-228 # f1c <__etext+0x244>
 abc:	f5dff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ac0:	00001537          	lui	a0,0x1
 ac4:	f3450513          	addi	a0,a0,-204 # f34 <__etext+0x25c>
 ac8:	f51ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 acc:	00001537          	lui	a0,0x1
 ad0:	f8850513          	addi	a0,a0,-120 # f88 <__etext+0x2b0>
 ad4:	f45ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ad8:	00001537          	lui	a0,0x1
 adc:	f9850513          	addi	a0,a0,-104 # f98 <__etext+0x2c0>
 ae0:	f39ff06f          	j	a18 <__neorv32_rte_debug_exc_handler+0x118>
 ae4:	00c12083          	lw	ra,12(sp)
 ae8:	00812403          	lw	s0,8(sp)
 aec:	00412483          	lw	s1,4(sp)
 af0:	01010113          	addi	sp,sp,16
 af4:	00008067          	ret

00000af8 <neorv32_rte_exception_uninstall>:
 af8:	01f00793          	li	a5,31
 afc:	02a7e263          	bltu	a5,a0,b20 <neorv32_rte_exception_uninstall+0x28>
 b00:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
 b04:	00251513          	slli	a0,a0,0x2
 b08:	00a78533          	add	a0,a5,a0
 b0c:	000017b7          	lui	a5,0x1
 b10:	90078793          	addi	a5,a5,-1792 # 900 <__neorv32_rte_debug_exc_handler>
 b14:	00f52023          	sw	a5,0(a0)
 b18:	00000513          	li	a0,0
 b1c:	00008067          	ret
 b20:	00100513          	li	a0,1
 b24:	00008067          	ret

00000b28 <neorv32_rte_setup>:
 b28:	ff010113          	addi	sp,sp,-16
 b2c:	00112623          	sw	ra,12(sp)
 b30:	00812423          	sw	s0,8(sp)
 b34:	00912223          	sw	s1,4(sp)
 b38:	69000793          	li	a5,1680
 b3c:	30579073          	csrw	mtvec,a5
 b40:	00000413          	li	s0,0
 b44:	01d00493          	li	s1,29
 b48:	00040513          	mv	a0,s0
 b4c:	00140413          	addi	s0,s0,1
 b50:	0ff47413          	andi	s0,s0,255
 b54:	fa5ff0ef          	jal	ra,af8 <neorv32_rte_exception_uninstall>
 b58:	fe9418e3          	bne	s0,s1,b48 <neorv32_rte_setup+0x20>
 b5c:	00c12083          	lw	ra,12(sp)
 b60:	00812403          	lw	s0,8(sp)
 b64:	00412483          	lw	s1,4(sp)
 b68:	01010113          	addi	sp,sp,16
 b6c:	00008067          	ret

00000b70 <__mulsi3>:
 b70:	00050613          	mv	a2,a0
 b74:	00000513          	li	a0,0
 b78:	0015f693          	andi	a3,a1,1
 b7c:	00068463          	beqz	a3,b84 <__mulsi3+0x14>
 b80:	00c50533          	add	a0,a0,a2
 b84:	0015d593          	srli	a1,a1,0x1
 b88:	00161613          	slli	a2,a2,0x1
 b8c:	fe0596e3          	bnez	a1,b78 <__mulsi3+0x8>
 b90:	00008067          	ret

00000b94 <__muldi3>:
 b94:	00050313          	mv	t1,a0
 b98:	ff010113          	addi	sp,sp,-16
 b9c:	00060513          	mv	a0,a2
 ba0:	00068893          	mv	a7,a3
 ba4:	00112623          	sw	ra,12(sp)
 ba8:	00030613          	mv	a2,t1
 bac:	00050693          	mv	a3,a0
 bb0:	00000713          	li	a4,0
 bb4:	00000793          	li	a5,0
 bb8:	00000813          	li	a6,0
 bbc:	0016fe13          	andi	t3,a3,1
 bc0:	00171e93          	slli	t4,a4,0x1
 bc4:	000e0c63          	beqz	t3,bdc <__muldi3+0x48>
 bc8:	01060e33          	add	t3,a2,a6
 bcc:	010e3833          	sltu	a6,t3,a6
 bd0:	00e787b3          	add	a5,a5,a4
 bd4:	00f807b3          	add	a5,a6,a5
 bd8:	000e0813          	mv	a6,t3
 bdc:	01f65713          	srli	a4,a2,0x1f
 be0:	0016d693          	srli	a3,a3,0x1
 be4:	00eee733          	or	a4,t4,a4
 be8:	00161613          	slli	a2,a2,0x1
 bec:	fc0698e3          	bnez	a3,bbc <__muldi3+0x28>
 bf0:	00058663          	beqz	a1,bfc <__muldi3+0x68>
 bf4:	f7dff0ef          	jal	ra,b70 <__mulsi3>
 bf8:	00a787b3          	add	a5,a5,a0
 bfc:	00088a63          	beqz	a7,c10 <__muldi3+0x7c>
 c00:	00030513          	mv	a0,t1
 c04:	00088593          	mv	a1,a7
 c08:	f69ff0ef          	jal	ra,b70 <__mulsi3>
 c0c:	00f507b3          	add	a5,a0,a5
 c10:	00c12083          	lw	ra,12(sp)
 c14:	00080513          	mv	a0,a6
 c18:	00078593          	mv	a1,a5
 c1c:	01010113          	addi	sp,sp,16
 c20:	00008067          	ret

00000c24 <__divsi3>:
 c24:	06054063          	bltz	a0,c84 <__umodsi3+0x10>
 c28:	0605c663          	bltz	a1,c94 <__umodsi3+0x20>

00000c2c <__udivsi3>:
 c2c:	00058613          	mv	a2,a1
 c30:	00050593          	mv	a1,a0
 c34:	fff00513          	li	a0,-1
 c38:	02060c63          	beqz	a2,c70 <__udivsi3+0x44>
 c3c:	00100693          	li	a3,1
 c40:	00b67a63          	bgeu	a2,a1,c54 <__udivsi3+0x28>
 c44:	00c05863          	blez	a2,c54 <__udivsi3+0x28>
 c48:	00161613          	slli	a2,a2,0x1
 c4c:	00169693          	slli	a3,a3,0x1
 c50:	feb66ae3          	bltu	a2,a1,c44 <__udivsi3+0x18>
 c54:	00000513          	li	a0,0
 c58:	00c5e663          	bltu	a1,a2,c64 <__udivsi3+0x38>
 c5c:	40c585b3          	sub	a1,a1,a2
 c60:	00d56533          	or	a0,a0,a3
 c64:	0016d693          	srli	a3,a3,0x1
 c68:	00165613          	srli	a2,a2,0x1
 c6c:	fe0696e3          	bnez	a3,c58 <__udivsi3+0x2c>
 c70:	00008067          	ret

00000c74 <__umodsi3>:
 c74:	00008293          	mv	t0,ra
 c78:	fb5ff0ef          	jal	ra,c2c <__udivsi3>
 c7c:	00058513          	mv	a0,a1
 c80:	00028067          	jr	t0
 c84:	40a00533          	neg	a0,a0
 c88:	00b04863          	bgtz	a1,c98 <__umodsi3+0x24>
 c8c:	40b005b3          	neg	a1,a1
 c90:	f9dff06f          	j	c2c <__udivsi3>
 c94:	40b005b3          	neg	a1,a1
 c98:	00008293          	mv	t0,ra
 c9c:	f91ff0ef          	jal	ra,c2c <__udivsi3>
 ca0:	40a00533          	neg	a0,a0
 ca4:	00028067          	jr	t0

00000ca8 <__modsi3>:
 ca8:	00008293          	mv	t0,ra
 cac:	0005ca63          	bltz	a1,cc0 <__modsi3+0x18>
 cb0:	00054c63          	bltz	a0,cc8 <__modsi3+0x20>
 cb4:	f79ff0ef          	jal	ra,c2c <__udivsi3>
 cb8:	00058513          	mv	a0,a1
 cbc:	00028067          	jr	t0
 cc0:	40b005b3          	neg	a1,a1
 cc4:	fe0558e3          	bgez	a0,cb4 <__modsi3+0xc>
 cc8:	40a00533          	neg	a0,a0
 ccc:	f61ff0ef          	jal	ra,c2c <__udivsi3>
 cd0:	40b00533          	neg	a0,a1
 cd4:	00028067          	jr	t0
