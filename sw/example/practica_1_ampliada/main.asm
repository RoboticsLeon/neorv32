
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
  c8:	87c18613          	addi	a2,gp,-1924 # 8000007c <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
  cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
  d0:	00058023          	sb	zero,0(a1)
  d4:	00158593          	addi	a1,a1,1
  d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
  dc:	00001597          	auipc	a1,0x1
  e0:	f1858593          	addi	a1,a1,-232 # ff4 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3b0c>
 194:	00112623          	sw	ra,12(sp)
 198:	250000ef          	jal	ra,3e8 <neorv32_uart0_setup>
 19c:	368000ef          	jal	ra,504 <neorv32_gpio_available>
 1a0:	00050c63          	beqz	a0,1b8 <main+0x38>
 1a4:	1a1000ef          	jal	ra,b44 <neorv32_rte_setup>
 1a8:	00001537          	lui	a0,0x1
 1ac:	d3050513          	addi	a0,a0,-720 # d30 <__etext+0x3c>
 1b0:	2fc000ef          	jal	ra,4ac <neorv32_uart0_print>
 1b4:	020000ef          	jal	ra,1d4 <maquina_estados>
 1b8:	00001537          	lui	a0,0x1
 1bc:	d0c50513          	addi	a0,a0,-756 # d0c <__etext+0x18>
 1c0:	2ec000ef          	jal	ra,4ac <neorv32_uart0_print>
 1c4:	00c12083          	lw	ra,12(sp)
 1c8:	00100513          	li	a0,1
 1cc:	01010113          	addi	sp,sp,16
 1d0:	00008067          	ret

000001d4 <maquina_estados>:
 1d4:	fd010113          	addi	sp,sp,-48
 1d8:	01312e23          	sw	s3,28(sp)
 1dc:	000019b7          	lui	s3,0x1
 1e0:	02912223          	sw	s1,36(sp)
 1e4:	03212023          	sw	s2,32(sp)
 1e8:	01412c23          	sw	s4,24(sp)
 1ec:	01512a23          	sw	s5,20(sp)
 1f0:	01612823          	sw	s6,16(sp)
 1f4:	01712623          	sw	s7,12(sp)
 1f8:	02112623          	sw	ra,44(sp)
 1fc:	02812423          	sw	s0,40(sp)
 200:	01812423          	sw	s8,8(sp)
 204:	80000ab7          	lui	s5,0x80000
 208:	00500b13          	li	s6,5
 20c:	cf498993          	addi	s3,s3,-780 # cf4 <__etext>
 210:	80000937          	lui	s2,0x80000
 214:	800004b7          	lui	s1,0x80000
 218:	00400a13          	li	s4,4
 21c:	80000bb7          	lui	s7,0x80000
 220:	03200513          	li	a0,50
 224:	3b8000ef          	jal	ra,5dc <neorv32_cpu_delay_ms>
 228:	000aa783          	lw	a5,0(s5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 22c:	000a8413          	mv	s0,s5
 230:	0afb6a63          	bltu	s6,a5,2e4 <maquina_estados+0x110>
 234:	00279793          	slli	a5,a5,0x2
 238:	013787b3          	add	a5,a5,s3
 23c:	0007a783          	lw	a5,0(a5)
 240:	00078067          	jr	a5
 244:	00000513          	li	a0,0
 248:	00000593          	li	a1,0
 24c:	354000ef          	jal	ra,5a0 <neorv32_gpio_port_set>
 250:	00000513          	li	a0,0
 254:	324000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 258:	00050663          	beqz	a0,264 <maquina_estados+0x90>
 25c:	00300793          	li	a5,3
 260:	00f42023          	sw	a5,0(s0)
 264:	00100513          	li	a0,1
 268:	310000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 26c:	00050463          	beqz	a0,274 <maquina_estados+0xa0>
 270:	01442023          	sw	s4,0(s0)
 274:	00200513          	li	a0,2
 278:	300000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 27c:	06050463          	beqz	a0,2e4 <maquina_estados+0x110>
 280:	01400513          	li	a0,20
 284:	358000ef          	jal	ra,5dc <neorv32_cpu_delay_ms>
 288:	00100793          	li	a5,1
 28c:	00f42023          	sw	a5,0(s0)
 290:	0540006f          	j	2e4 <maquina_estados+0x110>
 294:	00690793          	addi	a5,s2,6 # 80000006 <__ctr0_io_space_begin+0x80000206>
 298:	0007c703          	lbu	a4,0(a5)
 29c:	02070663          	beqz	a4,2c8 <maquina_estados+0xf4>
 2a0:	0044c503          	lbu	a0,4(s1) # 80000004 <__ctr0_io_space_begin+0x80000204>
 2a4:	00078023          	sb	zero,0(a5)
 2a8:	00200793          	li	a5,2
 2ac:	00448c13          	addi	s8,s1,4
 2b0:	04a7f663          	bgeu	a5,a0,2fc <maquina_estados+0x128>
 2b4:	000c0023          	sb	zero,0(s8)
 2b8:	00300513          	li	a0,3
 2bc:	288000ef          	jal	ra,544 <neorv32_gpio_pin_clr>
 2c0:	000c4503          	lbu	a0,0(s8)
 2c4:	250000ef          	jal	ra,514 <neorv32_gpio_pin_set>
 2c8:	00100513          	li	a0,1
 2cc:	2ac000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 2d0:	00050463          	beqz	a0,2d8 <maquina_estados+0x104>
 2d4:	01442023          	sw	s4,0(s0)
 2d8:	00200513          	li	a0,2
 2dc:	29c000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 2e0:	fa0514e3          	bnez	a0,288 <maquina_estados+0xb4>
 2e4:	005b8713          	addi	a4,s7,5 # 80000005 <__ctr0_io_space_begin+0x80000205>
 2e8:	00074783          	lbu	a5,0(a4)
 2ec:	0cfa6e63          	bltu	s4,a5,3c8 <maquina_estados+0x1f4>
 2f0:	00178793          	addi	a5,a5,1
 2f4:	00f70023          	sb	a5,0(a4)
 2f8:	f29ff06f          	j	220 <maquina_estados+0x4c>
 2fc:	00150513          	addi	a0,a0,1
 300:	0ff57513          	andi	a0,a0,255
 304:	00ac0023          	sb	a0,0(s8)
 308:	fff50513          	addi	a0,a0,-1
 30c:	fb1ff06f          	j	2bc <maquina_estados+0xe8>
 310:	00690793          	addi	a5,s2,6
 314:	0007c703          	lbu	a4,0(a5)
 318:	04070263          	beqz	a4,35c <maquina_estados+0x188>
 31c:	0044c503          	lbu	a0,4(s1)
 320:	00078023          	sb	zero,0(a5)
 324:	00448c13          	addi	s8,s1,4
 328:	00051a63          	bnez	a0,33c <maquina_estados+0x168>
 32c:	00300793          	li	a5,3
 330:	00fc0023          	sb	a5,0(s8)
 334:	00000513          	li	a0,0
 338:	0180006f          	j	350 <maquina_estados+0x17c>
 33c:	fff50793          	addi	a5,a0,-1
 340:	0ff7f793          	andi	a5,a5,255
 344:	00fc0023          	sb	a5,0(s8)
 348:	00200713          	li	a4,2
 34c:	fef764e3          	bltu	a4,a5,334 <maquina_estados+0x160>
 350:	1f4000ef          	jal	ra,544 <neorv32_gpio_pin_clr>
 354:	000c4503          	lbu	a0,0(s8)
 358:	1bc000ef          	jal	ra,514 <neorv32_gpio_pin_set>
 35c:	00000513          	li	a0,0
 360:	218000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 364:	f6050ae3          	beqz	a0,2d8 <maquina_estados+0x104>
 368:	00300793          	li	a5,3
 36c:	00f42023          	sw	a5,0(s0)
 370:	f69ff06f          	j	2d8 <maquina_estados+0x104>
 374:	01f00513          	li	a0,31
 378:	00000593          	li	a1,0
 37c:	224000ef          	jal	ra,5a0 <neorv32_gpio_port_set>
 380:	00200513          	li	a0,2
 384:	1f4000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 388:	f4051ee3          	bnez	a0,2e4 <maquina_estados+0x110>
 38c:	01642023          	sw	s6,0(s0)
 390:	f55ff06f          	j	2e4 <maquina_estados+0x110>
 394:	00000513          	li	a0,0
 398:	00000593          	li	a1,0
 39c:	204000ef          	jal	ra,5a0 <neorv32_gpio_port_set>
 3a0:	00200513          	li	a0,2
 3a4:	1d4000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 3a8:	f2051ee3          	bnez	a0,2e4 <maquina_estados+0x110>
 3ac:	00042023          	sw	zero,0(s0)
 3b0:	f35ff06f          	j	2e4 <maquina_estados+0x110>
 3b4:	00200513          	li	a0,2
 3b8:	1c0000ef          	jal	ra,578 <neorv32_gpio_pin_get>
 3bc:	f20504e3          	beqz	a0,2e4 <maquina_estados+0x110>
 3c0:	00200793          	li	a5,2
 3c4:	ec9ff06f          	j	28c <maquina_estados+0xb8>
 3c8:	00100793          	li	a5,1
 3cc:	00f90323          	sb	a5,6(s2)
 3d0:	00070023          	sb	zero,0(a4)
 3d4:	e4dff06f          	j	220 <maquina_estados+0x4c>

000003d8 <neorv32_uart0_available>:
 3d8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3dc:	01255513          	srli	a0,a0,0x12
 3e0:	00157513          	andi	a0,a0,1
 3e4:	00008067          	ret

000003e8 <neorv32_uart0_setup>:
 3e8:	ff010113          	addi	sp,sp,-16
 3ec:	00812423          	sw	s0,8(sp)
 3f0:	00912223          	sw	s1,4(sp)
 3f4:	00112623          	sw	ra,12(sp)
 3f8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3fc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 400:	00058413          	mv	s0,a1
 404:	00151593          	slli	a1,a0,0x1
 408:	00078513          	mv	a0,a5
 40c:	00060493          	mv	s1,a2
 410:	039000ef          	jal	ra,c48 <__udivsi3>
 414:	01051513          	slli	a0,a0,0x10
 418:	000017b7          	lui	a5,0x1
 41c:	01055513          	srli	a0,a0,0x10
 420:	00000713          	li	a4,0
 424:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0xa>
 428:	04a7e463          	bltu	a5,a0,470 <neorv32_uart0_setup+0x88>
 42c:	0034f793          	andi	a5,s1,3
 430:	00347413          	andi	s0,s0,3
 434:	fff50513          	addi	a0,a0,-1
 438:	01479793          	slli	a5,a5,0x14
 43c:	01641413          	slli	s0,s0,0x16
 440:	00f567b3          	or	a5,a0,a5
 444:	0087e7b3          	or	a5,a5,s0
 448:	01871713          	slli	a4,a4,0x18
 44c:	00c12083          	lw	ra,12(sp)
 450:	00812403          	lw	s0,8(sp)
 454:	00e7e7b3          	or	a5,a5,a4
 458:	10000737          	lui	a4,0x10000
 45c:	00e7e7b3          	or	a5,a5,a4
 460:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 464:	00412483          	lw	s1,4(sp)
 468:	01010113          	addi	sp,sp,16
 46c:	00008067          	ret
 470:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff00a>
 474:	0fd6f693          	andi	a3,a3,253
 478:	00069a63          	bnez	a3,48c <neorv32_uart0_setup+0xa4>
 47c:	00355513          	srli	a0,a0,0x3
 480:	00170713          	addi	a4,a4,1
 484:	0ff77713          	andi	a4,a4,255
 488:	fa1ff06f          	j	428 <neorv32_uart0_setup+0x40>
 48c:	00155513          	srli	a0,a0,0x1
 490:	ff1ff06f          	j	480 <neorv32_uart0_setup+0x98>

00000494 <neorv32_uart0_putc>:
 494:	00040737          	lui	a4,0x40
 498:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 49c:	00e7f7b3          	and	a5,a5,a4
 4a0:	fe079ce3          	bnez	a5,498 <neorv32_uart0_putc+0x4>
 4a4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4a8:	00008067          	ret

000004ac <neorv32_uart0_print>:
 4ac:	ff010113          	addi	sp,sp,-16
 4b0:	00812423          	sw	s0,8(sp)
 4b4:	01212023          	sw	s2,0(sp)
 4b8:	00112623          	sw	ra,12(sp)
 4bc:	00912223          	sw	s1,4(sp)
 4c0:	00050413          	mv	s0,a0
 4c4:	00a00913          	li	s2,10
 4c8:	00044483          	lbu	s1,0(s0)
 4cc:	00140413          	addi	s0,s0,1
 4d0:	00049e63          	bnez	s1,4ec <neorv32_uart0_print+0x40>
 4d4:	00c12083          	lw	ra,12(sp)
 4d8:	00812403          	lw	s0,8(sp)
 4dc:	00412483          	lw	s1,4(sp)
 4e0:	00012903          	lw	s2,0(sp)
 4e4:	01010113          	addi	sp,sp,16
 4e8:	00008067          	ret
 4ec:	01249663          	bne	s1,s2,4f8 <neorv32_uart0_print+0x4c>
 4f0:	00d00513          	li	a0,13
 4f4:	fa1ff0ef          	jal	ra,494 <neorv32_uart0_putc>
 4f8:	00048513          	mv	a0,s1
 4fc:	f99ff0ef          	jal	ra,494 <neorv32_uart0_putc>
 500:	fc9ff06f          	j	4c8 <neorv32_uart0_print+0x1c>

00000504 <neorv32_gpio_available>:
 504:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 508:	01055513          	srli	a0,a0,0x10
 50c:	00157513          	andi	a0,a0,1
 510:	00008067          	ret

00000514 <neorv32_gpio_pin_set>:
 514:	00100793          	li	a5,1
 518:	01f00713          	li	a4,31
 51c:	00a797b3          	sll	a5,a5,a0
 520:	00a74a63          	blt	a4,a0,534 <neorv32_gpio_pin_set+0x20>
 524:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 528:	00f767b3          	or	a5,a4,a5
 52c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 530:	00008067          	ret
 534:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 538:	00f767b3          	or	a5,a4,a5
 53c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 540:	00008067          	ret

00000544 <neorv32_gpio_pin_clr>:
 544:	00100793          	li	a5,1
 548:	00a797b3          	sll	a5,a5,a0
 54c:	01f00713          	li	a4,31
 550:	fff7c793          	not	a5,a5
 554:	00a74a63          	blt	a4,a0,568 <neorv32_gpio_pin_clr+0x24>
 558:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 55c:	00f777b3          	and	a5,a4,a5
 560:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
 564:	00008067          	ret
 568:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 56c:	00f777b3          	and	a5,a4,a5
 570:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
 574:	00008067          	ret

00000578 <neorv32_gpio_pin_get>:
 578:	00050793          	mv	a5,a0
 57c:	01f00713          	li	a4,31
 580:	00100513          	li	a0,1
 584:	00f51533          	sll	a0,a0,a5
 588:	00f74863          	blt	a4,a5,598 <neorv32_gpio_pin_get+0x20>
 58c:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
 590:	00a7f533          	and	a0,a5,a0
 594:	00008067          	ret
 598:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
 59c:	ff5ff06f          	j	590 <neorv32_gpio_pin_get+0x18>

000005a0 <neorv32_gpio_port_set>:
 5a0:	fc000793          	li	a5,-64
 5a4:	00a7a423          	sw	a0,8(a5)
 5a8:	00b7a623          	sw	a1,12(a5)
 5ac:	00008067          	ret

000005b0 <neorv32_cpu_get_systime>:
 5b0:	ff010113          	addi	sp,sp,-16
 5b4:	c81026f3          	rdtimeh	a3
 5b8:	c0102773          	rdtime	a4
 5bc:	c81027f3          	rdtimeh	a5
 5c0:	fed79ae3          	bne	a5,a3,5b4 <neorv32_cpu_get_systime+0x4>
 5c4:	00e12023          	sw	a4,0(sp)
 5c8:	00f12223          	sw	a5,4(sp)
 5cc:	00012503          	lw	a0,0(sp)
 5d0:	00412583          	lw	a1,4(sp)
 5d4:	01010113          	addi	sp,sp,16
 5d8:	00008067          	ret

000005dc <neorv32_cpu_delay_ms>:
 5dc:	fd010113          	addi	sp,sp,-48
 5e0:	00a12623          	sw	a0,12(sp)
 5e4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 5e8:	3e800593          	li	a1,1000
 5ec:	02112623          	sw	ra,44(sp)
 5f0:	02812423          	sw	s0,40(sp)
 5f4:	02912223          	sw	s1,36(sp)
 5f8:	03212023          	sw	s2,32(sp)
 5fc:	01312e23          	sw	s3,28(sp)
 600:	648000ef          	jal	ra,c48 <__udivsi3>
 604:	00c12603          	lw	a2,12(sp)
 608:	00000693          	li	a3,0
 60c:	00000593          	li	a1,0
 610:	5a0000ef          	jal	ra,bb0 <__muldi3>
 614:	00050413          	mv	s0,a0
 618:	00058993          	mv	s3,a1
 61c:	f95ff0ef          	jal	ra,5b0 <neorv32_cpu_get_systime>
 620:	00058913          	mv	s2,a1
 624:	00050493          	mv	s1,a0
 628:	f89ff0ef          	jal	ra,5b0 <neorv32_cpu_get_systime>
 62c:	00b96663          	bltu	s2,a1,638 <neorv32_cpu_delay_ms+0x5c>
 630:	05259263          	bne	a1,s2,674 <neorv32_cpu_delay_ms+0x98>
 634:	04a4f063          	bgeu	s1,a0,674 <neorv32_cpu_delay_ms+0x98>
 638:	008484b3          	add	s1,s1,s0
 63c:	0084b433          	sltu	s0,s1,s0
 640:	01390933          	add	s2,s2,s3
 644:	01240433          	add	s0,s0,s2
 648:	f69ff0ef          	jal	ra,5b0 <neorv32_cpu_get_systime>
 64c:	fe85eee3          	bltu	a1,s0,648 <neorv32_cpu_delay_ms+0x6c>
 650:	00b41463          	bne	s0,a1,658 <neorv32_cpu_delay_ms+0x7c>
 654:	fe956ae3          	bltu	a0,s1,648 <neorv32_cpu_delay_ms+0x6c>
 658:	02c12083          	lw	ra,44(sp)
 65c:	02812403          	lw	s0,40(sp)
 660:	02412483          	lw	s1,36(sp)
 664:	02012903          	lw	s2,32(sp)
 668:	01c12983          	lw	s3,28(sp)
 66c:	03010113          	addi	sp,sp,48
 670:	00008067          	ret
 674:	01c99913          	slli	s2,s3,0x1c
 678:	00445413          	srli	s0,s0,0x4
 67c:	00896433          	or	s0,s2,s0

00000680 <__neorv32_cpu_delay_ms_start>:
 680:	00040a63          	beqz	s0,694 <__neorv32_cpu_delay_ms_end>
 684:	00040863          	beqz	s0,694 <__neorv32_cpu_delay_ms_end>
 688:	fff40413          	addi	s0,s0,-1
 68c:	00000013          	nop
 690:	ff1ff06f          	j	680 <__neorv32_cpu_delay_ms_start>

00000694 <__neorv32_cpu_delay_ms_end>:
 694:	fc5ff06f          	j	658 <neorv32_cpu_delay_ms+0x7c>
 698:	0000                	unimp
 69a:	0000                	unimp
 69c:	0000                	unimp
 69e:	0000                	unimp

000006a0 <__neorv32_rte_core>:
 6a0:	fc010113          	addi	sp,sp,-64
 6a4:	02112e23          	sw	ra,60(sp)
 6a8:	02512c23          	sw	t0,56(sp)
 6ac:	02612a23          	sw	t1,52(sp)
 6b0:	02712823          	sw	t2,48(sp)
 6b4:	02a12623          	sw	a0,44(sp)
 6b8:	02b12423          	sw	a1,40(sp)
 6bc:	02c12223          	sw	a2,36(sp)
 6c0:	02d12023          	sw	a3,32(sp)
 6c4:	00e12e23          	sw	a4,28(sp)
 6c8:	00f12c23          	sw	a5,24(sp)
 6cc:	01012a23          	sw	a6,20(sp)
 6d0:	01112823          	sw	a7,16(sp)
 6d4:	01c12623          	sw	t3,12(sp)
 6d8:	01d12423          	sw	t4,8(sp)
 6dc:	01e12223          	sw	t5,4(sp)
 6e0:	01f12023          	sw	t6,0(sp)
 6e4:	34102773          	csrr	a4,mepc
 6e8:	34071073          	csrw	mscratch,a4
 6ec:	342027f3          	csrr	a5,mcause
 6f0:	0807ca63          	bltz	a5,784 <__neorv32_rte_core+0xe4>
 6f4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f00c>
 6f8:	00300593          	li	a1,3
 6fc:	0036f693          	andi	a3,a3,3
 700:	00270613          	addi	a2,a4,2
 704:	00b69463          	bne	a3,a1,70c <__neorv32_rte_core+0x6c>
 708:	00470613          	addi	a2,a4,4
 70c:	34161073          	csrw	mepc,a2
 710:	00b00713          	li	a4,11
 714:	04f77c63          	bgeu	a4,a5,76c <__neorv32_rte_core+0xcc>
 718:	000017b7          	lui	a5,0x1
 71c:	91878793          	addi	a5,a5,-1768 # 918 <__neorv32_rte_debug_exc_handler>
 720:	000780e7          	jalr	a5
 724:	03c12083          	lw	ra,60(sp)
 728:	03812283          	lw	t0,56(sp)
 72c:	03412303          	lw	t1,52(sp)
 730:	03012383          	lw	t2,48(sp)
 734:	02c12503          	lw	a0,44(sp)
 738:	02812583          	lw	a1,40(sp)
 73c:	02412603          	lw	a2,36(sp)
 740:	02012683          	lw	a3,32(sp)
 744:	01c12703          	lw	a4,28(sp)
 748:	01812783          	lw	a5,24(sp)
 74c:	01412803          	lw	a6,20(sp)
 750:	01012883          	lw	a7,16(sp)
 754:	00c12e03          	lw	t3,12(sp)
 758:	00812e83          	lw	t4,8(sp)
 75c:	00412f03          	lw	t5,4(sp)
 760:	00012f83          	lw	t6,0(sp)
 764:	04010113          	addi	sp,sp,64
 768:	30200073          	mret
 76c:	00001737          	lui	a4,0x1
 770:	00279793          	slli	a5,a5,0x2
 774:	d4c70713          	addi	a4,a4,-692 # d4c <__etext+0x58>
 778:	00e787b3          	add	a5,a5,a4
 77c:	0007a783          	lw	a5,0(a5)
 780:	00078067          	jr	a5
 784:	80000737          	lui	a4,0x80000
 788:	ffd74713          	xori	a4,a4,-3
 78c:	00e787b3          	add	a5,a5,a4
 790:	01c00713          	li	a4,28
 794:	f8f762e3          	bltu	a4,a5,718 <__neorv32_rte_core+0x78>
 798:	00001737          	lui	a4,0x1
 79c:	00279793          	slli	a5,a5,0x2
 7a0:	d7c70713          	addi	a4,a4,-644 # d7c <__etext+0x88>
 7a4:	00e787b3          	add	a5,a5,a4
 7a8:	0007a783          	lw	a5,0(a5)
 7ac:	00078067          	jr	a5
 7b0:	800007b7          	lui	a5,0x80000
 7b4:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 7b8:	f69ff06f          	j	720 <__neorv32_rte_core+0x80>
 7bc:	800007b7          	lui	a5,0x80000
 7c0:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 7c4:	f5dff06f          	j	720 <__neorv32_rte_core+0x80>
 7c8:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x8>
 7cc:	f55ff06f          	j	720 <__neorv32_rte_core+0x80>
 7d0:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0xc>
 7d4:	f4dff06f          	j	720 <__neorv32_rte_core+0x80>
 7d8:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x10>
 7dc:	f45ff06f          	j	720 <__neorv32_rte_core+0x80>
 7e0:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x14>
 7e4:	f3dff06f          	j	720 <__neorv32_rte_core+0x80>
 7e8:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x18>
 7ec:	f35ff06f          	j	720 <__neorv32_rte_core+0x80>
 7f0:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x1c>
 7f4:	f2dff06f          	j	720 <__neorv32_rte_core+0x80>
 7f8:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x20>
 7fc:	f25ff06f          	j	720 <__neorv32_rte_core+0x80>
 800:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x24>
 804:	f1dff06f          	j	720 <__neorv32_rte_core+0x80>
 808:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x28>
 80c:	f15ff06f          	j	720 <__neorv32_rte_core+0x80>
 810:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x2c>
 814:	f0dff06f          	j	720 <__neorv32_rte_core+0x80>
 818:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x30>
 81c:	f05ff06f          	j	720 <__neorv32_rte_core+0x80>
 820:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x34>
 824:	efdff06f          	j	720 <__neorv32_rte_core+0x80>
 828:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x38>
 82c:	ef5ff06f          	j	720 <__neorv32_rte_core+0x80>
 830:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x3c>
 834:	eedff06f          	j	720 <__neorv32_rte_core+0x80>
 838:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x40>
 83c:	ee5ff06f          	j	720 <__neorv32_rte_core+0x80>
 840:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x44>
 844:	eddff06f          	j	720 <__neorv32_rte_core+0x80>
 848:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x48>
 84c:	ed5ff06f          	j	720 <__neorv32_rte_core+0x80>
 850:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x4c>
 854:	ecdff06f          	j	720 <__neorv32_rte_core+0x80>
 858:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x50>
 85c:	ec5ff06f          	j	720 <__neorv32_rte_core+0x80>
 860:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x54>
 864:	ebdff06f          	j	720 <__neorv32_rte_core+0x80>
 868:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x58>
 86c:	eb5ff06f          	j	720 <__neorv32_rte_core+0x80>
 870:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x5c>
 874:	eadff06f          	j	720 <__neorv32_rte_core+0x80>
 878:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x60>
 87c:	ea5ff06f          	j	720 <__neorv32_rte_core+0x80>
 880:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x64>
 884:	e9dff06f          	j	720 <__neorv32_rte_core+0x80>
 888:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x68>
 88c:	e95ff06f          	j	720 <__neorv32_rte_core+0x80>
 890:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x6c>
 894:	e8dff06f          	j	720 <__neorv32_rte_core+0x80>
 898:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x70>
 89c:	e85ff06f          	j	720 <__neorv32_rte_core+0x80>
 8a0:	0000                	unimp
 8a2:	0000                	unimp
 8a4:	0000                	unimp
 8a6:	0000                	unimp

000008a8 <__neorv32_rte_print_hex_word>:
 8a8:	fe010113          	addi	sp,sp,-32
 8ac:	01212823          	sw	s2,16(sp)
 8b0:	00050913          	mv	s2,a0
 8b4:	00001537          	lui	a0,0x1
 8b8:	00912a23          	sw	s1,20(sp)
 8bc:	df050513          	addi	a0,a0,-528 # df0 <__etext+0xfc>
 8c0:	000014b7          	lui	s1,0x1
 8c4:	00812c23          	sw	s0,24(sp)
 8c8:	01312623          	sw	s3,12(sp)
 8cc:	00112e23          	sw	ra,28(sp)
 8d0:	01c00413          	li	s0,28
 8d4:	bd9ff0ef          	jal	ra,4ac <neorv32_uart0_print>
 8d8:	fe448493          	addi	s1,s1,-28 # fe4 <hex_symbols.0>
 8dc:	ffc00993          	li	s3,-4
 8e0:	008957b3          	srl	a5,s2,s0
 8e4:	00f7f793          	andi	a5,a5,15
 8e8:	00f487b3          	add	a5,s1,a5
 8ec:	0007c503          	lbu	a0,0(a5)
 8f0:	ffc40413          	addi	s0,s0,-4
 8f4:	ba1ff0ef          	jal	ra,494 <neorv32_uart0_putc>
 8f8:	ff3414e3          	bne	s0,s3,8e0 <__neorv32_rte_print_hex_word+0x38>
 8fc:	01c12083          	lw	ra,28(sp)
 900:	01812403          	lw	s0,24(sp)
 904:	01412483          	lw	s1,20(sp)
 908:	01012903          	lw	s2,16(sp)
 90c:	00c12983          	lw	s3,12(sp)
 910:	02010113          	addi	sp,sp,32
 914:	00008067          	ret

00000918 <__neorv32_rte_debug_exc_handler>:
 918:	ff010113          	addi	sp,sp,-16
 91c:	00112623          	sw	ra,12(sp)
 920:	00812423          	sw	s0,8(sp)
 924:	00912223          	sw	s1,4(sp)
 928:	ab1ff0ef          	jal	ra,3d8 <neorv32_uart0_available>
 92c:	1c050863          	beqz	a0,afc <__neorv32_rte_debug_exc_handler+0x1e4>
 930:	00001537          	lui	a0,0x1
 934:	df450513          	addi	a0,a0,-524 # df4 <__etext+0x100>
 938:	b75ff0ef          	jal	ra,4ac <neorv32_uart0_print>
 93c:	34202473          	csrr	s0,mcause
 940:	00900713          	li	a4,9
 944:	00f47793          	andi	a5,s0,15
 948:	03078493          	addi	s1,a5,48
 94c:	00f77463          	bgeu	a4,a5,954 <__neorv32_rte_debug_exc_handler+0x3c>
 950:	05778493          	addi	s1,a5,87
 954:	00b00793          	li	a5,11
 958:	0087ee63          	bltu	a5,s0,974 <__neorv32_rte_debug_exc_handler+0x5c>
 95c:	00001737          	lui	a4,0x1
 960:	00241793          	slli	a5,s0,0x2
 964:	fb470713          	addi	a4,a4,-76 # fb4 <__etext+0x2c0>
 968:	00e787b3          	add	a5,a5,a4
 96c:	0007a783          	lw	a5,0(a5)
 970:	00078067          	jr	a5
 974:	800007b7          	lui	a5,0x80000
 978:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 97c:	14e40e63          	beq	s0,a4,ad8 <__neorv32_rte_debug_exc_handler+0x1c0>
 980:	02876a63          	bltu	a4,s0,9b4 <__neorv32_rte_debug_exc_handler+0x9c>
 984:	00378713          	addi	a4,a5,3
 988:	12e40c63          	beq	s0,a4,ac0 <__neorv32_rte_debug_exc_handler+0x1a8>
 98c:	00778793          	addi	a5,a5,7
 990:	12f40e63          	beq	s0,a5,acc <__neorv32_rte_debug_exc_handler+0x1b4>
 994:	00001537          	lui	a0,0x1
 998:	f5450513          	addi	a0,a0,-172 # f54 <__etext+0x260>
 99c:	b11ff0ef          	jal	ra,4ac <neorv32_uart0_print>
 9a0:	00040513          	mv	a0,s0
 9a4:	f05ff0ef          	jal	ra,8a8 <__neorv32_rte_print_hex_word>
 9a8:	00100793          	li	a5,1
 9ac:	08f40c63          	beq	s0,a5,a44 <__neorv32_rte_debug_exc_handler+0x12c>
 9b0:	0280006f          	j	9d8 <__neorv32_rte_debug_exc_handler+0xc0>
 9b4:	ff07c793          	xori	a5,a5,-16
 9b8:	00f407b3          	add	a5,s0,a5
 9bc:	00f00713          	li	a4,15
 9c0:	fcf76ae3          	bltu	a4,a5,994 <__neorv32_rte_debug_exc_handler+0x7c>
 9c4:	00001537          	lui	a0,0x1
 9c8:	f4450513          	addi	a0,a0,-188 # f44 <__etext+0x250>
 9cc:	ae1ff0ef          	jal	ra,4ac <neorv32_uart0_print>
 9d0:	00048513          	mv	a0,s1
 9d4:	ac1ff0ef          	jal	ra,494 <neorv32_uart0_putc>
 9d8:	ffd47413          	andi	s0,s0,-3
 9dc:	00500793          	li	a5,5
 9e0:	06f40263          	beq	s0,a5,a44 <__neorv32_rte_debug_exc_handler+0x12c>
 9e4:	00001537          	lui	a0,0x1
 9e8:	f9850513          	addi	a0,a0,-104 # f98 <__etext+0x2a4>
 9ec:	ac1ff0ef          	jal	ra,4ac <neorv32_uart0_print>
 9f0:	34002573          	csrr	a0,mscratch
 9f4:	eb5ff0ef          	jal	ra,8a8 <__neorv32_rte_print_hex_word>
 9f8:	00001537          	lui	a0,0x1
 9fc:	fa050513          	addi	a0,a0,-96 # fa0 <__etext+0x2ac>
 a00:	aadff0ef          	jal	ra,4ac <neorv32_uart0_print>
 a04:	34302573          	csrr	a0,mtval
 a08:	ea1ff0ef          	jal	ra,8a8 <__neorv32_rte_print_hex_word>
 a0c:	00812403          	lw	s0,8(sp)
 a10:	00c12083          	lw	ra,12(sp)
 a14:	00412483          	lw	s1,4(sp)
 a18:	00001537          	lui	a0,0x1
 a1c:	fac50513          	addi	a0,a0,-84 # fac <__etext+0x2b8>
 a20:	01010113          	addi	sp,sp,16
 a24:	a89ff06f          	j	4ac <neorv32_uart0_print>
 a28:	00001537          	lui	a0,0x1
 a2c:	dfc50513          	addi	a0,a0,-516 # dfc <__etext+0x108>
 a30:	a7dff0ef          	jal	ra,4ac <neorv32_uart0_print>
 a34:	fb1ff06f          	j	9e4 <__neorv32_rte_debug_exc_handler+0xcc>
 a38:	00001537          	lui	a0,0x1
 a3c:	e1c50513          	addi	a0,a0,-484 # e1c <__etext+0x128>
 a40:	a6dff0ef          	jal	ra,4ac <neorv32_uart0_print>
 a44:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 a48:	0a07d463          	bgez	a5,af0 <__neorv32_rte_debug_exc_handler+0x1d8>
 a4c:	0017f793          	andi	a5,a5,1
 a50:	08078a63          	beqz	a5,ae4 <__neorv32_rte_debug_exc_handler+0x1cc>
 a54:	00001537          	lui	a0,0x1
 a58:	f6c50513          	addi	a0,a0,-148 # f6c <__etext+0x278>
 a5c:	fd5ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 a60:	00001537          	lui	a0,0x1
 a64:	e3850513          	addi	a0,a0,-456 # e38 <__etext+0x144>
 a68:	fc9ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 a6c:	00001537          	lui	a0,0x1
 a70:	e4c50513          	addi	a0,a0,-436 # e4c <__etext+0x158>
 a74:	fbdff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 a78:	00001537          	lui	a0,0x1
 a7c:	e5850513          	addi	a0,a0,-424 # e58 <__etext+0x164>
 a80:	fb1ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 a84:	00001537          	lui	a0,0x1
 a88:	e7050513          	addi	a0,a0,-400 # e70 <__etext+0x17c>
 a8c:	fb5ff06f          	j	a40 <__neorv32_rte_debug_exc_handler+0x128>
 a90:	00001537          	lui	a0,0x1
 a94:	e8450513          	addi	a0,a0,-380 # e84 <__etext+0x190>
 a98:	f99ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 a9c:	00001537          	lui	a0,0x1
 aa0:	ea050513          	addi	a0,a0,-352 # ea0 <__etext+0x1ac>
 aa4:	f9dff06f          	j	a40 <__neorv32_rte_debug_exc_handler+0x128>
 aa8:	00001537          	lui	a0,0x1
 aac:	eb450513          	addi	a0,a0,-332 # eb4 <__etext+0x1c0>
 ab0:	f81ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 ab4:	00001537          	lui	a0,0x1
 ab8:	ed450513          	addi	a0,a0,-300 # ed4 <__etext+0x1e0>
 abc:	f75ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 ac0:	00001537          	lui	a0,0x1
 ac4:	ef450513          	addi	a0,a0,-268 # ef4 <__etext+0x200>
 ac8:	f69ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 acc:	00001537          	lui	a0,0x1
 ad0:	f1050513          	addi	a0,a0,-240 # f10 <__etext+0x21c>
 ad4:	f5dff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 ad8:	00001537          	lui	a0,0x1
 adc:	f2850513          	addi	a0,a0,-216 # f28 <__etext+0x234>
 ae0:	f51ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 ae4:	00001537          	lui	a0,0x1
 ae8:	f7c50513          	addi	a0,a0,-132 # f7c <__etext+0x288>
 aec:	f45ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 af0:	00001537          	lui	a0,0x1
 af4:	f8c50513          	addi	a0,a0,-116 # f8c <__etext+0x298>
 af8:	f39ff06f          	j	a30 <__neorv32_rte_debug_exc_handler+0x118>
 afc:	00c12083          	lw	ra,12(sp)
 b00:	00812403          	lw	s0,8(sp)
 b04:	00412483          	lw	s1,4(sp)
 b08:	01010113          	addi	sp,sp,16
 b0c:	00008067          	ret

00000b10 <neorv32_rte_exception_uninstall>:
 b10:	01f00793          	li	a5,31
 b14:	02a7e463          	bltu	a5,a0,b3c <neorv32_rte_exception_uninstall+0x2c>
 b18:	800007b7          	lui	a5,0x80000
 b1c:	00878793          	addi	a5,a5,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
 b20:	00251513          	slli	a0,a0,0x2
 b24:	00a78533          	add	a0,a5,a0
 b28:	000017b7          	lui	a5,0x1
 b2c:	91878793          	addi	a5,a5,-1768 # 918 <__neorv32_rte_debug_exc_handler>
 b30:	00f52023          	sw	a5,0(a0)
 b34:	00000513          	li	a0,0
 b38:	00008067          	ret
 b3c:	00100513          	li	a0,1
 b40:	00008067          	ret

00000b44 <neorv32_rte_setup>:
 b44:	ff010113          	addi	sp,sp,-16
 b48:	00112623          	sw	ra,12(sp)
 b4c:	00812423          	sw	s0,8(sp)
 b50:	00912223          	sw	s1,4(sp)
 b54:	6a000793          	li	a5,1696
 b58:	30579073          	csrw	mtvec,a5
 b5c:	00000413          	li	s0,0
 b60:	01d00493          	li	s1,29
 b64:	00040513          	mv	a0,s0
 b68:	00140413          	addi	s0,s0,1
 b6c:	0ff47413          	andi	s0,s0,255
 b70:	fa1ff0ef          	jal	ra,b10 <neorv32_rte_exception_uninstall>
 b74:	fe9418e3          	bne	s0,s1,b64 <neorv32_rte_setup+0x20>
 b78:	00c12083          	lw	ra,12(sp)
 b7c:	00812403          	lw	s0,8(sp)
 b80:	00412483          	lw	s1,4(sp)
 b84:	01010113          	addi	sp,sp,16
 b88:	00008067          	ret

00000b8c <__mulsi3>:
 b8c:	00050613          	mv	a2,a0
 b90:	00000513          	li	a0,0
 b94:	0015f693          	andi	a3,a1,1
 b98:	00068463          	beqz	a3,ba0 <__mulsi3+0x14>
 b9c:	00c50533          	add	a0,a0,a2
 ba0:	0015d593          	srli	a1,a1,0x1
 ba4:	00161613          	slli	a2,a2,0x1
 ba8:	fe0596e3          	bnez	a1,b94 <__mulsi3+0x8>
 bac:	00008067          	ret

00000bb0 <__muldi3>:
 bb0:	00050313          	mv	t1,a0
 bb4:	ff010113          	addi	sp,sp,-16
 bb8:	00060513          	mv	a0,a2
 bbc:	00068893          	mv	a7,a3
 bc0:	00112623          	sw	ra,12(sp)
 bc4:	00030613          	mv	a2,t1
 bc8:	00050693          	mv	a3,a0
 bcc:	00000713          	li	a4,0
 bd0:	00000793          	li	a5,0
 bd4:	00000813          	li	a6,0
 bd8:	0016fe13          	andi	t3,a3,1
 bdc:	00171e93          	slli	t4,a4,0x1
 be0:	000e0c63          	beqz	t3,bf8 <__muldi3+0x48>
 be4:	01060e33          	add	t3,a2,a6
 be8:	010e3833          	sltu	a6,t3,a6
 bec:	00e787b3          	add	a5,a5,a4
 bf0:	00f807b3          	add	a5,a6,a5
 bf4:	000e0813          	mv	a6,t3
 bf8:	01f65713          	srli	a4,a2,0x1f
 bfc:	0016d693          	srli	a3,a3,0x1
 c00:	00eee733          	or	a4,t4,a4
 c04:	00161613          	slli	a2,a2,0x1
 c08:	fc0698e3          	bnez	a3,bd8 <__muldi3+0x28>
 c0c:	00058663          	beqz	a1,c18 <__muldi3+0x68>
 c10:	f7dff0ef          	jal	ra,b8c <__mulsi3>
 c14:	00a787b3          	add	a5,a5,a0
 c18:	00088a63          	beqz	a7,c2c <__muldi3+0x7c>
 c1c:	00030513          	mv	a0,t1
 c20:	00088593          	mv	a1,a7
 c24:	f69ff0ef          	jal	ra,b8c <__mulsi3>
 c28:	00f507b3          	add	a5,a0,a5
 c2c:	00c12083          	lw	ra,12(sp)
 c30:	00080513          	mv	a0,a6
 c34:	00078593          	mv	a1,a5
 c38:	01010113          	addi	sp,sp,16
 c3c:	00008067          	ret

00000c40 <__divsi3>:
 c40:	06054063          	bltz	a0,ca0 <__umodsi3+0x10>
 c44:	0605c663          	bltz	a1,cb0 <__umodsi3+0x20>

00000c48 <__udivsi3>:
 c48:	00058613          	mv	a2,a1
 c4c:	00050593          	mv	a1,a0
 c50:	fff00513          	li	a0,-1
 c54:	02060c63          	beqz	a2,c8c <__udivsi3+0x44>
 c58:	00100693          	li	a3,1
 c5c:	00b67a63          	bgeu	a2,a1,c70 <__udivsi3+0x28>
 c60:	00c05863          	blez	a2,c70 <__udivsi3+0x28>
 c64:	00161613          	slli	a2,a2,0x1
 c68:	00169693          	slli	a3,a3,0x1
 c6c:	feb66ae3          	bltu	a2,a1,c60 <__udivsi3+0x18>
 c70:	00000513          	li	a0,0
 c74:	00c5e663          	bltu	a1,a2,c80 <__udivsi3+0x38>
 c78:	40c585b3          	sub	a1,a1,a2
 c7c:	00d56533          	or	a0,a0,a3
 c80:	0016d693          	srli	a3,a3,0x1
 c84:	00165613          	srli	a2,a2,0x1
 c88:	fe0696e3          	bnez	a3,c74 <__udivsi3+0x2c>
 c8c:	00008067          	ret

00000c90 <__umodsi3>:
 c90:	00008293          	mv	t0,ra
 c94:	fb5ff0ef          	jal	ra,c48 <__udivsi3>
 c98:	00058513          	mv	a0,a1
 c9c:	00028067          	jr	t0
 ca0:	40a00533          	neg	a0,a0
 ca4:	00b04863          	bgtz	a1,cb4 <__umodsi3+0x24>
 ca8:	40b005b3          	neg	a1,a1
 cac:	f9dff06f          	j	c48 <__udivsi3>
 cb0:	40b005b3          	neg	a1,a1
 cb4:	00008293          	mv	t0,ra
 cb8:	f91ff0ef          	jal	ra,c48 <__udivsi3>
 cbc:	40a00533          	neg	a0,a0
 cc0:	00028067          	jr	t0

00000cc4 <__modsi3>:
 cc4:	00008293          	mv	t0,ra
 cc8:	0005ca63          	bltz	a1,cdc <__modsi3+0x18>
 ccc:	00054c63          	bltz	a0,ce4 <__modsi3+0x20>
 cd0:	f79ff0ef          	jal	ra,c48 <__udivsi3>
 cd4:	00058513          	mv	a0,a1
 cd8:	00028067          	jr	t0
 cdc:	40b005b3          	neg	a1,a1
 ce0:	fe0558e3          	bgez	a0,cd0 <__modsi3+0xc>
 ce4:	40a00533          	neg	a0,a0
 ce8:	f61ff0ef          	jal	ra,c48 <__udivsi3>
 cec:	40b00533          	neg	a0,a1
 cf0:	00028067          	jr	t0
