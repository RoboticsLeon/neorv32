
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
  e0:	13458593          	addi	a1,a1,308 # 1210 <__crt0_copy_data_src_begin>
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
 180:	fe010113          	addi	sp,sp,-32
 184:	00112e23          	sw	ra,28(sp)
 188:	00812c23          	sw	s0,24(sp)
 18c:	00912a23          	sw	s1,20(sp)
 190:	01212823          	sw	s2,16(sp)
 194:	01312623          	sw	s3,12(sp)
 198:	01412423          	sw	s4,8(sp)
 19c:	504000ef          	jal	ra,6a0 <neorv32_pwm_available>
 1a0:	0c050a63          	beqz	a0,274 <main+0xf4>
 1a4:	2f9000ef          	jal	ra,c9c <neorv32_rte_setup>
 1a8:	234000ef          	jal	ra,3dc <neorv32_uart0_available>
 1ac:	02050663          	beqz	a0,1d8 <main+0x58>
 1b0:	00005537          	lui	a0,0x5
 1b4:	00000613          	li	a2,0
 1b8:	00000593          	li	a1,0
 1bc:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x38f0>
 1c0:	22c000ef          	jal	ra,3ec <neorv32_uart0_setup>
 1c4:	00000513          	li	a0,0
 1c8:	31d000ef          	jal	ra,ce4 <neorv32_rte_check_isa>
 1cc:	00001537          	lui	a0,0x1
 1d0:	eac50513          	addi	a0,a0,-340 # eac <__etext>
 1d4:	2dc000ef          	jal	ra,4b0 <neorv32_uart0_print>
 1d8:	00000593          	li	a1,0
 1dc:	00000513          	li	a0,0
 1e0:	4ec000ef          	jal	ra,6cc <neorv32_pwm_set>
 1e4:	00000593          	li	a1,0
 1e8:	00100513          	li	a0,1
 1ec:	4e0000ef          	jal	ra,6cc <neorv32_pwm_set>
 1f0:	00000593          	li	a1,0
 1f4:	00200513          	li	a0,2
 1f8:	4d4000ef          	jal	ra,6cc <neorv32_pwm_set>
 1fc:	00000593          	li	a1,0
 200:	00300513          	li	a0,3
 204:	4c8000ef          	jal	ra,6cc <neorv32_pwm_set>
 208:	00300513          	li	a0,3
 20c:	4a4000ef          	jal	ra,6b0 <neorv32_pwm_setup>
 210:	00000493          	li	s1,0
 214:	00100913          	li	s2,1
 218:	00000413          	li	s0,0
 21c:	08000a13          	li	s4,128
 220:	00300993          	li	s3,3
 224:	00090a63          	beqz	s2,238 <main+0xb8>
 228:	05440263          	beq	s0,s4,26c <main+0xec>
 22c:	00140413          	addi	s0,s0,1
 230:	0ff47413          	andi	s0,s0,255
 234:	0140006f          	j	248 <main+0xc8>
 238:	02041663          	bnez	s0,264 <main+0xe4>
 23c:	00148493          	addi	s1,s1,1
 240:	0034f493          	andi	s1,s1,3
 244:	00100913          	li	s2,1
 248:	01348863          	beq	s1,s3,258 <main+0xd8>
 24c:	00040593          	mv	a1,s0
 250:	00048513          	mv	a0,s1
 254:	478000ef          	jal	ra,6cc <neorv32_pwm_set>
 258:	00a00513          	li	a0,10
 25c:	4d4000ef          	jal	ra,730 <neorv32_cpu_delay_ms>
 260:	fc5ff06f          	j	224 <main+0xa4>
 264:	fff40413          	addi	s0,s0,-1
 268:	fc9ff06f          	j	230 <main+0xb0>
 26c:	00000913          	li	s2,0
 270:	fd9ff06f          	j	248 <main+0xc8>
 274:	01c12083          	lw	ra,28(sp)
 278:	01812403          	lw	s0,24(sp)
 27c:	01412483          	lw	s1,20(sp)
 280:	01012903          	lw	s2,16(sp)
 284:	00c12983          	lw	s3,12(sp)
 288:	00812a03          	lw	s4,8(sp)
 28c:	00100513          	li	a0,1
 290:	02010113          	addi	sp,sp,32
 294:	00008067          	ret

00000298 <__neorv32_uart_itoa>:
 298:	fd010113          	addi	sp,sp,-48
 29c:	02812423          	sw	s0,40(sp)
 2a0:	02912223          	sw	s1,36(sp)
 2a4:	03212023          	sw	s2,32(sp)
 2a8:	01312e23          	sw	s3,28(sp)
 2ac:	01412c23          	sw	s4,24(sp)
 2b0:	02112623          	sw	ra,44(sp)
 2b4:	01512a23          	sw	s5,20(sp)
 2b8:	00001a37          	lui	s4,0x1
 2bc:	00050493          	mv	s1,a0
 2c0:	00058413          	mv	s0,a1
 2c4:	00058523          	sb	zero,10(a1)
 2c8:	00000993          	li	s3,0
 2cc:	00410913          	addi	s2,sp,4
 2d0:	ec0a0a13          	addi	s4,s4,-320 # ec0 <numbers.1>
 2d4:	00a00593          	li	a1,10
 2d8:	00048513          	mv	a0,s1
 2dc:	36d000ef          	jal	ra,e48 <__umodsi3>
 2e0:	00aa0533          	add	a0,s4,a0
 2e4:	00054783          	lbu	a5,0(a0)
 2e8:	01390ab3          	add	s5,s2,s3
 2ec:	00048513          	mv	a0,s1
 2f0:	00fa8023          	sb	a5,0(s5)
 2f4:	00a00593          	li	a1,10
 2f8:	309000ef          	jal	ra,e00 <__udivsi3>
 2fc:	00198993          	addi	s3,s3,1
 300:	00a00793          	li	a5,10
 304:	00050493          	mv	s1,a0
 308:	fcf996e3          	bne	s3,a5,2d4 <__neorv32_uart_itoa+0x3c>
 30c:	00090693          	mv	a3,s2
 310:	00900713          	li	a4,9
 314:	03000613          	li	a2,48
 318:	0096c583          	lbu	a1,9(a3)
 31c:	00070793          	mv	a5,a4
 320:	fff70713          	addi	a4,a4,-1
 324:	01071713          	slli	a4,a4,0x10
 328:	01075713          	srli	a4,a4,0x10
 32c:	00c59a63          	bne	a1,a2,340 <__neorv32_uart_itoa+0xa8>
 330:	000684a3          	sb	zero,9(a3)
 334:	fff68693          	addi	a3,a3,-1
 338:	fe0710e3          	bnez	a4,318 <__neorv32_uart_itoa+0x80>
 33c:	00000793          	li	a5,0
 340:	00f907b3          	add	a5,s2,a5
 344:	00000593          	li	a1,0
 348:	0007c703          	lbu	a4,0(a5)
 34c:	00070c63          	beqz	a4,364 <__neorv32_uart_itoa+0xcc>
 350:	00158693          	addi	a3,a1,1
 354:	00b405b3          	add	a1,s0,a1
 358:	00e58023          	sb	a4,0(a1)
 35c:	01069593          	slli	a1,a3,0x10
 360:	0105d593          	srli	a1,a1,0x10
 364:	fff78713          	addi	a4,a5,-1
 368:	02f91863          	bne	s2,a5,398 <__neorv32_uart_itoa+0x100>
 36c:	00b40433          	add	s0,s0,a1
 370:	00040023          	sb	zero,0(s0)
 374:	02c12083          	lw	ra,44(sp)
 378:	02812403          	lw	s0,40(sp)
 37c:	02412483          	lw	s1,36(sp)
 380:	02012903          	lw	s2,32(sp)
 384:	01c12983          	lw	s3,28(sp)
 388:	01812a03          	lw	s4,24(sp)
 38c:	01412a83          	lw	s5,20(sp)
 390:	03010113          	addi	sp,sp,48
 394:	00008067          	ret
 398:	00070793          	mv	a5,a4
 39c:	fadff06f          	j	348 <__neorv32_uart_itoa+0xb0>

000003a0 <__neorv32_uart_tohex>:
 3a0:	00001637          	lui	a2,0x1
 3a4:	00758693          	addi	a3,a1,7
 3a8:	00000713          	li	a4,0
 3ac:	ecc60613          	addi	a2,a2,-308 # ecc <symbols.0>
 3b0:	02000813          	li	a6,32
 3b4:	00e557b3          	srl	a5,a0,a4
 3b8:	00f7f793          	andi	a5,a5,15
 3bc:	00f607b3          	add	a5,a2,a5
 3c0:	0007c783          	lbu	a5,0(a5)
 3c4:	00470713          	addi	a4,a4,4
 3c8:	fff68693          	addi	a3,a3,-1
 3cc:	00f680a3          	sb	a5,1(a3)
 3d0:	ff0712e3          	bne	a4,a6,3b4 <__neorv32_uart_tohex+0x14>
 3d4:	00058423          	sb	zero,8(a1)
 3d8:	00008067          	ret

000003dc <neorv32_uart0_available>:
 3dc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 3e0:	01255513          	srli	a0,a0,0x12
 3e4:	00157513          	andi	a0,a0,1
 3e8:	00008067          	ret

000003ec <neorv32_uart0_setup>:
 3ec:	ff010113          	addi	sp,sp,-16
 3f0:	00812423          	sw	s0,8(sp)
 3f4:	00912223          	sw	s1,4(sp)
 3f8:	00112623          	sw	ra,12(sp)
 3fc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 400:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 404:	00058413          	mv	s0,a1
 408:	00151593          	slli	a1,a0,0x1
 40c:	00078513          	mv	a0,a5
 410:	00060493          	mv	s1,a2
 414:	1ed000ef          	jal	ra,e00 <__udivsi3>
 418:	01051513          	slli	a0,a0,0x10
 41c:	000017b7          	lui	a5,0x1
 420:	01055513          	srli	a0,a0,0x10
 424:	00000713          	li	a4,0
 428:	ffe78793          	addi	a5,a5,-2 # ffe <symbols.0+0x132>
 42c:	04a7e463          	bltu	a5,a0,474 <neorv32_uart0_setup+0x88>
 430:	0034f793          	andi	a5,s1,3
 434:	00347413          	andi	s0,s0,3
 438:	fff50513          	addi	a0,a0,-1
 43c:	01479793          	slli	a5,a5,0x14
 440:	01641413          	slli	s0,s0,0x16
 444:	00f567b3          	or	a5,a0,a5
 448:	0087e7b3          	or	a5,a5,s0
 44c:	01871713          	slli	a4,a4,0x18
 450:	00c12083          	lw	ra,12(sp)
 454:	00812403          	lw	s0,8(sp)
 458:	00e7e7b3          	or	a5,a5,a4
 45c:	10000737          	lui	a4,0x10000
 460:	00e7e7b3          	or	a5,a5,a4
 464:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 468:	00412483          	lw	s1,4(sp)
 46c:	01010113          	addi	sp,sp,16
 470:	00008067          	ret
 474:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffedee>
 478:	0fd6f693          	andi	a3,a3,253
 47c:	00069a63          	bnez	a3,490 <neorv32_uart0_setup+0xa4>
 480:	00355513          	srli	a0,a0,0x3
 484:	00170713          	addi	a4,a4,1
 488:	0ff77713          	andi	a4,a4,255
 48c:	fa1ff06f          	j	42c <neorv32_uart0_setup+0x40>
 490:	00155513          	srli	a0,a0,0x1
 494:	ff1ff06f          	j	484 <neorv32_uart0_setup+0x98>

00000498 <neorv32_uart0_putc>:
 498:	00040737          	lui	a4,0x40
 49c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4a0:	00e7f7b3          	and	a5,a5,a4
 4a4:	fe079ce3          	bnez	a5,49c <neorv32_uart0_putc+0x4>
 4a8:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 4ac:	00008067          	ret

000004b0 <neorv32_uart0_print>:
 4b0:	ff010113          	addi	sp,sp,-16
 4b4:	00812423          	sw	s0,8(sp)
 4b8:	01212023          	sw	s2,0(sp)
 4bc:	00112623          	sw	ra,12(sp)
 4c0:	00912223          	sw	s1,4(sp)
 4c4:	00050413          	mv	s0,a0
 4c8:	00a00913          	li	s2,10
 4cc:	00044483          	lbu	s1,0(s0)
 4d0:	00140413          	addi	s0,s0,1
 4d4:	00049e63          	bnez	s1,4f0 <neorv32_uart0_print+0x40>
 4d8:	00c12083          	lw	ra,12(sp)
 4dc:	00812403          	lw	s0,8(sp)
 4e0:	00412483          	lw	s1,4(sp)
 4e4:	00012903          	lw	s2,0(sp)
 4e8:	01010113          	addi	sp,sp,16
 4ec:	00008067          	ret
 4f0:	01249663          	bne	s1,s2,4fc <neorv32_uart0_print+0x4c>
 4f4:	00d00513          	li	a0,13
 4f8:	fa1ff0ef          	jal	ra,498 <neorv32_uart0_putc>
 4fc:	00048513          	mv	a0,s1
 500:	f99ff0ef          	jal	ra,498 <neorv32_uart0_putc>
 504:	fc9ff06f          	j	4cc <neorv32_uart0_print+0x1c>

00000508 <neorv32_uart0_printf>:
 508:	fa010113          	addi	sp,sp,-96
 50c:	04f12a23          	sw	a5,84(sp)
 510:	04410793          	addi	a5,sp,68
 514:	02812c23          	sw	s0,56(sp)
 518:	03212823          	sw	s2,48(sp)
 51c:	03412423          	sw	s4,40(sp)
 520:	03512223          	sw	s5,36(sp)
 524:	03612023          	sw	s6,32(sp)
 528:	01712e23          	sw	s7,28(sp)
 52c:	01812c23          	sw	s8,24(sp)
 530:	01912a23          	sw	s9,20(sp)
 534:	02112e23          	sw	ra,60(sp)
 538:	02912a23          	sw	s1,52(sp)
 53c:	03312623          	sw	s3,44(sp)
 540:	00050413          	mv	s0,a0
 544:	04b12223          	sw	a1,68(sp)
 548:	04c12423          	sw	a2,72(sp)
 54c:	04d12623          	sw	a3,76(sp)
 550:	04e12823          	sw	a4,80(sp)
 554:	05012c23          	sw	a6,88(sp)
 558:	05112e23          	sw	a7,92(sp)
 55c:	00f12023          	sw	a5,0(sp)
 560:	02500a13          	li	s4,37
 564:	00a00a93          	li	s5,10
 568:	07300913          	li	s2,115
 56c:	07500b13          	li	s6,117
 570:	07800b93          	li	s7,120
 574:	06300c13          	li	s8,99
 578:	06900c93          	li	s9,105
 57c:	00044483          	lbu	s1,0(s0)
 580:	02049c63          	bnez	s1,5b8 <neorv32_uart0_printf+0xb0>
 584:	03c12083          	lw	ra,60(sp)
 588:	03812403          	lw	s0,56(sp)
 58c:	03412483          	lw	s1,52(sp)
 590:	03012903          	lw	s2,48(sp)
 594:	02c12983          	lw	s3,44(sp)
 598:	02812a03          	lw	s4,40(sp)
 59c:	02412a83          	lw	s5,36(sp)
 5a0:	02012b03          	lw	s6,32(sp)
 5a4:	01c12b83          	lw	s7,28(sp)
 5a8:	01812c03          	lw	s8,24(sp)
 5ac:	01412c83          	lw	s9,20(sp)
 5b0:	06010113          	addi	sp,sp,96
 5b4:	00008067          	ret
 5b8:	0d449863          	bne	s1,s4,688 <neorv32_uart0_printf+0x180>
 5bc:	00240993          	addi	s3,s0,2
 5c0:	00144403          	lbu	s0,1(s0)
 5c4:	05240263          	beq	s0,s2,608 <neorv32_uart0_printf+0x100>
 5c8:	00896e63          	bltu	s2,s0,5e4 <neorv32_uart0_printf+0xdc>
 5cc:	05840c63          	beq	s0,s8,624 <neorv32_uart0_printf+0x11c>
 5d0:	07940663          	beq	s0,s9,63c <neorv32_uart0_printf+0x134>
 5d4:	02500513          	li	a0,37
 5d8:	ec1ff0ef          	jal	ra,498 <neorv32_uart0_putc>
 5dc:	00040513          	mv	a0,s0
 5e0:	0540006f          	j	634 <neorv32_uart0_printf+0x12c>
 5e4:	09640663          	beq	s0,s6,670 <neorv32_uart0_printf+0x168>
 5e8:	ff7416e3          	bne	s0,s7,5d4 <neorv32_uart0_printf+0xcc>
 5ec:	00012783          	lw	a5,0(sp)
 5f0:	00410593          	addi	a1,sp,4
 5f4:	0007a503          	lw	a0,0(a5)
 5f8:	00478713          	addi	a4,a5,4
 5fc:	00e12023          	sw	a4,0(sp)
 600:	da1ff0ef          	jal	ra,3a0 <__neorv32_uart_tohex>
 604:	0640006f          	j	668 <neorv32_uart0_printf+0x160>
 608:	00012783          	lw	a5,0(sp)
 60c:	0007a503          	lw	a0,0(a5)
 610:	00478713          	addi	a4,a5,4
 614:	00e12023          	sw	a4,0(sp)
 618:	e99ff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 61c:	00098413          	mv	s0,s3
 620:	f5dff06f          	j	57c <neorv32_uart0_printf+0x74>
 624:	00012783          	lw	a5,0(sp)
 628:	0007c503          	lbu	a0,0(a5)
 62c:	00478713          	addi	a4,a5,4
 630:	00e12023          	sw	a4,0(sp)
 634:	e65ff0ef          	jal	ra,498 <neorv32_uart0_putc>
 638:	fe5ff06f          	j	61c <neorv32_uart0_printf+0x114>
 63c:	00012783          	lw	a5,0(sp)
 640:	0007a403          	lw	s0,0(a5)
 644:	00478713          	addi	a4,a5,4
 648:	00e12023          	sw	a4,0(sp)
 64c:	00045863          	bgez	s0,65c <neorv32_uart0_printf+0x154>
 650:	02d00513          	li	a0,45
 654:	40800433          	neg	s0,s0
 658:	e41ff0ef          	jal	ra,498 <neorv32_uart0_putc>
 65c:	00410593          	addi	a1,sp,4
 660:	00040513          	mv	a0,s0
 664:	c35ff0ef          	jal	ra,298 <__neorv32_uart_itoa>
 668:	00410513          	addi	a0,sp,4
 66c:	fadff06f          	j	618 <neorv32_uart0_printf+0x110>
 670:	00012783          	lw	a5,0(sp)
 674:	00410593          	addi	a1,sp,4
 678:	00478713          	addi	a4,a5,4
 67c:	0007a503          	lw	a0,0(a5)
 680:	00e12023          	sw	a4,0(sp)
 684:	fe1ff06f          	j	664 <neorv32_uart0_printf+0x15c>
 688:	01549663          	bne	s1,s5,694 <neorv32_uart0_printf+0x18c>
 68c:	00d00513          	li	a0,13
 690:	e09ff0ef          	jal	ra,498 <neorv32_uart0_putc>
 694:	00140993          	addi	s3,s0,1
 698:	00048513          	mv	a0,s1
 69c:	f99ff06f          	j	634 <neorv32_uart0_printf+0x12c>

000006a0 <neorv32_pwm_available>:
 6a0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 6a4:	01555513          	srli	a0,a0,0x15
 6a8:	00157513          	andi	a0,a0,1
 6ac:	00008067          	ret

000006b0 <neorv32_pwm_setup>:
 6b0:	00757513          	andi	a0,a0,7
 6b4:	e8000793          	li	a5,-384
 6b8:	00151513          	slli	a0,a0,0x1
 6bc:	0007a023          	sw	zero,0(a5)
 6c0:	00156513          	ori	a0,a0,1
 6c4:	00a7a023          	sw	a0,0(a5)
 6c8:	00008067          	ret

000006cc <neorv32_pwm_set>:
 6cc:	03b00793          	li	a5,59
 6d0:	02a7e863          	bltu	a5,a0,700 <neorv32_pwm_set+0x34>
 6d4:	00357713          	andi	a4,a0,3
 6d8:	0fc57513          	andi	a0,a0,252
 6dc:	e8452683          	lw	a3,-380(a0)
 6e0:	00371713          	slli	a4,a4,0x3
 6e4:	0ff00793          	li	a5,255
 6e8:	00e797b3          	sll	a5,a5,a4
 6ec:	fff7c793          	not	a5,a5
 6f0:	00d7f7b3          	and	a5,a5,a3
 6f4:	00e595b3          	sll	a1,a1,a4
 6f8:	00f5e5b3          	or	a1,a1,a5
 6fc:	e8b52223          	sw	a1,-380(a0)
 700:	00008067          	ret

00000704 <neorv32_cpu_get_systime>:
 704:	ff010113          	addi	sp,sp,-16
 708:	c81026f3          	rdtimeh	a3
 70c:	c0102773          	rdtime	a4
 710:	c81027f3          	rdtimeh	a5
 714:	fed79ae3          	bne	a5,a3,708 <neorv32_cpu_get_systime+0x4>
 718:	00e12023          	sw	a4,0(sp)
 71c:	00f12223          	sw	a5,4(sp)
 720:	00012503          	lw	a0,0(sp)
 724:	00412583          	lw	a1,4(sp)
 728:	01010113          	addi	sp,sp,16
 72c:	00008067          	ret

00000730 <neorv32_cpu_delay_ms>:
 730:	fd010113          	addi	sp,sp,-48
 734:	00a12623          	sw	a0,12(sp)
 738:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 73c:	3e800593          	li	a1,1000
 740:	02112623          	sw	ra,44(sp)
 744:	02812423          	sw	s0,40(sp)
 748:	02912223          	sw	s1,36(sp)
 74c:	03212023          	sw	s2,32(sp)
 750:	01312e23          	sw	s3,28(sp)
 754:	6ac000ef          	jal	ra,e00 <__udivsi3>
 758:	00c12603          	lw	a2,12(sp)
 75c:	00000693          	li	a3,0
 760:	00000593          	li	a1,0
 764:	604000ef          	jal	ra,d68 <__muldi3>
 768:	00050413          	mv	s0,a0
 76c:	00058993          	mv	s3,a1
 770:	f95ff0ef          	jal	ra,704 <neorv32_cpu_get_systime>
 774:	00058913          	mv	s2,a1
 778:	00050493          	mv	s1,a0
 77c:	f89ff0ef          	jal	ra,704 <neorv32_cpu_get_systime>
 780:	00b96663          	bltu	s2,a1,78c <neorv32_cpu_delay_ms+0x5c>
 784:	05259263          	bne	a1,s2,7c8 <neorv32_cpu_delay_ms+0x98>
 788:	04a4f063          	bgeu	s1,a0,7c8 <neorv32_cpu_delay_ms+0x98>
 78c:	008484b3          	add	s1,s1,s0
 790:	0084b433          	sltu	s0,s1,s0
 794:	01390933          	add	s2,s2,s3
 798:	01240433          	add	s0,s0,s2
 79c:	f69ff0ef          	jal	ra,704 <neorv32_cpu_get_systime>
 7a0:	fe85eee3          	bltu	a1,s0,79c <neorv32_cpu_delay_ms+0x6c>
 7a4:	00b41463          	bne	s0,a1,7ac <neorv32_cpu_delay_ms+0x7c>
 7a8:	fe956ae3          	bltu	a0,s1,79c <neorv32_cpu_delay_ms+0x6c>
 7ac:	02c12083          	lw	ra,44(sp)
 7b0:	02812403          	lw	s0,40(sp)
 7b4:	02412483          	lw	s1,36(sp)
 7b8:	02012903          	lw	s2,32(sp)
 7bc:	01c12983          	lw	s3,28(sp)
 7c0:	03010113          	addi	sp,sp,48
 7c4:	00008067          	ret
 7c8:	01c99913          	slli	s2,s3,0x1c
 7cc:	00445413          	srli	s0,s0,0x4
 7d0:	00896433          	or	s0,s2,s0

000007d4 <__neorv32_cpu_delay_ms_start>:
 7d4:	00040a63          	beqz	s0,7e8 <__neorv32_cpu_delay_ms_end>
 7d8:	00040863          	beqz	s0,7e8 <__neorv32_cpu_delay_ms_end>
 7dc:	fff40413          	addi	s0,s0,-1
 7e0:	00000013          	nop
 7e4:	ff1ff06f          	j	7d4 <__neorv32_cpu_delay_ms_start>

000007e8 <__neorv32_cpu_delay_ms_end>:
 7e8:	fc5ff06f          	j	7ac <neorv32_cpu_delay_ms+0x7c>
 7ec:	0000                	unimp
 7ee:	0000                	unimp

000007f0 <__neorv32_rte_core>:
 7f0:	fc010113          	addi	sp,sp,-64
 7f4:	02112e23          	sw	ra,60(sp)
 7f8:	02512c23          	sw	t0,56(sp)
 7fc:	02612a23          	sw	t1,52(sp)
 800:	02712823          	sw	t2,48(sp)
 804:	02a12623          	sw	a0,44(sp)
 808:	02b12423          	sw	a1,40(sp)
 80c:	02c12223          	sw	a2,36(sp)
 810:	02d12023          	sw	a3,32(sp)
 814:	00e12e23          	sw	a4,28(sp)
 818:	00f12c23          	sw	a5,24(sp)
 81c:	01012a23          	sw	a6,20(sp)
 820:	01112823          	sw	a7,16(sp)
 824:	01c12623          	sw	t3,12(sp)
 828:	01d12423          	sw	t4,8(sp)
 82c:	01e12223          	sw	t5,4(sp)
 830:	01f12023          	sw	t6,0(sp)
 834:	34102773          	csrr	a4,mepc
 838:	34071073          	csrw	mscratch,a4
 83c:	342027f3          	csrr	a5,mcause
 840:	0807ca63          	bltz	a5,8d4 <__neorv32_rte_core+0xe4>
 844:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3edf0>
 848:	00300593          	li	a1,3
 84c:	0036f693          	andi	a3,a3,3
 850:	00270613          	addi	a2,a4,2
 854:	00b69463          	bne	a3,a1,85c <__neorv32_rte_core+0x6c>
 858:	00470613          	addi	a2,a4,4
 85c:	34161073          	csrw	mepc,a2
 860:	00b00713          	li	a4,11
 864:	04f77c63          	bgeu	a4,a5,8bc <__neorv32_rte_core+0xcc>
 868:	000017b7          	lui	a5,0x1
 86c:	a7078793          	addi	a5,a5,-1424 # a70 <__neorv32_rte_debug_exc_handler>
 870:	000780e7          	jalr	a5
 874:	03c12083          	lw	ra,60(sp)
 878:	03812283          	lw	t0,56(sp)
 87c:	03412303          	lw	t1,52(sp)
 880:	03012383          	lw	t2,48(sp)
 884:	02c12503          	lw	a0,44(sp)
 888:	02812583          	lw	a1,40(sp)
 88c:	02412603          	lw	a2,36(sp)
 890:	02012683          	lw	a3,32(sp)
 894:	01c12703          	lw	a4,28(sp)
 898:	01812783          	lw	a5,24(sp)
 89c:	01412803          	lw	a6,20(sp)
 8a0:	01012883          	lw	a7,16(sp)
 8a4:	00c12e03          	lw	t3,12(sp)
 8a8:	00812e83          	lw	t4,8(sp)
 8ac:	00412f03          	lw	t5,4(sp)
 8b0:	00012f83          	lw	t6,0(sp)
 8b4:	04010113          	addi	sp,sp,64
 8b8:	30200073          	mret
 8bc:	00001737          	lui	a4,0x1
 8c0:	00279793          	slli	a5,a5,0x2
 8c4:	ee070713          	addi	a4,a4,-288 # ee0 <symbols.0+0x14>
 8c8:	00e787b3          	add	a5,a5,a4
 8cc:	0007a783          	lw	a5,0(a5)
 8d0:	00078067          	jr	a5
 8d4:	80000737          	lui	a4,0x80000
 8d8:	ffd74713          	xori	a4,a4,-3
 8dc:	00e787b3          	add	a5,a5,a4
 8e0:	01c00713          	li	a4,28
 8e4:	f8f762e3          	bltu	a4,a5,868 <__neorv32_rte_core+0x78>
 8e8:	00001737          	lui	a4,0x1
 8ec:	00279793          	slli	a5,a5,0x2
 8f0:	f1070713          	addi	a4,a4,-240 # f10 <symbols.0+0x44>
 8f4:	00e787b3          	add	a5,a5,a4
 8f8:	0007a783          	lw	a5,0(a5)
 8fc:	00078067          	jr	a5
 900:	800007b7          	lui	a5,0x80000
 904:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 908:	f69ff06f          	j	870 <__neorv32_rte_core+0x80>
 90c:	800007b7          	lui	a5,0x80000
 910:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 914:	f5dff06f          	j	870 <__neorv32_rte_core+0x80>
 918:	800007b7          	lui	a5,0x80000
 91c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 920:	f51ff06f          	j	870 <__neorv32_rte_core+0x80>
 924:	800007b7          	lui	a5,0x80000
 928:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 92c:	f45ff06f          	j	870 <__neorv32_rte_core+0x80>
 930:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 934:	f3dff06f          	j	870 <__neorv32_rte_core+0x80>
 938:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 93c:	f35ff06f          	j	870 <__neorv32_rte_core+0x80>
 940:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 944:	f2dff06f          	j	870 <__neorv32_rte_core+0x80>
 948:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 94c:	f25ff06f          	j	870 <__neorv32_rte_core+0x80>
 950:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 954:	f1dff06f          	j	870 <__neorv32_rte_core+0x80>
 958:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 95c:	f15ff06f          	j	870 <__neorv32_rte_core+0x80>
 960:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 964:	f0dff06f          	j	870 <__neorv32_rte_core+0x80>
 968:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 96c:	f05ff06f          	j	870 <__neorv32_rte_core+0x80>
 970:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 974:	efdff06f          	j	870 <__neorv32_rte_core+0x80>
 978:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 97c:	ef5ff06f          	j	870 <__neorv32_rte_core+0x80>
 980:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 984:	eedff06f          	j	870 <__neorv32_rte_core+0x80>
 988:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 98c:	ee5ff06f          	j	870 <__neorv32_rte_core+0x80>
 990:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 994:	eddff06f          	j	870 <__neorv32_rte_core+0x80>
 998:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 99c:	ed5ff06f          	j	870 <__neorv32_rte_core+0x80>
 9a0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 9a4:	ecdff06f          	j	870 <__neorv32_rte_core+0x80>
 9a8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 9ac:	ec5ff06f          	j	870 <__neorv32_rte_core+0x80>
 9b0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 9b4:	ebdff06f          	j	870 <__neorv32_rte_core+0x80>
 9b8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 9bc:	eb5ff06f          	j	870 <__neorv32_rte_core+0x80>
 9c0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 9c4:	eadff06f          	j	870 <__neorv32_rte_core+0x80>
 9c8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 9cc:	ea5ff06f          	j	870 <__neorv32_rte_core+0x80>
 9d0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 9d4:	e9dff06f          	j	870 <__neorv32_rte_core+0x80>
 9d8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 9dc:	e95ff06f          	j	870 <__neorv32_rte_core+0x80>
 9e0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 9e4:	e8dff06f          	j	870 <__neorv32_rte_core+0x80>
 9e8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 9ec:	e85ff06f          	j	870 <__neorv32_rte_core+0x80>
 9f0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 9f4:	e7dff06f          	j	870 <__neorv32_rte_core+0x80>
 9f8:	0000                	unimp
 9fa:	0000                	unimp
 9fc:	0000                	unimp
 9fe:	0000                	unimp

00000a00 <__neorv32_rte_print_hex_word>:
 a00:	fe010113          	addi	sp,sp,-32
 a04:	01212823          	sw	s2,16(sp)
 a08:	00050913          	mv	s2,a0
 a0c:	00001537          	lui	a0,0x1
 a10:	00912a23          	sw	s1,20(sp)
 a14:	f8450513          	addi	a0,a0,-124 # f84 <symbols.0+0xb8>
 a18:	000014b7          	lui	s1,0x1
 a1c:	00812c23          	sw	s0,24(sp)
 a20:	01312623          	sw	s3,12(sp)
 a24:	00112e23          	sw	ra,28(sp)
 a28:	01c00413          	li	s0,28
 a2c:	a85ff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 a30:	20048493          	addi	s1,s1,512 # 1200 <hex_symbols.0>
 a34:	ffc00993          	li	s3,-4
 a38:	008957b3          	srl	a5,s2,s0
 a3c:	00f7f793          	andi	a5,a5,15
 a40:	00f487b3          	add	a5,s1,a5
 a44:	0007c503          	lbu	a0,0(a5)
 a48:	ffc40413          	addi	s0,s0,-4
 a4c:	a4dff0ef          	jal	ra,498 <neorv32_uart0_putc>
 a50:	ff3414e3          	bne	s0,s3,a38 <__neorv32_rte_print_hex_word+0x38>
 a54:	01c12083          	lw	ra,28(sp)
 a58:	01812403          	lw	s0,24(sp)
 a5c:	01412483          	lw	s1,20(sp)
 a60:	01012903          	lw	s2,16(sp)
 a64:	00c12983          	lw	s3,12(sp)
 a68:	02010113          	addi	sp,sp,32
 a6c:	00008067          	ret

00000a70 <__neorv32_rte_debug_exc_handler>:
 a70:	ff010113          	addi	sp,sp,-16
 a74:	00112623          	sw	ra,12(sp)
 a78:	00812423          	sw	s0,8(sp)
 a7c:	00912223          	sw	s1,4(sp)
 a80:	95dff0ef          	jal	ra,3dc <neorv32_uart0_available>
 a84:	1c050863          	beqz	a0,c54 <__neorv32_rte_debug_exc_handler+0x1e4>
 a88:	00001537          	lui	a0,0x1
 a8c:	f8850513          	addi	a0,a0,-120 # f88 <symbols.0+0xbc>
 a90:	a21ff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 a94:	34202473          	csrr	s0,mcause
 a98:	00900713          	li	a4,9
 a9c:	00f47793          	andi	a5,s0,15
 aa0:	03078493          	addi	s1,a5,48
 aa4:	00f77463          	bgeu	a4,a5,aac <__neorv32_rte_debug_exc_handler+0x3c>
 aa8:	05778493          	addi	s1,a5,87
 aac:	00b00793          	li	a5,11
 ab0:	0087ee63          	bltu	a5,s0,acc <__neorv32_rte_debug_exc_handler+0x5c>
 ab4:	00001737          	lui	a4,0x1
 ab8:	00241793          	slli	a5,s0,0x2
 abc:	14870713          	addi	a4,a4,328 # 1148 <symbols.0+0x27c>
 ac0:	00e787b3          	add	a5,a5,a4
 ac4:	0007a783          	lw	a5,0(a5)
 ac8:	00078067          	jr	a5
 acc:	800007b7          	lui	a5,0x80000
 ad0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 ad4:	14e40e63          	beq	s0,a4,c30 <__neorv32_rte_debug_exc_handler+0x1c0>
 ad8:	02876a63          	bltu	a4,s0,b0c <__neorv32_rte_debug_exc_handler+0x9c>
 adc:	00378713          	addi	a4,a5,3
 ae0:	12e40c63          	beq	s0,a4,c18 <__neorv32_rte_debug_exc_handler+0x1a8>
 ae4:	00778793          	addi	a5,a5,7
 ae8:	12f40e63          	beq	s0,a5,c24 <__neorv32_rte_debug_exc_handler+0x1b4>
 aec:	00001537          	lui	a0,0x1
 af0:	0e850513          	addi	a0,a0,232 # 10e8 <symbols.0+0x21c>
 af4:	9bdff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 af8:	00040513          	mv	a0,s0
 afc:	f05ff0ef          	jal	ra,a00 <__neorv32_rte_print_hex_word>
 b00:	00100793          	li	a5,1
 b04:	08f40c63          	beq	s0,a5,b9c <__neorv32_rte_debug_exc_handler+0x12c>
 b08:	0280006f          	j	b30 <__neorv32_rte_debug_exc_handler+0xc0>
 b0c:	ff07c793          	xori	a5,a5,-16
 b10:	00f407b3          	add	a5,s0,a5
 b14:	00f00713          	li	a4,15
 b18:	fcf76ae3          	bltu	a4,a5,aec <__neorv32_rte_debug_exc_handler+0x7c>
 b1c:	00001537          	lui	a0,0x1
 b20:	0d850513          	addi	a0,a0,216 # 10d8 <symbols.0+0x20c>
 b24:	98dff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 b28:	00048513          	mv	a0,s1
 b2c:	96dff0ef          	jal	ra,498 <neorv32_uart0_putc>
 b30:	ffd47413          	andi	s0,s0,-3
 b34:	00500793          	li	a5,5
 b38:	06f40263          	beq	s0,a5,b9c <__neorv32_rte_debug_exc_handler+0x12c>
 b3c:	00001537          	lui	a0,0x1
 b40:	12c50513          	addi	a0,a0,300 # 112c <symbols.0+0x260>
 b44:	96dff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 b48:	34002573          	csrr	a0,mscratch
 b4c:	eb5ff0ef          	jal	ra,a00 <__neorv32_rte_print_hex_word>
 b50:	00001537          	lui	a0,0x1
 b54:	13450513          	addi	a0,a0,308 # 1134 <symbols.0+0x268>
 b58:	959ff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 b5c:	34302573          	csrr	a0,mtval
 b60:	ea1ff0ef          	jal	ra,a00 <__neorv32_rte_print_hex_word>
 b64:	00812403          	lw	s0,8(sp)
 b68:	00c12083          	lw	ra,12(sp)
 b6c:	00412483          	lw	s1,4(sp)
 b70:	00001537          	lui	a0,0x1
 b74:	14050513          	addi	a0,a0,320 # 1140 <symbols.0+0x274>
 b78:	01010113          	addi	sp,sp,16
 b7c:	935ff06f          	j	4b0 <neorv32_uart0_print>
 b80:	00001537          	lui	a0,0x1
 b84:	f9050513          	addi	a0,a0,-112 # f90 <symbols.0+0xc4>
 b88:	929ff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 b8c:	fb1ff06f          	j	b3c <__neorv32_rte_debug_exc_handler+0xcc>
 b90:	00001537          	lui	a0,0x1
 b94:	fb050513          	addi	a0,a0,-80 # fb0 <symbols.0+0xe4>
 b98:	919ff0ef          	jal	ra,4b0 <neorv32_uart0_print>
 b9c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 ba0:	0a07d463          	bgez	a5,c48 <__neorv32_rte_debug_exc_handler+0x1d8>
 ba4:	0017f793          	andi	a5,a5,1
 ba8:	08078a63          	beqz	a5,c3c <__neorv32_rte_debug_exc_handler+0x1cc>
 bac:	00001537          	lui	a0,0x1
 bb0:	10050513          	addi	a0,a0,256 # 1100 <symbols.0+0x234>
 bb4:	fd5ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 bb8:	00001537          	lui	a0,0x1
 bbc:	fcc50513          	addi	a0,a0,-52 # fcc <symbols.0+0x100>
 bc0:	fc9ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 bc4:	00001537          	lui	a0,0x1
 bc8:	fe050513          	addi	a0,a0,-32 # fe0 <symbols.0+0x114>
 bcc:	fbdff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 bd0:	00001537          	lui	a0,0x1
 bd4:	fec50513          	addi	a0,a0,-20 # fec <symbols.0+0x120>
 bd8:	fb1ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 bdc:	00001537          	lui	a0,0x1
 be0:	00450513          	addi	a0,a0,4 # 1004 <symbols.0+0x138>
 be4:	fb5ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x128>
 be8:	00001537          	lui	a0,0x1
 bec:	01850513          	addi	a0,a0,24 # 1018 <symbols.0+0x14c>
 bf0:	f99ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 bf4:	00001537          	lui	a0,0x1
 bf8:	03450513          	addi	a0,a0,52 # 1034 <symbols.0+0x168>
 bfc:	f9dff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x128>
 c00:	00001537          	lui	a0,0x1
 c04:	04850513          	addi	a0,a0,72 # 1048 <symbols.0+0x17c>
 c08:	f81ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c0c:	00001537          	lui	a0,0x1
 c10:	06850513          	addi	a0,a0,104 # 1068 <symbols.0+0x19c>
 c14:	f75ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c18:	00001537          	lui	a0,0x1
 c1c:	08850513          	addi	a0,a0,136 # 1088 <symbols.0+0x1bc>
 c20:	f69ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c24:	00001537          	lui	a0,0x1
 c28:	0a450513          	addi	a0,a0,164 # 10a4 <symbols.0+0x1d8>
 c2c:	f5dff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c30:	00001537          	lui	a0,0x1
 c34:	0bc50513          	addi	a0,a0,188 # 10bc <symbols.0+0x1f0>
 c38:	f51ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c3c:	00001537          	lui	a0,0x1
 c40:	11050513          	addi	a0,a0,272 # 1110 <symbols.0+0x244>
 c44:	f45ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c48:	00001537          	lui	a0,0x1
 c4c:	12050513          	addi	a0,a0,288 # 1120 <symbols.0+0x254>
 c50:	f39ff06f          	j	b88 <__neorv32_rte_debug_exc_handler+0x118>
 c54:	00c12083          	lw	ra,12(sp)
 c58:	00812403          	lw	s0,8(sp)
 c5c:	00412483          	lw	s1,4(sp)
 c60:	01010113          	addi	sp,sp,16
 c64:	00008067          	ret

00000c68 <neorv32_rte_exception_uninstall>:
 c68:	01f00793          	li	a5,31
 c6c:	02a7e463          	bltu	a5,a0,c94 <neorv32_rte_exception_uninstall+0x2c>
 c70:	800007b7          	lui	a5,0x80000
 c74:	00078793          	mv	a5,a5
 c78:	00251513          	slli	a0,a0,0x2
 c7c:	00a78533          	add	a0,a5,a0
 c80:	000017b7          	lui	a5,0x1
 c84:	a7078793          	addi	a5,a5,-1424 # a70 <__neorv32_rte_debug_exc_handler>
 c88:	00f52023          	sw	a5,0(a0)
 c8c:	00000513          	li	a0,0
 c90:	00008067          	ret
 c94:	00100513          	li	a0,1
 c98:	00008067          	ret

00000c9c <neorv32_rte_setup>:
 c9c:	ff010113          	addi	sp,sp,-16
 ca0:	00112623          	sw	ra,12(sp)
 ca4:	00812423          	sw	s0,8(sp)
 ca8:	00912223          	sw	s1,4(sp)
 cac:	7f000793          	li	a5,2032
 cb0:	30579073          	csrw	mtvec,a5
 cb4:	00000413          	li	s0,0
 cb8:	01d00493          	li	s1,29
 cbc:	00040513          	mv	a0,s0
 cc0:	00140413          	addi	s0,s0,1
 cc4:	0ff47413          	andi	s0,s0,255
 cc8:	fa1ff0ef          	jal	ra,c68 <neorv32_rte_exception_uninstall>
 ccc:	fe9418e3          	bne	s0,s1,cbc <neorv32_rte_setup+0x20>
 cd0:	00c12083          	lw	ra,12(sp)
 cd4:	00812403          	lw	s0,8(sp)
 cd8:	00412483          	lw	s1,4(sp)
 cdc:	01010113          	addi	sp,sp,16
 ce0:	00008067          	ret

00000ce4 <neorv32_rte_check_isa>:
 ce4:	30102673          	csrr	a2,misa
 ce8:	400007b7          	lui	a5,0x40000
 cec:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffeef0>
 cf0:	00f67733          	and	a4,a2,a5
 cf4:	04f70463          	beq	a4,a5,d3c <neorv32_rte_check_isa+0x58>
 cf8:	fe010113          	addi	sp,sp,-32
 cfc:	00112e23          	sw	ra,28(sp)
 d00:	02051463          	bnez	a0,d28 <neorv32_rte_check_isa+0x44>
 d04:	400005b7          	lui	a1,0x40000
 d08:	00001537          	lui	a0,0x1
 d0c:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffeef0>
 d10:	17850513          	addi	a0,a0,376 # 1178 <symbols.0+0x2ac>
 d14:	ff4ff0ef          	jal	ra,508 <neorv32_uart0_printf>
 d18:	01c12083          	lw	ra,28(sp)
 d1c:	00100513          	li	a0,1
 d20:	02010113          	addi	sp,sp,32
 d24:	00008067          	ret
 d28:	00c12623          	sw	a2,12(sp)
 d2c:	eb0ff0ef          	jal	ra,3dc <neorv32_uart0_available>
 d30:	00c12603          	lw	a2,12(sp)
 d34:	fc0508e3          	beqz	a0,d04 <neorv32_rte_check_isa+0x20>
 d38:	fe1ff06f          	j	d18 <neorv32_rte_check_isa+0x34>
 d3c:	00000513          	li	a0,0
 d40:	00008067          	ret

00000d44 <__mulsi3>:
 d44:	00050613          	mv	a2,a0
 d48:	00000513          	li	a0,0
 d4c:	0015f693          	andi	a3,a1,1
 d50:	00068463          	beqz	a3,d58 <__mulsi3+0x14>
 d54:	00c50533          	add	a0,a0,a2
 d58:	0015d593          	srli	a1,a1,0x1
 d5c:	00161613          	slli	a2,a2,0x1
 d60:	fe0596e3          	bnez	a1,d4c <__mulsi3+0x8>
 d64:	00008067          	ret

00000d68 <__muldi3>:
 d68:	00050313          	mv	t1,a0
 d6c:	ff010113          	addi	sp,sp,-16
 d70:	00060513          	mv	a0,a2
 d74:	00068893          	mv	a7,a3
 d78:	00112623          	sw	ra,12(sp)
 d7c:	00030613          	mv	a2,t1
 d80:	00050693          	mv	a3,a0
 d84:	00000713          	li	a4,0
 d88:	00000793          	li	a5,0
 d8c:	00000813          	li	a6,0
 d90:	0016fe13          	andi	t3,a3,1
 d94:	00171e93          	slli	t4,a4,0x1
 d98:	000e0c63          	beqz	t3,db0 <__muldi3+0x48>
 d9c:	01060e33          	add	t3,a2,a6
 da0:	010e3833          	sltu	a6,t3,a6
 da4:	00e787b3          	add	a5,a5,a4
 da8:	00f807b3          	add	a5,a6,a5
 dac:	000e0813          	mv	a6,t3
 db0:	01f65713          	srli	a4,a2,0x1f
 db4:	0016d693          	srli	a3,a3,0x1
 db8:	00eee733          	or	a4,t4,a4
 dbc:	00161613          	slli	a2,a2,0x1
 dc0:	fc0698e3          	bnez	a3,d90 <__muldi3+0x28>
 dc4:	00058663          	beqz	a1,dd0 <__muldi3+0x68>
 dc8:	f7dff0ef          	jal	ra,d44 <__mulsi3>
 dcc:	00a787b3          	add	a5,a5,a0
 dd0:	00088a63          	beqz	a7,de4 <__muldi3+0x7c>
 dd4:	00030513          	mv	a0,t1
 dd8:	00088593          	mv	a1,a7
 ddc:	f69ff0ef          	jal	ra,d44 <__mulsi3>
 de0:	00f507b3          	add	a5,a0,a5
 de4:	00c12083          	lw	ra,12(sp)
 de8:	00080513          	mv	a0,a6
 dec:	00078593          	mv	a1,a5
 df0:	01010113          	addi	sp,sp,16
 df4:	00008067          	ret

00000df8 <__divsi3>:
 df8:	06054063          	bltz	a0,e58 <__umodsi3+0x10>
 dfc:	0605c663          	bltz	a1,e68 <__umodsi3+0x20>

00000e00 <__udivsi3>:
 e00:	00058613          	mv	a2,a1
 e04:	00050593          	mv	a1,a0
 e08:	fff00513          	li	a0,-1
 e0c:	02060c63          	beqz	a2,e44 <__udivsi3+0x44>
 e10:	00100693          	li	a3,1
 e14:	00b67a63          	bgeu	a2,a1,e28 <__udivsi3+0x28>
 e18:	00c05863          	blez	a2,e28 <__udivsi3+0x28>
 e1c:	00161613          	slli	a2,a2,0x1
 e20:	00169693          	slli	a3,a3,0x1
 e24:	feb66ae3          	bltu	a2,a1,e18 <__udivsi3+0x18>
 e28:	00000513          	li	a0,0
 e2c:	00c5e663          	bltu	a1,a2,e38 <__udivsi3+0x38>
 e30:	40c585b3          	sub	a1,a1,a2
 e34:	00d56533          	or	a0,a0,a3
 e38:	0016d693          	srli	a3,a3,0x1
 e3c:	00165613          	srli	a2,a2,0x1
 e40:	fe0696e3          	bnez	a3,e2c <__udivsi3+0x2c>
 e44:	00008067          	ret

00000e48 <__umodsi3>:
 e48:	00008293          	mv	t0,ra
 e4c:	fb5ff0ef          	jal	ra,e00 <__udivsi3>
 e50:	00058513          	mv	a0,a1
 e54:	00028067          	jr	t0
 e58:	40a00533          	neg	a0,a0
 e5c:	00b04863          	bgtz	a1,e6c <__umodsi3+0x24>
 e60:	40b005b3          	neg	a1,a1
 e64:	f9dff06f          	j	e00 <__udivsi3>
 e68:	40b005b3          	neg	a1,a1
 e6c:	00008293          	mv	t0,ra
 e70:	f91ff0ef          	jal	ra,e00 <__udivsi3>
 e74:	40a00533          	neg	a0,a0
 e78:	00028067          	jr	t0

00000e7c <__modsi3>:
 e7c:	00008293          	mv	t0,ra
 e80:	0005ca63          	bltz	a1,e94 <__modsi3+0x18>
 e84:	00054c63          	bltz	a0,e9c <__modsi3+0x20>
 e88:	f79ff0ef          	jal	ra,e00 <__udivsi3>
 e8c:	00058513          	mv	a0,a1
 e90:	00028067          	jr	t0
 e94:	40b005b3          	neg	a1,a1
 e98:	fe0558e3          	bgez	a0,e88 <__modsi3+0xc>
 e9c:	40a00533          	neg	a0,a0
 ea0:	f61ff0ef          	jal	ra,e00 <__udivsi3>
 ea4:	40b00533          	neg	a0,a1
 ea8:	00028067          	jr	t0
