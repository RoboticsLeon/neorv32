
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
      c8:	87818613          	addi	a2,gp,-1928 # 80000078 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00002597          	auipc	a1,0x2
      e0:	ec458593          	addi	a1,a1,-316 # 1fa0 <__crt0_copy_data_src_begin>
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
     180:	fc010113          	addi	sp,sp,-64
     184:	800007b7          	lui	a5,0x80000
     188:	02112e23          	sw	ra,60(sp)
     18c:	02812c23          	sw	s0,56(sp)
     190:	02912a23          	sw	s1,52(sp)
     194:	03212823          	sw	s2,48(sp)
     198:	03312623          	sw	s3,44(sp)
     19c:	03412423          	sw	s4,40(sp)
     1a0:	03512223          	sw	s5,36(sp)
     1a4:	03612023          	sw	s6,32(sp)
     1a8:	01712e23          	sw	s7,28(sp)
     1ac:	01812c23          	sw	s8,24(sp)
     1b0:	00078023          	sb	zero,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     1b4:	219000ef          	jal	ra,bcc <neorv32_uart0_available>
     1b8:	12050a63          	beqz	a0,2ec <main+0x16c>
     1bc:	27c010ef          	jal	ra,1438 <neorv32_rte_setup>
     1c0:	30047073          	csrci	mstatus,8
     1c4:	00000013          	nop
     1c8:	00000013          	nop
     1cc:	00005537          	lui	a0,0x5
     1d0:	00000613          	li	a2,0
     1d4:	00000593          	li	a1,0
     1d8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x2b60>
     1dc:	201000ef          	jal	ra,bdc <neorv32_uart0_setup>
     1e0:	00000513          	li	a0,0
     1e4:	2a0010ef          	jal	ra,1484 <neorv32_rte_check_isa>
     1e8:	00002537          	lui	a0,0x2
     1ec:	a1850513          	addi	a0,a0,-1512 # 1a18 <__etext+0x278>
     1f0:	331000ef          	jal	ra,d20 <neorv32_uart0_printf>
     1f4:	00002537          	lui	a0,0x2
     1f8:	a3050513          	addi	a0,a0,-1488 # 1a30 <__etext+0x290>
     1fc:	325000ef          	jal	ra,d20 <neorv32_uart0_printf>
     200:	000024b7          	lui	s1,0x2
     204:	00002937          	lui	s2,0x2
     208:	000029b7          	lui	s3,0x2
     20c:	00002a37          	lui	s4,0x2
     210:	00002ab7          	lui	s5,0x2
     214:	00002b37          	lui	s6,0x2
     218:	00002bb7          	lui	s7,0x2
     21c:	00002c37          	lui	s8,0x2
     220:	a9848513          	addi	a0,s1,-1384 # 1a98 <__etext+0x2f8>
     224:	2fd000ef          	jal	ra,d20 <neorv32_uart0_printf>
     228:	00100613          	li	a2,1
     22c:	00800593          	li	a1,8
     230:	00810513          	addi	a0,sp,8
     234:	485000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     238:	00050413          	mv	s0,a0
     23c:	a2c90513          	addi	a0,s2,-1492 # 1a2c <__etext+0x28c>
     240:	2e1000ef          	jal	ra,d20 <neorv32_uart0_printf>
     244:	fc040ee3          	beqz	s0,220 <main+0xa0>
     248:	aa898593          	addi	a1,s3,-1368 # 1aa8 <__etext+0x308>
     24c:	00810513          	addi	a0,sp,8
     250:	348010ef          	jal	ra,1598 <strcmp>
     254:	00051a63          	bnez	a0,268 <main+0xe8>
     258:	00002537          	lui	a0,0x2
     25c:	ab050513          	addi	a0,a0,-1360 # 1ab0 <__etext+0x310>
     260:	2c1000ef          	jal	ra,d20 <neorv32_uart0_printf>
     264:	fbdff06f          	j	220 <main+0xa0>
     268:	be0a0593          	addi	a1,s4,-1056 # 1be0 <__etext+0x440>
     26c:	00810513          	addi	a0,sp,8
     270:	328010ef          	jal	ra,1598 <strcmp>
     274:	00051663          	bnez	a0,280 <main+0x100>
     278:	0a8000ef          	jal	ra,320 <setup_access>
     27c:	fa5ff06f          	j	220 <main+0xa0>
     280:	be8a8593          	addi	a1,s5,-1048 # 1be8 <__etext+0x448>
     284:	00810513          	addi	a0,sp,8
     288:	310010ef          	jal	ra,1598 <strcmp>
     28c:	00051663          	bnez	a0,298 <main+0x118>
     290:	444000ef          	jal	ra,6d4 <read_memory>
     294:	f8dff06f          	j	220 <main+0xa0>
     298:	bf0b0593          	addi	a1,s6,-1040 # 1bf0 <__etext+0x450>
     29c:	00810513          	addi	a0,sp,8
     2a0:	2f8010ef          	jal	ra,1598 <strcmp>
     2a4:	00051663          	bnez	a0,2b0 <main+0x130>
     2a8:	33c000ef          	jal	ra,5e4 <atomic_cas>
     2ac:	f75ff06f          	j	220 <main+0xa0>
     2b0:	bf8b8593          	addi	a1,s7,-1032 # 1bf8 <__etext+0x458>
     2b4:	00810513          	addi	a0,sp,8
     2b8:	2e0010ef          	jal	ra,1598 <strcmp>
     2bc:	00051663          	bnez	a0,2c8 <main+0x148>
     2c0:	180000ef          	jal	ra,440 <write_memory>
     2c4:	f5dff06f          	j	220 <main+0xa0>
     2c8:	c00c0593          	addi	a1,s8,-1024 # 1c00 <__etext+0x460>
     2cc:	00810513          	addi	a0,sp,8
     2d0:	2c8010ef          	jal	ra,1598 <strcmp>
     2d4:	00051663          	bnez	a0,2e0 <main+0x160>
     2d8:	58c000ef          	jal	ra,864 <dump_memory>
     2dc:	f45ff06f          	j	220 <main+0xa0>
     2e0:	00002537          	lui	a0,0x2
     2e4:	c0850513          	addi	a0,a0,-1016 # 1c08 <__etext+0x468>
     2e8:	f79ff06f          	j	260 <main+0xe0>
     2ec:	03c12083          	lw	ra,60(sp)
     2f0:	03812403          	lw	s0,56(sp)
     2f4:	03412483          	lw	s1,52(sp)
     2f8:	03012903          	lw	s2,48(sp)
     2fc:	02c12983          	lw	s3,44(sp)
     300:	02812a03          	lw	s4,40(sp)
     304:	02412a83          	lw	s5,36(sp)
     308:	02012b03          	lw	s6,32(sp)
     30c:	01c12b83          	lw	s7,28(sp)
     310:	01812c03          	lw	s8,24(sp)
     314:	00100513          	li	a0,1
     318:	04010113          	addi	sp,sp,64
     31c:	00008067          	ret

00000320 <setup_access>:
     320:	00001537          	lui	a0,0x1
     324:	fe010113          	addi	sp,sp,-32
     328:	7a050513          	addi	a0,a0,1952 # 17a0 <__etext>
     32c:	00912a23          	sw	s1,20(sp)
     330:	01212823          	sw	s2,16(sp)
     334:	01312623          	sw	s3,12(sp)
     338:	01412423          	sw	s4,8(sp)
     33c:	01512223          	sw	s5,4(sp)
     340:	01612023          	sw	s6,0(sp)
     344:	00112e23          	sw	ra,28(sp)
     348:	00812c23          	sw	s0,24(sp)
     34c:	00002937          	lui	s2,0x2
     350:	1d1000ef          	jal	ra,d20 <neorv32_uart0_printf>
     354:	06200993          	li	s3,98
     358:	06800a13          	li	s4,104
     35c:	07700a93          	li	s5,119
     360:	07800b13          	li	s6,120
     364:	000024b7          	lui	s1,0x2
     368:	82890513          	addi	a0,s2,-2008 # 1828 <__etext+0x88>
     36c:	1b5000ef          	jal	ra,d20 <neorv32_uart0_printf>
     370:	131000ef          	jal	ra,ca0 <neorv32_uart0_getc>
     374:	00050413          	mv	s0,a0
     378:	111000ef          	jal	ra,c88 <neorv32_uart0_putc>
     37c:	01340663          	beq	s0,s3,388 <setup_access+0x68>
     380:	01440463          	beq	s0,s4,388 <setup_access+0x68>
     384:	03541e63          	bne	s0,s5,3c0 <setup_access+0xa0>
     388:	800007b7          	lui	a5,0x80000
     38c:	00878023          	sb	s0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     390:	01812403          	lw	s0,24(sp)
     394:	01c12083          	lw	ra,28(sp)
     398:	01412483          	lw	s1,20(sp)
     39c:	01012903          	lw	s2,16(sp)
     3a0:	00c12983          	lw	s3,12(sp)
     3a4:	00812a03          	lw	s4,8(sp)
     3a8:	00412a83          	lw	s5,4(sp)
     3ac:	00012b03          	lw	s6,0(sp)
     3b0:	00002537          	lui	a0,0x2
     3b4:	a2c50513          	addi	a0,a0,-1492 # 1a2c <__etext+0x28c>
     3b8:	02010113          	addi	sp,sp,32
     3bc:	1650006f          	j	d20 <neorv32_uart0_printf>
     3c0:	fd6408e3          	beq	s0,s6,390 <setup_access+0x70>
     3c4:	83448513          	addi	a0,s1,-1996 # 1834 <__etext+0x94>
     3c8:	159000ef          	jal	ra,d20 <neorv32_uart0_printf>
     3cc:	f9dff06f          	j	368 <setup_access+0x48>

000003d0 <hexstr_to_uint>:
     3d0:	00050713          	mv	a4,a0
     3d4:	0ff00893          	li	a7,255
     3d8:	00000513          	li	a0,0
     3dc:	00900313          	li	t1,9
     3e0:	00500813          	li	a6,5
     3e4:	fff58593          	addi	a1,a1,-1
     3e8:	0ff5f593          	andi	a1,a1,255
     3ec:	01159463          	bne	a1,a7,3f4 <hexstr_to_uint+0x24>
     3f0:	00008067          	ret
     3f4:	00074683          	lbu	a3,0(a4)
     3f8:	fd068793          	addi	a5,a3,-48
     3fc:	0ff7f613          	andi	a2,a5,255
     400:	00c37a63          	bgeu	t1,a2,414 <hexstr_to_uint+0x44>
     404:	f9f68793          	addi	a5,a3,-97
     408:	0ff7f793          	andi	a5,a5,255
     40c:	00f86e63          	bltu	a6,a5,428 <hexstr_to_uint+0x58>
     410:	fa968793          	addi	a5,a3,-87
     414:	00259693          	slli	a3,a1,0x2
     418:	00d797b3          	sll	a5,a5,a3
     41c:	00f50533          	add	a0,a0,a5
     420:	00170713          	addi	a4,a4,1
     424:	fc1ff06f          	j	3e4 <hexstr_to_uint+0x14>
     428:	fbf68613          	addi	a2,a3,-65
     42c:	0ff67613          	andi	a2,a2,255
     430:	00000793          	li	a5,0
     434:	fec860e3          	bltu	a6,a2,414 <hexstr_to_uint+0x44>
     438:	fc968793          	addi	a5,a3,-55
     43c:	fd9ff06f          	j	414 <hexstr_to_uint+0x44>

00000440 <write_memory>:
     440:	fd010113          	addi	sp,sp,-48
     444:	02812423          	sw	s0,40(sp)
     448:	80000437          	lui	s0,0x80000
     44c:	00044783          	lbu	a5,0(s0) # 80000000 <__ctr0_io_space_begin+0x80000200>
     450:	02112623          	sw	ra,44(sp)
     454:	02912223          	sw	s1,36(sp)
     458:	03212023          	sw	s2,32(sp)
     45c:	01312e23          	sw	s3,28(sp)
     460:	02079463          	bnez	a5,488 <write_memory+0x48>
     464:	02812403          	lw	s0,40(sp)
     468:	02c12083          	lw	ra,44(sp)
     46c:	02412483          	lw	s1,36(sp)
     470:	02012903          	lw	s2,32(sp)
     474:	01c12983          	lw	s3,28(sp)
     478:	00002537          	lui	a0,0x2
     47c:	84850513          	addi	a0,a0,-1976 # 1848 <__etext+0xa8>
     480:	03010113          	addi	sp,sp,48
     484:	09d0006f          	j	d20 <neorv32_uart0_printf>
     488:	00002537          	lui	a0,0x2
     48c:	87450513          	addi	a0,a0,-1932 # 1874 <__etext+0xd4>
     490:	091000ef          	jal	ra,d20 <neorv32_uart0_printf>
     494:	00100613          	li	a2,1
     498:	00900593          	li	a1,9
     49c:	00010513          	mv	a0,sp
     4a0:	219000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     4a4:	00010513          	mv	a0,sp
     4a8:	26c010ef          	jal	ra,1714 <strlen>
     4ac:	0ff57593          	andi	a1,a0,255
     4b0:	00010513          	mv	a0,sp
     4b4:	f1dff0ef          	jal	ra,3d0 <hexstr_to_uint>
     4b8:	00040413          	mv	s0,s0
     4bc:	00044703          	lbu	a4,0(s0)
     4c0:	06200793          	li	a5,98
     4c4:	00050913          	mv	s2,a0
     4c8:	00000993          	li	s3,0
     4cc:	02f71c63          	bne	a4,a5,504 <write_memory+0xc4>
     4d0:	00002537          	lui	a0,0x2
     4d4:	89450513          	addi	a0,a0,-1900 # 1894 <__etext+0xf4>
     4d8:	049000ef          	jal	ra,d20 <neorv32_uart0_printf>
     4dc:	00100613          	li	a2,1
     4e0:	00300593          	li	a1,3
     4e4:	00010513          	mv	a0,sp
     4e8:	1d1000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     4ec:	00010513          	mv	a0,sp
     4f0:	224010ef          	jal	ra,1714 <strlen>
     4f4:	0ff57593          	andi	a1,a0,255
     4f8:	00010513          	mv	a0,sp
     4fc:	ed5ff0ef          	jal	ra,3d0 <hexstr_to_uint>
     500:	0ff57993          	andi	s3,a0,255
     504:	00044703          	lbu	a4,0(s0)
     508:	06800793          	li	a5,104
     50c:	00000493          	li	s1,0
     510:	02f71e63          	bne	a4,a5,54c <write_memory+0x10c>
     514:	00002537          	lui	a0,0x2
     518:	8b450513          	addi	a0,a0,-1868 # 18b4 <__etext+0x114>
     51c:	005000ef          	jal	ra,d20 <neorv32_uart0_printf>
     520:	00100613          	li	a2,1
     524:	00500593          	li	a1,5
     528:	00010513          	mv	a0,sp
     52c:	18d000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     530:	00010513          	mv	a0,sp
     534:	1e0010ef          	jal	ra,1714 <strlen>
     538:	0ff57593          	andi	a1,a0,255
     53c:	00010513          	mv	a0,sp
     540:	e91ff0ef          	jal	ra,3d0 <hexstr_to_uint>
     544:	01051493          	slli	s1,a0,0x10
     548:	0104d493          	srli	s1,s1,0x10
     54c:	00044703          	lbu	a4,0(s0)
     550:	07700793          	li	a5,119
     554:	00000513          	li	a0,0
     558:	02f71a63          	bne	a4,a5,58c <write_memory+0x14c>
     55c:	00002537          	lui	a0,0x2
     560:	8d450513          	addi	a0,a0,-1836 # 18d4 <__etext+0x134>
     564:	7bc000ef          	jal	ra,d20 <neorv32_uart0_printf>
     568:	00900593          	li	a1,9
     56c:	00100613          	li	a2,1
     570:	00010513          	mv	a0,sp
     574:	145000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     578:	00010513          	mv	a0,sp
     57c:	198010ef          	jal	ra,1714 <strlen>
     580:	0ff57593          	andi	a1,a0,255
     584:	00010513          	mv	a0,sp
     588:	e49ff0ef          	jal	ra,3d0 <hexstr_to_uint>
     58c:	00044783          	lbu	a5,0(s0)
     590:	06200713          	li	a4,98
     594:	02e79863          	bne	a5,a4,5c4 <write_memory+0x184>
     598:	01390023          	sb	s3,0(s2)
     59c:	00002537          	lui	a0,0x2
     5a0:	a2c50513          	addi	a0,a0,-1492 # 1a2c <__etext+0x28c>
     5a4:	77c000ef          	jal	ra,d20 <neorv32_uart0_printf>
     5a8:	02c12083          	lw	ra,44(sp)
     5ac:	02812403          	lw	s0,40(sp)
     5b0:	02412483          	lw	s1,36(sp)
     5b4:	02012903          	lw	s2,32(sp)
     5b8:	01c12983          	lw	s3,28(sp)
     5bc:	03010113          	addi	sp,sp,48
     5c0:	00008067          	ret
     5c4:	06800713          	li	a4,104
     5c8:	00e79663          	bne	a5,a4,5d4 <write_memory+0x194>
     5cc:	00991023          	sh	s1,0(s2)
     5d0:	fcdff06f          	j	59c <write_memory+0x15c>
     5d4:	07700713          	li	a4,119
     5d8:	fce792e3          	bne	a5,a4,59c <write_memory+0x15c>
     5dc:	00a92023          	sw	a0,0(s2)
     5e0:	fbdff06f          	j	59c <write_memory+0x15c>

000005e4 <atomic_cas>:
     5e4:	301027f3          	csrr	a5,misa
     5e8:	0017f793          	andi	a5,a5,1
     5ec:	08078863          	beqz	a5,67c <atomic_cas+0x98>
     5f0:	00002537          	lui	a0,0x2
     5f4:	fe010113          	addi	sp,sp,-32
     5f8:	8f450513          	addi	a0,a0,-1804 # 18f4 <__etext+0x154>
     5fc:	00112e23          	sw	ra,28(sp)
     600:	00812c23          	sw	s0,24(sp)
     604:	71c000ef          	jal	ra,d20 <neorv32_uart0_printf>
     608:	00100613          	li	a2,1
     60c:	00900593          	li	a1,9
     610:	00010513          	mv	a0,sp
     614:	0a5000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     618:	00010513          	mv	a0,sp
     61c:	0f8010ef          	jal	ra,1714 <strlen>
     620:	0ff57593          	andi	a1,a0,255
     624:	00010513          	mv	a0,sp
     628:	da9ff0ef          	jal	ra,3d0 <hexstr_to_uint>
     62c:	00050593          	mv	a1,a0
     630:	00050413          	mv	s0,a0
     634:	00002537          	lui	a0,0x2
     638:	91c50513          	addi	a0,a0,-1764 # 191c <__etext+0x17c>
     63c:	6e4000ef          	jal	ra,d20 <neorv32_uart0_printf>
     640:	00100613          	li	a2,1
     644:	00900593          	li	a1,9
     648:	00010513          	mv	a0,sp
     64c:	06d000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     650:	00042583          	lw	a1,0(s0)
     654:	00002537          	lui	a0,0x2
     658:	94850513          	addi	a0,a0,-1720 # 1948 <__etext+0x1a8>
     65c:	6c4000ef          	jal	ra,d20 <neorv32_uart0_printf>
     660:	00002537          	lui	a0,0x2
     664:	95c50513          	addi	a0,a0,-1700 # 195c <__etext+0x1bc>
     668:	6b8000ef          	jal	ra,d20 <neorv32_uart0_printf>
     66c:	01c12083          	lw	ra,28(sp)
     670:	01812403          	lw	s0,24(sp)
     674:	02010113          	addi	sp,sp,32
     678:	00008067          	ret
     67c:	00002537          	lui	a0,0x2
     680:	97450513          	addi	a0,a0,-1676 # 1974 <__etext+0x1d4>
     684:	69c0006f          	j	d20 <neorv32_uart0_printf>

00000688 <aux_print_hex_byte>:
     688:	ff010113          	addi	sp,sp,-16
     68c:	00812423          	sw	s0,8(sp)
     690:	00002437          	lui	s0,0x2
     694:	c3c40413          	addi	s0,s0,-964 # 1c3c <symbols.0>
     698:	00455793          	srli	a5,a0,0x4
     69c:	00f407b3          	add	a5,s0,a5
     6a0:	00912223          	sw	s1,4(sp)
     6a4:	00050493          	mv	s1,a0
     6a8:	0007c503          	lbu	a0,0(a5)
     6ac:	00f4f493          	andi	s1,s1,15
     6b0:	00112623          	sw	ra,12(sp)
     6b4:	00940433          	add	s0,s0,s1
     6b8:	5d0000ef          	jal	ra,c88 <neorv32_uart0_putc>
     6bc:	00044503          	lbu	a0,0(s0)
     6c0:	00812403          	lw	s0,8(sp)
     6c4:	00c12083          	lw	ra,12(sp)
     6c8:	00412483          	lw	s1,4(sp)
     6cc:	01010113          	addi	sp,sp,16
     6d0:	5b80006f          	j	c88 <neorv32_uart0_putc>

000006d4 <read_memory>:
     6d4:	fd010113          	addi	sp,sp,-48
     6d8:	03212023          	sw	s2,32(sp)
     6dc:	80000937          	lui	s2,0x80000
     6e0:	00094783          	lbu	a5,0(s2) # 80000000 <__ctr0_io_space_begin+0x80000200>
     6e4:	02112623          	sw	ra,44(sp)
     6e8:	02812423          	sw	s0,40(sp)
     6ec:	02912223          	sw	s1,36(sp)
     6f0:	01312e23          	sw	s3,28(sp)
     6f4:	02079463          	bnez	a5,71c <read_memory+0x48>
     6f8:	02812403          	lw	s0,40(sp)
     6fc:	02c12083          	lw	ra,44(sp)
     700:	02412483          	lw	s1,36(sp)
     704:	02012903          	lw	s2,32(sp)
     708:	01c12983          	lw	s3,28(sp)
     70c:	00002537          	lui	a0,0x2
     710:	84850513          	addi	a0,a0,-1976 # 1848 <__etext+0xa8>
     714:	03010113          	addi	sp,sp,48
     718:	6080006f          	j	d20 <neorv32_uart0_printf>
     71c:	00002537          	lui	a0,0x2
     720:	87450513          	addi	a0,a0,-1932 # 1874 <__etext+0xd4>
     724:	5fc000ef          	jal	ra,d20 <neorv32_uart0_printf>
     728:	00100613          	li	a2,1
     72c:	00900593          	li	a1,9
     730:	00010513          	mv	a0,sp
     734:	784000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     738:	00010513          	mv	a0,sp
     73c:	7d9000ef          	jal	ra,1714 <strlen>
     740:	0ff57593          	andi	a1,a0,255
     744:	00010513          	mv	a0,sp
     748:	c89ff0ef          	jal	ra,3d0 <hexstr_to_uint>
     74c:	00050593          	mv	a1,a0
     750:	00050413          	mv	s0,a0
     754:	00002537          	lui	a0,0x2
     758:	9a050513          	addi	a0,a0,-1632 # 19a0 <__etext+0x200>
     75c:	5c4000ef          	jal	ra,d20 <neorv32_uart0_printf>
     760:	00090913          	mv	s2,s2
     764:	00000793          	li	a5,0
     768:	34279073          	csrw	mcause,a5
     76c:	00094783          	lbu	a5,0(s2)
     770:	06200713          	li	a4,98
     774:	0ae79a63          	bne	a5,a4,828 <read_memory+0x154>
     778:	00044403          	lbu	s0,0(s0)
     77c:	0ff47993          	andi	s3,s0,255
     780:	00000413          	li	s0,0
     784:	00000493          	li	s1,0
     788:	342027f3          	csrr	a5,mcause
     78c:	06079a63          	bnez	a5,800 <read_memory+0x12c>
     790:	00002537          	lui	a0,0x2
     794:	91850513          	addi	a0,a0,-1768 # 1918 <__etext+0x178>
     798:	588000ef          	jal	ra,d20 <neorv32_uart0_printf>
     79c:	00094703          	lbu	a4,0(s2)
     7a0:	06200793          	li	a5,98
     7a4:	00f71663          	bne	a4,a5,7b0 <read_memory+0xdc>
     7a8:	00098513          	mv	a0,s3
     7ac:	eddff0ef          	jal	ra,688 <aux_print_hex_byte>
     7b0:	00094703          	lbu	a4,0(s2)
     7b4:	06800793          	li	a5,104
     7b8:	00f71a63          	bne	a4,a5,7cc <read_memory+0xf8>
     7bc:	00845513          	srli	a0,s0,0x8
     7c0:	ec9ff0ef          	jal	ra,688 <aux_print_hex_byte>
     7c4:	0ff47513          	andi	a0,s0,255
     7c8:	ec1ff0ef          	jal	ra,688 <aux_print_hex_byte>
     7cc:	00094703          	lbu	a4,0(s2)
     7d0:	07700793          	li	a5,119
     7d4:	02f71663          	bne	a4,a5,800 <read_memory+0x12c>
     7d8:	0184d513          	srli	a0,s1,0x18
     7dc:	eadff0ef          	jal	ra,688 <aux_print_hex_byte>
     7e0:	0104d513          	srli	a0,s1,0x10
     7e4:	0ff57513          	andi	a0,a0,255
     7e8:	ea1ff0ef          	jal	ra,688 <aux_print_hex_byte>
     7ec:	0084d513          	srli	a0,s1,0x8
     7f0:	0ff57513          	andi	a0,a0,255
     7f4:	e95ff0ef          	jal	ra,688 <aux_print_hex_byte>
     7f8:	0ff4f513          	andi	a0,s1,255
     7fc:	e8dff0ef          	jal	ra,688 <aux_print_hex_byte>
     800:	00002537          	lui	a0,0x2
     804:	a2c50513          	addi	a0,a0,-1492 # 1a2c <__etext+0x28c>
     808:	518000ef          	jal	ra,d20 <neorv32_uart0_printf>
     80c:	02c12083          	lw	ra,44(sp)
     810:	02812403          	lw	s0,40(sp)
     814:	02412483          	lw	s1,36(sp)
     818:	02012903          	lw	s2,32(sp)
     81c:	01c12983          	lw	s3,28(sp)
     820:	03010113          	addi	sp,sp,48
     824:	00008067          	ret
     828:	06800713          	li	a4,104
     82c:	00e78c63          	beq	a5,a4,844 <read_memory+0x170>
     830:	07700713          	li	a4,119
     834:	02e78063          	beq	a5,a4,854 <read_memory+0x180>
     838:	00000413          	li	s0,0
     83c:	00000993          	li	s3,0
     840:	f45ff06f          	j	784 <read_memory+0xb0>
     844:	00045403          	lhu	s0,0(s0)
     848:	01041413          	slli	s0,s0,0x10
     84c:	01045413          	srli	s0,s0,0x10
     850:	fedff06f          	j	83c <read_memory+0x168>
     854:	00042483          	lw	s1,0(s0)
     858:	00000413          	li	s0,0
     85c:	00000993          	li	s3,0
     860:	f29ff06f          	j	788 <read_memory+0xb4>

00000864 <dump_memory>:
     864:	fc010113          	addi	sp,sp,-64
     868:	02912a23          	sw	s1,52(sp)
     86c:	800004b7          	lui	s1,0x80000
     870:	0004c783          	lbu	a5,0(s1) # 80000000 <__ctr0_io_space_begin+0x80000200>
     874:	02112e23          	sw	ra,60(sp)
     878:	02812c23          	sw	s0,56(sp)
     87c:	03212823          	sw	s2,48(sp)
     880:	03312623          	sw	s3,44(sp)
     884:	03412423          	sw	s4,40(sp)
     888:	03512223          	sw	s5,36(sp)
     88c:	03612023          	sw	s6,32(sp)
     890:	01712e23          	sw	s7,28(sp)
     894:	01812c23          	sw	s8,24(sp)
     898:	01912a23          	sw	s9,20(sp)
     89c:	01a12823          	sw	s10,16(sp)
     8a0:	04079263          	bnez	a5,8e4 <dump_memory+0x80>
     8a4:	03812403          	lw	s0,56(sp)
     8a8:	03c12083          	lw	ra,60(sp)
     8ac:	03412483          	lw	s1,52(sp)
     8b0:	03012903          	lw	s2,48(sp)
     8b4:	02c12983          	lw	s3,44(sp)
     8b8:	02812a03          	lw	s4,40(sp)
     8bc:	02412a83          	lw	s5,36(sp)
     8c0:	02012b03          	lw	s6,32(sp)
     8c4:	01c12b83          	lw	s7,28(sp)
     8c8:	01812c03          	lw	s8,24(sp)
     8cc:	01412c83          	lw	s9,20(sp)
     8d0:	01012d03          	lw	s10,16(sp)
     8d4:	00002537          	lui	a0,0x2
     8d8:	84850513          	addi	a0,a0,-1976 # 1848 <__etext+0xa8>
     8dc:	04010113          	addi	sp,sp,64
     8e0:	4400006f          	j	d20 <neorv32_uart0_printf>
     8e4:	00002537          	lui	a0,0x2
     8e8:	9ac50513          	addi	a0,a0,-1620 # 19ac <__etext+0x20c>
     8ec:	434000ef          	jal	ra,d20 <neorv32_uart0_printf>
     8f0:	00100613          	li	a2,1
     8f4:	00900593          	li	a1,9
     8f8:	00010513          	mv	a0,sp
     8fc:	5bc000ef          	jal	ra,eb8 <neorv32_uart0_scan>
     900:	00010513          	mv	a0,sp
     904:	611000ef          	jal	ra,1714 <strlen>
     908:	0ff57593          	andi	a1,a0,255
     90c:	00010513          	mv	a0,sp
     910:	ac1ff0ef          	jal	ra,3d0 <hexstr_to_uint>
     914:	00050413          	mv	s0,a0
     918:	00002537          	lui	a0,0x2
     91c:	9d450513          	addi	a0,a0,-1580 # 19d4 <__etext+0x234>
     920:	400000ef          	jal	ra,d20 <neorv32_uart0_printf>
     924:	00048493          	mv	s1,s1
     928:	378000ef          	jal	ra,ca0 <neorv32_uart0_getc>
     92c:	00002c37          	lui	s8,0x2
     930:	00002cb7          	lui	s9,0x2
     934:	06200a93          	li	s5,98
     938:	06800b13          	li	s6,104
     93c:	07700b93          	li	s7,119
     940:	00002d37          	lui	s10,0x2
     944:	36c000ef          	jal	ra,cb0 <neorv32_uart0_char_received>
     948:	00050913          	mv	s2,a0
     94c:	02051a63          	bnez	a0,980 <dump_memory+0x11c>
     950:	00040593          	mv	a1,s0
     954:	a0cc8513          	addi	a0,s9,-1524 # 1a0c <__etext+0x26c>
     958:	3c8000ef          	jal	ra,d20 <neorv32_uart0_printf>
     95c:	34291073          	csrw	mcause,s2
     960:	0004c783          	lbu	a5,0(s1)
     964:	07579063          	bne	a5,s5,9c4 <dump_memory+0x160>
     968:	00044a03          	lbu	s4,0(s0)
     96c:	00000993          	li	s3,0
     970:	0ffa7a13          	andi	s4,s4,255
     974:	00000913          	li	s2,0
     978:	342027f3          	csrr	a5,mcause
     97c:	06078e63          	beqz	a5,9f8 <dump_memory+0x194>
     980:	33c000ef          	jal	ra,cbc <neorv32_uart0_char_received_get>
     984:	a2cc0513          	addi	a0,s8,-1492 # 1a2c <__etext+0x28c>
     988:	398000ef          	jal	ra,d20 <neorv32_uart0_printf>
     98c:	03c12083          	lw	ra,60(sp)
     990:	03812403          	lw	s0,56(sp)
     994:	03412483          	lw	s1,52(sp)
     998:	03012903          	lw	s2,48(sp)
     99c:	02c12983          	lw	s3,44(sp)
     9a0:	02812a03          	lw	s4,40(sp)
     9a4:	02412a83          	lw	s5,36(sp)
     9a8:	02012b03          	lw	s6,32(sp)
     9ac:	01c12b83          	lw	s7,28(sp)
     9b0:	01812c03          	lw	s8,24(sp)
     9b4:	01412c83          	lw	s9,20(sp)
     9b8:	01012d03          	lw	s10,16(sp)
     9bc:	04010113          	addi	sp,sp,64
     9c0:	00008067          	ret
     9c4:	01678a63          	beq	a5,s6,9d8 <dump_memory+0x174>
     9c8:	03778063          	beq	a5,s7,9e8 <dump_memory+0x184>
     9cc:	00000993          	li	s3,0
     9d0:	00000a13          	li	s4,0
     9d4:	fa1ff06f          	j	974 <dump_memory+0x110>
     9d8:	00045983          	lhu	s3,0(s0)
     9dc:	01099993          	slli	s3,s3,0x10
     9e0:	0109d993          	srli	s3,s3,0x10
     9e4:	fedff06f          	j	9d0 <dump_memory+0x16c>
     9e8:	00042903          	lw	s2,0(s0)
     9ec:	00000993          	li	s3,0
     9f0:	00000a13          	li	s4,0
     9f4:	f85ff06f          	j	978 <dump_memory+0x114>
     9f8:	918d0513          	addi	a0,s10,-1768 # 1918 <__etext+0x178>
     9fc:	324000ef          	jal	ra,d20 <neorv32_uart0_printf>
     a00:	0004c783          	lbu	a5,0(s1)
     a04:	01579663          	bne	a5,s5,a10 <dump_memory+0x1ac>
     a08:	000a0513          	mv	a0,s4
     a0c:	c7dff0ef          	jal	ra,688 <aux_print_hex_byte>
     a10:	0004c783          	lbu	a5,0(s1)
     a14:	01679a63          	bne	a5,s6,a28 <dump_memory+0x1c4>
     a18:	0089d513          	srli	a0,s3,0x8
     a1c:	c6dff0ef          	jal	ra,688 <aux_print_hex_byte>
     a20:	0ff9f513          	andi	a0,s3,255
     a24:	c65ff0ef          	jal	ra,688 <aux_print_hex_byte>
     a28:	0004c783          	lbu	a5,0(s1)
     a2c:	03779663          	bne	a5,s7,a58 <dump_memory+0x1f4>
     a30:	01895513          	srli	a0,s2,0x18
     a34:	c55ff0ef          	jal	ra,688 <aux_print_hex_byte>
     a38:	01095513          	srli	a0,s2,0x10
     a3c:	0ff57513          	andi	a0,a0,255
     a40:	c49ff0ef          	jal	ra,688 <aux_print_hex_byte>
     a44:	00895513          	srli	a0,s2,0x8
     a48:	0ff57513          	andi	a0,a0,255
     a4c:	c3dff0ef          	jal	ra,688 <aux_print_hex_byte>
     a50:	0ff97513          	andi	a0,s2,255
     a54:	c35ff0ef          	jal	ra,688 <aux_print_hex_byte>
     a58:	a2cc0513          	addi	a0,s8,-1492
     a5c:	2c4000ef          	jal	ra,d20 <neorv32_uart0_printf>
     a60:	0004c783          	lbu	a5,0(s1)
     a64:	01579663          	bne	a5,s5,a70 <dump_memory+0x20c>
     a68:	00140413          	addi	s0,s0,1
     a6c:	ed9ff06f          	j	944 <dump_memory+0xe0>
     a70:	01679663          	bne	a5,s6,a7c <dump_memory+0x218>
     a74:	00240413          	addi	s0,s0,2
     a78:	ecdff06f          	j	944 <dump_memory+0xe0>
     a7c:	ed7794e3          	bne	a5,s7,944 <dump_memory+0xe0>
     a80:	00440413          	addi	s0,s0,4
     a84:	ec1ff06f          	j	944 <dump_memory+0xe0>

00000a88 <__neorv32_uart_itoa>:
     a88:	fd010113          	addi	sp,sp,-48
     a8c:	02812423          	sw	s0,40(sp)
     a90:	02912223          	sw	s1,36(sp)
     a94:	03212023          	sw	s2,32(sp)
     a98:	01312e23          	sw	s3,28(sp)
     a9c:	01412c23          	sw	s4,24(sp)
     aa0:	02112623          	sw	ra,44(sp)
     aa4:	01512a23          	sw	s5,20(sp)
     aa8:	00002a37          	lui	s4,0x2
     aac:	00050493          	mv	s1,a0
     ab0:	00058413          	mv	s0,a1
     ab4:	00058523          	sb	zero,10(a1)
     ab8:	00000993          	li	s3,0
     abc:	00410913          	addi	s2,sp,4
     ac0:	c54a0a13          	addi	s4,s4,-940 # 1c54 <numbers.1>
     ac4:	00a00593          	li	a1,10
     ac8:	00048513          	mv	a0,s1
     acc:	269000ef          	jal	ra,1534 <__umodsi3>
     ad0:	00aa0533          	add	a0,s4,a0
     ad4:	00054783          	lbu	a5,0(a0)
     ad8:	01390ab3          	add	s5,s2,s3
     adc:	00048513          	mv	a0,s1
     ae0:	00fa8023          	sb	a5,0(s5)
     ae4:	00a00593          	li	a1,10
     ae8:	205000ef          	jal	ra,14ec <__udivsi3>
     aec:	00198993          	addi	s3,s3,1
     af0:	00a00793          	li	a5,10
     af4:	00050493          	mv	s1,a0
     af8:	fcf996e3          	bne	s3,a5,ac4 <__neorv32_uart_itoa+0x3c>
     afc:	00090693          	mv	a3,s2
     b00:	00900713          	li	a4,9
     b04:	03000613          	li	a2,48
     b08:	0096c583          	lbu	a1,9(a3)
     b0c:	00070793          	mv	a5,a4
     b10:	fff70713          	addi	a4,a4,-1
     b14:	01071713          	slli	a4,a4,0x10
     b18:	01075713          	srli	a4,a4,0x10
     b1c:	00c59a63          	bne	a1,a2,b30 <__neorv32_uart_itoa+0xa8>
     b20:	000684a3          	sb	zero,9(a3)
     b24:	fff68693          	addi	a3,a3,-1
     b28:	fe0710e3          	bnez	a4,b08 <__neorv32_uart_itoa+0x80>
     b2c:	00000793          	li	a5,0
     b30:	00f907b3          	add	a5,s2,a5
     b34:	00000593          	li	a1,0
     b38:	0007c703          	lbu	a4,0(a5)
     b3c:	00070c63          	beqz	a4,b54 <__neorv32_uart_itoa+0xcc>
     b40:	00158693          	addi	a3,a1,1
     b44:	00b405b3          	add	a1,s0,a1
     b48:	00e58023          	sb	a4,0(a1)
     b4c:	01069593          	slli	a1,a3,0x10
     b50:	0105d593          	srli	a1,a1,0x10
     b54:	fff78713          	addi	a4,a5,-1
     b58:	02f91863          	bne	s2,a5,b88 <__neorv32_uart_itoa+0x100>
     b5c:	00b40433          	add	s0,s0,a1
     b60:	00040023          	sb	zero,0(s0)
     b64:	02c12083          	lw	ra,44(sp)
     b68:	02812403          	lw	s0,40(sp)
     b6c:	02412483          	lw	s1,36(sp)
     b70:	02012903          	lw	s2,32(sp)
     b74:	01c12983          	lw	s3,28(sp)
     b78:	01812a03          	lw	s4,24(sp)
     b7c:	01412a83          	lw	s5,20(sp)
     b80:	03010113          	addi	sp,sp,48
     b84:	00008067          	ret
     b88:	00070793          	mv	a5,a4
     b8c:	fadff06f          	j	b38 <__neorv32_uart_itoa+0xb0>

00000b90 <__neorv32_uart_tohex>:
     b90:	00002637          	lui	a2,0x2
     b94:	00758693          	addi	a3,a1,7
     b98:	00000713          	li	a4,0
     b9c:	c6060613          	addi	a2,a2,-928 # 1c60 <symbols.0>
     ba0:	02000813          	li	a6,32
     ba4:	00e557b3          	srl	a5,a0,a4
     ba8:	00f7f793          	andi	a5,a5,15
     bac:	00f607b3          	add	a5,a2,a5
     bb0:	0007c783          	lbu	a5,0(a5)
     bb4:	00470713          	addi	a4,a4,4
     bb8:	fff68693          	addi	a3,a3,-1
     bbc:	00f680a3          	sb	a5,1(a3)
     bc0:	ff0712e3          	bne	a4,a6,ba4 <__neorv32_uart_tohex+0x14>
     bc4:	00058423          	sb	zero,8(a1)
     bc8:	00008067          	ret

00000bcc <neorv32_uart0_available>:
     bcc:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     bd0:	01255513          	srli	a0,a0,0x12
     bd4:	00157513          	andi	a0,a0,1
     bd8:	00008067          	ret

00000bdc <neorv32_uart0_setup>:
     bdc:	ff010113          	addi	sp,sp,-16
     be0:	00812423          	sw	s0,8(sp)
     be4:	00912223          	sw	s1,4(sp)
     be8:	00112623          	sw	ra,12(sp)
     bec:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     bf0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     bf4:	00058413          	mv	s0,a1
     bf8:	00151593          	slli	a1,a0,0x1
     bfc:	00078513          	mv	a0,a5
     c00:	00060493          	mv	s1,a2
     c04:	0e9000ef          	jal	ra,14ec <__udivsi3>
     c08:	01051513          	slli	a0,a0,0x10
     c0c:	000017b7          	lui	a5,0x1
     c10:	01055513          	srli	a0,a0,0x10
     c14:	00000713          	li	a4,0
     c18:	ffe78793          	addi	a5,a5,-2 # ffe <__neorv32_rte_core+0x6e>
     c1c:	04a7e463          	bltu	a5,a0,c64 <neorv32_uart0_setup+0x88>
     c20:	0034f793          	andi	a5,s1,3
     c24:	00347413          	andi	s0,s0,3
     c28:	fff50513          	addi	a0,a0,-1
     c2c:	01479793          	slli	a5,a5,0x14
     c30:	01641413          	slli	s0,s0,0x16
     c34:	00f567b3          	or	a5,a0,a5
     c38:	0087e7b3          	or	a5,a5,s0
     c3c:	01871713          	slli	a4,a4,0x18
     c40:	00c12083          	lw	ra,12(sp)
     c44:	00812403          	lw	s0,8(sp)
     c48:	00e7e7b3          	or	a5,a5,a4
     c4c:	10000737          	lui	a4,0x10000
     c50:	00e7e7b3          	or	a5,a5,a4
     c54:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c58:	00412483          	lw	s1,4(sp)
     c5c:	01010113          	addi	sp,sp,16
     c60:	00008067          	ret
     c64:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe05e>
     c68:	0fd6f693          	andi	a3,a3,253
     c6c:	00069a63          	bnez	a3,c80 <neorv32_uart0_setup+0xa4>
     c70:	00355513          	srli	a0,a0,0x3
     c74:	00170713          	addi	a4,a4,1
     c78:	0ff77713          	andi	a4,a4,255
     c7c:	fa1ff06f          	j	c1c <neorv32_uart0_setup+0x40>
     c80:	00155513          	srli	a0,a0,0x1
     c84:	ff1ff06f          	j	c74 <neorv32_uart0_setup+0x98>

00000c88 <neorv32_uart0_putc>:
     c88:	00040737          	lui	a4,0x40
     c8c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     c90:	00e7f7b3          	and	a5,a5,a4
     c94:	fe079ce3          	bnez	a5,c8c <neorv32_uart0_putc+0x4>
     c98:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     c9c:	00008067          	ret

00000ca0 <neorv32_uart0_getc>:
     ca0:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     ca4:	fe055ee3          	bgez	a0,ca0 <neorv32_uart0_getc>
     ca8:	0ff57513          	andi	a0,a0,255
     cac:	00008067          	ret

00000cb0 <neorv32_uart0_char_received>:
     cb0:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     cb4:	01f55513          	srli	a0,a0,0x1f
     cb8:	00008067          	ret

00000cbc <neorv32_uart0_char_received_get>:
     cbc:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     cc0:	0ff57513          	andi	a0,a0,255
     cc4:	00008067          	ret

00000cc8 <neorv32_uart0_print>:
     cc8:	ff010113          	addi	sp,sp,-16
     ccc:	00812423          	sw	s0,8(sp)
     cd0:	01212023          	sw	s2,0(sp)
     cd4:	00112623          	sw	ra,12(sp)
     cd8:	00912223          	sw	s1,4(sp)
     cdc:	00050413          	mv	s0,a0
     ce0:	00a00913          	li	s2,10
     ce4:	00044483          	lbu	s1,0(s0)
     ce8:	00140413          	addi	s0,s0,1
     cec:	00049e63          	bnez	s1,d08 <neorv32_uart0_print+0x40>
     cf0:	00c12083          	lw	ra,12(sp)
     cf4:	00812403          	lw	s0,8(sp)
     cf8:	00412483          	lw	s1,4(sp)
     cfc:	00012903          	lw	s2,0(sp)
     d00:	01010113          	addi	sp,sp,16
     d04:	00008067          	ret
     d08:	01249663          	bne	s1,s2,d14 <neorv32_uart0_print+0x4c>
     d0c:	00d00513          	li	a0,13
     d10:	f79ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     d14:	00048513          	mv	a0,s1
     d18:	f71ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     d1c:	fc9ff06f          	j	ce4 <neorv32_uart0_print+0x1c>

00000d20 <neorv32_uart0_printf>:
     d20:	fa010113          	addi	sp,sp,-96
     d24:	04f12a23          	sw	a5,84(sp)
     d28:	04410793          	addi	a5,sp,68
     d2c:	02812c23          	sw	s0,56(sp)
     d30:	03212823          	sw	s2,48(sp)
     d34:	03412423          	sw	s4,40(sp)
     d38:	03512223          	sw	s5,36(sp)
     d3c:	03612023          	sw	s6,32(sp)
     d40:	01712e23          	sw	s7,28(sp)
     d44:	01812c23          	sw	s8,24(sp)
     d48:	01912a23          	sw	s9,20(sp)
     d4c:	02112e23          	sw	ra,60(sp)
     d50:	02912a23          	sw	s1,52(sp)
     d54:	03312623          	sw	s3,44(sp)
     d58:	00050413          	mv	s0,a0
     d5c:	04b12223          	sw	a1,68(sp)
     d60:	04c12423          	sw	a2,72(sp)
     d64:	04d12623          	sw	a3,76(sp)
     d68:	04e12823          	sw	a4,80(sp)
     d6c:	05012c23          	sw	a6,88(sp)
     d70:	05112e23          	sw	a7,92(sp)
     d74:	00f12023          	sw	a5,0(sp)
     d78:	02500a13          	li	s4,37
     d7c:	00a00a93          	li	s5,10
     d80:	07300913          	li	s2,115
     d84:	07500b13          	li	s6,117
     d88:	07800b93          	li	s7,120
     d8c:	06300c13          	li	s8,99
     d90:	06900c93          	li	s9,105
     d94:	00044483          	lbu	s1,0(s0)
     d98:	02049c63          	bnez	s1,dd0 <neorv32_uart0_printf+0xb0>
     d9c:	03c12083          	lw	ra,60(sp)
     da0:	03812403          	lw	s0,56(sp)
     da4:	03412483          	lw	s1,52(sp)
     da8:	03012903          	lw	s2,48(sp)
     dac:	02c12983          	lw	s3,44(sp)
     db0:	02812a03          	lw	s4,40(sp)
     db4:	02412a83          	lw	s5,36(sp)
     db8:	02012b03          	lw	s6,32(sp)
     dbc:	01c12b83          	lw	s7,28(sp)
     dc0:	01812c03          	lw	s8,24(sp)
     dc4:	01412c83          	lw	s9,20(sp)
     dc8:	06010113          	addi	sp,sp,96
     dcc:	00008067          	ret
     dd0:	0d449863          	bne	s1,s4,ea0 <neorv32_uart0_printf+0x180>
     dd4:	00240993          	addi	s3,s0,2
     dd8:	00144403          	lbu	s0,1(s0)
     ddc:	05240263          	beq	s0,s2,e20 <neorv32_uart0_printf+0x100>
     de0:	00896e63          	bltu	s2,s0,dfc <neorv32_uart0_printf+0xdc>
     de4:	05840c63          	beq	s0,s8,e3c <neorv32_uart0_printf+0x11c>
     de8:	07940663          	beq	s0,s9,e54 <neorv32_uart0_printf+0x134>
     dec:	02500513          	li	a0,37
     df0:	e99ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     df4:	00040513          	mv	a0,s0
     df8:	0540006f          	j	e4c <neorv32_uart0_printf+0x12c>
     dfc:	09640663          	beq	s0,s6,e88 <neorv32_uart0_printf+0x168>
     e00:	ff7416e3          	bne	s0,s7,dec <neorv32_uart0_printf+0xcc>
     e04:	00012783          	lw	a5,0(sp)
     e08:	00410593          	addi	a1,sp,4
     e0c:	0007a503          	lw	a0,0(a5)
     e10:	00478713          	addi	a4,a5,4
     e14:	00e12023          	sw	a4,0(sp)
     e18:	d79ff0ef          	jal	ra,b90 <__neorv32_uart_tohex>
     e1c:	0640006f          	j	e80 <neorv32_uart0_printf+0x160>
     e20:	00012783          	lw	a5,0(sp)
     e24:	0007a503          	lw	a0,0(a5)
     e28:	00478713          	addi	a4,a5,4
     e2c:	00e12023          	sw	a4,0(sp)
     e30:	e99ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
     e34:	00098413          	mv	s0,s3
     e38:	f5dff06f          	j	d94 <neorv32_uart0_printf+0x74>
     e3c:	00012783          	lw	a5,0(sp)
     e40:	0007c503          	lbu	a0,0(a5)
     e44:	00478713          	addi	a4,a5,4
     e48:	00e12023          	sw	a4,0(sp)
     e4c:	e3dff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     e50:	fe5ff06f          	j	e34 <neorv32_uart0_printf+0x114>
     e54:	00012783          	lw	a5,0(sp)
     e58:	0007a403          	lw	s0,0(a5)
     e5c:	00478713          	addi	a4,a5,4
     e60:	00e12023          	sw	a4,0(sp)
     e64:	00045863          	bgez	s0,e74 <neorv32_uart0_printf+0x154>
     e68:	02d00513          	li	a0,45
     e6c:	40800433          	neg	s0,s0
     e70:	e19ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     e74:	00410593          	addi	a1,sp,4
     e78:	00040513          	mv	a0,s0
     e7c:	c0dff0ef          	jal	ra,a88 <__neorv32_uart_itoa>
     e80:	00410513          	addi	a0,sp,4
     e84:	fadff06f          	j	e30 <neorv32_uart0_printf+0x110>
     e88:	00012783          	lw	a5,0(sp)
     e8c:	00410593          	addi	a1,sp,4
     e90:	00478713          	addi	a4,a5,4
     e94:	0007a503          	lw	a0,0(a5)
     e98:	00e12023          	sw	a4,0(sp)
     e9c:	fe1ff06f          	j	e7c <neorv32_uart0_printf+0x15c>
     ea0:	01549663          	bne	s1,s5,eac <neorv32_uart0_printf+0x18c>
     ea4:	00d00513          	li	a0,13
     ea8:	de1ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     eac:	00140993          	addi	s3,s0,1
     eb0:	00048513          	mv	a0,s1
     eb4:	f99ff06f          	j	e4c <neorv32_uart0_printf+0x12c>

00000eb8 <neorv32_uart0_scan>:
     eb8:	fd010113          	addi	sp,sp,-48
     ebc:	02812423          	sw	s0,40(sp)
     ec0:	02912223          	sw	s1,36(sp)
     ec4:	01312e23          	sw	s3,28(sp)
     ec8:	01412c23          	sw	s4,24(sp)
     ecc:	01512a23          	sw	s5,20(sp)
     ed0:	01612823          	sw	s6,16(sp)
     ed4:	01712623          	sw	s7,12(sp)
     ed8:	01812423          	sw	s8,8(sp)
     edc:	02112623          	sw	ra,44(sp)
     ee0:	03212023          	sw	s2,32(sp)
     ee4:	00050413          	mv	s0,a0
     ee8:	00060993          	mv	s3,a2
     eec:	00000493          	li	s1,0
     ef0:	00800a93          	li	s5,8
     ef4:	00d00b13          	li	s6,13
     ef8:	05e00b93          	li	s7,94
     efc:	fff58a13          	addi	s4,a1,-1
     f00:	00002c37          	lui	s8,0x2
     f04:	d9dff0ef          	jal	ra,ca0 <neorv32_uart0_getc>
     f08:	00050913          	mv	s2,a0
     f0c:	03551063          	bne	a0,s5,f2c <neorv32_uart0_scan+0x74>
     f10:	fe048ae3          	beqz	s1,f04 <neorv32_uart0_scan+0x4c>
     f14:	00098663          	beqz	s3,f20 <neorv32_uart0_scan+0x68>
     f18:	c50c0513          	addi	a0,s8,-944 # 1c50 <symbols.0+0x14>
     f1c:	dadff0ef          	jal	ra,cc8 <neorv32_uart0_print>
     f20:	fff40413          	addi	s0,s0,-1
     f24:	fff48493          	addi	s1,s1,-1
     f28:	fddff06f          	j	f04 <neorv32_uart0_scan+0x4c>
     f2c:	03650663          	beq	a0,s6,f58 <neorv32_uart0_scan+0xa0>
     f30:	fe050793          	addi	a5,a0,-32
     f34:	0ff7f793          	andi	a5,a5,255
     f38:	fcfbe6e3          	bltu	s7,a5,f04 <neorv32_uart0_scan+0x4c>
     f3c:	fd44d4e3          	bge	s1,s4,f04 <neorv32_uart0_scan+0x4c>
     f40:	00098463          	beqz	s3,f48 <neorv32_uart0_scan+0x90>
     f44:	d45ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
     f48:	01240023          	sb	s2,0(s0)
     f4c:	00148493          	addi	s1,s1,1
     f50:	00140413          	addi	s0,s0,1
     f54:	fb1ff06f          	j	f04 <neorv32_uart0_scan+0x4c>
     f58:	02c12083          	lw	ra,44(sp)
     f5c:	00040023          	sb	zero,0(s0)
     f60:	02812403          	lw	s0,40(sp)
     f64:	02012903          	lw	s2,32(sp)
     f68:	01c12983          	lw	s3,28(sp)
     f6c:	01812a03          	lw	s4,24(sp)
     f70:	01412a83          	lw	s5,20(sp)
     f74:	01012b03          	lw	s6,16(sp)
     f78:	00c12b83          	lw	s7,12(sp)
     f7c:	00812c03          	lw	s8,8(sp)
     f80:	00048513          	mv	a0,s1
     f84:	02412483          	lw	s1,36(sp)
     f88:	03010113          	addi	sp,sp,48
     f8c:	00008067          	ret

00000f90 <__neorv32_rte_core>:
     f90:	fc010113          	addi	sp,sp,-64
     f94:	02112e23          	sw	ra,60(sp)
     f98:	02512c23          	sw	t0,56(sp)
     f9c:	02612a23          	sw	t1,52(sp)
     fa0:	02712823          	sw	t2,48(sp)
     fa4:	02a12623          	sw	a0,44(sp)
     fa8:	02b12423          	sw	a1,40(sp)
     fac:	02c12223          	sw	a2,36(sp)
     fb0:	02d12023          	sw	a3,32(sp)
     fb4:	00e12e23          	sw	a4,28(sp)
     fb8:	00f12c23          	sw	a5,24(sp)
     fbc:	01012a23          	sw	a6,20(sp)
     fc0:	01112823          	sw	a7,16(sp)
     fc4:	01c12623          	sw	t3,12(sp)
     fc8:	01d12423          	sw	t4,8(sp)
     fcc:	01e12223          	sw	t5,4(sp)
     fd0:	01f12023          	sw	t6,0(sp)
     fd4:	34102773          	csrr	a4,mepc
     fd8:	34071073          	csrw	mscratch,a4
     fdc:	342027f3          	csrr	a5,mcause
     fe0:	0807ca63          	bltz	a5,1074 <__neorv32_rte_core+0xe4>
     fe4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e060>
     fe8:	00300593          	li	a1,3
     fec:	0036f693          	andi	a3,a3,3
     ff0:	00270613          	addi	a2,a4,2
     ff4:	00b69463          	bne	a3,a1,ffc <__neorv32_rte_core+0x6c>
     ff8:	00470613          	addi	a2,a4,4
     ffc:	34161073          	csrw	mepc,a2
    1000:	00b00713          	li	a4,11
    1004:	04f77c63          	bgeu	a4,a5,105c <__neorv32_rte_core+0xcc>
    1008:	000017b7          	lui	a5,0x1
    100c:	20c78793          	addi	a5,a5,524 # 120c <__neorv32_rte_debug_exc_handler>
    1010:	000780e7          	jalr	a5
    1014:	03c12083          	lw	ra,60(sp)
    1018:	03812283          	lw	t0,56(sp)
    101c:	03412303          	lw	t1,52(sp)
    1020:	03012383          	lw	t2,48(sp)
    1024:	02c12503          	lw	a0,44(sp)
    1028:	02812583          	lw	a1,40(sp)
    102c:	02412603          	lw	a2,36(sp)
    1030:	02012683          	lw	a3,32(sp)
    1034:	01c12703          	lw	a4,28(sp)
    1038:	01812783          	lw	a5,24(sp)
    103c:	01412803          	lw	a6,20(sp)
    1040:	01012883          	lw	a7,16(sp)
    1044:	00c12e03          	lw	t3,12(sp)
    1048:	00812e83          	lw	t4,8(sp)
    104c:	00412f03          	lw	t5,4(sp)
    1050:	00012f83          	lw	t6,0(sp)
    1054:	04010113          	addi	sp,sp,64
    1058:	30200073          	mret
    105c:	00002737          	lui	a4,0x2
    1060:	00279793          	slli	a5,a5,0x2
    1064:	c7470713          	addi	a4,a4,-908 # 1c74 <symbols.0+0x14>
    1068:	00e787b3          	add	a5,a5,a4
    106c:	0007a783          	lw	a5,0(a5)
    1070:	00078067          	jr	a5
    1074:	80000737          	lui	a4,0x80000
    1078:	ffd74713          	xori	a4,a4,-3
    107c:	00e787b3          	add	a5,a5,a4
    1080:	01c00713          	li	a4,28
    1084:	f8f762e3          	bltu	a4,a5,1008 <__neorv32_rte_core+0x78>
    1088:	00002737          	lui	a4,0x2
    108c:	00279793          	slli	a5,a5,0x2
    1090:	ca470713          	addi	a4,a4,-860 # 1ca4 <symbols.0+0x44>
    1094:	00e787b3          	add	a5,a5,a4
    1098:	0007a783          	lw	a5,0(a5)
    109c:	00078067          	jr	a5
    10a0:	800007b7          	lui	a5,0x80000
    10a4:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
    10a8:	f69ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10ac:	800007b7          	lui	a5,0x80000
    10b0:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
    10b4:	f5dff06f          	j	1010 <__neorv32_rte_core+0x80>
    10b8:	800007b7          	lui	a5,0x80000
    10bc:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
    10c0:	f51ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10c4:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0xc>
    10c8:	f49ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10cc:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x10>
    10d0:	f41ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10d4:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x14>
    10d8:	f39ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10dc:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x18>
    10e0:	f31ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10e4:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x1c>
    10e8:	f29ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10ec:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x20>
    10f0:	f21ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10f4:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x24>
    10f8:	f19ff06f          	j	1010 <__neorv32_rte_core+0x80>
    10fc:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x28>
    1100:	f11ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1104:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x2c>
    1108:	f09ff06f          	j	1010 <__neorv32_rte_core+0x80>
    110c:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x30>
    1110:	f01ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1114:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x34>
    1118:	ef9ff06f          	j	1010 <__neorv32_rte_core+0x80>
    111c:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x38>
    1120:	ef1ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1124:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x3c>
    1128:	ee9ff06f          	j	1010 <__neorv32_rte_core+0x80>
    112c:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x40>
    1130:	ee1ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1134:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x44>
    1138:	ed9ff06f          	j	1010 <__neorv32_rte_core+0x80>
    113c:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x48>
    1140:	ed1ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1144:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x4c>
    1148:	ec9ff06f          	j	1010 <__neorv32_rte_core+0x80>
    114c:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x50>
    1150:	ec1ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1154:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x54>
    1158:	eb9ff06f          	j	1010 <__neorv32_rte_core+0x80>
    115c:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x58>
    1160:	eb1ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1164:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x5c>
    1168:	ea9ff06f          	j	1010 <__neorv32_rte_core+0x80>
    116c:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x60>
    1170:	ea1ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1174:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x64>
    1178:	e99ff06f          	j	1010 <__neorv32_rte_core+0x80>
    117c:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x68>
    1180:	e91ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1184:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x6c>
    1188:	e89ff06f          	j	1010 <__neorv32_rte_core+0x80>
    118c:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x70>
    1190:	e81ff06f          	j	1010 <__neorv32_rte_core+0x80>
    1194:	0000                	unimp
    1196:	0000                	unimp
    1198:	0000                	unimp
    119a:	0000                	unimp

0000119c <__neorv32_rte_print_hex_word>:
    119c:	fe010113          	addi	sp,sp,-32
    11a0:	01212823          	sw	s2,16(sp)
    11a4:	00050913          	mv	s2,a0
    11a8:	00002537          	lui	a0,0x2
    11ac:	00912a23          	sw	s1,20(sp)
    11b0:	91850513          	addi	a0,a0,-1768 # 1918 <__etext+0x178>
    11b4:	000024b7          	lui	s1,0x2
    11b8:	00812c23          	sw	s0,24(sp)
    11bc:	01312623          	sw	s3,12(sp)
    11c0:	00112e23          	sw	ra,28(sp)
    11c4:	01c00413          	li	s0,28
    11c8:	b01ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    11cc:	f9048493          	addi	s1,s1,-112 # 1f90 <hex_symbols.0>
    11d0:	ffc00993          	li	s3,-4
    11d4:	008957b3          	srl	a5,s2,s0
    11d8:	00f7f793          	andi	a5,a5,15
    11dc:	00f487b3          	add	a5,s1,a5
    11e0:	0007c503          	lbu	a0,0(a5)
    11e4:	ffc40413          	addi	s0,s0,-4
    11e8:	aa1ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
    11ec:	ff3414e3          	bne	s0,s3,11d4 <__neorv32_rte_print_hex_word+0x38>
    11f0:	01c12083          	lw	ra,28(sp)
    11f4:	01812403          	lw	s0,24(sp)
    11f8:	01412483          	lw	s1,20(sp)
    11fc:	01012903          	lw	s2,16(sp)
    1200:	00c12983          	lw	s3,12(sp)
    1204:	02010113          	addi	sp,sp,32
    1208:	00008067          	ret

0000120c <__neorv32_rte_debug_exc_handler>:
    120c:	ff010113          	addi	sp,sp,-16
    1210:	00112623          	sw	ra,12(sp)
    1214:	00812423          	sw	s0,8(sp)
    1218:	00912223          	sw	s1,4(sp)
    121c:	9b1ff0ef          	jal	ra,bcc <neorv32_uart0_available>
    1220:	1c050863          	beqz	a0,13f0 <__neorv32_rte_debug_exc_handler+0x1e4>
    1224:	00002537          	lui	a0,0x2
    1228:	d1850513          	addi	a0,a0,-744 # 1d18 <symbols.0+0xb8>
    122c:	a9dff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    1230:	34202473          	csrr	s0,mcause
    1234:	00900713          	li	a4,9
    1238:	00f47793          	andi	a5,s0,15
    123c:	03078493          	addi	s1,a5,48
    1240:	00f77463          	bgeu	a4,a5,1248 <__neorv32_rte_debug_exc_handler+0x3c>
    1244:	05778493          	addi	s1,a5,87
    1248:	00b00793          	li	a5,11
    124c:	0087ee63          	bltu	a5,s0,1268 <__neorv32_rte_debug_exc_handler+0x5c>
    1250:	00002737          	lui	a4,0x2
    1254:	00241793          	slli	a5,s0,0x2
    1258:	ed870713          	addi	a4,a4,-296 # 1ed8 <symbols.0+0x278>
    125c:	00e787b3          	add	a5,a5,a4
    1260:	0007a783          	lw	a5,0(a5)
    1264:	00078067          	jr	a5
    1268:	800007b7          	lui	a5,0x80000
    126c:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
    1270:	14e40e63          	beq	s0,a4,13cc <__neorv32_rte_debug_exc_handler+0x1c0>
    1274:	02876a63          	bltu	a4,s0,12a8 <__neorv32_rte_debug_exc_handler+0x9c>
    1278:	00378713          	addi	a4,a5,3
    127c:	12e40c63          	beq	s0,a4,13b4 <__neorv32_rte_debug_exc_handler+0x1a8>
    1280:	00778793          	addi	a5,a5,7
    1284:	12f40e63          	beq	s0,a5,13c0 <__neorv32_rte_debug_exc_handler+0x1b4>
    1288:	00002537          	lui	a0,0x2
    128c:	e7850513          	addi	a0,a0,-392 # 1e78 <symbols.0+0x218>
    1290:	a39ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    1294:	00040513          	mv	a0,s0
    1298:	f05ff0ef          	jal	ra,119c <__neorv32_rte_print_hex_word>
    129c:	00100793          	li	a5,1
    12a0:	08f40c63          	beq	s0,a5,1338 <__neorv32_rte_debug_exc_handler+0x12c>
    12a4:	0280006f          	j	12cc <__neorv32_rte_debug_exc_handler+0xc0>
    12a8:	ff07c793          	xori	a5,a5,-16
    12ac:	00f407b3          	add	a5,s0,a5
    12b0:	00f00713          	li	a4,15
    12b4:	fcf76ae3          	bltu	a4,a5,1288 <__neorv32_rte_debug_exc_handler+0x7c>
    12b8:	00002537          	lui	a0,0x2
    12bc:	e6850513          	addi	a0,a0,-408 # 1e68 <symbols.0+0x208>
    12c0:	a09ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    12c4:	00048513          	mv	a0,s1
    12c8:	9c1ff0ef          	jal	ra,c88 <neorv32_uart0_putc>
    12cc:	ffd47413          	andi	s0,s0,-3
    12d0:	00500793          	li	a5,5
    12d4:	06f40263          	beq	s0,a5,1338 <__neorv32_rte_debug_exc_handler+0x12c>
    12d8:	00002537          	lui	a0,0x2
    12dc:	ebc50513          	addi	a0,a0,-324 # 1ebc <symbols.0+0x25c>
    12e0:	9e9ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    12e4:	34002573          	csrr	a0,mscratch
    12e8:	eb5ff0ef          	jal	ra,119c <__neorv32_rte_print_hex_word>
    12ec:	00002537          	lui	a0,0x2
    12f0:	ec450513          	addi	a0,a0,-316 # 1ec4 <symbols.0+0x264>
    12f4:	9d5ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    12f8:	34302573          	csrr	a0,mtval
    12fc:	ea1ff0ef          	jal	ra,119c <__neorv32_rte_print_hex_word>
    1300:	00812403          	lw	s0,8(sp)
    1304:	00c12083          	lw	ra,12(sp)
    1308:	00412483          	lw	s1,4(sp)
    130c:	00002537          	lui	a0,0x2
    1310:	ed050513          	addi	a0,a0,-304 # 1ed0 <symbols.0+0x270>
    1314:	01010113          	addi	sp,sp,16
    1318:	9b1ff06f          	j	cc8 <neorv32_uart0_print>
    131c:	00002537          	lui	a0,0x2
    1320:	d2050513          	addi	a0,a0,-736 # 1d20 <symbols.0+0xc0>
    1324:	9a5ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    1328:	fb1ff06f          	j	12d8 <__neorv32_rte_debug_exc_handler+0xcc>
    132c:	00002537          	lui	a0,0x2
    1330:	d4050513          	addi	a0,a0,-704 # 1d40 <symbols.0+0xe0>
    1334:	995ff0ef          	jal	ra,cc8 <neorv32_uart0_print>
    1338:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
    133c:	0a07d463          	bgez	a5,13e4 <__neorv32_rte_debug_exc_handler+0x1d8>
    1340:	0017f793          	andi	a5,a5,1
    1344:	08078a63          	beqz	a5,13d8 <__neorv32_rte_debug_exc_handler+0x1cc>
    1348:	00002537          	lui	a0,0x2
    134c:	e9050513          	addi	a0,a0,-368 # 1e90 <symbols.0+0x230>
    1350:	fd5ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    1354:	00002537          	lui	a0,0x2
    1358:	d5c50513          	addi	a0,a0,-676 # 1d5c <symbols.0+0xfc>
    135c:	fc9ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    1360:	00002537          	lui	a0,0x2
    1364:	d7050513          	addi	a0,a0,-656 # 1d70 <symbols.0+0x110>
    1368:	fbdff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    136c:	00002537          	lui	a0,0x2
    1370:	d7c50513          	addi	a0,a0,-644 # 1d7c <symbols.0+0x11c>
    1374:	fb1ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    1378:	00002537          	lui	a0,0x2
    137c:	d9450513          	addi	a0,a0,-620 # 1d94 <symbols.0+0x134>
    1380:	fb5ff06f          	j	1334 <__neorv32_rte_debug_exc_handler+0x128>
    1384:	00002537          	lui	a0,0x2
    1388:	da850513          	addi	a0,a0,-600 # 1da8 <symbols.0+0x148>
    138c:	f99ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    1390:	00002537          	lui	a0,0x2
    1394:	dc450513          	addi	a0,a0,-572 # 1dc4 <symbols.0+0x164>
    1398:	f9dff06f          	j	1334 <__neorv32_rte_debug_exc_handler+0x128>
    139c:	00002537          	lui	a0,0x2
    13a0:	dd850513          	addi	a0,a0,-552 # 1dd8 <symbols.0+0x178>
    13a4:	f81ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13a8:	00002537          	lui	a0,0x2
    13ac:	df850513          	addi	a0,a0,-520 # 1df8 <symbols.0+0x198>
    13b0:	f75ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13b4:	00002537          	lui	a0,0x2
    13b8:	e1850513          	addi	a0,a0,-488 # 1e18 <symbols.0+0x1b8>
    13bc:	f69ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13c0:	00002537          	lui	a0,0x2
    13c4:	e3450513          	addi	a0,a0,-460 # 1e34 <symbols.0+0x1d4>
    13c8:	f5dff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13cc:	00002537          	lui	a0,0x2
    13d0:	e4c50513          	addi	a0,a0,-436 # 1e4c <symbols.0+0x1ec>
    13d4:	f51ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13d8:	00002537          	lui	a0,0x2
    13dc:	ea050513          	addi	a0,a0,-352 # 1ea0 <symbols.0+0x240>
    13e0:	f45ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13e4:	00002537          	lui	a0,0x2
    13e8:	eb050513          	addi	a0,a0,-336 # 1eb0 <symbols.0+0x250>
    13ec:	f39ff06f          	j	1324 <__neorv32_rte_debug_exc_handler+0x118>
    13f0:	00c12083          	lw	ra,12(sp)
    13f4:	00812403          	lw	s0,8(sp)
    13f8:	00412483          	lw	s1,4(sp)
    13fc:	01010113          	addi	sp,sp,16
    1400:	00008067          	ret

00001404 <neorv32_rte_exception_uninstall>:
    1404:	01f00793          	li	a5,31
    1408:	02a7e463          	bltu	a5,a0,1430 <neorv32_rte_exception_uninstall+0x2c>
    140c:	800007b7          	lui	a5,0x80000
    1410:	00478793          	addi	a5,a5,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
    1414:	00251513          	slli	a0,a0,0x2
    1418:	00a78533          	add	a0,a5,a0
    141c:	000017b7          	lui	a5,0x1
    1420:	20c78793          	addi	a5,a5,524 # 120c <__neorv32_rte_debug_exc_handler>
    1424:	00f52023          	sw	a5,0(a0)
    1428:	00000513          	li	a0,0
    142c:	00008067          	ret
    1430:	00100513          	li	a0,1
    1434:	00008067          	ret

00001438 <neorv32_rte_setup>:
    1438:	ff010113          	addi	sp,sp,-16
    143c:	000017b7          	lui	a5,0x1
    1440:	00112623          	sw	ra,12(sp)
    1444:	00812423          	sw	s0,8(sp)
    1448:	00912223          	sw	s1,4(sp)
    144c:	f9078793          	addi	a5,a5,-112 # f90 <__neorv32_rte_core>
    1450:	30579073          	csrw	mtvec,a5
    1454:	00000413          	li	s0,0
    1458:	01d00493          	li	s1,29
    145c:	00040513          	mv	a0,s0
    1460:	00140413          	addi	s0,s0,1
    1464:	0ff47413          	andi	s0,s0,255
    1468:	f9dff0ef          	jal	ra,1404 <neorv32_rte_exception_uninstall>
    146c:	fe9418e3          	bne	s0,s1,145c <neorv32_rte_setup+0x24>
    1470:	00c12083          	lw	ra,12(sp)
    1474:	00812403          	lw	s0,8(sp)
    1478:	00412483          	lw	s1,4(sp)
    147c:	01010113          	addi	sp,sp,16
    1480:	00008067          	ret

00001484 <neorv32_rte_check_isa>:
    1484:	30102673          	csrr	a2,misa
    1488:	400007b7          	lui	a5,0x40000
    148c:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe160>
    1490:	00f67733          	and	a4,a2,a5
    1494:	04f70463          	beq	a4,a5,14dc <neorv32_rte_check_isa+0x58>
    1498:	fe010113          	addi	sp,sp,-32
    149c:	00112e23          	sw	ra,28(sp)
    14a0:	02051463          	bnez	a0,14c8 <neorv32_rte_check_isa+0x44>
    14a4:	400005b7          	lui	a1,0x40000
    14a8:	00002537          	lui	a0,0x2
    14ac:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe160>
    14b0:	f0850513          	addi	a0,a0,-248 # 1f08 <symbols.0+0x2a8>
    14b4:	86dff0ef          	jal	ra,d20 <neorv32_uart0_printf>
    14b8:	01c12083          	lw	ra,28(sp)
    14bc:	00100513          	li	a0,1
    14c0:	02010113          	addi	sp,sp,32
    14c4:	00008067          	ret
    14c8:	00c12623          	sw	a2,12(sp)
    14cc:	f00ff0ef          	jal	ra,bcc <neorv32_uart0_available>
    14d0:	00c12603          	lw	a2,12(sp)
    14d4:	fc0508e3          	beqz	a0,14a4 <neorv32_rte_check_isa+0x20>
    14d8:	fe1ff06f          	j	14b8 <neorv32_rte_check_isa+0x34>
    14dc:	00000513          	li	a0,0
    14e0:	00008067          	ret

000014e4 <__divsi3>:
    14e4:	06054063          	bltz	a0,1544 <__umodsi3+0x10>
    14e8:	0605c663          	bltz	a1,1554 <__umodsi3+0x20>

000014ec <__udivsi3>:
    14ec:	00058613          	mv	a2,a1
    14f0:	00050593          	mv	a1,a0
    14f4:	fff00513          	li	a0,-1
    14f8:	02060c63          	beqz	a2,1530 <__udivsi3+0x44>
    14fc:	00100693          	li	a3,1
    1500:	00b67a63          	bgeu	a2,a1,1514 <__udivsi3+0x28>
    1504:	00c05863          	blez	a2,1514 <__udivsi3+0x28>
    1508:	00161613          	slli	a2,a2,0x1
    150c:	00169693          	slli	a3,a3,0x1
    1510:	feb66ae3          	bltu	a2,a1,1504 <__udivsi3+0x18>
    1514:	00000513          	li	a0,0
    1518:	00c5e663          	bltu	a1,a2,1524 <__udivsi3+0x38>
    151c:	40c585b3          	sub	a1,a1,a2
    1520:	00d56533          	or	a0,a0,a3
    1524:	0016d693          	srli	a3,a3,0x1
    1528:	00165613          	srli	a2,a2,0x1
    152c:	fe0696e3          	bnez	a3,1518 <__udivsi3+0x2c>
    1530:	00008067          	ret

00001534 <__umodsi3>:
    1534:	00008293          	mv	t0,ra
    1538:	fb5ff0ef          	jal	ra,14ec <__udivsi3>
    153c:	00058513          	mv	a0,a1
    1540:	00028067          	jr	t0
    1544:	40a00533          	neg	a0,a0
    1548:	00b04863          	bgtz	a1,1558 <__umodsi3+0x24>
    154c:	40b005b3          	neg	a1,a1
    1550:	f9dff06f          	j	14ec <__udivsi3>
    1554:	40b005b3          	neg	a1,a1
    1558:	00008293          	mv	t0,ra
    155c:	f91ff0ef          	jal	ra,14ec <__udivsi3>
    1560:	40a00533          	neg	a0,a0
    1564:	00028067          	jr	t0

00001568 <__modsi3>:
    1568:	00008293          	mv	t0,ra
    156c:	0005ca63          	bltz	a1,1580 <__modsi3+0x18>
    1570:	00054c63          	bltz	a0,1588 <__modsi3+0x20>
    1574:	f79ff0ef          	jal	ra,14ec <__udivsi3>
    1578:	00058513          	mv	a0,a1
    157c:	00028067          	jr	t0
    1580:	40b005b3          	neg	a1,a1
    1584:	fe0558e3          	bgez	a0,1574 <__modsi3+0xc>
    1588:	40a00533          	neg	a0,a0
    158c:	f61ff0ef          	jal	ra,14ec <__udivsi3>
    1590:	40b00533          	neg	a0,a1
    1594:	00028067          	jr	t0

00001598 <strcmp>:
    1598:	00b56733          	or	a4,a0,a1
    159c:	fff00393          	li	t2,-1
    15a0:	00377713          	andi	a4,a4,3
    15a4:	10071063          	bnez	a4,16a4 <strcmp+0x10c>
    15a8:	7f7f87b7          	lui	a5,0x7f7f8
    15ac:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7f5fdf>
    15b0:	00052603          	lw	a2,0(a0)
    15b4:	0005a683          	lw	a3,0(a1)
    15b8:	00f672b3          	and	t0,a2,a5
    15bc:	00f66333          	or	t1,a2,a5
    15c0:	00f282b3          	add	t0,t0,a5
    15c4:	0062e2b3          	or	t0,t0,t1
    15c8:	10729263          	bne	t0,t2,16cc <strcmp+0x134>
    15cc:	08d61663          	bne	a2,a3,1658 <strcmp+0xc0>
    15d0:	00452603          	lw	a2,4(a0)
    15d4:	0045a683          	lw	a3,4(a1)
    15d8:	00f672b3          	and	t0,a2,a5
    15dc:	00f66333          	or	t1,a2,a5
    15e0:	00f282b3          	add	t0,t0,a5
    15e4:	0062e2b3          	or	t0,t0,t1
    15e8:	0c729e63          	bne	t0,t2,16c4 <strcmp+0x12c>
    15ec:	06d61663          	bne	a2,a3,1658 <strcmp+0xc0>
    15f0:	00852603          	lw	a2,8(a0)
    15f4:	0085a683          	lw	a3,8(a1)
    15f8:	00f672b3          	and	t0,a2,a5
    15fc:	00f66333          	or	t1,a2,a5
    1600:	00f282b3          	add	t0,t0,a5
    1604:	0062e2b3          	or	t0,t0,t1
    1608:	0c729863          	bne	t0,t2,16d8 <strcmp+0x140>
    160c:	04d61663          	bne	a2,a3,1658 <strcmp+0xc0>
    1610:	00c52603          	lw	a2,12(a0)
    1614:	00c5a683          	lw	a3,12(a1)
    1618:	00f672b3          	and	t0,a2,a5
    161c:	00f66333          	or	t1,a2,a5
    1620:	00f282b3          	add	t0,t0,a5
    1624:	0062e2b3          	or	t0,t0,t1
    1628:	0c729263          	bne	t0,t2,16ec <strcmp+0x154>
    162c:	02d61663          	bne	a2,a3,1658 <strcmp+0xc0>
    1630:	01052603          	lw	a2,16(a0)
    1634:	0105a683          	lw	a3,16(a1)
    1638:	00f672b3          	and	t0,a2,a5
    163c:	00f66333          	or	t1,a2,a5
    1640:	00f282b3          	add	t0,t0,a5
    1644:	0062e2b3          	or	t0,t0,t1
    1648:	0a729c63          	bne	t0,t2,1700 <strcmp+0x168>
    164c:	01450513          	addi	a0,a0,20
    1650:	01458593          	addi	a1,a1,20
    1654:	f4d60ee3          	beq	a2,a3,15b0 <strcmp+0x18>
    1658:	01061713          	slli	a4,a2,0x10
    165c:	01069793          	slli	a5,a3,0x10
    1660:	00f71e63          	bne	a4,a5,167c <strcmp+0xe4>
    1664:	01065713          	srli	a4,a2,0x10
    1668:	0106d793          	srli	a5,a3,0x10
    166c:	40f70533          	sub	a0,a4,a5
    1670:	0ff57593          	andi	a1,a0,255
    1674:	02059063          	bnez	a1,1694 <strcmp+0xfc>
    1678:	00008067          	ret
    167c:	01075713          	srli	a4,a4,0x10
    1680:	0107d793          	srli	a5,a5,0x10
    1684:	40f70533          	sub	a0,a4,a5
    1688:	0ff57593          	andi	a1,a0,255
    168c:	00059463          	bnez	a1,1694 <strcmp+0xfc>
    1690:	00008067          	ret
    1694:	0ff77713          	andi	a4,a4,255
    1698:	0ff7f793          	andi	a5,a5,255
    169c:	40f70533          	sub	a0,a4,a5
    16a0:	00008067          	ret
    16a4:	00054603          	lbu	a2,0(a0)
    16a8:	0005c683          	lbu	a3,0(a1)
    16ac:	00150513          	addi	a0,a0,1
    16b0:	00158593          	addi	a1,a1,1
    16b4:	00d61463          	bne	a2,a3,16bc <strcmp+0x124>
    16b8:	fe0616e3          	bnez	a2,16a4 <strcmp+0x10c>
    16bc:	40d60533          	sub	a0,a2,a3
    16c0:	00008067          	ret
    16c4:	00450513          	addi	a0,a0,4
    16c8:	00458593          	addi	a1,a1,4
    16cc:	fcd61ce3          	bne	a2,a3,16a4 <strcmp+0x10c>
    16d0:	00000513          	li	a0,0
    16d4:	00008067          	ret
    16d8:	00850513          	addi	a0,a0,8
    16dc:	00858593          	addi	a1,a1,8
    16e0:	fcd612e3          	bne	a2,a3,16a4 <strcmp+0x10c>
    16e4:	00000513          	li	a0,0
    16e8:	00008067          	ret
    16ec:	00c50513          	addi	a0,a0,12
    16f0:	00c58593          	addi	a1,a1,12
    16f4:	fad618e3          	bne	a2,a3,16a4 <strcmp+0x10c>
    16f8:	00000513          	li	a0,0
    16fc:	00008067          	ret
    1700:	01050513          	addi	a0,a0,16
    1704:	01058593          	addi	a1,a1,16
    1708:	f8d61ee3          	bne	a2,a3,16a4 <strcmp+0x10c>
    170c:	00000513          	li	a0,0
    1710:	00008067          	ret

00001714 <strlen>:
    1714:	00357793          	andi	a5,a0,3
    1718:	00050713          	mv	a4,a0
    171c:	04079c63          	bnez	a5,1774 <strlen+0x60>
    1720:	7f7f86b7          	lui	a3,0x7f7f8
    1724:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7f5fdf>
    1728:	fff00593          	li	a1,-1
    172c:	00072603          	lw	a2,0(a4)
    1730:	00470713          	addi	a4,a4,4
    1734:	00d677b3          	and	a5,a2,a3
    1738:	00d787b3          	add	a5,a5,a3
    173c:	00c7e7b3          	or	a5,a5,a2
    1740:	00d7e7b3          	or	a5,a5,a3
    1744:	feb784e3          	beq	a5,a1,172c <strlen+0x18>
    1748:	ffc74683          	lbu	a3,-4(a4)
    174c:	ffd74603          	lbu	a2,-3(a4)
    1750:	ffe74783          	lbu	a5,-2(a4)
    1754:	40a70733          	sub	a4,a4,a0
    1758:	04068063          	beqz	a3,1798 <strlen+0x84>
    175c:	02060a63          	beqz	a2,1790 <strlen+0x7c>
    1760:	00f03533          	snez	a0,a5
    1764:	00e50533          	add	a0,a0,a4
    1768:	ffe50513          	addi	a0,a0,-2
    176c:	00008067          	ret
    1770:	fa0688e3          	beqz	a3,1720 <strlen+0xc>
    1774:	00074783          	lbu	a5,0(a4)
    1778:	00170713          	addi	a4,a4,1
    177c:	00377693          	andi	a3,a4,3
    1780:	fe0798e3          	bnez	a5,1770 <strlen+0x5c>
    1784:	40a70733          	sub	a4,a4,a0
    1788:	fff70513          	addi	a0,a4,-1
    178c:	00008067          	ret
    1790:	ffd70513          	addi	a0,a4,-3
    1794:	00008067          	ret
    1798:	ffc70513          	addi	a0,a4,-4
    179c:	00008067          	ret
