
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
      dc:	00002597          	auipc	a1,0x2
      e0:	bd458593          	addi	a1,a1,-1068 # 1cb0 <__crt0_copy_data_src_begin>
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
     19c:	01512223          	sw	s5,4(sp)
     1a0:	01612023          	sw	s6,0(sp)
     1a4:	44c000ef          	jal	ra,5f0 <neorv32_uart0_available>
     1a8:	04050263          	beqz	a0,1ec <main+0x6c>
     1ac:	3d1000ef          	jal	ra,d7c <neorv32_rte_setup>
     1b0:	00005537          	lui	a0,0x5
     1b4:	00000613          	li	a2,0
     1b8:	00000593          	li	a1,0
     1bc:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x2e50>
     1c0:	440000ef          	jal	ra,600 <neorv32_uart0_setup>
     1c4:	00000513          	li	a0,0
     1c8:	401000ef          	jal	ra,dc8 <neorv32_rte_check_isa>
     1cc:	00001537          	lui	a0,0x1
     1d0:	7ac50513          	addi	a0,a0,1964 # 17ac <__etext+0xfc>
     1d4:	564000ef          	jal	ra,738 <neorv32_uart0_printf>
     1d8:	451000ef          	jal	ra,e28 <neorv32_trng_available>
     1dc:	02051e63          	bnez	a0,218 <main+0x98>
     1e0:	00001537          	lui	a0,0x1
     1e4:	7c450513          	addi	a0,a0,1988 # 17c4 <__etext+0x114>
     1e8:	550000ef          	jal	ra,738 <neorv32_uart0_printf>
     1ec:	01c12083          	lw	ra,28(sp)
     1f0:	01812403          	lw	s0,24(sp)
     1f4:	01412483          	lw	s1,20(sp)
     1f8:	01012903          	lw	s2,16(sp)
     1fc:	00c12983          	lw	s3,12(sp)
     200:	00812a03          	lw	s4,8(sp)
     204:	00412a83          	lw	s5,4(sp)
     208:	00012b03          	lw	s6,0(sp)
     20c:	00100513          	li	a0,1
     210:	02010113          	addi	sp,sp,32
     214:	00008067          	ret
     218:	421000ef          	jal	ra,e38 <neorv32_trng_enable>
     21c:	00001937          	lui	s2,0x1
     220:	000029b7          	lui	s3,0x2
     224:	00001a37          	lui	s4,0x1
     228:	06e00a93          	li	s5,110
     22c:	06800b13          	li	s6,104
     230:	000024b7          	lui	s1,0x2
     234:	7dc90513          	addi	a0,s2,2012 # 17dc <__etext+0x12c>
     238:	500000ef          	jal	ra,738 <neorv32_uart0_printf>
     23c:	84498513          	addi	a0,s3,-1980 # 1844 <__etext+0x194>
     240:	4f8000ef          	jal	ra,738 <neorv32_uart0_printf>
     244:	480000ef          	jal	ra,6c4 <neorv32_uart0_getc>
     248:	00050413          	mv	s0,a0
     24c:	460000ef          	jal	ra,6ac <neorv32_uart0_putc>
     250:	6bca0513          	addi	a0,s4,1724 # 16bc <__etext+0xc>
     254:	4e4000ef          	jal	ra,738 <neorv32_uart0_printf>
     258:	01541663          	bne	s0,s5,264 <main+0xe4>
     25c:	020000ef          	jal	ra,27c <print_random_data>
     260:	fd5ff06f          	j	234 <main+0xb4>
     264:	01641663          	bne	s0,s6,270 <main+0xf0>
     268:	084000ef          	jal	ra,2ec <generate_histogram>
     26c:	fc9ff06f          	j	234 <main+0xb4>
     270:	84c48513          	addi	a0,s1,-1972 # 184c <__etext+0x19c>
     274:	4c4000ef          	jal	ra,738 <neorv32_uart0_printf>
     278:	fbdff06f          	j	234 <main+0xb4>

0000027c <print_random_data>:
     27c:	fe010113          	addi	sp,sp,-32
     280:	00812c23          	sw	s0,24(sp)
     284:	00912a23          	sw	s1,20(sp)
     288:	00112e23          	sw	ra,28(sp)
     28c:	00000413          	li	s0,0
     290:	000014b7          	lui	s1,0x1
     294:	00f10513          	addi	a0,sp,15
     298:	3d1000ef          	jal	ra,e68 <neorv32_trng_get>
     29c:	02050a63          	beqz	a0,2d0 <print_random_data+0x54>
     2a0:	00001537          	lui	a0,0x1
     2a4:	6b050513          	addi	a0,a0,1712 # 16b0 <__etext>
     2a8:	490000ef          	jal	ra,738 <neorv32_uart0_printf>
     2ac:	00001537          	lui	a0,0x1
     2b0:	00040593          	mv	a1,s0
     2b4:	6c450513          	addi	a0,a0,1732 # 16c4 <__etext+0x14>
     2b8:	480000ef          	jal	ra,738 <neorv32_uart0_printf>
     2bc:	01c12083          	lw	ra,28(sp)
     2c0:	01812403          	lw	s0,24(sp)
     2c4:	01412483          	lw	s1,20(sp)
     2c8:	02010113          	addi	sp,sp,32
     2cc:	00008067          	ret
     2d0:	00f14583          	lbu	a1,15(sp)
     2d4:	6c048513          	addi	a0,s1,1728 # 16c0 <__etext+0x10>
     2d8:	00140413          	addi	s0,s0,1
     2dc:	45c000ef          	jal	ra,738 <neorv32_uart0_printf>
     2e0:	3f4000ef          	jal	ra,6d4 <neorv32_uart0_char_received>
     2e4:	fa0508e3          	beqz	a0,294 <print_random_data+0x18>
     2e8:	fc5ff06f          	j	2ac <print_random_data+0x30>

000002ec <generate_histogram>:
     2ec:	00001537          	lui	a0,0x1
     2f0:	bd010113          	addi	sp,sp,-1072
     2f4:	6dc50513          	addi	a0,a0,1756 # 16dc <__etext+0x2c>
     2f8:	42112623          	sw	ra,1068(sp)
     2fc:	42812423          	sw	s0,1064(sp)
     300:	42912223          	sw	s1,1060(sp)
     304:	43212023          	sw	s2,1056(sp)
     308:	41312e23          	sw	s3,1052(sp)
     30c:	41412c23          	sw	s4,1048(sp)
     310:	41512a23          	sw	s5,1044(sp)
     314:	41612823          	sw	s6,1040(sp)
     318:	420000ef          	jal	ra,738 <neorv32_uart0_printf>
     31c:	3b8000ef          	jal	ra,6d4 <neorv32_uart0_char_received>
     320:	fe050ee3          	beqz	a0,31c <generate_histogram+0x30>
     324:	00001537          	lui	a0,0x1
     328:	6f850513          	addi	a0,a0,1784 # 16f8 <__etext+0x48>
     32c:	40c000ef          	jal	ra,738 <neorv32_uart0_printf>
     330:	40000613          	li	a2,1024
     334:	00000593          	li	a1,0
     338:	01010513          	addi	a0,sp,16
     33c:	298010ef          	jal	ra,15d4 <memset>
     340:	00000913          	li	s2,0
     344:	80000437          	lui	s0,0x80000
     348:	00f10513          	addi	a0,sp,15
     34c:	31d000ef          	jal	ra,e68 <neorv32_trng_get>
     350:	00f14783          	lbu	a5,15(sp)
     354:	41010713          	addi	a4,sp,1040
     358:	00190913          	addi	s2,s2,1
     35c:	00279793          	slli	a5,a5,0x2
     360:	00f707b3          	add	a5,a4,a5
     364:	c007a703          	lw	a4,-1024(a5)
     368:	00170713          	addi	a4,a4,1
     36c:	c0e7a023          	sw	a4,-1024(a5)
     370:	12050063          	beqz	a0,490 <generate_histogram+0x1a4>
     374:	00001537          	lui	a0,0x1
     378:	6b050513          	addi	a0,a0,1712 # 16b0 <__etext>
     37c:	3bc000ef          	jal	ra,738 <neorv32_uart0_printf>
     380:	00001537          	lui	a0,0x1
     384:	71c50513          	addi	a0,a0,1820 # 171c <__etext+0x6c>
     388:	01010413          	addi	s0,sp,16
     38c:	3ac000ef          	jal	ra,738 <neorv32_uart0_printf>
     390:	00040993          	mv	s3,s0
     394:	00000493          	li	s1,0
     398:	00001ab7          	lui	s5,0x1
     39c:	10000a13          	li	s4,256
     3a0:	0009a603          	lw	a2,0(s3)
     3a4:	00048593          	mv	a1,s1
     3a8:	74ca8513          	addi	a0,s5,1868 # 174c <__etext+0x9c>
     3ac:	00148493          	addi	s1,s1,1
     3b0:	388000ef          	jal	ra,738 <neorv32_uart0_printf>
     3b4:	00498993          	addi	s3,s3,4
     3b8:	ff4494e3          	bne	s1,s4,3a0 <generate_histogram+0xb4>
     3bc:	00001537          	lui	a0,0x1
     3c0:	00090593          	mv	a1,s2
     3c4:	75450513          	addi	a0,a0,1876 # 1754 <__etext+0xa4>
     3c8:	370000ef          	jal	ra,738 <neorv32_uart0_printf>
     3cc:	00000993          	li	s3,0
     3d0:	00000a93          	li	s5,0
     3d4:	00000a13          	li	s4,0
     3d8:	00000493          	li	s1,0
     3dc:	10000b13          	li	s6,256
     3e0:	00042503          	lw	a0,0(s0) # 80000000 <__ctr0_io_space_begin+0x80000200>
     3e4:	00098613          	mv	a2,s3
     3e8:	000a8693          	mv	a3,s5
     3ec:	00000593          	li	a1,0
     3f0:	0a0010ef          	jal	ra,1490 <__muldi3>
     3f4:	00aa0533          	add	a0,s4,a0
     3f8:	014537b3          	sltu	a5,a0,s4
     3fc:	00b484b3          	add	s1,s1,a1
     400:	009784b3          	add	s1,a5,s1
     404:	00198793          	addi	a5,s3,1
     408:	0137b733          	sltu	a4,a5,s3
     40c:	00050a13          	mv	s4,a0
     410:	00440413          	addi	s0,s0,4
     414:	00078993          	mv	s3,a5
     418:	01570ab3          	add	s5,a4,s5
     41c:	fd6792e3          	bne	a5,s6,3e0 <generate_histogram+0xf4>
     420:	fc0a90e3          	bnez	s5,3e0 <generate_histogram+0xf4>
     424:	00090613          	mv	a2,s2
     428:	00000693          	li	a3,0
     42c:	00048593          	mv	a1,s1
     430:	265000ef          	jal	ra,e94 <__udivdi3>
     434:	00050593          	mv	a1,a0
     438:	00050413          	mv	s0,a0
     43c:	00001537          	lui	a0,0x1
     440:	76450513          	addi	a0,a0,1892 # 1764 <__etext+0xb4>
     444:	2f4000ef          	jal	ra,738 <neorv32_uart0_printf>
     448:	0ff47413          	andi	s0,s0,255
     44c:	07f00793          	li	a5,127
     450:	01b00613          	li	a2,27
     454:	01b00593          	li	a1,27
     458:	04f41463          	bne	s0,a5,4a0 <generate_histogram+0x1b4>
     45c:	00001537          	lui	a0,0x1
     460:	77850513          	addi	a0,a0,1912 # 1778 <__etext+0xc8>
     464:	2d4000ef          	jal	ra,738 <neorv32_uart0_printf>
     468:	42c12083          	lw	ra,1068(sp)
     46c:	42812403          	lw	s0,1064(sp)
     470:	42412483          	lw	s1,1060(sp)
     474:	42012903          	lw	s2,1056(sp)
     478:	41c12983          	lw	s3,1052(sp)
     47c:	41812a03          	lw	s4,1048(sp)
     480:	41412a83          	lw	s5,1044(sp)
     484:	41012b03          	lw	s6,1040(sp)
     488:	43010113          	addi	sp,sp,1072
     48c:	00008067          	ret
     490:	244000ef          	jal	ra,6d4 <neorv32_uart0_char_received>
     494:	ee0516e3          	bnez	a0,380 <generate_histogram+0x94>
     498:	ea8918e3          	bne	s2,s0,348 <generate_histogram+0x5c>
     49c:	ee5ff06f          	j	380 <generate_histogram+0x94>
     4a0:	00001537          	lui	a0,0x1
     4a4:	79050513          	addi	a0,a0,1936 # 1790 <__etext+0xe0>
     4a8:	fbdff06f          	j	464 <generate_histogram+0x178>

000004ac <__neorv32_uart_itoa>:
     4ac:	fd010113          	addi	sp,sp,-48
     4b0:	02812423          	sw	s0,40(sp)
     4b4:	02912223          	sw	s1,36(sp)
     4b8:	03212023          	sw	s2,32(sp)
     4bc:	01312e23          	sw	s3,28(sp)
     4c0:	01412c23          	sw	s4,24(sp)
     4c4:	02112623          	sw	ra,44(sp)
     4c8:	01512a23          	sw	s5,20(sp)
     4cc:	00002a37          	lui	s4,0x2
     4d0:	00050493          	mv	s1,a0
     4d4:	00058413          	mv	s0,a1
     4d8:	00058523          	sb	zero,10(a1)
     4dc:	00000993          	li	s3,0
     4e0:	00410913          	addi	s2,sp,4
     4e4:	860a0a13          	addi	s4,s4,-1952 # 1860 <numbers.1>
     4e8:	00a00593          	li	a1,10
     4ec:	00048513          	mv	a0,s1
     4f0:	080010ef          	jal	ra,1570 <__umodsi3>
     4f4:	00aa0533          	add	a0,s4,a0
     4f8:	00054783          	lbu	a5,0(a0)
     4fc:	01390ab3          	add	s5,s2,s3
     500:	00048513          	mv	a0,s1
     504:	00fa8023          	sb	a5,0(s5)
     508:	00a00593          	li	a1,10
     50c:	01c010ef          	jal	ra,1528 <__udivsi3>
     510:	00198993          	addi	s3,s3,1
     514:	00a00793          	li	a5,10
     518:	00050493          	mv	s1,a0
     51c:	fcf996e3          	bne	s3,a5,4e8 <__neorv32_uart_itoa+0x3c>
     520:	00090693          	mv	a3,s2
     524:	00900713          	li	a4,9
     528:	03000613          	li	a2,48
     52c:	0096c583          	lbu	a1,9(a3)
     530:	00070793          	mv	a5,a4
     534:	fff70713          	addi	a4,a4,-1
     538:	01071713          	slli	a4,a4,0x10
     53c:	01075713          	srli	a4,a4,0x10
     540:	00c59a63          	bne	a1,a2,554 <__neorv32_uart_itoa+0xa8>
     544:	000684a3          	sb	zero,9(a3)
     548:	fff68693          	addi	a3,a3,-1
     54c:	fe0710e3          	bnez	a4,52c <__neorv32_uart_itoa+0x80>
     550:	00000793          	li	a5,0
     554:	00f907b3          	add	a5,s2,a5
     558:	00000593          	li	a1,0
     55c:	0007c703          	lbu	a4,0(a5)
     560:	00070c63          	beqz	a4,578 <__neorv32_uart_itoa+0xcc>
     564:	00158693          	addi	a3,a1,1
     568:	00b405b3          	add	a1,s0,a1
     56c:	00e58023          	sb	a4,0(a1)
     570:	01069593          	slli	a1,a3,0x10
     574:	0105d593          	srli	a1,a1,0x10
     578:	fff78713          	addi	a4,a5,-1
     57c:	02f91863          	bne	s2,a5,5ac <__neorv32_uart_itoa+0x100>
     580:	00b40433          	add	s0,s0,a1
     584:	00040023          	sb	zero,0(s0)
     588:	02c12083          	lw	ra,44(sp)
     58c:	02812403          	lw	s0,40(sp)
     590:	02412483          	lw	s1,36(sp)
     594:	02012903          	lw	s2,32(sp)
     598:	01c12983          	lw	s3,28(sp)
     59c:	01812a03          	lw	s4,24(sp)
     5a0:	01412a83          	lw	s5,20(sp)
     5a4:	03010113          	addi	sp,sp,48
     5a8:	00008067          	ret
     5ac:	00070793          	mv	a5,a4
     5b0:	fadff06f          	j	55c <__neorv32_uart_itoa+0xb0>

000005b4 <__neorv32_uart_tohex>:
     5b4:	00002637          	lui	a2,0x2
     5b8:	00758693          	addi	a3,a1,7
     5bc:	00000713          	li	a4,0
     5c0:	86c60613          	addi	a2,a2,-1940 # 186c <symbols.0>
     5c4:	02000813          	li	a6,32
     5c8:	00e557b3          	srl	a5,a0,a4
     5cc:	00f7f793          	andi	a5,a5,15
     5d0:	00f607b3          	add	a5,a2,a5
     5d4:	0007c783          	lbu	a5,0(a5)
     5d8:	00470713          	addi	a4,a4,4
     5dc:	fff68693          	addi	a3,a3,-1
     5e0:	00f680a3          	sb	a5,1(a3)
     5e4:	ff0712e3          	bne	a4,a6,5c8 <__neorv32_uart_tohex+0x14>
     5e8:	00058423          	sb	zero,8(a1)
     5ec:	00008067          	ret

000005f0 <neorv32_uart0_available>:
     5f0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     5f4:	01255513          	srli	a0,a0,0x12
     5f8:	00157513          	andi	a0,a0,1
     5fc:	00008067          	ret

00000600 <neorv32_uart0_setup>:
     600:	ff010113          	addi	sp,sp,-16
     604:	00812423          	sw	s0,8(sp)
     608:	00912223          	sw	s1,4(sp)
     60c:	00112623          	sw	ra,12(sp)
     610:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     614:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     618:	00058413          	mv	s0,a1
     61c:	00151593          	slli	a1,a0,0x1
     620:	00078513          	mv	a0,a5
     624:	00060493          	mv	s1,a2
     628:	701000ef          	jal	ra,1528 <__udivsi3>
     62c:	01051513          	slli	a0,a0,0x10
     630:	000017b7          	lui	a5,0x1
     634:	01055513          	srli	a0,a0,0x10
     638:	00000713          	li	a4,0
     63c:	ffe78793          	addi	a5,a5,-2 # ffe <__udivdi3+0x16a>
     640:	04a7e463          	bltu	a5,a0,688 <neorv32_uart0_setup+0x88>
     644:	0034f793          	andi	a5,s1,3
     648:	00347413          	andi	s0,s0,3
     64c:	fff50513          	addi	a0,a0,-1
     650:	01479793          	slli	a5,a5,0x14
     654:	01641413          	slli	s0,s0,0x16
     658:	00f567b3          	or	a5,a0,a5
     65c:	0087e7b3          	or	a5,a5,s0
     660:	01871713          	slli	a4,a4,0x18
     664:	00c12083          	lw	ra,12(sp)
     668:	00812403          	lw	s0,8(sp)
     66c:	00e7e7b3          	or	a5,a5,a4
     670:	10000737          	lui	a4,0x10000
     674:	00e7e7b3          	or	a5,a5,a4
     678:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     67c:	00412483          	lw	s1,4(sp)
     680:	01010113          	addi	sp,sp,16
     684:	00008067          	ret
     688:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe34e>
     68c:	0fd6f693          	andi	a3,a3,253
     690:	00069a63          	bnez	a3,6a4 <neorv32_uart0_setup+0xa4>
     694:	00355513          	srli	a0,a0,0x3
     698:	00170713          	addi	a4,a4,1
     69c:	0ff77713          	andi	a4,a4,255
     6a0:	fa1ff06f          	j	640 <neorv32_uart0_setup+0x40>
     6a4:	00155513          	srli	a0,a0,0x1
     6a8:	ff1ff06f          	j	698 <neorv32_uart0_setup+0x98>

000006ac <neorv32_uart0_putc>:
     6ac:	00040737          	lui	a4,0x40
     6b0:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     6b4:	00e7f7b3          	and	a5,a5,a4
     6b8:	fe079ce3          	bnez	a5,6b0 <neorv32_uart0_putc+0x4>
     6bc:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     6c0:	00008067          	ret

000006c4 <neorv32_uart0_getc>:
     6c4:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     6c8:	fe055ee3          	bgez	a0,6c4 <neorv32_uart0_getc>
     6cc:	0ff57513          	andi	a0,a0,255
     6d0:	00008067          	ret

000006d4 <neorv32_uart0_char_received>:
     6d4:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     6d8:	01f55513          	srli	a0,a0,0x1f
     6dc:	00008067          	ret

000006e0 <neorv32_uart0_print>:
     6e0:	ff010113          	addi	sp,sp,-16
     6e4:	00812423          	sw	s0,8(sp)
     6e8:	01212023          	sw	s2,0(sp)
     6ec:	00112623          	sw	ra,12(sp)
     6f0:	00912223          	sw	s1,4(sp)
     6f4:	00050413          	mv	s0,a0
     6f8:	00a00913          	li	s2,10
     6fc:	00044483          	lbu	s1,0(s0)
     700:	00140413          	addi	s0,s0,1
     704:	00049e63          	bnez	s1,720 <neorv32_uart0_print+0x40>
     708:	00c12083          	lw	ra,12(sp)
     70c:	00812403          	lw	s0,8(sp)
     710:	00412483          	lw	s1,4(sp)
     714:	00012903          	lw	s2,0(sp)
     718:	01010113          	addi	sp,sp,16
     71c:	00008067          	ret
     720:	01249663          	bne	s1,s2,72c <neorv32_uart0_print+0x4c>
     724:	00d00513          	li	a0,13
     728:	f85ff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     72c:	00048513          	mv	a0,s1
     730:	f7dff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     734:	fc9ff06f          	j	6fc <neorv32_uart0_print+0x1c>

00000738 <neorv32_uart0_printf>:
     738:	fa010113          	addi	sp,sp,-96
     73c:	04f12a23          	sw	a5,84(sp)
     740:	04410793          	addi	a5,sp,68
     744:	02812c23          	sw	s0,56(sp)
     748:	03212823          	sw	s2,48(sp)
     74c:	03412423          	sw	s4,40(sp)
     750:	03512223          	sw	s5,36(sp)
     754:	03612023          	sw	s6,32(sp)
     758:	01712e23          	sw	s7,28(sp)
     75c:	01812c23          	sw	s8,24(sp)
     760:	01912a23          	sw	s9,20(sp)
     764:	02112e23          	sw	ra,60(sp)
     768:	02912a23          	sw	s1,52(sp)
     76c:	03312623          	sw	s3,44(sp)
     770:	00050413          	mv	s0,a0
     774:	04b12223          	sw	a1,68(sp)
     778:	04c12423          	sw	a2,72(sp)
     77c:	04d12623          	sw	a3,76(sp)
     780:	04e12823          	sw	a4,80(sp)
     784:	05012c23          	sw	a6,88(sp)
     788:	05112e23          	sw	a7,92(sp)
     78c:	00f12023          	sw	a5,0(sp)
     790:	02500a13          	li	s4,37
     794:	00a00a93          	li	s5,10
     798:	07300913          	li	s2,115
     79c:	07500b13          	li	s6,117
     7a0:	07800b93          	li	s7,120
     7a4:	06300c13          	li	s8,99
     7a8:	06900c93          	li	s9,105
     7ac:	00044483          	lbu	s1,0(s0)
     7b0:	02049c63          	bnez	s1,7e8 <neorv32_uart0_printf+0xb0>
     7b4:	03c12083          	lw	ra,60(sp)
     7b8:	03812403          	lw	s0,56(sp)
     7bc:	03412483          	lw	s1,52(sp)
     7c0:	03012903          	lw	s2,48(sp)
     7c4:	02c12983          	lw	s3,44(sp)
     7c8:	02812a03          	lw	s4,40(sp)
     7cc:	02412a83          	lw	s5,36(sp)
     7d0:	02012b03          	lw	s6,32(sp)
     7d4:	01c12b83          	lw	s7,28(sp)
     7d8:	01812c03          	lw	s8,24(sp)
     7dc:	01412c83          	lw	s9,20(sp)
     7e0:	06010113          	addi	sp,sp,96
     7e4:	00008067          	ret
     7e8:	0d449863          	bne	s1,s4,8b8 <neorv32_uart0_printf+0x180>
     7ec:	00240993          	addi	s3,s0,2
     7f0:	00144403          	lbu	s0,1(s0)
     7f4:	05240263          	beq	s0,s2,838 <neorv32_uart0_printf+0x100>
     7f8:	00896e63          	bltu	s2,s0,814 <neorv32_uart0_printf+0xdc>
     7fc:	05840c63          	beq	s0,s8,854 <neorv32_uart0_printf+0x11c>
     800:	07940663          	beq	s0,s9,86c <neorv32_uart0_printf+0x134>
     804:	02500513          	li	a0,37
     808:	ea5ff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     80c:	00040513          	mv	a0,s0
     810:	0540006f          	j	864 <neorv32_uart0_printf+0x12c>
     814:	09640663          	beq	s0,s6,8a0 <neorv32_uart0_printf+0x168>
     818:	ff7416e3          	bne	s0,s7,804 <neorv32_uart0_printf+0xcc>
     81c:	00012783          	lw	a5,0(sp)
     820:	00410593          	addi	a1,sp,4
     824:	0007a503          	lw	a0,0(a5)
     828:	00478713          	addi	a4,a5,4
     82c:	00e12023          	sw	a4,0(sp)
     830:	d85ff0ef          	jal	ra,5b4 <__neorv32_uart_tohex>
     834:	0640006f          	j	898 <neorv32_uart0_printf+0x160>
     838:	00012783          	lw	a5,0(sp)
     83c:	0007a503          	lw	a0,0(a5)
     840:	00478713          	addi	a4,a5,4
     844:	00e12023          	sw	a4,0(sp)
     848:	e99ff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     84c:	00098413          	mv	s0,s3
     850:	f5dff06f          	j	7ac <neorv32_uart0_printf+0x74>
     854:	00012783          	lw	a5,0(sp)
     858:	0007c503          	lbu	a0,0(a5)
     85c:	00478713          	addi	a4,a5,4
     860:	00e12023          	sw	a4,0(sp)
     864:	e49ff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     868:	fe5ff06f          	j	84c <neorv32_uart0_printf+0x114>
     86c:	00012783          	lw	a5,0(sp)
     870:	0007a403          	lw	s0,0(a5)
     874:	00478713          	addi	a4,a5,4
     878:	00e12023          	sw	a4,0(sp)
     87c:	00045863          	bgez	s0,88c <neorv32_uart0_printf+0x154>
     880:	02d00513          	li	a0,45
     884:	40800433          	neg	s0,s0
     888:	e25ff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     88c:	00410593          	addi	a1,sp,4
     890:	00040513          	mv	a0,s0
     894:	c19ff0ef          	jal	ra,4ac <__neorv32_uart_itoa>
     898:	00410513          	addi	a0,sp,4
     89c:	fadff06f          	j	848 <neorv32_uart0_printf+0x110>
     8a0:	00012783          	lw	a5,0(sp)
     8a4:	00410593          	addi	a1,sp,4
     8a8:	00478713          	addi	a4,a5,4
     8ac:	0007a503          	lw	a0,0(a5)
     8b0:	00e12023          	sw	a4,0(sp)
     8b4:	fe1ff06f          	j	894 <neorv32_uart0_printf+0x15c>
     8b8:	01549663          	bne	s1,s5,8c4 <neorv32_uart0_printf+0x18c>
     8bc:	00d00513          	li	a0,13
     8c0:	dedff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     8c4:	00140993          	addi	s3,s0,1
     8c8:	00048513          	mv	a0,s1
     8cc:	f99ff06f          	j	864 <neorv32_uart0_printf+0x12c>

000008d0 <__neorv32_rte_core>:
     8d0:	fc010113          	addi	sp,sp,-64
     8d4:	02112e23          	sw	ra,60(sp)
     8d8:	02512c23          	sw	t0,56(sp)
     8dc:	02612a23          	sw	t1,52(sp)
     8e0:	02712823          	sw	t2,48(sp)
     8e4:	02a12623          	sw	a0,44(sp)
     8e8:	02b12423          	sw	a1,40(sp)
     8ec:	02c12223          	sw	a2,36(sp)
     8f0:	02d12023          	sw	a3,32(sp)
     8f4:	00e12e23          	sw	a4,28(sp)
     8f8:	00f12c23          	sw	a5,24(sp)
     8fc:	01012a23          	sw	a6,20(sp)
     900:	01112823          	sw	a7,16(sp)
     904:	01c12623          	sw	t3,12(sp)
     908:	01d12423          	sw	t4,8(sp)
     90c:	01e12223          	sw	t5,4(sp)
     910:	01f12023          	sw	t6,0(sp)
     914:	34102773          	csrr	a4,mepc
     918:	34071073          	csrw	mscratch,a4
     91c:	342027f3          	csrr	a5,mcause
     920:	0807ca63          	bltz	a5,9b4 <__neorv32_rte_core+0xe4>
     924:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e350>
     928:	00300593          	li	a1,3
     92c:	0036f693          	andi	a3,a3,3
     930:	00270613          	addi	a2,a4,2
     934:	00b69463          	bne	a3,a1,93c <__neorv32_rte_core+0x6c>
     938:	00470613          	addi	a2,a4,4
     93c:	34161073          	csrw	mepc,a2
     940:	00b00713          	li	a4,11
     944:	04f77c63          	bgeu	a4,a5,99c <__neorv32_rte_core+0xcc>
     948:	000017b7          	lui	a5,0x1
     94c:	b5078793          	addi	a5,a5,-1200 # b50 <__neorv32_rte_debug_exc_handler>
     950:	000780e7          	jalr	a5
     954:	03c12083          	lw	ra,60(sp)
     958:	03812283          	lw	t0,56(sp)
     95c:	03412303          	lw	t1,52(sp)
     960:	03012383          	lw	t2,48(sp)
     964:	02c12503          	lw	a0,44(sp)
     968:	02812583          	lw	a1,40(sp)
     96c:	02412603          	lw	a2,36(sp)
     970:	02012683          	lw	a3,32(sp)
     974:	01c12703          	lw	a4,28(sp)
     978:	01812783          	lw	a5,24(sp)
     97c:	01412803          	lw	a6,20(sp)
     980:	01012883          	lw	a7,16(sp)
     984:	00c12e03          	lw	t3,12(sp)
     988:	00812e83          	lw	t4,8(sp)
     98c:	00412f03          	lw	t5,4(sp)
     990:	00012f83          	lw	t6,0(sp)
     994:	04010113          	addi	sp,sp,64
     998:	30200073          	mret
     99c:	00002737          	lui	a4,0x2
     9a0:	00279793          	slli	a5,a5,0x2
     9a4:	88070713          	addi	a4,a4,-1920 # 1880 <symbols.0+0x14>
     9a8:	00e787b3          	add	a5,a5,a4
     9ac:	0007a783          	lw	a5,0(a5)
     9b0:	00078067          	jr	a5
     9b4:	80000737          	lui	a4,0x80000
     9b8:	ffd74713          	xori	a4,a4,-3
     9bc:	00e787b3          	add	a5,a5,a4
     9c0:	01c00713          	li	a4,28
     9c4:	f8f762e3          	bltu	a4,a5,948 <__neorv32_rte_core+0x78>
     9c8:	00002737          	lui	a4,0x2
     9cc:	00279793          	slli	a5,a5,0x2
     9d0:	8b070713          	addi	a4,a4,-1872 # 18b0 <symbols.0+0x44>
     9d4:	00e787b3          	add	a5,a5,a4
     9d8:	0007a783          	lw	a5,0(a5)
     9dc:	00078067          	jr	a5
     9e0:	800007b7          	lui	a5,0x80000
     9e4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     9e8:	f69ff06f          	j	950 <__neorv32_rte_core+0x80>
     9ec:	800007b7          	lui	a5,0x80000
     9f0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     9f4:	f5dff06f          	j	950 <__neorv32_rte_core+0x80>
     9f8:	800007b7          	lui	a5,0x80000
     9fc:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     a00:	f51ff06f          	j	950 <__neorv32_rte_core+0x80>
     a04:	800007b7          	lui	a5,0x80000
     a08:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     a0c:	f45ff06f          	j	950 <__neorv32_rte_core+0x80>
     a10:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
     a14:	f3dff06f          	j	950 <__neorv32_rte_core+0x80>
     a18:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
     a1c:	f35ff06f          	j	950 <__neorv32_rte_core+0x80>
     a20:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
     a24:	f2dff06f          	j	950 <__neorv32_rte_core+0x80>
     a28:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
     a2c:	f25ff06f          	j	950 <__neorv32_rte_core+0x80>
     a30:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
     a34:	f1dff06f          	j	950 <__neorv32_rte_core+0x80>
     a38:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
     a3c:	f15ff06f          	j	950 <__neorv32_rte_core+0x80>
     a40:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
     a44:	f0dff06f          	j	950 <__neorv32_rte_core+0x80>
     a48:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
     a4c:	f05ff06f          	j	950 <__neorv32_rte_core+0x80>
     a50:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
     a54:	efdff06f          	j	950 <__neorv32_rte_core+0x80>
     a58:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
     a5c:	ef5ff06f          	j	950 <__neorv32_rte_core+0x80>
     a60:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
     a64:	eedff06f          	j	950 <__neorv32_rte_core+0x80>
     a68:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
     a6c:	ee5ff06f          	j	950 <__neorv32_rte_core+0x80>
     a70:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
     a74:	eddff06f          	j	950 <__neorv32_rte_core+0x80>
     a78:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     a7c:	ed5ff06f          	j	950 <__neorv32_rte_core+0x80>
     a80:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     a84:	ecdff06f          	j	950 <__neorv32_rte_core+0x80>
     a88:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     a8c:	ec5ff06f          	j	950 <__neorv32_rte_core+0x80>
     a90:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     a94:	ebdff06f          	j	950 <__neorv32_rte_core+0x80>
     a98:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     a9c:	eb5ff06f          	j	950 <__neorv32_rte_core+0x80>
     aa0:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     aa4:	eadff06f          	j	950 <__neorv32_rte_core+0x80>
     aa8:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     aac:	ea5ff06f          	j	950 <__neorv32_rte_core+0x80>
     ab0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     ab4:	e9dff06f          	j	950 <__neorv32_rte_core+0x80>
     ab8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     abc:	e95ff06f          	j	950 <__neorv32_rte_core+0x80>
     ac0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     ac4:	e8dff06f          	j	950 <__neorv32_rte_core+0x80>
     ac8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     acc:	e85ff06f          	j	950 <__neorv32_rte_core+0x80>
     ad0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     ad4:	e7dff06f          	j	950 <__neorv32_rte_core+0x80>
     ad8:	0000                	unimp
     ada:	0000                	unimp
     adc:	0000                	unimp
     ade:	0000                	unimp

00000ae0 <__neorv32_rte_print_hex_word>:
     ae0:	fe010113          	addi	sp,sp,-32
     ae4:	01212823          	sw	s2,16(sp)
     ae8:	00050913          	mv	s2,a0
     aec:	00002537          	lui	a0,0x2
     af0:	00912a23          	sw	s1,20(sp)
     af4:	92450513          	addi	a0,a0,-1756 # 1924 <symbols.0+0xb8>
     af8:	000024b7          	lui	s1,0x2
     afc:	00812c23          	sw	s0,24(sp)
     b00:	01312623          	sw	s3,12(sp)
     b04:	00112e23          	sw	ra,28(sp)
     b08:	01c00413          	li	s0,28
     b0c:	bd5ff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     b10:	ba048493          	addi	s1,s1,-1120 # 1ba0 <hex_symbols.0>
     b14:	ffc00993          	li	s3,-4
     b18:	008957b3          	srl	a5,s2,s0
     b1c:	00f7f793          	andi	a5,a5,15
     b20:	00f487b3          	add	a5,s1,a5
     b24:	0007c503          	lbu	a0,0(a5)
     b28:	ffc40413          	addi	s0,s0,-4
     b2c:	b81ff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     b30:	ff3414e3          	bne	s0,s3,b18 <__neorv32_rte_print_hex_word+0x38>
     b34:	01c12083          	lw	ra,28(sp)
     b38:	01812403          	lw	s0,24(sp)
     b3c:	01412483          	lw	s1,20(sp)
     b40:	01012903          	lw	s2,16(sp)
     b44:	00c12983          	lw	s3,12(sp)
     b48:	02010113          	addi	sp,sp,32
     b4c:	00008067          	ret

00000b50 <__neorv32_rte_debug_exc_handler>:
     b50:	ff010113          	addi	sp,sp,-16
     b54:	00112623          	sw	ra,12(sp)
     b58:	00812423          	sw	s0,8(sp)
     b5c:	00912223          	sw	s1,4(sp)
     b60:	a91ff0ef          	jal	ra,5f0 <neorv32_uart0_available>
     b64:	1c050863          	beqz	a0,d34 <__neorv32_rte_debug_exc_handler+0x1e4>
     b68:	00002537          	lui	a0,0x2
     b6c:	92850513          	addi	a0,a0,-1752 # 1928 <symbols.0+0xbc>
     b70:	b71ff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     b74:	34202473          	csrr	s0,mcause
     b78:	00900713          	li	a4,9
     b7c:	00f47793          	andi	a5,s0,15
     b80:	03078493          	addi	s1,a5,48
     b84:	00f77463          	bgeu	a4,a5,b8c <__neorv32_rte_debug_exc_handler+0x3c>
     b88:	05778493          	addi	s1,a5,87
     b8c:	00b00793          	li	a5,11
     b90:	0087ee63          	bltu	a5,s0,bac <__neorv32_rte_debug_exc_handler+0x5c>
     b94:	00002737          	lui	a4,0x2
     b98:	00241793          	slli	a5,s0,0x2
     b9c:	ae870713          	addi	a4,a4,-1304 # 1ae8 <symbols.0+0x27c>
     ba0:	00e787b3          	add	a5,a5,a4
     ba4:	0007a783          	lw	a5,0(a5)
     ba8:	00078067          	jr	a5
     bac:	800007b7          	lui	a5,0x80000
     bb0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     bb4:	14e40e63          	beq	s0,a4,d10 <__neorv32_rte_debug_exc_handler+0x1c0>
     bb8:	02876a63          	bltu	a4,s0,bec <__neorv32_rte_debug_exc_handler+0x9c>
     bbc:	00378713          	addi	a4,a5,3
     bc0:	12e40c63          	beq	s0,a4,cf8 <__neorv32_rte_debug_exc_handler+0x1a8>
     bc4:	00778793          	addi	a5,a5,7
     bc8:	12f40e63          	beq	s0,a5,d04 <__neorv32_rte_debug_exc_handler+0x1b4>
     bcc:	00002537          	lui	a0,0x2
     bd0:	a8850513          	addi	a0,a0,-1400 # 1a88 <symbols.0+0x21c>
     bd4:	b0dff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     bd8:	00040513          	mv	a0,s0
     bdc:	f05ff0ef          	jal	ra,ae0 <__neorv32_rte_print_hex_word>
     be0:	00100793          	li	a5,1
     be4:	08f40c63          	beq	s0,a5,c7c <__neorv32_rte_debug_exc_handler+0x12c>
     be8:	0280006f          	j	c10 <__neorv32_rte_debug_exc_handler+0xc0>
     bec:	ff07c793          	xori	a5,a5,-16
     bf0:	00f407b3          	add	a5,s0,a5
     bf4:	00f00713          	li	a4,15
     bf8:	fcf76ae3          	bltu	a4,a5,bcc <__neorv32_rte_debug_exc_handler+0x7c>
     bfc:	00002537          	lui	a0,0x2
     c00:	a7850513          	addi	a0,a0,-1416 # 1a78 <symbols.0+0x20c>
     c04:	addff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     c08:	00048513          	mv	a0,s1
     c0c:	aa1ff0ef          	jal	ra,6ac <neorv32_uart0_putc>
     c10:	ffd47413          	andi	s0,s0,-3
     c14:	00500793          	li	a5,5
     c18:	06f40263          	beq	s0,a5,c7c <__neorv32_rte_debug_exc_handler+0x12c>
     c1c:	00002537          	lui	a0,0x2
     c20:	acc50513          	addi	a0,a0,-1332 # 1acc <symbols.0+0x260>
     c24:	abdff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     c28:	34002573          	csrr	a0,mscratch
     c2c:	eb5ff0ef          	jal	ra,ae0 <__neorv32_rte_print_hex_word>
     c30:	00002537          	lui	a0,0x2
     c34:	ad450513          	addi	a0,a0,-1324 # 1ad4 <symbols.0+0x268>
     c38:	aa9ff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     c3c:	34302573          	csrr	a0,mtval
     c40:	ea1ff0ef          	jal	ra,ae0 <__neorv32_rte_print_hex_word>
     c44:	00812403          	lw	s0,8(sp)
     c48:	00c12083          	lw	ra,12(sp)
     c4c:	00412483          	lw	s1,4(sp)
     c50:	00002537          	lui	a0,0x2
     c54:	ae050513          	addi	a0,a0,-1312 # 1ae0 <symbols.0+0x274>
     c58:	01010113          	addi	sp,sp,16
     c5c:	a85ff06f          	j	6e0 <neorv32_uart0_print>
     c60:	00002537          	lui	a0,0x2
     c64:	93050513          	addi	a0,a0,-1744 # 1930 <symbols.0+0xc4>
     c68:	a79ff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     c6c:	fb1ff06f          	j	c1c <__neorv32_rte_debug_exc_handler+0xcc>
     c70:	00002537          	lui	a0,0x2
     c74:	95050513          	addi	a0,a0,-1712 # 1950 <symbols.0+0xe4>
     c78:	a69ff0ef          	jal	ra,6e0 <neorv32_uart0_print>
     c7c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     c80:	0a07d463          	bgez	a5,d28 <__neorv32_rte_debug_exc_handler+0x1d8>
     c84:	0017f793          	andi	a5,a5,1
     c88:	08078a63          	beqz	a5,d1c <__neorv32_rte_debug_exc_handler+0x1cc>
     c8c:	00002537          	lui	a0,0x2
     c90:	aa050513          	addi	a0,a0,-1376 # 1aa0 <symbols.0+0x234>
     c94:	fd5ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     c98:	00002537          	lui	a0,0x2
     c9c:	96c50513          	addi	a0,a0,-1684 # 196c <symbols.0+0x100>
     ca0:	fc9ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     ca4:	00002537          	lui	a0,0x2
     ca8:	98050513          	addi	a0,a0,-1664 # 1980 <symbols.0+0x114>
     cac:	fbdff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     cb0:	00002537          	lui	a0,0x2
     cb4:	98c50513          	addi	a0,a0,-1652 # 198c <symbols.0+0x120>
     cb8:	fb1ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     cbc:	00002537          	lui	a0,0x2
     cc0:	9a450513          	addi	a0,a0,-1628 # 19a4 <symbols.0+0x138>
     cc4:	fb5ff06f          	j	c78 <__neorv32_rte_debug_exc_handler+0x128>
     cc8:	00002537          	lui	a0,0x2
     ccc:	9b850513          	addi	a0,a0,-1608 # 19b8 <symbols.0+0x14c>
     cd0:	f99ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     cd4:	00002537          	lui	a0,0x2
     cd8:	9d450513          	addi	a0,a0,-1580 # 19d4 <symbols.0+0x168>
     cdc:	f9dff06f          	j	c78 <__neorv32_rte_debug_exc_handler+0x128>
     ce0:	00002537          	lui	a0,0x2
     ce4:	9e850513          	addi	a0,a0,-1560 # 19e8 <symbols.0+0x17c>
     ce8:	f81ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     cec:	00002537          	lui	a0,0x2
     cf0:	a0850513          	addi	a0,a0,-1528 # 1a08 <symbols.0+0x19c>
     cf4:	f75ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     cf8:	00002537          	lui	a0,0x2
     cfc:	a2850513          	addi	a0,a0,-1496 # 1a28 <symbols.0+0x1bc>
     d00:	f69ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     d04:	00002537          	lui	a0,0x2
     d08:	a4450513          	addi	a0,a0,-1468 # 1a44 <symbols.0+0x1d8>
     d0c:	f5dff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     d10:	00002537          	lui	a0,0x2
     d14:	a5c50513          	addi	a0,a0,-1444 # 1a5c <symbols.0+0x1f0>
     d18:	f51ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     d1c:	00002537          	lui	a0,0x2
     d20:	ab050513          	addi	a0,a0,-1360 # 1ab0 <symbols.0+0x244>
     d24:	f45ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     d28:	00002537          	lui	a0,0x2
     d2c:	ac050513          	addi	a0,a0,-1344 # 1ac0 <symbols.0+0x254>
     d30:	f39ff06f          	j	c68 <__neorv32_rte_debug_exc_handler+0x118>
     d34:	00c12083          	lw	ra,12(sp)
     d38:	00812403          	lw	s0,8(sp)
     d3c:	00412483          	lw	s1,4(sp)
     d40:	01010113          	addi	sp,sp,16
     d44:	00008067          	ret

00000d48 <neorv32_rte_exception_uninstall>:
     d48:	01f00793          	li	a5,31
     d4c:	02a7e463          	bltu	a5,a0,d74 <neorv32_rte_exception_uninstall+0x2c>
     d50:	800007b7          	lui	a5,0x80000
     d54:	00078793          	mv	a5,a5
     d58:	00251513          	slli	a0,a0,0x2
     d5c:	00a78533          	add	a0,a5,a0
     d60:	000017b7          	lui	a5,0x1
     d64:	b5078793          	addi	a5,a5,-1200 # b50 <__neorv32_rte_debug_exc_handler>
     d68:	00f52023          	sw	a5,0(a0)
     d6c:	00000513          	li	a0,0
     d70:	00008067          	ret
     d74:	00100513          	li	a0,1
     d78:	00008067          	ret

00000d7c <neorv32_rte_setup>:
     d7c:	ff010113          	addi	sp,sp,-16
     d80:	000017b7          	lui	a5,0x1
     d84:	00112623          	sw	ra,12(sp)
     d88:	00812423          	sw	s0,8(sp)
     d8c:	00912223          	sw	s1,4(sp)
     d90:	8d078793          	addi	a5,a5,-1840 # 8d0 <__neorv32_rte_core>
     d94:	30579073          	csrw	mtvec,a5
     d98:	00000413          	li	s0,0
     d9c:	01d00493          	li	s1,29
     da0:	00040513          	mv	a0,s0
     da4:	00140413          	addi	s0,s0,1
     da8:	0ff47413          	andi	s0,s0,255
     dac:	f9dff0ef          	jal	ra,d48 <neorv32_rte_exception_uninstall>
     db0:	fe9418e3          	bne	s0,s1,da0 <neorv32_rte_setup+0x24>
     db4:	00c12083          	lw	ra,12(sp)
     db8:	00812403          	lw	s0,8(sp)
     dbc:	00412483          	lw	s1,4(sp)
     dc0:	01010113          	addi	sp,sp,16
     dc4:	00008067          	ret

00000dc8 <neorv32_rte_check_isa>:
     dc8:	30102673          	csrr	a2,misa
     dcc:	400007b7          	lui	a5,0x40000
     dd0:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe450>
     dd4:	00f67733          	and	a4,a2,a5
     dd8:	04f70463          	beq	a4,a5,e20 <neorv32_rte_check_isa+0x58>
     ddc:	fe010113          	addi	sp,sp,-32
     de0:	00112e23          	sw	ra,28(sp)
     de4:	02051463          	bnez	a0,e0c <neorv32_rte_check_isa+0x44>
     de8:	400005b7          	lui	a1,0x40000
     dec:	00002537          	lui	a0,0x2
     df0:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe450>
     df4:	b1850513          	addi	a0,a0,-1256 # 1b18 <symbols.0+0x2ac>
     df8:	941ff0ef          	jal	ra,738 <neorv32_uart0_printf>
     dfc:	01c12083          	lw	ra,28(sp)
     e00:	00100513          	li	a0,1
     e04:	02010113          	addi	sp,sp,32
     e08:	00008067          	ret
     e0c:	00c12623          	sw	a2,12(sp)
     e10:	fe0ff0ef          	jal	ra,5f0 <neorv32_uart0_available>
     e14:	00c12603          	lw	a2,12(sp)
     e18:	fc0508e3          	beqz	a0,de8 <neorv32_rte_check_isa+0x20>
     e1c:	fe1ff06f          	j	dfc <neorv32_rte_check_isa+0x34>
     e20:	00000513          	li	a0,0
     e24:	00008067          	ret

00000e28 <neorv32_trng_available>:
     e28:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     e2c:	01855513          	srli	a0,a0,0x18
     e30:	00157513          	andi	a0,a0,1
     e34:	00008067          	ret

00000e38 <neorv32_trng_enable>:
     e38:	fa002c23          	sw	zero,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
     e3c:	10000793          	li	a5,256
     e40:	00000013          	nop
     e44:	fff78793          	addi	a5,a5,-1
     e48:	fe079ce3          	bnez	a5,e40 <neorv32_trng_enable+0x8>
     e4c:	400007b7          	lui	a5,0x40000
     e50:	faf02c23          	sw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
     e54:	10000793          	li	a5,256
     e58:	00000013          	nop
     e5c:	fff78793          	addi	a5,a5,-1 # 3fffffff <__crt0_copy_data_src_begin+0x3fffe34f>
     e60:	fe079ce3          	bnez	a5,e58 <neorv32_trng_enable+0x20>
     e64:	00008067          	ret

00000e68 <neorv32_trng_get>:
     e68:	fb802783          	lw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
     e6c:	00050713          	mv	a4,a0
     e70:	0007cc63          	bltz	a5,e88 <neorv32_trng_get+0x20>
     e74:	fb802783          	lw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
     e78:	0007c863          	bltz	a5,e88 <neorv32_trng_get+0x20>
     e7c:	fb802783          	lw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
     e80:	fff00513          	li	a0,-1
     e84:	0007d663          	bgez	a5,e90 <neorv32_trng_get+0x28>
     e88:	00f70023          	sb	a5,0(a4)
     e8c:	00000513          	li	a0,0
     e90:	00008067          	ret

00000e94 <__udivdi3>:
     e94:	fd010113          	addi	sp,sp,-48
     e98:	02812423          	sw	s0,40(sp)
     e9c:	01712623          	sw	s7,12(sp)
     ea0:	02112623          	sw	ra,44(sp)
     ea4:	02912223          	sw	s1,36(sp)
     ea8:	03212023          	sw	s2,32(sp)
     eac:	01312e23          	sw	s3,28(sp)
     eb0:	01412c23          	sw	s4,24(sp)
     eb4:	01512a23          	sw	s5,20(sp)
     eb8:	01612823          	sw	s6,16(sp)
     ebc:	01812423          	sw	s8,8(sp)
     ec0:	01912223          	sw	s9,4(sp)
     ec4:	00050b93          	mv	s7,a0
     ec8:	00058413          	mv	s0,a1
     ecc:	38069c63          	bnez	a3,1264 <__udivdi3+0x3d0>
     ed0:	000024b7          	lui	s1,0x2
     ed4:	00060913          	mv	s2,a2
     ed8:	00050a13          	mv	s4,a0
     edc:	bb048493          	addi	s1,s1,-1104 # 1bb0 <__clz_tab>
     ee0:	12c5f863          	bgeu	a1,a2,1010 <__udivdi3+0x17c>
     ee4:	000107b7          	lui	a5,0x10
     ee8:	00058c13          	mv	s8,a1
     eec:	10f67863          	bgeu	a2,a5,ffc <__udivdi3+0x168>
     ef0:	0ff00713          	li	a4,255
     ef4:	00c73733          	sltu	a4,a4,a2
     ef8:	00371713          	slli	a4,a4,0x3
     efc:	00e657b3          	srl	a5,a2,a4
     f00:	00f484b3          	add	s1,s1,a5
     f04:	0004c683          	lbu	a3,0(s1)
     f08:	00e68733          	add	a4,a3,a4
     f0c:	02000693          	li	a3,32
     f10:	40e687b3          	sub	a5,a3,a4
     f14:	00e68c63          	beq	a3,a4,f2c <__udivdi3+0x98>
     f18:	00f41433          	sll	s0,s0,a5
     f1c:	00ebd733          	srl	a4,s7,a4
     f20:	00f61933          	sll	s2,a2,a5
     f24:	00876c33          	or	s8,a4,s0
     f28:	00fb9a33          	sll	s4,s7,a5
     f2c:	01095b13          	srli	s6,s2,0x10
     f30:	000b0593          	mv	a1,s6
     f34:	000c0513          	mv	a0,s8
     f38:	638000ef          	jal	ra,1570 <__umodsi3>
     f3c:	00050493          	mv	s1,a0
     f40:	000b0593          	mv	a1,s6
     f44:	01091a93          	slli	s5,s2,0x10
     f48:	000c0513          	mv	a0,s8
     f4c:	5dc000ef          	jal	ra,1528 <__udivsi3>
     f50:	010ada93          	srli	s5,s5,0x10
     f54:	00050413          	mv	s0,a0
     f58:	00050593          	mv	a1,a0
     f5c:	000a8513          	mv	a0,s5
     f60:	50c000ef          	jal	ra,146c <__mulsi3>
     f64:	01049493          	slli	s1,s1,0x10
     f68:	010a5713          	srli	a4,s4,0x10
     f6c:	00e4e733          	or	a4,s1,a4
     f70:	00040993          	mv	s3,s0
     f74:	00a77e63          	bgeu	a4,a0,f90 <__udivdi3+0xfc>
     f78:	01270733          	add	a4,a4,s2
     f7c:	fff40993          	addi	s3,s0,-1
     f80:	01276863          	bltu	a4,s2,f90 <__udivdi3+0xfc>
     f84:	00a77663          	bgeu	a4,a0,f90 <__udivdi3+0xfc>
     f88:	ffe40993          	addi	s3,s0,-2
     f8c:	01270733          	add	a4,a4,s2
     f90:	40a70433          	sub	s0,a4,a0
     f94:	000b0593          	mv	a1,s6
     f98:	00040513          	mv	a0,s0
     f9c:	5d4000ef          	jal	ra,1570 <__umodsi3>
     fa0:	00050493          	mv	s1,a0
     fa4:	000b0593          	mv	a1,s6
     fa8:	00040513          	mv	a0,s0
     fac:	57c000ef          	jal	ra,1528 <__udivsi3>
     fb0:	010a1a13          	slli	s4,s4,0x10
     fb4:	00050413          	mv	s0,a0
     fb8:	00050593          	mv	a1,a0
     fbc:	01049493          	slli	s1,s1,0x10
     fc0:	000a8513          	mv	a0,s5
     fc4:	010a5a13          	srli	s4,s4,0x10
     fc8:	4a4000ef          	jal	ra,146c <__mulsi3>
     fcc:	0144ea33          	or	s4,s1,s4
     fd0:	00040613          	mv	a2,s0
     fd4:	00aa7c63          	bgeu	s4,a0,fec <__udivdi3+0x158>
     fd8:	01490a33          	add	s4,s2,s4
     fdc:	fff40613          	addi	a2,s0,-1
     fe0:	012a6663          	bltu	s4,s2,fec <__udivdi3+0x158>
     fe4:	00aa7463          	bgeu	s4,a0,fec <__udivdi3+0x158>
     fe8:	ffe40613          	addi	a2,s0,-2
     fec:	01099793          	slli	a5,s3,0x10
     ff0:	00c7e7b3          	or	a5,a5,a2
     ff4:	00000493          	li	s1,0
     ff8:	1300006f          	j	1128 <__udivdi3+0x294>
     ffc:	010007b7          	lui	a5,0x1000
    1000:	01000713          	li	a4,16
    1004:	eef66ce3          	bltu	a2,a5,efc <__udivdi3+0x68>
    1008:	01800713          	li	a4,24
    100c:	ef1ff06f          	j	efc <__udivdi3+0x68>
    1010:	00068993          	mv	s3,a3
    1014:	00061a63          	bnez	a2,1028 <__udivdi3+0x194>
    1018:	00000593          	li	a1,0
    101c:	00100513          	li	a0,1
    1020:	508000ef          	jal	ra,1528 <__udivsi3>
    1024:	00050913          	mv	s2,a0
    1028:	000107b7          	lui	a5,0x10
    102c:	12f97c63          	bgeu	s2,a5,1164 <__udivdi3+0x2d0>
    1030:	0ff00793          	li	a5,255
    1034:	0127f463          	bgeu	a5,s2,103c <__udivdi3+0x1a8>
    1038:	00800993          	li	s3,8
    103c:	013957b3          	srl	a5,s2,s3
    1040:	00f484b3          	add	s1,s1,a5
    1044:	0004c783          	lbu	a5,0(s1)
    1048:	02000693          	li	a3,32
    104c:	013787b3          	add	a5,a5,s3
    1050:	40f68733          	sub	a4,a3,a5
    1054:	12f69263          	bne	a3,a5,1178 <__udivdi3+0x2e4>
    1058:	41240433          	sub	s0,s0,s2
    105c:	00100493          	li	s1,1
    1060:	01095a93          	srli	s5,s2,0x10
    1064:	000a8593          	mv	a1,s5
    1068:	00040513          	mv	a0,s0
    106c:	504000ef          	jal	ra,1570 <__umodsi3>
    1070:	00050993          	mv	s3,a0
    1074:	000a8593          	mv	a1,s5
    1078:	00040513          	mv	a0,s0
    107c:	01091b13          	slli	s6,s2,0x10
    1080:	4a8000ef          	jal	ra,1528 <__udivsi3>
    1084:	010b5b13          	srli	s6,s6,0x10
    1088:	00050413          	mv	s0,a0
    108c:	00050593          	mv	a1,a0
    1090:	000b0513          	mv	a0,s6
    1094:	3d8000ef          	jal	ra,146c <__mulsi3>
    1098:	01099993          	slli	s3,s3,0x10
    109c:	010a5713          	srli	a4,s4,0x10
    10a0:	00e9e733          	or	a4,s3,a4
    10a4:	00040b93          	mv	s7,s0
    10a8:	00a77e63          	bgeu	a4,a0,10c4 <__udivdi3+0x230>
    10ac:	01270733          	add	a4,a4,s2
    10b0:	fff40b93          	addi	s7,s0,-1
    10b4:	01276863          	bltu	a4,s2,10c4 <__udivdi3+0x230>
    10b8:	00a77663          	bgeu	a4,a0,10c4 <__udivdi3+0x230>
    10bc:	ffe40b93          	addi	s7,s0,-2
    10c0:	01270733          	add	a4,a4,s2
    10c4:	40a70433          	sub	s0,a4,a0
    10c8:	000a8593          	mv	a1,s5
    10cc:	00040513          	mv	a0,s0
    10d0:	4a0000ef          	jal	ra,1570 <__umodsi3>
    10d4:	00050993          	mv	s3,a0
    10d8:	000a8593          	mv	a1,s5
    10dc:	00040513          	mv	a0,s0
    10e0:	448000ef          	jal	ra,1528 <__udivsi3>
    10e4:	010a1a13          	slli	s4,s4,0x10
    10e8:	00050413          	mv	s0,a0
    10ec:	00050593          	mv	a1,a0
    10f0:	01099993          	slli	s3,s3,0x10
    10f4:	000b0513          	mv	a0,s6
    10f8:	010a5a13          	srli	s4,s4,0x10
    10fc:	370000ef          	jal	ra,146c <__mulsi3>
    1100:	0149ea33          	or	s4,s3,s4
    1104:	00040613          	mv	a2,s0
    1108:	00aa7c63          	bgeu	s4,a0,1120 <__udivdi3+0x28c>
    110c:	01490a33          	add	s4,s2,s4
    1110:	fff40613          	addi	a2,s0,-1
    1114:	012a6663          	bltu	s4,s2,1120 <__udivdi3+0x28c>
    1118:	00aa7463          	bgeu	s4,a0,1120 <__udivdi3+0x28c>
    111c:	ffe40613          	addi	a2,s0,-2
    1120:	010b9793          	slli	a5,s7,0x10
    1124:	00c7e7b3          	or	a5,a5,a2
    1128:	00078513          	mv	a0,a5
    112c:	00048593          	mv	a1,s1
    1130:	02c12083          	lw	ra,44(sp)
    1134:	02812403          	lw	s0,40(sp)
    1138:	02412483          	lw	s1,36(sp)
    113c:	02012903          	lw	s2,32(sp)
    1140:	01c12983          	lw	s3,28(sp)
    1144:	01812a03          	lw	s4,24(sp)
    1148:	01412a83          	lw	s5,20(sp)
    114c:	01012b03          	lw	s6,16(sp)
    1150:	00c12b83          	lw	s7,12(sp)
    1154:	00812c03          	lw	s8,8(sp)
    1158:	00412c83          	lw	s9,4(sp)
    115c:	03010113          	addi	sp,sp,48
    1160:	00008067          	ret
    1164:	010007b7          	lui	a5,0x1000
    1168:	01000993          	li	s3,16
    116c:	ecf968e3          	bltu	s2,a5,103c <__udivdi3+0x1a8>
    1170:	01800993          	li	s3,24
    1174:	ec9ff06f          	j	103c <__udivdi3+0x1a8>
    1178:	00e91933          	sll	s2,s2,a4
    117c:	00f459b3          	srl	s3,s0,a5
    1180:	00fbd7b3          	srl	a5,s7,a5
    1184:	00e41433          	sll	s0,s0,a4
    1188:	0087eab3          	or	s5,a5,s0
    118c:	01095413          	srli	s0,s2,0x10
    1190:	00040593          	mv	a1,s0
    1194:	00098513          	mv	a0,s3
    1198:	00eb9a33          	sll	s4,s7,a4
    119c:	3d4000ef          	jal	ra,1570 <__umodsi3>
    11a0:	00050493          	mv	s1,a0
    11a4:	00040593          	mv	a1,s0
    11a8:	00098513          	mv	a0,s3
    11ac:	01091b13          	slli	s6,s2,0x10
    11b0:	378000ef          	jal	ra,1528 <__udivsi3>
    11b4:	010b5b13          	srli	s6,s6,0x10
    11b8:	00050993          	mv	s3,a0
    11bc:	00050593          	mv	a1,a0
    11c0:	000b0513          	mv	a0,s6
    11c4:	2a8000ef          	jal	ra,146c <__mulsi3>
    11c8:	01049493          	slli	s1,s1,0x10
    11cc:	010ad793          	srli	a5,s5,0x10
    11d0:	00f4e7b3          	or	a5,s1,a5
    11d4:	00098b93          	mv	s7,s3
    11d8:	00a7fe63          	bgeu	a5,a0,11f4 <__udivdi3+0x360>
    11dc:	012787b3          	add	a5,a5,s2
    11e0:	fff98b93          	addi	s7,s3,-1
    11e4:	0127e863          	bltu	a5,s2,11f4 <__udivdi3+0x360>
    11e8:	00a7f663          	bgeu	a5,a0,11f4 <__udivdi3+0x360>
    11ec:	ffe98b93          	addi	s7,s3,-2
    11f0:	012787b3          	add	a5,a5,s2
    11f4:	40a789b3          	sub	s3,a5,a0
    11f8:	00040593          	mv	a1,s0
    11fc:	00098513          	mv	a0,s3
    1200:	370000ef          	jal	ra,1570 <__umodsi3>
    1204:	00040593          	mv	a1,s0
    1208:	00050493          	mv	s1,a0
    120c:	00098513          	mv	a0,s3
    1210:	318000ef          	jal	ra,1528 <__udivsi3>
    1214:	010a9413          	slli	s0,s5,0x10
    1218:	00050993          	mv	s3,a0
    121c:	00050593          	mv	a1,a0
    1220:	01049493          	slli	s1,s1,0x10
    1224:	000b0513          	mv	a0,s6
    1228:	01045413          	srli	s0,s0,0x10
    122c:	240000ef          	jal	ra,146c <__mulsi3>
    1230:	0084e433          	or	s0,s1,s0
    1234:	00098793          	mv	a5,s3
    1238:	00a47e63          	bgeu	s0,a0,1254 <__udivdi3+0x3c0>
    123c:	01240433          	add	s0,s0,s2
    1240:	fff98793          	addi	a5,s3,-1
    1244:	01246863          	bltu	s0,s2,1254 <__udivdi3+0x3c0>
    1248:	00a47663          	bgeu	s0,a0,1254 <__udivdi3+0x3c0>
    124c:	ffe98793          	addi	a5,s3,-2
    1250:	01240433          	add	s0,s0,s2
    1254:	010b9493          	slli	s1,s7,0x10
    1258:	40a40433          	sub	s0,s0,a0
    125c:	00f4e4b3          	or	s1,s1,a5
    1260:	e01ff06f          	j	1060 <__udivdi3+0x1cc>
    1264:	1ed5ee63          	bltu	a1,a3,1460 <__udivdi3+0x5cc>
    1268:	000107b7          	lui	a5,0x10
    126c:	04f6f463          	bgeu	a3,a5,12b4 <__udivdi3+0x420>
    1270:	0ff00a93          	li	s5,255
    1274:	00dab733          	sltu	a4,s5,a3
    1278:	00371713          	slli	a4,a4,0x3
    127c:	000027b7          	lui	a5,0x2
    1280:	00e6d5b3          	srl	a1,a3,a4
    1284:	bb078793          	addi	a5,a5,-1104 # 1bb0 <__clz_tab>
    1288:	00b787b3          	add	a5,a5,a1
    128c:	0007ca83          	lbu	s5,0(a5)
    1290:	02000793          	li	a5,32
    1294:	00ea8ab3          	add	s5,s5,a4
    1298:	415784b3          	sub	s1,a5,s5
    129c:	03579663          	bne	a5,s5,12c8 <__udivdi3+0x434>
    12a0:	00100793          	li	a5,1
    12a4:	e886e2e3          	bltu	a3,s0,1128 <__udivdi3+0x294>
    12a8:	00cbb633          	sltu	a2,s7,a2
    12ac:	00164793          	xori	a5,a2,1
    12b0:	e79ff06f          	j	1128 <__udivdi3+0x294>
    12b4:	010007b7          	lui	a5,0x1000
    12b8:	01000713          	li	a4,16
    12bc:	fcf6e0e3          	bltu	a3,a5,127c <__udivdi3+0x3e8>
    12c0:	01800713          	li	a4,24
    12c4:	fb9ff06f          	j	127c <__udivdi3+0x3e8>
    12c8:	01565cb3          	srl	s9,a2,s5
    12cc:	009696b3          	sll	a3,a3,s1
    12d0:	00dcecb3          	or	s9,s9,a3
    12d4:	015459b3          	srl	s3,s0,s5
    12d8:	00941433          	sll	s0,s0,s1
    12dc:	015bdab3          	srl	s5,s7,s5
    12e0:	008aeab3          	or	s5,s5,s0
    12e4:	010cd413          	srli	s0,s9,0x10
    12e8:	00040593          	mv	a1,s0
    12ec:	00098513          	mv	a0,s3
    12f0:	00961933          	sll	s2,a2,s1
    12f4:	27c000ef          	jal	ra,1570 <__umodsi3>
    12f8:	00050a13          	mv	s4,a0
    12fc:	00040593          	mv	a1,s0
    1300:	00098513          	mv	a0,s3
    1304:	010c9b13          	slli	s6,s9,0x10
    1308:	220000ef          	jal	ra,1528 <__udivsi3>
    130c:	010b5b13          	srli	s6,s6,0x10
    1310:	00050993          	mv	s3,a0
    1314:	00050593          	mv	a1,a0
    1318:	000b0513          	mv	a0,s6
    131c:	150000ef          	jal	ra,146c <__mulsi3>
    1320:	010a1a13          	slli	s4,s4,0x10
    1324:	010ad713          	srli	a4,s5,0x10
    1328:	00ea6733          	or	a4,s4,a4
    132c:	00098c13          	mv	s8,s3
    1330:	00a77e63          	bgeu	a4,a0,134c <__udivdi3+0x4b8>
    1334:	01970733          	add	a4,a4,s9
    1338:	fff98c13          	addi	s8,s3,-1
    133c:	01976863          	bltu	a4,s9,134c <__udivdi3+0x4b8>
    1340:	00a77663          	bgeu	a4,a0,134c <__udivdi3+0x4b8>
    1344:	ffe98c13          	addi	s8,s3,-2
    1348:	01970733          	add	a4,a4,s9
    134c:	40a709b3          	sub	s3,a4,a0
    1350:	00040593          	mv	a1,s0
    1354:	00098513          	mv	a0,s3
    1358:	218000ef          	jal	ra,1570 <__umodsi3>
    135c:	00040593          	mv	a1,s0
    1360:	00050a13          	mv	s4,a0
    1364:	00098513          	mv	a0,s3
    1368:	1c0000ef          	jal	ra,1528 <__udivsi3>
    136c:	010a9413          	slli	s0,s5,0x10
    1370:	00050993          	mv	s3,a0
    1374:	00050593          	mv	a1,a0
    1378:	010a1a13          	slli	s4,s4,0x10
    137c:	000b0513          	mv	a0,s6
    1380:	01045413          	srli	s0,s0,0x10
    1384:	0e8000ef          	jal	ra,146c <__mulsi3>
    1388:	008a6433          	or	s0,s4,s0
    138c:	00098613          	mv	a2,s3
    1390:	00a47e63          	bgeu	s0,a0,13ac <__udivdi3+0x518>
    1394:	01940433          	add	s0,s0,s9
    1398:	fff98613          	addi	a2,s3,-1
    139c:	01946863          	bltu	s0,s9,13ac <__udivdi3+0x518>
    13a0:	00a47663          	bgeu	s0,a0,13ac <__udivdi3+0x518>
    13a4:	ffe98613          	addi	a2,s3,-2
    13a8:	01940433          	add	s0,s0,s9
    13ac:	010c1793          	slli	a5,s8,0x10
    13b0:	00010e37          	lui	t3,0x10
    13b4:	00c7e7b3          	or	a5,a5,a2
    13b8:	fffe0313          	addi	t1,t3,-1 # ffff <__crt0_copy_data_src_begin+0xe34f>
    13bc:	0067f8b3          	and	a7,a5,t1
    13c0:	00697333          	and	t1,s2,t1
    13c4:	40a40433          	sub	s0,s0,a0
    13c8:	0107de93          	srli	t4,a5,0x10
    13cc:	01095913          	srli	s2,s2,0x10
    13d0:	00088513          	mv	a0,a7
    13d4:	00030593          	mv	a1,t1
    13d8:	094000ef          	jal	ra,146c <__mulsi3>
    13dc:	00050813          	mv	a6,a0
    13e0:	00090593          	mv	a1,s2
    13e4:	00088513          	mv	a0,a7
    13e8:	084000ef          	jal	ra,146c <__mulsi3>
    13ec:	00050893          	mv	a7,a0
    13f0:	00030593          	mv	a1,t1
    13f4:	000e8513          	mv	a0,t4
    13f8:	074000ef          	jal	ra,146c <__mulsi3>
    13fc:	00050313          	mv	t1,a0
    1400:	00090593          	mv	a1,s2
    1404:	000e8513          	mv	a0,t4
    1408:	064000ef          	jal	ra,146c <__mulsi3>
    140c:	01085713          	srli	a4,a6,0x10
    1410:	006888b3          	add	a7,a7,t1
    1414:	01170733          	add	a4,a4,a7
    1418:	00050693          	mv	a3,a0
    141c:	00677463          	bgeu	a4,t1,1424 <__udivdi3+0x590>
    1420:	01c506b3          	add	a3,a0,t3
    1424:	01075513          	srli	a0,a4,0x10
    1428:	00d506b3          	add	a3,a0,a3
    142c:	02d46663          	bltu	s0,a3,1458 <__udivdi3+0x5c4>
    1430:	bcd412e3          	bne	s0,a3,ff4 <__udivdi3+0x160>
    1434:	00010537          	lui	a0,0x10
    1438:	fff50513          	addi	a0,a0,-1 # ffff <__crt0_copy_data_src_begin+0xe34f>
    143c:	00a77733          	and	a4,a4,a0
    1440:	01071713          	slli	a4,a4,0x10
    1444:	00a87833          	and	a6,a6,a0
    1448:	009b9bb3          	sll	s7,s7,s1
    144c:	01070733          	add	a4,a4,a6
    1450:	00000493          	li	s1,0
    1454:	ccebfae3          	bgeu	s7,a4,1128 <__udivdi3+0x294>
    1458:	fff78793          	addi	a5,a5,-1 # ffffff <__crt0_copy_data_src_begin+0xffe34f>
    145c:	b99ff06f          	j	ff4 <__udivdi3+0x160>
    1460:	00000493          	li	s1,0
    1464:	00000793          	li	a5,0
    1468:	cc1ff06f          	j	1128 <__udivdi3+0x294>

0000146c <__mulsi3>:
    146c:	00050613          	mv	a2,a0
    1470:	00000513          	li	a0,0
    1474:	0015f693          	andi	a3,a1,1
    1478:	00068463          	beqz	a3,1480 <__mulsi3+0x14>
    147c:	00c50533          	add	a0,a0,a2
    1480:	0015d593          	srli	a1,a1,0x1
    1484:	00161613          	slli	a2,a2,0x1
    1488:	fe0596e3          	bnez	a1,1474 <__mulsi3+0x8>
    148c:	00008067          	ret

00001490 <__muldi3>:
    1490:	00050313          	mv	t1,a0
    1494:	ff010113          	addi	sp,sp,-16
    1498:	00060513          	mv	a0,a2
    149c:	00068893          	mv	a7,a3
    14a0:	00112623          	sw	ra,12(sp)
    14a4:	00030613          	mv	a2,t1
    14a8:	00050693          	mv	a3,a0
    14ac:	00000713          	li	a4,0
    14b0:	00000793          	li	a5,0
    14b4:	00000813          	li	a6,0
    14b8:	0016fe13          	andi	t3,a3,1
    14bc:	00171e93          	slli	t4,a4,0x1
    14c0:	000e0c63          	beqz	t3,14d8 <__muldi3+0x48>
    14c4:	01060e33          	add	t3,a2,a6
    14c8:	010e3833          	sltu	a6,t3,a6
    14cc:	00e787b3          	add	a5,a5,a4
    14d0:	00f807b3          	add	a5,a6,a5
    14d4:	000e0813          	mv	a6,t3
    14d8:	01f65713          	srli	a4,a2,0x1f
    14dc:	0016d693          	srli	a3,a3,0x1
    14e0:	00eee733          	or	a4,t4,a4
    14e4:	00161613          	slli	a2,a2,0x1
    14e8:	fc0698e3          	bnez	a3,14b8 <__muldi3+0x28>
    14ec:	00058663          	beqz	a1,14f8 <__muldi3+0x68>
    14f0:	f7dff0ef          	jal	ra,146c <__mulsi3>
    14f4:	00a787b3          	add	a5,a5,a0
    14f8:	00088a63          	beqz	a7,150c <__muldi3+0x7c>
    14fc:	00030513          	mv	a0,t1
    1500:	00088593          	mv	a1,a7
    1504:	f69ff0ef          	jal	ra,146c <__mulsi3>
    1508:	00f507b3          	add	a5,a0,a5
    150c:	00c12083          	lw	ra,12(sp)
    1510:	00080513          	mv	a0,a6
    1514:	00078593          	mv	a1,a5
    1518:	01010113          	addi	sp,sp,16
    151c:	00008067          	ret

00001520 <__divsi3>:
    1520:	06054063          	bltz	a0,1580 <__umodsi3+0x10>
    1524:	0605c663          	bltz	a1,1590 <__umodsi3+0x20>

00001528 <__udivsi3>:
    1528:	00058613          	mv	a2,a1
    152c:	00050593          	mv	a1,a0
    1530:	fff00513          	li	a0,-1
    1534:	02060c63          	beqz	a2,156c <__udivsi3+0x44>
    1538:	00100693          	li	a3,1
    153c:	00b67a63          	bgeu	a2,a1,1550 <__udivsi3+0x28>
    1540:	00c05863          	blez	a2,1550 <__udivsi3+0x28>
    1544:	00161613          	slli	a2,a2,0x1
    1548:	00169693          	slli	a3,a3,0x1
    154c:	feb66ae3          	bltu	a2,a1,1540 <__udivsi3+0x18>
    1550:	00000513          	li	a0,0
    1554:	00c5e663          	bltu	a1,a2,1560 <__udivsi3+0x38>
    1558:	40c585b3          	sub	a1,a1,a2
    155c:	00d56533          	or	a0,a0,a3
    1560:	0016d693          	srli	a3,a3,0x1
    1564:	00165613          	srli	a2,a2,0x1
    1568:	fe0696e3          	bnez	a3,1554 <__udivsi3+0x2c>
    156c:	00008067          	ret

00001570 <__umodsi3>:
    1570:	00008293          	mv	t0,ra
    1574:	fb5ff0ef          	jal	ra,1528 <__udivsi3>
    1578:	00058513          	mv	a0,a1
    157c:	00028067          	jr	t0
    1580:	40a00533          	neg	a0,a0
    1584:	00b04863          	bgtz	a1,1594 <__umodsi3+0x24>
    1588:	40b005b3          	neg	a1,a1
    158c:	f9dff06f          	j	1528 <__udivsi3>
    1590:	40b005b3          	neg	a1,a1
    1594:	00008293          	mv	t0,ra
    1598:	f91ff0ef          	jal	ra,1528 <__udivsi3>
    159c:	40a00533          	neg	a0,a0
    15a0:	00028067          	jr	t0

000015a4 <__modsi3>:
    15a4:	00008293          	mv	t0,ra
    15a8:	0005ca63          	bltz	a1,15bc <__modsi3+0x18>
    15ac:	00054c63          	bltz	a0,15c4 <__modsi3+0x20>
    15b0:	f79ff0ef          	jal	ra,1528 <__udivsi3>
    15b4:	00058513          	mv	a0,a1
    15b8:	00028067          	jr	t0
    15bc:	40b005b3          	neg	a1,a1
    15c0:	fe0558e3          	bgez	a0,15b0 <__modsi3+0xc>
    15c4:	40a00533          	neg	a0,a0
    15c8:	f61ff0ef          	jal	ra,1528 <__udivsi3>
    15cc:	40b00533          	neg	a0,a1
    15d0:	00028067          	jr	t0

000015d4 <memset>:
    15d4:	00f00313          	li	t1,15
    15d8:	00050713          	mv	a4,a0
    15dc:	02c37e63          	bgeu	t1,a2,1618 <memset+0x44>
    15e0:	00f77793          	andi	a5,a4,15
    15e4:	0a079063          	bnez	a5,1684 <memset+0xb0>
    15e8:	08059263          	bnez	a1,166c <memset+0x98>
    15ec:	ff067693          	andi	a3,a2,-16
    15f0:	00f67613          	andi	a2,a2,15
    15f4:	00e686b3          	add	a3,a3,a4
    15f8:	00b72023          	sw	a1,0(a4)
    15fc:	00b72223          	sw	a1,4(a4)
    1600:	00b72423          	sw	a1,8(a4)
    1604:	00b72623          	sw	a1,12(a4)
    1608:	01070713          	addi	a4,a4,16
    160c:	fed766e3          	bltu	a4,a3,15f8 <memset+0x24>
    1610:	00061463          	bnez	a2,1618 <memset+0x44>
    1614:	00008067          	ret
    1618:	40c306b3          	sub	a3,t1,a2
    161c:	00269693          	slli	a3,a3,0x2
    1620:	00000297          	auipc	t0,0x0
    1624:	005686b3          	add	a3,a3,t0
    1628:	00c68067          	jr	12(a3)
    162c:	00b70723          	sb	a1,14(a4)
    1630:	00b706a3          	sb	a1,13(a4)
    1634:	00b70623          	sb	a1,12(a4)
    1638:	00b705a3          	sb	a1,11(a4)
    163c:	00b70523          	sb	a1,10(a4)
    1640:	00b704a3          	sb	a1,9(a4)
    1644:	00b70423          	sb	a1,8(a4)
    1648:	00b703a3          	sb	a1,7(a4)
    164c:	00b70323          	sb	a1,6(a4)
    1650:	00b702a3          	sb	a1,5(a4)
    1654:	00b70223          	sb	a1,4(a4)
    1658:	00b701a3          	sb	a1,3(a4)
    165c:	00b70123          	sb	a1,2(a4)
    1660:	00b700a3          	sb	a1,1(a4)
    1664:	00b70023          	sb	a1,0(a4)
    1668:	00008067          	ret
    166c:	0ff5f593          	andi	a1,a1,255
    1670:	00859693          	slli	a3,a1,0x8
    1674:	00d5e5b3          	or	a1,a1,a3
    1678:	01059693          	slli	a3,a1,0x10
    167c:	00d5e5b3          	or	a1,a1,a3
    1680:	f6dff06f          	j	15ec <memset+0x18>
    1684:	00279693          	slli	a3,a5,0x2
    1688:	00000297          	auipc	t0,0x0
    168c:	005686b3          	add	a3,a3,t0
    1690:	00008293          	mv	t0,ra
    1694:	fa0680e7          	jalr	-96(a3)
    1698:	00028093          	mv	ra,t0
    169c:	ff078793          	addi	a5,a5,-16
    16a0:	40f70733          	sub	a4,a4,a5
    16a4:	00f60633          	add	a2,a2,a5
    16a8:	f6c378e3          	bgeu	t1,a2,1618 <memset+0x44>
    16ac:	f3dff06f          	j	15e8 <memset+0x14>
