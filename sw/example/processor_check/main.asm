
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
  18:	12850513          	addi	a0,a0,296 # 13c <__crt0_dummy_trap_handler>
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
  cc:	f3c60613          	addi	a2,a2,-196 # 80000004 <__ctr0_io_space_begin+0x80000204>

000000d0 <__crt0_clear_bss_loop>:
  d0:	00c5d863          	bge	a1,a2,e0 <__crt0_clear_bss_loop_end>
  d4:	00058023          	sb	zero,0(a1)
  d8:	00158593          	addi	a1,a1,1
  dc:	ff5ff06f          	j	d0 <__crt0_clear_bss_loop>

000000e0 <__crt0_clear_bss_loop_end>:
  e0:	00000597          	auipc	a1,0x0
  e4:	68c58593          	addi	a1,a1,1676 # 76c <__crt0_copy_data_src_begin>
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
 118:	070000ef          	jal	ra,188 <main>

0000011c <__crt0_main_aftermath>:
 11c:	34051073          	csrw	mscratch,a0
 120:	00000097          	auipc	ra,0x0
 124:	0b008093          	addi	ra,ra,176 # 1d0 <__neorv32_crt0_after_main>
 128:	00008463          	beqz	ra,130 <__crt0_main_aftermath_end>
 12c:	000080e7          	jalr	ra

00000130 <__crt0_main_aftermath_end>:
 130:	30047073          	csrci	mstatus,8

00000134 <__crt0_main_aftermath_end_loop>:
 134:	10500073          	wfi
 138:	ffdff06f          	j	134 <__crt0_main_aftermath_end_loop>

0000013c <__crt0_dummy_trap_handler>:
 13c:	ff810113          	addi	sp,sp,-8
 140:	00812023          	sw	s0,0(sp)
 144:	00912223          	sw	s1,4(sp)
 148:	34202473          	csrr	s0,mcause
 14c:	02044663          	bltz	s0,178 <__crt0_dummy_trap_handler_irq>
 150:	34102473          	csrr	s0,mepc

00000154 <__crt0_dummy_trap_handler_exc_c_check>:
 154:	00041483          	lh	s1,0(s0)
 158:	0034f493          	andi	s1,s1,3
 15c:	00240413          	addi	s0,s0,2
 160:	34141073          	csrw	mepc,s0
 164:	00300413          	li	s0,3
 168:	00941863          	bne	s0,s1,178 <__crt0_dummy_trap_handler_irq>

0000016c <__crt0_dummy_trap_handler_exc_uncrompressed>:
 16c:	34102473          	csrr	s0,mepc
 170:	00240413          	addi	s0,s0,2
 174:	34141073          	csrw	mepc,s0

00000178 <__crt0_dummy_trap_handler_irq>:
 178:	00012403          	lw	s0,0(sp)
 17c:	00412483          	lw	s1,4(sp)
 180:	00810113          	addi	sp,sp,8
 184:	30200073          	mret

00000188 <main>:
 188:	ff010113          	addi	sp,sp,-16
 18c:	00112623          	sw	ra,12(sp)
 190:	30047073          	csrci	mstatus,8
 194:	00000013          	nop
 198:	00000013          	nop
 19c:	00005537          	lui	a0,0x5
 1a0:	00000613          	li	a2,0
 1a4:	00000593          	li	a1,0
 1a8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x4394>
 1ac:	1bc000ef          	jal	ra,368 <neorv32_uart0_setup>
 1b0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 1b4:	6d000513          	li	a0,1744
 1b8:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
 1bc:	2c8000ef          	jal	ra,484 <neorv32_uart0_printf>
 1c0:	00c12083          	lw	ra,12(sp)
 1c4:	00100513          	li	a0,1
 1c8:	01010113          	addi	sp,sp,16
 1cc:	00008067          	ret

000001d0 <__neorv32_crt0_after_main>:
 1d0:	fa000793          	li	a5,-96
 1d4:	0007a703          	lw	a4,0(a5)
 1d8:	ff010113          	addi	sp,sp,-16
 1dc:	100006b7          	lui	a3,0x10000
 1e0:	00112623          	sw	ra,12(sp)
 1e4:	00d76733          	or	a4,a4,a3
 1e8:	00e7a023          	sw	a4,0(a5)
 1ec:	0007a703          	lw	a4,0(a5)
 1f0:	fffff6b7          	lui	a3,0xfffff
 1f4:	fff68693          	addi	a3,a3,-1 # ffffefff <__ctr0_io_space_begin+0xfffff1ff>
 1f8:	00d77733          	and	a4,a4,a3
 1fc:	00e7a023          	sw	a4,0(a5)
 200:	0007a783          	lw	a5,0(a5)
 204:	00050593          	mv	a1,a0
 208:	fcf02823          	sw	a5,-48(zero) # ffffffd0 <__ctr0_io_space_begin+0x1d0>
 20c:	800007b7          	lui	a5,0x80000
 210:	0007a603          	lw	a2,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 214:	74400513          	li	a0,1860
 218:	26c000ef          	jal	ra,484 <neorv32_uart0_printf>
 21c:	00c12083          	lw	ra,12(sp)
 220:	00000513          	li	a0,0
 224:	01010113          	addi	sp,sp,16
 228:	00008067          	ret

0000022c <__neorv32_uart_itoa>:
 22c:	fd010113          	addi	sp,sp,-48
 230:	02812423          	sw	s0,40(sp)
 234:	02912223          	sw	s1,36(sp)
 238:	03212023          	sw	s2,32(sp)
 23c:	01312e23          	sw	s3,28(sp)
 240:	01412c23          	sw	s4,24(sp)
 244:	02112623          	sw	ra,44(sp)
 248:	01512a23          	sw	s5,20(sp)
 24c:	00050493          	mv	s1,a0
 250:	00058413          	mv	s0,a1
 254:	00058523          	sb	zero,10(a1)
 258:	00000993          	li	s3,0
 25c:	00410913          	addi	s2,sp,4
 260:	74c00a13          	li	s4,1868
 264:	00a00593          	li	a1,10
 268:	00048513          	mv	a0,s1
 26c:	400000ef          	jal	ra,66c <__umodsi3>
 270:	00aa0533          	add	a0,s4,a0
 274:	00054783          	lbu	a5,0(a0)
 278:	01390ab3          	add	s5,s2,s3
 27c:	00048513          	mv	a0,s1
 280:	00fa8023          	sb	a5,0(s5)
 284:	00a00593          	li	a1,10
 288:	39c000ef          	jal	ra,624 <__udivsi3>
 28c:	00198993          	addi	s3,s3,1
 290:	00a00793          	li	a5,10
 294:	00050493          	mv	s1,a0
 298:	fcf996e3          	bne	s3,a5,264 <__neorv32_uart_itoa+0x38>
 29c:	00090693          	mv	a3,s2
 2a0:	00900713          	li	a4,9
 2a4:	03000613          	li	a2,48
 2a8:	0096c583          	lbu	a1,9(a3)
 2ac:	00070793          	mv	a5,a4
 2b0:	fff70713          	addi	a4,a4,-1
 2b4:	01071713          	slli	a4,a4,0x10
 2b8:	01075713          	srli	a4,a4,0x10
 2bc:	00c59a63          	bne	a1,a2,2d0 <__neorv32_uart_itoa+0xa4>
 2c0:	000684a3          	sb	zero,9(a3)
 2c4:	fff68693          	addi	a3,a3,-1
 2c8:	fe0710e3          	bnez	a4,2a8 <__neorv32_uart_itoa+0x7c>
 2cc:	00000793          	li	a5,0
 2d0:	00f907b3          	add	a5,s2,a5
 2d4:	00000593          	li	a1,0
 2d8:	0007c703          	lbu	a4,0(a5)
 2dc:	00070c63          	beqz	a4,2f4 <__neorv32_uart_itoa+0xc8>
 2e0:	00158693          	addi	a3,a1,1
 2e4:	00b405b3          	add	a1,s0,a1
 2e8:	00e58023          	sb	a4,0(a1)
 2ec:	01069593          	slli	a1,a3,0x10
 2f0:	0105d593          	srli	a1,a1,0x10
 2f4:	fff78713          	addi	a4,a5,-1
 2f8:	02f91863          	bne	s2,a5,328 <__neorv32_uart_itoa+0xfc>
 2fc:	00b40433          	add	s0,s0,a1
 300:	00040023          	sb	zero,0(s0)
 304:	02c12083          	lw	ra,44(sp)
 308:	02812403          	lw	s0,40(sp)
 30c:	02412483          	lw	s1,36(sp)
 310:	02012903          	lw	s2,32(sp)
 314:	01c12983          	lw	s3,28(sp)
 318:	01812a03          	lw	s4,24(sp)
 31c:	01412a83          	lw	s5,20(sp)
 320:	03010113          	addi	sp,sp,48
 324:	00008067          	ret
 328:	00070793          	mv	a5,a4
 32c:	fadff06f          	j	2d8 <__neorv32_uart_itoa+0xac>

00000330 <__neorv32_uart_tohex>:
 330:	00758693          	addi	a3,a1,7
 334:	00000713          	li	a4,0
 338:	75800613          	li	a2,1880
 33c:	02000813          	li	a6,32
 340:	00e557b3          	srl	a5,a0,a4
 344:	00f7f793          	andi	a5,a5,15
 348:	00f607b3          	add	a5,a2,a5
 34c:	0007c783          	lbu	a5,0(a5)
 350:	00470713          	addi	a4,a4,4
 354:	fff68693          	addi	a3,a3,-1
 358:	00f680a3          	sb	a5,1(a3)
 35c:	ff0712e3          	bne	a4,a6,340 <__neorv32_uart_tohex+0x10>
 360:	00058423          	sb	zero,8(a1)
 364:	00008067          	ret

00000368 <neorv32_uart0_setup>:
 368:	ff010113          	addi	sp,sp,-16
 36c:	00812423          	sw	s0,8(sp)
 370:	00912223          	sw	s1,4(sp)
 374:	00112623          	sw	ra,12(sp)
 378:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 37c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 380:	00058413          	mv	s0,a1
 384:	00151593          	slli	a1,a0,0x1
 388:	00078513          	mv	a0,a5
 38c:	00060493          	mv	s1,a2
 390:	294000ef          	jal	ra,624 <__udivsi3>
 394:	01051513          	slli	a0,a0,0x10
 398:	000017b7          	lui	a5,0x1
 39c:	01055513          	srli	a0,a0,0x10
 3a0:	00000713          	li	a4,0
 3a4:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0x892>
 3a8:	04a7e463          	bltu	a5,a0,3f0 <neorv32_uart0_setup+0x88>
 3ac:	0034f793          	andi	a5,s1,3
 3b0:	00347413          	andi	s0,s0,3
 3b4:	fff50513          	addi	a0,a0,-1
 3b8:	01479793          	slli	a5,a5,0x14
 3bc:	01641413          	slli	s0,s0,0x16
 3c0:	00f567b3          	or	a5,a0,a5
 3c4:	0087e7b3          	or	a5,a5,s0
 3c8:	01871713          	slli	a4,a4,0x18
 3cc:	00c12083          	lw	ra,12(sp)
 3d0:	00812403          	lw	s0,8(sp)
 3d4:	00e7e7b3          	or	a5,a5,a4
 3d8:	10000737          	lui	a4,0x10000
 3dc:	00e7e7b3          	or	a5,a5,a4
 3e0:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 3e4:	00412483          	lw	s1,4(sp)
 3e8:	01010113          	addi	sp,sp,16
 3ec:	00008067          	ret
 3f0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff892>
 3f4:	0fd6f693          	andi	a3,a3,253
 3f8:	00069a63          	bnez	a3,40c <neorv32_uart0_setup+0xa4>
 3fc:	00355513          	srli	a0,a0,0x3
 400:	00170713          	addi	a4,a4,1
 404:	0ff77713          	andi	a4,a4,255
 408:	fa1ff06f          	j	3a8 <neorv32_uart0_setup+0x40>
 40c:	00155513          	srli	a0,a0,0x1
 410:	ff1ff06f          	j	400 <neorv32_uart0_setup+0x98>

00000414 <neorv32_uart0_putc>:
 414:	00040737          	lui	a4,0x40
 418:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 41c:	00e7f7b3          	and	a5,a5,a4
 420:	fe079ce3          	bnez	a5,418 <neorv32_uart0_putc+0x4>
 424:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 428:	00008067          	ret

0000042c <neorv32_uart0_print>:
 42c:	ff010113          	addi	sp,sp,-16
 430:	00812423          	sw	s0,8(sp)
 434:	01212023          	sw	s2,0(sp)
 438:	00112623          	sw	ra,12(sp)
 43c:	00912223          	sw	s1,4(sp)
 440:	00050413          	mv	s0,a0
 444:	00a00913          	li	s2,10
 448:	00044483          	lbu	s1,0(s0)
 44c:	00140413          	addi	s0,s0,1
 450:	00049e63          	bnez	s1,46c <neorv32_uart0_print+0x40>
 454:	00c12083          	lw	ra,12(sp)
 458:	00812403          	lw	s0,8(sp)
 45c:	00412483          	lw	s1,4(sp)
 460:	00012903          	lw	s2,0(sp)
 464:	01010113          	addi	sp,sp,16
 468:	00008067          	ret
 46c:	01249663          	bne	s1,s2,478 <neorv32_uart0_print+0x4c>
 470:	00d00513          	li	a0,13
 474:	fa1ff0ef          	jal	ra,414 <neorv32_uart0_putc>
 478:	00048513          	mv	a0,s1
 47c:	f99ff0ef          	jal	ra,414 <neorv32_uart0_putc>
 480:	fc9ff06f          	j	448 <neorv32_uart0_print+0x1c>

00000484 <neorv32_uart0_printf>:
 484:	fa010113          	addi	sp,sp,-96
 488:	04f12a23          	sw	a5,84(sp)
 48c:	04410793          	addi	a5,sp,68
 490:	02812c23          	sw	s0,56(sp)
 494:	03212823          	sw	s2,48(sp)
 498:	03412423          	sw	s4,40(sp)
 49c:	03512223          	sw	s5,36(sp)
 4a0:	03612023          	sw	s6,32(sp)
 4a4:	01712e23          	sw	s7,28(sp)
 4a8:	01812c23          	sw	s8,24(sp)
 4ac:	01912a23          	sw	s9,20(sp)
 4b0:	02112e23          	sw	ra,60(sp)
 4b4:	02912a23          	sw	s1,52(sp)
 4b8:	03312623          	sw	s3,44(sp)
 4bc:	00050413          	mv	s0,a0
 4c0:	04b12223          	sw	a1,68(sp)
 4c4:	04c12423          	sw	a2,72(sp)
 4c8:	04d12623          	sw	a3,76(sp)
 4cc:	04e12823          	sw	a4,80(sp)
 4d0:	05012c23          	sw	a6,88(sp)
 4d4:	05112e23          	sw	a7,92(sp)
 4d8:	00f12023          	sw	a5,0(sp)
 4dc:	02500a13          	li	s4,37
 4e0:	00a00a93          	li	s5,10
 4e4:	07300913          	li	s2,115
 4e8:	07500b13          	li	s6,117
 4ec:	07800b93          	li	s7,120
 4f0:	06300c13          	li	s8,99
 4f4:	06900c93          	li	s9,105
 4f8:	00044483          	lbu	s1,0(s0)
 4fc:	02049c63          	bnez	s1,534 <neorv32_uart0_printf+0xb0>
 500:	03c12083          	lw	ra,60(sp)
 504:	03812403          	lw	s0,56(sp)
 508:	03412483          	lw	s1,52(sp)
 50c:	03012903          	lw	s2,48(sp)
 510:	02c12983          	lw	s3,44(sp)
 514:	02812a03          	lw	s4,40(sp)
 518:	02412a83          	lw	s5,36(sp)
 51c:	02012b03          	lw	s6,32(sp)
 520:	01c12b83          	lw	s7,28(sp)
 524:	01812c03          	lw	s8,24(sp)
 528:	01412c83          	lw	s9,20(sp)
 52c:	06010113          	addi	sp,sp,96
 530:	00008067          	ret
 534:	0d449863          	bne	s1,s4,604 <neorv32_uart0_printf+0x180>
 538:	00240993          	addi	s3,s0,2
 53c:	00144403          	lbu	s0,1(s0)
 540:	05240263          	beq	s0,s2,584 <neorv32_uart0_printf+0x100>
 544:	00896e63          	bltu	s2,s0,560 <neorv32_uart0_printf+0xdc>
 548:	05840c63          	beq	s0,s8,5a0 <neorv32_uart0_printf+0x11c>
 54c:	07940663          	beq	s0,s9,5b8 <neorv32_uart0_printf+0x134>
 550:	02500513          	li	a0,37
 554:	ec1ff0ef          	jal	ra,414 <neorv32_uart0_putc>
 558:	00040513          	mv	a0,s0
 55c:	0540006f          	j	5b0 <neorv32_uart0_printf+0x12c>
 560:	09640663          	beq	s0,s6,5ec <neorv32_uart0_printf+0x168>
 564:	ff7416e3          	bne	s0,s7,550 <neorv32_uart0_printf+0xcc>
 568:	00012783          	lw	a5,0(sp)
 56c:	00410593          	addi	a1,sp,4
 570:	0007a503          	lw	a0,0(a5)
 574:	00478713          	addi	a4,a5,4
 578:	00e12023          	sw	a4,0(sp)
 57c:	db5ff0ef          	jal	ra,330 <__neorv32_uart_tohex>
 580:	0640006f          	j	5e4 <neorv32_uart0_printf+0x160>
 584:	00012783          	lw	a5,0(sp)
 588:	0007a503          	lw	a0,0(a5)
 58c:	00478713          	addi	a4,a5,4
 590:	00e12023          	sw	a4,0(sp)
 594:	e99ff0ef          	jal	ra,42c <neorv32_uart0_print>
 598:	00098413          	mv	s0,s3
 59c:	f5dff06f          	j	4f8 <neorv32_uart0_printf+0x74>
 5a0:	00012783          	lw	a5,0(sp)
 5a4:	0007c503          	lbu	a0,0(a5)
 5a8:	00478713          	addi	a4,a5,4
 5ac:	00e12023          	sw	a4,0(sp)
 5b0:	e65ff0ef          	jal	ra,414 <neorv32_uart0_putc>
 5b4:	fe5ff06f          	j	598 <neorv32_uart0_printf+0x114>
 5b8:	00012783          	lw	a5,0(sp)
 5bc:	0007a403          	lw	s0,0(a5)
 5c0:	00478713          	addi	a4,a5,4
 5c4:	00e12023          	sw	a4,0(sp)
 5c8:	00045863          	bgez	s0,5d8 <neorv32_uart0_printf+0x154>
 5cc:	02d00513          	li	a0,45
 5d0:	40800433          	neg	s0,s0
 5d4:	e41ff0ef          	jal	ra,414 <neorv32_uart0_putc>
 5d8:	00410593          	addi	a1,sp,4
 5dc:	00040513          	mv	a0,s0
 5e0:	c4dff0ef          	jal	ra,22c <__neorv32_uart_itoa>
 5e4:	00410513          	addi	a0,sp,4
 5e8:	fadff06f          	j	594 <neorv32_uart0_printf+0x110>
 5ec:	00012783          	lw	a5,0(sp)
 5f0:	00410593          	addi	a1,sp,4
 5f4:	00478713          	addi	a4,a5,4
 5f8:	0007a503          	lw	a0,0(a5)
 5fc:	00e12023          	sw	a4,0(sp)
 600:	fe1ff06f          	j	5e0 <neorv32_uart0_printf+0x15c>
 604:	01549663          	bne	s1,s5,610 <neorv32_uart0_printf+0x18c>
 608:	00d00513          	li	a0,13
 60c:	e09ff0ef          	jal	ra,414 <neorv32_uart0_putc>
 610:	00140993          	addi	s3,s0,1
 614:	00048513          	mv	a0,s1
 618:	f99ff06f          	j	5b0 <neorv32_uart0_printf+0x12c>

0000061c <__divsi3>:
 61c:	06054063          	bltz	a0,67c <__umodsi3+0x10>
 620:	0605c663          	bltz	a1,68c <__umodsi3+0x20>

00000624 <__udivsi3>:
 624:	00058613          	mv	a2,a1
 628:	00050593          	mv	a1,a0
 62c:	fff00513          	li	a0,-1
 630:	02060c63          	beqz	a2,668 <__udivsi3+0x44>
 634:	00100693          	li	a3,1
 638:	00b67a63          	bgeu	a2,a1,64c <__udivsi3+0x28>
 63c:	00c05863          	blez	a2,64c <__udivsi3+0x28>
 640:	00161613          	slli	a2,a2,0x1
 644:	00169693          	slli	a3,a3,0x1
 648:	feb66ae3          	bltu	a2,a1,63c <__udivsi3+0x18>
 64c:	00000513          	li	a0,0
 650:	00c5e663          	bltu	a1,a2,65c <__udivsi3+0x38>
 654:	40c585b3          	sub	a1,a1,a2
 658:	00d56533          	or	a0,a0,a3
 65c:	0016d693          	srli	a3,a3,0x1
 660:	00165613          	srli	a2,a2,0x1
 664:	fe0696e3          	bnez	a3,650 <__udivsi3+0x2c>
 668:	00008067          	ret

0000066c <__umodsi3>:
 66c:	00008293          	mv	t0,ra
 670:	fb5ff0ef          	jal	ra,624 <__udivsi3>
 674:	00058513          	mv	a0,a1
 678:	00028067          	jr	t0
 67c:	40a00533          	neg	a0,a0
 680:	00b04863          	bgtz	a1,690 <__umodsi3+0x24>
 684:	40b005b3          	neg	a1,a1
 688:	f9dff06f          	j	624 <__udivsi3>
 68c:	40b005b3          	neg	a1,a1
 690:	00008293          	mv	t0,ra
 694:	f91ff0ef          	jal	ra,624 <__udivsi3>
 698:	40a00533          	neg	a0,a0
 69c:	00028067          	jr	t0

000006a0 <__modsi3>:
 6a0:	00008293          	mv	t0,ra
 6a4:	0005ca63          	bltz	a1,6b8 <__modsi3+0x18>
 6a8:	00054c63          	bltz	a0,6c0 <__modsi3+0x20>
 6ac:	f79ff0ef          	jal	ra,624 <__udivsi3>
 6b0:	00058513          	mv	a0,a1
 6b4:	00028067          	jr	t0
 6b8:	40b005b3          	neg	a1,a1
 6bc:	fe0558e3          	bgez	a0,6ac <__modsi3+0xc>
 6c0:	40a00533          	neg	a0,a0
 6c4:	f61ff0ef          	jal	ra,624 <__udivsi3>
 6c8:	40b00533          	neg	a0,a1
 6cc:	00028067          	jr	t0
