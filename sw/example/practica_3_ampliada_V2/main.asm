
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
  e0:	e4058593          	addi	a1,a1,-448 # f1c <__crt0_copy_data_src_begin>
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
 190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3be4>
 194:	00112e23          	sw	ra,28(sp)
 198:	00812c23          	sw	s0,24(sp)
 19c:	00912a23          	sw	s1,20(sp)
 1a0:	01212823          	sw	s2,16(sp)
 1a4:	01312623          	sw	s3,12(sp)
 1a8:	01412423          	sw	s4,8(sp)
 1ac:	01512223          	sw	s5,4(sp)
 1b0:	6e0000ef          	jal	ra,890 <neorv32_uart0_setup>
 1b4:	191000ef          	jal	ra,b44 <neorv32_gpio_available>
 1b8:	04050c63          	beqz	a0,210 <main+0x90>
 1bc:	538000ef          	jal	ra,6f4 <neorv32_rte_setup>
 1c0:	00001537          	lui	a0,0x1
 1c4:	c2c50513          	addi	a0,a0,-980 # c2c <__etext+0x24>
 1c8:	80002937          	lui	s2,0x80002
 1cc:	788000ef          	jal	ra,954 <neorv32_uart0_print>
 1d0:	01090913          	addi	s2,s2,16 # 80002010 <__ctr0_io_space_begin+0x80002210>
 1d4:	00001ab7          	lui	s5,0x1
 1d8:	01000a13          	li	s4,16
 1dc:	00092983          	lw	s3,0(s2)
 1e0:	00000413          	li	s0,0
 1e4:	00100493          	li	s1,1
 1e8:	fff9c993          	not	s3,s3
 1ec:	0099f7b3          	and	a5,s3,s1
 1f0:	00979863          	bne	a5,s1,200 <main+0x80>
 1f4:	00040593          	mv	a1,s0
 1f8:	c48a8513          	addi	a0,s5,-952 # c48 <__etext+0x40>
 1fc:	7b0000ef          	jal	ra,9ac <neorv32_uart0_printf>
 200:	00140413          	addi	s0,s0,1
 204:	00149493          	slli	s1,s1,0x1
 208:	ff4412e3          	bne	s0,s4,1ec <main+0x6c>
 20c:	fd1ff06f          	j	1dc <main+0x5c>
 210:	00001537          	lui	a0,0x1
 214:	c0850513          	addi	a0,a0,-1016 # c08 <__etext>
 218:	73c000ef          	jal	ra,954 <neorv32_uart0_print>
 21c:	01c12083          	lw	ra,28(sp)
 220:	01812403          	lw	s0,24(sp)
 224:	01412483          	lw	s1,20(sp)
 228:	01012903          	lw	s2,16(sp)
 22c:	00c12983          	lw	s3,12(sp)
 230:	00812a03          	lw	s4,8(sp)
 234:	00412a83          	lw	s5,4(sp)
 238:	00100513          	li	a0,1
 23c:	02010113          	addi	sp,sp,32
 240:	00008067          	ret
 244:	0000                	unimp
 246:	0000                	unimp
 248:	0000                	unimp
 24a:	0000                	unimp
 24c:	0000                	unimp
 24e:	0000                	unimp

00000250 <__neorv32_rte_core>:
 250:	fc010113          	addi	sp,sp,-64
 254:	02112e23          	sw	ra,60(sp)
 258:	02512c23          	sw	t0,56(sp)
 25c:	02612a23          	sw	t1,52(sp)
 260:	02712823          	sw	t2,48(sp)
 264:	02a12623          	sw	a0,44(sp)
 268:	02b12423          	sw	a1,40(sp)
 26c:	02c12223          	sw	a2,36(sp)
 270:	02d12023          	sw	a3,32(sp)
 274:	00e12e23          	sw	a4,28(sp)
 278:	00f12c23          	sw	a5,24(sp)
 27c:	01012a23          	sw	a6,20(sp)
 280:	01112823          	sw	a7,16(sp)
 284:	01c12623          	sw	t3,12(sp)
 288:	01d12423          	sw	t4,8(sp)
 28c:	01e12223          	sw	t5,4(sp)
 290:	01f12023          	sw	t6,0(sp)
 294:	34102773          	csrr	a4,mepc
 298:	34071073          	csrw	mscratch,a4
 29c:	342027f3          	csrr	a5,mcause
 2a0:	0807c863          	bltz	a5,330 <__neorv32_rte_core+0xe0>
 2a4:	00071683          	lh	a3,0(a4)
 2a8:	00300593          	li	a1,3
 2ac:	0036f693          	andi	a3,a3,3
 2b0:	00270613          	addi	a2,a4,2
 2b4:	00b69463          	bne	a3,a1,2bc <__neorv32_rte_core+0x6c>
 2b8:	00470613          	addi	a2,a4,4
 2bc:	34161073          	csrw	mepc,a2
 2c0:	00b00713          	li	a4,11
 2c4:	04f77a63          	bgeu	a4,a5,318 <__neorv32_rte_core+0xc8>
 2c8:	4cc00793          	li	a5,1228
 2cc:	000780e7          	jalr	a5
 2d0:	03c12083          	lw	ra,60(sp)
 2d4:	03812283          	lw	t0,56(sp)
 2d8:	03412303          	lw	t1,52(sp)
 2dc:	03012383          	lw	t2,48(sp)
 2e0:	02c12503          	lw	a0,44(sp)
 2e4:	02812583          	lw	a1,40(sp)
 2e8:	02412603          	lw	a2,36(sp)
 2ec:	02012683          	lw	a3,32(sp)
 2f0:	01c12703          	lw	a4,28(sp)
 2f4:	01812783          	lw	a5,24(sp)
 2f8:	01412803          	lw	a6,20(sp)
 2fc:	01012883          	lw	a7,16(sp)
 300:	00c12e03          	lw	t3,12(sp)
 304:	00812e83          	lw	t4,8(sp)
 308:	00412f03          	lw	t5,4(sp)
 30c:	00012f83          	lw	t6,0(sp)
 310:	04010113          	addi	sp,sp,64
 314:	30200073          	mret
 318:	00001737          	lui	a4,0x1
 31c:	00279793          	slli	a5,a5,0x2
 320:	c5470713          	addi	a4,a4,-940 # c54 <__etext+0x4c>
 324:	00e787b3          	add	a5,a5,a4
 328:	0007a783          	lw	a5,0(a5)
 32c:	00078067          	jr	a5
 330:	80000737          	lui	a4,0x80000
 334:	ffd74713          	xori	a4,a4,-3
 338:	00e787b3          	add	a5,a5,a4
 33c:	01c00713          	li	a4,28
 340:	f8f764e3          	bltu	a4,a5,2c8 <__neorv32_rte_core+0x78>
 344:	00001737          	lui	a4,0x1
 348:	00279793          	slli	a5,a5,0x2
 34c:	c8470713          	addi	a4,a4,-892 # c84 <__etext+0x7c>
 350:	00e787b3          	add	a5,a5,a4
 354:	0007a783          	lw	a5,0(a5)
 358:	00078067          	jr	a5
 35c:	800007b7          	lui	a5,0x80000
 360:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 364:	f69ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 368:	800007b7          	lui	a5,0x80000
 36c:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
 370:	f5dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 374:	800007b7          	lui	a5,0x80000
 378:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
 37c:	f51ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 380:	800007b7          	lui	a5,0x80000
 384:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
 388:	f45ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 38c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
 390:	f3dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 394:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
 398:	f35ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 39c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
 3a0:	f2dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3a4:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
 3a8:	f25ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3ac:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
 3b0:	f1dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3b4:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
 3b8:	f15ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3bc:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
 3c0:	f0dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3c4:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
 3c8:	f05ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3cc:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
 3d0:	efdff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3d4:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
 3d8:	ef5ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3dc:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
 3e0:	eedff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3e4:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
 3e8:	ee5ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3ec:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
 3f0:	eddff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3f4:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
 3f8:	ed5ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 3fc:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
 400:	ecdff06f          	j	2cc <__neorv32_rte_core+0x7c>
 404:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
 408:	ec5ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 40c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
 410:	ebdff06f          	j	2cc <__neorv32_rte_core+0x7c>
 414:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
 418:	eb5ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 41c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
 420:	eadff06f          	j	2cc <__neorv32_rte_core+0x7c>
 424:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
 428:	ea5ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 42c:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
 430:	e9dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 434:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
 438:	e95ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 43c:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
 440:	e8dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 444:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
 448:	e85ff06f          	j	2cc <__neorv32_rte_core+0x7c>
 44c:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
 450:	e7dff06f          	j	2cc <__neorv32_rte_core+0x7c>
 454:	0000                	unimp
 456:	0000                	unimp
 458:	0000                	unimp
 45a:	0000                	unimp

0000045c <__neorv32_rte_print_hex_word>:
 45c:	fe010113          	addi	sp,sp,-32
 460:	01212823          	sw	s2,16(sp)
 464:	00050913          	mv	s2,a0
 468:	00001537          	lui	a0,0x1
 46c:	00912a23          	sw	s1,20(sp)
 470:	cf850513          	addi	a0,a0,-776 # cf8 <__etext+0xf0>
 474:	000014b7          	lui	s1,0x1
 478:	00812c23          	sw	s0,24(sp)
 47c:	01312623          	sw	s3,12(sp)
 480:	00112e23          	sw	ra,28(sp)
 484:	01c00413          	li	s0,28
 488:	4cc000ef          	jal	ra,954 <neorv32_uart0_print>
 48c:	eec48493          	addi	s1,s1,-276 # eec <hex_symbols.0>
 490:	ffc00993          	li	s3,-4
 494:	008957b3          	srl	a5,s2,s0
 498:	00f7f793          	andi	a5,a5,15
 49c:	00f487b3          	add	a5,s1,a5
 4a0:	0007c503          	lbu	a0,0(a5)
 4a4:	ffc40413          	addi	s0,s0,-4
 4a8:	494000ef          	jal	ra,93c <neorv32_uart0_putc>
 4ac:	ff3414e3          	bne	s0,s3,494 <__neorv32_rte_print_hex_word+0x38>
 4b0:	01c12083          	lw	ra,28(sp)
 4b4:	01812403          	lw	s0,24(sp)
 4b8:	01412483          	lw	s1,20(sp)
 4bc:	01012903          	lw	s2,16(sp)
 4c0:	00c12983          	lw	s3,12(sp)
 4c4:	02010113          	addi	sp,sp,32
 4c8:	00008067          	ret

000004cc <__neorv32_rte_debug_exc_handler>:
 4cc:	ff010113          	addi	sp,sp,-16
 4d0:	00112623          	sw	ra,12(sp)
 4d4:	00812423          	sw	s0,8(sp)
 4d8:	00912223          	sw	s1,4(sp)
 4dc:	3a4000ef          	jal	ra,880 <neorv32_uart0_available>
 4e0:	1c050863          	beqz	a0,6b0 <__neorv32_rte_debug_exc_handler+0x1e4>
 4e4:	00001537          	lui	a0,0x1
 4e8:	cfc50513          	addi	a0,a0,-772 # cfc <__etext+0xf4>
 4ec:	468000ef          	jal	ra,954 <neorv32_uart0_print>
 4f0:	34202473          	csrr	s0,mcause
 4f4:	00900713          	li	a4,9
 4f8:	00f47793          	andi	a5,s0,15
 4fc:	03078493          	addi	s1,a5,48
 500:	00f77463          	bgeu	a4,a5,508 <__neorv32_rte_debug_exc_handler+0x3c>
 504:	05778493          	addi	s1,a5,87
 508:	00b00793          	li	a5,11
 50c:	0087ee63          	bltu	a5,s0,528 <__neorv32_rte_debug_exc_handler+0x5c>
 510:	00001737          	lui	a4,0x1
 514:	00241793          	slli	a5,s0,0x2
 518:	ebc70713          	addi	a4,a4,-324 # ebc <__etext+0x2b4>
 51c:	00e787b3          	add	a5,a5,a4
 520:	0007a783          	lw	a5,0(a5)
 524:	00078067          	jr	a5
 528:	800007b7          	lui	a5,0x80000
 52c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
 530:	14e40e63          	beq	s0,a4,68c <__neorv32_rte_debug_exc_handler+0x1c0>
 534:	02876a63          	bltu	a4,s0,568 <__neorv32_rte_debug_exc_handler+0x9c>
 538:	00378713          	addi	a4,a5,3
 53c:	12e40c63          	beq	s0,a4,674 <__neorv32_rte_debug_exc_handler+0x1a8>
 540:	00778793          	addi	a5,a5,7
 544:	12f40e63          	beq	s0,a5,680 <__neorv32_rte_debug_exc_handler+0x1b4>
 548:	00001537          	lui	a0,0x1
 54c:	e5c50513          	addi	a0,a0,-420 # e5c <__etext+0x254>
 550:	404000ef          	jal	ra,954 <neorv32_uart0_print>
 554:	00040513          	mv	a0,s0
 558:	f05ff0ef          	jal	ra,45c <__neorv32_rte_print_hex_word>
 55c:	00100793          	li	a5,1
 560:	08f40c63          	beq	s0,a5,5f8 <__neorv32_rte_debug_exc_handler+0x12c>
 564:	0280006f          	j	58c <__neorv32_rte_debug_exc_handler+0xc0>
 568:	ff07c793          	xori	a5,a5,-16
 56c:	00f407b3          	add	a5,s0,a5
 570:	00f00713          	li	a4,15
 574:	fcf76ae3          	bltu	a4,a5,548 <__neorv32_rte_debug_exc_handler+0x7c>
 578:	00001537          	lui	a0,0x1
 57c:	e4c50513          	addi	a0,a0,-436 # e4c <__etext+0x244>
 580:	3d4000ef          	jal	ra,954 <neorv32_uart0_print>
 584:	00048513          	mv	a0,s1
 588:	3b4000ef          	jal	ra,93c <neorv32_uart0_putc>
 58c:	ffd47413          	andi	s0,s0,-3
 590:	00500793          	li	a5,5
 594:	06f40263          	beq	s0,a5,5f8 <__neorv32_rte_debug_exc_handler+0x12c>
 598:	00001537          	lui	a0,0x1
 59c:	ea050513          	addi	a0,a0,-352 # ea0 <__etext+0x298>
 5a0:	3b4000ef          	jal	ra,954 <neorv32_uart0_print>
 5a4:	34002573          	csrr	a0,mscratch
 5a8:	eb5ff0ef          	jal	ra,45c <__neorv32_rte_print_hex_word>
 5ac:	00001537          	lui	a0,0x1
 5b0:	ea850513          	addi	a0,a0,-344 # ea8 <__etext+0x2a0>
 5b4:	3a0000ef          	jal	ra,954 <neorv32_uart0_print>
 5b8:	34302573          	csrr	a0,mtval
 5bc:	ea1ff0ef          	jal	ra,45c <__neorv32_rte_print_hex_word>
 5c0:	00812403          	lw	s0,8(sp)
 5c4:	00c12083          	lw	ra,12(sp)
 5c8:	00412483          	lw	s1,4(sp)
 5cc:	00001537          	lui	a0,0x1
 5d0:	eb450513          	addi	a0,a0,-332 # eb4 <__etext+0x2ac>
 5d4:	01010113          	addi	sp,sp,16
 5d8:	37c0006f          	j	954 <neorv32_uart0_print>
 5dc:	00001537          	lui	a0,0x1
 5e0:	d0450513          	addi	a0,a0,-764 # d04 <__etext+0xfc>
 5e4:	370000ef          	jal	ra,954 <neorv32_uart0_print>
 5e8:	fb1ff06f          	j	598 <__neorv32_rte_debug_exc_handler+0xcc>
 5ec:	00001537          	lui	a0,0x1
 5f0:	d2450513          	addi	a0,a0,-732 # d24 <__etext+0x11c>
 5f4:	360000ef          	jal	ra,954 <neorv32_uart0_print>
 5f8:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
 5fc:	0a07d463          	bgez	a5,6a4 <__neorv32_rte_debug_exc_handler+0x1d8>
 600:	0017f793          	andi	a5,a5,1
 604:	08078a63          	beqz	a5,698 <__neorv32_rte_debug_exc_handler+0x1cc>
 608:	00001537          	lui	a0,0x1
 60c:	e7450513          	addi	a0,a0,-396 # e74 <__etext+0x26c>
 610:	fd5ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 614:	00001537          	lui	a0,0x1
 618:	d4050513          	addi	a0,a0,-704 # d40 <__etext+0x138>
 61c:	fc9ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 620:	00001537          	lui	a0,0x1
 624:	d5450513          	addi	a0,a0,-684 # d54 <__etext+0x14c>
 628:	fbdff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 62c:	00001537          	lui	a0,0x1
 630:	d6050513          	addi	a0,a0,-672 # d60 <__etext+0x158>
 634:	fb1ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 638:	00001537          	lui	a0,0x1
 63c:	d7850513          	addi	a0,a0,-648 # d78 <__etext+0x170>
 640:	fb5ff06f          	j	5f4 <__neorv32_rte_debug_exc_handler+0x128>
 644:	00001537          	lui	a0,0x1
 648:	d8c50513          	addi	a0,a0,-628 # d8c <__etext+0x184>
 64c:	f99ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 650:	00001537          	lui	a0,0x1
 654:	da850513          	addi	a0,a0,-600 # da8 <__etext+0x1a0>
 658:	f9dff06f          	j	5f4 <__neorv32_rte_debug_exc_handler+0x128>
 65c:	00001537          	lui	a0,0x1
 660:	dbc50513          	addi	a0,a0,-580 # dbc <__etext+0x1b4>
 664:	f81ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 668:	00001537          	lui	a0,0x1
 66c:	ddc50513          	addi	a0,a0,-548 # ddc <__etext+0x1d4>
 670:	f75ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 674:	00001537          	lui	a0,0x1
 678:	dfc50513          	addi	a0,a0,-516 # dfc <__etext+0x1f4>
 67c:	f69ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 680:	00001537          	lui	a0,0x1
 684:	e1850513          	addi	a0,a0,-488 # e18 <__etext+0x210>
 688:	f5dff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 68c:	00001537          	lui	a0,0x1
 690:	e3050513          	addi	a0,a0,-464 # e30 <__etext+0x228>
 694:	f51ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 698:	00001537          	lui	a0,0x1
 69c:	e8450513          	addi	a0,a0,-380 # e84 <__etext+0x27c>
 6a0:	f45ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 6a4:	00001537          	lui	a0,0x1
 6a8:	e9450513          	addi	a0,a0,-364 # e94 <__etext+0x28c>
 6ac:	f39ff06f          	j	5e4 <__neorv32_rte_debug_exc_handler+0x118>
 6b0:	00c12083          	lw	ra,12(sp)
 6b4:	00812403          	lw	s0,8(sp)
 6b8:	00412483          	lw	s1,4(sp)
 6bc:	01010113          	addi	sp,sp,16
 6c0:	00008067          	ret

000006c4 <neorv32_rte_exception_uninstall>:
 6c4:	01f00793          	li	a5,31
 6c8:	02a7e263          	bltu	a5,a0,6ec <neorv32_rte_exception_uninstall+0x28>
 6cc:	800007b7          	lui	a5,0x80000
 6d0:	00078793          	mv	a5,a5
 6d4:	00251513          	slli	a0,a0,0x2
 6d8:	00a78533          	add	a0,a5,a0
 6dc:	4cc00793          	li	a5,1228
 6e0:	00f52023          	sw	a5,0(a0)
 6e4:	00000513          	li	a0,0
 6e8:	00008067          	ret
 6ec:	00100513          	li	a0,1
 6f0:	00008067          	ret

000006f4 <neorv32_rte_setup>:
 6f4:	ff010113          	addi	sp,sp,-16
 6f8:	00112623          	sw	ra,12(sp)
 6fc:	00812423          	sw	s0,8(sp)
 700:	00912223          	sw	s1,4(sp)
 704:	25000793          	li	a5,592
 708:	30579073          	csrw	mtvec,a5
 70c:	00000413          	li	s0,0
 710:	01d00493          	li	s1,29
 714:	00040513          	mv	a0,s0
 718:	00140413          	addi	s0,s0,1
 71c:	0ff47413          	andi	s0,s0,255
 720:	fa5ff0ef          	jal	ra,6c4 <neorv32_rte_exception_uninstall>
 724:	fe9418e3          	bne	s0,s1,714 <neorv32_rte_setup+0x20>
 728:	00c12083          	lw	ra,12(sp)
 72c:	00812403          	lw	s0,8(sp)
 730:	00412483          	lw	s1,4(sp)
 734:	01010113          	addi	sp,sp,16
 738:	00008067          	ret

0000073c <__neorv32_uart_itoa>:
 73c:	fd010113          	addi	sp,sp,-48
 740:	02812423          	sw	s0,40(sp)
 744:	02912223          	sw	s1,36(sp)
 748:	03212023          	sw	s2,32(sp)
 74c:	01312e23          	sw	s3,28(sp)
 750:	01412c23          	sw	s4,24(sp)
 754:	02112623          	sw	ra,44(sp)
 758:	01512a23          	sw	s5,20(sp)
 75c:	00001a37          	lui	s4,0x1
 760:	00050493          	mv	s1,a0
 764:	00058413          	mv	s0,a1
 768:	00058523          	sb	zero,10(a1)
 76c:	00000993          	li	s3,0
 770:	00410913          	addi	s2,sp,4
 774:	efca0a13          	addi	s4,s4,-260 # efc <numbers.1>
 778:	00a00593          	li	a1,10
 77c:	00048513          	mv	a0,s1
 780:	424000ef          	jal	ra,ba4 <__umodsi3>
 784:	00aa0533          	add	a0,s4,a0
 788:	00054783          	lbu	a5,0(a0)
 78c:	01390ab3          	add	s5,s2,s3
 790:	00048513          	mv	a0,s1
 794:	00fa8023          	sb	a5,0(s5)
 798:	00a00593          	li	a1,10
 79c:	3c0000ef          	jal	ra,b5c <__udivsi3>
 7a0:	00198993          	addi	s3,s3,1
 7a4:	00a00793          	li	a5,10
 7a8:	00050493          	mv	s1,a0
 7ac:	fcf996e3          	bne	s3,a5,778 <__neorv32_uart_itoa+0x3c>
 7b0:	00090693          	mv	a3,s2
 7b4:	00900713          	li	a4,9
 7b8:	03000613          	li	a2,48
 7bc:	0096c583          	lbu	a1,9(a3)
 7c0:	00070793          	mv	a5,a4
 7c4:	fff70713          	addi	a4,a4,-1
 7c8:	01071713          	slli	a4,a4,0x10
 7cc:	01075713          	srli	a4,a4,0x10
 7d0:	00c59a63          	bne	a1,a2,7e4 <__neorv32_uart_itoa+0xa8>
 7d4:	000684a3          	sb	zero,9(a3)
 7d8:	fff68693          	addi	a3,a3,-1
 7dc:	fe0710e3          	bnez	a4,7bc <__neorv32_uart_itoa+0x80>
 7e0:	00000793          	li	a5,0
 7e4:	00f907b3          	add	a5,s2,a5
 7e8:	00000593          	li	a1,0
 7ec:	0007c703          	lbu	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
 7f0:	00070c63          	beqz	a4,808 <__neorv32_uart_itoa+0xcc>
 7f4:	00158693          	addi	a3,a1,1
 7f8:	00b405b3          	add	a1,s0,a1
 7fc:	00e58023          	sb	a4,0(a1)
 800:	01069593          	slli	a1,a3,0x10
 804:	0105d593          	srli	a1,a1,0x10
 808:	fff78713          	addi	a4,a5,-1
 80c:	02f91863          	bne	s2,a5,83c <__neorv32_uart_itoa+0x100>
 810:	00b40433          	add	s0,s0,a1
 814:	00040023          	sb	zero,0(s0)
 818:	02c12083          	lw	ra,44(sp)
 81c:	02812403          	lw	s0,40(sp)
 820:	02412483          	lw	s1,36(sp)
 824:	02012903          	lw	s2,32(sp)
 828:	01c12983          	lw	s3,28(sp)
 82c:	01812a03          	lw	s4,24(sp)
 830:	01412a83          	lw	s5,20(sp)
 834:	03010113          	addi	sp,sp,48
 838:	00008067          	ret
 83c:	00070793          	mv	a5,a4
 840:	fadff06f          	j	7ec <__neorv32_uart_itoa+0xb0>

00000844 <__neorv32_uart_tohex>:
 844:	00001637          	lui	a2,0x1
 848:	00758693          	addi	a3,a1,7
 84c:	00000713          	li	a4,0
 850:	f0860613          	addi	a2,a2,-248 # f08 <symbols.0>
 854:	02000813          	li	a6,32
 858:	00e557b3          	srl	a5,a0,a4
 85c:	00f7f793          	andi	a5,a5,15
 860:	00f607b3          	add	a5,a2,a5
 864:	0007c783          	lbu	a5,0(a5)
 868:	00470713          	addi	a4,a4,4
 86c:	fff68693          	addi	a3,a3,-1
 870:	00f680a3          	sb	a5,1(a3)
 874:	ff0712e3          	bne	a4,a6,858 <__neorv32_uart_tohex+0x14>
 878:	00058423          	sb	zero,8(a1)
 87c:	00008067          	ret

00000880 <neorv32_uart0_available>:
 880:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 884:	01255513          	srli	a0,a0,0x12
 888:	00157513          	andi	a0,a0,1
 88c:	00008067          	ret

00000890 <neorv32_uart0_setup>:
 890:	ff010113          	addi	sp,sp,-16
 894:	00812423          	sw	s0,8(sp)
 898:	00912223          	sw	s1,4(sp)
 89c:	00112623          	sw	ra,12(sp)
 8a0:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 8a4:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
 8a8:	00058413          	mv	s0,a1
 8ac:	00151593          	slli	a1,a0,0x1
 8b0:	00078513          	mv	a0,a5
 8b4:	00060493          	mv	s1,a2
 8b8:	2a4000ef          	jal	ra,b5c <__udivsi3>
 8bc:	01051513          	slli	a0,a0,0x10
 8c0:	000017b7          	lui	a5,0x1
 8c4:	01055513          	srli	a0,a0,0x10
 8c8:	00000713          	li	a4,0
 8cc:	ffe78793          	addi	a5,a5,-2 # ffe <__crt0_copy_data_src_begin+0xe2>
 8d0:	04a7e463          	bltu	a5,a0,918 <neorv32_uart0_setup+0x88>
 8d4:	0034f793          	andi	a5,s1,3
 8d8:	00347413          	andi	s0,s0,3
 8dc:	fff50513          	addi	a0,a0,-1
 8e0:	01479793          	slli	a5,a5,0x14
 8e4:	01641413          	slli	s0,s0,0x16
 8e8:	00f567b3          	or	a5,a0,a5
 8ec:	0087e7b3          	or	a5,a5,s0
 8f0:	01871713          	slli	a4,a4,0x18
 8f4:	00c12083          	lw	ra,12(sp)
 8f8:	00812403          	lw	s0,8(sp)
 8fc:	00e7e7b3          	or	a5,a5,a4
 900:	10000737          	lui	a4,0x10000
 904:	00e7e7b3          	or	a5,a5,a4
 908:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 90c:	00412483          	lw	s1,4(sp)
 910:	01010113          	addi	sp,sp,16
 914:	00008067          	ret
 918:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xffff0e2>
 91c:	0fd6f693          	andi	a3,a3,253
 920:	00069a63          	bnez	a3,934 <neorv32_uart0_setup+0xa4>
 924:	00355513          	srli	a0,a0,0x3
 928:	00170713          	addi	a4,a4,1
 92c:	0ff77713          	andi	a4,a4,255
 930:	fa1ff06f          	j	8d0 <neorv32_uart0_setup+0x40>
 934:	00155513          	srli	a0,a0,0x1
 938:	ff1ff06f          	j	928 <neorv32_uart0_setup+0x98>

0000093c <neorv32_uart0_putc>:
 93c:	00040737          	lui	a4,0x40
 940:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
 944:	00e7f7b3          	and	a5,a5,a4
 948:	fe079ce3          	bnez	a5,940 <neorv32_uart0_putc+0x4>
 94c:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
 950:	00008067          	ret

00000954 <neorv32_uart0_print>:
 954:	ff010113          	addi	sp,sp,-16
 958:	00812423          	sw	s0,8(sp)
 95c:	01212023          	sw	s2,0(sp)
 960:	00112623          	sw	ra,12(sp)
 964:	00912223          	sw	s1,4(sp)
 968:	00050413          	mv	s0,a0
 96c:	00a00913          	li	s2,10
 970:	00044483          	lbu	s1,0(s0)
 974:	00140413          	addi	s0,s0,1
 978:	00049e63          	bnez	s1,994 <neorv32_uart0_print+0x40>
 97c:	00c12083          	lw	ra,12(sp)
 980:	00812403          	lw	s0,8(sp)
 984:	00412483          	lw	s1,4(sp)
 988:	00012903          	lw	s2,0(sp)
 98c:	01010113          	addi	sp,sp,16
 990:	00008067          	ret
 994:	01249663          	bne	s1,s2,9a0 <neorv32_uart0_print+0x4c>
 998:	00d00513          	li	a0,13
 99c:	fa1ff0ef          	jal	ra,93c <neorv32_uart0_putc>
 9a0:	00048513          	mv	a0,s1
 9a4:	f99ff0ef          	jal	ra,93c <neorv32_uart0_putc>
 9a8:	fc9ff06f          	j	970 <neorv32_uart0_print+0x1c>

000009ac <neorv32_uart0_printf>:
 9ac:	fa010113          	addi	sp,sp,-96
 9b0:	04f12a23          	sw	a5,84(sp)
 9b4:	04410793          	addi	a5,sp,68
 9b8:	02812c23          	sw	s0,56(sp)
 9bc:	03212823          	sw	s2,48(sp)
 9c0:	03412423          	sw	s4,40(sp)
 9c4:	03512223          	sw	s5,36(sp)
 9c8:	03612023          	sw	s6,32(sp)
 9cc:	01712e23          	sw	s7,28(sp)
 9d0:	01812c23          	sw	s8,24(sp)
 9d4:	01912a23          	sw	s9,20(sp)
 9d8:	02112e23          	sw	ra,60(sp)
 9dc:	02912a23          	sw	s1,52(sp)
 9e0:	03312623          	sw	s3,44(sp)
 9e4:	00050413          	mv	s0,a0
 9e8:	04b12223          	sw	a1,68(sp)
 9ec:	04c12423          	sw	a2,72(sp)
 9f0:	04d12623          	sw	a3,76(sp)
 9f4:	04e12823          	sw	a4,80(sp)
 9f8:	05012c23          	sw	a6,88(sp)
 9fc:	05112e23          	sw	a7,92(sp)
 a00:	00f12023          	sw	a5,0(sp)
 a04:	02500a13          	li	s4,37
 a08:	00a00a93          	li	s5,10
 a0c:	07300913          	li	s2,115
 a10:	07500b13          	li	s6,117
 a14:	07800b93          	li	s7,120
 a18:	06300c13          	li	s8,99
 a1c:	06900c93          	li	s9,105
 a20:	00044483          	lbu	s1,0(s0)
 a24:	02049c63          	bnez	s1,a5c <neorv32_uart0_printf+0xb0>
 a28:	03c12083          	lw	ra,60(sp)
 a2c:	03812403          	lw	s0,56(sp)
 a30:	03412483          	lw	s1,52(sp)
 a34:	03012903          	lw	s2,48(sp)
 a38:	02c12983          	lw	s3,44(sp)
 a3c:	02812a03          	lw	s4,40(sp)
 a40:	02412a83          	lw	s5,36(sp)
 a44:	02012b03          	lw	s6,32(sp)
 a48:	01c12b83          	lw	s7,28(sp)
 a4c:	01812c03          	lw	s8,24(sp)
 a50:	01412c83          	lw	s9,20(sp)
 a54:	06010113          	addi	sp,sp,96
 a58:	00008067          	ret
 a5c:	0d449863          	bne	s1,s4,b2c <neorv32_uart0_printf+0x180>
 a60:	00240993          	addi	s3,s0,2
 a64:	00144403          	lbu	s0,1(s0)
 a68:	05240263          	beq	s0,s2,aac <neorv32_uart0_printf+0x100>
 a6c:	00896e63          	bltu	s2,s0,a88 <neorv32_uart0_printf+0xdc>
 a70:	05840c63          	beq	s0,s8,ac8 <neorv32_uart0_printf+0x11c>
 a74:	07940663          	beq	s0,s9,ae0 <neorv32_uart0_printf+0x134>
 a78:	02500513          	li	a0,37
 a7c:	ec1ff0ef          	jal	ra,93c <neorv32_uart0_putc>
 a80:	00040513          	mv	a0,s0
 a84:	0540006f          	j	ad8 <neorv32_uart0_printf+0x12c>
 a88:	09640663          	beq	s0,s6,b14 <neorv32_uart0_printf+0x168>
 a8c:	ff7416e3          	bne	s0,s7,a78 <neorv32_uart0_printf+0xcc>
 a90:	00012783          	lw	a5,0(sp)
 a94:	00410593          	addi	a1,sp,4
 a98:	0007a503          	lw	a0,0(a5)
 a9c:	00478713          	addi	a4,a5,4
 aa0:	00e12023          	sw	a4,0(sp)
 aa4:	da1ff0ef          	jal	ra,844 <__neorv32_uart_tohex>
 aa8:	0640006f          	j	b0c <neorv32_uart0_printf+0x160>
 aac:	00012783          	lw	a5,0(sp)
 ab0:	0007a503          	lw	a0,0(a5)
 ab4:	00478713          	addi	a4,a5,4
 ab8:	00e12023          	sw	a4,0(sp)
 abc:	e99ff0ef          	jal	ra,954 <neorv32_uart0_print>
 ac0:	00098413          	mv	s0,s3
 ac4:	f5dff06f          	j	a20 <neorv32_uart0_printf+0x74>
 ac8:	00012783          	lw	a5,0(sp)
 acc:	0007c503          	lbu	a0,0(a5)
 ad0:	00478713          	addi	a4,a5,4
 ad4:	00e12023          	sw	a4,0(sp)
 ad8:	e65ff0ef          	jal	ra,93c <neorv32_uart0_putc>
 adc:	fe5ff06f          	j	ac0 <neorv32_uart0_printf+0x114>
 ae0:	00012783          	lw	a5,0(sp)
 ae4:	0007a403          	lw	s0,0(a5)
 ae8:	00478713          	addi	a4,a5,4
 aec:	00e12023          	sw	a4,0(sp)
 af0:	00045863          	bgez	s0,b00 <neorv32_uart0_printf+0x154>
 af4:	02d00513          	li	a0,45
 af8:	40800433          	neg	s0,s0
 afc:	e41ff0ef          	jal	ra,93c <neorv32_uart0_putc>
 b00:	00410593          	addi	a1,sp,4
 b04:	00040513          	mv	a0,s0
 b08:	c35ff0ef          	jal	ra,73c <__neorv32_uart_itoa>
 b0c:	00410513          	addi	a0,sp,4
 b10:	fadff06f          	j	abc <neorv32_uart0_printf+0x110>
 b14:	00012783          	lw	a5,0(sp)
 b18:	00410593          	addi	a1,sp,4
 b1c:	00478713          	addi	a4,a5,4
 b20:	0007a503          	lw	a0,0(a5)
 b24:	00e12023          	sw	a4,0(sp)
 b28:	fe1ff06f          	j	b08 <neorv32_uart0_printf+0x15c>
 b2c:	01549663          	bne	s1,s5,b38 <neorv32_uart0_printf+0x18c>
 b30:	00d00513          	li	a0,13
 b34:	e09ff0ef          	jal	ra,93c <neorv32_uart0_putc>
 b38:	00140993          	addi	s3,s0,1
 b3c:	00048513          	mv	a0,s1
 b40:	f99ff06f          	j	ad8 <neorv32_uart0_printf+0x12c>

00000b44 <neorv32_gpio_available>:
 b44:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
 b48:	01055513          	srli	a0,a0,0x10
 b4c:	00157513          	andi	a0,a0,1
 b50:	00008067          	ret

00000b54 <__divsi3>:
 b54:	06054063          	bltz	a0,bb4 <__umodsi3+0x10>
 b58:	0605c663          	bltz	a1,bc4 <__umodsi3+0x20>

00000b5c <__udivsi3>:
 b5c:	00058613          	mv	a2,a1
 b60:	00050593          	mv	a1,a0
 b64:	fff00513          	li	a0,-1
 b68:	02060c63          	beqz	a2,ba0 <__udivsi3+0x44>
 b6c:	00100693          	li	a3,1
 b70:	00b67a63          	bgeu	a2,a1,b84 <__udivsi3+0x28>
 b74:	00c05863          	blez	a2,b84 <__udivsi3+0x28>
 b78:	00161613          	slli	a2,a2,0x1
 b7c:	00169693          	slli	a3,a3,0x1
 b80:	feb66ae3          	bltu	a2,a1,b74 <__udivsi3+0x18>
 b84:	00000513          	li	a0,0
 b88:	00c5e663          	bltu	a1,a2,b94 <__udivsi3+0x38>
 b8c:	40c585b3          	sub	a1,a1,a2
 b90:	00d56533          	or	a0,a0,a3
 b94:	0016d693          	srli	a3,a3,0x1
 b98:	00165613          	srli	a2,a2,0x1
 b9c:	fe0696e3          	bnez	a3,b88 <__udivsi3+0x2c>
 ba0:	00008067          	ret

00000ba4 <__umodsi3>:
 ba4:	00008293          	mv	t0,ra
 ba8:	fb5ff0ef          	jal	ra,b5c <__udivsi3>
 bac:	00058513          	mv	a0,a1
 bb0:	00028067          	jr	t0
 bb4:	40a00533          	neg	a0,a0
 bb8:	00b04863          	bgtz	a1,bc8 <__umodsi3+0x24>
 bbc:	40b005b3          	neg	a1,a1
 bc0:	f9dff06f          	j	b5c <__udivsi3>
 bc4:	40b005b3          	neg	a1,a1
 bc8:	00008293          	mv	t0,ra
 bcc:	f91ff0ef          	jal	ra,b5c <__udivsi3>
 bd0:	40a00533          	neg	a0,a0
 bd4:	00028067          	jr	t0

00000bd8 <__modsi3>:
 bd8:	00008293          	mv	t0,ra
 bdc:	0005ca63          	bltz	a1,bf0 <__modsi3+0x18>
 be0:	00054c63          	bltz	a0,bf8 <__modsi3+0x20>
 be4:	f79ff0ef          	jal	ra,b5c <__udivsi3>
 be8:	00058513          	mv	a0,a1
 bec:	00028067          	jr	t0
 bf0:	40b005b3          	neg	a1,a1
 bf4:	fe0558e3          	bgez	a0,be4 <__modsi3+0xc>
 bf8:	40a00533          	neg	a0,a0
 bfc:	f61ff0ef          	jal	ra,b5c <__udivsi3>
 c00:	40b00533          	neg	a0,a1
 c04:	00028067          	jr	t0
