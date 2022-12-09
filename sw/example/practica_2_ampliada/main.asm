
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
      c8:	88018613          	addi	a2,gp,-1920 # 80000080 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00001597          	auipc	a1,0x1
      e0:	2a858593          	addi	a1,a1,680 # 1384 <__crt0_copy_data_src_begin>
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
     184:	ff010113          	addi	sp,sp,-16
     188:	00000613          	li	a2,0
     18c:	00000593          	li	a1,0
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x377c>
     194:	00112623          	sw	ra,12(sp)
     198:	580000ef          	jal	ra,718 <neorv32_uart0_setup>
     19c:	698000ef          	jal	ra,834 <neorv32_gpio_available>
     1a0:	02050063          	beqz	a0,1c0 <main+0x40>
     1a4:	4ed000ef          	jal	ra,e90 <neorv32_rte_setup>
     1a8:	00001537          	lui	a0,0x1
     1ac:	0c050513          	addi	a0,a0,192 # 10c0 <__etext+0x7c>
     1b0:	62c000ef          	jal	ra,7dc <neorv32_uart0_print>
     1b4:	028000ef          	jal	ra,1dc <control_teclado>
     1b8:	290000ef          	jal	ra,448 <maquina_estados>
     1bc:	ff9ff06f          	j	1b4 <main+0x34>
     1c0:	00001537          	lui	a0,0x1
     1c4:	09c50513          	addi	a0,a0,156 # 109c <__etext+0x58>
     1c8:	614000ef          	jal	ra,7dc <neorv32_uart0_print>
     1cc:	00c12083          	lw	ra,12(sp)
     1d0:	00100513          	li	a0,1
     1d4:	01010113          	addi	sp,sp,16
     1d8:	00008067          	ret

000001dc <control_teclado>:
     1dc:	fd010113          	addi	sp,sp,-48
     1e0:	01412c23          	sw	s4,24(sp)
     1e4:	80000a37          	lui	s4,0x80000
     1e8:	000a2503          	lw	a0,0(s4) # 80000000 <__ctr0_io_space_begin+0x80000200>
     1ec:	00000593          	li	a1,0
     1f0:	02112623          	sw	ra,44(sp)
     1f4:	1f057513          	andi	a0,a0,496
     1f8:	02812423          	sw	s0,40(sp)
     1fc:	02912223          	sw	s1,36(sp)
     200:	03212023          	sw	s2,32(sp)
     204:	01312e23          	sw	s3,28(sp)
     208:	01512a23          	sw	s5,20(sp)
     20c:	01612823          	sw	s6,16(sp)
     210:	01712623          	sw	s7,12(sp)
     214:	6bc000ef          	jal	ra,8d0 <neorv32_gpio_port_set>
     218:	6c8000ef          	jal	ra,8e0 <neorv32_gpio_port_get>
     21c:	00f57513          	andi	a0,a0,15
     220:	00f00793          	li	a5,15
     224:	000a0a13          	mv	s4,s4
     228:	00f51663          	bne	a0,a5,234 <control_teclado+0x58>
     22c:	800007b7          	lui	a5,0x80000
     230:	00078423          	sb	zero,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     234:	fff00413          	li	s0,-1
     238:	fff00493          	li	s1,-1
     23c:	00000993          	li	s3,0
     240:	80000b37          	lui	s6,0x80000
     244:	00100b93          	li	s7,1
     248:	00400a93          	li	s5,4
     24c:	000a2583          	lw	a1,0(s4)
     250:	00000913          	li	s2,0
     254:	00f5e513          	ori	a0,a1,15
     258:	41f5d593          	srai	a1,a1,0x1f
     25c:	674000ef          	jal	ra,8d0 <neorv32_gpio_port_set>
     260:	00098513          	mv	a0,s3
     264:	610000ef          	jal	ra,874 <neorv32_gpio_pin_clr>
     268:	00500513          	li	a0,5
     26c:	6c8000ef          	jal	ra,934 <neorv32_cpu_delay_ms>
     270:	00098513          	mv	a0,s3
     274:	634000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     278:	00090513          	mv	a0,s2
     27c:	62c000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     280:	00051e63          	bnez	a0,29c <control_teclado+0xc0>
     284:	008b0793          	addi	a5,s6,8 # 80000008 <__ctr0_io_space_begin+0x80000208>
     288:	0007c703          	lbu	a4,0(a5)
     28c:	00071863          	bnez	a4,29c <control_teclado+0xc0>
     290:	01778023          	sb	s7,0(a5)
     294:	00098413          	mv	s0,s3
     298:	00090493          	mv	s1,s2
     29c:	00190913          	addi	s2,s2,1
     2a0:	fd591ce3          	bne	s2,s5,278 <control_teclado+0x9c>
     2a4:	00198993          	addi	s3,s3,1
     2a8:	fb2992e3          	bne	s3,s2,24c <control_teclado+0x70>
     2ac:	00200793          	li	a5,2
     2b0:	12f48263          	beq	s1,a5,3d4 <control_teclado+0x1f8>
     2b4:	0297ce63          	blt	a5,s1,2f0 <control_teclado+0x114>
     2b8:	06048063          	beqz	s1,318 <control_teclado+0x13c>
     2bc:	00100713          	li	a4,1
     2c0:	0ce48663          	beq	s1,a4,38c <control_teclado+0x1b0>
     2c4:	02c12083          	lw	ra,44(sp)
     2c8:	02812403          	lw	s0,40(sp)
     2cc:	02412483          	lw	s1,36(sp)
     2d0:	02012903          	lw	s2,32(sp)
     2d4:	01c12983          	lw	s3,28(sp)
     2d8:	01812a03          	lw	s4,24(sp)
     2dc:	01412a83          	lw	s5,20(sp)
     2e0:	01012b03          	lw	s6,16(sp)
     2e4:	00c12b83          	lw	s7,12(sp)
     2e8:	03010113          	addi	sp,sp,48
     2ec:	00008067          	ret
     2f0:	00300713          	li	a4,3
     2f4:	fce498e3          	bne	s1,a4,2c4 <control_teclado+0xe8>
     2f8:	14f40263          	beq	s0,a5,43c <control_teclado+0x260>
     2fc:	1287c263          	blt	a5,s0,420 <control_teclado+0x244>
     300:	12040863          	beqz	s0,430 <control_teclado+0x254>
     304:	00100793          	li	a5,1
     308:	faf41ee3          	bne	s0,a5,2c4 <control_teclado+0xe8>
     30c:	00001537          	lui	a0,0x1
     310:	07850513          	addi	a0,a0,120 # 1078 <__etext+0x34>
     314:	0400006f          	j	354 <control_teclado+0x178>
     318:	06f40463          	beq	s0,a5,380 <control_teclado+0x1a4>
     31c:	0087ce63          	blt	a5,s0,338 <control_teclado+0x15c>
     320:	02040663          	beqz	s0,34c <control_teclado+0x170>
     324:	00100793          	li	a5,1
     328:	f8f41ee3          	bne	s0,a5,2c4 <control_teclado+0xe8>
     32c:	00001537          	lui	a0,0x1
     330:	04850513          	addi	a0,a0,72 # 1048 <__etext+0x4>
     334:	0200006f          	j	354 <control_teclado+0x178>
     338:	00300793          	li	a5,3
     33c:	f8f414e3          	bne	s0,a5,2c4 <control_teclado+0xe8>
     340:	00001537          	lui	a0,0x1
     344:	05050513          	addi	a0,a0,80 # 1050 <__etext+0xc>
     348:	00c0006f          	j	354 <control_teclado+0x178>
     34c:	00001537          	lui	a0,0x1
     350:	04450513          	addi	a0,a0,68 # 1044 <__etext>
     354:	02812403          	lw	s0,40(sp)
     358:	02c12083          	lw	ra,44(sp)
     35c:	02412483          	lw	s1,36(sp)
     360:	02012903          	lw	s2,32(sp)
     364:	01c12983          	lw	s3,28(sp)
     368:	01812a03          	lw	s4,24(sp)
     36c:	01412a83          	lw	s5,20(sp)
     370:	01012b03          	lw	s6,16(sp)
     374:	00c12b83          	lw	s7,12(sp)
     378:	03010113          	addi	sp,sp,48
     37c:	4600006f          	j	7dc <neorv32_uart0_print>
     380:	00001537          	lui	a0,0x1
     384:	04c50513          	addi	a0,a0,76 # 104c <__etext+0x8>
     388:	fcdff06f          	j	354 <control_teclado+0x178>
     38c:	02f40e63          	beq	s0,a5,3c8 <control_teclado+0x1ec>
     390:	0087cc63          	blt	a5,s0,3a8 <control_teclado+0x1cc>
     394:	02040463          	beqz	s0,3bc <control_teclado+0x1e0>
     398:	f29416e3          	bne	s0,s1,2c4 <control_teclado+0xe8>
     39c:	00001537          	lui	a0,0x1
     3a0:	05850513          	addi	a0,a0,88 # 1058 <__etext+0x14>
     3a4:	fb1ff06f          	j	354 <control_teclado+0x178>
     3a8:	00300793          	li	a5,3
     3ac:	f0f41ce3          	bne	s0,a5,2c4 <control_teclado+0xe8>
     3b0:	00001537          	lui	a0,0x1
     3b4:	06050513          	addi	a0,a0,96 # 1060 <__etext+0x1c>
     3b8:	f9dff06f          	j	354 <control_teclado+0x178>
     3bc:	00001537          	lui	a0,0x1
     3c0:	05450513          	addi	a0,a0,84 # 1054 <__etext+0x10>
     3c4:	f91ff06f          	j	354 <control_teclado+0x178>
     3c8:	00001537          	lui	a0,0x1
     3cc:	05c50513          	addi	a0,a0,92 # 105c <__etext+0x18>
     3d0:	f85ff06f          	j	354 <control_teclado+0x178>
     3d4:	04940063          	beq	s0,s1,414 <control_teclado+0x238>
     3d8:	0084ce63          	blt	s1,s0,3f4 <control_teclado+0x218>
     3dc:	02040663          	beqz	s0,408 <control_teclado+0x22c>
     3e0:	00100793          	li	a5,1
     3e4:	eef410e3          	bne	s0,a5,2c4 <control_teclado+0xe8>
     3e8:	00001537          	lui	a0,0x1
     3ec:	06850513          	addi	a0,a0,104 # 1068 <__etext+0x24>
     3f0:	f65ff06f          	j	354 <control_teclado+0x178>
     3f4:	00300793          	li	a5,3
     3f8:	ecf416e3          	bne	s0,a5,2c4 <control_teclado+0xe8>
     3fc:	00001537          	lui	a0,0x1
     400:	07050513          	addi	a0,a0,112 # 1070 <__etext+0x2c>
     404:	f51ff06f          	j	354 <control_teclado+0x178>
     408:	00001537          	lui	a0,0x1
     40c:	06450513          	addi	a0,a0,100 # 1064 <__etext+0x20>
     410:	f45ff06f          	j	354 <control_teclado+0x178>
     414:	00001537          	lui	a0,0x1
     418:	06c50513          	addi	a0,a0,108 # 106c <__etext+0x28>
     41c:	f39ff06f          	j	354 <control_teclado+0x178>
     420:	ea9412e3          	bne	s0,s1,2c4 <control_teclado+0xe8>
     424:	00001537          	lui	a0,0x1
     428:	08050513          	addi	a0,a0,128 # 1080 <__etext+0x3c>
     42c:	f29ff06f          	j	354 <control_teclado+0x178>
     430:	00001537          	lui	a0,0x1
     434:	07450513          	addi	a0,a0,116 # 1074 <__etext+0x30>
     438:	f1dff06f          	j	354 <control_teclado+0x178>
     43c:	00001537          	lui	a0,0x1
     440:	07c50513          	addi	a0,a0,124 # 107c <__etext+0x38>
     444:	f11ff06f          	j	354 <control_teclado+0x178>

00000448 <maquina_estados>:
     448:	ff010113          	addi	sp,sp,-16
     44c:	03200513          	li	a0,50
     450:	00812423          	sw	s0,8(sp)
     454:	00112623          	sw	ra,12(sp)
     458:	00912223          	sw	s1,4(sp)
     45c:	01212023          	sw	s2,0(sp)
     460:	80000437          	lui	s0,0x80000
     464:	4d0000ef          	jal	ra,934 <neorv32_cpu_delay_ms>
     468:	00442783          	lw	a5,4(s0) # 80000004 <__ctr0_io_space_begin+0x80000204>
     46c:	00500713          	li	a4,5
     470:	12f76863          	bltu	a4,a5,5a0 <maquina_estados+0x158>
     474:	00001737          	lui	a4,0x1
     478:	00279793          	slli	a5,a5,0x2
     47c:	08470713          	addi	a4,a4,132 # 1084 <__etext+0x40>
     480:	00e787b3          	add	a5,a5,a4
     484:	0007a783          	lw	a5,0(a5)
     488:	00440413          	addi	s0,s0,4
     48c:	00078067          	jr	a5
     490:	00010537          	lui	a0,0x10
     494:	e0f50513          	addi	a0,a0,-497 # fe0f <__crt0_copy_data_src_begin+0xea8b>
     498:	00000593          	li	a1,0
     49c:	434000ef          	jal	ra,8d0 <neorv32_gpio_port_set>
     4a0:	800007b7          	lui	a5,0x80000
     4a4:	00078793          	mv	a5,a5
     4a8:	0007a703          	lw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     4ac:	000106b7          	lui	a3,0x10
     4b0:	e0f68693          	addi	a3,a3,-497 # fe0f <__crt0_copy_data_src_begin+0xea8b>
     4b4:	00d77733          	and	a4,a4,a3
     4b8:	00400513          	li	a0,4
     4bc:	00e7a023          	sw	a4,0(a5)
     4c0:	3e8000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     4c4:	00050663          	beqz	a0,4d0 <maquina_estados+0x88>
     4c8:	00300793          	li	a5,3
     4cc:	00f42023          	sw	a5,0(s0)
     4d0:	00500513          	li	a0,5
     4d4:	3d4000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     4d8:	00050663          	beqz	a0,4e4 <maquina_estados+0x9c>
     4dc:	00400793          	li	a5,4
     4e0:	00f42023          	sw	a5,0(s0)
     4e4:	00600513          	li	a0,6
     4e8:	3c0000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     4ec:	0a050a63          	beqz	a0,5a0 <maquina_estados+0x158>
     4f0:	01400513          	li	a0,20
     4f4:	440000ef          	jal	ra,934 <neorv32_cpu_delay_ms>
     4f8:	00100793          	li	a5,1
     4fc:	00f42023          	sw	a5,0(s0)
     500:	0a00006f          	j	5a0 <maquina_estados+0x158>
     504:	800007b7          	lui	a5,0x80000
     508:	00b78793          	addi	a5,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     50c:	0007c703          	lbu	a4,0(a5)
     510:	04070e63          	beqz	a4,56c <maquina_estados+0x124>
     514:	800004b7          	lui	s1,0x80000
     518:	0094c503          	lbu	a0,9(s1) # 80000009 <__ctr0_io_space_begin+0x80000209>
     51c:	00078023          	sb	zero,0(a5)
     520:	80000937          	lui	s2,0x80000
     524:	00200793          	li	a5,2
     528:	00090913          	mv	s2,s2
     52c:	00948493          	addi	s1,s1,9
     530:	0aa7f263          	bgeu	a5,a0,5d4 <maquina_estados+0x18c>
     534:	00048023          	sb	zero,0(s1)
     538:	00700513          	li	a0,7
     53c:	338000ef          	jal	ra,874 <neorv32_gpio_pin_clr>
     540:	0004c503          	lbu	a0,0(s1)
     544:	00092023          	sw	zero,0(s2) # 80000000 <__ctr0_io_space_begin+0x80000200>
     548:	00450513          	addi	a0,a0,4
     54c:	2f8000ef          	jal	ra,844 <neorv32_gpio_pin_set>
     550:	0004c783          	lbu	a5,0(s1)
     554:	00478713          	addi	a4,a5,4
     558:	00100793          	li	a5,1
     55c:	00e797b3          	sll	a5,a5,a4
     560:	00092703          	lw	a4,0(s2)
     564:	00e7e7b3          	or	a5,a5,a4
     568:	00f92023          	sw	a5,0(s2)
     56c:	00400513          	li	a0,4
     570:	338000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     574:	00050663          	beqz	a0,580 <maquina_estados+0x138>
     578:	00300793          	li	a5,3
     57c:	00f42023          	sw	a5,0(s0)
     580:	00500513          	li	a0,5
     584:	324000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     588:	00050663          	beqz	a0,594 <maquina_estados+0x14c>
     58c:	00400793          	li	a5,4
     590:	00f42023          	sw	a5,0(s0)
     594:	00600513          	li	a0,6
     598:	310000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     59c:	f4051ee3          	bnez	a0,4f8 <maquina_estados+0xb0>
     5a0:	800007b7          	lui	a5,0x80000
     5a4:	00a78793          	addi	a5,a5,10 # 8000000a <__ctr0_io_space_begin+0x8000020a>
     5a8:	0007c703          	lbu	a4,0(a5)
     5ac:	00400693          	li	a3,4
     5b0:	14e6e263          	bltu	a3,a4,6f4 <maquina_estados+0x2ac>
     5b4:	00170713          	addi	a4,a4,1
     5b8:	00e78023          	sb	a4,0(a5)
     5bc:	00c12083          	lw	ra,12(sp)
     5c0:	00812403          	lw	s0,8(sp)
     5c4:	00412483          	lw	s1,4(sp)
     5c8:	00012903          	lw	s2,0(sp)
     5cc:	01010113          	addi	sp,sp,16
     5d0:	00008067          	ret
     5d4:	00150793          	addi	a5,a0,1
     5d8:	00450513          	addi	a0,a0,4
     5dc:	00f48023          	sb	a5,0(s1)
     5e0:	0ff57513          	andi	a0,a0,255
     5e4:	f59ff06f          	j	53c <maquina_estados+0xf4>
     5e8:	800007b7          	lui	a5,0x80000
     5ec:	00b78793          	addi	a5,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     5f0:	0007c703          	lbu	a4,0(a5)
     5f4:	f6070ce3          	beqz	a4,56c <maquina_estados+0x124>
     5f8:	80000937          	lui	s2,0x80000
     5fc:	00994503          	lbu	a0,9(s2) # 80000009 <__ctr0_io_space_begin+0x80000209>
     600:	800004b7          	lui	s1,0x80000
     604:	00078023          	sb	zero,0(a5)
     608:	00048493          	mv	s1,s1
     60c:	00990913          	addi	s2,s2,9
     610:	02051263          	bnez	a0,634 <maquina_estados+0x1ec>
     614:	00300793          	li	a5,3
     618:	00f90023          	sb	a5,0(s2)
     61c:	00400513          	li	a0,4
     620:	254000ef          	jal	ra,874 <neorv32_gpio_pin_clr>
     624:	0004a783          	lw	a5,0(s1) # 80000000 <__ctr0_io_space_begin+0x80000200>
     628:	00f7f793          	andi	a5,a5,15
     62c:	00f4a023          	sw	a5,0(s1)
     630:	0280006f          	j	658 <maquina_estados+0x210>
     634:	fff50793          	addi	a5,a0,-1
     638:	0ff7f793          	andi	a5,a5,255
     63c:	00f90023          	sb	a5,0(s2)
     640:	00200713          	li	a4,2
     644:	fcf76ce3          	bltu	a4,a5,61c <maquina_estados+0x1d4>
     648:	00450513          	addi	a0,a0,4
     64c:	0ff57513          	andi	a0,a0,255
     650:	224000ef          	jal	ra,874 <neorv32_gpio_pin_clr>
     654:	0004a023          	sw	zero,0(s1)
     658:	00094503          	lbu	a0,0(s2)
     65c:	00450513          	addi	a0,a0,4
     660:	1e4000ef          	jal	ra,844 <neorv32_gpio_pin_set>
     664:	00094783          	lbu	a5,0(s2)
     668:	00478713          	addi	a4,a5,4
     66c:	00100793          	li	a5,1
     670:	00e797b3          	sll	a5,a5,a4
     674:	0004a703          	lw	a4,0(s1)
     678:	00e7e7b3          	or	a5,a5,a4
     67c:	00f4a023          	sw	a5,0(s1)
     680:	eedff06f          	j	56c <maquina_estados+0x124>
     684:	1f000513          	li	a0,496
     688:	00000593          	li	a1,0
     68c:	244000ef          	jal	ra,8d0 <neorv32_gpio_port_set>
     690:	800007b7          	lui	a5,0x80000
     694:	00078793          	mv	a5,a5
     698:	0007a703          	lw	a4,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     69c:	00600513          	li	a0,6
     6a0:	1f076713          	ori	a4,a4,496
     6a4:	00e7a023          	sw	a4,0(a5)
     6a8:	200000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     6ac:	00500793          	li	a5,5
     6b0:	e40506e3          	beqz	a0,4fc <maquina_estados+0xb4>
     6b4:	eedff06f          	j	5a0 <maquina_estados+0x158>
     6b8:	00000513          	li	a0,0
     6bc:	00000593          	li	a1,0
     6c0:	210000ef          	jal	ra,8d0 <neorv32_gpio_port_set>
     6c4:	800007b7          	lui	a5,0x80000
     6c8:	00600513          	li	a0,6
     6cc:	0007a023          	sw	zero,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     6d0:	1d8000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     6d4:	ec0516e3          	bnez	a0,5a0 <maquina_estados+0x158>
     6d8:	00042023          	sw	zero,0(s0)
     6dc:	ec5ff06f          	j	5a0 <maquina_estados+0x158>
     6e0:	00600513          	li	a0,6
     6e4:	1c4000ef          	jal	ra,8a8 <neorv32_gpio_pin_get>
     6e8:	ea050ce3          	beqz	a0,5a0 <maquina_estados+0x158>
     6ec:	00200793          	li	a5,2
     6f0:	e0dff06f          	j	4fc <maquina_estados+0xb4>
     6f4:	80000737          	lui	a4,0x80000
     6f8:	00100693          	li	a3,1
     6fc:	00d705a3          	sb	a3,11(a4) # 8000000b <__ctr0_io_space_begin+0x8000020b>
     700:	00078023          	sb	zero,0(a5)
     704:	eb9ff06f          	j	5bc <maquina_estados+0x174>

00000708 <neorv32_uart0_available>:
     708:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     70c:	01255513          	srli	a0,a0,0x12
     710:	00157513          	andi	a0,a0,1
     714:	00008067          	ret

00000718 <neorv32_uart0_setup>:
     718:	ff010113          	addi	sp,sp,-16
     71c:	00812423          	sw	s0,8(sp)
     720:	00912223          	sw	s1,4(sp)
     724:	00112623          	sw	ra,12(sp)
     728:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     72c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     730:	00058413          	mv	s0,a1
     734:	00151593          	slli	a1,a0,0x1
     738:	00078513          	mv	a0,a5
     73c:	00060493          	mv	s1,a2
     740:	059000ef          	jal	ra,f98 <__udivsi3>
     744:	01051513          	slli	a0,a0,0x10
     748:	000017b7          	lui	a5,0x1
     74c:	01055513          	srli	a0,a0,0x10
     750:	00000713          	li	a4,0
     754:	ffe78793          	addi	a5,a5,-2 # ffe <__umodsi3+0x1e>
     758:	04a7e463          	bltu	a5,a0,7a0 <neorv32_uart0_setup+0x88>
     75c:	0034f793          	andi	a5,s1,3
     760:	00347413          	andi	s0,s0,3
     764:	fff50513          	addi	a0,a0,-1
     768:	01479793          	slli	a5,a5,0x14
     76c:	01641413          	slli	s0,s0,0x16
     770:	00f567b3          	or	a5,a0,a5
     774:	0087e7b3          	or	a5,a5,s0
     778:	01871713          	slli	a4,a4,0x18
     77c:	00c12083          	lw	ra,12(sp)
     780:	00812403          	lw	s0,8(sp)
     784:	00e7e7b3          	or	a5,a5,a4
     788:	10000737          	lui	a4,0x10000
     78c:	00e7e7b3          	or	a5,a5,a4
     790:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     794:	00412483          	lw	s1,4(sp)
     798:	01010113          	addi	sp,sp,16
     79c:	00008067          	ret
     7a0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffec7a>
     7a4:	0fd6f693          	andi	a3,a3,253
     7a8:	00069a63          	bnez	a3,7bc <neorv32_uart0_setup+0xa4>
     7ac:	00355513          	srli	a0,a0,0x3
     7b0:	00170713          	addi	a4,a4,1
     7b4:	0ff77713          	andi	a4,a4,255
     7b8:	fa1ff06f          	j	758 <neorv32_uart0_setup+0x40>
     7bc:	00155513          	srli	a0,a0,0x1
     7c0:	ff1ff06f          	j	7b0 <neorv32_uart0_setup+0x98>

000007c4 <neorv32_uart0_putc>:
     7c4:	00040737          	lui	a4,0x40
     7c8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     7cc:	00e7f7b3          	and	a5,a5,a4
     7d0:	fe079ce3          	bnez	a5,7c8 <neorv32_uart0_putc+0x4>
     7d4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     7d8:	00008067          	ret

000007dc <neorv32_uart0_print>:
     7dc:	ff010113          	addi	sp,sp,-16
     7e0:	00812423          	sw	s0,8(sp)
     7e4:	01212023          	sw	s2,0(sp)
     7e8:	00112623          	sw	ra,12(sp)
     7ec:	00912223          	sw	s1,4(sp)
     7f0:	00050413          	mv	s0,a0
     7f4:	00a00913          	li	s2,10
     7f8:	00044483          	lbu	s1,0(s0)
     7fc:	00140413          	addi	s0,s0,1
     800:	00049e63          	bnez	s1,81c <neorv32_uart0_print+0x40>
     804:	00c12083          	lw	ra,12(sp)
     808:	00812403          	lw	s0,8(sp)
     80c:	00412483          	lw	s1,4(sp)
     810:	00012903          	lw	s2,0(sp)
     814:	01010113          	addi	sp,sp,16
     818:	00008067          	ret
     81c:	01249663          	bne	s1,s2,828 <neorv32_uart0_print+0x4c>
     820:	00d00513          	li	a0,13
     824:	fa1ff0ef          	jal	ra,7c4 <neorv32_uart0_putc>
     828:	00048513          	mv	a0,s1
     82c:	f99ff0ef          	jal	ra,7c4 <neorv32_uart0_putc>
     830:	fc9ff06f          	j	7f8 <neorv32_uart0_print+0x1c>

00000834 <neorv32_gpio_available>:
     834:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     838:	01055513          	srli	a0,a0,0x10
     83c:	00157513          	andi	a0,a0,1
     840:	00008067          	ret

00000844 <neorv32_gpio_pin_set>:
     844:	00100793          	li	a5,1
     848:	01f00713          	li	a4,31
     84c:	00a797b3          	sll	a5,a5,a0
     850:	00a74a63          	blt	a4,a0,864 <neorv32_gpio_pin_set+0x20>
     854:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     858:	00f767b3          	or	a5,a4,a5
     85c:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     860:	00008067          	ret
     864:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     868:	00f767b3          	or	a5,a4,a5
     86c:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     870:	00008067          	ret

00000874 <neorv32_gpio_pin_clr>:
     874:	00100793          	li	a5,1
     878:	00a797b3          	sll	a5,a5,a0
     87c:	01f00713          	li	a4,31
     880:	fff7c793          	not	a5,a5
     884:	00a74a63          	blt	a4,a0,898 <neorv32_gpio_pin_clr+0x24>
     888:	fc802703          	lw	a4,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     88c:	00f777b3          	and	a5,a4,a5
     890:	fcf02423          	sw	a5,-56(zero) # ffffffc8 <__ctr0_io_space_begin+0x1c8>
     894:	00008067          	ret
     898:	fcc02703          	lw	a4,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     89c:	00f777b3          	and	a5,a4,a5
     8a0:	fcf02623          	sw	a5,-52(zero) # ffffffcc <__ctr0_io_space_begin+0x1cc>
     8a4:	00008067          	ret

000008a8 <neorv32_gpio_pin_get>:
     8a8:	00050793          	mv	a5,a0
     8ac:	01f00713          	li	a4,31
     8b0:	00100513          	li	a0,1
     8b4:	00f51533          	sll	a0,a0,a5
     8b8:	00f74863          	blt	a4,a5,8c8 <neorv32_gpio_pin_get+0x20>
     8bc:	fc002783          	lw	a5,-64(zero) # ffffffc0 <__ctr0_io_space_begin+0x1c0>
     8c0:	00a7f533          	and	a0,a5,a0
     8c4:	00008067          	ret
     8c8:	fc402783          	lw	a5,-60(zero) # ffffffc4 <__ctr0_io_space_begin+0x1c4>
     8cc:	ff5ff06f          	j	8c0 <neorv32_gpio_pin_get+0x18>

000008d0 <neorv32_gpio_port_set>:
     8d0:	fc000793          	li	a5,-64
     8d4:	00a7a423          	sw	a0,8(a5)
     8d8:	00b7a623          	sw	a1,12(a5)
     8dc:	00008067          	ret

000008e0 <neorv32_gpio_port_get>:
     8e0:	fc000793          	li	a5,-64
     8e4:	0007a703          	lw	a4,0(a5)
     8e8:	ff010113          	addi	sp,sp,-16
     8ec:	00e12023          	sw	a4,0(sp)
     8f0:	0047a783          	lw	a5,4(a5)
     8f4:	00012503          	lw	a0,0(sp)
     8f8:	00f12223          	sw	a5,4(sp)
     8fc:	00412583          	lw	a1,4(sp)
     900:	01010113          	addi	sp,sp,16
     904:	00008067          	ret

00000908 <neorv32_cpu_get_systime>:
     908:	ff010113          	addi	sp,sp,-16
     90c:	c81026f3          	rdtimeh	a3
     910:	c0102773          	rdtime	a4
     914:	c81027f3          	rdtimeh	a5
     918:	fed79ae3          	bne	a5,a3,90c <neorv32_cpu_get_systime+0x4>
     91c:	00e12023          	sw	a4,0(sp)
     920:	00f12223          	sw	a5,4(sp)
     924:	00012503          	lw	a0,0(sp)
     928:	00412583          	lw	a1,4(sp)
     92c:	01010113          	addi	sp,sp,16
     930:	00008067          	ret

00000934 <neorv32_cpu_delay_ms>:
     934:	fd010113          	addi	sp,sp,-48
     938:	00a12623          	sw	a0,12(sp)
     93c:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     940:	3e800593          	li	a1,1000
     944:	02112623          	sw	ra,44(sp)
     948:	02812423          	sw	s0,40(sp)
     94c:	02912223          	sw	s1,36(sp)
     950:	03212023          	sw	s2,32(sp)
     954:	01312e23          	sw	s3,28(sp)
     958:	640000ef          	jal	ra,f98 <__udivsi3>
     95c:	00c12603          	lw	a2,12(sp)
     960:	00000693          	li	a3,0
     964:	00000593          	li	a1,0
     968:	598000ef          	jal	ra,f00 <__muldi3>
     96c:	00050413          	mv	s0,a0
     970:	00058993          	mv	s3,a1
     974:	f95ff0ef          	jal	ra,908 <neorv32_cpu_get_systime>
     978:	00058913          	mv	s2,a1
     97c:	00050493          	mv	s1,a0
     980:	f89ff0ef          	jal	ra,908 <neorv32_cpu_get_systime>
     984:	00b96663          	bltu	s2,a1,990 <neorv32_cpu_delay_ms+0x5c>
     988:	05259263          	bne	a1,s2,9cc <neorv32_cpu_delay_ms+0x98>
     98c:	04a4f063          	bgeu	s1,a0,9cc <neorv32_cpu_delay_ms+0x98>
     990:	008484b3          	add	s1,s1,s0
     994:	0084b433          	sltu	s0,s1,s0
     998:	01390933          	add	s2,s2,s3
     99c:	01240433          	add	s0,s0,s2
     9a0:	f69ff0ef          	jal	ra,908 <neorv32_cpu_get_systime>
     9a4:	fe85eee3          	bltu	a1,s0,9a0 <neorv32_cpu_delay_ms+0x6c>
     9a8:	00b41463          	bne	s0,a1,9b0 <neorv32_cpu_delay_ms+0x7c>
     9ac:	fe956ae3          	bltu	a0,s1,9a0 <neorv32_cpu_delay_ms+0x6c>
     9b0:	02c12083          	lw	ra,44(sp)
     9b4:	02812403          	lw	s0,40(sp)
     9b8:	02412483          	lw	s1,36(sp)
     9bc:	02012903          	lw	s2,32(sp)
     9c0:	01c12983          	lw	s3,28(sp)
     9c4:	03010113          	addi	sp,sp,48
     9c8:	00008067          	ret
     9cc:	01c99913          	slli	s2,s3,0x1c
     9d0:	00445413          	srli	s0,s0,0x4
     9d4:	00896433          	or	s0,s2,s0

000009d8 <__neorv32_cpu_delay_ms_start>:
     9d8:	00040a63          	beqz	s0,9ec <__neorv32_cpu_delay_ms_end>
     9dc:	00040863          	beqz	s0,9ec <__neorv32_cpu_delay_ms_end>
     9e0:	fff40413          	addi	s0,s0,-1
     9e4:	00000013          	nop
     9e8:	ff1ff06f          	j	9d8 <__neorv32_cpu_delay_ms_start>

000009ec <__neorv32_cpu_delay_ms_end>:
     9ec:	fc5ff06f          	j	9b0 <neorv32_cpu_delay_ms+0x7c>

000009f0 <__neorv32_rte_core>:
     9f0:	fc010113          	addi	sp,sp,-64
     9f4:	02112e23          	sw	ra,60(sp)
     9f8:	02512c23          	sw	t0,56(sp)
     9fc:	02612a23          	sw	t1,52(sp)
     a00:	02712823          	sw	t2,48(sp)
     a04:	02a12623          	sw	a0,44(sp)
     a08:	02b12423          	sw	a1,40(sp)
     a0c:	02c12223          	sw	a2,36(sp)
     a10:	02d12023          	sw	a3,32(sp)
     a14:	00e12e23          	sw	a4,28(sp)
     a18:	00f12c23          	sw	a5,24(sp)
     a1c:	01012a23          	sw	a6,20(sp)
     a20:	01112823          	sw	a7,16(sp)
     a24:	01c12623          	sw	t3,12(sp)
     a28:	01d12423          	sw	t4,8(sp)
     a2c:	01e12223          	sw	t5,4(sp)
     a30:	01f12023          	sw	t6,0(sp)
     a34:	34102773          	csrr	a4,mepc
     a38:	34071073          	csrw	mscratch,a4
     a3c:	342027f3          	csrr	a5,mcause
     a40:	0807ca63          	bltz	a5,ad4 <__neorv32_rte_core+0xe4>
     a44:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3ec7c>
     a48:	00300593          	li	a1,3
     a4c:	0036f693          	andi	a3,a3,3
     a50:	00270613          	addi	a2,a4,2
     a54:	00b69463          	bne	a3,a1,a5c <__neorv32_rte_core+0x6c>
     a58:	00470613          	addi	a2,a4,4
     a5c:	34161073          	csrw	mepc,a2
     a60:	00b00713          	li	a4,11
     a64:	04f77c63          	bgeu	a4,a5,abc <__neorv32_rte_core+0xcc>
     a68:	000017b7          	lui	a5,0x1
     a6c:	c6478793          	addi	a5,a5,-924 # c64 <__neorv32_rte_debug_exc_handler>
     a70:	000780e7          	jalr	a5
     a74:	03c12083          	lw	ra,60(sp)
     a78:	03812283          	lw	t0,56(sp)
     a7c:	03412303          	lw	t1,52(sp)
     a80:	03012383          	lw	t2,48(sp)
     a84:	02c12503          	lw	a0,44(sp)
     a88:	02812583          	lw	a1,40(sp)
     a8c:	02412603          	lw	a2,36(sp)
     a90:	02012683          	lw	a3,32(sp)
     a94:	01c12703          	lw	a4,28(sp)
     a98:	01812783          	lw	a5,24(sp)
     a9c:	01412803          	lw	a6,20(sp)
     aa0:	01012883          	lw	a7,16(sp)
     aa4:	00c12e03          	lw	t3,12(sp)
     aa8:	00812e83          	lw	t4,8(sp)
     aac:	00412f03          	lw	t5,4(sp)
     ab0:	00012f83          	lw	t6,0(sp)
     ab4:	04010113          	addi	sp,sp,64
     ab8:	30200073          	mret
     abc:	00001737          	lui	a4,0x1
     ac0:	00279793          	slli	a5,a5,0x2
     ac4:	0dc70713          	addi	a4,a4,220 # 10dc <__etext+0x98>
     ac8:	00e787b3          	add	a5,a5,a4
     acc:	0007a783          	lw	a5,0(a5)
     ad0:	00078067          	jr	a5
     ad4:	80000737          	lui	a4,0x80000
     ad8:	ffd74713          	xori	a4,a4,-3
     adc:	00e787b3          	add	a5,a5,a4
     ae0:	01c00713          	li	a4,28
     ae4:	f8f762e3          	bltu	a4,a5,a68 <__neorv32_rte_core+0x78>
     ae8:	00001737          	lui	a4,0x1
     aec:	00279793          	slli	a5,a5,0x2
     af0:	10c70713          	addi	a4,a4,268 # 110c <__etext+0xc8>
     af4:	00e787b3          	add	a5,a5,a4
     af8:	0007a783          	lw	a5,0(a5)
     afc:	00078067          	jr	a5
     b00:	800007b7          	lui	a5,0x80000
     b04:	00c7a783          	lw	a5,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     b08:	f69ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b0c:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut+0x4>
     b10:	f61ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b14:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x8>
     b18:	f59ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b1c:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0xc>
     b20:	f51ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b24:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0x10>
     b28:	f49ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b2c:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x14>
     b30:	f41ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b34:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x18>
     b38:	f39ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b3c:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x1c>
     b40:	f31ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b44:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x20>
     b48:	f29ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b4c:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x24>
     b50:	f21ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b54:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x28>
     b58:	f19ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b5c:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x2c>
     b60:	f11ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b64:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x30>
     b68:	f09ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b6c:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x34>
     b70:	f01ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b74:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x38>
     b78:	ef9ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b7c:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x3c>
     b80:	ef1ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b84:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x40>
     b88:	ee9ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b8c:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x44>
     b90:	ee1ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b94:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x48>
     b98:	ed9ff06f          	j	a70 <__neorv32_rte_core+0x80>
     b9c:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x4c>
     ba0:	ed1ff06f          	j	a70 <__neorv32_rte_core+0x80>
     ba4:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x50>
     ba8:	ec9ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bac:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x54>
     bb0:	ec1ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bb4:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x58>
     bb8:	eb9ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bbc:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x5c>
     bc0:	eb1ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bc4:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x60>
     bc8:	ea9ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bcc:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x64>
     bd0:	ea1ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bd4:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x68>
     bd8:	e99ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bdc:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x6c>
     be0:	e91ff06f          	j	a70 <__neorv32_rte_core+0x80>
     be4:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x70>
     be8:	e89ff06f          	j	a70 <__neorv32_rte_core+0x80>
     bec:	0000                	unimp
     bee:	0000                	unimp
     bf0:	0000                	unimp
     bf2:	0000                	unimp

00000bf4 <__neorv32_rte_print_hex_word>:
     bf4:	fe010113          	addi	sp,sp,-32
     bf8:	01212823          	sw	s2,16(sp)
     bfc:	00050913          	mv	s2,a0
     c00:	00001537          	lui	a0,0x1
     c04:	00912a23          	sw	s1,20(sp)
     c08:	18050513          	addi	a0,a0,384 # 1180 <__etext+0x13c>
     c0c:	000014b7          	lui	s1,0x1
     c10:	00812c23          	sw	s0,24(sp)
     c14:	01312623          	sw	s3,12(sp)
     c18:	00112e23          	sw	ra,28(sp)
     c1c:	01c00413          	li	s0,28
     c20:	bbdff0ef          	jal	ra,7dc <neorv32_uart0_print>
     c24:	37448493          	addi	s1,s1,884 # 1374 <hex_symbols.0>
     c28:	ffc00993          	li	s3,-4
     c2c:	008957b3          	srl	a5,s2,s0
     c30:	00f7f793          	andi	a5,a5,15
     c34:	00f487b3          	add	a5,s1,a5
     c38:	0007c503          	lbu	a0,0(a5)
     c3c:	ffc40413          	addi	s0,s0,-4
     c40:	b85ff0ef          	jal	ra,7c4 <neorv32_uart0_putc>
     c44:	ff3414e3          	bne	s0,s3,c2c <__neorv32_rte_print_hex_word+0x38>
     c48:	01c12083          	lw	ra,28(sp)
     c4c:	01812403          	lw	s0,24(sp)
     c50:	01412483          	lw	s1,20(sp)
     c54:	01012903          	lw	s2,16(sp)
     c58:	00c12983          	lw	s3,12(sp)
     c5c:	02010113          	addi	sp,sp,32
     c60:	00008067          	ret

00000c64 <__neorv32_rte_debug_exc_handler>:
     c64:	ff010113          	addi	sp,sp,-16
     c68:	00112623          	sw	ra,12(sp)
     c6c:	00812423          	sw	s0,8(sp)
     c70:	00912223          	sw	s1,4(sp)
     c74:	a95ff0ef          	jal	ra,708 <neorv32_uart0_available>
     c78:	1c050863          	beqz	a0,e48 <__neorv32_rte_debug_exc_handler+0x1e4>
     c7c:	00001537          	lui	a0,0x1
     c80:	18450513          	addi	a0,a0,388 # 1184 <__etext+0x140>
     c84:	b59ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     c88:	34202473          	csrr	s0,mcause
     c8c:	00900713          	li	a4,9
     c90:	00f47793          	andi	a5,s0,15
     c94:	03078493          	addi	s1,a5,48
     c98:	00f77463          	bgeu	a4,a5,ca0 <__neorv32_rte_debug_exc_handler+0x3c>
     c9c:	05778493          	addi	s1,a5,87
     ca0:	00b00793          	li	a5,11
     ca4:	0087ee63          	bltu	a5,s0,cc0 <__neorv32_rte_debug_exc_handler+0x5c>
     ca8:	00001737          	lui	a4,0x1
     cac:	00241793          	slli	a5,s0,0x2
     cb0:	34470713          	addi	a4,a4,836 # 1344 <__etext+0x300>
     cb4:	00e787b3          	add	a5,a5,a4
     cb8:	0007a783          	lw	a5,0(a5)
     cbc:	00078067          	jr	a5
     cc0:	800007b7          	lui	a5,0x80000
     cc4:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     cc8:	14e40e63          	beq	s0,a4,e24 <__neorv32_rte_debug_exc_handler+0x1c0>
     ccc:	02876a63          	bltu	a4,s0,d00 <__neorv32_rte_debug_exc_handler+0x9c>
     cd0:	00378713          	addi	a4,a5,3
     cd4:	12e40c63          	beq	s0,a4,e0c <__neorv32_rte_debug_exc_handler+0x1a8>
     cd8:	00778793          	addi	a5,a5,7
     cdc:	12f40e63          	beq	s0,a5,e18 <__neorv32_rte_debug_exc_handler+0x1b4>
     ce0:	00001537          	lui	a0,0x1
     ce4:	2e450513          	addi	a0,a0,740 # 12e4 <__etext+0x2a0>
     ce8:	af5ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     cec:	00040513          	mv	a0,s0
     cf0:	f05ff0ef          	jal	ra,bf4 <__neorv32_rte_print_hex_word>
     cf4:	00100793          	li	a5,1
     cf8:	08f40c63          	beq	s0,a5,d90 <__neorv32_rte_debug_exc_handler+0x12c>
     cfc:	0280006f          	j	d24 <__neorv32_rte_debug_exc_handler+0xc0>
     d00:	ff07c793          	xori	a5,a5,-16
     d04:	00f407b3          	add	a5,s0,a5
     d08:	00f00713          	li	a4,15
     d0c:	fcf76ae3          	bltu	a4,a5,ce0 <__neorv32_rte_debug_exc_handler+0x7c>
     d10:	00001537          	lui	a0,0x1
     d14:	2d450513          	addi	a0,a0,724 # 12d4 <__etext+0x290>
     d18:	ac5ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     d1c:	00048513          	mv	a0,s1
     d20:	aa5ff0ef          	jal	ra,7c4 <neorv32_uart0_putc>
     d24:	ffd47413          	andi	s0,s0,-3
     d28:	00500793          	li	a5,5
     d2c:	06f40263          	beq	s0,a5,d90 <__neorv32_rte_debug_exc_handler+0x12c>
     d30:	00001537          	lui	a0,0x1
     d34:	32850513          	addi	a0,a0,808 # 1328 <__etext+0x2e4>
     d38:	aa5ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     d3c:	34002573          	csrr	a0,mscratch
     d40:	eb5ff0ef          	jal	ra,bf4 <__neorv32_rte_print_hex_word>
     d44:	00001537          	lui	a0,0x1
     d48:	33050513          	addi	a0,a0,816 # 1330 <__etext+0x2ec>
     d4c:	a91ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     d50:	34302573          	csrr	a0,mtval
     d54:	ea1ff0ef          	jal	ra,bf4 <__neorv32_rte_print_hex_word>
     d58:	00812403          	lw	s0,8(sp)
     d5c:	00c12083          	lw	ra,12(sp)
     d60:	00412483          	lw	s1,4(sp)
     d64:	00001537          	lui	a0,0x1
     d68:	33c50513          	addi	a0,a0,828 # 133c <__etext+0x2f8>
     d6c:	01010113          	addi	sp,sp,16
     d70:	a6dff06f          	j	7dc <neorv32_uart0_print>
     d74:	00001537          	lui	a0,0x1
     d78:	18c50513          	addi	a0,a0,396 # 118c <__etext+0x148>
     d7c:	a61ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     d80:	fb1ff06f          	j	d30 <__neorv32_rte_debug_exc_handler+0xcc>
     d84:	00001537          	lui	a0,0x1
     d88:	1ac50513          	addi	a0,a0,428 # 11ac <__etext+0x168>
     d8c:	a51ff0ef          	jal	ra,7dc <neorv32_uart0_print>
     d90:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     d94:	0a07d463          	bgez	a5,e3c <__neorv32_rte_debug_exc_handler+0x1d8>
     d98:	0017f793          	andi	a5,a5,1
     d9c:	08078a63          	beqz	a5,e30 <__neorv32_rte_debug_exc_handler+0x1cc>
     da0:	00001537          	lui	a0,0x1
     da4:	2fc50513          	addi	a0,a0,764 # 12fc <__etext+0x2b8>
     da8:	fd5ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     dac:	00001537          	lui	a0,0x1
     db0:	1c850513          	addi	a0,a0,456 # 11c8 <__etext+0x184>
     db4:	fc9ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     db8:	00001537          	lui	a0,0x1
     dbc:	1dc50513          	addi	a0,a0,476 # 11dc <__etext+0x198>
     dc0:	fbdff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     dc4:	00001537          	lui	a0,0x1
     dc8:	1e850513          	addi	a0,a0,488 # 11e8 <__etext+0x1a4>
     dcc:	fb1ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     dd0:	00001537          	lui	a0,0x1
     dd4:	20050513          	addi	a0,a0,512 # 1200 <__etext+0x1bc>
     dd8:	fb5ff06f          	j	d8c <__neorv32_rte_debug_exc_handler+0x128>
     ddc:	00001537          	lui	a0,0x1
     de0:	21450513          	addi	a0,a0,532 # 1214 <__etext+0x1d0>
     de4:	f99ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     de8:	00001537          	lui	a0,0x1
     dec:	23050513          	addi	a0,a0,560 # 1230 <__etext+0x1ec>
     df0:	f9dff06f          	j	d8c <__neorv32_rte_debug_exc_handler+0x128>
     df4:	00001537          	lui	a0,0x1
     df8:	24450513          	addi	a0,a0,580 # 1244 <__etext+0x200>
     dfc:	f81ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e00:	00001537          	lui	a0,0x1
     e04:	26450513          	addi	a0,a0,612 # 1264 <__etext+0x220>
     e08:	f75ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e0c:	00001537          	lui	a0,0x1
     e10:	28450513          	addi	a0,a0,644 # 1284 <__etext+0x240>
     e14:	f69ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e18:	00001537          	lui	a0,0x1
     e1c:	2a050513          	addi	a0,a0,672 # 12a0 <__etext+0x25c>
     e20:	f5dff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e24:	00001537          	lui	a0,0x1
     e28:	2b850513          	addi	a0,a0,696 # 12b8 <__etext+0x274>
     e2c:	f51ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e30:	00001537          	lui	a0,0x1
     e34:	30c50513          	addi	a0,a0,780 # 130c <__etext+0x2c8>
     e38:	f45ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e3c:	00001537          	lui	a0,0x1
     e40:	31c50513          	addi	a0,a0,796 # 131c <__etext+0x2d8>
     e44:	f39ff06f          	j	d7c <__neorv32_rte_debug_exc_handler+0x118>
     e48:	00c12083          	lw	ra,12(sp)
     e4c:	00812403          	lw	s0,8(sp)
     e50:	00412483          	lw	s1,4(sp)
     e54:	01010113          	addi	sp,sp,16
     e58:	00008067          	ret

00000e5c <neorv32_rte_exception_uninstall>:
     e5c:	01f00793          	li	a5,31
     e60:	02a7e463          	bltu	a5,a0,e88 <neorv32_rte_exception_uninstall+0x2c>
     e64:	800007b7          	lui	a5,0x80000
     e68:	00c78793          	addi	a5,a5,12 # 8000000c <__ctr0_io_space_begin+0x8000020c>
     e6c:	00251513          	slli	a0,a0,0x2
     e70:	00a78533          	add	a0,a5,a0
     e74:	000017b7          	lui	a5,0x1
     e78:	c6478793          	addi	a5,a5,-924 # c64 <__neorv32_rte_debug_exc_handler>
     e7c:	00f52023          	sw	a5,0(a0)
     e80:	00000513          	li	a0,0
     e84:	00008067          	ret
     e88:	00100513          	li	a0,1
     e8c:	00008067          	ret

00000e90 <neorv32_rte_setup>:
     e90:	ff010113          	addi	sp,sp,-16
     e94:	000017b7          	lui	a5,0x1
     e98:	00112623          	sw	ra,12(sp)
     e9c:	00812423          	sw	s0,8(sp)
     ea0:	00912223          	sw	s1,4(sp)
     ea4:	9f078793          	addi	a5,a5,-1552 # 9f0 <__neorv32_rte_core>
     ea8:	30579073          	csrw	mtvec,a5
     eac:	00000413          	li	s0,0
     eb0:	01d00493          	li	s1,29
     eb4:	00040513          	mv	a0,s0
     eb8:	00140413          	addi	s0,s0,1
     ebc:	0ff47413          	andi	s0,s0,255
     ec0:	f9dff0ef          	jal	ra,e5c <neorv32_rte_exception_uninstall>
     ec4:	fe9418e3          	bne	s0,s1,eb4 <neorv32_rte_setup+0x24>
     ec8:	00c12083          	lw	ra,12(sp)
     ecc:	00812403          	lw	s0,8(sp)
     ed0:	00412483          	lw	s1,4(sp)
     ed4:	01010113          	addi	sp,sp,16
     ed8:	00008067          	ret

00000edc <__mulsi3>:
     edc:	00050613          	mv	a2,a0
     ee0:	00000513          	li	a0,0
     ee4:	0015f693          	andi	a3,a1,1
     ee8:	00068463          	beqz	a3,ef0 <__mulsi3+0x14>
     eec:	00c50533          	add	a0,a0,a2
     ef0:	0015d593          	srli	a1,a1,0x1
     ef4:	00161613          	slli	a2,a2,0x1
     ef8:	fe0596e3          	bnez	a1,ee4 <__mulsi3+0x8>
     efc:	00008067          	ret

00000f00 <__muldi3>:
     f00:	00050313          	mv	t1,a0
     f04:	ff010113          	addi	sp,sp,-16
     f08:	00060513          	mv	a0,a2
     f0c:	00068893          	mv	a7,a3
     f10:	00112623          	sw	ra,12(sp)
     f14:	00030613          	mv	a2,t1
     f18:	00050693          	mv	a3,a0
     f1c:	00000713          	li	a4,0
     f20:	00000793          	li	a5,0
     f24:	00000813          	li	a6,0
     f28:	0016fe13          	andi	t3,a3,1
     f2c:	00171e93          	slli	t4,a4,0x1
     f30:	000e0c63          	beqz	t3,f48 <__muldi3+0x48>
     f34:	01060e33          	add	t3,a2,a6
     f38:	010e3833          	sltu	a6,t3,a6
     f3c:	00e787b3          	add	a5,a5,a4
     f40:	00f807b3          	add	a5,a6,a5
     f44:	000e0813          	mv	a6,t3
     f48:	01f65713          	srli	a4,a2,0x1f
     f4c:	0016d693          	srli	a3,a3,0x1
     f50:	00eee733          	or	a4,t4,a4
     f54:	00161613          	slli	a2,a2,0x1
     f58:	fc0698e3          	bnez	a3,f28 <__muldi3+0x28>
     f5c:	00058663          	beqz	a1,f68 <__muldi3+0x68>
     f60:	f7dff0ef          	jal	ra,edc <__mulsi3>
     f64:	00a787b3          	add	a5,a5,a0
     f68:	00088a63          	beqz	a7,f7c <__muldi3+0x7c>
     f6c:	00030513          	mv	a0,t1
     f70:	00088593          	mv	a1,a7
     f74:	f69ff0ef          	jal	ra,edc <__mulsi3>
     f78:	00f507b3          	add	a5,a0,a5
     f7c:	00c12083          	lw	ra,12(sp)
     f80:	00080513          	mv	a0,a6
     f84:	00078593          	mv	a1,a5
     f88:	01010113          	addi	sp,sp,16
     f8c:	00008067          	ret

00000f90 <__divsi3>:
     f90:	06054063          	bltz	a0,ff0 <__umodsi3+0x10>
     f94:	0605c663          	bltz	a1,1000 <__umodsi3+0x20>

00000f98 <__udivsi3>:
     f98:	00058613          	mv	a2,a1
     f9c:	00050593          	mv	a1,a0
     fa0:	fff00513          	li	a0,-1
     fa4:	02060c63          	beqz	a2,fdc <__udivsi3+0x44>
     fa8:	00100693          	li	a3,1
     fac:	00b67a63          	bgeu	a2,a1,fc0 <__udivsi3+0x28>
     fb0:	00c05863          	blez	a2,fc0 <__udivsi3+0x28>
     fb4:	00161613          	slli	a2,a2,0x1
     fb8:	00169693          	slli	a3,a3,0x1
     fbc:	feb66ae3          	bltu	a2,a1,fb0 <__udivsi3+0x18>
     fc0:	00000513          	li	a0,0
     fc4:	00c5e663          	bltu	a1,a2,fd0 <__udivsi3+0x38>
     fc8:	40c585b3          	sub	a1,a1,a2
     fcc:	00d56533          	or	a0,a0,a3
     fd0:	0016d693          	srli	a3,a3,0x1
     fd4:	00165613          	srli	a2,a2,0x1
     fd8:	fe0696e3          	bnez	a3,fc4 <__udivsi3+0x2c>
     fdc:	00008067          	ret

00000fe0 <__umodsi3>:
     fe0:	00008293          	mv	t0,ra
     fe4:	fb5ff0ef          	jal	ra,f98 <__udivsi3>
     fe8:	00058513          	mv	a0,a1
     fec:	00028067          	jr	t0
     ff0:	40a00533          	neg	a0,a0
     ff4:	00b04863          	bgtz	a1,1004 <__umodsi3+0x24>
     ff8:	40b005b3          	neg	a1,a1
     ffc:	f9dff06f          	j	f98 <__udivsi3>
    1000:	40b005b3          	neg	a1,a1
    1004:	00008293          	mv	t0,ra
    1008:	f91ff0ef          	jal	ra,f98 <__udivsi3>
    100c:	40a00533          	neg	a0,a0
    1010:	00028067          	jr	t0

00001014 <__modsi3>:
    1014:	00008293          	mv	t0,ra
    1018:	0005ca63          	bltz	a1,102c <__modsi3+0x18>
    101c:	00054c63          	bltz	a0,1034 <__modsi3+0x20>
    1020:	f79ff0ef          	jal	ra,f98 <__udivsi3>
    1024:	00058513          	mv	a0,a1
    1028:	00028067          	jr	t0
    102c:	40b005b3          	neg	a1,a1
    1030:	fe0558e3          	bgez	a0,1020 <__modsi3+0xc>
    1034:	40a00533          	neg	a0,a0
    1038:	f61ff0ef          	jal	ra,f98 <__udivsi3>
    103c:	40b00533          	neg	a0,a1
    1040:	00028067          	jr	t0
