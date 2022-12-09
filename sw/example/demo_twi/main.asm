
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
      e0:	aac58593          	addi	a1,a1,-1364 # 1b88 <__crt0_copy_data_src_begin>
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
     184:	02112e23          	sw	ra,60(sp)
     188:	02812c23          	sw	s0,56(sp)
     18c:	02912a23          	sw	s1,52(sp)
     190:	03212823          	sw	s2,48(sp)
     194:	03312623          	sw	s3,44(sp)
     198:	03412423          	sw	s4,40(sp)
     19c:	03512223          	sw	s5,36(sp)
     1a0:	03612023          	sw	s6,32(sp)
     1a4:	01712e23          	sw	s7,28(sp)
     1a8:	01812c23          	sw	s8,24(sp)
     1ac:	01912a23          	sw	s9,20(sp)
     1b0:	584000ef          	jal	ra,734 <neorv32_uart0_available>
     1b4:	04050263          	beqz	a0,1f8 <main+0x78>
     1b8:	6b5000ef          	jal	ra,106c <neorv32_rte_setup>
     1bc:	00005537          	lui	a0,0x5
     1c0:	00000613          	li	a2,0
     1c4:	00000593          	li	a1,0
     1c8:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x2f78>
     1cc:	578000ef          	jal	ra,744 <neorv32_uart0_setup>
     1d0:	00000513          	li	a0,0
     1d4:	6e5000ef          	jal	ra,10b8 <neorv32_rte_check_isa>
     1d8:	00001537          	lui	a0,0x1
     1dc:	4d450513          	addi	a0,a0,1236 # 14d4 <__etext+0x100>
     1e0:	690000ef          	jal	ra,870 <neorv32_uart0_printf>
     1e4:	0fd000ef          	jal	ra,ae0 <neorv32_twi_available>
     1e8:	04051463          	bnez	a0,230 <main+0xb0>
     1ec:	00001537          	lui	a0,0x1
     1f0:	4f050513          	addi	a0,a0,1264 # 14f0 <__etext+0x11c>
     1f4:	67c000ef          	jal	ra,870 <neorv32_uart0_printf>
     1f8:	03c12083          	lw	ra,60(sp)
     1fc:	03812403          	lw	s0,56(sp)
     200:	03412483          	lw	s1,52(sp)
     204:	03012903          	lw	s2,48(sp)
     208:	02c12983          	lw	s3,44(sp)
     20c:	02812a03          	lw	s4,40(sp)
     210:	02412a83          	lw	s5,36(sp)
     214:	02012b03          	lw	s6,32(sp)
     218:	01c12b83          	lw	s7,28(sp)
     21c:	01812c03          	lw	s8,24(sp)
     220:	01412c83          	lw	s9,20(sp)
     224:	00100513          	li	a0,1
     228:	04010113          	addi	sp,sp,64
     22c:	00008067          	ret
     230:	00001537          	lui	a0,0x1
     234:	50c50513          	addi	a0,a0,1292 # 150c <__etext+0x138>
     238:	638000ef          	jal	ra,870 <neorv32_uart0_printf>
     23c:	00000593          	li	a1,0
     240:	00600513          	li	a0,6
     244:	0ad000ef          	jal	ra,af0 <neorv32_twi_setup>
     248:	00000413          	li	s0,0
     24c:	00001937          	lui	s2,0x1
     250:	000019b7          	lui	s3,0x1
     254:	00001a37          	lui	s4,0x1
     258:	00001ab7          	lui	s5,0x1
     25c:	00001b37          	lui	s6,0x1
     260:	00001bb7          	lui	s7,0x1
     264:	00001c37          	lui	s8,0x1
     268:	00001cb7          	lui	s9,0x1
     26c:	56890513          	addi	a0,s2,1384 # 1568 <__etext+0x194>
     270:	600000ef          	jal	ra,870 <neorv32_uart0_printf>
     274:	00100613          	li	a2,1
     278:	00800593          	li	a1,8
     27c:	00810513          	addi	a0,sp,8
     280:	788000ef          	jal	ra,a08 <neorv32_uart0_scan>
     284:	00050493          	mv	s1,a0
     288:	76498513          	addi	a0,s3,1892 # 1764 <__etext+0x390>
     28c:	5e4000ef          	jal	ra,870 <neorv32_uart0_printf>
     290:	fc048ee3          	beqz	s1,26c <main+0xec>
     294:	578a0593          	addi	a1,s4,1400 # 1578 <__etext+0x1a4>
     298:	00810513          	addi	a0,sp,8
     29c:	731000ef          	jal	ra,11cc <strcmp>
     2a0:	00051a63          	bnez	a0,2b4 <main+0x134>
     2a4:	00001537          	lui	a0,0x1
     2a8:	58050513          	addi	a0,a0,1408 # 1580 <__etext+0x1ac>
     2ac:	5c4000ef          	jal	ra,870 <neorv32_uart0_printf>
     2b0:	fbdff06f          	j	26c <main+0xec>
     2b4:	768a8593          	addi	a1,s5,1896 # 1768 <__etext+0x394>
     2b8:	00810513          	addi	a0,sp,8
     2bc:	711000ef          	jal	ra,11cc <strcmp>
     2c0:	00051863          	bnez	a0,2d0 <main+0x150>
     2c4:	099000ef          	jal	ra,b5c <neorv32_twi_generate_start>
     2c8:	00100413          	li	s0,1
     2cc:	fa1ff06f          	j	26c <main+0xec>
     2d0:	770b0593          	addi	a1,s6,1904 # 1770 <__etext+0x39c>
     2d4:	00810513          	addi	a0,sp,8
     2d8:	6f5000ef          	jal	ra,11cc <strcmp>
     2dc:	02051063          	bnez	a0,2fc <main+0x17c>
     2e0:	00041863          	bnez	s0,2f0 <main+0x170>
     2e4:	00001537          	lui	a0,0x1
     2e8:	77850513          	addi	a0,a0,1912 # 1778 <__etext+0x3a4>
     2ec:	fc1ff06f          	j	2ac <main+0x12c>
     2f0:	055000ef          	jal	ra,b44 <neorv32_twi_generate_stop>
     2f4:	00000413          	li	s0,0
     2f8:	f75ff06f          	j	26c <main+0xec>
     2fc:	798b8593          	addi	a1,s7,1944 # 1798 <__etext+0x3c4>
     300:	00810513          	addi	a0,sp,8
     304:	6c9000ef          	jal	ra,11cc <strcmp>
     308:	00051663          	bnez	a0,314 <main+0x194>
     30c:	054000ef          	jal	ra,360 <scan_twi>
     310:	f5dff06f          	j	26c <main+0xec>
     314:	7a0c0593          	addi	a1,s8,1952 # 17a0 <__etext+0x3cc>
     318:	00810513          	addi	a0,sp,8
     31c:	6b1000ef          	jal	ra,11cc <strcmp>
     320:	00051663          	bnez	a0,32c <main+0x1ac>
     324:	168000ef          	jal	ra,48c <set_speed>
     328:	f45ff06f          	j	26c <main+0xec>
     32c:	7a8c8593          	addi	a1,s9,1960 # 17a8 <__etext+0x3d4>
     330:	00810513          	addi	a0,sp,8
     334:	699000ef          	jal	ra,11cc <strcmp>
     338:	00051e63          	bnez	a0,354 <main+0x1d4>
     33c:	00041863          	bnez	s0,34c <main+0x1cc>
     340:	00001537          	lui	a0,0x1
     344:	7b050513          	addi	a0,a0,1968 # 17b0 <__etext+0x3dc>
     348:	f65ff06f          	j	2ac <main+0x12c>
     34c:	20c000ef          	jal	ra,558 <send_twi>
     350:	f1dff06f          	j	26c <main+0xec>
     354:	00001537          	lui	a0,0x1
     358:	7f050513          	addi	a0,a0,2032 # 17f0 <__etext+0x41c>
     35c:	f51ff06f          	j	2ac <main+0x12c>

00000360 <scan_twi>:
     360:	00001537          	lui	a0,0x1
     364:	fe010113          	addi	sp,sp,-32
     368:	3d450513          	addi	a0,a0,980 # 13d4 <__etext>
     36c:	00812c23          	sw	s0,24(sp)
     370:	00912a23          	sw	s1,20(sp)
     374:	01312623          	sw	s3,12(sp)
     378:	01412423          	sw	s4,8(sp)
     37c:	00112e23          	sw	ra,28(sp)
     380:	01212823          	sw	s2,16(sp)
     384:	00000493          	li	s1,0
     388:	4e8000ef          	jal	ra,870 <neorv32_uart0_printf>
     38c:	00000413          	li	s0,0
     390:	00001a37          	lui	s4,0x1
     394:	10000993          	li	s3,256
     398:	00148513          	addi	a0,s1,1
     39c:	0ff57513          	andi	a0,a0,255
     3a0:	7d4000ef          	jal	ra,b74 <neorv32_twi_start_trans>
     3a4:	00050913          	mv	s2,a0
     3a8:	79c000ef          	jal	ra,b44 <neorv32_twi_generate_stop>
     3ac:	0ff97513          	andi	a0,s2,255
     3b0:	00051c63          	bnez	a0,3c8 <scan_twi+0x68>
     3b4:	00048593          	mv	a1,s1
     3b8:	3eca0513          	addi	a0,s4,1004 # 13ec <__etext+0x18>
     3bc:	00140413          	addi	s0,s0,1
     3c0:	4b0000ef          	jal	ra,870 <neorv32_uart0_printf>
     3c4:	0ff47413          	andi	s0,s0,255
     3c8:	00248493          	addi	s1,s1,2
     3cc:	fd3496e3          	bne	s1,s3,398 <scan_twi+0x38>
     3d0:	02041663          	bnez	s0,3fc <scan_twi+0x9c>
     3d4:	01812403          	lw	s0,24(sp)
     3d8:	01c12083          	lw	ra,28(sp)
     3dc:	01412483          	lw	s1,20(sp)
     3e0:	01012903          	lw	s2,16(sp)
     3e4:	00c12983          	lw	s3,12(sp)
     3e8:	00812a03          	lw	s4,8(sp)
     3ec:	00001537          	lui	a0,0x1
     3f0:	41450513          	addi	a0,a0,1044 # 1414 <__etext+0x40>
     3f4:	02010113          	addi	sp,sp,32
     3f8:	4780006f          	j	870 <neorv32_uart0_printf>
     3fc:	01c12083          	lw	ra,28(sp)
     400:	01812403          	lw	s0,24(sp)
     404:	01412483          	lw	s1,20(sp)
     408:	01012903          	lw	s2,16(sp)
     40c:	00c12983          	lw	s3,12(sp)
     410:	00812a03          	lw	s4,8(sp)
     414:	02010113          	addi	sp,sp,32
     418:	00008067          	ret

0000041c <hexstr_to_uint>:
     41c:	00050713          	mv	a4,a0
     420:	0ff00893          	li	a7,255
     424:	00000513          	li	a0,0
     428:	00900313          	li	t1,9
     42c:	00500813          	li	a6,5
     430:	fff58593          	addi	a1,a1,-1
     434:	0ff5f593          	andi	a1,a1,255
     438:	01159463          	bne	a1,a7,440 <hexstr_to_uint+0x24>
     43c:	00008067          	ret
     440:	00074683          	lbu	a3,0(a4)
     444:	fd068793          	addi	a5,a3,-48
     448:	0ff7f613          	andi	a2,a5,255
     44c:	00c37a63          	bgeu	t1,a2,460 <hexstr_to_uint+0x44>
     450:	f9f68793          	addi	a5,a3,-97
     454:	0ff7f793          	andi	a5,a5,255
     458:	00f86e63          	bltu	a6,a5,474 <hexstr_to_uint+0x58>
     45c:	fa968793          	addi	a5,a3,-87
     460:	00259693          	slli	a3,a1,0x2
     464:	00d797b3          	sll	a5,a5,a3
     468:	00f50533          	add	a0,a0,a5
     46c:	00170713          	addi	a4,a4,1
     470:	fc1ff06f          	j	430 <hexstr_to_uint+0x14>
     474:	fbf68613          	addi	a2,a3,-65
     478:	0ff67613          	andi	a2,a2,255
     47c:	00000793          	li	a5,0
     480:	fec860e3          	bltu	a6,a2,460 <hexstr_to_uint+0x44>
     484:	fc968793          	addi	a5,a3,-55
     488:	fd9ff06f          	j	460 <hexstr_to_uint+0x44>

0000048c <set_speed>:
     48c:	00001537          	lui	a0,0x1
     490:	fe010113          	addi	sp,sp,-32
     494:	42850513          	addi	a0,a0,1064 # 1428 <__etext+0x54>
     498:	00112e23          	sw	ra,28(sp)
     49c:	00812c23          	sw	s0,24(sp)
     4a0:	3d0000ef          	jal	ra,870 <neorv32_uart0_printf>
     4a4:	00100613          	li	a2,1
     4a8:	00200593          	li	a1,2
     4ac:	00c10513          	addi	a0,sp,12
     4b0:	558000ef          	jal	ra,a08 <neorv32_uart0_scan>
     4b4:	00c10513          	addi	a0,sp,12
     4b8:	691000ef          	jal	ra,1348 <strlen>
     4bc:	0ff57593          	andi	a1,a0,255
     4c0:	00c10513          	addi	a0,sp,12
     4c4:	f59ff0ef          	jal	ra,41c <hexstr_to_uint>
     4c8:	0ff57713          	andi	a4,a0,255
     4cc:	00700793          	li	a5,7
     4d0:	06e7e863          	bltu	a5,a4,540 <set_speed+0xb4>
     4d4:	00351793          	slli	a5,a0,0x3
     4d8:	7f87f793          	andi	a5,a5,2040
     4dc:	0017e793          	ori	a5,a5,1
     4e0:	00050413          	mv	s0,a0
     4e4:	fa002823          	sw	zero,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     4e8:	00001537          	lui	a0,0x1
     4ec:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     4f0:	44c50513          	addi	a0,a0,1100 # 144c <__etext+0x78>
     4f4:	37c000ef          	jal	ra,870 <neorv32_uart0_printf>
     4f8:	0f847793          	andi	a5,s0,248
     4fc:	04079a63          	bnez	a5,550 <set_speed+0xc4>
     500:	0ff47413          	andi	s0,s0,255
     504:	000027b7          	lui	a5,0x2
     508:	82478793          	addi	a5,a5,-2012 # 1824 <CSWTCH.8>
     50c:	00141413          	slli	s0,s0,0x1
     510:	00878433          	add	s0,a5,s0
     514:	00045583          	lhu	a1,0(s0)
     518:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     51c:	405000ef          	jal	ra,1120 <__udivsi3>
     520:	00050593          	mv	a1,a0
     524:	00001537          	lui	a0,0x1
     528:	45450513          	addi	a0,a0,1108 # 1454 <__etext+0x80>
     52c:	344000ef          	jal	ra,870 <neorv32_uart0_printf>
     530:	01c12083          	lw	ra,28(sp)
     534:	01812403          	lw	s0,24(sp)
     538:	02010113          	addi	sp,sp,32
     53c:	00008067          	ret
     540:	00001537          	lui	a0,0x1
     544:	46c50513          	addi	a0,a0,1132 # 146c <__etext+0x98>
     548:	328000ef          	jal	ra,870 <neorv32_uart0_printf>
     54c:	fe5ff06f          	j	530 <set_speed+0xa4>
     550:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     554:	00100073          	ebreak

00000558 <send_twi>:
     558:	00001537          	lui	a0,0x1
     55c:	fe010113          	addi	sp,sp,-32
     560:	48450513          	addi	a0,a0,1156 # 1484 <__etext+0xb0>
     564:	00112e23          	sw	ra,28(sp)
     568:	00812c23          	sw	s0,24(sp)
     56c:	304000ef          	jal	ra,870 <neorv32_uart0_printf>
     570:	00100613          	li	a2,1
     574:	00300593          	li	a1,3
     578:	00c10513          	addi	a0,sp,12
     57c:	48c000ef          	jal	ra,a08 <neorv32_uart0_scan>
     580:	00c10513          	addi	a0,sp,12
     584:	5c5000ef          	jal	ra,1348 <strlen>
     588:	0ff57593          	andi	a1,a0,255
     58c:	00c10513          	addi	a0,sp,12
     590:	e8dff0ef          	jal	ra,41c <hexstr_to_uint>
     594:	0ff57513          	andi	a0,a0,255
     598:	580000ef          	jal	ra,b18 <neorv32_twi_trans>
     59c:	00050413          	mv	s0,a0
     5a0:	598000ef          	jal	ra,b38 <neorv32_twi_get_data>
     5a4:	00050593          	mv	a1,a0
     5a8:	00001537          	lui	a0,0x1
     5ac:	4a450513          	addi	a0,a0,1188 # 14a4 <__etext+0xd0>
     5b0:	2c0000ef          	jal	ra,870 <neorv32_uart0_printf>
     5b4:	00001537          	lui	a0,0x1
     5b8:	4b850513          	addi	a0,a0,1208 # 14b8 <__etext+0xe4>
     5bc:	0ff47413          	andi	s0,s0,255
     5c0:	2b0000ef          	jal	ra,870 <neorv32_uart0_printf>
     5c4:	02041063          	bnez	s0,5e4 <send_twi+0x8c>
     5c8:	00001537          	lui	a0,0x1
     5cc:	4c450513          	addi	a0,a0,1220 # 14c4 <__etext+0xf0>
     5d0:	2a0000ef          	jal	ra,870 <neorv32_uart0_printf>
     5d4:	01c12083          	lw	ra,28(sp)
     5d8:	01812403          	lw	s0,24(sp)
     5dc:	02010113          	addi	sp,sp,32
     5e0:	00008067          	ret
     5e4:	00001537          	lui	a0,0x1
     5e8:	4cc50513          	addi	a0,a0,1228 # 14cc <__etext+0xf8>
     5ec:	fe5ff06f          	j	5d0 <send_twi+0x78>

000005f0 <__neorv32_uart_itoa>:
     5f0:	fd010113          	addi	sp,sp,-48
     5f4:	02812423          	sw	s0,40(sp)
     5f8:	02912223          	sw	s1,36(sp)
     5fc:	03212023          	sw	s2,32(sp)
     600:	01312e23          	sw	s3,28(sp)
     604:	01412c23          	sw	s4,24(sp)
     608:	02112623          	sw	ra,44(sp)
     60c:	01512a23          	sw	s5,20(sp)
     610:	00002a37          	lui	s4,0x2
     614:	00050493          	mv	s1,a0
     618:	00058413          	mv	s0,a1
     61c:	00058523          	sb	zero,10(a1)
     620:	00000993          	li	s3,0
     624:	00410913          	addi	s2,sp,4
     628:	838a0a13          	addi	s4,s4,-1992 # 1838 <numbers.1>
     62c:	00a00593          	li	a1,10
     630:	00048513          	mv	a0,s1
     634:	335000ef          	jal	ra,1168 <__umodsi3>
     638:	00aa0533          	add	a0,s4,a0
     63c:	00054783          	lbu	a5,0(a0)
     640:	01390ab3          	add	s5,s2,s3
     644:	00048513          	mv	a0,s1
     648:	00fa8023          	sb	a5,0(s5)
     64c:	00a00593          	li	a1,10
     650:	2d1000ef          	jal	ra,1120 <__udivsi3>
     654:	00198993          	addi	s3,s3,1
     658:	00a00793          	li	a5,10
     65c:	00050493          	mv	s1,a0
     660:	fcf996e3          	bne	s3,a5,62c <__neorv32_uart_itoa+0x3c>
     664:	00090693          	mv	a3,s2
     668:	00900713          	li	a4,9
     66c:	03000613          	li	a2,48
     670:	0096c583          	lbu	a1,9(a3)
     674:	00070793          	mv	a5,a4
     678:	fff70713          	addi	a4,a4,-1
     67c:	01071713          	slli	a4,a4,0x10
     680:	01075713          	srli	a4,a4,0x10
     684:	00c59a63          	bne	a1,a2,698 <__neorv32_uart_itoa+0xa8>
     688:	000684a3          	sb	zero,9(a3)
     68c:	fff68693          	addi	a3,a3,-1
     690:	fe0710e3          	bnez	a4,670 <__neorv32_uart_itoa+0x80>
     694:	00000793          	li	a5,0
     698:	00f907b3          	add	a5,s2,a5
     69c:	00000593          	li	a1,0
     6a0:	0007c703          	lbu	a4,0(a5)
     6a4:	00070c63          	beqz	a4,6bc <__neorv32_uart_itoa+0xcc>
     6a8:	00158693          	addi	a3,a1,1
     6ac:	00b405b3          	add	a1,s0,a1
     6b0:	00e58023          	sb	a4,0(a1)
     6b4:	01069593          	slli	a1,a3,0x10
     6b8:	0105d593          	srli	a1,a1,0x10
     6bc:	fff78713          	addi	a4,a5,-1
     6c0:	02f91863          	bne	s2,a5,6f0 <__neorv32_uart_itoa+0x100>
     6c4:	00b40433          	add	s0,s0,a1
     6c8:	00040023          	sb	zero,0(s0)
     6cc:	02c12083          	lw	ra,44(sp)
     6d0:	02812403          	lw	s0,40(sp)
     6d4:	02412483          	lw	s1,36(sp)
     6d8:	02012903          	lw	s2,32(sp)
     6dc:	01c12983          	lw	s3,28(sp)
     6e0:	01812a03          	lw	s4,24(sp)
     6e4:	01412a83          	lw	s5,20(sp)
     6e8:	03010113          	addi	sp,sp,48
     6ec:	00008067          	ret
     6f0:	00070793          	mv	a5,a4
     6f4:	fadff06f          	j	6a0 <__neorv32_uart_itoa+0xb0>

000006f8 <__neorv32_uart_tohex>:
     6f8:	00002637          	lui	a2,0x2
     6fc:	00758693          	addi	a3,a1,7
     700:	00000713          	li	a4,0
     704:	84460613          	addi	a2,a2,-1980 # 1844 <symbols.0>
     708:	02000813          	li	a6,32
     70c:	00e557b3          	srl	a5,a0,a4
     710:	00f7f793          	andi	a5,a5,15
     714:	00f607b3          	add	a5,a2,a5
     718:	0007c783          	lbu	a5,0(a5)
     71c:	00470713          	addi	a4,a4,4
     720:	fff68693          	addi	a3,a3,-1
     724:	00f680a3          	sb	a5,1(a3)
     728:	ff0712e3          	bne	a4,a6,70c <__neorv32_uart_tohex+0x14>
     72c:	00058423          	sb	zero,8(a1)
     730:	00008067          	ret

00000734 <neorv32_uart0_available>:
     734:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     738:	01255513          	srli	a0,a0,0x12
     73c:	00157513          	andi	a0,a0,1
     740:	00008067          	ret

00000744 <neorv32_uart0_setup>:
     744:	ff010113          	addi	sp,sp,-16
     748:	00812423          	sw	s0,8(sp)
     74c:	00912223          	sw	s1,4(sp)
     750:	00112623          	sw	ra,12(sp)
     754:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     758:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     75c:	00058413          	mv	s0,a1
     760:	00151593          	slli	a1,a0,0x1
     764:	00078513          	mv	a0,a5
     768:	00060493          	mv	s1,a2
     76c:	1b5000ef          	jal	ra,1120 <__udivsi3>
     770:	01051513          	slli	a0,a0,0x10
     774:	000017b7          	lui	a5,0x1
     778:	01055513          	srli	a0,a0,0x10
     77c:	00000713          	li	a4,0
     780:	ffe78793          	addi	a5,a5,-2 # ffe <__neorv32_rte_debug_exc_handler+0x1be>
     784:	04a7e463          	bltu	a5,a0,7cc <neorv32_uart0_setup+0x88>
     788:	0034f793          	andi	a5,s1,3
     78c:	00347413          	andi	s0,s0,3
     790:	fff50513          	addi	a0,a0,-1
     794:	01479793          	slli	a5,a5,0x14
     798:	01641413          	slli	s0,s0,0x16
     79c:	00f567b3          	or	a5,a0,a5
     7a0:	0087e7b3          	or	a5,a5,s0
     7a4:	01871713          	slli	a4,a4,0x18
     7a8:	00c12083          	lw	ra,12(sp)
     7ac:	00812403          	lw	s0,8(sp)
     7b0:	00e7e7b3          	or	a5,a5,a4
     7b4:	10000737          	lui	a4,0x10000
     7b8:	00e7e7b3          	or	a5,a5,a4
     7bc:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     7c0:	00412483          	lw	s1,4(sp)
     7c4:	01010113          	addi	sp,sp,16
     7c8:	00008067          	ret
     7cc:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe476>
     7d0:	0fd6f693          	andi	a3,a3,253
     7d4:	00069a63          	bnez	a3,7e8 <neorv32_uart0_setup+0xa4>
     7d8:	00355513          	srli	a0,a0,0x3
     7dc:	00170713          	addi	a4,a4,1
     7e0:	0ff77713          	andi	a4,a4,255
     7e4:	fa1ff06f          	j	784 <neorv32_uart0_setup+0x40>
     7e8:	00155513          	srli	a0,a0,0x1
     7ec:	ff1ff06f          	j	7dc <neorv32_uart0_setup+0x98>

000007f0 <neorv32_uart0_putc>:
     7f0:	00040737          	lui	a4,0x40
     7f4:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     7f8:	00e7f7b3          	and	a5,a5,a4
     7fc:	fe079ce3          	bnez	a5,7f4 <neorv32_uart0_putc+0x4>
     800:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     804:	00008067          	ret

00000808 <neorv32_uart0_getc>:
     808:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     80c:	fe055ee3          	bgez	a0,808 <neorv32_uart0_getc>
     810:	0ff57513          	andi	a0,a0,255
     814:	00008067          	ret

00000818 <neorv32_uart0_print>:
     818:	ff010113          	addi	sp,sp,-16
     81c:	00812423          	sw	s0,8(sp)
     820:	01212023          	sw	s2,0(sp)
     824:	00112623          	sw	ra,12(sp)
     828:	00912223          	sw	s1,4(sp)
     82c:	00050413          	mv	s0,a0
     830:	00a00913          	li	s2,10
     834:	00044483          	lbu	s1,0(s0)
     838:	00140413          	addi	s0,s0,1
     83c:	00049e63          	bnez	s1,858 <neorv32_uart0_print+0x40>
     840:	00c12083          	lw	ra,12(sp)
     844:	00812403          	lw	s0,8(sp)
     848:	00412483          	lw	s1,4(sp)
     84c:	00012903          	lw	s2,0(sp)
     850:	01010113          	addi	sp,sp,16
     854:	00008067          	ret
     858:	01249663          	bne	s1,s2,864 <neorv32_uart0_print+0x4c>
     85c:	00d00513          	li	a0,13
     860:	f91ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     864:	00048513          	mv	a0,s1
     868:	f89ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     86c:	fc9ff06f          	j	834 <neorv32_uart0_print+0x1c>

00000870 <neorv32_uart0_printf>:
     870:	fa010113          	addi	sp,sp,-96
     874:	04f12a23          	sw	a5,84(sp)
     878:	04410793          	addi	a5,sp,68
     87c:	02812c23          	sw	s0,56(sp)
     880:	03212823          	sw	s2,48(sp)
     884:	03412423          	sw	s4,40(sp)
     888:	03512223          	sw	s5,36(sp)
     88c:	03612023          	sw	s6,32(sp)
     890:	01712e23          	sw	s7,28(sp)
     894:	01812c23          	sw	s8,24(sp)
     898:	01912a23          	sw	s9,20(sp)
     89c:	02112e23          	sw	ra,60(sp)
     8a0:	02912a23          	sw	s1,52(sp)
     8a4:	03312623          	sw	s3,44(sp)
     8a8:	00050413          	mv	s0,a0
     8ac:	04b12223          	sw	a1,68(sp)
     8b0:	04c12423          	sw	a2,72(sp)
     8b4:	04d12623          	sw	a3,76(sp)
     8b8:	04e12823          	sw	a4,80(sp)
     8bc:	05012c23          	sw	a6,88(sp)
     8c0:	05112e23          	sw	a7,92(sp)
     8c4:	00f12023          	sw	a5,0(sp)
     8c8:	02500a13          	li	s4,37
     8cc:	00a00a93          	li	s5,10
     8d0:	07300913          	li	s2,115
     8d4:	07500b13          	li	s6,117
     8d8:	07800b93          	li	s7,120
     8dc:	06300c13          	li	s8,99
     8e0:	06900c93          	li	s9,105
     8e4:	00044483          	lbu	s1,0(s0)
     8e8:	02049c63          	bnez	s1,920 <neorv32_uart0_printf+0xb0>
     8ec:	03c12083          	lw	ra,60(sp)
     8f0:	03812403          	lw	s0,56(sp)
     8f4:	03412483          	lw	s1,52(sp)
     8f8:	03012903          	lw	s2,48(sp)
     8fc:	02c12983          	lw	s3,44(sp)
     900:	02812a03          	lw	s4,40(sp)
     904:	02412a83          	lw	s5,36(sp)
     908:	02012b03          	lw	s6,32(sp)
     90c:	01c12b83          	lw	s7,28(sp)
     910:	01812c03          	lw	s8,24(sp)
     914:	01412c83          	lw	s9,20(sp)
     918:	06010113          	addi	sp,sp,96
     91c:	00008067          	ret
     920:	0d449863          	bne	s1,s4,9f0 <neorv32_uart0_printf+0x180>
     924:	00240993          	addi	s3,s0,2
     928:	00144403          	lbu	s0,1(s0)
     92c:	05240263          	beq	s0,s2,970 <neorv32_uart0_printf+0x100>
     930:	00896e63          	bltu	s2,s0,94c <neorv32_uart0_printf+0xdc>
     934:	05840c63          	beq	s0,s8,98c <neorv32_uart0_printf+0x11c>
     938:	07940663          	beq	s0,s9,9a4 <neorv32_uart0_printf+0x134>
     93c:	02500513          	li	a0,37
     940:	eb1ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     944:	00040513          	mv	a0,s0
     948:	0540006f          	j	99c <neorv32_uart0_printf+0x12c>
     94c:	09640663          	beq	s0,s6,9d8 <neorv32_uart0_printf+0x168>
     950:	ff7416e3          	bne	s0,s7,93c <neorv32_uart0_printf+0xcc>
     954:	00012783          	lw	a5,0(sp)
     958:	00410593          	addi	a1,sp,4
     95c:	0007a503          	lw	a0,0(a5)
     960:	00478713          	addi	a4,a5,4
     964:	00e12023          	sw	a4,0(sp)
     968:	d91ff0ef          	jal	ra,6f8 <__neorv32_uart_tohex>
     96c:	0640006f          	j	9d0 <neorv32_uart0_printf+0x160>
     970:	00012783          	lw	a5,0(sp)
     974:	0007a503          	lw	a0,0(a5)
     978:	00478713          	addi	a4,a5,4
     97c:	00e12023          	sw	a4,0(sp)
     980:	e99ff0ef          	jal	ra,818 <neorv32_uart0_print>
     984:	00098413          	mv	s0,s3
     988:	f5dff06f          	j	8e4 <neorv32_uart0_printf+0x74>
     98c:	00012783          	lw	a5,0(sp)
     990:	0007c503          	lbu	a0,0(a5)
     994:	00478713          	addi	a4,a5,4
     998:	00e12023          	sw	a4,0(sp)
     99c:	e55ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     9a0:	fe5ff06f          	j	984 <neorv32_uart0_printf+0x114>
     9a4:	00012783          	lw	a5,0(sp)
     9a8:	0007a403          	lw	s0,0(a5)
     9ac:	00478713          	addi	a4,a5,4
     9b0:	00e12023          	sw	a4,0(sp)
     9b4:	00045863          	bgez	s0,9c4 <neorv32_uart0_printf+0x154>
     9b8:	02d00513          	li	a0,45
     9bc:	40800433          	neg	s0,s0
     9c0:	e31ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     9c4:	00410593          	addi	a1,sp,4
     9c8:	00040513          	mv	a0,s0
     9cc:	c25ff0ef          	jal	ra,5f0 <__neorv32_uart_itoa>
     9d0:	00410513          	addi	a0,sp,4
     9d4:	fadff06f          	j	980 <neorv32_uart0_printf+0x110>
     9d8:	00012783          	lw	a5,0(sp)
     9dc:	00410593          	addi	a1,sp,4
     9e0:	00478713          	addi	a4,a5,4
     9e4:	0007a503          	lw	a0,0(a5)
     9e8:	00e12023          	sw	a4,0(sp)
     9ec:	fe1ff06f          	j	9cc <neorv32_uart0_printf+0x15c>
     9f0:	01549663          	bne	s1,s5,9fc <neorv32_uart0_printf+0x18c>
     9f4:	00d00513          	li	a0,13
     9f8:	df9ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     9fc:	00140993          	addi	s3,s0,1
     a00:	00048513          	mv	a0,s1
     a04:	f99ff06f          	j	99c <neorv32_uart0_printf+0x12c>

00000a08 <neorv32_uart0_scan>:
     a08:	fd010113          	addi	sp,sp,-48
     a0c:	02812423          	sw	s0,40(sp)
     a10:	02912223          	sw	s1,36(sp)
     a14:	01312e23          	sw	s3,28(sp)
     a18:	01412c23          	sw	s4,24(sp)
     a1c:	01512a23          	sw	s5,20(sp)
     a20:	01612823          	sw	s6,16(sp)
     a24:	01712623          	sw	s7,12(sp)
     a28:	01812423          	sw	s8,8(sp)
     a2c:	02112623          	sw	ra,44(sp)
     a30:	03212023          	sw	s2,32(sp)
     a34:	00050413          	mv	s0,a0
     a38:	00060993          	mv	s3,a2
     a3c:	00000493          	li	s1,0
     a40:	00800a93          	li	s5,8
     a44:	00d00b13          	li	s6,13
     a48:	05e00b93          	li	s7,94
     a4c:	fff58a13          	addi	s4,a1,-1
     a50:	00002c37          	lui	s8,0x2
     a54:	db5ff0ef          	jal	ra,808 <neorv32_uart0_getc>
     a58:	00050913          	mv	s2,a0
     a5c:	03551063          	bne	a0,s5,a7c <neorv32_uart0_scan+0x74>
     a60:	fe048ae3          	beqz	s1,a54 <neorv32_uart0_scan+0x4c>
     a64:	00098663          	beqz	s3,a70 <neorv32_uart0_scan+0x68>
     a68:	834c0513          	addi	a0,s8,-1996 # 1834 <CSWTCH.8+0x10>
     a6c:	dadff0ef          	jal	ra,818 <neorv32_uart0_print>
     a70:	fff40413          	addi	s0,s0,-1
     a74:	fff48493          	addi	s1,s1,-1
     a78:	fddff06f          	j	a54 <neorv32_uart0_scan+0x4c>
     a7c:	03650663          	beq	a0,s6,aa8 <neorv32_uart0_scan+0xa0>
     a80:	fe050793          	addi	a5,a0,-32
     a84:	0ff7f793          	andi	a5,a5,255
     a88:	fcfbe6e3          	bltu	s7,a5,a54 <neorv32_uart0_scan+0x4c>
     a8c:	fd44d4e3          	bge	s1,s4,a54 <neorv32_uart0_scan+0x4c>
     a90:	00098463          	beqz	s3,a98 <neorv32_uart0_scan+0x90>
     a94:	d5dff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     a98:	01240023          	sb	s2,0(s0)
     a9c:	00148493          	addi	s1,s1,1
     aa0:	00140413          	addi	s0,s0,1
     aa4:	fb1ff06f          	j	a54 <neorv32_uart0_scan+0x4c>
     aa8:	02c12083          	lw	ra,44(sp)
     aac:	00040023          	sb	zero,0(s0)
     ab0:	02812403          	lw	s0,40(sp)
     ab4:	02012903          	lw	s2,32(sp)
     ab8:	01c12983          	lw	s3,28(sp)
     abc:	01812a03          	lw	s4,24(sp)
     ac0:	01412a83          	lw	s5,20(sp)
     ac4:	01012b03          	lw	s6,16(sp)
     ac8:	00c12b83          	lw	s7,12(sp)
     acc:	00812c03          	lw	s8,8(sp)
     ad0:	00048513          	mv	a0,s1
     ad4:	02412483          	lw	s1,36(sp)
     ad8:	03010113          	addi	sp,sp,48
     adc:	00008067          	ret

00000ae0 <neorv32_twi_available>:
     ae0:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     ae4:	01455513          	srli	a0,a0,0x14
     ae8:	00157513          	andi	a0,a0,1
     aec:	00008067          	ret

00000af0 <neorv32_twi_setup>:
     af0:	00757513          	andi	a0,a0,7
     af4:	0015f593          	andi	a1,a1,1
     af8:	00351513          	slli	a0,a0,0x3
     afc:	00759593          	slli	a1,a1,0x7
     b00:	fb000793          	li	a5,-80
     b04:	00b56533          	or	a0,a0,a1
     b08:	0007a023          	sw	zero,0(a5)
     b0c:	00156513          	ori	a0,a0,1
     b10:	00a7a023          	sw	a0,0(a5)
     b14:	00008067          	ret

00000b18 <neorv32_twi_trans>:
     b18:	faa02a23          	sw	a0,-76(zero) # ffffffb4 <__ctr0_io_space_begin+0x1b4>
     b1c:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b20:	fe07cee3          	bltz	a5,b1c <neorv32_twi_trans+0x4>
     b24:	fb002503          	lw	a0,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b28:	01e55513          	srli	a0,a0,0x1e
     b2c:	00154513          	xori	a0,a0,1
     b30:	00157513          	andi	a0,a0,1
     b34:	00008067          	ret

00000b38 <neorv32_twi_get_data>:
     b38:	fb402503          	lw	a0,-76(zero) # ffffffb4 <__ctr0_io_space_begin+0x1b4>
     b3c:	0ff57513          	andi	a0,a0,255
     b40:	00008067          	ret

00000b44 <neorv32_twi_generate_stop>:
     b44:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b48:	0047e793          	ori	a5,a5,4
     b4c:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b50:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b54:	fe07cee3          	bltz	a5,b50 <neorv32_twi_generate_stop+0xc>
     b58:	00008067          	ret

00000b5c <neorv32_twi_generate_start>:
     b5c:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b60:	0027e793          	ori	a5,a5,2
     b64:	faf02823          	sw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b68:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b6c:	fe07cee3          	bltz	a5,b68 <neorv32_twi_generate_start+0xc>
     b70:	00008067          	ret

00000b74 <neorv32_twi_start_trans>:
     b74:	ff010113          	addi	sp,sp,-16
     b78:	00812423          	sw	s0,8(sp)
     b7c:	00050413          	mv	s0,a0
     b80:	00112623          	sw	ra,12(sp)
     b84:	fd9ff0ef          	jal	ra,b5c <neorv32_twi_generate_start>
     b88:	fa802a23          	sw	s0,-76(zero) # ffffffb4 <__ctr0_io_space_begin+0x1b4>
     b8c:	fb002783          	lw	a5,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b90:	fe07cee3          	bltz	a5,b8c <neorv32_twi_start_trans+0x18>
     b94:	fb002503          	lw	a0,-80(zero) # ffffffb0 <__ctr0_io_space_begin+0x1b0>
     b98:	00c12083          	lw	ra,12(sp)
     b9c:	00812403          	lw	s0,8(sp)
     ba0:	01e55513          	srli	a0,a0,0x1e
     ba4:	00154513          	xori	a0,a0,1
     ba8:	00157513          	andi	a0,a0,1
     bac:	01010113          	addi	sp,sp,16
     bb0:	00008067          	ret
     bb4:	0000                	unimp
     bb6:	0000                	unimp
     bb8:	0000                	unimp
     bba:	0000                	unimp
     bbc:	0000                	unimp
     bbe:	0000                	unimp

00000bc0 <__neorv32_rte_core>:
     bc0:	fc010113          	addi	sp,sp,-64
     bc4:	02112e23          	sw	ra,60(sp)
     bc8:	02512c23          	sw	t0,56(sp)
     bcc:	02612a23          	sw	t1,52(sp)
     bd0:	02712823          	sw	t2,48(sp)
     bd4:	02a12623          	sw	a0,44(sp)
     bd8:	02b12423          	sw	a1,40(sp)
     bdc:	02c12223          	sw	a2,36(sp)
     be0:	02d12023          	sw	a3,32(sp)
     be4:	00e12e23          	sw	a4,28(sp)
     be8:	00f12c23          	sw	a5,24(sp)
     bec:	01012a23          	sw	a6,20(sp)
     bf0:	01112823          	sw	a7,16(sp)
     bf4:	01c12623          	sw	t3,12(sp)
     bf8:	01d12423          	sw	t4,8(sp)
     bfc:	01e12223          	sw	t5,4(sp)
     c00:	01f12023          	sw	t6,0(sp)
     c04:	34102773          	csrr	a4,mepc
     c08:	34071073          	csrw	mscratch,a4
     c0c:	342027f3          	csrr	a5,mcause
     c10:	0807ca63          	bltz	a5,ca4 <__neorv32_rte_core+0xe4>
     c14:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e478>
     c18:	00300593          	li	a1,3
     c1c:	0036f693          	andi	a3,a3,3
     c20:	00270613          	addi	a2,a4,2
     c24:	00b69463          	bne	a3,a1,c2c <__neorv32_rte_core+0x6c>
     c28:	00470613          	addi	a2,a4,4
     c2c:	34161073          	csrw	mepc,a2
     c30:	00b00713          	li	a4,11
     c34:	04f77c63          	bgeu	a4,a5,c8c <__neorv32_rte_core+0xcc>
     c38:	000017b7          	lui	a5,0x1
     c3c:	e4078793          	addi	a5,a5,-448 # e40 <__neorv32_rte_debug_exc_handler>
     c40:	000780e7          	jalr	a5
     c44:	03c12083          	lw	ra,60(sp)
     c48:	03812283          	lw	t0,56(sp)
     c4c:	03412303          	lw	t1,52(sp)
     c50:	03012383          	lw	t2,48(sp)
     c54:	02c12503          	lw	a0,44(sp)
     c58:	02812583          	lw	a1,40(sp)
     c5c:	02412603          	lw	a2,36(sp)
     c60:	02012683          	lw	a3,32(sp)
     c64:	01c12703          	lw	a4,28(sp)
     c68:	01812783          	lw	a5,24(sp)
     c6c:	01412803          	lw	a6,20(sp)
     c70:	01012883          	lw	a7,16(sp)
     c74:	00c12e03          	lw	t3,12(sp)
     c78:	00812e83          	lw	t4,8(sp)
     c7c:	00412f03          	lw	t5,4(sp)
     c80:	00012f83          	lw	t6,0(sp)
     c84:	04010113          	addi	sp,sp,64
     c88:	30200073          	mret
     c8c:	00002737          	lui	a4,0x2
     c90:	00279793          	slli	a5,a5,0x2
     c94:	85870713          	addi	a4,a4,-1960 # 1858 <symbols.0+0x14>
     c98:	00e787b3          	add	a5,a5,a4
     c9c:	0007a783          	lw	a5,0(a5)
     ca0:	00078067          	jr	a5
     ca4:	80000737          	lui	a4,0x80000
     ca8:	ffd74713          	xori	a4,a4,-3
     cac:	00e787b3          	add	a5,a5,a4
     cb0:	01c00713          	li	a4,28
     cb4:	f8f762e3          	bltu	a4,a5,c38 <__neorv32_rte_core+0x78>
     cb8:	00002737          	lui	a4,0x2
     cbc:	00279793          	slli	a5,a5,0x2
     cc0:	88870713          	addi	a4,a4,-1912 # 1888 <symbols.0+0x44>
     cc4:	00e787b3          	add	a5,a5,a4
     cc8:	0007a783          	lw	a5,0(a5)
     ccc:	00078067          	jr	a5
     cd0:	800007b7          	lui	a5,0x80000
     cd4:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     cd8:	f69ff06f          	j	c40 <__neorv32_rte_core+0x80>
     cdc:	800007b7          	lui	a5,0x80000
     ce0:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     ce4:	f5dff06f          	j	c40 <__neorv32_rte_core+0x80>
     ce8:	800007b7          	lui	a5,0x80000
     cec:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     cf0:	f51ff06f          	j	c40 <__neorv32_rte_core+0x80>
     cf4:	800007b7          	lui	a5,0x80000
     cf8:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     cfc:	f45ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d00:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
     d04:	f3dff06f          	j	c40 <__neorv32_rte_core+0x80>
     d08:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
     d0c:	f35ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d10:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
     d14:	f2dff06f          	j	c40 <__neorv32_rte_core+0x80>
     d18:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
     d1c:	f25ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d20:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
     d24:	f1dff06f          	j	c40 <__neorv32_rte_core+0x80>
     d28:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
     d2c:	f15ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d30:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
     d34:	f0dff06f          	j	c40 <__neorv32_rte_core+0x80>
     d38:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
     d3c:	f05ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d40:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
     d44:	efdff06f          	j	c40 <__neorv32_rte_core+0x80>
     d48:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
     d4c:	ef5ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d50:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
     d54:	eedff06f          	j	c40 <__neorv32_rte_core+0x80>
     d58:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
     d5c:	ee5ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d60:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
     d64:	eddff06f          	j	c40 <__neorv32_rte_core+0x80>
     d68:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     d6c:	ed5ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d70:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     d74:	ecdff06f          	j	c40 <__neorv32_rte_core+0x80>
     d78:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     d7c:	ec5ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d80:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     d84:	ebdff06f          	j	c40 <__neorv32_rte_core+0x80>
     d88:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     d8c:	eb5ff06f          	j	c40 <__neorv32_rte_core+0x80>
     d90:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     d94:	eadff06f          	j	c40 <__neorv32_rte_core+0x80>
     d98:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     d9c:	ea5ff06f          	j	c40 <__neorv32_rte_core+0x80>
     da0:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     da4:	e9dff06f          	j	c40 <__neorv32_rte_core+0x80>
     da8:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     dac:	e95ff06f          	j	c40 <__neorv32_rte_core+0x80>
     db0:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     db4:	e8dff06f          	j	c40 <__neorv32_rte_core+0x80>
     db8:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     dbc:	e85ff06f          	j	c40 <__neorv32_rte_core+0x80>
     dc0:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     dc4:	e7dff06f          	j	c40 <__neorv32_rte_core+0x80>
     dc8:	0000                	unimp
     dca:	0000                	unimp
     dcc:	0000                	unimp
     dce:	0000                	unimp

00000dd0 <__neorv32_rte_print_hex_word>:
     dd0:	fe010113          	addi	sp,sp,-32
     dd4:	01212823          	sw	s2,16(sp)
     dd8:	00050913          	mv	s2,a0
     ddc:	00002537          	lui	a0,0x2
     de0:	00912a23          	sw	s1,20(sp)
     de4:	8fc50513          	addi	a0,a0,-1796 # 18fc <symbols.0+0xb8>
     de8:	000024b7          	lui	s1,0x2
     dec:	00812c23          	sw	s0,24(sp)
     df0:	01312623          	sw	s3,12(sp)
     df4:	00112e23          	sw	ra,28(sp)
     df8:	01c00413          	li	s0,28
     dfc:	a1dff0ef          	jal	ra,818 <neorv32_uart0_print>
     e00:	b7848493          	addi	s1,s1,-1160 # 1b78 <hex_symbols.0>
     e04:	ffc00993          	li	s3,-4
     e08:	008957b3          	srl	a5,s2,s0
     e0c:	00f7f793          	andi	a5,a5,15
     e10:	00f487b3          	add	a5,s1,a5
     e14:	0007c503          	lbu	a0,0(a5)
     e18:	ffc40413          	addi	s0,s0,-4
     e1c:	9d5ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     e20:	ff3414e3          	bne	s0,s3,e08 <__neorv32_rte_print_hex_word+0x38>
     e24:	01c12083          	lw	ra,28(sp)
     e28:	01812403          	lw	s0,24(sp)
     e2c:	01412483          	lw	s1,20(sp)
     e30:	01012903          	lw	s2,16(sp)
     e34:	00c12983          	lw	s3,12(sp)
     e38:	02010113          	addi	sp,sp,32
     e3c:	00008067          	ret

00000e40 <__neorv32_rte_debug_exc_handler>:
     e40:	ff010113          	addi	sp,sp,-16
     e44:	00112623          	sw	ra,12(sp)
     e48:	00812423          	sw	s0,8(sp)
     e4c:	00912223          	sw	s1,4(sp)
     e50:	8e5ff0ef          	jal	ra,734 <neorv32_uart0_available>
     e54:	1c050863          	beqz	a0,1024 <__neorv32_rte_debug_exc_handler+0x1e4>
     e58:	00002537          	lui	a0,0x2
     e5c:	90050513          	addi	a0,a0,-1792 # 1900 <symbols.0+0xbc>
     e60:	9b9ff0ef          	jal	ra,818 <neorv32_uart0_print>
     e64:	34202473          	csrr	s0,mcause
     e68:	00900713          	li	a4,9
     e6c:	00f47793          	andi	a5,s0,15
     e70:	03078493          	addi	s1,a5,48
     e74:	00f77463          	bgeu	a4,a5,e7c <__neorv32_rte_debug_exc_handler+0x3c>
     e78:	05778493          	addi	s1,a5,87
     e7c:	00b00793          	li	a5,11
     e80:	0087ee63          	bltu	a5,s0,e9c <__neorv32_rte_debug_exc_handler+0x5c>
     e84:	00002737          	lui	a4,0x2
     e88:	00241793          	slli	a5,s0,0x2
     e8c:	ac070713          	addi	a4,a4,-1344 # 1ac0 <symbols.0+0x27c>
     e90:	00e787b3          	add	a5,a5,a4
     e94:	0007a783          	lw	a5,0(a5)
     e98:	00078067          	jr	a5
     e9c:	800007b7          	lui	a5,0x80000
     ea0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     ea4:	14e40e63          	beq	s0,a4,1000 <__neorv32_rte_debug_exc_handler+0x1c0>
     ea8:	02876a63          	bltu	a4,s0,edc <__neorv32_rte_debug_exc_handler+0x9c>
     eac:	00378713          	addi	a4,a5,3
     eb0:	12e40c63          	beq	s0,a4,fe8 <__neorv32_rte_debug_exc_handler+0x1a8>
     eb4:	00778793          	addi	a5,a5,7
     eb8:	12f40e63          	beq	s0,a5,ff4 <__neorv32_rte_debug_exc_handler+0x1b4>
     ebc:	00002537          	lui	a0,0x2
     ec0:	a6050513          	addi	a0,a0,-1440 # 1a60 <symbols.0+0x21c>
     ec4:	955ff0ef          	jal	ra,818 <neorv32_uart0_print>
     ec8:	00040513          	mv	a0,s0
     ecc:	f05ff0ef          	jal	ra,dd0 <__neorv32_rte_print_hex_word>
     ed0:	00100793          	li	a5,1
     ed4:	08f40c63          	beq	s0,a5,f6c <__neorv32_rte_debug_exc_handler+0x12c>
     ed8:	0280006f          	j	f00 <__neorv32_rte_debug_exc_handler+0xc0>
     edc:	ff07c793          	xori	a5,a5,-16
     ee0:	00f407b3          	add	a5,s0,a5
     ee4:	00f00713          	li	a4,15
     ee8:	fcf76ae3          	bltu	a4,a5,ebc <__neorv32_rte_debug_exc_handler+0x7c>
     eec:	00002537          	lui	a0,0x2
     ef0:	a5050513          	addi	a0,a0,-1456 # 1a50 <symbols.0+0x20c>
     ef4:	925ff0ef          	jal	ra,818 <neorv32_uart0_print>
     ef8:	00048513          	mv	a0,s1
     efc:	8f5ff0ef          	jal	ra,7f0 <neorv32_uart0_putc>
     f00:	ffd47413          	andi	s0,s0,-3
     f04:	00500793          	li	a5,5
     f08:	06f40263          	beq	s0,a5,f6c <__neorv32_rte_debug_exc_handler+0x12c>
     f0c:	00002537          	lui	a0,0x2
     f10:	aa450513          	addi	a0,a0,-1372 # 1aa4 <symbols.0+0x260>
     f14:	905ff0ef          	jal	ra,818 <neorv32_uart0_print>
     f18:	34002573          	csrr	a0,mscratch
     f1c:	eb5ff0ef          	jal	ra,dd0 <__neorv32_rte_print_hex_word>
     f20:	00002537          	lui	a0,0x2
     f24:	aac50513          	addi	a0,a0,-1364 # 1aac <symbols.0+0x268>
     f28:	8f1ff0ef          	jal	ra,818 <neorv32_uart0_print>
     f2c:	34302573          	csrr	a0,mtval
     f30:	ea1ff0ef          	jal	ra,dd0 <__neorv32_rte_print_hex_word>
     f34:	00812403          	lw	s0,8(sp)
     f38:	00c12083          	lw	ra,12(sp)
     f3c:	00412483          	lw	s1,4(sp)
     f40:	00002537          	lui	a0,0x2
     f44:	ab850513          	addi	a0,a0,-1352 # 1ab8 <symbols.0+0x274>
     f48:	01010113          	addi	sp,sp,16
     f4c:	8cdff06f          	j	818 <neorv32_uart0_print>
     f50:	00002537          	lui	a0,0x2
     f54:	90850513          	addi	a0,a0,-1784 # 1908 <symbols.0+0xc4>
     f58:	8c1ff0ef          	jal	ra,818 <neorv32_uart0_print>
     f5c:	fb1ff06f          	j	f0c <__neorv32_rte_debug_exc_handler+0xcc>
     f60:	00002537          	lui	a0,0x2
     f64:	92850513          	addi	a0,a0,-1752 # 1928 <symbols.0+0xe4>
     f68:	8b1ff0ef          	jal	ra,818 <neorv32_uart0_print>
     f6c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     f70:	0a07d463          	bgez	a5,1018 <__neorv32_rte_debug_exc_handler+0x1d8>
     f74:	0017f793          	andi	a5,a5,1
     f78:	08078a63          	beqz	a5,100c <__neorv32_rte_debug_exc_handler+0x1cc>
     f7c:	00002537          	lui	a0,0x2
     f80:	a7850513          	addi	a0,a0,-1416 # 1a78 <symbols.0+0x234>
     f84:	fd5ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     f88:	00002537          	lui	a0,0x2
     f8c:	94450513          	addi	a0,a0,-1724 # 1944 <symbols.0+0x100>
     f90:	fc9ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     f94:	00002537          	lui	a0,0x2
     f98:	95850513          	addi	a0,a0,-1704 # 1958 <symbols.0+0x114>
     f9c:	fbdff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     fa0:	00002537          	lui	a0,0x2
     fa4:	96450513          	addi	a0,a0,-1692 # 1964 <symbols.0+0x120>
     fa8:	fb1ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     fac:	00002537          	lui	a0,0x2
     fb0:	97c50513          	addi	a0,a0,-1668 # 197c <symbols.0+0x138>
     fb4:	fb5ff06f          	j	f68 <__neorv32_rte_debug_exc_handler+0x128>
     fb8:	00002537          	lui	a0,0x2
     fbc:	99050513          	addi	a0,a0,-1648 # 1990 <symbols.0+0x14c>
     fc0:	f99ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     fc4:	00002537          	lui	a0,0x2
     fc8:	9ac50513          	addi	a0,a0,-1620 # 19ac <symbols.0+0x168>
     fcc:	f9dff06f          	j	f68 <__neorv32_rte_debug_exc_handler+0x128>
     fd0:	00002537          	lui	a0,0x2
     fd4:	9c050513          	addi	a0,a0,-1600 # 19c0 <symbols.0+0x17c>
     fd8:	f81ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     fdc:	00002537          	lui	a0,0x2
     fe0:	9e050513          	addi	a0,a0,-1568 # 19e0 <symbols.0+0x19c>
     fe4:	f75ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     fe8:	00002537          	lui	a0,0x2
     fec:	a0050513          	addi	a0,a0,-1536 # 1a00 <symbols.0+0x1bc>
     ff0:	f69ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
     ff4:	00002537          	lui	a0,0x2
     ff8:	a1c50513          	addi	a0,a0,-1508 # 1a1c <symbols.0+0x1d8>
     ffc:	f5dff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
    1000:	00002537          	lui	a0,0x2
    1004:	a3450513          	addi	a0,a0,-1484 # 1a34 <symbols.0+0x1f0>
    1008:	f51ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
    100c:	00002537          	lui	a0,0x2
    1010:	a8850513          	addi	a0,a0,-1400 # 1a88 <symbols.0+0x244>
    1014:	f45ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
    1018:	00002537          	lui	a0,0x2
    101c:	a9850513          	addi	a0,a0,-1384 # 1a98 <symbols.0+0x254>
    1020:	f39ff06f          	j	f58 <__neorv32_rte_debug_exc_handler+0x118>
    1024:	00c12083          	lw	ra,12(sp)
    1028:	00812403          	lw	s0,8(sp)
    102c:	00412483          	lw	s1,4(sp)
    1030:	01010113          	addi	sp,sp,16
    1034:	00008067          	ret

00001038 <neorv32_rte_exception_uninstall>:
    1038:	01f00793          	li	a5,31
    103c:	02a7e463          	bltu	a5,a0,1064 <neorv32_rte_exception_uninstall+0x2c>
    1040:	800007b7          	lui	a5,0x80000
    1044:	00078793          	mv	a5,a5
    1048:	00251513          	slli	a0,a0,0x2
    104c:	00a78533          	add	a0,a5,a0
    1050:	000017b7          	lui	a5,0x1
    1054:	e4078793          	addi	a5,a5,-448 # e40 <__neorv32_rte_debug_exc_handler>
    1058:	00f52023          	sw	a5,0(a0)
    105c:	00000513          	li	a0,0
    1060:	00008067          	ret
    1064:	00100513          	li	a0,1
    1068:	00008067          	ret

0000106c <neorv32_rte_setup>:
    106c:	ff010113          	addi	sp,sp,-16
    1070:	000017b7          	lui	a5,0x1
    1074:	00112623          	sw	ra,12(sp)
    1078:	00812423          	sw	s0,8(sp)
    107c:	00912223          	sw	s1,4(sp)
    1080:	bc078793          	addi	a5,a5,-1088 # bc0 <__neorv32_rte_core>
    1084:	30579073          	csrw	mtvec,a5
    1088:	00000413          	li	s0,0
    108c:	01d00493          	li	s1,29
    1090:	00040513          	mv	a0,s0
    1094:	00140413          	addi	s0,s0,1
    1098:	0ff47413          	andi	s0,s0,255
    109c:	f9dff0ef          	jal	ra,1038 <neorv32_rte_exception_uninstall>
    10a0:	fe9418e3          	bne	s0,s1,1090 <neorv32_rte_setup+0x24>
    10a4:	00c12083          	lw	ra,12(sp)
    10a8:	00812403          	lw	s0,8(sp)
    10ac:	00412483          	lw	s1,4(sp)
    10b0:	01010113          	addi	sp,sp,16
    10b4:	00008067          	ret

000010b8 <neorv32_rte_check_isa>:
    10b8:	30102673          	csrr	a2,misa
    10bc:	400007b7          	lui	a5,0x40000
    10c0:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe578>
    10c4:	00f67733          	and	a4,a2,a5
    10c8:	04f70463          	beq	a4,a5,1110 <neorv32_rte_check_isa+0x58>
    10cc:	fe010113          	addi	sp,sp,-32
    10d0:	00112e23          	sw	ra,28(sp)
    10d4:	02051463          	bnez	a0,10fc <neorv32_rte_check_isa+0x44>
    10d8:	400005b7          	lui	a1,0x40000
    10dc:	00002537          	lui	a0,0x2
    10e0:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe578>
    10e4:	af050513          	addi	a0,a0,-1296 # 1af0 <symbols.0+0x2ac>
    10e8:	f88ff0ef          	jal	ra,870 <neorv32_uart0_printf>
    10ec:	01c12083          	lw	ra,28(sp)
    10f0:	00100513          	li	a0,1
    10f4:	02010113          	addi	sp,sp,32
    10f8:	00008067          	ret
    10fc:	00c12623          	sw	a2,12(sp)
    1100:	e34ff0ef          	jal	ra,734 <neorv32_uart0_available>
    1104:	00c12603          	lw	a2,12(sp)
    1108:	fc0508e3          	beqz	a0,10d8 <neorv32_rte_check_isa+0x20>
    110c:	fe1ff06f          	j	10ec <neorv32_rte_check_isa+0x34>
    1110:	00000513          	li	a0,0
    1114:	00008067          	ret

00001118 <__divsi3>:
    1118:	06054063          	bltz	a0,1178 <__umodsi3+0x10>
    111c:	0605c663          	bltz	a1,1188 <__umodsi3+0x20>

00001120 <__udivsi3>:
    1120:	00058613          	mv	a2,a1
    1124:	00050593          	mv	a1,a0
    1128:	fff00513          	li	a0,-1
    112c:	02060c63          	beqz	a2,1164 <__udivsi3+0x44>
    1130:	00100693          	li	a3,1
    1134:	00b67a63          	bgeu	a2,a1,1148 <__udivsi3+0x28>
    1138:	00c05863          	blez	a2,1148 <__udivsi3+0x28>
    113c:	00161613          	slli	a2,a2,0x1
    1140:	00169693          	slli	a3,a3,0x1
    1144:	feb66ae3          	bltu	a2,a1,1138 <__udivsi3+0x18>
    1148:	00000513          	li	a0,0
    114c:	00c5e663          	bltu	a1,a2,1158 <__udivsi3+0x38>
    1150:	40c585b3          	sub	a1,a1,a2
    1154:	00d56533          	or	a0,a0,a3
    1158:	0016d693          	srli	a3,a3,0x1
    115c:	00165613          	srli	a2,a2,0x1
    1160:	fe0696e3          	bnez	a3,114c <__udivsi3+0x2c>
    1164:	00008067          	ret

00001168 <__umodsi3>:
    1168:	00008293          	mv	t0,ra
    116c:	fb5ff0ef          	jal	ra,1120 <__udivsi3>
    1170:	00058513          	mv	a0,a1
    1174:	00028067          	jr	t0
    1178:	40a00533          	neg	a0,a0
    117c:	00b04863          	bgtz	a1,118c <__umodsi3+0x24>
    1180:	40b005b3          	neg	a1,a1
    1184:	f9dff06f          	j	1120 <__udivsi3>
    1188:	40b005b3          	neg	a1,a1
    118c:	00008293          	mv	t0,ra
    1190:	f91ff0ef          	jal	ra,1120 <__udivsi3>
    1194:	40a00533          	neg	a0,a0
    1198:	00028067          	jr	t0

0000119c <__modsi3>:
    119c:	00008293          	mv	t0,ra
    11a0:	0005ca63          	bltz	a1,11b4 <__modsi3+0x18>
    11a4:	00054c63          	bltz	a0,11bc <__modsi3+0x20>
    11a8:	f79ff0ef          	jal	ra,1120 <__udivsi3>
    11ac:	00058513          	mv	a0,a1
    11b0:	00028067          	jr	t0
    11b4:	40b005b3          	neg	a1,a1
    11b8:	fe0558e3          	bgez	a0,11a8 <__modsi3+0xc>
    11bc:	40a00533          	neg	a0,a0
    11c0:	f61ff0ef          	jal	ra,1120 <__udivsi3>
    11c4:	40b00533          	neg	a0,a1
    11c8:	00028067          	jr	t0

000011cc <strcmp>:
    11cc:	00b56733          	or	a4,a0,a1
    11d0:	fff00393          	li	t2,-1
    11d4:	00377713          	andi	a4,a4,3
    11d8:	10071063          	bnez	a4,12d8 <strcmp+0x10c>
    11dc:	7f7f87b7          	lui	a5,0x7f7f8
    11e0:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7f63f7>
    11e4:	00052603          	lw	a2,0(a0)
    11e8:	0005a683          	lw	a3,0(a1)
    11ec:	00f672b3          	and	t0,a2,a5
    11f0:	00f66333          	or	t1,a2,a5
    11f4:	00f282b3          	add	t0,t0,a5
    11f8:	0062e2b3          	or	t0,t0,t1
    11fc:	10729263          	bne	t0,t2,1300 <strcmp+0x134>
    1200:	08d61663          	bne	a2,a3,128c <strcmp+0xc0>
    1204:	00452603          	lw	a2,4(a0)
    1208:	0045a683          	lw	a3,4(a1)
    120c:	00f672b3          	and	t0,a2,a5
    1210:	00f66333          	or	t1,a2,a5
    1214:	00f282b3          	add	t0,t0,a5
    1218:	0062e2b3          	or	t0,t0,t1
    121c:	0c729e63          	bne	t0,t2,12f8 <strcmp+0x12c>
    1220:	06d61663          	bne	a2,a3,128c <strcmp+0xc0>
    1224:	00852603          	lw	a2,8(a0)
    1228:	0085a683          	lw	a3,8(a1)
    122c:	00f672b3          	and	t0,a2,a5
    1230:	00f66333          	or	t1,a2,a5
    1234:	00f282b3          	add	t0,t0,a5
    1238:	0062e2b3          	or	t0,t0,t1
    123c:	0c729863          	bne	t0,t2,130c <strcmp+0x140>
    1240:	04d61663          	bne	a2,a3,128c <strcmp+0xc0>
    1244:	00c52603          	lw	a2,12(a0)
    1248:	00c5a683          	lw	a3,12(a1)
    124c:	00f672b3          	and	t0,a2,a5
    1250:	00f66333          	or	t1,a2,a5
    1254:	00f282b3          	add	t0,t0,a5
    1258:	0062e2b3          	or	t0,t0,t1
    125c:	0c729263          	bne	t0,t2,1320 <strcmp+0x154>
    1260:	02d61663          	bne	a2,a3,128c <strcmp+0xc0>
    1264:	01052603          	lw	a2,16(a0)
    1268:	0105a683          	lw	a3,16(a1)
    126c:	00f672b3          	and	t0,a2,a5
    1270:	00f66333          	or	t1,a2,a5
    1274:	00f282b3          	add	t0,t0,a5
    1278:	0062e2b3          	or	t0,t0,t1
    127c:	0a729c63          	bne	t0,t2,1334 <strcmp+0x168>
    1280:	01450513          	addi	a0,a0,20
    1284:	01458593          	addi	a1,a1,20
    1288:	f4d60ee3          	beq	a2,a3,11e4 <strcmp+0x18>
    128c:	01061713          	slli	a4,a2,0x10
    1290:	01069793          	slli	a5,a3,0x10
    1294:	00f71e63          	bne	a4,a5,12b0 <strcmp+0xe4>
    1298:	01065713          	srli	a4,a2,0x10
    129c:	0106d793          	srli	a5,a3,0x10
    12a0:	40f70533          	sub	a0,a4,a5
    12a4:	0ff57593          	andi	a1,a0,255
    12a8:	02059063          	bnez	a1,12c8 <strcmp+0xfc>
    12ac:	00008067          	ret
    12b0:	01075713          	srli	a4,a4,0x10
    12b4:	0107d793          	srli	a5,a5,0x10
    12b8:	40f70533          	sub	a0,a4,a5
    12bc:	0ff57593          	andi	a1,a0,255
    12c0:	00059463          	bnez	a1,12c8 <strcmp+0xfc>
    12c4:	00008067          	ret
    12c8:	0ff77713          	andi	a4,a4,255
    12cc:	0ff7f793          	andi	a5,a5,255
    12d0:	40f70533          	sub	a0,a4,a5
    12d4:	00008067          	ret
    12d8:	00054603          	lbu	a2,0(a0)
    12dc:	0005c683          	lbu	a3,0(a1)
    12e0:	00150513          	addi	a0,a0,1
    12e4:	00158593          	addi	a1,a1,1
    12e8:	00d61463          	bne	a2,a3,12f0 <strcmp+0x124>
    12ec:	fe0616e3          	bnez	a2,12d8 <strcmp+0x10c>
    12f0:	40d60533          	sub	a0,a2,a3
    12f4:	00008067          	ret
    12f8:	00450513          	addi	a0,a0,4
    12fc:	00458593          	addi	a1,a1,4
    1300:	fcd61ce3          	bne	a2,a3,12d8 <strcmp+0x10c>
    1304:	00000513          	li	a0,0
    1308:	00008067          	ret
    130c:	00850513          	addi	a0,a0,8
    1310:	00858593          	addi	a1,a1,8
    1314:	fcd612e3          	bne	a2,a3,12d8 <strcmp+0x10c>
    1318:	00000513          	li	a0,0
    131c:	00008067          	ret
    1320:	00c50513          	addi	a0,a0,12
    1324:	00c58593          	addi	a1,a1,12
    1328:	fad618e3          	bne	a2,a3,12d8 <strcmp+0x10c>
    132c:	00000513          	li	a0,0
    1330:	00008067          	ret
    1334:	01050513          	addi	a0,a0,16
    1338:	01058593          	addi	a1,a1,16
    133c:	f8d61ee3          	bne	a2,a3,12d8 <strcmp+0x10c>
    1340:	00000513          	li	a0,0
    1344:	00008067          	ret

00001348 <strlen>:
    1348:	00357793          	andi	a5,a0,3
    134c:	00050713          	mv	a4,a0
    1350:	04079c63          	bnez	a5,13a8 <strlen+0x60>
    1354:	7f7f86b7          	lui	a3,0x7f7f8
    1358:	f7f68693          	addi	a3,a3,-129 # 7f7f7f7f <__crt0_copy_data_src_begin+0x7f7f63f7>
    135c:	fff00593          	li	a1,-1
    1360:	00072603          	lw	a2,0(a4)
    1364:	00470713          	addi	a4,a4,4
    1368:	00d677b3          	and	a5,a2,a3
    136c:	00d787b3          	add	a5,a5,a3
    1370:	00c7e7b3          	or	a5,a5,a2
    1374:	00d7e7b3          	or	a5,a5,a3
    1378:	feb784e3          	beq	a5,a1,1360 <strlen+0x18>
    137c:	ffc74683          	lbu	a3,-4(a4)
    1380:	ffd74603          	lbu	a2,-3(a4)
    1384:	ffe74783          	lbu	a5,-2(a4)
    1388:	40a70733          	sub	a4,a4,a0
    138c:	04068063          	beqz	a3,13cc <strlen+0x84>
    1390:	02060a63          	beqz	a2,13c4 <strlen+0x7c>
    1394:	00f03533          	snez	a0,a5
    1398:	00e50533          	add	a0,a0,a4
    139c:	ffe50513          	addi	a0,a0,-2
    13a0:	00008067          	ret
    13a4:	fa0688e3          	beqz	a3,1354 <strlen+0xc>
    13a8:	00074783          	lbu	a5,0(a4)
    13ac:	00170713          	addi	a4,a4,1
    13b0:	00377693          	andi	a3,a4,3
    13b4:	fe0798e3          	bnez	a5,13a4 <strlen+0x5c>
    13b8:	40a70733          	sub	a4,a4,a0
    13bc:	fff70513          	addi	a0,a4,-1
    13c0:	00008067          	ret
    13c4:	ffd70513          	addi	a0,a4,-3
    13c8:	00008067          	ret
    13cc:	ffc70513          	addi	a0,a4,-4
    13d0:	00008067          	ret
