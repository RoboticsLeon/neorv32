
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
  e0:	f6858593          	addi	a1,a1,-152 # 1044 <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3abc>
 194:	02112623          	sw	ra,44(sp)
 198:	02812423          	sw	s0,40(sp)
 19c:	02912223          	sw	s1,36(sp)
 1a0:	03212023          	sw	s2,32(sp)
 1a4:	01312e23          	sw	s3,28(sp)
 1a8:	01412c23          	sw	s4,24(sp)
 1ac:	01512a23          	sw	s5,20(sp)
 1b0:	01612823          	sw	s6,16(sp)
 1b4:	01712623          	sw	s7,12(sp)
 1b8:	01812423          	sw	s8,8(sp)
 1bc:	278000ef          	jal	ra,434 <neorv32_uart0_setup>
 1c0:	528000ef          	jal	ra,6e8 <neorv32_gpio_available>
 1c4:	04051263          	bnez	a0,208 <main+0x88>
 1c8:	00001537          	lui	a0,0x1
 1cc:	ca850513          	addi	a0,a0,-856 # ca8 <__etext>
 1d0:	328000ef          	jal	ra,4f8 <neorv32_uart0_print>
 1d4:	00100513          	li	a0,1
 1d8:	02c12083          	lw	ra,44(sp)
 1dc:	02812403          	lw	s0,40(sp)
 1e0:	02412483          	lw	s1,36(sp)
 1e4:	02012903          	lw	s2,32(sp)
 1e8:	01c12983          	lw	s3,28(sp)
 1ec:	01812a03          	lw	s4,24(sp)
 1f0:	01412a83          	lw	s5,20(sp)
 1f4:	01012b03          	lw	s6,16(sp)
 1f8:	00c12b83          	lw	s7,12(sp)
 1fc:	00812c03          	lw	s8,8(sp)
 200:	03010113          	addi	sp,sp,48
 204:	00008067          	ret
 208:	1a5000ef          	jal	ra,bac <neorv32_rte_setup>
 20c:	00001537          	lui	a0,0x1
 210:	ccc50513          	addi	a0,a0,-820 # ccc <__etext+0x24>
 214:	2e4000ef          	jal	ra,4f8 <neorv32_uart0_print>
 218:	800027b7          	lui	a5,0x80002
 21c:	00600713          	li	a4,6
 220:	00e7a023          	sw	a4,0(a5) # 80002000 <__ctr0_io_space_begin+0x80002200>
 224:	00300713          	li	a4,3
 228:	00478793          	addi	a5,a5,4
 22c:	00e7a023          	sw	a4,0(a5)
 230:	800024b7          	lui	s1,0x80002
 234:	00000413          	li	s0,0
 238:	00848913          	addi	s2,s1,8 # 80002008 <__ctr0_io_space_begin+0x80002208>
 23c:	000019b7          	lui	s3,0x1
 240:	00001a37          	lui	s4,0x1
 244:	00001ab7          	lui	s5,0x1
 248:	00001b37          	lui	s6,0x1
 24c:	00001bb7          	lui	s7,0x1
 250:	00001c37          	lui	s8,0x1
 254:	00892023          	sw	s0,0(s2)
 258:	0004a583          	lw	a1,0(s1)
 25c:	ce498513          	addi	a0,s3,-796 # ce4 <__etext+0x3c>
 260:	2f0000ef          	jal	ra,550 <neorv32_uart0_printf>
 264:	00448593          	addi	a1,s1,4
 268:	0005a583          	lw	a1,0(a1)
 26c:	cf4a0513          	addi	a0,s4,-780 # cf4 <__etext+0x4c>
 270:	2e0000ef          	jal	ra,550 <neorv32_uart0_printf>
 274:	00092783          	lw	a5,0(s2)
 278:	00200713          	li	a4,2
 27c:	04e78e63          	beq	a5,a4,2d8 <main+0x158>
 280:	00f76c63          	bltu	a4,a5,298 <main+0x118>
 284:	d14b8513          	addi	a0,s7,-748 # d14 <__etext+0x6c>
 288:	00079463          	bnez	a5,290 <main+0x110>
 28c:	d04c0513          	addi	a0,s8,-764 # d04 <__etext+0x5c>
 290:	268000ef          	jal	ra,4f8 <neorv32_uart0_print>
 294:	0100006f          	j	2a4 <main+0x124>
 298:	00300713          	li	a4,3
 29c:	d3cb0513          	addi	a0,s6,-708 # d3c <__etext+0x94>
 2a0:	fee788e3          	beq	a5,a4,290 <main+0x110>
 2a4:	00c48593          	addi	a1,s1,12
 2a8:	0005a583          	lw	a1,0(a1)
 2ac:	00001537          	lui	a0,0x1
 2b0:	d5050513          	addi	a0,a0,-688 # d50 <__etext+0xa8>
 2b4:	29c000ef          	jal	ra,550 <neorv32_uart0_printf>
 2b8:	00001537          	lui	a0,0x1
 2bc:	d6050513          	addi	a0,a0,-672 # d60 <__etext+0xb8>
 2c0:	238000ef          	jal	ra,4f8 <neorv32_uart0_print>
 2c4:	00140413          	addi	s0,s0,1
 2c8:	00400793          	li	a5,4
 2cc:	f8f414e3          	bne	s0,a5,254 <main+0xd4>
 2d0:	00000513          	li	a0,0
 2d4:	f05ff06f          	j	1d8 <main+0x58>
 2d8:	d24a8513          	addi	a0,s5,-732 # d24 <__etext+0x7c>
 2dc:	fb5ff06f          	j	290 <main+0x110>

000002e0 <__neorv32_uart_itoa>:
 2e0:	fd010113          	addi	sp,sp,-48
 2e4:	02812423          	sw	s0,40(sp)
 2e8:	02912223          	sw	s1,36(sp)
 2ec:	03212023          	sw	s2,32(sp)
 2f0:	01312e23          	sw	s3,28(sp)
 2f4:	01412c23          	sw	s4,24(sp)
 2f8:	02112623          	sw	ra,44(sp)
 2fc:	01512a23          	sw	s5,20(sp)
 300:	00001a37          	lui	s4,0x1
 304:	00050493          	mv	s1,a0
 308:	00058413          	mv	s0,a1
 30c:	00058523          	sb	zero,10(a1)
 310:	00000993          	li	s3,0
 314:	00410913          	addi	s2,sp,4
 318:	d7ca0a13          	addi	s4,s4,-644 # d7c <numbers.1>
 31c:	00a00593          	li	a1,10
 320:	00048513          	mv	a0,s1
 324:	121000ef          	jal	ra,c44 <__umodsi3>
 328:	00aa0533          	add	a0,s4,a0
 32c:	00054783          	lbu	a5,0(a0)
 330:	01390ab3          	add	s5,s2,s3
 334:	00048513          	mv	a0,s1
 338:	00fa8023          	sb	a5,0(s5)
 33c:	00a00593          	li	a1,10
 340:	0bd000ef          	jal	ra,bfc <__udivsi3>
 344:	00198993          	addi	s3,s3,1
 348:	00a00793          	li	a5,10
 34c:	00050493          	mv	s1,a0
 350:	fcf996e3          	bne	s3,a5,31c <__neorv32_uart_itoa+0x3c>
 354:	00090693          	mv	a3,s2
 358:	00900713          	li	a4,9
 35c:	03000613          	li	a2,48
 360:	0096c583          	lbu	a1,9(a3)
 364:	00070793          	mv	a5,a4
 368:	fff70713          	addi	a4,a4,-1
 36c:	01071713          	slli	a4,a4,0x10
 370:	01075713          	srli	a4,a4,0x10
 374:	00c59a63          	bne	a1,a2,388 <__neorv32_uart_itoa+0xa8>
 378:	000684a3          	sb	zero,9(a3)
 37c:	fff68693          	addi	a3,a3,-1
 380:	fe0710e3          	bnez	a4,360 <__neorv32_uart_itoa+0x80>
 384:	00000793          	li	a5,0
 388:	00f907b3          	add	a5,s2,a5
 38c:	00000593          	li	a1,0
 390:	0007c703          	lbu	a4,0(a5)
 394:	00070c63          	beqz	a4,3ac <__neorv32_uart_itoa+0xcc>
 398:	00158693          	addi	a3,a1,1
 39c:	00b405b3          	add	a1,s0,a1
 3a0:	00e58023          	sb	a4,0(a1)
 3a4:	01069593          	slli	a1,a3,0x10
 3a8:	0105d593          	srli	a1,a1,0x10
 3ac:	fff78713          	addi	a4,a5,-1
 3b0:	02f91863          	bne	s2,a5,3e0 <__neorv32_uart_itoa+0x100>
 3b4:	00b40433          	add	s0,s0,a1
 3b8:	00040023          	sb	zero,0(s0)
 3bc:	02c12083          	lw	ra,44(sp)
 3c0:	02812403          	lw	s0,40(sp)
 3c4:	02412483          	lw	s1,36(sp)
 3c8:	02012903          	lw	s2,32(sp)
 3cc:	01c12983          	lw	s3,28(sp)
 3d0:	01812a03          	lw	s4,24(sp)
 3d4:	01412a83          	lw	s5,20(sp)
 3d8:	03010113          	addi	sp,sp,48
 3dc:	00008067          	ret
 3e0:	00070793          	mv	a5,a4
 3e4:	fadff06f          	j	390 <__neorv32_uart_itoa+0xb0>

000003e8 <__neorv32_uart_tohex>:
 3e8:	00001637          	lui	a2,0x1
 3ec:	00758693          	addi	a3,a1,7
 3f0:	00000713          	li	a4,0
 3f4:	d8860613          	addi	a2,a2,-632 # d88 <symbols.0>
 3f8:	02000813          	li	a6,32
 3fc:	00e557b3          	srl	a5,a0,a4
 400:	00f7f793          	andi	a5,a5,15
 404:	00f607b3          	add	a5,a2,a5
 408:	0007c783          	lbu	a5,0(a5)
 40c:	00470713          	addi	a4,a4,4
 410:	fff68693          	addi	a3,a3,-1
 414:	00f680a3          	sb	a5,1(a3)
 418:	ff0712e3          	bne	a4,a6,3fc <__neorv32_uart_tohex+0x14>
 41c:	00058423          	sb	zero,8(a1)
 420:	00008067          	ret

00000424 <neorv32_uart0_available>:
 424:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 428:	01255513          	srli	a0,a0,0x12
 42c:	00157513          	andi	a0,a0,1
 430:	00008067          	ret

00000434 <neorv32_uart0_setup>:
 434:	ff010113          	addi	sp,sp,-16
 438:	00812423          	sw	s0,8(sp)
 43c:	00912223          	sw	s1,4(sp)
 440:	00112623          	sw	ra,12(sp)
 444:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 448:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 44c:	00058413          	mv	s0,a1
 450:	00151593          	slli	a1,a0,0x1
 454:	00078513          	mv	a0,a5
 458:	00060493          	mv	s1,a2
 45c:	7a0000ef          	jal	ra,bfc <__udivsi3>
 460:	01051513          	slli	a0,a0,0x10
 464:	000017b7          	lui	a5,0x1
 468:	01055513          	srli	a0,a0,0x10
 46c:	00000713          	li	a4,0
 470:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x276>
 474:	04a7e463          	bltu	a5,a0,4bc <neorv32_uart0_setup+0x88>
 478:	0034f793          	andi	a5,s1,3
 47c:	00347413          	andi	s0,s0,3
 480:	fff50513          	addi	a0,a0,-1
 484:	01479793          	slli	a5,a5,0x14
 488:	01641413          	slli	s0,s0,0x16
 48c:	00f567b3          	or	a5,a0,a5
 490:	0087e7b3          	or	a5,a5,s0
 494:	01871713          	slli	a4,a4,0x18
 498:	00c12083          	lw	ra,12(sp)
 49c:	00812403          	lw	s0,8(sp)
 4a0:	00e7e7b3          	or	a5,a5,a4
 4a4:	10000737          	lui	a4,0x10000
 4a8:	00e7e7b3          	or	a5,a5,a4
 4ac:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4b0:	00412483          	lw	s1,4(sp)
 4b4:	01010113          	addi	sp,sp,16
 4b8:	00008067          	ret
 4bc:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffefba>
 4c0:	0fd6f693          	andi	a3,a3,253
 4c4:	00069a63          	bnez	a3,4d8 <neorv32_uart0_setup+0xa4>
 4c8:	00355513          	srli	a0,a0,0x3
 4cc:	00170713          	addi	a4,a4,1
 4d0:	0ff77713          	andi	a4,a4,255
 4d4:	fa1ff06f          	j	474 <neorv32_uart0_setup+0x40>
 4d8:	00155513          	srli	a0,a0,0x1
 4dc:	ff1ff06f          	j	4cc <neorv32_uart0_setup+0x98>

000004e0 <neorv32_uart0_putc>:
 4e0:	00040737          	lui	a4,0x40
 4e4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4e8:	00e7f7b3          	and	a5,a5,a4
 4ec:	fe079ce3          	bnez	a5,4e4 <neorv32_uart0_putc+0x4>
 4f0:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4f4:	00008067          	ret

000004f8 <neorv32_uart0_print>:
 4f8:	ff010113          	addi	sp,sp,-16
 4fc:	00812423          	sw	s0,8(sp)
 500:	01212023          	sw	s2,0(sp)
 504:	00112623          	sw	ra,12(sp)
 508:	00912223          	sw	s1,4(sp)
 50c:	00050413          	mv	s0,a0
 510:	00a00913          	li	s2,10
 514:	00044483          	lbu	s1,0(s0)
 518:	00140413          	addi	s0,s0,1
 51c:	00049e63          	bnez	s1,538 <neorv32_uart0_print+0x40>
 520:	00c12083          	lw	ra,12(sp)
 524:	00812403          	lw	s0,8(sp)
 528:	00412483          	lw	s1,4(sp)
 52c:	00012903          	lw	s2,0(sp)
 530:	01010113          	addi	sp,sp,16
 534:	00008067          	ret
 538:	01249663          	bne	s1,s2,544 <neorv32_uart0_print+0x4c>
 53c:	00d00513          	li	a0,13
 540:	fa1ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 544:	00048513          	mv	a0,s1
 548:	f99ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 54c:	fc9ff06f          	j	514 <neorv32_uart0_print+0x1c>

00000550 <neorv32_uart0_printf>:
 550:	fa010113          	addi	sp,sp,-96
 554:	04f12a23          	sw	a5,84(sp)
 558:	04410793          	addi	a5,sp,68
 55c:	02812c23          	sw	s0,56(sp)
 560:	03212823          	sw	s2,48(sp)
 564:	03412423          	sw	s4,40(sp)
 568:	03512223          	sw	s5,36(sp)
 56c:	03612023          	sw	s6,32(sp)
 570:	01712e23          	sw	s7,28(sp)
 574:	01812c23          	sw	s8,24(sp)
 578:	01912a23          	sw	s9,20(sp)
 57c:	02112e23          	sw	ra,60(sp)
 580:	02912a23          	sw	s1,52(sp)
 584:	03312623          	sw	s3,44(sp)
 588:	00050413          	mv	s0,a0
 58c:	04b12223          	sw	a1,68(sp)
 590:	04c12423          	sw	a2,72(sp)
 594:	04d12623          	sw	a3,76(sp)
 598:	04e12823          	sw	a4,80(sp)
 59c:	05012c23          	sw	a6,88(sp)
 5a0:	05112e23          	sw	a7,92(sp)
 5a4:	00f12023          	sw	a5,0(sp)
 5a8:	02500a13          	li	s4,37
 5ac:	00a00a93          	li	s5,10
 5b0:	07300913          	li	s2,115
 5b4:	07500b13          	li	s6,117
 5b8:	07800b93          	li	s7,120
 5bc:	06300c13          	li	s8,99
 5c0:	06900c93          	li	s9,105
 5c4:	00044483          	lbu	s1,0(s0)
 5c8:	02049c63          	bnez	s1,600 <neorv32_uart0_printf+0xb0>
 5cc:	03c12083          	lw	ra,60(sp)
 5d0:	03812403          	lw	s0,56(sp)
 5d4:	03412483          	lw	s1,52(sp)
 5d8:	03012903          	lw	s2,48(sp)
 5dc:	02c12983          	lw	s3,44(sp)
 5e0:	02812a03          	lw	s4,40(sp)
 5e4:	02412a83          	lw	s5,36(sp)
 5e8:	02012b03          	lw	s6,32(sp)
 5ec:	01c12b83          	lw	s7,28(sp)
 5f0:	01812c03          	lw	s8,24(sp)
 5f4:	01412c83          	lw	s9,20(sp)
 5f8:	06010113          	addi	sp,sp,96
 5fc:	00008067          	ret
 600:	0d449863          	bne	s1,s4,6d0 <neorv32_uart0_printf+0x180>
 604:	00240993          	addi	s3,s0,2
 608:	00144403          	lbu	s0,1(s0)
 60c:	05240263          	beq	s0,s2,650 <neorv32_uart0_printf+0x100>
 610:	00896e63          	bltu	s2,s0,62c <neorv32_uart0_printf+0xdc>
 614:	05840c63          	beq	s0,s8,66c <neorv32_uart0_printf+0x11c>
 618:	07940663          	beq	s0,s9,684 <neorv32_uart0_printf+0x134>
 61c:	02500513          	li	a0,37
 620:	ec1ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 624:	00040513          	mv	a0,s0
 628:	0540006f          	j	67c <neorv32_uart0_printf+0x12c>
 62c:	09640663          	beq	s0,s6,6b8 <neorv32_uart0_printf+0x168>
 630:	ff7416e3          	bne	s0,s7,61c <neorv32_uart0_printf+0xcc>
 634:	00012783          	lw	a5,0(sp)
 638:	00410593          	addi	a1,sp,4
 63c:	0007a503          	lw	a0,0(a5)
 640:	00478713          	addi	a4,a5,4
 644:	00e12023          	sw	a4,0(sp)
 648:	da1ff0ef          	jal	ra,3e8 <__neorv32_uart_tohex>
 64c:	0640006f          	j	6b0 <neorv32_uart0_printf+0x160>
 650:	00012783          	lw	a5,0(sp)
 654:	0007a503          	lw	a0,0(a5)
 658:	00478713          	addi	a4,a5,4
 65c:	00e12023          	sw	a4,0(sp)
 660:	e99ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 664:	00098413          	mv	s0,s3
 668:	f5dff06f          	j	5c4 <neorv32_uart0_printf+0x74>
 66c:	00012783          	lw	a5,0(sp)
 670:	0007c503          	lbu	a0,0(a5)
 674:	00478713          	addi	a4,a5,4
 678:	00e12023          	sw	a4,0(sp)
 67c:	e65ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 680:	fe5ff06f          	j	664 <neorv32_uart0_printf+0x114>
 684:	00012783          	lw	a5,0(sp)
 688:	0007a403          	lw	s0,0(a5)
 68c:	00478713          	addi	a4,a5,4
 690:	00e12023          	sw	a4,0(sp)
 694:	00045863          	bgez	s0,6a4 <neorv32_uart0_printf+0x154>
 698:	02d00513          	li	a0,45
 69c:	40800433          	neg	s0,s0
 6a0:	e41ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 6a4:	00410593          	addi	a1,sp,4
 6a8:	00040513          	mv	a0,s0
 6ac:	c35ff0ef          	jal	ra,2e0 <__neorv32_uart_itoa>
 6b0:	00410513          	addi	a0,sp,4
 6b4:	fadff06f          	j	660 <neorv32_uart0_printf+0x110>
 6b8:	00012783          	lw	a5,0(sp)
 6bc:	00410593          	addi	a1,sp,4
 6c0:	00478713          	addi	a4,a5,4
 6c4:	0007a503          	lw	a0,0(a5)
 6c8:	00e12023          	sw	a4,0(sp)
 6cc:	fe1ff06f          	j	6ac <neorv32_uart0_printf+0x15c>
 6d0:	01549663          	bne	s1,s5,6dc <neorv32_uart0_printf+0x18c>
 6d4:	00d00513          	li	a0,13
 6d8:	e09ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 6dc:	00140993          	addi	s3,s0,1
 6e0:	00048513          	mv	a0,s1
 6e4:	f99ff06f          	j	67c <neorv32_uart0_printf+0x12c>

000006e8 <neorv32_gpio_available>:
 6e8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 6ec:	01055513          	srli	a0,a0,0x10
 6f0:	00157513          	andi	a0,a0,1
 6f4:	00008067          	ret
 6f8:	0000                	unimp
 6fa:	0000                	unimp
 6fc:	0000                	unimp
 6fe:	0000                	unimp

00000700 <__neorv32_rte_core>:
 700:	fc010113          	addi	sp,sp,-64
 704:	02112e23          	sw	ra,60(sp)
 708:	02512c23          	sw	t0,56(sp)
 70c:	02612a23          	sw	t1,52(sp)
 710:	02712823          	sw	t2,48(sp)
 714:	02a12623          	sw	a0,44(sp)
 718:	02b12423          	sw	a1,40(sp)
 71c:	02c12223          	sw	a2,36(sp)
 720:	02d12023          	sw	a3,32(sp)
 724:	00e12e23          	sw	a4,28(sp)
 728:	00f12c23          	sw	a5,24(sp)
 72c:	01012a23          	sw	a6,20(sp)
 730:	01112823          	sw	a7,16(sp)
 734:	01c12623          	sw	t3,12(sp)
 738:	01d12423          	sw	t4,8(sp)
 73c:	01e12223          	sw	t5,4(sp)
 740:	01f12023          	sw	t6,0(sp)
 744:	34102773          	csrr	a4,mepc
 748:	34071073          	csrw	mscratch,a4
 74c:	342027f3          	csrr	a5,mcause
 750:	0807ca63          	bltz	a5,7e4 <__neorv32_rte_core+0xe4>
 754:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3efbc>
 758:	00300593          	li	a1,3
 75c:	0036f693          	andi	a3,a3,3
 760:	00270613          	addi	a2,a4,2
 764:	00b69463          	bne	a3,a1,76c <__neorv32_rte_core+0x6c>
 768:	00470613          	addi	a2,a4,4
 76c:	34161073          	csrw	mepc,a2
 770:	00b00713          	li	a4,11
 774:	04f77c63          	bgeu	a4,a5,7cc <__neorv32_rte_core+0xcc>
 778:	000017b7          	lui	a5,0x1
 77c:	98078793          	addi	a5,a5,-1664 # 980 <__neorv32_rte_debug_exc_handler>
 780:	000780e7          	jalr	a5
 784:	03c12083          	lw	ra,60(sp)
 788:	03812283          	lw	t0,56(sp)
 78c:	03412303          	lw	t1,52(sp)
 790:	03012383          	lw	t2,48(sp)
 794:	02c12503          	lw	a0,44(sp)
 798:	02812583          	lw	a1,40(sp)
 79c:	02412603          	lw	a2,36(sp)
 7a0:	02012683          	lw	a3,32(sp)
 7a4:	01c12703          	lw	a4,28(sp)
 7a8:	01812783          	lw	a5,24(sp)
 7ac:	01412803          	lw	a6,20(sp)
 7b0:	01012883          	lw	a7,16(sp)
 7b4:	00c12e03          	lw	t3,12(sp)
 7b8:	00812e83          	lw	t4,8(sp)
 7bc:	00412f03          	lw	t5,4(sp)
 7c0:	00012f83          	lw	t6,0(sp)
 7c4:	04010113          	addi	sp,sp,64
 7c8:	30200073          	mret
 7cc:	00001737          	lui	a4,0x1
 7d0:	00279793          	slli	a5,a5,0x2
 7d4:	d9c70713          	addi	a4,a4,-612 # d9c <symbols.0+0x14>
 7d8:	00e787b3          	add	a5,a5,a4
 7dc:	0007a783          	lw	a5,0(a5)
 7e0:	00078067          	jr	a5
 7e4:	80000737          	lui	a4,0x80000
 7e8:	ffd74713          	xori	a4,a4,-3
 7ec:	00e787b3          	add	a5,a5,a4
 7f0:	01c00713          	li	a4,28
 7f4:	f8f762e3          	bltu	a4,a5,778 <__neorv32_rte_core+0x78>
 7f8:	00001737          	lui	a4,0x1
 7fc:	00279793          	slli	a5,a5,0x2
 800:	dcc70713          	addi	a4,a4,-564 # dcc <symbols.0+0x44>
 804:	00e787b3          	add	a5,a5,a4
 808:	0007a783          	lw	a5,0(a5)
 80c:	00078067          	jr	a5
 810:	800007b7          	lui	a5,0x80000
 814:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 818:	f69ff06f          	j	780 <__neorv32_rte_core+0x80>
 81c:	800007b7          	lui	a5,0x80000
 820:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 824:	f5dff06f          	j	780 <__neorv32_rte_core+0x80>
 828:	800007b7          	lui	a5,0x80000
 82c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 830:	f51ff06f          	j	780 <__neorv32_rte_core+0x80>
 834:	800007b7          	lui	a5,0x80000
 838:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 83c:	f45ff06f          	j	780 <__neorv32_rte_core+0x80>
 840:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 844:	f3dff06f          	j	780 <__neorv32_rte_core+0x80>
 848:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 84c:	f35ff06f          	j	780 <__neorv32_rte_core+0x80>
 850:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 854:	f2dff06f          	j	780 <__neorv32_rte_core+0x80>
 858:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 85c:	f25ff06f          	j	780 <__neorv32_rte_core+0x80>
 860:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 864:	f1dff06f          	j	780 <__neorv32_rte_core+0x80>
 868:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 86c:	f15ff06f          	j	780 <__neorv32_rte_core+0x80>
 870:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 874:	f0dff06f          	j	780 <__neorv32_rte_core+0x80>
 878:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 87c:	f05ff06f          	j	780 <__neorv32_rte_core+0x80>
 880:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 884:	efdff06f          	j	780 <__neorv32_rte_core+0x80>
 888:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 88c:	ef5ff06f          	j	780 <__neorv32_rte_core+0x80>
 890:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 894:	eedff06f          	j	780 <__neorv32_rte_core+0x80>
 898:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 89c:	ee5ff06f          	j	780 <__neorv32_rte_core+0x80>
 8a0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 8a4:	eddff06f          	j	780 <__neorv32_rte_core+0x80>
 8a8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 8ac:	ed5ff06f          	j	780 <__neorv32_rte_core+0x80>
 8b0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 8b4:	ecdff06f          	j	780 <__neorv32_rte_core+0x80>
 8b8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 8bc:	ec5ff06f          	j	780 <__neorv32_rte_core+0x80>
 8c0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 8c4:	ebdff06f          	j	780 <__neorv32_rte_core+0x80>
 8c8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 8cc:	eb5ff06f          	j	780 <__neorv32_rte_core+0x80>
 8d0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 8d4:	eadff06f          	j	780 <__neorv32_rte_core+0x80>
 8d8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 8dc:	ea5ff06f          	j	780 <__neorv32_rte_core+0x80>
 8e0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 8e4:	e9dff06f          	j	780 <__neorv32_rte_core+0x80>
 8e8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 8ec:	e95ff06f          	j	780 <__neorv32_rte_core+0x80>
 8f0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 8f4:	e8dff06f          	j	780 <__neorv32_rte_core+0x80>
 8f8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 8fc:	e85ff06f          	j	780 <__neorv32_rte_core+0x80>
 900:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 904:	e7dff06f          	j	780 <__neorv32_rte_core+0x80>
 908:	0000                	unimp
 90a:	0000                	unimp
 90c:	0000                	unimp
 90e:	0000                	unimp

00000910 <__neorv32_rte_print_hex_word>:
 910:	fe010113          	addi	sp,sp,-32
 914:	01212823          	sw	s2,16(sp)
 918:	00050913          	mv	s2,a0
 91c:	00001537          	lui	a0,0x1
 920:	00912a23          	sw	s1,20(sp)
 924:	e4050513          	addi	a0,a0,-448 # e40 <symbols.0+0xb8>
 928:	000014b7          	lui	s1,0x1
 92c:	00812c23          	sw	s0,24(sp)
 930:	01312623          	sw	s3,12(sp)
 934:	00112e23          	sw	ra,28(sp)
 938:	01c00413          	li	s0,28
 93c:	bbdff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 940:	03448493          	addi	s1,s1,52 # 1034 <hex_symbols.0>
 944:	ffc00993          	li	s3,-4
 948:	008957b3          	srl	a5,s2,s0
 94c:	00f7f793          	andi	a5,a5,15
 950:	00f487b3          	add	a5,s1,a5
 954:	0007c503          	lbu	a0,0(a5)
 958:	ffc40413          	addi	s0,s0,-4
 95c:	b85ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 960:	ff3414e3          	bne	s0,s3,948 <__neorv32_rte_print_hex_word+0x38>
 964:	01c12083          	lw	ra,28(sp)
 968:	01812403          	lw	s0,24(sp)
 96c:	01412483          	lw	s1,20(sp)
 970:	01012903          	lw	s2,16(sp)
 974:	00c12983          	lw	s3,12(sp)
 978:	02010113          	addi	sp,sp,32
 97c:	00008067          	ret

00000980 <__neorv32_rte_debug_exc_handler>:
 980:	ff010113          	addi	sp,sp,-16
 984:	00112623          	sw	ra,12(sp)
 988:	00812423          	sw	s0,8(sp)
 98c:	00912223          	sw	s1,4(sp)
 990:	a95ff0ef          	jal	ra,424 <neorv32_uart0_available>
 994:	1c050863          	beqz	a0,b64 <__neorv32_rte_debug_exc_handler+0x1e4>
 998:	00001537          	lui	a0,0x1
 99c:	e4450513          	addi	a0,a0,-444 # e44 <symbols.0+0xbc>
 9a0:	b59ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 9a4:	34202473          	csrr	s0,mcause
 9a8:	00900713          	li	a4,9
 9ac:	00f47793          	andi	a5,s0,15
 9b0:	03078493          	addi	s1,a5,48
 9b4:	00f77463          	bgeu	a4,a5,9bc <__neorv32_rte_debug_exc_handler+0x3c>
 9b8:	05778493          	addi	s1,a5,87
 9bc:	00b00793          	li	a5,11
 9c0:	0087ee63          	bltu	a5,s0,9dc <__neorv32_rte_debug_exc_handler+0x5c>
 9c4:	00001737          	lui	a4,0x1
 9c8:	00241793          	slli	a5,s0,0x2
 9cc:	00470713          	addi	a4,a4,4 # 1004 <symbols.0+0x27c>
 9d0:	00e787b3          	add	a5,a5,a4
 9d4:	0007a783          	lw	a5,0(a5)
 9d8:	00078067          	jr	a5
 9dc:	800007b7          	lui	a5,0x80000
 9e0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 9e4:	14e40e63          	beq	s0,a4,b40 <__neorv32_rte_debug_exc_handler+0x1c0>
 9e8:	02876a63          	bltu	a4,s0,a1c <__neorv32_rte_debug_exc_handler+0x9c>
 9ec:	00378713          	addi	a4,a5,3
 9f0:	12e40c63          	beq	s0,a4,b28 <__neorv32_rte_debug_exc_handler+0x1a8>
 9f4:	00778793          	addi	a5,a5,7
 9f8:	12f40e63          	beq	s0,a5,b34 <__neorv32_rte_debug_exc_handler+0x1b4>
 9fc:	00001537          	lui	a0,0x1
 a00:	fa450513          	addi	a0,a0,-92 # fa4 <symbols.0+0x21c>
 a04:	af5ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 a08:	00040513          	mv	a0,s0
 a0c:	f05ff0ef          	jal	ra,910 <__neorv32_rte_print_hex_word>
 a10:	00100793          	li	a5,1
 a14:	08f40c63          	beq	s0,a5,aac <__neorv32_rte_debug_exc_handler+0x12c>
 a18:	0280006f          	j	a40 <__neorv32_rte_debug_exc_handler+0xc0>
 a1c:	ff07c793          	xori	a5,a5,-16
 a20:	00f407b3          	add	a5,s0,a5
 a24:	00f00713          	li	a4,15
 a28:	fcf76ae3          	bltu	a4,a5,9fc <__neorv32_rte_debug_exc_handler+0x7c>
 a2c:	00001537          	lui	a0,0x1
 a30:	f9450513          	addi	a0,a0,-108 # f94 <symbols.0+0x20c>
 a34:	ac5ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 a38:	00048513          	mv	a0,s1
 a3c:	aa5ff0ef          	jal	ra,4e0 <neorv32_uart0_putc>
 a40:	ffd47413          	andi	s0,s0,-3
 a44:	00500793          	li	a5,5
 a48:	06f40263          	beq	s0,a5,aac <__neorv32_rte_debug_exc_handler+0x12c>
 a4c:	00001537          	lui	a0,0x1
 a50:	fe850513          	addi	a0,a0,-24 # fe8 <symbols.0+0x260>
 a54:	aa5ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 a58:	34002573          	csrr	a0,mscratch
 a5c:	eb5ff0ef          	jal	ra,910 <__neorv32_rte_print_hex_word>
 a60:	00001537          	lui	a0,0x1
 a64:	ff050513          	addi	a0,a0,-16 # ff0 <symbols.0+0x268>
 a68:	a91ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 a6c:	34302573          	csrr	a0,mtval
 a70:	ea1ff0ef          	jal	ra,910 <__neorv32_rte_print_hex_word>
 a74:	00812403          	lw	s0,8(sp)
 a78:	00c12083          	lw	ra,12(sp)
 a7c:	00412483          	lw	s1,4(sp)
 a80:	00001537          	lui	a0,0x1
 a84:	ffc50513          	addi	a0,a0,-4 # ffc <symbols.0+0x274>
 a88:	01010113          	addi	sp,sp,16
 a8c:	a6dff06f          	j	4f8 <neorv32_uart0_print>
 a90:	00001537          	lui	a0,0x1
 a94:	e4c50513          	addi	a0,a0,-436 # e4c <symbols.0+0xc4>
 a98:	a61ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 a9c:	fb1ff06f          	j	a4c <__neorv32_rte_debug_exc_handler+0xcc>
 aa0:	00001537          	lui	a0,0x1
 aa4:	e6c50513          	addi	a0,a0,-404 # e6c <symbols.0+0xe4>
 aa8:	a51ff0ef          	jal	ra,4f8 <neorv32_uart0_print>
 aac:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 ab0:	0a07d463          	bgez	a5,b58 <__neorv32_rte_debug_exc_handler+0x1d8>
 ab4:	0017f793          	andi	a5,a5,1
 ab8:	08078a63          	beqz	a5,b4c <__neorv32_rte_debug_exc_handler+0x1cc>
 abc:	00001537          	lui	a0,0x1
 ac0:	fbc50513          	addi	a0,a0,-68 # fbc <symbols.0+0x234>
 ac4:	fd5ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 ac8:	00001537          	lui	a0,0x1
 acc:	e8850513          	addi	a0,a0,-376 # e88 <symbols.0+0x100>
 ad0:	fc9ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 ad4:	00001537          	lui	a0,0x1
 ad8:	e9c50513          	addi	a0,a0,-356 # e9c <symbols.0+0x114>
 adc:	fbdff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 ae0:	00001537          	lui	a0,0x1
 ae4:	ea850513          	addi	a0,a0,-344 # ea8 <symbols.0+0x120>
 ae8:	fb1ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 aec:	00001537          	lui	a0,0x1
 af0:	ec050513          	addi	a0,a0,-320 # ec0 <symbols.0+0x138>
 af4:	fb5ff06f          	j	aa8 <__neorv32_rte_debug_exc_handler+0x128>
 af8:	00001537          	lui	a0,0x1
 afc:	ed450513          	addi	a0,a0,-300 # ed4 <symbols.0+0x14c>
 b00:	f99ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b04:	00001537          	lui	a0,0x1
 b08:	ef050513          	addi	a0,a0,-272 # ef0 <symbols.0+0x168>
 b0c:	f9dff06f          	j	aa8 <__neorv32_rte_debug_exc_handler+0x128>
 b10:	00001537          	lui	a0,0x1
 b14:	f0450513          	addi	a0,a0,-252 # f04 <symbols.0+0x17c>
 b18:	f81ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b1c:	00001537          	lui	a0,0x1
 b20:	f2450513          	addi	a0,a0,-220 # f24 <symbols.0+0x19c>
 b24:	f75ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b28:	00001537          	lui	a0,0x1
 b2c:	f4450513          	addi	a0,a0,-188 # f44 <symbols.0+0x1bc>
 b30:	f69ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b34:	00001537          	lui	a0,0x1
 b38:	f6050513          	addi	a0,a0,-160 # f60 <symbols.0+0x1d8>
 b3c:	f5dff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b40:	00001537          	lui	a0,0x1
 b44:	f7850513          	addi	a0,a0,-136 # f78 <symbols.0+0x1f0>
 b48:	f51ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b4c:	00001537          	lui	a0,0x1
 b50:	fcc50513          	addi	a0,a0,-52 # fcc <symbols.0+0x244>
 b54:	f45ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b58:	00001537          	lui	a0,0x1
 b5c:	fdc50513          	addi	a0,a0,-36 # fdc <symbols.0+0x254>
 b60:	f39ff06f          	j	a98 <__neorv32_rte_debug_exc_handler+0x118>
 b64:	00c12083          	lw	ra,12(sp)
 b68:	00812403          	lw	s0,8(sp)
 b6c:	00412483          	lw	s1,4(sp)
 b70:	01010113          	addi	sp,sp,16
 b74:	00008067          	ret

00000b78 <neorv32_rte_exception_uninstall>:
 b78:	01f00793          	li	a5,31
 b7c:	02a7e463          	bltu	a5,a0,ba4 <neorv32_rte_exception_uninstall+0x2c>
 b80:	800007b7          	lui	a5,0x80000
 b84:	00078793          	mv	a5,a5
 b88:	00251513          	slli	a0,a0,0x2
 b8c:	00a78533          	add	a0,a5,a0
 b90:	000017b7          	lui	a5,0x1
 b94:	98078793          	addi	a5,a5,-1664 # 980 <__neorv32_rte_debug_exc_handler>
 b98:	00f52023          	sw	a5,0(a0)
 b9c:	00000513          	li	a0,0
 ba0:	00008067          	ret
 ba4:	00100513          	li	a0,1
 ba8:	00008067          	ret

00000bac <neorv32_rte_setup>:
 bac:	ff010113          	addi	sp,sp,-16
 bb0:	00112623          	sw	ra,12(sp)
 bb4:	00812423          	sw	s0,8(sp)
 bb8:	00912223          	sw	s1,4(sp)
 bbc:	70000793          	li	a5,1792
 bc0:	30579073          	csrw	mtvec,a5
 bc4:	00000413          	li	s0,0
 bc8:	01d00493          	li	s1,29
 bcc:	00040513          	mv	a0,s0
 bd0:	00140413          	addi	s0,s0,1
 bd4:	0ff47413          	andi	s0,s0,255
 bd8:	fa1ff0ef          	jal	ra,b78 <neorv32_rte_exception_uninstall>
 bdc:	fe9418e3          	bne	s0,s1,bcc <neorv32_rte_setup+0x20>
 be0:	00c12083          	lw	ra,12(sp)
 be4:	00812403          	lw	s0,8(sp)
 be8:	00412483          	lw	s1,4(sp)
 bec:	01010113          	addi	sp,sp,16
 bf0:	00008067          	ret

00000bf4 <__divsi3>:
 bf4:	06054063          	bltz	a0,c54 <__umodsi3+0x10>
 bf8:	0605c663          	bltz	a1,c64 <__umodsi3+0x20>

00000bfc <__udivsi3>:
 bfc:	00058613          	mv	a2,a1
 c00:	00050593          	mv	a1,a0
 c04:	fff00513          	li	a0,-1
 c08:	02060c63          	beqz	a2,c40 <__udivsi3+0x44>
 c0c:	00100693          	li	a3,1
 c10:	00b67a63          	bgeu	a2,a1,c24 <__udivsi3+0x28>
 c14:	00c05863          	blez	a2,c24 <__udivsi3+0x28>
 c18:	00161613          	slli	a2,a2,0x1
 c1c:	00169693          	slli	a3,a3,0x1
 c20:	feb66ae3          	bltu	a2,a1,c14 <__udivsi3+0x18>
 c24:	00000513          	li	a0,0
 c28:	00c5e663          	bltu	a1,a2,c34 <__udivsi3+0x38>
 c2c:	40c585b3          	sub	a1,a1,a2
 c30:	00d56533          	or	a0,a0,a3
 c34:	0016d693          	srli	a3,a3,0x1
 c38:	00165613          	srli	a2,a2,0x1
 c3c:	fe0696e3          	bnez	a3,c28 <__udivsi3+0x2c>
 c40:	00008067          	ret

00000c44 <__umodsi3>:
 c44:	00008293          	mv	t0,ra
 c48:	fb5ff0ef          	jal	ra,bfc <__udivsi3>
 c4c:	00058513          	mv	a0,a1
 c50:	00028067          	jr	t0
 c54:	40a00533          	neg	a0,a0
 c58:	00b04863          	bgtz	a1,c68 <__umodsi3+0x24>
 c5c:	40b005b3          	neg	a1,a1
 c60:	f9dff06f          	j	bfc <__udivsi3>
 c64:	40b005b3          	neg	a1,a1
 c68:	00008293          	mv	t0,ra
 c6c:	f91ff0ef          	jal	ra,bfc <__udivsi3>
 c70:	40a00533          	neg	a0,a0
 c74:	00028067          	jr	t0

00000c78 <__modsi3>:
 c78:	00008293          	mv	t0,ra
 c7c:	0005ca63          	bltz	a1,c90 <__modsi3+0x18>
 c80:	00054c63          	bltz	a0,c98 <__modsi3+0x20>
 c84:	f79ff0ef          	jal	ra,bfc <__udivsi3>
 c88:	00058513          	mv	a0,a1
 c8c:	00028067          	jr	t0
 c90:	40b005b3          	neg	a1,a1
 c94:	fe0558e3          	bgez	a0,c84 <__modsi3+0xc>
 c98:	40a00533          	neg	a0,a0
 c9c:	f61ff0ef          	jal	ra,bfc <__udivsi3>
 ca0:	40b00533          	neg	a0,a1
 ca4:	00028067          	jr	t0
