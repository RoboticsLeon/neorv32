
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
  18:	12450513          	addi	a0,a0,292 # 138 <__crt0_dummy_trap_handler>
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
  c8:	80000617          	auipc	a2,0x80000
  cc:	f3860613          	addi	a2,a2,-200 # 80000000 <__ctr0_io_space_begin+0x80000200>

000000d0 <__crt0_clear_bss_loop>:
  d0:	00c5d863          	bge	a1,a2,e0 <__crt0_clear_bss_loop_end>
  d4:	00058023          	sb	zero,0(a1)
  d8:	00158593          	addi	a1,a1,1
  dc:	ff5ff06f          	j	d0 <__crt0_clear_bss_loop>

000000e0 <__crt0_clear_bss_loop_end>:
  e0:	00000597          	auipc	a1,0x0
  e4:	31c58593          	addi	a1,a1,796 # 3fc <__crt0_copy_data_src_begin>
  e8:	80000617          	auipc	a2,0x80000
  ec:	f1860613          	addi	a2,a2,-232 # 80000000 <__ctr0_io_space_begin+0x80000200>
  f0:	80000697          	auipc	a3,0x80000
  f4:	f1068693          	addi	a3,a3,-240 # 80000000 <__ctr0_io_space_begin+0x80000200>

000000f8 <__crt0_copy_data_loop>:
  f8:	00d65c63          	bge	a2,a3,110 <__crt0_copy_data_loop_end>
  fc:	00058703          	lb	a4,0(a1)
 100:	00e60023          	sb	a4,0(a2)
 104:	00158593          	addi	a1,a1,1
 108:	00160613          	addi	a2,a2,1
 10c:	fedff06f          	j	f8 <__crt0_copy_data_loop>

00000110 <__crt0_copy_data_loop_end>:
 110:	00000513          	li	a0,0
 114:	00000593          	li	a1,0
 118:	06c000ef          	jal	ra,184 <main>

0000011c <__crt0_main_aftermath>:
 11c:	34051073          	csrw	mscratch,a0
 120:	00000093          	li	ra,0
 124:	00008463          	beqz	ra,12c <__crt0_main_aftermath_end>
 128:	000080e7          	jalr	ra

0000012c <__crt0_main_aftermath_end>:
 12c:	30047073          	csrci	mstatus,8

00000130 <__crt0_main_aftermath_end_loop>:
 130:	10500073          	wfi
 134:	ffdff06f          	j	130 <__crt0_main_aftermath_end_loop>

00000138 <__crt0_dummy_trap_handler>:
 138:	ff810113          	addi	sp,sp,-8
 13c:	00812023          	sw	s0,0(sp)
 140:	00912223          	sw	s1,4(sp)
 144:	34202473          	csrr	s0,mcause
 148:	02044663          	bltz	s0,174 <__crt0_dummy_trap_handler_irq>
 14c:	34102473          	csrr	s0,mepc

00000150 <__crt0_dummy_trap_handler_exc_c_check>:
 150:	00041483          	lh	s1,0(s0)
 154:	0034f493          	andi	s1,s1,3
 158:	00240413          	addi	s0,s0,2
 15c:	34141073          	csrw	mepc,s0
 160:	00300413          	li	s0,3
 164:	00941863          	bne	s0,s1,174 <__crt0_dummy_trap_handler_irq>

00000168 <__crt0_dummy_trap_handler_exc_uncrompressed>:
 168:	34102473          	csrr	s0,mepc
 16c:	00240413          	addi	s0,s0,2
 170:	34141073          	csrw	mepc,s0

00000174 <__crt0_dummy_trap_handler_irq>:
 174:	00012403          	lw	s0,0(sp)
 178:	00412483          	lw	s1,4(sp)
 17c:	00810113          	addi	sp,sp,8
 180:	30200073          	mret

00000184 <main>:
 184:	00005537          	lui	a0,0x5
 188:	ff010113          	addi	sp,sp,-16
 18c:	00000613          	li	a2,0
 190:	00000593          	li	a1,0
 194:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x4704>
 198:	00112623          	sw	ra,12(sp)
 19c:	01c000ef          	jal	ra,1b8 <neorv32_uart0_setup>
 1a0:	38800513          	li	a0,904
 1a4:	0d8000ef          	jal	ra,27c <neorv32_uart0_print>
 1a8:	00c12083          	lw	ra,12(sp)
 1ac:	00100513          	li	a0,1
 1b0:	01010113          	addi	sp,sp,16
 1b4:	00008067          	ret

000001b8 <neorv32_uart0_setup>:
 1b8:	ff010113          	addi	sp,sp,-16
 1bc:	00812423          	sw	s0,8(sp)
 1c0:	00912223          	sw	s1,4(sp)
 1c4:	00112623          	sw	ra,12(sp)
 1c8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 1cc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 1d0:	00058413          	mv	s0,a1
 1d4:	00151593          	slli	a1,a0,0x1
 1d8:	00078513          	mv	a0,a5
 1dc:	00060493          	mv	s1,a2
 1e0:	0fc000ef          	jal	ra,2dc <__udivsi3>
 1e4:	01051513          	slli	a0,a0,0x10
 1e8:	000017b7          	lui	a5,0x1
 1ec:	01055513          	srli	a0,a0,0x10
 1f0:	00000713          	li	a4,0
 1f4:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0xc02>
 1f8:	04a7e463          	bltu	a5,a0,240 <neorv32_uart0_setup+0x88>
 1fc:	0034f793          	andi	a5,s1,3
 200:	00347413          	andi	s0,s0,3
 204:	fff50513          	addi	a0,a0,-1
 208:	01479793          	slli	a5,a5,0x14
 20c:	01641413          	slli	s0,s0,0x16
 210:	00f567b3          	or	a5,a0,a5
 214:	0087e7b3          	or	a5,a5,s0
 218:	01871713          	slli	a4,a4,0x18
 21c:	00c12083          	lw	ra,12(sp)
 220:	00812403          	lw	s0,8(sp)
 224:	00e7e7b3          	or	a5,a5,a4
 228:	10000737          	lui	a4,0x10000
 22c:	00e7e7b3          	or	a5,a5,a4
 230:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 234:	00412483          	lw	s1,4(sp)
 238:	01010113          	addi	sp,sp,16
 23c:	00008067          	ret
 240:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffffc02>
 244:	0fd6f693          	andi	a3,a3,253
 248:	00069a63          	bnez	a3,25c <neorv32_uart0_setup+0xa4>
 24c:	00355513          	srli	a0,a0,0x3
 250:	00170713          	addi	a4,a4,1
 254:	0ff77713          	andi	a4,a4,255
 258:	fa1ff06f          	j	1f8 <neorv32_uart0_setup+0x40>
 25c:	00155513          	srli	a0,a0,0x1
 260:	ff1ff06f          	j	250 <neorv32_uart0_setup+0x98>

00000264 <neorv32_uart0_putc>:
 264:	00040737          	lui	a4,0x40
 268:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 26c:	00e7f7b3          	and	a5,a5,a4
 270:	fe079ce3          	bnez	a5,268 <neorv32_uart0_putc+0x4>
 274:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 278:	00008067          	ret

0000027c <neorv32_uart0_print>:
 27c:	ff010113          	addi	sp,sp,-16
 280:	00812423          	sw	s0,8(sp)
 284:	01212023          	sw	s2,0(sp)
 288:	00112623          	sw	ra,12(sp)
 28c:	00912223          	sw	s1,4(sp)
 290:	00050413          	mv	s0,a0
 294:	00a00913          	li	s2,10
 298:	00044483          	lbu	s1,0(s0)
 29c:	00140413          	addi	s0,s0,1
 2a0:	00049e63          	bnez	s1,2bc <neorv32_uart0_print+0x40>
 2a4:	00c12083          	lw	ra,12(sp)
 2a8:	00812403          	lw	s0,8(sp)
 2ac:	00412483          	lw	s1,4(sp)
 2b0:	00012903          	lw	s2,0(sp)
 2b4:	01010113          	addi	sp,sp,16
 2b8:	00008067          	ret
 2bc:	01249663          	bne	s1,s2,2c8 <neorv32_uart0_print+0x4c>
 2c0:	00d00513          	li	a0,13
 2c4:	fa1ff0ef          	jal	ra,264 <neorv32_uart0_putc>
 2c8:	00048513          	mv	a0,s1
 2cc:	f99ff0ef          	jal	ra,264 <neorv32_uart0_putc>
 2d0:	fc9ff06f          	j	298 <neorv32_uart0_print+0x1c>

000002d4 <__divsi3>:
 2d4:	06054063          	bltz	a0,334 <__umodsi3+0x10>
 2d8:	0605c663          	bltz	a1,344 <__umodsi3+0x20>

000002dc <__udivsi3>:
 2dc:	00058613          	mv	a2,a1
 2e0:	00050593          	mv	a1,a0
 2e4:	fff00513          	li	a0,-1
 2e8:	02060c63          	beqz	a2,320 <__udivsi3+0x44>
 2ec:	00100693          	li	a3,1
 2f0:	00b67a63          	bgeu	a2,a1,304 <__udivsi3+0x28>
 2f4:	00c05863          	blez	a2,304 <__udivsi3+0x28>
 2f8:	00161613          	slli	a2,a2,0x1
 2fc:	00169693          	slli	a3,a3,0x1
 300:	feb66ae3          	bltu	a2,a1,2f4 <__udivsi3+0x18>
 304:	00000513          	li	a0,0
 308:	00c5e663          	bltu	a1,a2,314 <__udivsi3+0x38>
 30c:	40c585b3          	sub	a1,a1,a2
 310:	00d56533          	or	a0,a0,a3
 314:	0016d693          	srli	a3,a3,0x1
 318:	00165613          	srli	a2,a2,0x1
 31c:	fe0696e3          	bnez	a3,308 <__udivsi3+0x2c>
 320:	00008067          	ret

00000324 <__umodsi3>:
 324:	00008293          	mv	t0,ra
 328:	fb5ff0ef          	jal	ra,2dc <__udivsi3>
 32c:	00058513          	mv	a0,a1
 330:	00028067          	jr	t0
 334:	40a00533          	neg	a0,a0
 338:	00b04863          	bgtz	a1,348 <__umodsi3+0x24>
 33c:	40b005b3          	neg	a1,a1
 340:	f9dff06f          	j	2dc <__udivsi3>
 344:	40b005b3          	neg	a1,a1
 348:	00008293          	mv	t0,ra
 34c:	f91ff0ef          	jal	ra,2dc <__udivsi3>
 350:	40a00533          	neg	a0,a0
 354:	00028067          	jr	t0

00000358 <__modsi3>:
 358:	00008293          	mv	t0,ra
 35c:	0005ca63          	bltz	a1,370 <__modsi3+0x18>
 360:	00054c63          	bltz	a0,378 <__modsi3+0x20>
 364:	f79ff0ef          	jal	ra,2dc <__udivsi3>
 368:	00058513          	mv	a0,a1
 36c:	00028067          	jr	t0
 370:	40b005b3          	neg	a1,a1
 374:	fe0558e3          	bgez	a0,364 <__modsi3+0xc>
 378:	40a00533          	neg	a0,a0
 37c:	f61ff0ef          	jal	ra,2dc <__udivsi3>
 380:	40b00533          	neg	a0,a1
 384:	00028067          	jr	t0
