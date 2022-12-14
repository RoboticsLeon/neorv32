
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
  e0:	ed458593          	addi	a1,a1,-300 # fb0 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3b50>
 194:	00112e23          	sw	ra,28(sp)
 198:	00812c23          	sw	s0,24(sp)
 19c:	00912a23          	sw	s1,20(sp)
 1a0:	01212823          	sw	s2,16(sp)
 1a4:	01312623          	sw	s3,12(sp)
 1a8:	01412423          	sw	s4,8(sp)
 1ac:	250000ef          	jal	ra,3fc <neorv32_uart0_setup>
 1b0:	500000ef          	jal	ra,6b0 <neorv32_gpio_available>
 1b4:	02051a63          	bnez	a0,1e8 <main+0x68>
 1b8:	00001537          	lui	a0,0x1
 1bc:	c6850513          	addi	a0,a0,-920 # c68 <__etext>
 1c0:	300000ef          	jal	ra,4c0 <neorv32_uart0_print>
 1c4:	00100513          	li	a0,1
 1c8:	01c12083          	lw	ra,28(sp)
 1cc:	01812403          	lw	s0,24(sp)
 1d0:	01412483          	lw	s1,20(sp)
 1d4:	01012903          	lw	s2,16(sp)
 1d8:	00c12983          	lw	s3,12(sp)
 1dc:	00812a03          	lw	s4,8(sp)
 1e0:	02010113          	addi	sp,sp,32
 1e4:	00008067          	ret
 1e8:	185000ef          	jal	ra,b6c <neorv32_rte_setup>
 1ec:	00001537          	lui	a0,0x1
 1f0:	c8c50513          	addi	a0,a0,-884 # c8c <__etext+0x24>
 1f4:	2cc000ef          	jal	ra,4c0 <neorv32_uart0_print>
 1f8:	80010437          	lui	s0,0x80010
 1fc:	00042583          	lw	a1,0(s0) # 80010000 <__ctr0_io_space_begin+0x80010200>
 200:	00001a37          	lui	s4,0x1
 204:	caca0513          	addi	a0,s4,-852 # cac <__etext+0x44>
 208:	310000ef          	jal	ra,518 <neorv32_uart0_printf>
 20c:	00440993          	addi	s3,s0,4
 210:	0009a583          	lw	a1,0(s3)
 214:	caca0513          	addi	a0,s4,-852
 218:	300000ef          	jal	ra,518 <neorv32_uart0_printf>
 21c:	00840913          	addi	s2,s0,8
 220:	00092583          	lw	a1,0(s2)
 224:	caca0513          	addi	a0,s4,-852
 228:	2f0000ef          	jal	ra,518 <neorv32_uart0_printf>
 22c:	00c40493          	addi	s1,s0,12
 230:	0004a583          	lw	a1,0(s1)
 234:	caca0513          	addi	a0,s4,-852
 238:	2e0000ef          	jal	ra,518 <neorv32_uart0_printf>
 23c:	a11117b7          	lui	a5,0xa1111
 240:	11178793          	addi	a5,a5,273 # a1111111 <__ctr0_io_space_begin+0xa1111311>
 244:	00f42023          	sw	a5,0(s0)
 248:	00042583          	lw	a1,0(s0)
 24c:	00001437          	lui	s0,0x1
 250:	ccc40513          	addi	a0,s0,-820 # ccc <__etext+0x64>
 254:	2c4000ef          	jal	ra,518 <neorv32_uart0_printf>
 258:	b22227b7          	lui	a5,0xb2222
 25c:	22278793          	addi	a5,a5,546 # b2222222 <__ctr0_io_space_begin+0xb2222422>
 260:	00f9a023          	sw	a5,0(s3)
 264:	0009a583          	lw	a1,0(s3)
 268:	ccc40513          	addi	a0,s0,-820
 26c:	2ac000ef          	jal	ra,518 <neorv32_uart0_printf>
 270:	c33337b7          	lui	a5,0xc3333
 274:	33378793          	addi	a5,a5,819 # c3333333 <__ctr0_io_space_begin+0xc3333533>
 278:	00f92023          	sw	a5,0(s2)
 27c:	00092583          	lw	a1,0(s2)
 280:	ccc40513          	addi	a0,s0,-820
 284:	294000ef          	jal	ra,518 <neorv32_uart0_printf>
 288:	d44447b7          	lui	a5,0xd4444
 28c:	44478793          	addi	a5,a5,1092 # d4444444 <__ctr0_io_space_begin+0xd4444644>
 290:	00f4a023          	sw	a5,0(s1)
 294:	0004a583          	lw	a1,0(s1)
 298:	ccc40513          	addi	a0,s0,-820
 29c:	27c000ef          	jal	ra,518 <neorv32_uart0_printf>
 2a0:	00000513          	li	a0,0
 2a4:	f25ff06f          	j	1c8 <main+0x48>

000002a8 <__neorv32_uart_itoa>:
 2a8:	fd010113          	addi	sp,sp,-48
 2ac:	02812423          	sw	s0,40(sp)
 2b0:	02912223          	sw	s1,36(sp)
 2b4:	03212023          	sw	s2,32(sp)
 2b8:	01312e23          	sw	s3,28(sp)
 2bc:	01412c23          	sw	s4,24(sp)
 2c0:	02112623          	sw	ra,44(sp)
 2c4:	01512a23          	sw	s5,20(sp)
 2c8:	00001a37          	lui	s4,0x1
 2cc:	00050493          	mv	s1,a0
 2d0:	00058413          	mv	s0,a1
 2d4:	00058523          	sb	zero,10(a1)
 2d8:	00000993          	li	s3,0
 2dc:	00410913          	addi	s2,sp,4
 2e0:	ce8a0a13          	addi	s4,s4,-792 # ce8 <numbers.1>
 2e4:	00a00593          	li	a1,10
 2e8:	00048513          	mv	a0,s1
 2ec:	119000ef          	jal	ra,c04 <__umodsi3>
 2f0:	00aa0533          	add	a0,s4,a0
 2f4:	00054783          	lbu	a5,0(a0)
 2f8:	01390ab3          	add	s5,s2,s3
 2fc:	00048513          	mv	a0,s1
 300:	00fa8023          	sb	a5,0(s5)
 304:	00a00593          	li	a1,10
 308:	0b5000ef          	jal	ra,bbc <__udivsi3>
 30c:	00198993          	addi	s3,s3,1
 310:	00a00793          	li	a5,10
 314:	00050493          	mv	s1,a0
 318:	fcf996e3          	bne	s3,a5,2e4 <__neorv32_uart_itoa+0x3c>
 31c:	00090693          	mv	a3,s2
 320:	00900713          	li	a4,9
 324:	03000613          	li	a2,48
 328:	0096c583          	lbu	a1,9(a3)
 32c:	00070793          	mv	a5,a4
 330:	fff70713          	addi	a4,a4,-1
 334:	01071713          	slli	a4,a4,0x10
 338:	01075713          	srli	a4,a4,0x10
 33c:	00c59a63          	bne	a1,a2,350 <__neorv32_uart_itoa+0xa8>
 340:	000684a3          	sb	zero,9(a3)
 344:	fff68693          	addi	a3,a3,-1
 348:	fe0710e3          	bnez	a4,328 <__neorv32_uart_itoa+0x80>
 34c:	00000793          	li	a5,0
 350:	00f907b3          	add	a5,s2,a5
 354:	00000593          	li	a1,0
 358:	0007c703          	lbu	a4,0(a5)
 35c:	00070c63          	beqz	a4,374 <__neorv32_uart_itoa+0xcc>
 360:	00158693          	addi	a3,a1,1
 364:	00b405b3          	add	a1,s0,a1
 368:	00e58023          	sb	a4,0(a1)
 36c:	01069593          	slli	a1,a3,0x10
 370:	0105d593          	srli	a1,a1,0x10
 374:	fff78713          	addi	a4,a5,-1
 378:	02f91863          	bne	s2,a5,3a8 <__neorv32_uart_itoa+0x100>
 37c:	00b40433          	add	s0,s0,a1
 380:	00040023          	sb	zero,0(s0)
 384:	02c12083          	lw	ra,44(sp)
 388:	02812403          	lw	s0,40(sp)
 38c:	02412483          	lw	s1,36(sp)
 390:	02012903          	lw	s2,32(sp)
 394:	01c12983          	lw	s3,28(sp)
 398:	01812a03          	lw	s4,24(sp)
 39c:	01412a83          	lw	s5,20(sp)
 3a0:	03010113          	addi	sp,sp,48
 3a4:	00008067          	ret
 3a8:	00070793          	mv	a5,a4
 3ac:	fadff06f          	j	358 <__neorv32_uart_itoa+0xb0>

000003b0 <__neorv32_uart_tohex>:
 3b0:	00001637          	lui	a2,0x1
 3b4:	00758693          	addi	a3,a1,7
 3b8:	00000713          	li	a4,0
 3bc:	cf460613          	addi	a2,a2,-780 # cf4 <symbols.0>
 3c0:	02000813          	li	a6,32
 3c4:	00e557b3          	srl	a5,a0,a4
 3c8:	00f7f793          	andi	a5,a5,15
 3cc:	00f607b3          	add	a5,a2,a5
 3d0:	0007c783          	lbu	a5,0(a5)
 3d4:	00470713          	addi	a4,a4,4
 3d8:	fff68693          	addi	a3,a3,-1
 3dc:	00f680a3          	sb	a5,1(a3)
 3e0:	ff0712e3          	bne	a4,a6,3c4 <__neorv32_uart_tohex+0x14>
 3e4:	00058423          	sb	zero,8(a1)
 3e8:	00008067          	ret

000003ec <neorv32_uart0_available>:
 3ec:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3f0:	01255513          	srli	a0,a0,0x12
 3f4:	00157513          	andi	a0,a0,1
 3f8:	00008067          	ret

000003fc <neorv32_uart0_setup>:
 3fc:	ff010113          	addi	sp,sp,-16
 400:	00812423          	sw	s0,8(sp)
 404:	00912223          	sw	s1,4(sp)
 408:	00112623          	sw	ra,12(sp)
 40c:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 410:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 414:	00058413          	mv	s0,a1
 418:	00151593          	slli	a1,a0,0x1
 41c:	00078513          	mv	a0,a5
 420:	00060493          	mv	s1,a2
 424:	798000ef          	jal	ra,bbc <__udivsi3>
 428:	01051513          	slli	a0,a0,0x10
 42c:	000017b7          	lui	a5,0x1
 430:	01055513          	srli	a0,a0,0x10
 434:	00000713          	li	a4,0
 438:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x4e>
 43c:	04a7e463          	bltu	a5,a0,484 <neorv32_uart0_setup+0x88>
 440:	0034f793          	andi	a5,s1,3
 444:	00347413          	andi	s0,s0,3
 448:	fff50513          	addi	a0,a0,-1
 44c:	01479793          	slli	a5,a5,0x14
 450:	01641413          	slli	s0,s0,0x16
 454:	00f567b3          	or	a5,a0,a5
 458:	0087e7b3          	or	a5,a5,s0
 45c:	01871713          	slli	a4,a4,0x18
 460:	00c12083          	lw	ra,12(sp)
 464:	00812403          	lw	s0,8(sp)
 468:	00e7e7b3          	or	a5,a5,a4
 46c:	10000737          	lui	a4,0x10000
 470:	00e7e7b3          	or	a5,a5,a4
 474:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 478:	00412483          	lw	s1,4(sp)
 47c:	01010113          	addi	sp,sp,16
 480:	00008067          	ret
 484:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff04e>
 488:	0fd6f693          	andi	a3,a3,253
 48c:	00069a63          	bnez	a3,4a0 <neorv32_uart0_setup+0xa4>
 490:	00355513          	srli	a0,a0,0x3
 494:	00170713          	addi	a4,a4,1
 498:	0ff77713          	andi	a4,a4,255
 49c:	fa1ff06f          	j	43c <neorv32_uart0_setup+0x40>
 4a0:	00155513          	srli	a0,a0,0x1
 4a4:	ff1ff06f          	j	494 <neorv32_uart0_setup+0x98>

000004a8 <neorv32_uart0_putc>:
 4a8:	00040737          	lui	a4,0x40
 4ac:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4b0:	00e7f7b3          	and	a5,a5,a4
 4b4:	fe079ce3          	bnez	a5,4ac <neorv32_uart0_putc+0x4>
 4b8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4bc:	00008067          	ret

000004c0 <neorv32_uart0_print>:
 4c0:	ff010113          	addi	sp,sp,-16
 4c4:	00812423          	sw	s0,8(sp)
 4c8:	01212023          	sw	s2,0(sp)
 4cc:	00112623          	sw	ra,12(sp)
 4d0:	00912223          	sw	s1,4(sp)
 4d4:	00050413          	mv	s0,a0
 4d8:	00a00913          	li	s2,10
 4dc:	00044483          	lbu	s1,0(s0)
 4e0:	00140413          	addi	s0,s0,1
 4e4:	00049e63          	bnez	s1,500 <neorv32_uart0_print+0x40>
 4e8:	00c12083          	lw	ra,12(sp)
 4ec:	00812403          	lw	s0,8(sp)
 4f0:	00412483          	lw	s1,4(sp)
 4f4:	00012903          	lw	s2,0(sp)
 4f8:	01010113          	addi	sp,sp,16
 4fc:	00008067          	ret
 500:	01249663          	bne	s1,s2,50c <neorv32_uart0_print+0x4c>
 504:	00d00513          	li	a0,13
 508:	fa1ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 50c:	00048513          	mv	a0,s1
 510:	f99ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 514:	fc9ff06f          	j	4dc <neorv32_uart0_print+0x1c>

00000518 <neorv32_uart0_printf>:
 518:	fa010113          	addi	sp,sp,-96
 51c:	04f12a23          	sw	a5,84(sp)
 520:	04410793          	addi	a5,sp,68
 524:	02812c23          	sw	s0,56(sp)
 528:	03212823          	sw	s2,48(sp)
 52c:	03412423          	sw	s4,40(sp)
 530:	03512223          	sw	s5,36(sp)
 534:	03612023          	sw	s6,32(sp)
 538:	01712e23          	sw	s7,28(sp)
 53c:	01812c23          	sw	s8,24(sp)
 540:	01912a23          	sw	s9,20(sp)
 544:	02112e23          	sw	ra,60(sp)
 548:	02912a23          	sw	s1,52(sp)
 54c:	03312623          	sw	s3,44(sp)
 550:	00050413          	mv	s0,a0
 554:	04b12223          	sw	a1,68(sp)
 558:	04c12423          	sw	a2,72(sp)
 55c:	04d12623          	sw	a3,76(sp)
 560:	04e12823          	sw	a4,80(sp)
 564:	05012c23          	sw	a6,88(sp)
 568:	05112e23          	sw	a7,92(sp)
 56c:	00f12023          	sw	a5,0(sp)
 570:	02500a13          	li	s4,37
 574:	00a00a93          	li	s5,10
 578:	07300913          	li	s2,115
 57c:	07500b13          	li	s6,117
 580:	07800b93          	li	s7,120
 584:	06300c13          	li	s8,99
 588:	06900c93          	li	s9,105
 58c:	00044483          	lbu	s1,0(s0)
 590:	02049c63          	bnez	s1,5c8 <neorv32_uart0_printf+0xb0>
 594:	03c12083          	lw	ra,60(sp)
 598:	03812403          	lw	s0,56(sp)
 59c:	03412483          	lw	s1,52(sp)
 5a0:	03012903          	lw	s2,48(sp)
 5a4:	02c12983          	lw	s3,44(sp)
 5a8:	02812a03          	lw	s4,40(sp)
 5ac:	02412a83          	lw	s5,36(sp)
 5b0:	02012b03          	lw	s6,32(sp)
 5b4:	01c12b83          	lw	s7,28(sp)
 5b8:	01812c03          	lw	s8,24(sp)
 5bc:	01412c83          	lw	s9,20(sp)
 5c0:	06010113          	addi	sp,sp,96
 5c4:	00008067          	ret
 5c8:	0d449863          	bne	s1,s4,698 <neorv32_uart0_printf+0x180>
 5cc:	00240993          	addi	s3,s0,2
 5d0:	00144403          	lbu	s0,1(s0)
 5d4:	05240263          	beq	s0,s2,618 <neorv32_uart0_printf+0x100>
 5d8:	00896e63          	bltu	s2,s0,5f4 <neorv32_uart0_printf+0xdc>
 5dc:	05840c63          	beq	s0,s8,634 <neorv32_uart0_printf+0x11c>
 5e0:	07940663          	beq	s0,s9,64c <neorv32_uart0_printf+0x134>
 5e4:	02500513          	li	a0,37
 5e8:	ec1ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 5ec:	00040513          	mv	a0,s0
 5f0:	0540006f          	j	644 <neorv32_uart0_printf+0x12c>
 5f4:	09640663          	beq	s0,s6,680 <neorv32_uart0_printf+0x168>
 5f8:	ff7416e3          	bne	s0,s7,5e4 <neorv32_uart0_printf+0xcc>
 5fc:	00012783          	lw	a5,0(sp)
 600:	00410593          	addi	a1,sp,4
 604:	0007a503          	lw	a0,0(a5)
 608:	00478713          	addi	a4,a5,4
 60c:	00e12023          	sw	a4,0(sp)
 610:	da1ff0ef          	jal	ra,3b0 <__neorv32_uart_tohex>
 614:	0640006f          	j	678 <neorv32_uart0_printf+0x160>
 618:	00012783          	lw	a5,0(sp)
 61c:	0007a503          	lw	a0,0(a5)
 620:	00478713          	addi	a4,a5,4
 624:	00e12023          	sw	a4,0(sp)
 628:	e99ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 62c:	00098413          	mv	s0,s3
 630:	f5dff06f          	j	58c <neorv32_uart0_printf+0x74>
 634:	00012783          	lw	a5,0(sp)
 638:	0007c503          	lbu	a0,0(a5)
 63c:	00478713          	addi	a4,a5,4
 640:	00e12023          	sw	a4,0(sp)
 644:	e65ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 648:	fe5ff06f          	j	62c <neorv32_uart0_printf+0x114>
 64c:	00012783          	lw	a5,0(sp)
 650:	0007a403          	lw	s0,0(a5)
 654:	00478713          	addi	a4,a5,4
 658:	00e12023          	sw	a4,0(sp)
 65c:	00045863          	bgez	s0,66c <neorv32_uart0_printf+0x154>
 660:	02d00513          	li	a0,45
 664:	40800433          	neg	s0,s0
 668:	e41ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 66c:	00410593          	addi	a1,sp,4
 670:	00040513          	mv	a0,s0
 674:	c35ff0ef          	jal	ra,2a8 <__neorv32_uart_itoa>
 678:	00410513          	addi	a0,sp,4
 67c:	fadff06f          	j	628 <neorv32_uart0_printf+0x110>
 680:	00012783          	lw	a5,0(sp)
 684:	00410593          	addi	a1,sp,4
 688:	00478713          	addi	a4,a5,4
 68c:	0007a503          	lw	a0,0(a5)
 690:	00e12023          	sw	a4,0(sp)
 694:	fe1ff06f          	j	674 <neorv32_uart0_printf+0x15c>
 698:	01549663          	bne	s1,s5,6a4 <neorv32_uart0_printf+0x18c>
 69c:	00d00513          	li	a0,13
 6a0:	e09ff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 6a4:	00140993          	addi	s3,s0,1
 6a8:	00048513          	mv	a0,s1
 6ac:	f99ff06f          	j	644 <neorv32_uart0_printf+0x12c>

000006b0 <neorv32_gpio_available>:
 6b0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 6b4:	01055513          	srli	a0,a0,0x10
 6b8:	00157513          	andi	a0,a0,1
 6bc:	00008067          	ret

000006c0 <__neorv32_rte_core>:
 6c0:	fc010113          	addi	sp,sp,-64
 6c4:	02112e23          	sw	ra,60(sp)
 6c8:	02512c23          	sw	t0,56(sp)
 6cc:	02612a23          	sw	t1,52(sp)
 6d0:	02712823          	sw	t2,48(sp)
 6d4:	02a12623          	sw	a0,44(sp)
 6d8:	02b12423          	sw	a1,40(sp)
 6dc:	02c12223          	sw	a2,36(sp)
 6e0:	02d12023          	sw	a3,32(sp)
 6e4:	00e12e23          	sw	a4,28(sp)
 6e8:	00f12c23          	sw	a5,24(sp)
 6ec:	01012a23          	sw	a6,20(sp)
 6f0:	01112823          	sw	a7,16(sp)
 6f4:	01c12623          	sw	t3,12(sp)
 6f8:	01d12423          	sw	t4,8(sp)
 6fc:	01e12223          	sw	t5,4(sp)
 700:	01f12023          	sw	t6,0(sp)
 704:	34102773          	csrr	a4,mepc
 708:	34071073          	csrw	mscratch,a4
 70c:	342027f3          	csrr	a5,mcause
 710:	0807ca63          	bltz	a5,7a4 <__neorv32_rte_core+0xe4>
 714:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3f050>
 718:	00300593          	li	a1,3
 71c:	0036f693          	andi	a3,a3,3
 720:	00270613          	addi	a2,a4,2
 724:	00b69463          	bne	a3,a1,72c <__neorv32_rte_core+0x6c>
 728:	00470613          	addi	a2,a4,4
 72c:	34161073          	csrw	mepc,a2
 730:	00b00713          	li	a4,11
 734:	04f77c63          	bgeu	a4,a5,78c <__neorv32_rte_core+0xcc>
 738:	000017b7          	lui	a5,0x1
 73c:	94078793          	addi	a5,a5,-1728 # 940 <__neorv32_rte_debug_exc_handler>
 740:	000780e7          	jalr	a5
 744:	03c12083          	lw	ra,60(sp)
 748:	03812283          	lw	t0,56(sp)
 74c:	03412303          	lw	t1,52(sp)
 750:	03012383          	lw	t2,48(sp)
 754:	02c12503          	lw	a0,44(sp)
 758:	02812583          	lw	a1,40(sp)
 75c:	02412603          	lw	a2,36(sp)
 760:	02012683          	lw	a3,32(sp)
 764:	01c12703          	lw	a4,28(sp)
 768:	01812783          	lw	a5,24(sp)
 76c:	01412803          	lw	a6,20(sp)
 770:	01012883          	lw	a7,16(sp)
 774:	00c12e03          	lw	t3,12(sp)
 778:	00812e83          	lw	t4,8(sp)
 77c:	00412f03          	lw	t5,4(sp)
 780:	00012f83          	lw	t6,0(sp)
 784:	04010113          	addi	sp,sp,64
 788:	30200073          	mret
 78c:	00001737          	lui	a4,0x1
 790:	00279793          	slli	a5,a5,0x2
 794:	d0870713          	addi	a4,a4,-760 # d08 <symbols.0+0x14>
 798:	00e787b3          	add	a5,a5,a4
 79c:	0007a783          	lw	a5,0(a5)
 7a0:	00078067          	jr	a5
 7a4:	80000737          	lui	a4,0x80000
 7a8:	ffd74713          	xori	a4,a4,-3
 7ac:	00e787b3          	add	a5,a5,a4
 7b0:	01c00713          	li	a4,28
 7b4:	f8f762e3          	bltu	a4,a5,738 <__neorv32_rte_core+0x78>
 7b8:	00001737          	lui	a4,0x1
 7bc:	00279793          	slli	a5,a5,0x2
 7c0:	d3870713          	addi	a4,a4,-712 # d38 <symbols.0+0x44>
 7c4:	00e787b3          	add	a5,a5,a4
 7c8:	0007a783          	lw	a5,0(a5)
 7cc:	00078067          	jr	a5
 7d0:	800007b7          	lui	a5,0x80000
 7d4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 7d8:	f69ff06f          	j	740 <__neorv32_rte_core+0x80>
 7dc:	800007b7          	lui	a5,0x80000
 7e0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 7e4:	f5dff06f          	j	740 <__neorv32_rte_core+0x80>
 7e8:	800007b7          	lui	a5,0x80000
 7ec:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 7f0:	f51ff06f          	j	740 <__neorv32_rte_core+0x80>
 7f4:	800007b7          	lui	a5,0x80000
 7f8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 7fc:	f45ff06f          	j	740 <__neorv32_rte_core+0x80>
 800:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 804:	f3dff06f          	j	740 <__neorv32_rte_core+0x80>
 808:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 80c:	f35ff06f          	j	740 <__neorv32_rte_core+0x80>
 810:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 814:	f2dff06f          	j	740 <__neorv32_rte_core+0x80>
 818:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 81c:	f25ff06f          	j	740 <__neorv32_rte_core+0x80>
 820:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 824:	f1dff06f          	j	740 <__neorv32_rte_core+0x80>
 828:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 82c:	f15ff06f          	j	740 <__neorv32_rte_core+0x80>
 830:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 834:	f0dff06f          	j	740 <__neorv32_rte_core+0x80>
 838:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 83c:	f05ff06f          	j	740 <__neorv32_rte_core+0x80>
 840:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 844:	efdff06f          	j	740 <__neorv32_rte_core+0x80>
 848:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 84c:	ef5ff06f          	j	740 <__neorv32_rte_core+0x80>
 850:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 854:	eedff06f          	j	740 <__neorv32_rte_core+0x80>
 858:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 85c:	ee5ff06f          	j	740 <__neorv32_rte_core+0x80>
 860:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 864:	eddff06f          	j	740 <__neorv32_rte_core+0x80>
 868:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 86c:	ed5ff06f          	j	740 <__neorv32_rte_core+0x80>
 870:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 874:	ecdff06f          	j	740 <__neorv32_rte_core+0x80>
 878:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 87c:	ec5ff06f          	j	740 <__neorv32_rte_core+0x80>
 880:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 884:	ebdff06f          	j	740 <__neorv32_rte_core+0x80>
 888:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 88c:	eb5ff06f          	j	740 <__neorv32_rte_core+0x80>
 890:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 894:	eadff06f          	j	740 <__neorv32_rte_core+0x80>
 898:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 89c:	ea5ff06f          	j	740 <__neorv32_rte_core+0x80>
 8a0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 8a4:	e9dff06f          	j	740 <__neorv32_rte_core+0x80>
 8a8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 8ac:	e95ff06f          	j	740 <__neorv32_rte_core+0x80>
 8b0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 8b4:	e8dff06f          	j	740 <__neorv32_rte_core+0x80>
 8b8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 8bc:	e85ff06f          	j	740 <__neorv32_rte_core+0x80>
 8c0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 8c4:	e7dff06f          	j	740 <__neorv32_rte_core+0x80>
 8c8:	0000                	unimp
 8ca:	0000                	unimp
 8cc:	0000                	unimp
 8ce:	0000                	unimp

000008d0 <__neorv32_rte_print_hex_word>:
 8d0:	fe010113          	addi	sp,sp,-32
 8d4:	01212823          	sw	s2,16(sp)
 8d8:	00050913          	mv	s2,a0
 8dc:	00001537          	lui	a0,0x1
 8e0:	00912a23          	sw	s1,20(sp)
 8e4:	dac50513          	addi	a0,a0,-596 # dac <symbols.0+0xb8>
 8e8:	000014b7          	lui	s1,0x1
 8ec:	00812c23          	sw	s0,24(sp)
 8f0:	01312623          	sw	s3,12(sp)
 8f4:	00112e23          	sw	ra,28(sp)
 8f8:	01c00413          	li	s0,28
 8fc:	bc5ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 900:	fa048493          	addi	s1,s1,-96 # fa0 <hex_symbols.0>
 904:	ffc00993          	li	s3,-4
 908:	008957b3          	srl	a5,s2,s0
 90c:	00f7f793          	andi	a5,a5,15
 910:	00f487b3          	add	a5,s1,a5
 914:	0007c503          	lbu	a0,0(a5)
 918:	ffc40413          	addi	s0,s0,-4
 91c:	b8dff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 920:	ff3414e3          	bne	s0,s3,908 <__neorv32_rte_print_hex_word+0x38>
 924:	01c12083          	lw	ra,28(sp)
 928:	01812403          	lw	s0,24(sp)
 92c:	01412483          	lw	s1,20(sp)
 930:	01012903          	lw	s2,16(sp)
 934:	00c12983          	lw	s3,12(sp)
 938:	02010113          	addi	sp,sp,32
 93c:	00008067          	ret

00000940 <__neorv32_rte_debug_exc_handler>:
 940:	ff010113          	addi	sp,sp,-16
 944:	00112623          	sw	ra,12(sp)
 948:	00812423          	sw	s0,8(sp)
 94c:	00912223          	sw	s1,4(sp)
 950:	a9dff0ef          	jal	ra,3ec <neorv32_uart0_available>
 954:	1c050863          	beqz	a0,b24 <__neorv32_rte_debug_exc_handler+0x1e4>
 958:	00001537          	lui	a0,0x1
 95c:	db050513          	addi	a0,a0,-592 # db0 <symbols.0+0xbc>
 960:	b61ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 964:	34202473          	csrr	s0,mcause
 968:	00900713          	li	a4,9
 96c:	00f47793          	andi	a5,s0,15
 970:	03078493          	addi	s1,a5,48
 974:	00f77463          	bgeu	a4,a5,97c <__neorv32_rte_debug_exc_handler+0x3c>
 978:	05778493          	addi	s1,a5,87
 97c:	00b00793          	li	a5,11
 980:	0087ee63          	bltu	a5,s0,99c <__neorv32_rte_debug_exc_handler+0x5c>
 984:	00001737          	lui	a4,0x1
 988:	00241793          	slli	a5,s0,0x2
 98c:	f7070713          	addi	a4,a4,-144 # f70 <symbols.0+0x27c>
 990:	00e787b3          	add	a5,a5,a4
 994:	0007a783          	lw	a5,0(a5)
 998:	00078067          	jr	a5
 99c:	800007b7          	lui	a5,0x80000
 9a0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 9a4:	14e40e63          	beq	s0,a4,b00 <__neorv32_rte_debug_exc_handler+0x1c0>
 9a8:	02876a63          	bltu	a4,s0,9dc <__neorv32_rte_debug_exc_handler+0x9c>
 9ac:	00378713          	addi	a4,a5,3
 9b0:	12e40c63          	beq	s0,a4,ae8 <__neorv32_rte_debug_exc_handler+0x1a8>
 9b4:	00778793          	addi	a5,a5,7
 9b8:	12f40e63          	beq	s0,a5,af4 <__neorv32_rte_debug_exc_handler+0x1b4>
 9bc:	00001537          	lui	a0,0x1
 9c0:	f1050513          	addi	a0,a0,-240 # f10 <symbols.0+0x21c>
 9c4:	afdff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 9c8:	00040513          	mv	a0,s0
 9cc:	f05ff0ef          	jal	ra,8d0 <__neorv32_rte_print_hex_word>
 9d0:	00100793          	li	a5,1
 9d4:	08f40c63          	beq	s0,a5,a6c <__neorv32_rte_debug_exc_handler+0x12c>
 9d8:	0280006f          	j	a00 <__neorv32_rte_debug_exc_handler+0xc0>
 9dc:	ff07c793          	xori	a5,a5,-16
 9e0:	00f407b3          	add	a5,s0,a5
 9e4:	00f00713          	li	a4,15
 9e8:	fcf76ae3          	bltu	a4,a5,9bc <__neorv32_rte_debug_exc_handler+0x7c>
 9ec:	00001537          	lui	a0,0x1
 9f0:	f0050513          	addi	a0,a0,-256 # f00 <symbols.0+0x20c>
 9f4:	acdff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 9f8:	00048513          	mv	a0,s1
 9fc:	aadff0ef          	jal	ra,4a8 <neorv32_uart0_putc>
 a00:	ffd47413          	andi	s0,s0,-3
 a04:	00500793          	li	a5,5
 a08:	06f40263          	beq	s0,a5,a6c <__neorv32_rte_debug_exc_handler+0x12c>
 a0c:	00001537          	lui	a0,0x1
 a10:	f5450513          	addi	a0,a0,-172 # f54 <symbols.0+0x260>
 a14:	aadff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 a18:	34002573          	csrr	a0,mscratch
 a1c:	eb5ff0ef          	jal	ra,8d0 <__neorv32_rte_print_hex_word>
 a20:	00001537          	lui	a0,0x1
 a24:	f5c50513          	addi	a0,a0,-164 # f5c <symbols.0+0x268>
 a28:	a99ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 a2c:	34302573          	csrr	a0,mtval
 a30:	ea1ff0ef          	jal	ra,8d0 <__neorv32_rte_print_hex_word>
 a34:	00812403          	lw	s0,8(sp)
 a38:	00c12083          	lw	ra,12(sp)
 a3c:	00412483          	lw	s1,4(sp)
 a40:	00001537          	lui	a0,0x1
 a44:	f6850513          	addi	a0,a0,-152 # f68 <symbols.0+0x274>
 a48:	01010113          	addi	sp,sp,16
 a4c:	a75ff06f          	j	4c0 <neorv32_uart0_print>
 a50:	00001537          	lui	a0,0x1
 a54:	db850513          	addi	a0,a0,-584 # db8 <symbols.0+0xc4>
 a58:	a69ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 a5c:	fb1ff06f          	j	a0c <__neorv32_rte_debug_exc_handler+0xcc>
 a60:	00001537          	lui	a0,0x1
 a64:	dd850513          	addi	a0,a0,-552 # dd8 <symbols.0+0xe4>
 a68:	a59ff0ef          	jal	ra,4c0 <neorv32_uart0_print>
 a6c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 a70:	0a07d463          	bgez	a5,b18 <__neorv32_rte_debug_exc_handler+0x1d8>
 a74:	0017f793          	andi	a5,a5,1
 a78:	08078a63          	beqz	a5,b0c <__neorv32_rte_debug_exc_handler+0x1cc>
 a7c:	00001537          	lui	a0,0x1
 a80:	f2850513          	addi	a0,a0,-216 # f28 <symbols.0+0x234>
 a84:	fd5ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 a88:	00001537          	lui	a0,0x1
 a8c:	df450513          	addi	a0,a0,-524 # df4 <symbols.0+0x100>
 a90:	fc9ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 a94:	00001537          	lui	a0,0x1
 a98:	e0850513          	addi	a0,a0,-504 # e08 <symbols.0+0x114>
 a9c:	fbdff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 aa0:	00001537          	lui	a0,0x1
 aa4:	e1450513          	addi	a0,a0,-492 # e14 <symbols.0+0x120>
 aa8:	fb1ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 aac:	00001537          	lui	a0,0x1
 ab0:	e2c50513          	addi	a0,a0,-468 # e2c <symbols.0+0x138>
 ab4:	fb5ff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x128>
 ab8:	00001537          	lui	a0,0x1
 abc:	e4050513          	addi	a0,a0,-448 # e40 <symbols.0+0x14c>
 ac0:	f99ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 ac4:	00001537          	lui	a0,0x1
 ac8:	e5c50513          	addi	a0,a0,-420 # e5c <symbols.0+0x168>
 acc:	f9dff06f          	j	a68 <__neorv32_rte_debug_exc_handler+0x128>
 ad0:	00001537          	lui	a0,0x1
 ad4:	e7050513          	addi	a0,a0,-400 # e70 <symbols.0+0x17c>
 ad8:	f81ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 adc:	00001537          	lui	a0,0x1
 ae0:	e9050513          	addi	a0,a0,-368 # e90 <symbols.0+0x19c>
 ae4:	f75ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 ae8:	00001537          	lui	a0,0x1
 aec:	eb050513          	addi	a0,a0,-336 # eb0 <symbols.0+0x1bc>
 af0:	f69ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 af4:	00001537          	lui	a0,0x1
 af8:	ecc50513          	addi	a0,a0,-308 # ecc <symbols.0+0x1d8>
 afc:	f5dff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 b00:	00001537          	lui	a0,0x1
 b04:	ee450513          	addi	a0,a0,-284 # ee4 <symbols.0+0x1f0>
 b08:	f51ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 b0c:	00001537          	lui	a0,0x1
 b10:	f3850513          	addi	a0,a0,-200 # f38 <symbols.0+0x244>
 b14:	f45ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 b18:	00001537          	lui	a0,0x1
 b1c:	f4850513          	addi	a0,a0,-184 # f48 <symbols.0+0x254>
 b20:	f39ff06f          	j	a58 <__neorv32_rte_debug_exc_handler+0x118>
 b24:	00c12083          	lw	ra,12(sp)
 b28:	00812403          	lw	s0,8(sp)
 b2c:	00412483          	lw	s1,4(sp)
 b30:	01010113          	addi	sp,sp,16
 b34:	00008067          	ret

00000b38 <neorv32_rte_exception_uninstall>:
 b38:	01f00793          	li	a5,31
 b3c:	02a7e463          	bltu	a5,a0,b64 <neorv32_rte_exception_uninstall+0x2c>
 b40:	800007b7          	lui	a5,0x80000
 b44:	00078793          	mv	a5,a5
 b48:	00251513          	slli	a0,a0,0x2
 b4c:	00a78533          	add	a0,a5,a0
 b50:	000017b7          	lui	a5,0x1
 b54:	94078793          	addi	a5,a5,-1728 # 940 <__neorv32_rte_debug_exc_handler>
 b58:	00f52023          	sw	a5,0(a0)
 b5c:	00000513          	li	a0,0
 b60:	00008067          	ret
 b64:	00100513          	li	a0,1
 b68:	00008067          	ret

00000b6c <neorv32_rte_setup>:
 b6c:	ff010113          	addi	sp,sp,-16
 b70:	00112623          	sw	ra,12(sp)
 b74:	00812423          	sw	s0,8(sp)
 b78:	00912223          	sw	s1,4(sp)
 b7c:	6c000793          	li	a5,1728
 b80:	30579073          	csrw	mtvec,a5
 b84:	00000413          	li	s0,0
 b88:	01d00493          	li	s1,29
 b8c:	00040513          	mv	a0,s0
 b90:	00140413          	addi	s0,s0,1
 b94:	0ff47413          	andi	s0,s0,255
 b98:	fa1ff0ef          	jal	ra,b38 <neorv32_rte_exception_uninstall>
 b9c:	fe9418e3          	bne	s0,s1,b8c <neorv32_rte_setup+0x20>
 ba0:	00c12083          	lw	ra,12(sp)
 ba4:	00812403          	lw	s0,8(sp)
 ba8:	00412483          	lw	s1,4(sp)
 bac:	01010113          	addi	sp,sp,16
 bb0:	00008067          	ret

00000bb4 <__divsi3>:
 bb4:	06054063          	bltz	a0,c14 <__umodsi3+0x10>
 bb8:	0605c663          	bltz	a1,c24 <__umodsi3+0x20>

00000bbc <__udivsi3>:
 bbc:	00058613          	mv	a2,a1
 bc0:	00050593          	mv	a1,a0
 bc4:	fff00513          	li	a0,-1
 bc8:	02060c63          	beqz	a2,c00 <__udivsi3+0x44>
 bcc:	00100693          	li	a3,1
 bd0:	00b67a63          	bgeu	a2,a1,be4 <__udivsi3+0x28>
 bd4:	00c05863          	blez	a2,be4 <__udivsi3+0x28>
 bd8:	00161613          	slli	a2,a2,0x1
 bdc:	00169693          	slli	a3,a3,0x1
 be0:	feb66ae3          	bltu	a2,a1,bd4 <__udivsi3+0x18>
 be4:	00000513          	li	a0,0
 be8:	00c5e663          	bltu	a1,a2,bf4 <__udivsi3+0x38>
 bec:	40c585b3          	sub	a1,a1,a2
 bf0:	00d56533          	or	a0,a0,a3
 bf4:	0016d693          	srli	a3,a3,0x1
 bf8:	00165613          	srli	a2,a2,0x1
 bfc:	fe0696e3          	bnez	a3,be8 <__udivsi3+0x2c>
 c00:	00008067          	ret

00000c04 <__umodsi3>:
 c04:	00008293          	mv	t0,ra
 c08:	fb5ff0ef          	jal	ra,bbc <__udivsi3>
 c0c:	00058513          	mv	a0,a1
 c10:	00028067          	jr	t0
 c14:	40a00533          	neg	a0,a0
 c18:	00b04863          	bgtz	a1,c28 <__umodsi3+0x24>
 c1c:	40b005b3          	neg	a1,a1
 c20:	f9dff06f          	j	bbc <__udivsi3>
 c24:	40b005b3          	neg	a1,a1
 c28:	00008293          	mv	t0,ra
 c2c:	f91ff0ef          	jal	ra,bbc <__udivsi3>
 c30:	40a00533          	neg	a0,a0
 c34:	00028067          	jr	t0

00000c38 <__modsi3>:
 c38:	00008293          	mv	t0,ra
 c3c:	0005ca63          	bltz	a1,c50 <__modsi3+0x18>
 c40:	00054c63          	bltz	a0,c58 <__modsi3+0x20>
 c44:	f79ff0ef          	jal	ra,bbc <__udivsi3>
 c48:	00058513          	mv	a0,a1
 c4c:	00028067          	jr	t0
 c50:	40b005b3          	neg	a1,a1
 c54:	fe0558e3          	bgez	a0,c44 <__modsi3+0xc>
 c58:	40a00533          	neg	a0,a0
 c5c:	f61ff0ef          	jal	ra,bbc <__udivsi3>
 c60:	40b00533          	neg	a0,a1
 c64:	00028067          	jr	t0
