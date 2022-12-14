
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
  e0:	05858593          	addi	a1,a1,88 # 1134 <__crt0_copy_data_src_begin>
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
 184:	fe010113          	addi	sp,sp,-32
 188:	00000613          	li	a2,0
 18c:	00000593          	li	a1,0
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x39cc>
 194:	00112e23          	sw	ra,28(sp)
 198:	00812c23          	sw	s0,24(sp)
 19c:	00912a23          	sw	s1,20(sp)
 1a0:	23c000ef          	jal	ra,3dc <neorv32_uart0_setup>
 1a4:	4ec000ef          	jal	ra,690 <neorv32_gpio_available>
 1a8:	02051463          	bnez	a0,1d0 <main+0x50>
 1ac:	00001537          	lui	a0,0x1
 1b0:	dec50513          	addi	a0,a0,-532 # dec <__etext>
 1b4:	2ec000ef          	jal	ra,4a0 <neorv32_uart0_print>
 1b8:	00100513          	li	a0,1
 1bc:	01c12083          	lw	ra,28(sp)
 1c0:	01812403          	lw	s0,24(sp)
 1c4:	01412483          	lw	s1,20(sp)
 1c8:	02010113          	addi	sp,sp,32
 1cc:	00008067          	ret
 1d0:	26d000ef          	jal	ra,c3c <neorv32_rte_setup>
 1d4:	00001537          	lui	a0,0x1
 1d8:	e1050513          	addi	a0,a0,-496 # e10 <__etext+0x24>
 1dc:	2c4000ef          	jal	ra,4a0 <neorv32_uart0_print>
 1e0:	80010437          	lui	s0,0x80010
 1e4:	00042583          	lw	a1,0(s0) # 80010000 <__ctr0_io_space_begin+0x80010200>
 1e8:	3e800513          	li	a0,1000
 1ec:	00b12623          	sw	a1,12(sp)
 1f0:	4dc000ef          	jal	ra,6cc <neorv32_cpu_delay_ms>
 1f4:	00c12583          	lw	a1,12(sp)
 1f8:	000014b7          	lui	s1,0x1
 1fc:	e3048513          	addi	a0,s1,-464 # e30 <__etext+0x44>
 200:	2f8000ef          	jal	ra,4f8 <neorv32_uart0_printf>
 204:	00440593          	addi	a1,s0,4
 208:	0005a583          	lw	a1,0(a1)
 20c:	3e800513          	li	a0,1000
 210:	00b12623          	sw	a1,12(sp)
 214:	4b8000ef          	jal	ra,6cc <neorv32_cpu_delay_ms>
 218:	00c12583          	lw	a1,12(sp)
 21c:	e3048513          	addi	a0,s1,-464
 220:	2d8000ef          	jal	ra,4f8 <neorv32_uart0_printf>
 224:	00840593          	addi	a1,s0,8
 228:	0005a583          	lw	a1,0(a1)
 22c:	3e800513          	li	a0,1000
 230:	00b12623          	sw	a1,12(sp)
 234:	498000ef          	jal	ra,6cc <neorv32_cpu_delay_ms>
 238:	00c12583          	lw	a1,12(sp)
 23c:	e3048513          	addi	a0,s1,-464
 240:	2b8000ef          	jal	ra,4f8 <neorv32_uart0_printf>
 244:	00c40593          	addi	a1,s0,12
 248:	0005a583          	lw	a1,0(a1)
 24c:	3e800513          	li	a0,1000
 250:	00b12623          	sw	a1,12(sp)
 254:	478000ef          	jal	ra,6cc <neorv32_cpu_delay_ms>
 258:	00c12583          	lw	a1,12(sp)
 25c:	e3048513          	addi	a0,s1,-464
 260:	298000ef          	jal	ra,4f8 <neorv32_uart0_printf>
 264:	c0fff7b7          	lui	a5,0xc0fff
 268:	bed78793          	addi	a5,a5,-1043 # c0ffebed <__ctr0_io_space_begin+0xc0ffeded>
 26c:	00f42023          	sw	a5,0(s0)
 270:	00042583          	lw	a1,0(s0)
 274:	00001537          	lui	a0,0x1
 278:	e5050513          	addi	a0,a0,-432 # e50 <__etext+0x64>
 27c:	27c000ef          	jal	ra,4f8 <neorv32_uart0_printf>
 280:	00000513          	li	a0,0
 284:	f39ff06f          	j	1bc <main+0x3c>

00000288 <__neorv32_uart_itoa>:
 288:	fd010113          	addi	sp,sp,-48
 28c:	02812423          	sw	s0,40(sp)
 290:	02912223          	sw	s1,36(sp)
 294:	03212023          	sw	s2,32(sp)
 298:	01312e23          	sw	s3,28(sp)
 29c:	01412c23          	sw	s4,24(sp)
 2a0:	02112623          	sw	ra,44(sp)
 2a4:	01512a23          	sw	s5,20(sp)
 2a8:	00001a37          	lui	s4,0x1
 2ac:	00050493          	mv	s1,a0
 2b0:	00058413          	mv	s0,a1
 2b4:	00058523          	sb	zero,10(a1)
 2b8:	00000993          	li	s3,0
 2bc:	00410913          	addi	s2,sp,4
 2c0:	e6ca0a13          	addi	s4,s4,-404 # e6c <numbers.1>
 2c4:	00a00593          	li	a1,10
 2c8:	00048513          	mv	a0,s1
 2cc:	2bd000ef          	jal	ra,d88 <__umodsi3>
 2d0:	00aa0533          	add	a0,s4,a0
 2d4:	00054783          	lbu	a5,0(a0)
 2d8:	01390ab3          	add	s5,s2,s3
 2dc:	00048513          	mv	a0,s1
 2e0:	00fa8023          	sb	a5,0(s5)
 2e4:	00a00593          	li	a1,10
 2e8:	259000ef          	jal	ra,d40 <__udivsi3>
 2ec:	00198993          	addi	s3,s3,1
 2f0:	00a00793          	li	a5,10
 2f4:	00050493          	mv	s1,a0
 2f8:	fcf996e3          	bne	s3,a5,2c4 <__neorv32_uart_itoa+0x3c>
 2fc:	00090693          	mv	a3,s2
 300:	00900713          	li	a4,9
 304:	03000613          	li	a2,48
 308:	0096c583          	lbu	a1,9(a3)
 30c:	00070793          	mv	a5,a4
 310:	fff70713          	addi	a4,a4,-1
 314:	01071713          	slli	a4,a4,0x10
 318:	01075713          	srli	a4,a4,0x10
 31c:	00c59a63          	bne	a1,a2,330 <__neorv32_uart_itoa+0xa8>
 320:	000684a3          	sb	zero,9(a3)
 324:	fff68693          	addi	a3,a3,-1
 328:	fe0710e3          	bnez	a4,308 <__neorv32_uart_itoa+0x80>
 32c:	00000793          	li	a5,0
 330:	00f907b3          	add	a5,s2,a5
 334:	00000593          	li	a1,0
 338:	0007c703          	lbu	a4,0(a5)
 33c:	00070c63          	beqz	a4,354 <__neorv32_uart_itoa+0xcc>
 340:	00158693          	addi	a3,a1,1
 344:	00b405b3          	add	a1,s0,a1
 348:	00e58023          	sb	a4,0(a1)
 34c:	01069593          	slli	a1,a3,0x10
 350:	0105d593          	srli	a1,a1,0x10
 354:	fff78713          	addi	a4,a5,-1
 358:	02f91863          	bne	s2,a5,388 <__neorv32_uart_itoa+0x100>
 35c:	00b40433          	add	s0,s0,a1
 360:	00040023          	sb	zero,0(s0)
 364:	02c12083          	lw	ra,44(sp)
 368:	02812403          	lw	s0,40(sp)
 36c:	02412483          	lw	s1,36(sp)
 370:	02012903          	lw	s2,32(sp)
 374:	01c12983          	lw	s3,28(sp)
 378:	01812a03          	lw	s4,24(sp)
 37c:	01412a83          	lw	s5,20(sp)
 380:	03010113          	addi	sp,sp,48
 384:	00008067          	ret
 388:	00070793          	mv	a5,a4
 38c:	fadff06f          	j	338 <__neorv32_uart_itoa+0xb0>

00000390 <__neorv32_uart_tohex>:
 390:	00001637          	lui	a2,0x1
 394:	00758693          	addi	a3,a1,7
 398:	00000713          	li	a4,0
 39c:	e7860613          	addi	a2,a2,-392 # e78 <symbols.0>
 3a0:	02000813          	li	a6,32
 3a4:	00e557b3          	srl	a5,a0,a4
 3a8:	00f7f793          	andi	a5,a5,15
 3ac:	00f607b3          	add	a5,a2,a5
 3b0:	0007c783          	lbu	a5,0(a5)
 3b4:	00470713          	addi	a4,a4,4
 3b8:	fff68693          	addi	a3,a3,-1
 3bc:	00f680a3          	sb	a5,1(a3)
 3c0:	ff0712e3          	bne	a4,a6,3a4 <__neorv32_uart_tohex+0x14>
 3c4:	00058423          	sb	zero,8(a1)
 3c8:	00008067          	ret

000003cc <neorv32_uart0_available>:
 3cc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3d0:	01255513          	srli	a0,a0,0x12
 3d4:	00157513          	andi	a0,a0,1
 3d8:	00008067          	ret

000003dc <neorv32_uart0_setup>:
 3dc:	ff010113          	addi	sp,sp,-16
 3e0:	00812423          	sw	s0,8(sp)
 3e4:	00912223          	sw	s1,4(sp)
 3e8:	00112623          	sw	ra,12(sp)
 3ec:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3f0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 3f4:	00058413          	mv	s0,a1
 3f8:	00151593          	slli	a1,a0,0x1
 3fc:	00078513          	mv	a0,a5
 400:	00060493          	mv	s1,a2
 404:	13d000ef          	jal	ra,d40 <__udivsi3>
 408:	01051513          	slli	a0,a0,0x10
 40c:	000017b7          	lui	a5,0x1
 410:	01055513          	srli	a0,a0,0x10
 414:	00000713          	li	a4,0
 418:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x186>
 41c:	04a7e463          	bltu	a5,a0,464 <neorv32_uart0_setup+0x88>
 420:	0034f793          	andi	a5,s1,3
 424:	00347413          	andi	s0,s0,3
 428:	fff50513          	addi	a0,a0,-1
 42c:	01479793          	slli	a5,a5,0x14
 430:	01641413          	slli	s0,s0,0x16
 434:	00f567b3          	or	a5,a0,a5
 438:	0087e7b3          	or	a5,a5,s0
 43c:	01871713          	slli	a4,a4,0x18
 440:	00c12083          	lw	ra,12(sp)
 444:	00812403          	lw	s0,8(sp)
 448:	00e7e7b3          	or	a5,a5,a4
 44c:	10000737          	lui	a4,0x10000
 450:	00e7e7b3          	or	a5,a5,a4
 454:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 458:	00412483          	lw	s1,4(sp)
 45c:	01010113          	addi	sp,sp,16
 460:	00008067          	ret
 464:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeeca>
 468:	0fd6f693          	andi	a3,a3,253
 46c:	00069a63          	bnez	a3,480 <neorv32_uart0_setup+0xa4>
 470:	00355513          	srli	a0,a0,0x3
 474:	00170713          	addi	a4,a4,1
 478:	0ff77713          	andi	a4,a4,255
 47c:	fa1ff06f          	j	41c <neorv32_uart0_setup+0x40>
 480:	00155513          	srli	a0,a0,0x1
 484:	ff1ff06f          	j	474 <neorv32_uart0_setup+0x98>

00000488 <neorv32_uart0_putc>:
 488:	00040737          	lui	a4,0x40
 48c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 490:	00e7f7b3          	and	a5,a5,a4
 494:	fe079ce3          	bnez	a5,48c <neorv32_uart0_putc+0x4>
 498:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 49c:	00008067          	ret

000004a0 <neorv32_uart0_print>:
 4a0:	ff010113          	addi	sp,sp,-16
 4a4:	00812423          	sw	s0,8(sp)
 4a8:	01212023          	sw	s2,0(sp)
 4ac:	00112623          	sw	ra,12(sp)
 4b0:	00912223          	sw	s1,4(sp)
 4b4:	00050413          	mv	s0,a0
 4b8:	00a00913          	li	s2,10
 4bc:	00044483          	lbu	s1,0(s0)
 4c0:	00140413          	addi	s0,s0,1
 4c4:	00049e63          	bnez	s1,4e0 <neorv32_uart0_print+0x40>
 4c8:	00c12083          	lw	ra,12(sp)
 4cc:	00812403          	lw	s0,8(sp)
 4d0:	00412483          	lw	s1,4(sp)
 4d4:	00012903          	lw	s2,0(sp)
 4d8:	01010113          	addi	sp,sp,16
 4dc:	00008067          	ret
 4e0:	01249663          	bne	s1,s2,4ec <neorv32_uart0_print+0x4c>
 4e4:	00d00513          	li	a0,13
 4e8:	fa1ff0ef          	jal	ra,488 <neorv32_uart0_putc>
 4ec:	00048513          	mv	a0,s1
 4f0:	f99ff0ef          	jal	ra,488 <neorv32_uart0_putc>
 4f4:	fc9ff06f          	j	4bc <neorv32_uart0_print+0x1c>

000004f8 <neorv32_uart0_printf>:
 4f8:	fa010113          	addi	sp,sp,-96
 4fc:	04f12a23          	sw	a5,84(sp)
 500:	04410793          	addi	a5,sp,68
 504:	02812c23          	sw	s0,56(sp)
 508:	03212823          	sw	s2,48(sp)
 50c:	03412423          	sw	s4,40(sp)
 510:	03512223          	sw	s5,36(sp)
 514:	03612023          	sw	s6,32(sp)
 518:	01712e23          	sw	s7,28(sp)
 51c:	01812c23          	sw	s8,24(sp)
 520:	01912a23          	sw	s9,20(sp)
 524:	02112e23          	sw	ra,60(sp)
 528:	02912a23          	sw	s1,52(sp)
 52c:	03312623          	sw	s3,44(sp)
 530:	00050413          	mv	s0,a0
 534:	04b12223          	sw	a1,68(sp)
 538:	04c12423          	sw	a2,72(sp)
 53c:	04d12623          	sw	a3,76(sp)
 540:	04e12823          	sw	a4,80(sp)
 544:	05012c23          	sw	a6,88(sp)
 548:	05112e23          	sw	a7,92(sp)
 54c:	00f12023          	sw	a5,0(sp)
 550:	02500a13          	li	s4,37
 554:	00a00a93          	li	s5,10
 558:	07300913          	li	s2,115
 55c:	07500b13          	li	s6,117
 560:	07800b93          	li	s7,120
 564:	06300c13          	li	s8,99
 568:	06900c93          	li	s9,105
 56c:	00044483          	lbu	s1,0(s0)
 570:	02049c63          	bnez	s1,5a8 <neorv32_uart0_printf+0xb0>
 574:	03c12083          	lw	ra,60(sp)
 578:	03812403          	lw	s0,56(sp)
 57c:	03412483          	lw	s1,52(sp)
 580:	03012903          	lw	s2,48(sp)
 584:	02c12983          	lw	s3,44(sp)
 588:	02812a03          	lw	s4,40(sp)
 58c:	02412a83          	lw	s5,36(sp)
 590:	02012b03          	lw	s6,32(sp)
 594:	01c12b83          	lw	s7,28(sp)
 598:	01812c03          	lw	s8,24(sp)
 59c:	01412c83          	lw	s9,20(sp)
 5a0:	06010113          	addi	sp,sp,96
 5a4:	00008067          	ret
 5a8:	0d449863          	bne	s1,s4,678 <neorv32_uart0_printf+0x180>
 5ac:	00240993          	addi	s3,s0,2
 5b0:	00144403          	lbu	s0,1(s0)
 5b4:	05240263          	beq	s0,s2,5f8 <neorv32_uart0_printf+0x100>
 5b8:	00896e63          	bltu	s2,s0,5d4 <neorv32_uart0_printf+0xdc>
 5bc:	05840c63          	beq	s0,s8,614 <neorv32_uart0_printf+0x11c>
 5c0:	07940663          	beq	s0,s9,62c <neorv32_uart0_printf+0x134>
 5c4:	02500513          	li	a0,37
 5c8:	ec1ff0ef          	jal	ra,488 <neorv32_uart0_putc>
 5cc:	00040513          	mv	a0,s0
 5d0:	0540006f          	j	624 <neorv32_uart0_printf+0x12c>
 5d4:	09640663          	beq	s0,s6,660 <neorv32_uart0_printf+0x168>
 5d8:	ff7416e3          	bne	s0,s7,5c4 <neorv32_uart0_printf+0xcc>
 5dc:	00012783          	lw	a5,0(sp)
 5e0:	00410593          	addi	a1,sp,4
 5e4:	0007a503          	lw	a0,0(a5)
 5e8:	00478713          	addi	a4,a5,4
 5ec:	00e12023          	sw	a4,0(sp)
 5f0:	da1ff0ef          	jal	ra,390 <__neorv32_uart_tohex>
 5f4:	0640006f          	j	658 <neorv32_uart0_printf+0x160>
 5f8:	00012783          	lw	a5,0(sp)
 5fc:	0007a503          	lw	a0,0(a5)
 600:	00478713          	addi	a4,a5,4
 604:	00e12023          	sw	a4,0(sp)
 608:	e99ff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 60c:	00098413          	mv	s0,s3
 610:	f5dff06f          	j	56c <neorv32_uart0_printf+0x74>
 614:	00012783          	lw	a5,0(sp)
 618:	0007c503          	lbu	a0,0(a5)
 61c:	00478713          	addi	a4,a5,4
 620:	00e12023          	sw	a4,0(sp)
 624:	e65ff0ef          	jal	ra,488 <neorv32_uart0_putc>
 628:	fe5ff06f          	j	60c <neorv32_uart0_printf+0x114>
 62c:	00012783          	lw	a5,0(sp)
 630:	0007a403          	lw	s0,0(a5)
 634:	00478713          	addi	a4,a5,4
 638:	00e12023          	sw	a4,0(sp)
 63c:	00045863          	bgez	s0,64c <neorv32_uart0_printf+0x154>
 640:	02d00513          	li	a0,45
 644:	40800433          	neg	s0,s0
 648:	e41ff0ef          	jal	ra,488 <neorv32_uart0_putc>
 64c:	00410593          	addi	a1,sp,4
 650:	00040513          	mv	a0,s0
 654:	c35ff0ef          	jal	ra,288 <__neorv32_uart_itoa>
 658:	00410513          	addi	a0,sp,4
 65c:	fadff06f          	j	608 <neorv32_uart0_printf+0x110>
 660:	00012783          	lw	a5,0(sp)
 664:	00410593          	addi	a1,sp,4
 668:	00478713          	addi	a4,a5,4
 66c:	0007a503          	lw	a0,0(a5)
 670:	00e12023          	sw	a4,0(sp)
 674:	fe1ff06f          	j	654 <neorv32_uart0_printf+0x15c>
 678:	01549663          	bne	s1,s5,684 <neorv32_uart0_printf+0x18c>
 67c:	00d00513          	li	a0,13
 680:	e09ff0ef          	jal	ra,488 <neorv32_uart0_putc>
 684:	00140993          	addi	s3,s0,1
 688:	00048513          	mv	a0,s1
 68c:	f99ff06f          	j	624 <neorv32_uart0_printf+0x12c>

00000690 <neorv32_gpio_available>:
 690:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 694:	01055513          	srli	a0,a0,0x10
 698:	00157513          	andi	a0,a0,1
 69c:	00008067          	ret

000006a0 <neorv32_cpu_get_systime>:
 6a0:	ff010113          	addi	sp,sp,-16
 6a4:	c81026f3          	rdtimeh	a3
 6a8:	c0102773          	rdtime	a4
 6ac:	c81027f3          	rdtimeh	a5
 6b0:	fed79ae3          	bne	a5,a3,6a4 <neorv32_cpu_get_systime+0x4>
 6b4:	00e12023          	sw	a4,0(sp)
 6b8:	00f12223          	sw	a5,4(sp)
 6bc:	00012503          	lw	a0,0(sp)
 6c0:	00412583          	lw	a1,4(sp)
 6c4:	01010113          	addi	sp,sp,16
 6c8:	00008067          	ret

000006cc <neorv32_cpu_delay_ms>:
 6cc:	fd010113          	addi	sp,sp,-48
 6d0:	00a12623          	sw	a0,12(sp)
 6d4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 6d8:	3e800593          	li	a1,1000
 6dc:	02112623          	sw	ra,44(sp)
 6e0:	02812423          	sw	s0,40(sp)
 6e4:	02912223          	sw	s1,36(sp)
 6e8:	03212023          	sw	s2,32(sp)
 6ec:	01312e23          	sw	s3,28(sp)
 6f0:	650000ef          	jal	ra,d40 <__udivsi3>
 6f4:	00c12603          	lw	a2,12(sp)
 6f8:	00000693          	li	a3,0
 6fc:	00000593          	li	a1,0
 700:	5a8000ef          	jal	ra,ca8 <__muldi3>
 704:	00050413          	mv	s0,a0
 708:	00058993          	mv	s3,a1
 70c:	f95ff0ef          	jal	ra,6a0 <neorv32_cpu_get_systime>
 710:	00058913          	mv	s2,a1
 714:	00050493          	mv	s1,a0
 718:	f89ff0ef          	jal	ra,6a0 <neorv32_cpu_get_systime>
 71c:	00b96663          	bltu	s2,a1,728 <neorv32_cpu_delay_ms+0x5c>
 720:	05259263          	bne	a1,s2,764 <neorv32_cpu_delay_ms+0x98>
 724:	04a4f063          	bgeu	s1,a0,764 <neorv32_cpu_delay_ms+0x98>
 728:	008484b3          	add	s1,s1,s0
 72c:	0084b433          	sltu	s0,s1,s0
 730:	01390933          	add	s2,s2,s3
 734:	01240433          	add	s0,s0,s2
 738:	f69ff0ef          	jal	ra,6a0 <neorv32_cpu_get_systime>
 73c:	fe85eee3          	bltu	a1,s0,738 <neorv32_cpu_delay_ms+0x6c>
 740:	00b41463          	bne	s0,a1,748 <neorv32_cpu_delay_ms+0x7c>
 744:	fe956ae3          	bltu	a0,s1,738 <neorv32_cpu_delay_ms+0x6c>
 748:	02c12083          	lw	ra,44(sp)
 74c:	02812403          	lw	s0,40(sp)
 750:	02412483          	lw	s1,36(sp)
 754:	02012903          	lw	s2,32(sp)
 758:	01c12983          	lw	s3,28(sp)
 75c:	03010113          	addi	sp,sp,48
 760:	00008067          	ret
 764:	01c99913          	slli	s2,s3,0x1c
 768:	00445413          	srli	s0,s0,0x4
 76c:	00896433          	or	s0,s2,s0

00000770 <__neorv32_cpu_delay_ms_start>:
 770:	00040a63          	beqz	s0,784 <__neorv32_cpu_delay_ms_end>
 774:	00040863          	beqz	s0,784 <__neorv32_cpu_delay_ms_end>
 778:	fff40413          	addi	s0,s0,-1
 77c:	00000013          	nop
 780:	ff1ff06f          	j	770 <__neorv32_cpu_delay_ms_start>

00000784 <__neorv32_cpu_delay_ms_end>:
 784:	fc5ff06f          	j	748 <neorv32_cpu_delay_ms+0x7c>
 788:	0000                	unimp
 78a:	0000                	unimp
 78c:	0000                	unimp
 78e:	0000                	unimp

00000790 <__neorv32_rte_core>:
 790:	fc010113          	addi	sp,sp,-64
 794:	02112e23          	sw	ra,60(sp)
 798:	02512c23          	sw	t0,56(sp)
 79c:	02612a23          	sw	t1,52(sp)
 7a0:	02712823          	sw	t2,48(sp)
 7a4:	02a12623          	sw	a0,44(sp)
 7a8:	02b12423          	sw	a1,40(sp)
 7ac:	02c12223          	sw	a2,36(sp)
 7b0:	02d12023          	sw	a3,32(sp)
 7b4:	00e12e23          	sw	a4,28(sp)
 7b8:	00f12c23          	sw	a5,24(sp)
 7bc:	01012a23          	sw	a6,20(sp)
 7c0:	01112823          	sw	a7,16(sp)
 7c4:	01c12623          	sw	t3,12(sp)
 7c8:	01d12423          	sw	t4,8(sp)
 7cc:	01e12223          	sw	t5,4(sp)
 7d0:	01f12023          	sw	t6,0(sp)
 7d4:	34102773          	csrr	a4,mepc
 7d8:	34071073          	csrw	mscratch,a4
 7dc:	342027f3          	csrr	a5,mcause
 7e0:	0807ca63          	bltz	a5,874 <__neorv32_rte_core+0xe4>
 7e4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3eecc>
 7e8:	00300593          	li	a1,3
 7ec:	0036f693          	andi	a3,a3,3
 7f0:	00270613          	addi	a2,a4,2
 7f4:	00b69463          	bne	a3,a1,7fc <__neorv32_rte_core+0x6c>
 7f8:	00470613          	addi	a2,a4,4
 7fc:	34161073          	csrw	mepc,a2
 800:	00b00713          	li	a4,11
 804:	04f77c63          	bgeu	a4,a5,85c <__neorv32_rte_core+0xcc>
 808:	000017b7          	lui	a5,0x1
 80c:	a1078793          	addi	a5,a5,-1520 # a10 <__neorv32_rte_debug_exc_handler>
 810:	000780e7          	jalr	a5
 814:	03c12083          	lw	ra,60(sp)
 818:	03812283          	lw	t0,56(sp)
 81c:	03412303          	lw	t1,52(sp)
 820:	03012383          	lw	t2,48(sp)
 824:	02c12503          	lw	a0,44(sp)
 828:	02812583          	lw	a1,40(sp)
 82c:	02412603          	lw	a2,36(sp)
 830:	02012683          	lw	a3,32(sp)
 834:	01c12703          	lw	a4,28(sp)
 838:	01812783          	lw	a5,24(sp)
 83c:	01412803          	lw	a6,20(sp)
 840:	01012883          	lw	a7,16(sp)
 844:	00c12e03          	lw	t3,12(sp)
 848:	00812e83          	lw	t4,8(sp)
 84c:	00412f03          	lw	t5,4(sp)
 850:	00012f83          	lw	t6,0(sp)
 854:	04010113          	addi	sp,sp,64
 858:	30200073          	mret
 85c:	00001737          	lui	a4,0x1
 860:	00279793          	slli	a5,a5,0x2
 864:	e8c70713          	addi	a4,a4,-372 # e8c <symbols.0+0x14>
 868:	00e787b3          	add	a5,a5,a4
 86c:	0007a783          	lw	a5,0(a5)
 870:	00078067          	jr	a5
 874:	80000737          	lui	a4,0x80000
 878:	ffd74713          	xori	a4,a4,-3
 87c:	00e787b3          	add	a5,a5,a4
 880:	01c00713          	li	a4,28
 884:	f8f762e3          	bltu	a4,a5,808 <__neorv32_rte_core+0x78>
 888:	00001737          	lui	a4,0x1
 88c:	00279793          	slli	a5,a5,0x2
 890:	ebc70713          	addi	a4,a4,-324 # ebc <symbols.0+0x44>
 894:	00e787b3          	add	a5,a5,a4
 898:	0007a783          	lw	a5,0(a5)
 89c:	00078067          	jr	a5
 8a0:	800007b7          	lui	a5,0x80000
 8a4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 8a8:	f69ff06f          	j	810 <__neorv32_rte_core+0x80>
 8ac:	800007b7          	lui	a5,0x80000
 8b0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 8b4:	f5dff06f          	j	810 <__neorv32_rte_core+0x80>
 8b8:	800007b7          	lui	a5,0x80000
 8bc:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 8c0:	f51ff06f          	j	810 <__neorv32_rte_core+0x80>
 8c4:	800007b7          	lui	a5,0x80000
 8c8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 8cc:	f45ff06f          	j	810 <__neorv32_rte_core+0x80>
 8d0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 8d4:	f3dff06f          	j	810 <__neorv32_rte_core+0x80>
 8d8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 8dc:	f35ff06f          	j	810 <__neorv32_rte_core+0x80>
 8e0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 8e4:	f2dff06f          	j	810 <__neorv32_rte_core+0x80>
 8e8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 8ec:	f25ff06f          	j	810 <__neorv32_rte_core+0x80>
 8f0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 8f4:	f1dff06f          	j	810 <__neorv32_rte_core+0x80>
 8f8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 8fc:	f15ff06f          	j	810 <__neorv32_rte_core+0x80>
 900:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 904:	f0dff06f          	j	810 <__neorv32_rte_core+0x80>
 908:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 90c:	f05ff06f          	j	810 <__neorv32_rte_core+0x80>
 910:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 914:	efdff06f          	j	810 <__neorv32_rte_core+0x80>
 918:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 91c:	ef5ff06f          	j	810 <__neorv32_rte_core+0x80>
 920:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 924:	eedff06f          	j	810 <__neorv32_rte_core+0x80>
 928:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 92c:	ee5ff06f          	j	810 <__neorv32_rte_core+0x80>
 930:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 934:	eddff06f          	j	810 <__neorv32_rte_core+0x80>
 938:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 93c:	ed5ff06f          	j	810 <__neorv32_rte_core+0x80>
 940:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 944:	ecdff06f          	j	810 <__neorv32_rte_core+0x80>
 948:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 94c:	ec5ff06f          	j	810 <__neorv32_rte_core+0x80>
 950:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 954:	ebdff06f          	j	810 <__neorv32_rte_core+0x80>
 958:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 95c:	eb5ff06f          	j	810 <__neorv32_rte_core+0x80>
 960:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 964:	eadff06f          	j	810 <__neorv32_rte_core+0x80>
 968:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 96c:	ea5ff06f          	j	810 <__neorv32_rte_core+0x80>
 970:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 974:	e9dff06f          	j	810 <__neorv32_rte_core+0x80>
 978:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 97c:	e95ff06f          	j	810 <__neorv32_rte_core+0x80>
 980:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 984:	e8dff06f          	j	810 <__neorv32_rte_core+0x80>
 988:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 98c:	e85ff06f          	j	810 <__neorv32_rte_core+0x80>
 990:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 994:	e7dff06f          	j	810 <__neorv32_rte_core+0x80>
 998:	0000                	unimp
 99a:	0000                	unimp
 99c:	0000                	unimp
 99e:	0000                	unimp

000009a0 <__neorv32_rte_print_hex_word>:
 9a0:	fe010113          	addi	sp,sp,-32
 9a4:	01212823          	sw	s2,16(sp)
 9a8:	00050913          	mv	s2,a0
 9ac:	00001537          	lui	a0,0x1
 9b0:	00912a23          	sw	s1,20(sp)
 9b4:	f3050513          	addi	a0,a0,-208 # f30 <symbols.0+0xb8>
 9b8:	000014b7          	lui	s1,0x1
 9bc:	00812c23          	sw	s0,24(sp)
 9c0:	01312623          	sw	s3,12(sp)
 9c4:	00112e23          	sw	ra,28(sp)
 9c8:	01c00413          	li	s0,28
 9cc:	ad5ff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 9d0:	12448493          	addi	s1,s1,292 # 1124 <hex_symbols.0>
 9d4:	ffc00993          	li	s3,-4
 9d8:	008957b3          	srl	a5,s2,s0
 9dc:	00f7f793          	andi	a5,a5,15
 9e0:	00f487b3          	add	a5,s1,a5
 9e4:	0007c503          	lbu	a0,0(a5)
 9e8:	ffc40413          	addi	s0,s0,-4
 9ec:	a9dff0ef          	jal	ra,488 <neorv32_uart0_putc>
 9f0:	ff3414e3          	bne	s0,s3,9d8 <__neorv32_rte_print_hex_word+0x38>
 9f4:	01c12083          	lw	ra,28(sp)
 9f8:	01812403          	lw	s0,24(sp)
 9fc:	01412483          	lw	s1,20(sp)
 a00:	01012903          	lw	s2,16(sp)
 a04:	00c12983          	lw	s3,12(sp)
 a08:	02010113          	addi	sp,sp,32
 a0c:	00008067          	ret

00000a10 <__neorv32_rte_debug_exc_handler>:
 a10:	ff010113          	addi	sp,sp,-16
 a14:	00112623          	sw	ra,12(sp)
 a18:	00812423          	sw	s0,8(sp)
 a1c:	00912223          	sw	s1,4(sp)
 a20:	9adff0ef          	jal	ra,3cc <neorv32_uart0_available>
 a24:	1c050863          	beqz	a0,bf4 <__neorv32_rte_debug_exc_handler+0x1e4>
 a28:	00001537          	lui	a0,0x1
 a2c:	f3450513          	addi	a0,a0,-204 # f34 <symbols.0+0xbc>
 a30:	a71ff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 a34:	34202473          	csrr	s0,mcause
 a38:	00900713          	li	a4,9
 a3c:	00f47793          	andi	a5,s0,15
 a40:	03078493          	addi	s1,a5,48
 a44:	00f77463          	bgeu	a4,a5,a4c <__neorv32_rte_debug_exc_handler+0x3c>
 a48:	05778493          	addi	s1,a5,87
 a4c:	00b00793          	li	a5,11
 a50:	0087ee63          	bltu	a5,s0,a6c <__neorv32_rte_debug_exc_handler+0x5c>
 a54:	00001737          	lui	a4,0x1
 a58:	00241793          	slli	a5,s0,0x2
 a5c:	0f470713          	addi	a4,a4,244 # 10f4 <symbols.0+0x27c>
 a60:	00e787b3          	add	a5,a5,a4
 a64:	0007a783          	lw	a5,0(a5)
 a68:	00078067          	jr	a5
 a6c:	800007b7          	lui	a5,0x80000
 a70:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 a74:	14e40e63          	beq	s0,a4,bd0 <__neorv32_rte_debug_exc_handler+0x1c0>
 a78:	02876a63          	bltu	a4,s0,aac <__neorv32_rte_debug_exc_handler+0x9c>
 a7c:	00378713          	addi	a4,a5,3
 a80:	12e40c63          	beq	s0,a4,bb8 <__neorv32_rte_debug_exc_handler+0x1a8>
 a84:	00778793          	addi	a5,a5,7
 a88:	12f40e63          	beq	s0,a5,bc4 <__neorv32_rte_debug_exc_handler+0x1b4>
 a8c:	00001537          	lui	a0,0x1
 a90:	09450513          	addi	a0,a0,148 # 1094 <symbols.0+0x21c>
 a94:	a0dff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 a98:	00040513          	mv	a0,s0
 a9c:	f05ff0ef          	jal	ra,9a0 <__neorv32_rte_print_hex_word>
 aa0:	00100793          	li	a5,1
 aa4:	08f40c63          	beq	s0,a5,b3c <__neorv32_rte_debug_exc_handler+0x12c>
 aa8:	0280006f          	j	ad0 <__neorv32_rte_debug_exc_handler+0xc0>
 aac:	ff07c793          	xori	a5,a5,-16
 ab0:	00f407b3          	add	a5,s0,a5
 ab4:	00f00713          	li	a4,15
 ab8:	fcf76ae3          	bltu	a4,a5,a8c <__neorv32_rte_debug_exc_handler+0x7c>
 abc:	00001537          	lui	a0,0x1
 ac0:	08450513          	addi	a0,a0,132 # 1084 <symbols.0+0x20c>
 ac4:	9ddff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 ac8:	00048513          	mv	a0,s1
 acc:	9bdff0ef          	jal	ra,488 <neorv32_uart0_putc>
 ad0:	ffd47413          	andi	s0,s0,-3
 ad4:	00500793          	li	a5,5
 ad8:	06f40263          	beq	s0,a5,b3c <__neorv32_rte_debug_exc_handler+0x12c>
 adc:	00001537          	lui	a0,0x1
 ae0:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x260>
 ae4:	9bdff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 ae8:	34002573          	csrr	a0,mscratch
 aec:	eb5ff0ef          	jal	ra,9a0 <__neorv32_rte_print_hex_word>
 af0:	00001537          	lui	a0,0x1
 af4:	0e050513          	addi	a0,a0,224 # 10e0 <symbols.0+0x268>
 af8:	9a9ff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 afc:	34302573          	csrr	a0,mtval
 b00:	ea1ff0ef          	jal	ra,9a0 <__neorv32_rte_print_hex_word>
 b04:	00812403          	lw	s0,8(sp)
 b08:	00c12083          	lw	ra,12(sp)
 b0c:	00412483          	lw	s1,4(sp)
 b10:	00001537          	lui	a0,0x1
 b14:	0ec50513          	addi	a0,a0,236 # 10ec <symbols.0+0x274>
 b18:	01010113          	addi	sp,sp,16
 b1c:	985ff06f          	j	4a0 <neorv32_uart0_print>
 b20:	00001537          	lui	a0,0x1
 b24:	f3c50513          	addi	a0,a0,-196 # f3c <symbols.0+0xc4>
 b28:	979ff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 b2c:	fb1ff06f          	j	adc <__neorv32_rte_debug_exc_handler+0xcc>
 b30:	00001537          	lui	a0,0x1
 b34:	f5c50513          	addi	a0,a0,-164 # f5c <symbols.0+0xe4>
 b38:	969ff0ef          	jal	ra,4a0 <neorv32_uart0_print>
 b3c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 b40:	0a07d463          	bgez	a5,be8 <__neorv32_rte_debug_exc_handler+0x1d8>
 b44:	0017f793          	andi	a5,a5,1
 b48:	08078a63          	beqz	a5,bdc <__neorv32_rte_debug_exc_handler+0x1cc>
 b4c:	00001537          	lui	a0,0x1
 b50:	0ac50513          	addi	a0,a0,172 # 10ac <symbols.0+0x234>
 b54:	fd5ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 b58:	00001537          	lui	a0,0x1
 b5c:	f7850513          	addi	a0,a0,-136 # f78 <symbols.0+0x100>
 b60:	fc9ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 b64:	00001537          	lui	a0,0x1
 b68:	f8c50513          	addi	a0,a0,-116 # f8c <symbols.0+0x114>
 b6c:	fbdff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 b70:	00001537          	lui	a0,0x1
 b74:	f9850513          	addi	a0,a0,-104 # f98 <symbols.0+0x120>
 b78:	fb1ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 b7c:	00001537          	lui	a0,0x1
 b80:	fb050513          	addi	a0,a0,-80 # fb0 <symbols.0+0x138>
 b84:	fb5ff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x128>
 b88:	00001537          	lui	a0,0x1
 b8c:	fc450513          	addi	a0,a0,-60 # fc4 <symbols.0+0x14c>
 b90:	f99ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 b94:	00001537          	lui	a0,0x1
 b98:	fe050513          	addi	a0,a0,-32 # fe0 <symbols.0+0x168>
 b9c:	f9dff06f          	j	b38 <__neorv32_rte_debug_exc_handler+0x128>
 ba0:	00001537          	lui	a0,0x1
 ba4:	ff450513          	addi	a0,a0,-12 # ff4 <symbols.0+0x17c>
 ba8:	f81ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 bac:	00001537          	lui	a0,0x1
 bb0:	01450513          	addi	a0,a0,20 # 1014 <symbols.0+0x19c>
 bb4:	f75ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 bb8:	00001537          	lui	a0,0x1
 bbc:	03450513          	addi	a0,a0,52 # 1034 <symbols.0+0x1bc>
 bc0:	f69ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 bc4:	00001537          	lui	a0,0x1
 bc8:	05050513          	addi	a0,a0,80 # 1050 <symbols.0+0x1d8>
 bcc:	f5dff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 bd0:	00001537          	lui	a0,0x1
 bd4:	06850513          	addi	a0,a0,104 # 1068 <symbols.0+0x1f0>
 bd8:	f51ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 bdc:	00001537          	lui	a0,0x1
 be0:	0bc50513          	addi	a0,a0,188 # 10bc <symbols.0+0x244>
 be4:	f45ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 be8:	00001537          	lui	a0,0x1
 bec:	0cc50513          	addi	a0,a0,204 # 10cc <symbols.0+0x254>
 bf0:	f39ff06f          	j	b28 <__neorv32_rte_debug_exc_handler+0x118>
 bf4:	00c12083          	lw	ra,12(sp)
 bf8:	00812403          	lw	s0,8(sp)
 bfc:	00412483          	lw	s1,4(sp)
 c00:	01010113          	addi	sp,sp,16
 c04:	00008067          	ret

00000c08 <neorv32_rte_exception_uninstall>:
 c08:	01f00793          	li	a5,31
 c0c:	02a7e463          	bltu	a5,a0,c34 <neorv32_rte_exception_uninstall+0x2c>
 c10:	800007b7          	lui	a5,0x80000
 c14:	00078793          	mv	a5,a5
 c18:	00251513          	slli	a0,a0,0x2
 c1c:	00a78533          	add	a0,a5,a0
 c20:	000017b7          	lui	a5,0x1
 c24:	a1078793          	addi	a5,a5,-1520 # a10 <__neorv32_rte_debug_exc_handler>
 c28:	00f52023          	sw	a5,0(a0)
 c2c:	00000513          	li	a0,0
 c30:	00008067          	ret
 c34:	00100513          	li	a0,1
 c38:	00008067          	ret

00000c3c <neorv32_rte_setup>:
 c3c:	ff010113          	addi	sp,sp,-16
 c40:	00112623          	sw	ra,12(sp)
 c44:	00812423          	sw	s0,8(sp)
 c48:	00912223          	sw	s1,4(sp)
 c4c:	79000793          	li	a5,1936
 c50:	30579073          	csrw	mtvec,a5
 c54:	00000413          	li	s0,0
 c58:	01d00493          	li	s1,29
 c5c:	00040513          	mv	a0,s0
 c60:	00140413          	addi	s0,s0,1
 c64:	0ff47413          	andi	s0,s0,255
 c68:	fa1ff0ef          	jal	ra,c08 <neorv32_rte_exception_uninstall>
 c6c:	fe9418e3          	bne	s0,s1,c5c <neorv32_rte_setup+0x20>
 c70:	00c12083          	lw	ra,12(sp)
 c74:	00812403          	lw	s0,8(sp)
 c78:	00412483          	lw	s1,4(sp)
 c7c:	01010113          	addi	sp,sp,16
 c80:	00008067          	ret

00000c84 <__mulsi3>:
 c84:	00050613          	mv	a2,a0
 c88:	00000513          	li	a0,0
 c8c:	0015f693          	andi	a3,a1,1
 c90:	00068463          	beqz	a3,c98 <__mulsi3+0x14>
 c94:	00c50533          	add	a0,a0,a2
 c98:	0015d593          	srli	a1,a1,0x1
 c9c:	00161613          	slli	a2,a2,0x1
 ca0:	fe0596e3          	bnez	a1,c8c <__mulsi3+0x8>
 ca4:	00008067          	ret

00000ca8 <__muldi3>:
 ca8:	00050313          	mv	t1,a0
 cac:	ff010113          	addi	sp,sp,-16
 cb0:	00060513          	mv	a0,a2
 cb4:	00068893          	mv	a7,a3
 cb8:	00112623          	sw	ra,12(sp)
 cbc:	00030613          	mv	a2,t1
 cc0:	00050693          	mv	a3,a0
 cc4:	00000713          	li	a4,0
 cc8:	00000793          	li	a5,0
 ccc:	00000813          	li	a6,0
 cd0:	0016fe13          	andi	t3,a3,1
 cd4:	00171e93          	slli	t4,a4,0x1
 cd8:	000e0c63          	beqz	t3,cf0 <__muldi3+0x48>
 cdc:	01060e33          	add	t3,a2,a6
 ce0:	010e3833          	sltu	a6,t3,a6
 ce4:	00e787b3          	add	a5,a5,a4
 ce8:	00f807b3          	add	a5,a6,a5
 cec:	000e0813          	mv	a6,t3
 cf0:	01f65713          	srli	a4,a2,0x1f
 cf4:	0016d693          	srli	a3,a3,0x1
 cf8:	00eee733          	or	a4,t4,a4
 cfc:	00161613          	slli	a2,a2,0x1
 d00:	fc0698e3          	bnez	a3,cd0 <__muldi3+0x28>
 d04:	00058663          	beqz	a1,d10 <__muldi3+0x68>
 d08:	f7dff0ef          	jal	ra,c84 <__mulsi3>
 d0c:	00a787b3          	add	a5,a5,a0
 d10:	00088a63          	beqz	a7,d24 <__muldi3+0x7c>
 d14:	00030513          	mv	a0,t1
 d18:	00088593          	mv	a1,a7
 d1c:	f69ff0ef          	jal	ra,c84 <__mulsi3>
 d20:	00f507b3          	add	a5,a0,a5
 d24:	00c12083          	lw	ra,12(sp)
 d28:	00080513          	mv	a0,a6
 d2c:	00078593          	mv	a1,a5
 d30:	01010113          	addi	sp,sp,16
 d34:	00008067          	ret

00000d38 <__divsi3>:
 d38:	06054063          	bltz	a0,d98 <__umodsi3+0x10>
 d3c:	0605c663          	bltz	a1,da8 <__umodsi3+0x20>

00000d40 <__udivsi3>:
 d40:	00058613          	mv	a2,a1
 d44:	00050593          	mv	a1,a0
 d48:	fff00513          	li	a0,-1
 d4c:	02060c63          	beqz	a2,d84 <__udivsi3+0x44>
 d50:	00100693          	li	a3,1
 d54:	00b67a63          	bgeu	a2,a1,d68 <__udivsi3+0x28>
 d58:	00c05863          	blez	a2,d68 <__udivsi3+0x28>
 d5c:	00161613          	slli	a2,a2,0x1
 d60:	00169693          	slli	a3,a3,0x1
 d64:	feb66ae3          	bltu	a2,a1,d58 <__udivsi3+0x18>
 d68:	00000513          	li	a0,0
 d6c:	00c5e663          	bltu	a1,a2,d78 <__udivsi3+0x38>
 d70:	40c585b3          	sub	a1,a1,a2
 d74:	00d56533          	or	a0,a0,a3
 d78:	0016d693          	srli	a3,a3,0x1
 d7c:	00165613          	srli	a2,a2,0x1
 d80:	fe0696e3          	bnez	a3,d6c <__udivsi3+0x2c>
 d84:	00008067          	ret

00000d88 <__umodsi3>:
 d88:	00008293          	mv	t0,ra
 d8c:	fb5ff0ef          	jal	ra,d40 <__udivsi3>
 d90:	00058513          	mv	a0,a1
 d94:	00028067          	jr	t0
 d98:	40a00533          	neg	a0,a0
 d9c:	00b04863          	bgtz	a1,dac <__umodsi3+0x24>
 da0:	40b005b3          	neg	a1,a1
 da4:	f9dff06f          	j	d40 <__udivsi3>
 da8:	40b005b3          	neg	a1,a1
 dac:	00008293          	mv	t0,ra
 db0:	f91ff0ef          	jal	ra,d40 <__udivsi3>
 db4:	40a00533          	neg	a0,a0
 db8:	00028067          	jr	t0

00000dbc <__modsi3>:
 dbc:	00008293          	mv	t0,ra
 dc0:	0005ca63          	bltz	a1,dd4 <__modsi3+0x18>
 dc4:	00054c63          	bltz	a0,ddc <__modsi3+0x20>
 dc8:	f79ff0ef          	jal	ra,d40 <__udivsi3>
 dcc:	00058513          	mv	a0,a1
 dd0:	00028067          	jr	t0
 dd4:	40b005b3          	neg	a1,a1
 dd8:	fe0558e3          	bgez	a0,dc8 <__modsi3+0xc>
 ddc:	40a00533          	neg	a0,a0
 de0:	f61ff0ef          	jal	ra,d40 <__udivsi3>
 de4:	40b00533          	neg	a0,a1
 de8:	00028067          	jr	t0
