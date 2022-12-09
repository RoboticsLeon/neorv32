
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
  e0:	2a058593          	addi	a1,a1,672 # 137c <__crt0_copy_data_src_begin>
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
 180:	ff010113          	addi	sp,sp,-16
 184:	00112623          	sw	ra,12(sp)
 188:	00812423          	sw	s0,8(sp)
 18c:	0f0000ef          	jal	ra,27c <neorv32_wdt_available>
 190:	0c050c63          	beqz	a0,268 <main+0xe8>
 194:	2ac000ef          	jal	ra,440 <neorv32_uart0_available>
 198:	0c050863          	beqz	a0,268 <main+0xe8>
 19c:	311000ef          	jal	ra,cac <neorv32_rte_setup>
 1a0:	00005537          	lui	a0,0x5
 1a4:	00000613          	li	a2,0
 1a8:	00000593          	li	a1,0
 1ac:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3784>
 1b0:	2a0000ef          	jal	ra,450 <neorv32_uart0_setup>
 1b4:	00000513          	li	a0,0
 1b8:	341000ef          	jal	ra,cf8 <neorv32_rte_check_isa>
 1bc:	00001537          	lui	a0,0x1
 1c0:	ec050513          	addi	a0,a0,-320 # ec0 <__etext>
 1c4:	35c000ef          	jal	ra,520 <neorv32_uart0_print>
 1c8:	00001537          	lui	a0,0x1
 1cc:	ee850513          	addi	a0,a0,-280 # ee8 <__etext+0x28>
 1d0:	350000ef          	jal	ra,520 <neorv32_uart0_print>
 1d4:	104000ef          	jal	ra,2d8 <neorv32_wdt_get_cause>
 1d8:	0ff57513          	andi	a0,a0,255
 1dc:	06051663          	bnez	a0,248 <main+0xc8>
 1e0:	00001537          	lui	a0,0x1
 1e4:	f0850513          	addi	a0,a0,-248 # f08 <__etext+0x48>
 1e8:	338000ef          	jal	ra,520 <neorv32_uart0_print>
 1ec:	00100613          	li	a2,1
 1f0:	00100593          	li	a1,1
 1f4:	00300513          	li	a0,3
 1f8:	094000ef          	jal	ra,28c <neorv32_wdt_setup>
 1fc:	00001537          	lui	a0,0x1
 200:	f3050513          	addi	a0,a0,-208 # f30 <__etext+0x70>
 204:	31c000ef          	jal	ra,520 <neorv32_uart0_print>
 208:	04000413          	li	s0,64
 20c:	02e00513          	li	a0,46
 210:	2ec000ef          	jal	ra,4fc <neorv32_uart0_putc>
 214:	0b0000ef          	jal	ra,2c4 <neorv32_wdt_reset>
 218:	05000513          	li	a0,80
 21c:	520000ef          	jal	ra,73c <neorv32_cpu_delay_ms>
 220:	2f4000ef          	jal	ra,514 <neorv32_uart0_char_received>
 224:	00050463          	beqz	a0,22c <main+0xac>
 228:	0c0000ef          	jal	ra,2e8 <neorv32_wdt_force>
 22c:	fff40413          	addi	s0,s0,-1
 230:	0ff47413          	andi	s0,s0,255
 234:	fc041ce3          	bnez	s0,20c <main+0x8c>
 238:	2dc000ef          	jal	ra,514 <neorv32_uart0_char_received>
 23c:	fe050ee3          	beqz	a0,238 <main+0xb8>
 240:	0a8000ef          	jal	ra,2e8 <neorv32_wdt_force>
 244:	ff5ff06f          	j	238 <main+0xb8>
 248:	00100793          	li	a5,1
 24c:	00f51863          	bne	a0,a5,25c <main+0xdc>
 250:	00001537          	lui	a0,0x1
 254:	f1850513          	addi	a0,a0,-232 # f18 <__etext+0x58>
 258:	f91ff06f          	j	1e8 <main+0x68>
 25c:	00001537          	lui	a0,0x1
 260:	f2450513          	addi	a0,a0,-220 # f24 <__etext+0x64>
 264:	f85ff06f          	j	1e8 <main+0x68>
 268:	00c12083          	lw	ra,12(sp)
 26c:	00812403          	lw	s0,8(sp)
 270:	00100513          	li	a0,1
 274:	01010113          	addi	sp,sp,16
 278:	00008067          	ret

0000027c <neorv32_wdt_available>:
 27c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 280:	01655513          	srli	a0,a0,0x16
 284:	00157513          	andi	a0,a0,1
 288:	00008067          	ret

0000028c <neorv32_wdt_setup>:
 28c:	00757513          	andi	a0,a0,7
 290:	00167613          	andi	a2,a2,1
 294:	0015f593          	andi	a1,a1,1
 298:	00151513          	slli	a0,a0,0x1
 29c:	00861613          	slli	a2,a2,0x8
 2a0:	00c56533          	or	a0,a0,a2
 2a4:	00459593          	slli	a1,a1,0x4
 2a8:	fbc00793          	li	a5,-68
 2ac:	04000713          	li	a4,64
 2b0:	00b56533          	or	a0,a0,a1
 2b4:	00e7a023          	sw	a4,0(a5)
 2b8:	00156513          	ori	a0,a0,1
 2bc:	00a7a023          	sw	a0,0(a5)
 2c0:	00008067          	ret

000002c4 <neorv32_wdt_reset>:
 2c4:	fbc00713          	li	a4,-68
 2c8:	00072783          	lw	a5,0(a4)
 2cc:	0407e793          	ori	a5,a5,64
 2d0:	00f72023          	sw	a5,0(a4)
 2d4:	00008067          	ret

000002d8 <neorv32_wdt_get_cause>:
 2d8:	fbc02503          	lw	a0,-68(zero) # ffffffbc <__ctr0_io_space_begin+0x1bc>
 2dc:	00555513          	srli	a0,a0,0x5
 2e0:	00157513          	andi	a0,a0,1
 2e4:	00008067          	ret

000002e8 <neorv32_wdt_force>:
 2e8:	fbc00713          	li	a4,-68
 2ec:	00072783          	lw	a5,0(a4)
 2f0:	0807e793          	ori	a5,a5,128
 2f4:	00f72023          	sw	a5,0(a4)
 2f8:	00008067          	ret

000002fc <__neorv32_uart_itoa>:
 2fc:	fd010113          	addi	sp,sp,-48
 300:	02812423          	sw	s0,40(sp)
 304:	02912223          	sw	s1,36(sp)
 308:	03212023          	sw	s2,32(sp)
 30c:	01312e23          	sw	s3,28(sp)
 310:	01412c23          	sw	s4,24(sp)
 314:	02112623          	sw	ra,44(sp)
 318:	01512a23          	sw	s5,20(sp)
 31c:	00001a37          	lui	s4,0x1
 320:	00050493          	mv	s1,a0
 324:	00058413          	mv	s0,a1
 328:	00058523          	sb	zero,10(a1)
 32c:	00000993          	li	s3,0
 330:	00410913          	addi	s2,sp,4
 334:	02ca0a13          	addi	s4,s4,44 # 102c <numbers.1>
 338:	00a00593          	li	a1,10
 33c:	00048513          	mv	a0,s1
 340:	31d000ef          	jal	ra,e5c <__umodsi3>
 344:	00aa0533          	add	a0,s4,a0
 348:	00054783          	lbu	a5,0(a0)
 34c:	01390ab3          	add	s5,s2,s3
 350:	00048513          	mv	a0,s1
 354:	00fa8023          	sb	a5,0(s5)
 358:	00a00593          	li	a1,10
 35c:	2b9000ef          	jal	ra,e14 <__udivsi3>
 360:	00198993          	addi	s3,s3,1
 364:	00a00793          	li	a5,10
 368:	00050493          	mv	s1,a0
 36c:	fcf996e3          	bne	s3,a5,338 <__neorv32_uart_itoa+0x3c>
 370:	00090693          	mv	a3,s2
 374:	00900713          	li	a4,9
 378:	03000613          	li	a2,48
 37c:	0096c583          	lbu	a1,9(a3)
 380:	00070793          	mv	a5,a4
 384:	fff70713          	addi	a4,a4,-1
 388:	01071713          	slli	a4,a4,0x10
 38c:	01075713          	srli	a4,a4,0x10
 390:	00c59a63          	bne	a1,a2,3a4 <__neorv32_uart_itoa+0xa8>
 394:	000684a3          	sb	zero,9(a3)
 398:	fff68693          	addi	a3,a3,-1
 39c:	fe0710e3          	bnez	a4,37c <__neorv32_uart_itoa+0x80>
 3a0:	00000793          	li	a5,0
 3a4:	00f907b3          	add	a5,s2,a5
 3a8:	00000593          	li	a1,0
 3ac:	0007c703          	lbu	a4,0(a5)
 3b0:	00070c63          	beqz	a4,3c8 <__neorv32_uart_itoa+0xcc>
 3b4:	00158693          	addi	a3,a1,1
 3b8:	00b405b3          	add	a1,s0,a1
 3bc:	00e58023          	sb	a4,0(a1)
 3c0:	01069593          	slli	a1,a3,0x10
 3c4:	0105d593          	srli	a1,a1,0x10
 3c8:	fff78713          	addi	a4,a5,-1
 3cc:	02f91863          	bne	s2,a5,3fc <__neorv32_uart_itoa+0x100>
 3d0:	00b40433          	add	s0,s0,a1
 3d4:	00040023          	sb	zero,0(s0)
 3d8:	02c12083          	lw	ra,44(sp)
 3dc:	02812403          	lw	s0,40(sp)
 3e0:	02412483          	lw	s1,36(sp)
 3e4:	02012903          	lw	s2,32(sp)
 3e8:	01c12983          	lw	s3,28(sp)
 3ec:	01812a03          	lw	s4,24(sp)
 3f0:	01412a83          	lw	s5,20(sp)
 3f4:	03010113          	addi	sp,sp,48
 3f8:	00008067          	ret
 3fc:	00070793          	mv	a5,a4
 400:	fadff06f          	j	3ac <__neorv32_uart_itoa+0xb0>

00000404 <__neorv32_uart_tohex>:
 404:	00001637          	lui	a2,0x1
 408:	00758693          	addi	a3,a1,7
 40c:	00000713          	li	a4,0
 410:	03860613          	addi	a2,a2,56 # 1038 <symbols.0>
 414:	02000813          	li	a6,32
 418:	00e557b3          	srl	a5,a0,a4
 41c:	00f7f793          	andi	a5,a5,15
 420:	00f607b3          	add	a5,a2,a5
 424:	0007c783          	lbu	a5,0(a5)
 428:	00470713          	addi	a4,a4,4
 42c:	fff68693          	addi	a3,a3,-1
 430:	00f680a3          	sb	a5,1(a3)
 434:	ff0712e3          	bne	a4,a6,418 <__neorv32_uart_tohex+0x14>
 438:	00058423          	sb	zero,8(a1)
 43c:	00008067          	ret

00000440 <neorv32_uart0_available>:
 440:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 444:	01255513          	srli	a0,a0,0x12
 448:	00157513          	andi	a0,a0,1
 44c:	00008067          	ret

00000450 <neorv32_uart0_setup>:
 450:	ff010113          	addi	sp,sp,-16
 454:	00812423          	sw	s0,8(sp)
 458:	00912223          	sw	s1,4(sp)
 45c:	00112623          	sw	ra,12(sp)
 460:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 464:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 468:	00058413          	mv	s0,a1
 46c:	00151593          	slli	a1,a0,0x1
 470:	00078513          	mv	a0,a5
 474:	00060493          	mv	s1,a2
 478:	19d000ef          	jal	ra,e14 <__udivsi3>
 47c:	01051513          	slli	a0,a0,0x10
 480:	000017b7          	lui	a5,0x1
 484:	01055513          	srli	a0,a0,0x10
 488:	00000713          	li	a4,0
 48c:	ffe78793          	addi	a5,a5,-2 # ffe <__etext+0x13e>
 490:	04a7e463          	bltu	a5,a0,4d8 <neorv32_uart0_setup+0x88>
 494:	0034f793          	andi	a5,s1,3
 498:	00347413          	andi	s0,s0,3
 49c:	fff50513          	addi	a0,a0,-1
 4a0:	01479793          	slli	a5,a5,0x14
 4a4:	01641413          	slli	s0,s0,0x16
 4a8:	00f567b3          	or	a5,a0,a5
 4ac:	0087e7b3          	or	a5,a5,s0
 4b0:	01871713          	slli	a4,a4,0x18
 4b4:	00c12083          	lw	ra,12(sp)
 4b8:	00812403          	lw	s0,8(sp)
 4bc:	00e7e7b3          	or	a5,a5,a4
 4c0:	10000737          	lui	a4,0x10000
 4c4:	00e7e7b3          	or	a5,a5,a4
 4c8:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 4cc:	00412483          	lw	s1,4(sp)
 4d0:	01010113          	addi	sp,sp,16
 4d4:	00008067          	ret
 4d8:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec82>
 4dc:	0fd6f693          	andi	a3,a3,253
 4e0:	00069a63          	bnez	a3,4f4 <neorv32_uart0_setup+0xa4>
 4e4:	00355513          	srli	a0,a0,0x3
 4e8:	00170713          	addi	a4,a4,1
 4ec:	0ff77713          	andi	a4,a4,255
 4f0:	fa1ff06f          	j	490 <neorv32_uart0_setup+0x40>
 4f4:	00155513          	srli	a0,a0,0x1
 4f8:	ff1ff06f          	j	4e8 <neorv32_uart0_setup+0x98>

000004fc <neorv32_uart0_putc>:
 4fc:	00040737          	lui	a4,0x40
 500:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 504:	00e7f7b3          	and	a5,a5,a4
 508:	fe079ce3          	bnez	a5,500 <neorv32_uart0_putc+0x4>
 50c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 510:	00008067          	ret

00000514 <neorv32_uart0_char_received>:
 514:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 518:	01f55513          	srli	a0,a0,0x1f
 51c:	00008067          	ret

00000520 <neorv32_uart0_print>:
 520:	ff010113          	addi	sp,sp,-16
 524:	00812423          	sw	s0,8(sp)
 528:	01212023          	sw	s2,0(sp)
 52c:	00112623          	sw	ra,12(sp)
 530:	00912223          	sw	s1,4(sp)
 534:	00050413          	mv	s0,a0
 538:	00a00913          	li	s2,10
 53c:	00044483          	lbu	s1,0(s0)
 540:	00140413          	addi	s0,s0,1
 544:	00049e63          	bnez	s1,560 <neorv32_uart0_print+0x40>
 548:	00c12083          	lw	ra,12(sp)
 54c:	00812403          	lw	s0,8(sp)
 550:	00412483          	lw	s1,4(sp)
 554:	00012903          	lw	s2,0(sp)
 558:	01010113          	addi	sp,sp,16
 55c:	00008067          	ret
 560:	01249663          	bne	s1,s2,56c <neorv32_uart0_print+0x4c>
 564:	00d00513          	li	a0,13
 568:	f95ff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 56c:	00048513          	mv	a0,s1
 570:	f8dff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 574:	fc9ff06f          	j	53c <neorv32_uart0_print+0x1c>

00000578 <neorv32_uart0_printf>:
 578:	fa010113          	addi	sp,sp,-96
 57c:	04f12a23          	sw	a5,84(sp)
 580:	04410793          	addi	a5,sp,68
 584:	02812c23          	sw	s0,56(sp)
 588:	03212823          	sw	s2,48(sp)
 58c:	03412423          	sw	s4,40(sp)
 590:	03512223          	sw	s5,36(sp)
 594:	03612023          	sw	s6,32(sp)
 598:	01712e23          	sw	s7,28(sp)
 59c:	01812c23          	sw	s8,24(sp)
 5a0:	01912a23          	sw	s9,20(sp)
 5a4:	02112e23          	sw	ra,60(sp)
 5a8:	02912a23          	sw	s1,52(sp)
 5ac:	03312623          	sw	s3,44(sp)
 5b0:	00050413          	mv	s0,a0
 5b4:	04b12223          	sw	a1,68(sp)
 5b8:	04c12423          	sw	a2,72(sp)
 5bc:	04d12623          	sw	a3,76(sp)
 5c0:	04e12823          	sw	a4,80(sp)
 5c4:	05012c23          	sw	a6,88(sp)
 5c8:	05112e23          	sw	a7,92(sp)
 5cc:	00f12023          	sw	a5,0(sp)
 5d0:	02500a13          	li	s4,37
 5d4:	00a00a93          	li	s5,10
 5d8:	07300913          	li	s2,115
 5dc:	07500b13          	li	s6,117
 5e0:	07800b93          	li	s7,120
 5e4:	06300c13          	li	s8,99
 5e8:	06900c93          	li	s9,105
 5ec:	00044483          	lbu	s1,0(s0)
 5f0:	02049c63          	bnez	s1,628 <neorv32_uart0_printf+0xb0>
 5f4:	03c12083          	lw	ra,60(sp)
 5f8:	03812403          	lw	s0,56(sp)
 5fc:	03412483          	lw	s1,52(sp)
 600:	03012903          	lw	s2,48(sp)
 604:	02c12983          	lw	s3,44(sp)
 608:	02812a03          	lw	s4,40(sp)
 60c:	02412a83          	lw	s5,36(sp)
 610:	02012b03          	lw	s6,32(sp)
 614:	01c12b83          	lw	s7,28(sp)
 618:	01812c03          	lw	s8,24(sp)
 61c:	01412c83          	lw	s9,20(sp)
 620:	06010113          	addi	sp,sp,96
 624:	00008067          	ret
 628:	0d449863          	bne	s1,s4,6f8 <neorv32_uart0_printf+0x180>
 62c:	00240993          	addi	s3,s0,2
 630:	00144403          	lbu	s0,1(s0)
 634:	05240263          	beq	s0,s2,678 <neorv32_uart0_printf+0x100>
 638:	00896e63          	bltu	s2,s0,654 <neorv32_uart0_printf+0xdc>
 63c:	05840c63          	beq	s0,s8,694 <neorv32_uart0_printf+0x11c>
 640:	07940663          	beq	s0,s9,6ac <neorv32_uart0_printf+0x134>
 644:	02500513          	li	a0,37
 648:	eb5ff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 64c:	00040513          	mv	a0,s0
 650:	0540006f          	j	6a4 <neorv32_uart0_printf+0x12c>
 654:	09640663          	beq	s0,s6,6e0 <neorv32_uart0_printf+0x168>
 658:	ff7416e3          	bne	s0,s7,644 <neorv32_uart0_printf+0xcc>
 65c:	00012783          	lw	a5,0(sp)
 660:	00410593          	addi	a1,sp,4
 664:	0007a503          	lw	a0,0(a5)
 668:	00478713          	addi	a4,a5,4
 66c:	00e12023          	sw	a4,0(sp)
 670:	d95ff0ef          	jal	ra,404 <__neorv32_uart_tohex>
 674:	0640006f          	j	6d8 <neorv32_uart0_printf+0x160>
 678:	00012783          	lw	a5,0(sp)
 67c:	0007a503          	lw	a0,0(a5)
 680:	00478713          	addi	a4,a5,4
 684:	00e12023          	sw	a4,0(sp)
 688:	e99ff0ef          	jal	ra,520 <neorv32_uart0_print>
 68c:	00098413          	mv	s0,s3
 690:	f5dff06f          	j	5ec <neorv32_uart0_printf+0x74>
 694:	00012783          	lw	a5,0(sp)
 698:	0007c503          	lbu	a0,0(a5)
 69c:	00478713          	addi	a4,a5,4
 6a0:	00e12023          	sw	a4,0(sp)
 6a4:	e59ff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 6a8:	fe5ff06f          	j	68c <neorv32_uart0_printf+0x114>
 6ac:	00012783          	lw	a5,0(sp)
 6b0:	0007a403          	lw	s0,0(a5)
 6b4:	00478713          	addi	a4,a5,4
 6b8:	00e12023          	sw	a4,0(sp)
 6bc:	00045863          	bgez	s0,6cc <neorv32_uart0_printf+0x154>
 6c0:	02d00513          	li	a0,45
 6c4:	40800433          	neg	s0,s0
 6c8:	e35ff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 6cc:	00410593          	addi	a1,sp,4
 6d0:	00040513          	mv	a0,s0
 6d4:	c29ff0ef          	jal	ra,2fc <__neorv32_uart_itoa>
 6d8:	00410513          	addi	a0,sp,4
 6dc:	fadff06f          	j	688 <neorv32_uart0_printf+0x110>
 6e0:	00012783          	lw	a5,0(sp)
 6e4:	00410593          	addi	a1,sp,4
 6e8:	00478713          	addi	a4,a5,4
 6ec:	0007a503          	lw	a0,0(a5)
 6f0:	00e12023          	sw	a4,0(sp)
 6f4:	fe1ff06f          	j	6d4 <neorv32_uart0_printf+0x15c>
 6f8:	01549663          	bne	s1,s5,704 <neorv32_uart0_printf+0x18c>
 6fc:	00d00513          	li	a0,13
 700:	dfdff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 704:	00140993          	addi	s3,s0,1
 708:	00048513          	mv	a0,s1
 70c:	f99ff06f          	j	6a4 <neorv32_uart0_printf+0x12c>

00000710 <neorv32_cpu_get_systime>:
 710:	ff010113          	addi	sp,sp,-16
 714:	c81026f3          	rdtimeh	a3
 718:	c0102773          	rdtime	a4
 71c:	c81027f3          	rdtimeh	a5
 720:	fed79ae3          	bne	a5,a3,714 <neorv32_cpu_get_systime+0x4>
 724:	00e12023          	sw	a4,0(sp)
 728:	00f12223          	sw	a5,4(sp)
 72c:	00012503          	lw	a0,0(sp)
 730:	00412583          	lw	a1,4(sp)
 734:	01010113          	addi	sp,sp,16
 738:	00008067          	ret

0000073c <neorv32_cpu_delay_ms>:
 73c:	fd010113          	addi	sp,sp,-48
 740:	00a12623          	sw	a0,12(sp)
 744:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 748:	3e800593          	li	a1,1000
 74c:	02112623          	sw	ra,44(sp)
 750:	02812423          	sw	s0,40(sp)
 754:	02912223          	sw	s1,36(sp)
 758:	03212023          	sw	s2,32(sp)
 75c:	01312e23          	sw	s3,28(sp)
 760:	6b4000ef          	jal	ra,e14 <__udivsi3>
 764:	00c12603          	lw	a2,12(sp)
 768:	00000693          	li	a3,0
 76c:	00000593          	li	a1,0
 770:	60c000ef          	jal	ra,d7c <__muldi3>
 774:	00050413          	mv	s0,a0
 778:	00058993          	mv	s3,a1
 77c:	f95ff0ef          	jal	ra,710 <neorv32_cpu_get_systime>
 780:	00058913          	mv	s2,a1
 784:	00050493          	mv	s1,a0
 788:	f89ff0ef          	jal	ra,710 <neorv32_cpu_get_systime>
 78c:	00b96663          	bltu	s2,a1,798 <neorv32_cpu_delay_ms+0x5c>
 790:	05259263          	bne	a1,s2,7d4 <neorv32_cpu_delay_ms+0x98>
 794:	04a4f063          	bgeu	s1,a0,7d4 <neorv32_cpu_delay_ms+0x98>
 798:	008484b3          	add	s1,s1,s0
 79c:	0084b433          	sltu	s0,s1,s0
 7a0:	01390933          	add	s2,s2,s3
 7a4:	01240433          	add	s0,s0,s2
 7a8:	f69ff0ef          	jal	ra,710 <neorv32_cpu_get_systime>
 7ac:	fe85eee3          	bltu	a1,s0,7a8 <neorv32_cpu_delay_ms+0x6c>
 7b0:	00b41463          	bne	s0,a1,7b8 <neorv32_cpu_delay_ms+0x7c>
 7b4:	fe956ae3          	bltu	a0,s1,7a8 <neorv32_cpu_delay_ms+0x6c>
 7b8:	02c12083          	lw	ra,44(sp)
 7bc:	02812403          	lw	s0,40(sp)
 7c0:	02412483          	lw	s1,36(sp)
 7c4:	02012903          	lw	s2,32(sp)
 7c8:	01c12983          	lw	s3,28(sp)
 7cc:	03010113          	addi	sp,sp,48
 7d0:	00008067          	ret
 7d4:	01c99913          	slli	s2,s3,0x1c
 7d8:	00445413          	srli	s0,s0,0x4
 7dc:	00896433          	or	s0,s2,s0

000007e0 <__neorv32_cpu_delay_ms_start>:
 7e0:	00040a63          	beqz	s0,7f4 <__neorv32_cpu_delay_ms_end>
 7e4:	00040863          	beqz	s0,7f4 <__neorv32_cpu_delay_ms_end>
 7e8:	fff40413          	addi	s0,s0,-1
 7ec:	00000013          	nop
 7f0:	ff1ff06f          	j	7e0 <__neorv32_cpu_delay_ms_start>

000007f4 <__neorv32_cpu_delay_ms_end>:
 7f4:	fc5ff06f          	j	7b8 <neorv32_cpu_delay_ms+0x7c>
 7f8:	0000                	unimp
 7fa:	0000                	unimp
 7fc:	0000                	unimp
 7fe:	0000                	unimp

00000800 <__neorv32_rte_core>:
 800:	fc010113          	addi	sp,sp,-64
 804:	02112e23          	sw	ra,60(sp)
 808:	02512c23          	sw	t0,56(sp)
 80c:	02612a23          	sw	t1,52(sp)
 810:	02712823          	sw	t2,48(sp)
 814:	02a12623          	sw	a0,44(sp)
 818:	02b12423          	sw	a1,40(sp)
 81c:	02c12223          	sw	a2,36(sp)
 820:	02d12023          	sw	a3,32(sp)
 824:	00e12e23          	sw	a4,28(sp)
 828:	00f12c23          	sw	a5,24(sp)
 82c:	01012a23          	sw	a6,20(sp)
 830:	01112823          	sw	a7,16(sp)
 834:	01c12623          	sw	t3,12(sp)
 838:	01d12423          	sw	t4,8(sp)
 83c:	01e12223          	sw	t5,4(sp)
 840:	01f12023          	sw	t6,0(sp)
 844:	34102773          	csrr	a4,mepc
 848:	34071073          	csrw	mscratch,a4
 84c:	342027f3          	csrr	a5,mcause
 850:	0807ca63          	bltz	a5,8e4 <__neorv32_rte_core+0xe4>
 854:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ec84>
 858:	00300593          	li	a1,3
 85c:	0036f693          	andi	a3,a3,3
 860:	00270613          	addi	a2,a4,2
 864:	00b69463          	bne	a3,a1,86c <__neorv32_rte_core+0x6c>
 868:	00470613          	addi	a2,a4,4
 86c:	34161073          	csrw	mepc,a2
 870:	00b00713          	li	a4,11
 874:	04f77c63          	bgeu	a4,a5,8cc <__neorv32_rte_core+0xcc>
 878:	000017b7          	lui	a5,0x1
 87c:	a8078793          	addi	a5,a5,-1408 # a80 <__neorv32_rte_debug_exc_handler>
 880:	000780e7          	jalr	a5
 884:	03c12083          	lw	ra,60(sp)
 888:	03812283          	lw	t0,56(sp)
 88c:	03412303          	lw	t1,52(sp)
 890:	03012383          	lw	t2,48(sp)
 894:	02c12503          	lw	a0,44(sp)
 898:	02812583          	lw	a1,40(sp)
 89c:	02412603          	lw	a2,36(sp)
 8a0:	02012683          	lw	a3,32(sp)
 8a4:	01c12703          	lw	a4,28(sp)
 8a8:	01812783          	lw	a5,24(sp)
 8ac:	01412803          	lw	a6,20(sp)
 8b0:	01012883          	lw	a7,16(sp)
 8b4:	00c12e03          	lw	t3,12(sp)
 8b8:	00812e83          	lw	t4,8(sp)
 8bc:	00412f03          	lw	t5,4(sp)
 8c0:	00012f83          	lw	t6,0(sp)
 8c4:	04010113          	addi	sp,sp,64
 8c8:	30200073          	mret
 8cc:	00001737          	lui	a4,0x1
 8d0:	00279793          	slli	a5,a5,0x2
 8d4:	04c70713          	addi	a4,a4,76 # 104c <symbols.0+0x14>
 8d8:	00e787b3          	add	a5,a5,a4
 8dc:	0007a783          	lw	a5,0(a5)
 8e0:	00078067          	jr	a5
 8e4:	80000737          	lui	a4,0x80000
 8e8:	ffd74713          	xori	a4,a4,-3
 8ec:	00e787b3          	add	a5,a5,a4
 8f0:	01c00713          	li	a4,28
 8f4:	f8f762e3          	bltu	a4,a5,878 <__neorv32_rte_core+0x78>
 8f8:	00001737          	lui	a4,0x1
 8fc:	00279793          	slli	a5,a5,0x2
 900:	07c70713          	addi	a4,a4,124 # 107c <symbols.0+0x44>
 904:	00e787b3          	add	a5,a5,a4
 908:	0007a783          	lw	a5,0(a5)
 90c:	00078067          	jr	a5
 910:	800007b7          	lui	a5,0x80000
 914:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 918:	f69ff06f          	j	880 <__neorv32_rte_core+0x80>
 91c:	800007b7          	lui	a5,0x80000
 920:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 924:	f5dff06f          	j	880 <__neorv32_rte_core+0x80>
 928:	800007b7          	lui	a5,0x80000
 92c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 930:	f51ff06f          	j	880 <__neorv32_rte_core+0x80>
 934:	800007b7          	lui	a5,0x80000
 938:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 93c:	f45ff06f          	j	880 <__neorv32_rte_core+0x80>
 940:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 944:	f3dff06f          	j	880 <__neorv32_rte_core+0x80>
 948:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 94c:	f35ff06f          	j	880 <__neorv32_rte_core+0x80>
 950:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 954:	f2dff06f          	j	880 <__neorv32_rte_core+0x80>
 958:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 95c:	f25ff06f          	j	880 <__neorv32_rte_core+0x80>
 960:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 964:	f1dff06f          	j	880 <__neorv32_rte_core+0x80>
 968:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 96c:	f15ff06f          	j	880 <__neorv32_rte_core+0x80>
 970:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 974:	f0dff06f          	j	880 <__neorv32_rte_core+0x80>
 978:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 97c:	f05ff06f          	j	880 <__neorv32_rte_core+0x80>
 980:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 984:	efdff06f          	j	880 <__neorv32_rte_core+0x80>
 988:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 98c:	ef5ff06f          	j	880 <__neorv32_rte_core+0x80>
 990:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 994:	eedff06f          	j	880 <__neorv32_rte_core+0x80>
 998:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 99c:	ee5ff06f          	j	880 <__neorv32_rte_core+0x80>
 9a0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 9a4:	eddff06f          	j	880 <__neorv32_rte_core+0x80>
 9a8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 9ac:	ed5ff06f          	j	880 <__neorv32_rte_core+0x80>
 9b0:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 9b4:	ecdff06f          	j	880 <__neorv32_rte_core+0x80>
 9b8:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 9bc:	ec5ff06f          	j	880 <__neorv32_rte_core+0x80>
 9c0:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 9c4:	ebdff06f          	j	880 <__neorv32_rte_core+0x80>
 9c8:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 9cc:	eb5ff06f          	j	880 <__neorv32_rte_core+0x80>
 9d0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 9d4:	eadff06f          	j	880 <__neorv32_rte_core+0x80>
 9d8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 9dc:	ea5ff06f          	j	880 <__neorv32_rte_core+0x80>
 9e0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 9e4:	e9dff06f          	j	880 <__neorv32_rte_core+0x80>
 9e8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 9ec:	e95ff06f          	j	880 <__neorv32_rte_core+0x80>
 9f0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 9f4:	e8dff06f          	j	880 <__neorv32_rte_core+0x80>
 9f8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 9fc:	e85ff06f          	j	880 <__neorv32_rte_core+0x80>
 a00:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 a04:	e7dff06f          	j	880 <__neorv32_rte_core+0x80>
 a08:	0000                	unimp
 a0a:	0000                	unimp
 a0c:	0000                	unimp
 a0e:	0000                	unimp

00000a10 <__neorv32_rte_print_hex_word>:
 a10:	fe010113          	addi	sp,sp,-32
 a14:	01212823          	sw	s2,16(sp)
 a18:	00050913          	mv	s2,a0
 a1c:	00001537          	lui	a0,0x1
 a20:	00912a23          	sw	s1,20(sp)
 a24:	0f050513          	addi	a0,a0,240 # 10f0 <symbols.0+0xb8>
 a28:	000014b7          	lui	s1,0x1
 a2c:	00812c23          	sw	s0,24(sp)
 a30:	01312623          	sw	s3,12(sp)
 a34:	00112e23          	sw	ra,28(sp)
 a38:	01c00413          	li	s0,28
 a3c:	ae5ff0ef          	jal	ra,520 <neorv32_uart0_print>
 a40:	36c48493          	addi	s1,s1,876 # 136c <hex_symbols.0>
 a44:	ffc00993          	li	s3,-4
 a48:	008957b3          	srl	a5,s2,s0
 a4c:	00f7f793          	andi	a5,a5,15
 a50:	00f487b3          	add	a5,s1,a5
 a54:	0007c503          	lbu	a0,0(a5)
 a58:	ffc40413          	addi	s0,s0,-4
 a5c:	aa1ff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 a60:	ff3414e3          	bne	s0,s3,a48 <__neorv32_rte_print_hex_word+0x38>
 a64:	01c12083          	lw	ra,28(sp)
 a68:	01812403          	lw	s0,24(sp)
 a6c:	01412483          	lw	s1,20(sp)
 a70:	01012903          	lw	s2,16(sp)
 a74:	00c12983          	lw	s3,12(sp)
 a78:	02010113          	addi	sp,sp,32
 a7c:	00008067          	ret

00000a80 <__neorv32_rte_debug_exc_handler>:
 a80:	ff010113          	addi	sp,sp,-16
 a84:	00112623          	sw	ra,12(sp)
 a88:	00812423          	sw	s0,8(sp)
 a8c:	00912223          	sw	s1,4(sp)
 a90:	9b1ff0ef          	jal	ra,440 <neorv32_uart0_available>
 a94:	1c050863          	beqz	a0,c64 <__neorv32_rte_debug_exc_handler+0x1e4>
 a98:	00001537          	lui	a0,0x1
 a9c:	0f450513          	addi	a0,a0,244 # 10f4 <symbols.0+0xbc>
 aa0:	a81ff0ef          	jal	ra,520 <neorv32_uart0_print>
 aa4:	34202473          	csrr	s0,mcause
 aa8:	00900713          	li	a4,9
 aac:	00f47793          	andi	a5,s0,15
 ab0:	03078493          	addi	s1,a5,48
 ab4:	00f77463          	bgeu	a4,a5,abc <__neorv32_rte_debug_exc_handler+0x3c>
 ab8:	05778493          	addi	s1,a5,87
 abc:	00b00793          	li	a5,11
 ac0:	0087ee63          	bltu	a5,s0,adc <__neorv32_rte_debug_exc_handler+0x5c>
 ac4:	00001737          	lui	a4,0x1
 ac8:	00241793          	slli	a5,s0,0x2
 acc:	2b470713          	addi	a4,a4,692 # 12b4 <symbols.0+0x27c>
 ad0:	00e787b3          	add	a5,a5,a4
 ad4:	0007a783          	lw	a5,0(a5)
 ad8:	00078067          	jr	a5
 adc:	800007b7          	lui	a5,0x80000
 ae0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 ae4:	14e40e63          	beq	s0,a4,c40 <__neorv32_rte_debug_exc_handler+0x1c0>
 ae8:	02876a63          	bltu	a4,s0,b1c <__neorv32_rte_debug_exc_handler+0x9c>
 aec:	00378713          	addi	a4,a5,3
 af0:	12e40c63          	beq	s0,a4,c28 <__neorv32_rte_debug_exc_handler+0x1a8>
 af4:	00778793          	addi	a5,a5,7
 af8:	12f40e63          	beq	s0,a5,c34 <__neorv32_rte_debug_exc_handler+0x1b4>
 afc:	00001537          	lui	a0,0x1
 b00:	25450513          	addi	a0,a0,596 # 1254 <symbols.0+0x21c>
 b04:	a1dff0ef          	jal	ra,520 <neorv32_uart0_print>
 b08:	00040513          	mv	a0,s0
 b0c:	f05ff0ef          	jal	ra,a10 <__neorv32_rte_print_hex_word>
 b10:	00100793          	li	a5,1
 b14:	08f40c63          	beq	s0,a5,bac <__neorv32_rte_debug_exc_handler+0x12c>
 b18:	0280006f          	j	b40 <__neorv32_rte_debug_exc_handler+0xc0>
 b1c:	ff07c793          	xori	a5,a5,-16
 b20:	00f407b3          	add	a5,s0,a5
 b24:	00f00713          	li	a4,15
 b28:	fcf76ae3          	bltu	a4,a5,afc <__neorv32_rte_debug_exc_handler+0x7c>
 b2c:	00001537          	lui	a0,0x1
 b30:	24450513          	addi	a0,a0,580 # 1244 <symbols.0+0x20c>
 b34:	9edff0ef          	jal	ra,520 <neorv32_uart0_print>
 b38:	00048513          	mv	a0,s1
 b3c:	9c1ff0ef          	jal	ra,4fc <neorv32_uart0_putc>
 b40:	ffd47413          	andi	s0,s0,-3
 b44:	00500793          	li	a5,5
 b48:	06f40263          	beq	s0,a5,bac <__neorv32_rte_debug_exc_handler+0x12c>
 b4c:	00001537          	lui	a0,0x1
 b50:	29850513          	addi	a0,a0,664 # 1298 <symbols.0+0x260>
 b54:	9cdff0ef          	jal	ra,520 <neorv32_uart0_print>
 b58:	34002573          	csrr	a0,mscratch
 b5c:	eb5ff0ef          	jal	ra,a10 <__neorv32_rte_print_hex_word>
 b60:	00001537          	lui	a0,0x1
 b64:	2a050513          	addi	a0,a0,672 # 12a0 <symbols.0+0x268>
 b68:	9b9ff0ef          	jal	ra,520 <neorv32_uart0_print>
 b6c:	34302573          	csrr	a0,mtval
 b70:	ea1ff0ef          	jal	ra,a10 <__neorv32_rte_print_hex_word>
 b74:	00812403          	lw	s0,8(sp)
 b78:	00c12083          	lw	ra,12(sp)
 b7c:	00412483          	lw	s1,4(sp)
 b80:	00001537          	lui	a0,0x1
 b84:	2ac50513          	addi	a0,a0,684 # 12ac <symbols.0+0x274>
 b88:	01010113          	addi	sp,sp,16
 b8c:	995ff06f          	j	520 <neorv32_uart0_print>
 b90:	00001537          	lui	a0,0x1
 b94:	0fc50513          	addi	a0,a0,252 # 10fc <symbols.0+0xc4>
 b98:	989ff0ef          	jal	ra,520 <neorv32_uart0_print>
 b9c:	fb1ff06f          	j	b4c <__neorv32_rte_debug_exc_handler+0xcc>
 ba0:	00001537          	lui	a0,0x1
 ba4:	11c50513          	addi	a0,a0,284 # 111c <symbols.0+0xe4>
 ba8:	979ff0ef          	jal	ra,520 <neorv32_uart0_print>
 bac:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 bb0:	0a07d463          	bgez	a5,c58 <__neorv32_rte_debug_exc_handler+0x1d8>
 bb4:	0017f793          	andi	a5,a5,1
 bb8:	08078a63          	beqz	a5,c4c <__neorv32_rte_debug_exc_handler+0x1cc>
 bbc:	00001537          	lui	a0,0x1
 bc0:	26c50513          	addi	a0,a0,620 # 126c <symbols.0+0x234>
 bc4:	fd5ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 bc8:	00001537          	lui	a0,0x1
 bcc:	13850513          	addi	a0,a0,312 # 1138 <symbols.0+0x100>
 bd0:	fc9ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 bd4:	00001537          	lui	a0,0x1
 bd8:	14c50513          	addi	a0,a0,332 # 114c <symbols.0+0x114>
 bdc:	fbdff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 be0:	00001537          	lui	a0,0x1
 be4:	15850513          	addi	a0,a0,344 # 1158 <symbols.0+0x120>
 be8:	fb1ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 bec:	00001537          	lui	a0,0x1
 bf0:	17050513          	addi	a0,a0,368 # 1170 <symbols.0+0x138>
 bf4:	fb5ff06f          	j	ba8 <__neorv32_rte_debug_exc_handler+0x128>
 bf8:	00001537          	lui	a0,0x1
 bfc:	18450513          	addi	a0,a0,388 # 1184 <symbols.0+0x14c>
 c00:	f99ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c04:	00001537          	lui	a0,0x1
 c08:	1a050513          	addi	a0,a0,416 # 11a0 <symbols.0+0x168>
 c0c:	f9dff06f          	j	ba8 <__neorv32_rte_debug_exc_handler+0x128>
 c10:	00001537          	lui	a0,0x1
 c14:	1b450513          	addi	a0,a0,436 # 11b4 <symbols.0+0x17c>
 c18:	f81ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c1c:	00001537          	lui	a0,0x1
 c20:	1d450513          	addi	a0,a0,468 # 11d4 <symbols.0+0x19c>
 c24:	f75ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c28:	00001537          	lui	a0,0x1
 c2c:	1f450513          	addi	a0,a0,500 # 11f4 <symbols.0+0x1bc>
 c30:	f69ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c34:	00001537          	lui	a0,0x1
 c38:	21050513          	addi	a0,a0,528 # 1210 <symbols.0+0x1d8>
 c3c:	f5dff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c40:	00001537          	lui	a0,0x1
 c44:	22850513          	addi	a0,a0,552 # 1228 <symbols.0+0x1f0>
 c48:	f51ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c4c:	00001537          	lui	a0,0x1
 c50:	27c50513          	addi	a0,a0,636 # 127c <symbols.0+0x244>
 c54:	f45ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c58:	00001537          	lui	a0,0x1
 c5c:	28c50513          	addi	a0,a0,652 # 128c <symbols.0+0x254>
 c60:	f39ff06f          	j	b98 <__neorv32_rte_debug_exc_handler+0x118>
 c64:	00c12083          	lw	ra,12(sp)
 c68:	00812403          	lw	s0,8(sp)
 c6c:	00412483          	lw	s1,4(sp)
 c70:	01010113          	addi	sp,sp,16
 c74:	00008067          	ret

00000c78 <neorv32_rte_exception_uninstall>:
 c78:	01f00793          	li	a5,31
 c7c:	02a7e463          	bltu	a5,a0,ca4 <neorv32_rte_exception_uninstall+0x2c>
 c80:	800007b7          	lui	a5,0x80000
 c84:	00078793          	mv	a5,a5
 c88:	00251513          	slli	a0,a0,0x2
 c8c:	00a78533          	add	a0,a5,a0
 c90:	000017b7          	lui	a5,0x1
 c94:	a8078793          	addi	a5,a5,-1408 # a80 <__neorv32_rte_debug_exc_handler>
 c98:	00f52023          	sw	a5,0(a0)
 c9c:	00000513          	li	a0,0
 ca0:	00008067          	ret
 ca4:	00100513          	li	a0,1
 ca8:	00008067          	ret

00000cac <neorv32_rte_setup>:
 cac:	ff010113          	addi	sp,sp,-16
 cb0:	000017b7          	lui	a5,0x1
 cb4:	00112623          	sw	ra,12(sp)
 cb8:	00812423          	sw	s0,8(sp)
 cbc:	00912223          	sw	s1,4(sp)
 cc0:	80078793          	addi	a5,a5,-2048 # 800 <__neorv32_rte_core>
 cc4:	30579073          	csrw	mtvec,a5
 cc8:	00000413          	li	s0,0
 ccc:	01d00493          	li	s1,29
 cd0:	00040513          	mv	a0,s0
 cd4:	00140413          	addi	s0,s0,1
 cd8:	0ff47413          	andi	s0,s0,255
 cdc:	f9dff0ef          	jal	ra,c78 <neorv32_rte_exception_uninstall>
 ce0:	fe9418e3          	bne	s0,s1,cd0 <neorv32_rte_setup+0x24>
 ce4:	00c12083          	lw	ra,12(sp)
 ce8:	00812403          	lw	s0,8(sp)
 cec:	00412483          	lw	s1,4(sp)
 cf0:	01010113          	addi	sp,sp,16
 cf4:	00008067          	ret

00000cf8 <neorv32_rte_check_isa>:
 cf8:	30102673          	csrr	a2,misa
 cfc:	400007b7          	lui	a5,0x40000
 d00:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffed84>
 d04:	00f67733          	and	a4,a2,a5
 d08:	04f70463          	beq	a4,a5,d50 <neorv32_rte_check_isa+0x58>
 d0c:	fe010113          	addi	sp,sp,-32
 d10:	00112e23          	sw	ra,28(sp)
 d14:	02051463          	bnez	a0,d3c <neorv32_rte_check_isa+0x44>
 d18:	400005b7          	lui	a1,0x40000
 d1c:	00001537          	lui	a0,0x1
 d20:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffed84>
 d24:	2e450513          	addi	a0,a0,740 # 12e4 <symbols.0+0x2ac>
 d28:	851ff0ef          	jal	ra,578 <neorv32_uart0_printf>
 d2c:	01c12083          	lw	ra,28(sp)
 d30:	00100513          	li	a0,1
 d34:	02010113          	addi	sp,sp,32
 d38:	00008067          	ret
 d3c:	00c12623          	sw	a2,12(sp)
 d40:	f00ff0ef          	jal	ra,440 <neorv32_uart0_available>
 d44:	00c12603          	lw	a2,12(sp)
 d48:	fc0508e3          	beqz	a0,d18 <neorv32_rte_check_isa+0x20>
 d4c:	fe1ff06f          	j	d2c <neorv32_rte_check_isa+0x34>
 d50:	00000513          	li	a0,0
 d54:	00008067          	ret

00000d58 <__mulsi3>:
 d58:	00050613          	mv	a2,a0
 d5c:	00000513          	li	a0,0
 d60:	0015f693          	andi	a3,a1,1
 d64:	00068463          	beqz	a3,d6c <__mulsi3+0x14>
 d68:	00c50533          	add	a0,a0,a2
 d6c:	0015d593          	srli	a1,a1,0x1
 d70:	00161613          	slli	a2,a2,0x1
 d74:	fe0596e3          	bnez	a1,d60 <__mulsi3+0x8>
 d78:	00008067          	ret

00000d7c <__muldi3>:
 d7c:	00050313          	mv	t1,a0
 d80:	ff010113          	addi	sp,sp,-16
 d84:	00060513          	mv	a0,a2
 d88:	00068893          	mv	a7,a3
 d8c:	00112623          	sw	ra,12(sp)
 d90:	00030613          	mv	a2,t1
 d94:	00050693          	mv	a3,a0
 d98:	00000713          	li	a4,0
 d9c:	00000793          	li	a5,0
 da0:	00000813          	li	a6,0
 da4:	0016fe13          	andi	t3,a3,1
 da8:	00171e93          	slli	t4,a4,0x1
 dac:	000e0c63          	beqz	t3,dc4 <__muldi3+0x48>
 db0:	01060e33          	add	t3,a2,a6
 db4:	010e3833          	sltu	a6,t3,a6
 db8:	00e787b3          	add	a5,a5,a4
 dbc:	00f807b3          	add	a5,a6,a5
 dc0:	000e0813          	mv	a6,t3
 dc4:	01f65713          	srli	a4,a2,0x1f
 dc8:	0016d693          	srli	a3,a3,0x1
 dcc:	00eee733          	or	a4,t4,a4
 dd0:	00161613          	slli	a2,a2,0x1
 dd4:	fc0698e3          	bnez	a3,da4 <__muldi3+0x28>
 dd8:	00058663          	beqz	a1,de4 <__muldi3+0x68>
 ddc:	f7dff0ef          	jal	ra,d58 <__mulsi3>
 de0:	00a787b3          	add	a5,a5,a0
 de4:	00088a63          	beqz	a7,df8 <__muldi3+0x7c>
 de8:	00030513          	mv	a0,t1
 dec:	00088593          	mv	a1,a7
 df0:	f69ff0ef          	jal	ra,d58 <__mulsi3>
 df4:	00f507b3          	add	a5,a0,a5
 df8:	00c12083          	lw	ra,12(sp)
 dfc:	00080513          	mv	a0,a6
 e00:	00078593          	mv	a1,a5
 e04:	01010113          	addi	sp,sp,16
 e08:	00008067          	ret

00000e0c <__divsi3>:
 e0c:	06054063          	bltz	a0,e6c <__umodsi3+0x10>
 e10:	0605c663          	bltz	a1,e7c <__umodsi3+0x20>

00000e14 <__udivsi3>:
 e14:	00058613          	mv	a2,a1
 e18:	00050593          	mv	a1,a0
 e1c:	fff00513          	li	a0,-1
 e20:	02060c63          	beqz	a2,e58 <__udivsi3+0x44>
 e24:	00100693          	li	a3,1
 e28:	00b67a63          	bgeu	a2,a1,e3c <__udivsi3+0x28>
 e2c:	00c05863          	blez	a2,e3c <__udivsi3+0x28>
 e30:	00161613          	slli	a2,a2,0x1
 e34:	00169693          	slli	a3,a3,0x1
 e38:	feb66ae3          	bltu	a2,a1,e2c <__udivsi3+0x18>
 e3c:	00000513          	li	a0,0
 e40:	00c5e663          	bltu	a1,a2,e4c <__udivsi3+0x38>
 e44:	40c585b3          	sub	a1,a1,a2
 e48:	00d56533          	or	a0,a0,a3
 e4c:	0016d693          	srli	a3,a3,0x1
 e50:	00165613          	srli	a2,a2,0x1
 e54:	fe0696e3          	bnez	a3,e40 <__udivsi3+0x2c>
 e58:	00008067          	ret

00000e5c <__umodsi3>:
 e5c:	00008293          	mv	t0,ra
 e60:	fb5ff0ef          	jal	ra,e14 <__udivsi3>
 e64:	00058513          	mv	a0,a1
 e68:	00028067          	jr	t0
 e6c:	40a00533          	neg	a0,a0
 e70:	00b04863          	bgtz	a1,e80 <__umodsi3+0x24>
 e74:	40b005b3          	neg	a1,a1
 e78:	f9dff06f          	j	e14 <__udivsi3>
 e7c:	40b005b3          	neg	a1,a1
 e80:	00008293          	mv	t0,ra
 e84:	f91ff0ef          	jal	ra,e14 <__udivsi3>
 e88:	40a00533          	neg	a0,a0
 e8c:	00028067          	jr	t0

00000e90 <__modsi3>:
 e90:	00008293          	mv	t0,ra
 e94:	0005ca63          	bltz	a1,ea8 <__modsi3+0x18>
 e98:	00054c63          	bltz	a0,eb0 <__modsi3+0x20>
 e9c:	f79ff0ef          	jal	ra,e14 <__udivsi3>
 ea0:	00058513          	mv	a0,a1
 ea4:	00028067          	jr	t0
 ea8:	40b005b3          	neg	a1,a1
 eac:	fe0558e3          	bgez	a0,e9c <__modsi3+0xc>
 eb0:	40a00533          	neg	a0,a0
 eb4:	f61ff0ef          	jal	ra,e14 <__udivsi3>
 eb8:	40b00533          	neg	a0,a1
 ebc:	00028067          	jr	t0
