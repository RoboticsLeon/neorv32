
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
      e0:	58858593          	addi	a1,a1,1416 # 1664 <__crt0_copy_data_src_begin>
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
     18c:	00912223          	sw	s1,4(sp)
     190:	01212023          	sw	s2,0(sp)
     194:	579000ef          	jal	ra,f0c <neorv32_rte_setup>
     198:	00005537          	lui	a0,0x5
     19c:	00000613          	li	a2,0
     1a0:	00000593          	li	a1,0
     1a4:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x349c>
     1a8:	514000ef          	jal	ra,6bc <neorv32_uart0_setup>
     1ac:	1c0000ef          	jal	ra,36c <neorv32_neoled_available>
     1b0:	0a050263          	beqz	a0,254 <main+0xd4>
     1b4:	00001537          	lui	a0,0x1
     1b8:	00c00593          	li	a1,12
     1bc:	22050513          	addi	a0,a0,544 # 1220 <__etext+0x38>
     1c0:	618000ef          	jal	ra,7d8 <neorv32_uart0_printf>
     1c4:	208000ef          	jal	ra,3cc <neorv32_neoled_setup_ws2812>
     1c8:	35c000ef          	jal	ra,524 <neorv32_neoled_enable>
     1cc:	00000513          	li	a0,0
     1d0:	300000ef          	jal	ra,4d0 <neorv32_neoled_set_mode>
     1d4:	37c000ef          	jal	ra,550 <neorv32_neoled_get_buffer_size>
     1d8:	fd802603          	lw	a2,-40(zero) # ffffffd8 <__ctr0_io_space_begin+0x1d8>
     1dc:	00050593          	mv	a1,a0
     1e0:	00001537          	lui	a0,0x1
     1e4:	2f050513          	addi	a0,a0,752 # 12f0 <__etext+0x108>
     1e8:	5f0000ef          	jal	ra,7d8 <neorv32_uart0_printf>
     1ec:	00001537          	lui	a0,0x1
     1f0:	34c50513          	addi	a0,a0,844 # 134c <__etext+0x164>
     1f4:	5e4000ef          	jal	ra,7d8 <neorv32_uart0_printf>
     1f8:	00c00413          	li	s0,12
     1fc:	00000513          	li	a0,0
     200:	fff40413          	addi	s0,s0,-1
     204:	334000ef          	jal	ra,538 <neorv32_neoled_write_blocking>
     208:	fe041ae3          	bnez	s0,1fc <main+0x7c>
     20c:	1f400513          	li	a0,500
     210:	78c000ef          	jal	ra,99c <neorv32_cpu_delay_ms>
     214:	00001537          	lui	a0,0x1
     218:	36450513          	addi	a0,a0,868 # 1364 <__etext+0x17c>
     21c:	5bc000ef          	jal	ra,7d8 <neorv32_uart0_printf>
     220:	00040493          	mv	s1,s0
     224:	16840913          	addi	s2,s0,360
     228:	01000593          	li	a1,16
     22c:	00048513          	mv	a0,s1
     230:	04c000ef          	jal	ra,27c <hsv2rgb>
     234:	01e48493          	addi	s1,s1,30
     238:	300000ef          	jal	ra,538 <neorv32_neoled_write_blocking>
     23c:	ff2496e3          	bne	s1,s2,228 <main+0xa8>
     240:	2d0000ef          	jal	ra,510 <neorv32_neoled_strobe_blocking>
     244:	00a00513          	li	a0,10
     248:	00140413          	addi	s0,s0,1
     24c:	750000ef          	jal	ra,99c <neorv32_cpu_delay_ms>
     250:	fd1ff06f          	j	220 <main+0xa0>
     254:	00001537          	lui	a0,0x1
     258:	1fc50513          	addi	a0,a0,508 # 11fc <__etext+0x14>
     25c:	57c000ef          	jal	ra,7d8 <neorv32_uart0_printf>
     260:	00c12083          	lw	ra,12(sp)
     264:	00812403          	lw	s0,8(sp)
     268:	00412483          	lw	s1,4(sp)
     26c:	00012903          	lw	s2,0(sp)
     270:	00100513          	li	a0,1
     274:	01010113          	addi	sp,sp,16
     278:	00008067          	ret

0000027c <hsv2rgb>:
     27c:	ff010113          	addi	sp,sp,-16
     280:	00812423          	sw	s0,8(sp)
     284:	00058413          	mv	s0,a1
     288:	16800593          	li	a1,360
     28c:	00112623          	sw	ra,12(sp)
     290:	00912223          	sw	s1,4(sp)
     294:	01212023          	sw	s2,0(sp)
     298:	5f9000ef          	jal	ra,1090 <__modsi3>
     29c:	03c00593          	li	a1,60
     2a0:	00050913          	mv	s2,a0
     2a4:	569000ef          	jal	ra,100c <__divsi3>
     2a8:	03c00593          	li	a1,60
     2ac:	00050493          	mv	s1,a0
     2b0:	00090513          	mv	a0,s2
     2b4:	5dd000ef          	jal	ra,1090 <__modsi3>
     2b8:	00040593          	mv	a1,s0
     2bc:	49d000ef          	jal	ra,f58 <__mulsi3>
     2c0:	03c00593          	li	a1,60
     2c4:	549000ef          	jal	ra,100c <__divsi3>
     2c8:	00400793          	li	a5,4
     2cc:	0897ec63          	bltu	a5,s1,364 <hsv2rgb+0xe8>
     2d0:	00001737          	lui	a4,0x1
     2d4:	00249793          	slli	a5,s1,0x2
     2d8:	1e870713          	addi	a4,a4,488 # 11e8 <__etext>
     2dc:	00e787b3          	add	a5,a5,a4
     2e0:	0007a783          	lw	a5,0(a5)
     2e4:	00078067          	jr	a5
     2e8:	00050493          	mv	s1,a0
     2ec:	00040513          	mv	a0,s0
     2f0:	00000413          	li	s0,0
     2f4:	0140006f          	j	308 <hsv2rgb+0x8c>
     2f8:	40a407b3          	sub	a5,s0,a0
     2fc:	00000493          	li	s1,0
     300:	00040513          	mv	a0,s0
     304:	00078413          	mv	s0,a5
     308:	01051793          	slli	a5,a0,0x10
     30c:	00ff0537          	lui	a0,0xff0
     310:	00a7f7b3          	and	a5,a5,a0
     314:	00010537          	lui	a0,0x10
     318:	fff50513          	addi	a0,a0,-1 # ffff <__crt0_copy_data_src_begin+0xe99b>
     31c:	00841413          	slli	s0,s0,0x8
     320:	00a47433          	and	s0,s0,a0
     324:	00c12083          	lw	ra,12(sp)
     328:	0087e7b3          	or	a5,a5,s0
     32c:	00812403          	lw	s0,8(sp)
     330:	0ff4f513          	andi	a0,s1,255
     334:	00012903          	lw	s2,0(sp)
     338:	00412483          	lw	s1,4(sp)
     33c:	00f56533          	or	a0,a0,a5
     340:	01010113          	addi	sp,sp,16
     344:	00008067          	ret
     348:	40a40533          	sub	a0,s0,a0
     34c:	00040493          	mv	s1,s0
     350:	fa1ff06f          	j	2f0 <hsv2rgb+0x74>
     354:	00040493          	mv	s1,s0
     358:	00050413          	mv	s0,a0
     35c:	00000513          	li	a0,0
     360:	fa9ff06f          	j	308 <hsv2rgb+0x8c>
     364:	40a404b3          	sub	s1,s0,a0
     368:	ff5ff06f          	j	35c <hsv2rgb+0xe0>

0000036c <neorv32_neoled_available>:
     36c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     370:	01b55513          	srli	a0,a0,0x1b
     374:	00157513          	andi	a0,a0,1
     378:	00008067          	ret

0000037c <neorv32_neoled_setup>:
     37c:	01f007b7          	lui	a5,0x1f00
     380:	01469693          	slli	a3,a3,0x14
     384:	00f6f6b3          	and	a3,a3,a5
     388:	00351513          	slli	a0,a0,0x3
     38c:	000f87b7          	lui	a5,0xf8
     390:	00f61613          	slli	a2,a2,0xf
     394:	00f67633          	and	a2,a2,a5
     398:	03857513          	andi	a0,a0,56
     39c:	000087b7          	lui	a5,0x8
     3a0:	00d56533          	or	a0,a0,a3
     3a4:	00a59593          	slli	a1,a1,0xa
     3a8:	c0078793          	addi	a5,a5,-1024 # 7c00 <__crt0_copy_data_src_begin+0x659c>
     3ac:	00c56533          	or	a0,a0,a2
     3b0:	00f5f5b3          	and	a1,a1,a5
     3b4:	fd800713          	li	a4,-40
     3b8:	00b56533          	or	a0,a0,a1
     3bc:	00072023          	sw	zero,0(a4)
     3c0:	00156513          	ori	a0,a0,1
     3c4:	00a72023          	sw	a0,0(a4)
     3c8:	00008067          	ret

000003cc <neorv32_neoled_setup_ws2812>:
     3cc:	fa010113          	addi	sp,sp,-96
     3d0:	000015b7          	lui	a1,0x1
     3d4:	02000613          	li	a2,32
     3d8:	37c58593          	addi	a1,a1,892 # 137c <__etext+0x194>
     3dc:	01010513          	addi	a0,sp,16
     3e0:	04112e23          	sw	ra,92(sp)
     3e4:	04912a23          	sw	s1,84(sp)
     3e8:	05212823          	sw	s2,80(sp)
     3ec:	05412423          	sw	s4,72(sp)
     3f0:	05512223          	sw	s5,68(sp)
     3f4:	05612023          	sw	s6,64(sp)
     3f8:	03712e23          	sw	s7,60(sp)
     3fc:	03812c23          	sw	s8,56(sp)
     400:	04812c23          	sw	s0,88(sp)
     404:	05312623          	sw	s3,76(sp)
     408:	4b9000ef          	jal	ra,10c0 <memcpy>
     40c:	fe002583          	lw	a1,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     410:	77359537          	lui	a0,0x77359
     414:	40050513          	addi	a0,a0,1024 # 77359400 <__crt0_copy_data_src_begin+0x77357d9c>
     418:	3fd000ef          	jal	ra,1014 <__udivsi3>
     41c:	00001ab7          	lui	s5,0x1
     420:	00050a13          	mv	s4,a0
     424:	01010493          	addi	s1,sp,16
     428:	00000913          	li	s2,0
     42c:	960a8a93          	addi	s5,s5,-1696 # 960 <neorv32_uart0_printf+0x188>
     430:	31f00b93          	li	s7,799
     434:	01f00c13          	li	s8,31
     438:	00700b13          	li	s6,7
     43c:	0004a583          	lw	a1,0(s1)
     440:	000a0513          	mv	a0,s4
     444:	315000ef          	jal	ra,f58 <__mulsi3>
     448:	00050413          	mv	s0,a0
     44c:	00050593          	mv	a1,a0
     450:	000a8513          	mv	a0,s5
     454:	3c1000ef          	jal	ra,1014 <__udivsi3>
     458:	fff40793          	addi	a5,s0,-1
     45c:	00050993          	mv	s3,a0
     460:	00fbe463          	bltu	s7,a5,468 <neorv32_neoled_setup_ws2812+0x9c>
     464:	00ac7863          	bgeu	s8,a0,474 <neorv32_neoled_setup_ws2812+0xa8>
     468:	00190913          	addi	s2,s2,1
     46c:	00448493          	addi	s1,s1,4
     470:	fd6916e3          	bne	s2,s6,43c <neorv32_neoled_setup_ws2812+0x70>
     474:	00040593          	mv	a1,s0
     478:	64000513          	li	a0,1600
     47c:	399000ef          	jal	ra,1014 <__udivsi3>
     480:	00a12623          	sw	a0,12(sp)
     484:	00040593          	mv	a1,s0
     488:	32000513          	li	a0,800
     48c:	389000ef          	jal	ra,1014 <__udivsi3>
     490:	05812403          	lw	s0,88(sp)
     494:	00c12683          	lw	a3,12(sp)
     498:	05c12083          	lw	ra,92(sp)
     49c:	05412483          	lw	s1,84(sp)
     4a0:	04812a03          	lw	s4,72(sp)
     4a4:	04412a83          	lw	s5,68(sp)
     4a8:	04012b03          	lw	s6,64(sp)
     4ac:	03c12b83          	lw	s7,60(sp)
     4b0:	03812c03          	lw	s8,56(sp)
     4b4:	00050613          	mv	a2,a0
     4b8:	00098593          	mv	a1,s3
     4bc:	00090513          	mv	a0,s2
     4c0:	04c12983          	lw	s3,76(sp)
     4c4:	05012903          	lw	s2,80(sp)
     4c8:	06010113          	addi	sp,sp,96
     4cc:	eb1ff06f          	j	37c <neorv32_neoled_setup>

000004d0 <neorv32_neoled_set_mode>:
     4d0:	fd800713          	li	a4,-40
     4d4:	00072783          	lw	a5,0(a4)
     4d8:	00151513          	slli	a0,a0,0x1
     4dc:	00257513          	andi	a0,a0,2
     4e0:	ffd7f793          	andi	a5,a5,-3
     4e4:	00f56533          	or	a0,a0,a5
     4e8:	00a72023          	sw	a0,0(a4)
     4ec:	00008067          	ret

000004f0 <neorv32_neoled_strobe_nonblocking>:
     4f0:	fd800793          	li	a5,-40
     4f4:	0007a703          	lw	a4,0(a5)
     4f8:	00476693          	ori	a3,a4,4
     4fc:	00d7a023          	sw	a3,0(a5)
     500:	0007a223          	sw	zero,4(a5)
     504:	ffb77713          	andi	a4,a4,-5
     508:	00e7a023          	sw	a4,0(a5)
     50c:	00008067          	ret

00000510 <neorv32_neoled_strobe_blocking>:
     510:	40000737          	lui	a4,0x40000
     514:	fd802783          	lw	a5,-40(zero) # ffffffd8 <__ctr0_io_space_begin+0x1d8>
     518:	00e7f7b3          	and	a5,a5,a4
     51c:	fe079ce3          	bnez	a5,514 <neorv32_neoled_strobe_blocking+0x4>
     520:	fd1ff06f          	j	4f0 <neorv32_neoled_strobe_nonblocking>

00000524 <neorv32_neoled_enable>:
     524:	fd800713          	li	a4,-40
     528:	00072783          	lw	a5,0(a4) # 40000000 <__crt0_copy_data_src_begin+0x3fffe99c>
     52c:	0017e793          	ori	a5,a5,1
     530:	00f72023          	sw	a5,0(a4)
     534:	00008067          	ret

00000538 <neorv32_neoled_write_blocking>:
     538:	40000737          	lui	a4,0x40000
     53c:	fd802783          	lw	a5,-40(zero) # ffffffd8 <__ctr0_io_space_begin+0x1d8>
     540:	00e7f7b3          	and	a5,a5,a4
     544:	fe079ce3          	bnez	a5,53c <neorv32_neoled_write_blocking+0x4>
     548:	fca02e23          	sw	a0,-36(zero) # ffffffdc <__ctr0_io_space_begin+0x1dc>
     54c:	00008067          	ret

00000550 <neorv32_neoled_get_buffer_size>:
     550:	fd802783          	lw	a5,-40(zero) # ffffffd8 <__ctr0_io_space_begin+0x1d8>
     554:	00100513          	li	a0,1
     558:	0067d793          	srli	a5,a5,0x6
     55c:	00f7f793          	andi	a5,a5,15
     560:	00f51533          	sll	a0,a0,a5
     564:	00008067          	ret

00000568 <__neorv32_uart_itoa>:
     568:	fd010113          	addi	sp,sp,-48
     56c:	02812423          	sw	s0,40(sp)
     570:	02912223          	sw	s1,36(sp)
     574:	03212023          	sw	s2,32(sp)
     578:	01312e23          	sw	s3,28(sp)
     57c:	01412c23          	sw	s4,24(sp)
     580:	02112623          	sw	ra,44(sp)
     584:	01512a23          	sw	s5,20(sp)
     588:	00001a37          	lui	s4,0x1
     58c:	00050493          	mv	s1,a0
     590:	00058413          	mv	s0,a1
     594:	00058523          	sb	zero,10(a1)
     598:	00000993          	li	s3,0
     59c:	00410913          	addi	s2,sp,4
     5a0:	39ca0a13          	addi	s4,s4,924 # 139c <numbers.1>
     5a4:	00a00593          	li	a1,10
     5a8:	00048513          	mv	a0,s1
     5ac:	2b1000ef          	jal	ra,105c <__umodsi3>
     5b0:	00aa0533          	add	a0,s4,a0
     5b4:	00054783          	lbu	a5,0(a0)
     5b8:	01390ab3          	add	s5,s2,s3
     5bc:	00048513          	mv	a0,s1
     5c0:	00fa8023          	sb	a5,0(s5)
     5c4:	00a00593          	li	a1,10
     5c8:	24d000ef          	jal	ra,1014 <__udivsi3>
     5cc:	00198993          	addi	s3,s3,1
     5d0:	00a00793          	li	a5,10
     5d4:	00050493          	mv	s1,a0
     5d8:	fcf996e3          	bne	s3,a5,5a4 <__neorv32_uart_itoa+0x3c>
     5dc:	00090693          	mv	a3,s2
     5e0:	00900713          	li	a4,9
     5e4:	03000613          	li	a2,48
     5e8:	0096c583          	lbu	a1,9(a3)
     5ec:	00070793          	mv	a5,a4
     5f0:	fff70713          	addi	a4,a4,-1 # 3fffffff <__crt0_copy_data_src_begin+0x3fffe99b>
     5f4:	01071713          	slli	a4,a4,0x10
     5f8:	01075713          	srli	a4,a4,0x10
     5fc:	00c59a63          	bne	a1,a2,610 <__neorv32_uart_itoa+0xa8>
     600:	000684a3          	sb	zero,9(a3)
     604:	fff68693          	addi	a3,a3,-1
     608:	fe0710e3          	bnez	a4,5e8 <__neorv32_uart_itoa+0x80>
     60c:	00000793          	li	a5,0
     610:	00f907b3          	add	a5,s2,a5
     614:	00000593          	li	a1,0
     618:	0007c703          	lbu	a4,0(a5)
     61c:	00070c63          	beqz	a4,634 <__neorv32_uart_itoa+0xcc>
     620:	00158693          	addi	a3,a1,1
     624:	00b405b3          	add	a1,s0,a1
     628:	00e58023          	sb	a4,0(a1)
     62c:	01069593          	slli	a1,a3,0x10
     630:	0105d593          	srli	a1,a1,0x10
     634:	fff78713          	addi	a4,a5,-1
     638:	02f91863          	bne	s2,a5,668 <__neorv32_uart_itoa+0x100>
     63c:	00b40433          	add	s0,s0,a1
     640:	00040023          	sb	zero,0(s0)
     644:	02c12083          	lw	ra,44(sp)
     648:	02812403          	lw	s0,40(sp)
     64c:	02412483          	lw	s1,36(sp)
     650:	02012903          	lw	s2,32(sp)
     654:	01c12983          	lw	s3,28(sp)
     658:	01812a03          	lw	s4,24(sp)
     65c:	01412a83          	lw	s5,20(sp)
     660:	03010113          	addi	sp,sp,48
     664:	00008067          	ret
     668:	00070793          	mv	a5,a4
     66c:	fadff06f          	j	618 <__neorv32_uart_itoa+0xb0>

00000670 <__neorv32_uart_tohex>:
     670:	00001637          	lui	a2,0x1
     674:	00758693          	addi	a3,a1,7
     678:	00000713          	li	a4,0
     67c:	3a860613          	addi	a2,a2,936 # 13a8 <symbols.0>
     680:	02000813          	li	a6,32
     684:	00e557b3          	srl	a5,a0,a4
     688:	00f7f793          	andi	a5,a5,15
     68c:	00f607b3          	add	a5,a2,a5
     690:	0007c783          	lbu	a5,0(a5)
     694:	00470713          	addi	a4,a4,4
     698:	fff68693          	addi	a3,a3,-1
     69c:	00f680a3          	sb	a5,1(a3)
     6a0:	ff0712e3          	bne	a4,a6,684 <__neorv32_uart_tohex+0x14>
     6a4:	00058423          	sb	zero,8(a1)
     6a8:	00008067          	ret

000006ac <neorv32_uart0_available>:
     6ac:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     6b0:	01255513          	srli	a0,a0,0x12
     6b4:	00157513          	andi	a0,a0,1
     6b8:	00008067          	ret

000006bc <neorv32_uart0_setup>:
     6bc:	ff010113          	addi	sp,sp,-16
     6c0:	00812423          	sw	s0,8(sp)
     6c4:	00912223          	sw	s1,4(sp)
     6c8:	00112623          	sw	ra,12(sp)
     6cc:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     6d0:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     6d4:	00058413          	mv	s0,a1
     6d8:	00151593          	slli	a1,a0,0x1
     6dc:	00078513          	mv	a0,a5
     6e0:	00060493          	mv	s1,a2
     6e4:	131000ef          	jal	ra,1014 <__udivsi3>
     6e8:	01051513          	slli	a0,a0,0x10
     6ec:	000017b7          	lui	a5,0x1
     6f0:	01055513          	srli	a0,a0,0x10
     6f4:	00000713          	li	a4,0
     6f8:	ffe78793          	addi	a5,a5,-2 # ffe <__muldi3+0x82>
     6fc:	04a7e463          	bltu	a5,a0,744 <neorv32_uart0_setup+0x88>
     700:	0034f793          	andi	a5,s1,3
     704:	00347413          	andi	s0,s0,3
     708:	fff50513          	addi	a0,a0,-1
     70c:	01479793          	slli	a5,a5,0x14
     710:	01641413          	slli	s0,s0,0x16
     714:	00f567b3          	or	a5,a0,a5
     718:	0087e7b3          	or	a5,a5,s0
     71c:	01871713          	slli	a4,a4,0x18
     720:	00c12083          	lw	ra,12(sp)
     724:	00812403          	lw	s0,8(sp)
     728:	00e7e7b3          	or	a5,a5,a4
     72c:	10000737          	lui	a4,0x10000
     730:	00e7e7b3          	or	a5,a5,a4
     734:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     738:	00412483          	lw	s1,4(sp)
     73c:	01010113          	addi	sp,sp,16
     740:	00008067          	ret
     744:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe99a>
     748:	0fd6f693          	andi	a3,a3,253
     74c:	00069a63          	bnez	a3,760 <neorv32_uart0_setup+0xa4>
     750:	00355513          	srli	a0,a0,0x3
     754:	00170713          	addi	a4,a4,1
     758:	0ff77713          	andi	a4,a4,255
     75c:	fa1ff06f          	j	6fc <neorv32_uart0_setup+0x40>
     760:	00155513          	srli	a0,a0,0x1
     764:	ff1ff06f          	j	754 <neorv32_uart0_setup+0x98>

00000768 <neorv32_uart0_putc>:
     768:	00040737          	lui	a4,0x40
     76c:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     770:	00e7f7b3          	and	a5,a5,a4
     774:	fe079ce3          	bnez	a5,76c <neorv32_uart0_putc+0x4>
     778:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     77c:	00008067          	ret

00000780 <neorv32_uart0_print>:
     780:	ff010113          	addi	sp,sp,-16
     784:	00812423          	sw	s0,8(sp)
     788:	01212023          	sw	s2,0(sp)
     78c:	00112623          	sw	ra,12(sp)
     790:	00912223          	sw	s1,4(sp)
     794:	00050413          	mv	s0,a0
     798:	00a00913          	li	s2,10
     79c:	00044483          	lbu	s1,0(s0)
     7a0:	00140413          	addi	s0,s0,1
     7a4:	00049e63          	bnez	s1,7c0 <neorv32_uart0_print+0x40>
     7a8:	00c12083          	lw	ra,12(sp)
     7ac:	00812403          	lw	s0,8(sp)
     7b0:	00412483          	lw	s1,4(sp)
     7b4:	00012903          	lw	s2,0(sp)
     7b8:	01010113          	addi	sp,sp,16
     7bc:	00008067          	ret
     7c0:	01249663          	bne	s1,s2,7cc <neorv32_uart0_print+0x4c>
     7c4:	00d00513          	li	a0,13
     7c8:	fa1ff0ef          	jal	ra,768 <neorv32_uart0_putc>
     7cc:	00048513          	mv	a0,s1
     7d0:	f99ff0ef          	jal	ra,768 <neorv32_uart0_putc>
     7d4:	fc9ff06f          	j	79c <neorv32_uart0_print+0x1c>

000007d8 <neorv32_uart0_printf>:
     7d8:	fa010113          	addi	sp,sp,-96
     7dc:	04f12a23          	sw	a5,84(sp)
     7e0:	04410793          	addi	a5,sp,68
     7e4:	02812c23          	sw	s0,56(sp)
     7e8:	03212823          	sw	s2,48(sp)
     7ec:	03412423          	sw	s4,40(sp)
     7f0:	03512223          	sw	s5,36(sp)
     7f4:	03612023          	sw	s6,32(sp)
     7f8:	01712e23          	sw	s7,28(sp)
     7fc:	01812c23          	sw	s8,24(sp)
     800:	01912a23          	sw	s9,20(sp)
     804:	02112e23          	sw	ra,60(sp)
     808:	02912a23          	sw	s1,52(sp)
     80c:	03312623          	sw	s3,44(sp)
     810:	00050413          	mv	s0,a0
     814:	04b12223          	sw	a1,68(sp)
     818:	04c12423          	sw	a2,72(sp)
     81c:	04d12623          	sw	a3,76(sp)
     820:	04e12823          	sw	a4,80(sp)
     824:	05012c23          	sw	a6,88(sp)
     828:	05112e23          	sw	a7,92(sp)
     82c:	00f12023          	sw	a5,0(sp)
     830:	02500a13          	li	s4,37
     834:	00a00a93          	li	s5,10
     838:	07300913          	li	s2,115
     83c:	07500b13          	li	s6,117
     840:	07800b93          	li	s7,120
     844:	06300c13          	li	s8,99
     848:	06900c93          	li	s9,105
     84c:	00044483          	lbu	s1,0(s0)
     850:	02049c63          	bnez	s1,888 <neorv32_uart0_printf+0xb0>
     854:	03c12083          	lw	ra,60(sp)
     858:	03812403          	lw	s0,56(sp)
     85c:	03412483          	lw	s1,52(sp)
     860:	03012903          	lw	s2,48(sp)
     864:	02c12983          	lw	s3,44(sp)
     868:	02812a03          	lw	s4,40(sp)
     86c:	02412a83          	lw	s5,36(sp)
     870:	02012b03          	lw	s6,32(sp)
     874:	01c12b83          	lw	s7,28(sp)
     878:	01812c03          	lw	s8,24(sp)
     87c:	01412c83          	lw	s9,20(sp)
     880:	06010113          	addi	sp,sp,96
     884:	00008067          	ret
     888:	0d449863          	bne	s1,s4,958 <neorv32_uart0_printf+0x180>
     88c:	00240993          	addi	s3,s0,2
     890:	00144403          	lbu	s0,1(s0)
     894:	05240263          	beq	s0,s2,8d8 <neorv32_uart0_printf+0x100>
     898:	00896e63          	bltu	s2,s0,8b4 <neorv32_uart0_printf+0xdc>
     89c:	05840c63          	beq	s0,s8,8f4 <neorv32_uart0_printf+0x11c>
     8a0:	07940663          	beq	s0,s9,90c <neorv32_uart0_printf+0x134>
     8a4:	02500513          	li	a0,37
     8a8:	ec1ff0ef          	jal	ra,768 <neorv32_uart0_putc>
     8ac:	00040513          	mv	a0,s0
     8b0:	0540006f          	j	904 <neorv32_uart0_printf+0x12c>
     8b4:	09640663          	beq	s0,s6,940 <neorv32_uart0_printf+0x168>
     8b8:	ff7416e3          	bne	s0,s7,8a4 <neorv32_uart0_printf+0xcc>
     8bc:	00012783          	lw	a5,0(sp)
     8c0:	00410593          	addi	a1,sp,4
     8c4:	0007a503          	lw	a0,0(a5)
     8c8:	00478713          	addi	a4,a5,4
     8cc:	00e12023          	sw	a4,0(sp)
     8d0:	da1ff0ef          	jal	ra,670 <__neorv32_uart_tohex>
     8d4:	0640006f          	j	938 <neorv32_uart0_printf+0x160>
     8d8:	00012783          	lw	a5,0(sp)
     8dc:	0007a503          	lw	a0,0(a5)
     8e0:	00478713          	addi	a4,a5,4
     8e4:	00e12023          	sw	a4,0(sp)
     8e8:	e99ff0ef          	jal	ra,780 <neorv32_uart0_print>
     8ec:	00098413          	mv	s0,s3
     8f0:	f5dff06f          	j	84c <neorv32_uart0_printf+0x74>
     8f4:	00012783          	lw	a5,0(sp)
     8f8:	0007c503          	lbu	a0,0(a5)
     8fc:	00478713          	addi	a4,a5,4
     900:	00e12023          	sw	a4,0(sp)
     904:	e65ff0ef          	jal	ra,768 <neorv32_uart0_putc>
     908:	fe5ff06f          	j	8ec <neorv32_uart0_printf+0x114>
     90c:	00012783          	lw	a5,0(sp)
     910:	0007a403          	lw	s0,0(a5)
     914:	00478713          	addi	a4,a5,4
     918:	00e12023          	sw	a4,0(sp)
     91c:	00045863          	bgez	s0,92c <neorv32_uart0_printf+0x154>
     920:	02d00513          	li	a0,45
     924:	40800433          	neg	s0,s0
     928:	e41ff0ef          	jal	ra,768 <neorv32_uart0_putc>
     92c:	00410593          	addi	a1,sp,4
     930:	00040513          	mv	a0,s0
     934:	c35ff0ef          	jal	ra,568 <__neorv32_uart_itoa>
     938:	00410513          	addi	a0,sp,4
     93c:	fadff06f          	j	8e8 <neorv32_uart0_printf+0x110>
     940:	00012783          	lw	a5,0(sp)
     944:	00410593          	addi	a1,sp,4
     948:	00478713          	addi	a4,a5,4
     94c:	0007a503          	lw	a0,0(a5)
     950:	00e12023          	sw	a4,0(sp)
     954:	fe1ff06f          	j	934 <neorv32_uart0_printf+0x15c>
     958:	01549663          	bne	s1,s5,964 <neorv32_uart0_printf+0x18c>
     95c:	00d00513          	li	a0,13
     960:	e09ff0ef          	jal	ra,768 <neorv32_uart0_putc>
     964:	00140993          	addi	s3,s0,1
     968:	00048513          	mv	a0,s1
     96c:	f99ff06f          	j	904 <neorv32_uart0_printf+0x12c>

00000970 <neorv32_cpu_get_systime>:
     970:	ff010113          	addi	sp,sp,-16
     974:	c81026f3          	rdtimeh	a3
     978:	c0102773          	rdtime	a4
     97c:	c81027f3          	rdtimeh	a5
     980:	fed79ae3          	bne	a5,a3,974 <neorv32_cpu_get_systime+0x4>
     984:	00e12023          	sw	a4,0(sp)
     988:	00f12223          	sw	a5,4(sp)
     98c:	00012503          	lw	a0,0(sp)
     990:	00412583          	lw	a1,4(sp)
     994:	01010113          	addi	sp,sp,16
     998:	00008067          	ret

0000099c <neorv32_cpu_delay_ms>:
     99c:	fd010113          	addi	sp,sp,-48
     9a0:	00a12623          	sw	a0,12(sp)
     9a4:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     9a8:	3e800593          	li	a1,1000
     9ac:	02112623          	sw	ra,44(sp)
     9b0:	02812423          	sw	s0,40(sp)
     9b4:	02912223          	sw	s1,36(sp)
     9b8:	03212023          	sw	s2,32(sp)
     9bc:	01312e23          	sw	s3,28(sp)
     9c0:	654000ef          	jal	ra,1014 <__udivsi3>
     9c4:	00c12603          	lw	a2,12(sp)
     9c8:	00000693          	li	a3,0
     9cc:	00000593          	li	a1,0
     9d0:	5ac000ef          	jal	ra,f7c <__muldi3>
     9d4:	00050413          	mv	s0,a0
     9d8:	00058993          	mv	s3,a1
     9dc:	f95ff0ef          	jal	ra,970 <neorv32_cpu_get_systime>
     9e0:	00058913          	mv	s2,a1
     9e4:	00050493          	mv	s1,a0
     9e8:	f89ff0ef          	jal	ra,970 <neorv32_cpu_get_systime>
     9ec:	00b96663          	bltu	s2,a1,9f8 <neorv32_cpu_delay_ms+0x5c>
     9f0:	05259263          	bne	a1,s2,a34 <neorv32_cpu_delay_ms+0x98>
     9f4:	04a4f063          	bgeu	s1,a0,a34 <neorv32_cpu_delay_ms+0x98>
     9f8:	008484b3          	add	s1,s1,s0
     9fc:	0084b433          	sltu	s0,s1,s0
     a00:	01390933          	add	s2,s2,s3
     a04:	01240433          	add	s0,s0,s2
     a08:	f69ff0ef          	jal	ra,970 <neorv32_cpu_get_systime>
     a0c:	fe85eee3          	bltu	a1,s0,a08 <neorv32_cpu_delay_ms+0x6c>
     a10:	00b41463          	bne	s0,a1,a18 <neorv32_cpu_delay_ms+0x7c>
     a14:	fe956ae3          	bltu	a0,s1,a08 <neorv32_cpu_delay_ms+0x6c>
     a18:	02c12083          	lw	ra,44(sp)
     a1c:	02812403          	lw	s0,40(sp)
     a20:	02412483          	lw	s1,36(sp)
     a24:	02012903          	lw	s2,32(sp)
     a28:	01c12983          	lw	s3,28(sp)
     a2c:	03010113          	addi	sp,sp,48
     a30:	00008067          	ret
     a34:	01c99913          	slli	s2,s3,0x1c
     a38:	00445413          	srli	s0,s0,0x4
     a3c:	00896433          	or	s0,s2,s0

00000a40 <__neorv32_cpu_delay_ms_start>:
     a40:	00040a63          	beqz	s0,a54 <__neorv32_cpu_delay_ms_end>
     a44:	00040863          	beqz	s0,a54 <__neorv32_cpu_delay_ms_end>
     a48:	fff40413          	addi	s0,s0,-1
     a4c:	00000013          	nop
     a50:	ff1ff06f          	j	a40 <__neorv32_cpu_delay_ms_start>

00000a54 <__neorv32_cpu_delay_ms_end>:
     a54:	fc5ff06f          	j	a18 <neorv32_cpu_delay_ms+0x7c>
     a58:	0000                	unimp
     a5a:	0000                	unimp
     a5c:	0000                	unimp
     a5e:	0000                	unimp

00000a60 <__neorv32_rte_core>:
     a60:	fc010113          	addi	sp,sp,-64
     a64:	02112e23          	sw	ra,60(sp)
     a68:	02512c23          	sw	t0,56(sp)
     a6c:	02612a23          	sw	t1,52(sp)
     a70:	02712823          	sw	t2,48(sp)
     a74:	02a12623          	sw	a0,44(sp)
     a78:	02b12423          	sw	a1,40(sp)
     a7c:	02c12223          	sw	a2,36(sp)
     a80:	02d12023          	sw	a3,32(sp)
     a84:	00e12e23          	sw	a4,28(sp)
     a88:	00f12c23          	sw	a5,24(sp)
     a8c:	01012a23          	sw	a6,20(sp)
     a90:	01112823          	sw	a7,16(sp)
     a94:	01c12623          	sw	t3,12(sp)
     a98:	01d12423          	sw	t4,8(sp)
     a9c:	01e12223          	sw	t5,4(sp)
     aa0:	01f12023          	sw	t6,0(sp)
     aa4:	34102773          	csrr	a4,mepc
     aa8:	34071073          	csrw	mscratch,a4
     aac:	342027f3          	csrr	a5,mcause
     ab0:	0807ca63          	bltz	a5,b44 <__neorv32_rte_core+0xe4>
     ab4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e99c>
     ab8:	00300593          	li	a1,3
     abc:	0036f693          	andi	a3,a3,3
     ac0:	00270613          	addi	a2,a4,2
     ac4:	00b69463          	bne	a3,a1,acc <__neorv32_rte_core+0x6c>
     ac8:	00470613          	addi	a2,a4,4
     acc:	34161073          	csrw	mepc,a2
     ad0:	00b00713          	li	a4,11
     ad4:	04f77c63          	bgeu	a4,a5,b2c <__neorv32_rte_core+0xcc>
     ad8:	000017b7          	lui	a5,0x1
     adc:	ce078793          	addi	a5,a5,-800 # ce0 <__neorv32_rte_debug_exc_handler>
     ae0:	000780e7          	jalr	a5
     ae4:	03c12083          	lw	ra,60(sp)
     ae8:	03812283          	lw	t0,56(sp)
     aec:	03412303          	lw	t1,52(sp)
     af0:	03012383          	lw	t2,48(sp)
     af4:	02c12503          	lw	a0,44(sp)
     af8:	02812583          	lw	a1,40(sp)
     afc:	02412603          	lw	a2,36(sp)
     b00:	02012683          	lw	a3,32(sp)
     b04:	01c12703          	lw	a4,28(sp)
     b08:	01812783          	lw	a5,24(sp)
     b0c:	01412803          	lw	a6,20(sp)
     b10:	01012883          	lw	a7,16(sp)
     b14:	00c12e03          	lw	t3,12(sp)
     b18:	00812e83          	lw	t4,8(sp)
     b1c:	00412f03          	lw	t5,4(sp)
     b20:	00012f83          	lw	t6,0(sp)
     b24:	04010113          	addi	sp,sp,64
     b28:	30200073          	mret
     b2c:	00001737          	lui	a4,0x1
     b30:	00279793          	slli	a5,a5,0x2
     b34:	3bc70713          	addi	a4,a4,956 # 13bc <symbols.0+0x14>
     b38:	00e787b3          	add	a5,a5,a4
     b3c:	0007a783          	lw	a5,0(a5)
     b40:	00078067          	jr	a5
     b44:	80000737          	lui	a4,0x80000
     b48:	ffd74713          	xori	a4,a4,-3
     b4c:	00e787b3          	add	a5,a5,a4
     b50:	01c00713          	li	a4,28
     b54:	f8f762e3          	bltu	a4,a5,ad8 <__neorv32_rte_core+0x78>
     b58:	00001737          	lui	a4,0x1
     b5c:	00279793          	slli	a5,a5,0x2
     b60:	3ec70713          	addi	a4,a4,1004 # 13ec <symbols.0+0x44>
     b64:	00e787b3          	add	a5,a5,a4
     b68:	0007a783          	lw	a5,0(a5)
     b6c:	00078067          	jr	a5
     b70:	800007b7          	lui	a5,0x80000
     b74:	0007a783          	lw	a5,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     b78:	f69ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     b7c:	800007b7          	lui	a5,0x80000
     b80:	0047a783          	lw	a5,4(a5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     b84:	f5dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     b88:	800007b7          	lui	a5,0x80000
     b8c:	0087a783          	lw	a5,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     b90:	f51ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     b94:	800007b7          	lui	a5,0x80000
     b98:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     b9c:	f45ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     ba0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x10>
     ba4:	f3dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     ba8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x14>
     bac:	f35ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bb0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x18>
     bb4:	f2dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bb8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x1c>
     bbc:	f25ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bc0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x20>
     bc4:	f1dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bc8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x24>
     bcc:	f15ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bd0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x28>
     bd4:	f0dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bd8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x2c>
     bdc:	f05ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     be0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x30>
     be4:	efdff06f          	j	ae0 <__neorv32_rte_core+0x80>
     be8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x34>
     bec:	ef5ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bf0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x38>
     bf4:	eedff06f          	j	ae0 <__neorv32_rte_core+0x80>
     bf8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x3c>
     bfc:	ee5ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c00:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x40>
     c04:	eddff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c08:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x44>
     c0c:	ed5ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c10:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x48>
     c14:	ecdff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c18:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x4c>
     c1c:	ec5ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c20:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x50>
     c24:	ebdff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c28:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x54>
     c2c:	eb5ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c30:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x58>
     c34:	eadff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c38:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x5c>
     c3c:	ea5ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c40:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x60>
     c44:	e9dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c48:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x64>
     c4c:	e95ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c50:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x68>
     c54:	e8dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c58:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x6c>
     c5c:	e85ff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c60:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x70>
     c64:	e7dff06f          	j	ae0 <__neorv32_rte_core+0x80>
     c68:	0000                	unimp
     c6a:	0000                	unimp
     c6c:	0000                	unimp
     c6e:	0000                	unimp

00000c70 <__neorv32_rte_print_hex_word>:
     c70:	fe010113          	addi	sp,sp,-32
     c74:	01212823          	sw	s2,16(sp)
     c78:	00050913          	mv	s2,a0
     c7c:	00001537          	lui	a0,0x1
     c80:	00912a23          	sw	s1,20(sp)
     c84:	46050513          	addi	a0,a0,1120 # 1460 <symbols.0+0xb8>
     c88:	000014b7          	lui	s1,0x1
     c8c:	00812c23          	sw	s0,24(sp)
     c90:	01312623          	sw	s3,12(sp)
     c94:	00112e23          	sw	ra,28(sp)
     c98:	01c00413          	li	s0,28
     c9c:	ae5ff0ef          	jal	ra,780 <neorv32_uart0_print>
     ca0:	65448493          	addi	s1,s1,1620 # 1654 <hex_symbols.0>
     ca4:	ffc00993          	li	s3,-4
     ca8:	008957b3          	srl	a5,s2,s0
     cac:	00f7f793          	andi	a5,a5,15
     cb0:	00f487b3          	add	a5,s1,a5
     cb4:	0007c503          	lbu	a0,0(a5)
     cb8:	ffc40413          	addi	s0,s0,-4
     cbc:	aadff0ef          	jal	ra,768 <neorv32_uart0_putc>
     cc0:	ff3414e3          	bne	s0,s3,ca8 <__neorv32_rte_print_hex_word+0x38>
     cc4:	01c12083          	lw	ra,28(sp)
     cc8:	01812403          	lw	s0,24(sp)
     ccc:	01412483          	lw	s1,20(sp)
     cd0:	01012903          	lw	s2,16(sp)
     cd4:	00c12983          	lw	s3,12(sp)
     cd8:	02010113          	addi	sp,sp,32
     cdc:	00008067          	ret

00000ce0 <__neorv32_rte_debug_exc_handler>:
     ce0:	ff010113          	addi	sp,sp,-16
     ce4:	00112623          	sw	ra,12(sp)
     ce8:	00812423          	sw	s0,8(sp)
     cec:	00912223          	sw	s1,4(sp)
     cf0:	9bdff0ef          	jal	ra,6ac <neorv32_uart0_available>
     cf4:	1c050863          	beqz	a0,ec4 <__neorv32_rte_debug_exc_handler+0x1e4>
     cf8:	00001537          	lui	a0,0x1
     cfc:	46450513          	addi	a0,a0,1124 # 1464 <symbols.0+0xbc>
     d00:	a81ff0ef          	jal	ra,780 <neorv32_uart0_print>
     d04:	34202473          	csrr	s0,mcause
     d08:	00900713          	li	a4,9
     d0c:	00f47793          	andi	a5,s0,15
     d10:	03078493          	addi	s1,a5,48
     d14:	00f77463          	bgeu	a4,a5,d1c <__neorv32_rte_debug_exc_handler+0x3c>
     d18:	05778493          	addi	s1,a5,87
     d1c:	00b00793          	li	a5,11
     d20:	0087ee63          	bltu	a5,s0,d3c <__neorv32_rte_debug_exc_handler+0x5c>
     d24:	00001737          	lui	a4,0x1
     d28:	00241793          	slli	a5,s0,0x2
     d2c:	62470713          	addi	a4,a4,1572 # 1624 <symbols.0+0x27c>
     d30:	00e787b3          	add	a5,a5,a4
     d34:	0007a783          	lw	a5,0(a5)
     d38:	00078067          	jr	a5
     d3c:	800007b7          	lui	a5,0x80000
     d40:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     d44:	14e40e63          	beq	s0,a4,ea0 <__neorv32_rte_debug_exc_handler+0x1c0>
     d48:	02876a63          	bltu	a4,s0,d7c <__neorv32_rte_debug_exc_handler+0x9c>
     d4c:	00378713          	addi	a4,a5,3
     d50:	12e40c63          	beq	s0,a4,e88 <__neorv32_rte_debug_exc_handler+0x1a8>
     d54:	00778793          	addi	a5,a5,7
     d58:	12f40e63          	beq	s0,a5,e94 <__neorv32_rte_debug_exc_handler+0x1b4>
     d5c:	00001537          	lui	a0,0x1
     d60:	5c450513          	addi	a0,a0,1476 # 15c4 <symbols.0+0x21c>
     d64:	a1dff0ef          	jal	ra,780 <neorv32_uart0_print>
     d68:	00040513          	mv	a0,s0
     d6c:	f05ff0ef          	jal	ra,c70 <__neorv32_rte_print_hex_word>
     d70:	00100793          	li	a5,1
     d74:	08f40c63          	beq	s0,a5,e0c <__neorv32_rte_debug_exc_handler+0x12c>
     d78:	0280006f          	j	da0 <__neorv32_rte_debug_exc_handler+0xc0>
     d7c:	ff07c793          	xori	a5,a5,-16
     d80:	00f407b3          	add	a5,s0,a5
     d84:	00f00713          	li	a4,15
     d88:	fcf76ae3          	bltu	a4,a5,d5c <__neorv32_rte_debug_exc_handler+0x7c>
     d8c:	00001537          	lui	a0,0x1
     d90:	5b450513          	addi	a0,a0,1460 # 15b4 <symbols.0+0x20c>
     d94:	9edff0ef          	jal	ra,780 <neorv32_uart0_print>
     d98:	00048513          	mv	a0,s1
     d9c:	9cdff0ef          	jal	ra,768 <neorv32_uart0_putc>
     da0:	ffd47413          	andi	s0,s0,-3
     da4:	00500793          	li	a5,5
     da8:	06f40263          	beq	s0,a5,e0c <__neorv32_rte_debug_exc_handler+0x12c>
     dac:	00001537          	lui	a0,0x1
     db0:	60850513          	addi	a0,a0,1544 # 1608 <symbols.0+0x260>
     db4:	9cdff0ef          	jal	ra,780 <neorv32_uart0_print>
     db8:	34002573          	csrr	a0,mscratch
     dbc:	eb5ff0ef          	jal	ra,c70 <__neorv32_rte_print_hex_word>
     dc0:	00001537          	lui	a0,0x1
     dc4:	61050513          	addi	a0,a0,1552 # 1610 <symbols.0+0x268>
     dc8:	9b9ff0ef          	jal	ra,780 <neorv32_uart0_print>
     dcc:	34302573          	csrr	a0,mtval
     dd0:	ea1ff0ef          	jal	ra,c70 <__neorv32_rte_print_hex_word>
     dd4:	00812403          	lw	s0,8(sp)
     dd8:	00c12083          	lw	ra,12(sp)
     ddc:	00412483          	lw	s1,4(sp)
     de0:	00001537          	lui	a0,0x1
     de4:	61c50513          	addi	a0,a0,1564 # 161c <symbols.0+0x274>
     de8:	01010113          	addi	sp,sp,16
     dec:	995ff06f          	j	780 <neorv32_uart0_print>
     df0:	00001537          	lui	a0,0x1
     df4:	46c50513          	addi	a0,a0,1132 # 146c <symbols.0+0xc4>
     df8:	989ff0ef          	jal	ra,780 <neorv32_uart0_print>
     dfc:	fb1ff06f          	j	dac <__neorv32_rte_debug_exc_handler+0xcc>
     e00:	00001537          	lui	a0,0x1
     e04:	48c50513          	addi	a0,a0,1164 # 148c <symbols.0+0xe4>
     e08:	979ff0ef          	jal	ra,780 <neorv32_uart0_print>
     e0c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     e10:	0a07d463          	bgez	a5,eb8 <__neorv32_rte_debug_exc_handler+0x1d8>
     e14:	0017f793          	andi	a5,a5,1
     e18:	08078a63          	beqz	a5,eac <__neorv32_rte_debug_exc_handler+0x1cc>
     e1c:	00001537          	lui	a0,0x1
     e20:	5dc50513          	addi	a0,a0,1500 # 15dc <symbols.0+0x234>
     e24:	fd5ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e28:	00001537          	lui	a0,0x1
     e2c:	4a850513          	addi	a0,a0,1192 # 14a8 <symbols.0+0x100>
     e30:	fc9ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e34:	00001537          	lui	a0,0x1
     e38:	4bc50513          	addi	a0,a0,1212 # 14bc <symbols.0+0x114>
     e3c:	fbdff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e40:	00001537          	lui	a0,0x1
     e44:	4c850513          	addi	a0,a0,1224 # 14c8 <symbols.0+0x120>
     e48:	fb1ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e4c:	00001537          	lui	a0,0x1
     e50:	4e050513          	addi	a0,a0,1248 # 14e0 <symbols.0+0x138>
     e54:	fb5ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x128>
     e58:	00001537          	lui	a0,0x1
     e5c:	4f450513          	addi	a0,a0,1268 # 14f4 <symbols.0+0x14c>
     e60:	f99ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e64:	00001537          	lui	a0,0x1
     e68:	51050513          	addi	a0,a0,1296 # 1510 <symbols.0+0x168>
     e6c:	f9dff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x128>
     e70:	00001537          	lui	a0,0x1
     e74:	52450513          	addi	a0,a0,1316 # 1524 <symbols.0+0x17c>
     e78:	f81ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e7c:	00001537          	lui	a0,0x1
     e80:	54450513          	addi	a0,a0,1348 # 1544 <symbols.0+0x19c>
     e84:	f75ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e88:	00001537          	lui	a0,0x1
     e8c:	56450513          	addi	a0,a0,1380 # 1564 <symbols.0+0x1bc>
     e90:	f69ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     e94:	00001537          	lui	a0,0x1
     e98:	58050513          	addi	a0,a0,1408 # 1580 <symbols.0+0x1d8>
     e9c:	f5dff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     ea0:	00001537          	lui	a0,0x1
     ea4:	59850513          	addi	a0,a0,1432 # 1598 <symbols.0+0x1f0>
     ea8:	f51ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     eac:	00001537          	lui	a0,0x1
     eb0:	5ec50513          	addi	a0,a0,1516 # 15ec <symbols.0+0x244>
     eb4:	f45ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     eb8:	00001537          	lui	a0,0x1
     ebc:	5fc50513          	addi	a0,a0,1532 # 15fc <symbols.0+0x254>
     ec0:	f39ff06f          	j	df8 <__neorv32_rte_debug_exc_handler+0x118>
     ec4:	00c12083          	lw	ra,12(sp)
     ec8:	00812403          	lw	s0,8(sp)
     ecc:	00412483          	lw	s1,4(sp)
     ed0:	01010113          	addi	sp,sp,16
     ed4:	00008067          	ret

00000ed8 <neorv32_rte_exception_uninstall>:
     ed8:	01f00793          	li	a5,31
     edc:	02a7e463          	bltu	a5,a0,f04 <neorv32_rte_exception_uninstall+0x2c>
     ee0:	800007b7          	lui	a5,0x80000
     ee4:	00078793          	mv	a5,a5
     ee8:	00251513          	slli	a0,a0,0x2
     eec:	00a78533          	add	a0,a5,a0
     ef0:	000017b7          	lui	a5,0x1
     ef4:	ce078793          	addi	a5,a5,-800 # ce0 <__neorv32_rte_debug_exc_handler>
     ef8:	00f52023          	sw	a5,0(a0)
     efc:	00000513          	li	a0,0
     f00:	00008067          	ret
     f04:	00100513          	li	a0,1
     f08:	00008067          	ret

00000f0c <neorv32_rte_setup>:
     f0c:	ff010113          	addi	sp,sp,-16
     f10:	000017b7          	lui	a5,0x1
     f14:	00112623          	sw	ra,12(sp)
     f18:	00812423          	sw	s0,8(sp)
     f1c:	00912223          	sw	s1,4(sp)
     f20:	a6078793          	addi	a5,a5,-1440 # a60 <__neorv32_rte_core>
     f24:	30579073          	csrw	mtvec,a5
     f28:	00000413          	li	s0,0
     f2c:	01d00493          	li	s1,29
     f30:	00040513          	mv	a0,s0
     f34:	00140413          	addi	s0,s0,1
     f38:	0ff47413          	andi	s0,s0,255
     f3c:	f9dff0ef          	jal	ra,ed8 <neorv32_rte_exception_uninstall>
     f40:	fe9418e3          	bne	s0,s1,f30 <neorv32_rte_setup+0x24>
     f44:	00c12083          	lw	ra,12(sp)
     f48:	00812403          	lw	s0,8(sp)
     f4c:	00412483          	lw	s1,4(sp)
     f50:	01010113          	addi	sp,sp,16
     f54:	00008067          	ret

00000f58 <__mulsi3>:
     f58:	00050613          	mv	a2,a0
     f5c:	00000513          	li	a0,0
     f60:	0015f693          	andi	a3,a1,1
     f64:	00068463          	beqz	a3,f6c <__mulsi3+0x14>
     f68:	00c50533          	add	a0,a0,a2
     f6c:	0015d593          	srli	a1,a1,0x1
     f70:	00161613          	slli	a2,a2,0x1
     f74:	fe0596e3          	bnez	a1,f60 <__mulsi3+0x8>
     f78:	00008067          	ret

00000f7c <__muldi3>:
     f7c:	00050313          	mv	t1,a0
     f80:	ff010113          	addi	sp,sp,-16
     f84:	00060513          	mv	a0,a2
     f88:	00068893          	mv	a7,a3
     f8c:	00112623          	sw	ra,12(sp)
     f90:	00030613          	mv	a2,t1
     f94:	00050693          	mv	a3,a0
     f98:	00000713          	li	a4,0
     f9c:	00000793          	li	a5,0
     fa0:	00000813          	li	a6,0
     fa4:	0016fe13          	andi	t3,a3,1
     fa8:	00171e93          	slli	t4,a4,0x1
     fac:	000e0c63          	beqz	t3,fc4 <__muldi3+0x48>
     fb0:	01060e33          	add	t3,a2,a6
     fb4:	010e3833          	sltu	a6,t3,a6
     fb8:	00e787b3          	add	a5,a5,a4
     fbc:	00f807b3          	add	a5,a6,a5
     fc0:	000e0813          	mv	a6,t3
     fc4:	01f65713          	srli	a4,a2,0x1f
     fc8:	0016d693          	srli	a3,a3,0x1
     fcc:	00eee733          	or	a4,t4,a4
     fd0:	00161613          	slli	a2,a2,0x1
     fd4:	fc0698e3          	bnez	a3,fa4 <__muldi3+0x28>
     fd8:	00058663          	beqz	a1,fe4 <__muldi3+0x68>
     fdc:	f7dff0ef          	jal	ra,f58 <__mulsi3>
     fe0:	00a787b3          	add	a5,a5,a0
     fe4:	00088a63          	beqz	a7,ff8 <__muldi3+0x7c>
     fe8:	00030513          	mv	a0,t1
     fec:	00088593          	mv	a1,a7
     ff0:	f69ff0ef          	jal	ra,f58 <__mulsi3>
     ff4:	00f507b3          	add	a5,a0,a5
     ff8:	00c12083          	lw	ra,12(sp)
     ffc:	00080513          	mv	a0,a6
    1000:	00078593          	mv	a1,a5
    1004:	01010113          	addi	sp,sp,16
    1008:	00008067          	ret

0000100c <__divsi3>:
    100c:	06054063          	bltz	a0,106c <__umodsi3+0x10>
    1010:	0605c663          	bltz	a1,107c <__umodsi3+0x20>

00001014 <__udivsi3>:
    1014:	00058613          	mv	a2,a1
    1018:	00050593          	mv	a1,a0
    101c:	fff00513          	li	a0,-1
    1020:	02060c63          	beqz	a2,1058 <__udivsi3+0x44>
    1024:	00100693          	li	a3,1
    1028:	00b67a63          	bgeu	a2,a1,103c <__udivsi3+0x28>
    102c:	00c05863          	blez	a2,103c <__udivsi3+0x28>
    1030:	00161613          	slli	a2,a2,0x1
    1034:	00169693          	slli	a3,a3,0x1
    1038:	feb66ae3          	bltu	a2,a1,102c <__udivsi3+0x18>
    103c:	00000513          	li	a0,0
    1040:	00c5e663          	bltu	a1,a2,104c <__udivsi3+0x38>
    1044:	40c585b3          	sub	a1,a1,a2
    1048:	00d56533          	or	a0,a0,a3
    104c:	0016d693          	srli	a3,a3,0x1
    1050:	00165613          	srli	a2,a2,0x1
    1054:	fe0696e3          	bnez	a3,1040 <__udivsi3+0x2c>
    1058:	00008067          	ret

0000105c <__umodsi3>:
    105c:	00008293          	mv	t0,ra
    1060:	fb5ff0ef          	jal	ra,1014 <__udivsi3>
    1064:	00058513          	mv	a0,a1
    1068:	00028067          	jr	t0
    106c:	40a00533          	neg	a0,a0
    1070:	00b04863          	bgtz	a1,1080 <__umodsi3+0x24>
    1074:	40b005b3          	neg	a1,a1
    1078:	f9dff06f          	j	1014 <__udivsi3>
    107c:	40b005b3          	neg	a1,a1
    1080:	00008293          	mv	t0,ra
    1084:	f91ff0ef          	jal	ra,1014 <__udivsi3>
    1088:	40a00533          	neg	a0,a0
    108c:	00028067          	jr	t0

00001090 <__modsi3>:
    1090:	00008293          	mv	t0,ra
    1094:	0005ca63          	bltz	a1,10a8 <__modsi3+0x18>
    1098:	00054c63          	bltz	a0,10b0 <__modsi3+0x20>
    109c:	f79ff0ef          	jal	ra,1014 <__udivsi3>
    10a0:	00058513          	mv	a0,a1
    10a4:	00028067          	jr	t0
    10a8:	40b005b3          	neg	a1,a1
    10ac:	fe0558e3          	bgez	a0,109c <__modsi3+0xc>
    10b0:	40a00533          	neg	a0,a0
    10b4:	f61ff0ef          	jal	ra,1014 <__udivsi3>
    10b8:	40b00533          	neg	a0,a1
    10bc:	00028067          	jr	t0

000010c0 <memcpy>:
    10c0:	00a5c7b3          	xor	a5,a1,a0
    10c4:	0037f793          	andi	a5,a5,3
    10c8:	00c508b3          	add	a7,a0,a2
    10cc:	06079663          	bnez	a5,1138 <memcpy+0x78>
    10d0:	00300793          	li	a5,3
    10d4:	06c7f263          	bgeu	a5,a2,1138 <memcpy+0x78>
    10d8:	00357793          	andi	a5,a0,3
    10dc:	00050713          	mv	a4,a0
    10e0:	0c079a63          	bnez	a5,11b4 <memcpy+0xf4>
    10e4:	ffc8f613          	andi	a2,a7,-4
    10e8:	40e606b3          	sub	a3,a2,a4
    10ec:	02000793          	li	a5,32
    10f0:	02000293          	li	t0,32
    10f4:	06d7c263          	blt	a5,a3,1158 <memcpy+0x98>
    10f8:	00058693          	mv	a3,a1
    10fc:	00070793          	mv	a5,a4
    1100:	02c77863          	bgeu	a4,a2,1130 <memcpy+0x70>
    1104:	0006a803          	lw	a6,0(a3)
    1108:	00478793          	addi	a5,a5,4
    110c:	00468693          	addi	a3,a3,4
    1110:	ff07ae23          	sw	a6,-4(a5)
    1114:	fec7e8e3          	bltu	a5,a2,1104 <memcpy+0x44>
    1118:	fff60793          	addi	a5,a2,-1
    111c:	40e787b3          	sub	a5,a5,a4
    1120:	ffc7f793          	andi	a5,a5,-4
    1124:	00478793          	addi	a5,a5,4
    1128:	00f70733          	add	a4,a4,a5
    112c:	00f585b3          	add	a1,a1,a5
    1130:	01176863          	bltu	a4,a7,1140 <memcpy+0x80>
    1134:	00008067          	ret
    1138:	00050713          	mv	a4,a0
    113c:	ff157ce3          	bgeu	a0,a7,1134 <memcpy+0x74>
    1140:	0005c783          	lbu	a5,0(a1)
    1144:	00170713          	addi	a4,a4,1
    1148:	00158593          	addi	a1,a1,1
    114c:	fef70fa3          	sb	a5,-1(a4)
    1150:	ff1768e3          	bltu	a4,a7,1140 <memcpy+0x80>
    1154:	00008067          	ret
    1158:	0045a683          	lw	a3,4(a1)
    115c:	01c5a783          	lw	a5,28(a1)
    1160:	0005af83          	lw	t6,0(a1)
    1164:	0085af03          	lw	t5,8(a1)
    1168:	00c5ae83          	lw	t4,12(a1)
    116c:	0105ae03          	lw	t3,16(a1)
    1170:	0145a303          	lw	t1,20(a1)
    1174:	0185a803          	lw	a6,24(a1)
    1178:	00d72223          	sw	a3,4(a4)
    117c:	0205a683          	lw	a3,32(a1)
    1180:	01f72023          	sw	t6,0(a4)
    1184:	01e72423          	sw	t5,8(a4)
    1188:	01d72623          	sw	t4,12(a4)
    118c:	01c72823          	sw	t3,16(a4)
    1190:	00672a23          	sw	t1,20(a4)
    1194:	01072c23          	sw	a6,24(a4)
    1198:	00f72e23          	sw	a5,28(a4)
    119c:	02470713          	addi	a4,a4,36
    11a0:	40e607b3          	sub	a5,a2,a4
    11a4:	fed72e23          	sw	a3,-4(a4)
    11a8:	02458593          	addi	a1,a1,36
    11ac:	faf2c6e3          	blt	t0,a5,1158 <memcpy+0x98>
    11b0:	f49ff06f          	j	10f8 <memcpy+0x38>
    11b4:	0005c683          	lbu	a3,0(a1)
    11b8:	00170713          	addi	a4,a4,1
    11bc:	00377793          	andi	a5,a4,3
    11c0:	fed70fa3          	sb	a3,-1(a4)
    11c4:	00158593          	addi	a1,a1,1
    11c8:	f0078ee3          	beqz	a5,10e4 <memcpy+0x24>
    11cc:	0005c683          	lbu	a3,0(a1)
    11d0:	00170713          	addi	a4,a4,1
    11d4:	00377793          	andi	a5,a4,3
    11d8:	fed70fa3          	sb	a3,-1(a4)
    11dc:	00158593          	addi	a1,a1,1
    11e0:	fc079ae3          	bnez	a5,11b4 <memcpy+0xf4>
    11e4:	f01ff06f          	j	10e4 <memcpy+0x24>
