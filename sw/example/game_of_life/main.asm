
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
      c4:	f4458593          	addi	a1,a1,-188 # 80000004 <__ctr0_io_space_begin+0x80000204>
      c8:	eb818613          	addi	a2,gp,-328 # 800006b8 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00002597          	auipc	a1,0x2
      e0:	8d458593          	addi	a1,a1,-1836 # 19b0 <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1868693          	addi	a3,a3,-232 # 80000004 <__ctr0_io_space_begin+0x80000204>

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
     180:	fa010113          	addi	sp,sp,-96
     184:	04112e23          	sw	ra,92(sp)
     188:	04812c23          	sw	s0,88(sp)
     18c:	04912a23          	sw	s1,84(sp)
     190:	05212823          	sw	s2,80(sp)
     194:	05312623          	sw	s3,76(sp)
     198:	05412423          	sw	s4,72(sp)
     19c:	05512223          	sw	s5,68(sp)
     1a0:	05612023          	sw	s6,64(sp)
     1a4:	03712e23          	sw	s7,60(sp)
     1a8:	03812c23          	sw	s8,56(sp)
     1ac:	03912a23          	sw	s9,52(sp)
     1b0:	03a12823          	sw	s10,48(sp)
     1b4:	03b12623          	sw	s11,44(sp)
     1b8:	750000ef          	jal	ra,908 <neorv32_uart0_available>
     1bc:	1e050a63          	beqz	a0,3b0 <main+0x230>
     1c0:	7a9000ef          	jal	ra,1168 <neorv32_rte_setup>
     1c4:	00005537          	lui	a0,0x5
     1c8:	00000613          	li	a2,0
     1cc:	00000593          	li	a1,0
     1d0:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x3150>
     1d4:	744000ef          	jal	ra,918 <neorv32_uart0_setup>
     1d8:	00000513          	li	a0,0
     1dc:	7d9000ef          	jal	ra,11b4 <neorv32_rte_check_isa>
     1e0:	00001c37          	lui	s8,0x1
     1e4:	00001cb7          	lui	s9,0x1
     1e8:	00000513          	li	a0,0
     1ec:	204000ef          	jal	ra,3f0 <clear_universe>
     1f0:	00100513          	li	a0,1
     1f4:	1fc000ef          	jal	ra,3f0 <clear_universe>
     1f8:	000017b7          	lui	a5,0x1
     1fc:	4c478513          	addi	a0,a5,1220 # 14c4 <__etext>
     200:	051000ef          	jal	ra,a50 <neorv32_uart0_printf>
     204:	00001537          	lui	a0,0x1
     208:	02b00613          	li	a2,43
     20c:	0a200593          	li	a1,162
     210:	4e850513          	addi	a0,a0,1256 # 14e8 <__etext+0x24>
     214:	03d000ef          	jal	ra,a50 <neorv32_uart0_printf>
     218:	00001537          	lui	a0,0x1
     21c:	02800613          	li	a2,40
     220:	0a000593          	li	a1,160
     224:	53450513          	addi	a0,a0,1332 # 1534 <__etext+0x70>
     228:	029000ef          	jal	ra,a50 <neorv32_uart0_printf>
     22c:	00001537          	lui	a0,0x1
     230:	58850513          	addi	a0,a0,1416 # 1588 <__etext+0xc4>
     234:	01d000ef          	jal	ra,a50 <neorv32_uart0_printf>
     238:	7dd000ef          	jal	ra,1214 <neorv32_trng_available>
     23c:	00050493          	mv	s1,a0
     240:	00050c63          	beqz	a0,258 <main+0xd8>
     244:	00001537          	lui	a0,0x1
     248:	5c450513          	addi	a0,a0,1476 # 15c4 <__etext+0x100>
     24c:	005000ef          	jal	ra,a50 <neorv32_uart0_printf>
     250:	00100493          	li	s1,1
     254:	7d1000ef          	jal	ra,1224 <neorv32_trng_enable>
     258:	794000ef          	jal	ra,9ec <neorv32_uart0_char_received>
     25c:	02050e63          	beqz	a0,298 <main+0x118>
     260:	80000437          	lui	s0,0x80000
     264:	00440413          	addi	s0,s0,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
     268:	32040a93          	addi	s5,s0,800
     26c:	02800b13          	li	s6,40
     270:	00040913          	mv	s2,s0
     274:	00000993          	li	s3,0
     278:	0e048463          	beqz	s1,360 <main+0x1e0>
     27c:	01f10513          	addi	a0,sp,31
     280:	7d5000ef          	jal	ra,1254 <neorv32_trng_get>
     284:	00050593          	mv	a1,a0
     288:	00050c63          	beqz	a0,2a0 <main+0x120>
     28c:	600c0513          	addi	a0,s8,1536 # 1600 <__etext+0x13c>
     290:	7c0000ef          	jal	ra,a50 <neorv32_uart0_printf>
     294:	fe9ff06f          	j	27c <main+0xfc>
     298:	500000ef          	jal	ra,798 <xorshift32>
     29c:	fbdff06f          	j	258 <main+0xd8>
     2a0:	01f14783          	lbu	a5,31(sp)
     2a4:	00f90023          	sb	a5,0(s2)
     2a8:	00198993          	addi	s3,s3,1
     2ac:	00190913          	addi	s2,s2,1
     2b0:	fd6994e3          	bne	s3,s6,278 <main+0xf8>
     2b4:	02840413          	addi	s0,s0,40
     2b8:	fa8a9ce3          	bne	s5,s0,270 <main+0xf0>
     2bc:	00000993          	li	s3,0
     2c0:	00000413          	li	s0,0
     2c4:	00001ab7          	lui	s5,0x1
     2c8:	00100b13          	li	s6,1
     2cc:	00300b93          	li	s7,3
     2d0:	71c000ef          	jal	ra,9ec <neorv32_uart0_char_received>
     2d4:	08051c63          	bnez	a0,36c <main+0x1ec>
     2d8:	00040513          	mv	a0,s0
     2dc:	438000ef          	jal	ra,714 <pop_count>
     2e0:	000026b7          	lui	a3,0x2
     2e4:	00050613          	mv	a2,a0
     2e8:	90068693          	addi	a3,a3,-1792 # 1900 <symbols.0+0x294>
     2ec:	00098593          	mv	a1,s3
     2f0:	628c8513          	addi	a0,s9,1576 # 1628 <__etext+0x164>
     2f4:	75c000ef          	jal	ra,a50 <neorv32_uart0_printf>
     2f8:	00040513          	mv	a0,s0
     2fc:	218000ef          	jal	ra,514 <print_universe>
     300:	00144913          	xori	s2,s0,1
     304:	00090513          	mv	a0,s2
     308:	0e8000ef          	jal	ra,3f0 <clear_universe>
     30c:	00000a13          	li	s4,0
     310:	02800d13          	li	s10,40
     314:	0a000d93          	li	s11,160
     318:	00000493          	li	s1,0
     31c:	00048613          	mv	a2,s1
     320:	000a0593          	mv	a1,s4
     324:	00040513          	mv	a0,s0
     328:	15c000ef          	jal	ra,484 <get_cell>
     32c:	00a12623          	sw	a0,12(sp)
     330:	00048613          	mv	a2,s1
     334:	000a0593          	mv	a1,s4
     338:	00040513          	mv	a0,s0
     33c:	2dc000ef          	jal	ra,618 <get_neighborhood>
     340:	00c12783          	lw	a5,12(sp)
     344:	04079063          	bnez	a5,384 <main+0x204>
     348:	05751263          	bne	a0,s7,38c <main+0x20c>
     34c:	00048613          	mv	a2,s1
     350:	000a0593          	mv	a1,s4
     354:	00090513          	mv	a0,s2
     358:	0c4000ef          	jal	ra,41c <set_cell>
     35c:	0300006f          	j	38c <main+0x20c>
     360:	438000ef          	jal	ra,798 <xorshift32>
     364:	00a90023          	sb	a0,0(s2)
     368:	f41ff06f          	j	2a8 <main+0x128>
     36c:	650a8513          	addi	a0,s5,1616 # 1650 <__etext+0x18c>
     370:	6e0000ef          	jal	ra,a50 <neorv32_uart0_printf>
     374:	668000ef          	jal	ra,9dc <neorv32_uart0_getc>
     378:	07900793          	li	a5,121
     37c:	f4f51ee3          	bne	a0,a5,2d8 <main+0x158>
     380:	e69ff06f          	j	1e8 <main+0x68>
     384:	ffe50513          	addi	a0,a0,-2
     388:	fcab72e3          	bgeu	s6,a0,34c <main+0x1cc>
     38c:	00148493          	addi	s1,s1,1
     390:	f9a496e3          	bne	s1,s10,31c <main+0x19c>
     394:	001a0a13          	addi	s4,s4,1
     398:	f9ba10e3          	bne	s4,s11,318 <main+0x198>
     39c:	1f400513          	li	a0,500
     3a0:	00198993          	addi	s3,s3,1
     3a4:	071000ef          	jal	ra,c14 <neorv32_cpu_delay_ms>
     3a8:	00090413          	mv	s0,s2
     3ac:	f25ff06f          	j	2d0 <main+0x150>
     3b0:	05c12083          	lw	ra,92(sp)
     3b4:	05812403          	lw	s0,88(sp)
     3b8:	05412483          	lw	s1,84(sp)
     3bc:	05012903          	lw	s2,80(sp)
     3c0:	04c12983          	lw	s3,76(sp)
     3c4:	04812a03          	lw	s4,72(sp)
     3c8:	04412a83          	lw	s5,68(sp)
     3cc:	04012b03          	lw	s6,64(sp)
     3d0:	03c12b83          	lw	s7,60(sp)
     3d4:	03812c03          	lw	s8,56(sp)
     3d8:	03412c83          	lw	s9,52(sp)
     3dc:	03012d03          	lw	s10,48(sp)
     3e0:	02c12d83          	lw	s11,44(sp)
     3e4:	00100513          	li	a0,1
     3e8:	06010113          	addi	sp,sp,96
     3ec:	00008067          	ret

000003f0 <clear_universe>:
     3f0:	00151793          	slli	a5,a0,0x1
     3f4:	00a787b3          	add	a5,a5,a0
     3f8:	00379793          	slli	a5,a5,0x3
     3fc:	00a787b3          	add	a5,a5,a0
     400:	80000537          	lui	a0,0x80000
     404:	00579793          	slli	a5,a5,0x5
     408:	00450513          	addi	a0,a0,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
     40c:	32000613          	li	a2,800
     410:	00000593          	li	a1,0
     414:	00f50533          	add	a0,a0,a5
     418:	7d10006f          	j	13e8 <memset>

0000041c <set_cell>:
     41c:	09f00793          	li	a5,159
     420:	06b7c063          	blt	a5,a1,480 <set_cell+0x64>
     424:	02700793          	li	a5,39
     428:	04c7cc63          	blt	a5,a2,480 <set_cell+0x64>
     42c:	4035d713          	srai	a4,a1,0x3
     430:	00271793          	slli	a5,a4,0x2
     434:	00e787b3          	add	a5,a5,a4
     438:	00379713          	slli	a4,a5,0x3
     43c:	00151793          	slli	a5,a0,0x1
     440:	00a787b3          	add	a5,a5,a0
     444:	00379793          	slli	a5,a5,0x3
     448:	00a78533          	add	a0,a5,a0
     44c:	00551513          	slli	a0,a0,0x5
     450:	00a707b3          	add	a5,a4,a0
     454:	80000537          	lui	a0,0x80000
     458:	00450513          	addi	a0,a0,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
     45c:	00f50533          	add	a0,a0,a5
     460:	fff5c593          	not	a1,a1
     464:	00c50633          	add	a2,a0,a2
     468:	00100793          	li	a5,1
     46c:	0075f593          	andi	a1,a1,7
     470:	00b795b3          	sll	a1,a5,a1
     474:	00064783          	lbu	a5,0(a2)
     478:	00f5e5b3          	or	a1,a1,a5
     47c:	00b60023          	sb	a1,0(a2)
     480:	00008067          	ret

00000484 <get_cell>:
     484:	0805c063          	bltz	a1,504 <get_cell+0x80>
     488:	09f00793          	li	a5,159
     48c:	00b7d463          	bge	a5,a1,494 <get_cell+0x10>
     490:	00000593          	li	a1,0
     494:	06064c63          	bltz	a2,50c <get_cell+0x88>
     498:	02700793          	li	a5,39
     49c:	00c7d463          	bge	a5,a2,4a4 <get_cell+0x20>
     4a0:	00000613          	li	a2,0
     4a4:	fff5c713          	not	a4,a1
     4a8:	00777793          	andi	a5,a4,7
     4ac:	4035d593          	srai	a1,a1,0x3
     4b0:	00100713          	li	a4,1
     4b4:	00f71733          	sll	a4,a4,a5
     4b8:	00259793          	slli	a5,a1,0x2
     4bc:	00b785b3          	add	a1,a5,a1
     4c0:	00151793          	slli	a5,a0,0x1
     4c4:	00a787b3          	add	a5,a5,a0
     4c8:	00379793          	slli	a5,a5,0x3
     4cc:	00a78533          	add	a0,a5,a0
     4d0:	00551513          	slli	a0,a0,0x5
     4d4:	00359593          	slli	a1,a1,0x3
     4d8:	00a585b3          	add	a1,a1,a0
     4dc:	80000537          	lui	a0,0x80000
     4e0:	00450513          	addi	a0,a0,4 # 80000004 <__ctr0_io_space_begin+0x80000204>
     4e4:	00b50533          	add	a0,a0,a1
     4e8:	00c50633          	add	a2,a0,a2
     4ec:	00064503          	lbu	a0,0(a2)
     4f0:	00a77533          	and	a0,a4,a0
     4f4:	01851513          	slli	a0,a0,0x18
     4f8:	41855513          	srai	a0,a0,0x18
     4fc:	00a03533          	snez	a0,a0
     500:	00008067          	ret
     504:	09f00593          	li	a1,159
     508:	f8dff06f          	j	494 <get_cell+0x10>
     50c:	02700613          	li	a2,39
     510:	f95ff06f          	j	4a4 <get_cell+0x20>

00000514 <print_universe>:
     514:	fe010113          	addi	sp,sp,-32
     518:	01212823          	sw	s2,16(sp)
     51c:	00050913          	mv	s2,a0
     520:	02b00513          	li	a0,43
     524:	00812c23          	sw	s0,24(sp)
     528:	00112e23          	sw	ra,28(sp)
     52c:	00912a23          	sw	s1,20(sp)
     530:	01312623          	sw	s3,12(sp)
     534:	01412423          	sw	s4,8(sp)
     538:	0a000413          	li	s0,160
     53c:	488000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     540:	fff40413          	addi	s0,s0,-1
     544:	01041413          	slli	s0,s0,0x10
     548:	02d00513          	li	a0,45
     54c:	01045413          	srli	s0,s0,0x10
     550:	474000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     554:	fe0416e3          	bnez	s0,540 <print_universe+0x2c>
     558:	02b00513          	li	a0,43
     55c:	468000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     560:	00d00513          	li	a0,13
     564:	460000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     568:	00a00513          	li	a0,10
     56c:	458000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     570:	0a000a13          	li	s4,160
     574:	02800993          	li	s3,40
     578:	07c00513          	li	a0,124
     57c:	448000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     580:	00000493          	li	s1,0
     584:	00040613          	mv	a2,s0
     588:	00048593          	mv	a1,s1
     58c:	00090513          	mv	a0,s2
     590:	ef5ff0ef          	jal	ra,484 <get_cell>
     594:	06050e63          	beqz	a0,610 <print_universe+0xfc>
     598:	02300513          	li	a0,35
     59c:	00148493          	addi	s1,s1,1
     5a0:	424000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     5a4:	ff4490e3          	bne	s1,s4,584 <print_universe+0x70>
     5a8:	07c00513          	li	a0,124
     5ac:	418000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     5b0:	00d00513          	li	a0,13
     5b4:	410000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     5b8:	00a00513          	li	a0,10
     5bc:	00140413          	addi	s0,s0,1
     5c0:	404000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     5c4:	fb341ae3          	bne	s0,s3,578 <print_universe+0x64>
     5c8:	02b00513          	li	a0,43
     5cc:	3f8000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     5d0:	0a000413          	li	s0,160
     5d4:	fff40413          	addi	s0,s0,-1
     5d8:	01041413          	slli	s0,s0,0x10
     5dc:	02d00513          	li	a0,45
     5e0:	01045413          	srli	s0,s0,0x10
     5e4:	3e0000ef          	jal	ra,9c4 <neorv32_uart0_putc>
     5e8:	fe0416e3          	bnez	s0,5d4 <print_universe+0xc0>
     5ec:	01812403          	lw	s0,24(sp)
     5f0:	01c12083          	lw	ra,28(sp)
     5f4:	01412483          	lw	s1,20(sp)
     5f8:	01012903          	lw	s2,16(sp)
     5fc:	00c12983          	lw	s3,12(sp)
     600:	00812a03          	lw	s4,8(sp)
     604:	02b00513          	li	a0,43
     608:	02010113          	addi	sp,sp,32
     60c:	3b80006f          	j	9c4 <neorv32_uart0_putc>
     610:	02000513          	li	a0,32
     614:	f89ff06f          	j	59c <print_universe+0x88>

00000618 <get_neighborhood>:
     618:	fd010113          	addi	sp,sp,-48
     61c:	01512a23          	sw	s5,20(sp)
     620:	fff58a93          	addi	s5,a1,-1
     624:	02912223          	sw	s1,36(sp)
     628:	01312e23          	sw	s3,28(sp)
     62c:	00060493          	mv	s1,a2
     630:	00058993          	mv	s3,a1
     634:	fff60613          	addi	a2,a2,-1
     638:	000a8593          	mv	a1,s5
     63c:	02112623          	sw	ra,44(sp)
     640:	02812423          	sw	s0,40(sp)
     644:	03212023          	sw	s2,32(sp)
     648:	01412c23          	sw	s4,24(sp)
     64c:	00050913          	mv	s2,a0
     650:	00c12623          	sw	a2,12(sp)
     654:	e31ff0ef          	jal	ra,484 <get_cell>
     658:	00c12603          	lw	a2,12(sp)
     65c:	00098593          	mv	a1,s3
     660:	00050413          	mv	s0,a0
     664:	00090513          	mv	a0,s2
     668:	e1dff0ef          	jal	ra,484 <get_cell>
     66c:	00c12603          	lw	a2,12(sp)
     670:	00198a13          	addi	s4,s3,1
     674:	000a0593          	mv	a1,s4
     678:	00a40433          	add	s0,s0,a0
     67c:	00090513          	mv	a0,s2
     680:	e05ff0ef          	jal	ra,484 <get_cell>
     684:	00048613          	mv	a2,s1
     688:	000a8593          	mv	a1,s5
     68c:	00a40433          	add	s0,s0,a0
     690:	00090513          	mv	a0,s2
     694:	df1ff0ef          	jal	ra,484 <get_cell>
     698:	00048613          	mv	a2,s1
     69c:	000a0593          	mv	a1,s4
     6a0:	00a40433          	add	s0,s0,a0
     6a4:	00090513          	mv	a0,s2
     6a8:	dddff0ef          	jal	ra,484 <get_cell>
     6ac:	00148493          	addi	s1,s1,1
     6b0:	00048613          	mv	a2,s1
     6b4:	000a8593          	mv	a1,s5
     6b8:	00a40433          	add	s0,s0,a0
     6bc:	00090513          	mv	a0,s2
     6c0:	dc5ff0ef          	jal	ra,484 <get_cell>
     6c4:	00048613          	mv	a2,s1
     6c8:	00098593          	mv	a1,s3
     6cc:	00a40433          	add	s0,s0,a0
     6d0:	00090513          	mv	a0,s2
     6d4:	db1ff0ef          	jal	ra,484 <get_cell>
     6d8:	00a40433          	add	s0,s0,a0
     6dc:	00048613          	mv	a2,s1
     6e0:	000a0593          	mv	a1,s4
     6e4:	00090513          	mv	a0,s2
     6e8:	d9dff0ef          	jal	ra,484 <get_cell>
     6ec:	02c12083          	lw	ra,44(sp)
     6f0:	00a40533          	add	a0,s0,a0
     6f4:	02812403          	lw	s0,40(sp)
     6f8:	02412483          	lw	s1,36(sp)
     6fc:	02012903          	lw	s2,32(sp)
     700:	01c12983          	lw	s3,28(sp)
     704:	01812a03          	lw	s4,24(sp)
     708:	01412a83          	lw	s5,20(sp)
     70c:	03010113          	addi	sp,sp,48
     710:	00008067          	ret

00000714 <pop_count>:
     714:	fe010113          	addi	sp,sp,-32
     718:	00912a23          	sw	s1,20(sp)
     71c:	01212823          	sw	s2,16(sp)
     720:	01312623          	sw	s3,12(sp)
     724:	01412423          	sw	s4,8(sp)
     728:	01512223          	sw	s5,4(sp)
     72c:	00112e23          	sw	ra,28(sp)
     730:	00812c23          	sw	s0,24(sp)
     734:	00050993          	mv	s3,a0
     738:	00000913          	li	s2,0
     73c:	00000493          	li	s1,0
     740:	02800a13          	li	s4,40
     744:	0a000a93          	li	s5,160
     748:	00000413          	li	s0,0
     74c:	00040613          	mv	a2,s0
     750:	00048593          	mv	a1,s1
     754:	00098513          	mv	a0,s3
     758:	d2dff0ef          	jal	ra,484 <get_cell>
     75c:	00140413          	addi	s0,s0,1
     760:	00a90933          	add	s2,s2,a0
     764:	ff4414e3          	bne	s0,s4,74c <pop_count+0x38>
     768:	00148493          	addi	s1,s1,1
     76c:	fd549ee3          	bne	s1,s5,748 <pop_count+0x34>
     770:	01c12083          	lw	ra,28(sp)
     774:	01812403          	lw	s0,24(sp)
     778:	01412483          	lw	s1,20(sp)
     77c:	00c12983          	lw	s3,12(sp)
     780:	00812a03          	lw	s4,8(sp)
     784:	00412a83          	lw	s5,4(sp)
     788:	00090513          	mv	a0,s2
     78c:	01012903          	lw	s2,16(sp)
     790:	02010113          	addi	sp,sp,32
     794:	00008067          	ret

00000798 <xorshift32>:
     798:	800007b7          	lui	a5,0x80000
     79c:	00078793          	mv	a5,a5
     7a0:	0007a503          	lw	a0,0(a5) # 80000000 <__ctr0_io_space_begin+0x80000200>
     7a4:	00d51713          	slli	a4,a0,0xd
     7a8:	00a74733          	xor	a4,a4,a0
     7ac:	01175513          	srli	a0,a4,0x11
     7b0:	00e54733          	xor	a4,a0,a4
     7b4:	00571513          	slli	a0,a4,0x5
     7b8:	00e54533          	xor	a0,a0,a4
     7bc:	00a7a023          	sw	a0,0(a5)
     7c0:	00008067          	ret

000007c4 <__neorv32_uart_itoa>:
     7c4:	fd010113          	addi	sp,sp,-48
     7c8:	02812423          	sw	s0,40(sp)
     7cc:	02912223          	sw	s1,36(sp)
     7d0:	03212023          	sw	s2,32(sp)
     7d4:	01312e23          	sw	s3,28(sp)
     7d8:	01412c23          	sw	s4,24(sp)
     7dc:	02112623          	sw	ra,44(sp)
     7e0:	01512a23          	sw	s5,20(sp)
     7e4:	00001a37          	lui	s4,0x1
     7e8:	00050493          	mv	s1,a0
     7ec:	00058413          	mv	s0,a1
     7f0:	00058523          	sb	zero,10(a1)
     7f4:	00000993          	li	s3,0
     7f8:	00410913          	addi	s2,sp,4
     7fc:	660a0a13          	addi	s4,s4,1632 # 1660 <numbers.1>
     800:	00a00593          	li	a1,10
     804:	00048513          	mv	a0,s1
     808:	37d000ef          	jal	ra,1384 <__umodsi3>
     80c:	00aa0533          	add	a0,s4,a0
     810:	00054783          	lbu	a5,0(a0)
     814:	01390ab3          	add	s5,s2,s3
     818:	00048513          	mv	a0,s1
     81c:	00fa8023          	sb	a5,0(s5)
     820:	00a00593          	li	a1,10
     824:	319000ef          	jal	ra,133c <__udivsi3>
     828:	00198993          	addi	s3,s3,1
     82c:	00a00793          	li	a5,10
     830:	00050493          	mv	s1,a0
     834:	fcf996e3          	bne	s3,a5,800 <__neorv32_uart_itoa+0x3c>
     838:	00090693          	mv	a3,s2
     83c:	00900713          	li	a4,9
     840:	03000613          	li	a2,48
     844:	0096c583          	lbu	a1,9(a3)
     848:	00070793          	mv	a5,a4
     84c:	fff70713          	addi	a4,a4,-1
     850:	01071713          	slli	a4,a4,0x10
     854:	01075713          	srli	a4,a4,0x10
     858:	00c59a63          	bne	a1,a2,86c <__neorv32_uart_itoa+0xa8>
     85c:	000684a3          	sb	zero,9(a3)
     860:	fff68693          	addi	a3,a3,-1
     864:	fe0710e3          	bnez	a4,844 <__neorv32_uart_itoa+0x80>
     868:	00000793          	li	a5,0
     86c:	00f907b3          	add	a5,s2,a5
     870:	00000593          	li	a1,0
     874:	0007c703          	lbu	a4,0(a5)
     878:	00070c63          	beqz	a4,890 <__neorv32_uart_itoa+0xcc>
     87c:	00158693          	addi	a3,a1,1
     880:	00b405b3          	add	a1,s0,a1
     884:	00e58023          	sb	a4,0(a1)
     888:	01069593          	slli	a1,a3,0x10
     88c:	0105d593          	srli	a1,a1,0x10
     890:	fff78713          	addi	a4,a5,-1
     894:	02f91863          	bne	s2,a5,8c4 <__neorv32_uart_itoa+0x100>
     898:	00b40433          	add	s0,s0,a1
     89c:	00040023          	sb	zero,0(s0)
     8a0:	02c12083          	lw	ra,44(sp)
     8a4:	02812403          	lw	s0,40(sp)
     8a8:	02412483          	lw	s1,36(sp)
     8ac:	02012903          	lw	s2,32(sp)
     8b0:	01c12983          	lw	s3,28(sp)
     8b4:	01812a03          	lw	s4,24(sp)
     8b8:	01412a83          	lw	s5,20(sp)
     8bc:	03010113          	addi	sp,sp,48
     8c0:	00008067          	ret
     8c4:	00070793          	mv	a5,a4
     8c8:	fadff06f          	j	874 <__neorv32_uart_itoa+0xb0>

000008cc <__neorv32_uart_tohex>:
     8cc:	00001637          	lui	a2,0x1
     8d0:	00758693          	addi	a3,a1,7
     8d4:	00000713          	li	a4,0
     8d8:	66c60613          	addi	a2,a2,1644 # 166c <symbols.0>
     8dc:	02000813          	li	a6,32
     8e0:	00e557b3          	srl	a5,a0,a4
     8e4:	00f7f793          	andi	a5,a5,15
     8e8:	00f607b3          	add	a5,a2,a5
     8ec:	0007c783          	lbu	a5,0(a5)
     8f0:	00470713          	addi	a4,a4,4
     8f4:	fff68693          	addi	a3,a3,-1
     8f8:	00f680a3          	sb	a5,1(a3)
     8fc:	ff0712e3          	bne	a4,a6,8e0 <__neorv32_uart_tohex+0x14>
     900:	00058423          	sb	zero,8(a1)
     904:	00008067          	ret

00000908 <neorv32_uart0_available>:
     908:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     90c:	01255513          	srli	a0,a0,0x12
     910:	00157513          	andi	a0,a0,1
     914:	00008067          	ret

00000918 <neorv32_uart0_setup>:
     918:	ff010113          	addi	sp,sp,-16
     91c:	00812423          	sw	s0,8(sp)
     920:	00912223          	sw	s1,4(sp)
     924:	00112623          	sw	ra,12(sp)
     928:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     92c:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     930:	00058413          	mv	s0,a1
     934:	00151593          	slli	a1,a0,0x1
     938:	00078513          	mv	a0,a5
     93c:	00060493          	mv	s1,a2
     940:	1fd000ef          	jal	ra,133c <__udivsi3>
     944:	01051513          	slli	a0,a0,0x10
     948:	000017b7          	lui	a5,0x1
     94c:	01055513          	srli	a0,a0,0x10
     950:	00000713          	li	a4,0
     954:	ffe78793          	addi	a5,a5,-2 # ffe <__neorv32_rte_debug_exc_handler+0xbe>
     958:	04a7e463          	bltu	a5,a0,9a0 <neorv32_uart0_setup+0x88>
     95c:	0034f793          	andi	a5,s1,3
     960:	00347413          	andi	s0,s0,3
     964:	fff50513          	addi	a0,a0,-1
     968:	01479793          	slli	a5,a5,0x14
     96c:	01641413          	slli	s0,s0,0x16
     970:	00f567b3          	or	a5,a0,a5
     974:	0087e7b3          	or	a5,a5,s0
     978:	01871713          	slli	a4,a4,0x18
     97c:	00c12083          	lw	ra,12(sp)
     980:	00812403          	lw	s0,8(sp)
     984:	00e7e7b3          	or	a5,a5,a4
     988:	10000737          	lui	a4,0x10000
     98c:	00e7e7b3          	or	a5,a5,a4
     990:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     994:	00412483          	lw	s1,4(sp)
     998:	01010113          	addi	sp,sp,16
     99c:	00008067          	ret
     9a0:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffe64e>
     9a4:	0fd6f693          	andi	a3,a3,253
     9a8:	00069a63          	bnez	a3,9bc <neorv32_uart0_setup+0xa4>
     9ac:	00355513          	srli	a0,a0,0x3
     9b0:	00170713          	addi	a4,a4,1
     9b4:	0ff77713          	andi	a4,a4,255
     9b8:	fa1ff06f          	j	958 <neorv32_uart0_setup+0x40>
     9bc:	00155513          	srli	a0,a0,0x1
     9c0:	ff1ff06f          	j	9b0 <neorv32_uart0_setup+0x98>

000009c4 <neorv32_uart0_putc>:
     9c4:	00040737          	lui	a4,0x40
     9c8:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     9cc:	00e7f7b3          	and	a5,a5,a4
     9d0:	fe079ce3          	bnez	a5,9c8 <neorv32_uart0_putc+0x4>
     9d4:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     9d8:	00008067          	ret

000009dc <neorv32_uart0_getc>:
     9dc:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     9e0:	fe055ee3          	bgez	a0,9dc <neorv32_uart0_getc>
     9e4:	0ff57513          	andi	a0,a0,255
     9e8:	00008067          	ret

000009ec <neorv32_uart0_char_received>:
     9ec:	fa402503          	lw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     9f0:	01f55513          	srli	a0,a0,0x1f
     9f4:	00008067          	ret

000009f8 <neorv32_uart0_print>:
     9f8:	ff010113          	addi	sp,sp,-16
     9fc:	00812423          	sw	s0,8(sp)
     a00:	01212023          	sw	s2,0(sp)
     a04:	00112623          	sw	ra,12(sp)
     a08:	00912223          	sw	s1,4(sp)
     a0c:	00050413          	mv	s0,a0
     a10:	00a00913          	li	s2,10
     a14:	00044483          	lbu	s1,0(s0)
     a18:	00140413          	addi	s0,s0,1
     a1c:	00049e63          	bnez	s1,a38 <neorv32_uart0_print+0x40>
     a20:	00c12083          	lw	ra,12(sp)
     a24:	00812403          	lw	s0,8(sp)
     a28:	00412483          	lw	s1,4(sp)
     a2c:	00012903          	lw	s2,0(sp)
     a30:	01010113          	addi	sp,sp,16
     a34:	00008067          	ret
     a38:	01249663          	bne	s1,s2,a44 <neorv32_uart0_print+0x4c>
     a3c:	00d00513          	li	a0,13
     a40:	f85ff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     a44:	00048513          	mv	a0,s1
     a48:	f7dff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     a4c:	fc9ff06f          	j	a14 <neorv32_uart0_print+0x1c>

00000a50 <neorv32_uart0_printf>:
     a50:	fa010113          	addi	sp,sp,-96
     a54:	04f12a23          	sw	a5,84(sp)
     a58:	04410793          	addi	a5,sp,68
     a5c:	02812c23          	sw	s0,56(sp)
     a60:	03212823          	sw	s2,48(sp)
     a64:	03412423          	sw	s4,40(sp)
     a68:	03512223          	sw	s5,36(sp)
     a6c:	03612023          	sw	s6,32(sp)
     a70:	01712e23          	sw	s7,28(sp)
     a74:	01812c23          	sw	s8,24(sp)
     a78:	01912a23          	sw	s9,20(sp)
     a7c:	02112e23          	sw	ra,60(sp)
     a80:	02912a23          	sw	s1,52(sp)
     a84:	03312623          	sw	s3,44(sp)
     a88:	00050413          	mv	s0,a0
     a8c:	04b12223          	sw	a1,68(sp)
     a90:	04c12423          	sw	a2,72(sp)
     a94:	04d12623          	sw	a3,76(sp)
     a98:	04e12823          	sw	a4,80(sp)
     a9c:	05012c23          	sw	a6,88(sp)
     aa0:	05112e23          	sw	a7,92(sp)
     aa4:	00f12023          	sw	a5,0(sp)
     aa8:	02500a13          	li	s4,37
     aac:	00a00a93          	li	s5,10
     ab0:	07300913          	li	s2,115
     ab4:	07500b13          	li	s6,117
     ab8:	07800b93          	li	s7,120
     abc:	06300c13          	li	s8,99
     ac0:	06900c93          	li	s9,105
     ac4:	00044483          	lbu	s1,0(s0)
     ac8:	02049c63          	bnez	s1,b00 <neorv32_uart0_printf+0xb0>
     acc:	03c12083          	lw	ra,60(sp)
     ad0:	03812403          	lw	s0,56(sp)
     ad4:	03412483          	lw	s1,52(sp)
     ad8:	03012903          	lw	s2,48(sp)
     adc:	02c12983          	lw	s3,44(sp)
     ae0:	02812a03          	lw	s4,40(sp)
     ae4:	02412a83          	lw	s5,36(sp)
     ae8:	02012b03          	lw	s6,32(sp)
     aec:	01c12b83          	lw	s7,28(sp)
     af0:	01812c03          	lw	s8,24(sp)
     af4:	01412c83          	lw	s9,20(sp)
     af8:	06010113          	addi	sp,sp,96
     afc:	00008067          	ret
     b00:	0d449863          	bne	s1,s4,bd0 <neorv32_uart0_printf+0x180>
     b04:	00240993          	addi	s3,s0,2
     b08:	00144403          	lbu	s0,1(s0)
     b0c:	05240263          	beq	s0,s2,b50 <neorv32_uart0_printf+0x100>
     b10:	00896e63          	bltu	s2,s0,b2c <neorv32_uart0_printf+0xdc>
     b14:	05840c63          	beq	s0,s8,b6c <neorv32_uart0_printf+0x11c>
     b18:	07940663          	beq	s0,s9,b84 <neorv32_uart0_printf+0x134>
     b1c:	02500513          	li	a0,37
     b20:	ea5ff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     b24:	00040513          	mv	a0,s0
     b28:	0540006f          	j	b7c <neorv32_uart0_printf+0x12c>
     b2c:	09640663          	beq	s0,s6,bb8 <neorv32_uart0_printf+0x168>
     b30:	ff7416e3          	bne	s0,s7,b1c <neorv32_uart0_printf+0xcc>
     b34:	00012783          	lw	a5,0(sp)
     b38:	00410593          	addi	a1,sp,4
     b3c:	0007a503          	lw	a0,0(a5)
     b40:	00478713          	addi	a4,a5,4
     b44:	00e12023          	sw	a4,0(sp)
     b48:	d85ff0ef          	jal	ra,8cc <__neorv32_uart_tohex>
     b4c:	0640006f          	j	bb0 <neorv32_uart0_printf+0x160>
     b50:	00012783          	lw	a5,0(sp)
     b54:	0007a503          	lw	a0,0(a5)
     b58:	00478713          	addi	a4,a5,4
     b5c:	00e12023          	sw	a4,0(sp)
     b60:	e99ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
     b64:	00098413          	mv	s0,s3
     b68:	f5dff06f          	j	ac4 <neorv32_uart0_printf+0x74>
     b6c:	00012783          	lw	a5,0(sp)
     b70:	0007c503          	lbu	a0,0(a5)
     b74:	00478713          	addi	a4,a5,4
     b78:	00e12023          	sw	a4,0(sp)
     b7c:	e49ff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     b80:	fe5ff06f          	j	b64 <neorv32_uart0_printf+0x114>
     b84:	00012783          	lw	a5,0(sp)
     b88:	0007a403          	lw	s0,0(a5)
     b8c:	00478713          	addi	a4,a5,4
     b90:	00e12023          	sw	a4,0(sp)
     b94:	00045863          	bgez	s0,ba4 <neorv32_uart0_printf+0x154>
     b98:	02d00513          	li	a0,45
     b9c:	40800433          	neg	s0,s0
     ba0:	e25ff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     ba4:	00410593          	addi	a1,sp,4
     ba8:	00040513          	mv	a0,s0
     bac:	c19ff0ef          	jal	ra,7c4 <__neorv32_uart_itoa>
     bb0:	00410513          	addi	a0,sp,4
     bb4:	fadff06f          	j	b60 <neorv32_uart0_printf+0x110>
     bb8:	00012783          	lw	a5,0(sp)
     bbc:	00410593          	addi	a1,sp,4
     bc0:	00478713          	addi	a4,a5,4
     bc4:	0007a503          	lw	a0,0(a5)
     bc8:	00e12023          	sw	a4,0(sp)
     bcc:	fe1ff06f          	j	bac <neorv32_uart0_printf+0x15c>
     bd0:	01549663          	bne	s1,s5,bdc <neorv32_uart0_printf+0x18c>
     bd4:	00d00513          	li	a0,13
     bd8:	dedff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     bdc:	00140993          	addi	s3,s0,1
     be0:	00048513          	mv	a0,s1
     be4:	f99ff06f          	j	b7c <neorv32_uart0_printf+0x12c>

00000be8 <neorv32_cpu_get_systime>:
     be8:	ff010113          	addi	sp,sp,-16
     bec:	c81026f3          	rdtimeh	a3
     bf0:	c0102773          	rdtime	a4
     bf4:	c81027f3          	rdtimeh	a5
     bf8:	fed79ae3          	bne	a5,a3,bec <neorv32_cpu_get_systime+0x4>
     bfc:	00e12023          	sw	a4,0(sp)
     c00:	00f12223          	sw	a5,4(sp)
     c04:	00012503          	lw	a0,0(sp)
     c08:	00412583          	lw	a1,4(sp)
     c0c:	01010113          	addi	sp,sp,16
     c10:	00008067          	ret

00000c14 <neorv32_cpu_delay_ms>:
     c14:	fd010113          	addi	sp,sp,-48
     c18:	00a12623          	sw	a0,12(sp)
     c1c:	fe002503          	lw	a0,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     c20:	3e800593          	li	a1,1000
     c24:	02112623          	sw	ra,44(sp)
     c28:	02812423          	sw	s0,40(sp)
     c2c:	02912223          	sw	s1,36(sp)
     c30:	03212023          	sw	s2,32(sp)
     c34:	01312e23          	sw	s3,28(sp)
     c38:	704000ef          	jal	ra,133c <__udivsi3>
     c3c:	00c12603          	lw	a2,12(sp)
     c40:	00000693          	li	a3,0
     c44:	00000593          	li	a1,0
     c48:	65c000ef          	jal	ra,12a4 <__muldi3>
     c4c:	00050413          	mv	s0,a0
     c50:	00058993          	mv	s3,a1
     c54:	f95ff0ef          	jal	ra,be8 <neorv32_cpu_get_systime>
     c58:	00058913          	mv	s2,a1
     c5c:	00050493          	mv	s1,a0
     c60:	f89ff0ef          	jal	ra,be8 <neorv32_cpu_get_systime>
     c64:	00b96663          	bltu	s2,a1,c70 <neorv32_cpu_delay_ms+0x5c>
     c68:	05259263          	bne	a1,s2,cac <neorv32_cpu_delay_ms+0x98>
     c6c:	04a4f063          	bgeu	s1,a0,cac <neorv32_cpu_delay_ms+0x98>
     c70:	008484b3          	add	s1,s1,s0
     c74:	0084b433          	sltu	s0,s1,s0
     c78:	01390933          	add	s2,s2,s3
     c7c:	01240433          	add	s0,s0,s2
     c80:	f69ff0ef          	jal	ra,be8 <neorv32_cpu_get_systime>
     c84:	fe85eee3          	bltu	a1,s0,c80 <neorv32_cpu_delay_ms+0x6c>
     c88:	00b41463          	bne	s0,a1,c90 <neorv32_cpu_delay_ms+0x7c>
     c8c:	fe956ae3          	bltu	a0,s1,c80 <neorv32_cpu_delay_ms+0x6c>
     c90:	02c12083          	lw	ra,44(sp)
     c94:	02812403          	lw	s0,40(sp)
     c98:	02412483          	lw	s1,36(sp)
     c9c:	02012903          	lw	s2,32(sp)
     ca0:	01c12983          	lw	s3,28(sp)
     ca4:	03010113          	addi	sp,sp,48
     ca8:	00008067          	ret
     cac:	01c99913          	slli	s2,s3,0x1c
     cb0:	00445413          	srli	s0,s0,0x4
     cb4:	00896433          	or	s0,s2,s0

00000cb8 <__neorv32_cpu_delay_ms_start>:
     cb8:	00040a63          	beqz	s0,ccc <__neorv32_cpu_delay_ms_end>
     cbc:	00040863          	beqz	s0,ccc <__neorv32_cpu_delay_ms_end>
     cc0:	fff40413          	addi	s0,s0,-1
     cc4:	00000013          	nop
     cc8:	ff1ff06f          	j	cb8 <__neorv32_cpu_delay_ms_start>

00000ccc <__neorv32_cpu_delay_ms_end>:
     ccc:	fc5ff06f          	j	c90 <neorv32_cpu_delay_ms+0x7c>

00000cd0 <__neorv32_rte_core>:
     cd0:	fc010113          	addi	sp,sp,-64
     cd4:	02112e23          	sw	ra,60(sp)
     cd8:	02512c23          	sw	t0,56(sp)
     cdc:	02612a23          	sw	t1,52(sp)
     ce0:	02712823          	sw	t2,48(sp)
     ce4:	02a12623          	sw	a0,44(sp)
     ce8:	02b12423          	sw	a1,40(sp)
     cec:	02c12223          	sw	a2,36(sp)
     cf0:	02d12023          	sw	a3,32(sp)
     cf4:	00e12e23          	sw	a4,28(sp)
     cf8:	00f12c23          	sw	a5,24(sp)
     cfc:	01012a23          	sw	a6,20(sp)
     d00:	01112823          	sw	a7,16(sp)
     d04:	01c12623          	sw	t3,12(sp)
     d08:	01d12423          	sw	t4,8(sp)
     d0c:	01e12223          	sw	t5,4(sp)
     d10:	01f12023          	sw	t6,0(sp)
     d14:	34102773          	csrr	a4,mepc
     d18:	34071073          	csrw	mscratch,a4
     d1c:	342027f3          	csrr	a5,mcause
     d20:	0807ca63          	bltz	a5,db4 <__neorv32_rte_core+0xe4>
     d24:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3e650>
     d28:	00300593          	li	a1,3
     d2c:	0036f693          	andi	a3,a3,3
     d30:	00270613          	addi	a2,a4,2
     d34:	00b69463          	bne	a3,a1,d3c <__neorv32_rte_core+0x6c>
     d38:	00470613          	addi	a2,a4,4
     d3c:	34161073          	csrw	mepc,a2
     d40:	00b00713          	li	a4,11
     d44:	04f77c63          	bgeu	a4,a5,d9c <__neorv32_rte_core+0xcc>
     d48:	000017b7          	lui	a5,0x1
     d4c:	f4078793          	addi	a5,a5,-192 # f40 <__neorv32_rte_debug_exc_handler>
     d50:	000780e7          	jalr	a5
     d54:	03c12083          	lw	ra,60(sp)
     d58:	03812283          	lw	t0,56(sp)
     d5c:	03412303          	lw	t1,52(sp)
     d60:	03012383          	lw	t2,48(sp)
     d64:	02c12503          	lw	a0,44(sp)
     d68:	02812583          	lw	a1,40(sp)
     d6c:	02412603          	lw	a2,36(sp)
     d70:	02012683          	lw	a3,32(sp)
     d74:	01c12703          	lw	a4,28(sp)
     d78:	01812783          	lw	a5,24(sp)
     d7c:	01412803          	lw	a6,20(sp)
     d80:	01012883          	lw	a7,16(sp)
     d84:	00c12e03          	lw	t3,12(sp)
     d88:	00812e83          	lw	t4,8(sp)
     d8c:	00412f03          	lw	t5,4(sp)
     d90:	00012f83          	lw	t6,0(sp)
     d94:	04010113          	addi	sp,sp,64
     d98:	30200073          	mret
     d9c:	00001737          	lui	a4,0x1
     da0:	00279793          	slli	a5,a5,0x2
     da4:	68070713          	addi	a4,a4,1664 # 1680 <symbols.0+0x14>
     da8:	00e787b3          	add	a5,a5,a4
     dac:	0007a783          	lw	a5,0(a5)
     db0:	00078067          	jr	a5
     db4:	80000737          	lui	a4,0x80000
     db8:	ffd74713          	xori	a4,a4,-3
     dbc:	00e787b3          	add	a5,a5,a4
     dc0:	01c00713          	li	a4,28
     dc4:	f8f762e3          	bltu	a4,a5,d48 <__neorv32_rte_core+0x78>
     dc8:	00001737          	lui	a4,0x1
     dcc:	00279793          	slli	a5,a5,0x2
     dd0:	6b070713          	addi	a4,a4,1712 # 16b0 <symbols.0+0x44>
     dd4:	00e787b3          	add	a5,a5,a4
     dd8:	0007a783          	lw	a5,0(a5)
     ddc:	00078067          	jr	a5
     de0:	e441a783          	lw	a5,-444(gp) # 80000644 <__neorv32_rte_vector_lut>
     de4:	f6dff06f          	j	d50 <__neorv32_rte_core+0x80>
     de8:	e481a783          	lw	a5,-440(gp) # 80000648 <__neorv32_rte_vector_lut+0x4>
     dec:	f65ff06f          	j	d50 <__neorv32_rte_core+0x80>
     df0:	e4c1a783          	lw	a5,-436(gp) # 8000064c <__neorv32_rte_vector_lut+0x8>
     df4:	f5dff06f          	j	d50 <__neorv32_rte_core+0x80>
     df8:	e501a783          	lw	a5,-432(gp) # 80000650 <__neorv32_rte_vector_lut+0xc>
     dfc:	f55ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e00:	e541a783          	lw	a5,-428(gp) # 80000654 <__neorv32_rte_vector_lut+0x10>
     e04:	f4dff06f          	j	d50 <__neorv32_rte_core+0x80>
     e08:	e581a783          	lw	a5,-424(gp) # 80000658 <__neorv32_rte_vector_lut+0x14>
     e0c:	f45ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e10:	e5c1a783          	lw	a5,-420(gp) # 8000065c <__neorv32_rte_vector_lut+0x18>
     e14:	f3dff06f          	j	d50 <__neorv32_rte_core+0x80>
     e18:	e601a783          	lw	a5,-416(gp) # 80000660 <__neorv32_rte_vector_lut+0x1c>
     e1c:	f35ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e20:	e641a783          	lw	a5,-412(gp) # 80000664 <__neorv32_rte_vector_lut+0x20>
     e24:	f2dff06f          	j	d50 <__neorv32_rte_core+0x80>
     e28:	e681a783          	lw	a5,-408(gp) # 80000668 <__neorv32_rte_vector_lut+0x24>
     e2c:	f25ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e30:	e6c1a783          	lw	a5,-404(gp) # 8000066c <__neorv32_rte_vector_lut+0x28>
     e34:	f1dff06f          	j	d50 <__neorv32_rte_core+0x80>
     e38:	e701a783          	lw	a5,-400(gp) # 80000670 <__neorv32_rte_vector_lut+0x2c>
     e3c:	f15ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e40:	e741a783          	lw	a5,-396(gp) # 80000674 <__neorv32_rte_vector_lut+0x30>
     e44:	f0dff06f          	j	d50 <__neorv32_rte_core+0x80>
     e48:	e781a783          	lw	a5,-392(gp) # 80000678 <__neorv32_rte_vector_lut+0x34>
     e4c:	f05ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e50:	e7c1a783          	lw	a5,-388(gp) # 8000067c <__neorv32_rte_vector_lut+0x38>
     e54:	efdff06f          	j	d50 <__neorv32_rte_core+0x80>
     e58:	e801a783          	lw	a5,-384(gp) # 80000680 <__neorv32_rte_vector_lut+0x3c>
     e5c:	ef5ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e60:	e841a783          	lw	a5,-380(gp) # 80000684 <__neorv32_rte_vector_lut+0x40>
     e64:	eedff06f          	j	d50 <__neorv32_rte_core+0x80>
     e68:	e881a783          	lw	a5,-376(gp) # 80000688 <__neorv32_rte_vector_lut+0x44>
     e6c:	ee5ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e70:	e8c1a783          	lw	a5,-372(gp) # 8000068c <__neorv32_rte_vector_lut+0x48>
     e74:	eddff06f          	j	d50 <__neorv32_rte_core+0x80>
     e78:	e901a783          	lw	a5,-368(gp) # 80000690 <__neorv32_rte_vector_lut+0x4c>
     e7c:	ed5ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e80:	e941a783          	lw	a5,-364(gp) # 80000694 <__neorv32_rte_vector_lut+0x50>
     e84:	ecdff06f          	j	d50 <__neorv32_rte_core+0x80>
     e88:	e981a783          	lw	a5,-360(gp) # 80000698 <__neorv32_rte_vector_lut+0x54>
     e8c:	ec5ff06f          	j	d50 <__neorv32_rte_core+0x80>
     e90:	e9c1a783          	lw	a5,-356(gp) # 8000069c <__neorv32_rte_vector_lut+0x58>
     e94:	ebdff06f          	j	d50 <__neorv32_rte_core+0x80>
     e98:	ea01a783          	lw	a5,-352(gp) # 800006a0 <__neorv32_rte_vector_lut+0x5c>
     e9c:	eb5ff06f          	j	d50 <__neorv32_rte_core+0x80>
     ea0:	ea41a783          	lw	a5,-348(gp) # 800006a4 <__neorv32_rte_vector_lut+0x60>
     ea4:	eadff06f          	j	d50 <__neorv32_rte_core+0x80>
     ea8:	ea81a783          	lw	a5,-344(gp) # 800006a8 <__neorv32_rte_vector_lut+0x64>
     eac:	ea5ff06f          	j	d50 <__neorv32_rte_core+0x80>
     eb0:	eac1a783          	lw	a5,-340(gp) # 800006ac <__neorv32_rte_vector_lut+0x68>
     eb4:	e9dff06f          	j	d50 <__neorv32_rte_core+0x80>
     eb8:	eb01a783          	lw	a5,-336(gp) # 800006b0 <__neorv32_rte_vector_lut+0x6c>
     ebc:	e95ff06f          	j	d50 <__neorv32_rte_core+0x80>
     ec0:	eb41a783          	lw	a5,-332(gp) # 800006b4 <__neorv32_rte_vector_lut+0x70>
     ec4:	e8dff06f          	j	d50 <__neorv32_rte_core+0x80>
     ec8:	0000                	unimp
     eca:	0000                	unimp
     ecc:	0000                	unimp
     ece:	0000                	unimp

00000ed0 <__neorv32_rte_print_hex_word>:
     ed0:	fe010113          	addi	sp,sp,-32
     ed4:	01212823          	sw	s2,16(sp)
     ed8:	00050913          	mv	s2,a0
     edc:	00001537          	lui	a0,0x1
     ee0:	00912a23          	sw	s1,20(sp)
     ee4:	72450513          	addi	a0,a0,1828 # 1724 <symbols.0+0xb8>
     ee8:	000024b7          	lui	s1,0x2
     eec:	00812c23          	sw	s0,24(sp)
     ef0:	01312623          	sw	s3,12(sp)
     ef4:	00112e23          	sw	ra,28(sp)
     ef8:	01c00413          	li	s0,28
     efc:	afdff0ef          	jal	ra,9f8 <neorv32_uart0_print>
     f00:	9a048493          	addi	s1,s1,-1632 # 19a0 <hex_symbols.0>
     f04:	ffc00993          	li	s3,-4
     f08:	008957b3          	srl	a5,s2,s0
     f0c:	00f7f793          	andi	a5,a5,15
     f10:	00f487b3          	add	a5,s1,a5
     f14:	0007c503          	lbu	a0,0(a5)
     f18:	ffc40413          	addi	s0,s0,-4
     f1c:	aa9ff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
     f20:	ff3414e3          	bne	s0,s3,f08 <__neorv32_rte_print_hex_word+0x38>
     f24:	01c12083          	lw	ra,28(sp)
     f28:	01812403          	lw	s0,24(sp)
     f2c:	01412483          	lw	s1,20(sp)
     f30:	01012903          	lw	s2,16(sp)
     f34:	00c12983          	lw	s3,12(sp)
     f38:	02010113          	addi	sp,sp,32
     f3c:	00008067          	ret

00000f40 <__neorv32_rte_debug_exc_handler>:
     f40:	ff010113          	addi	sp,sp,-16
     f44:	00112623          	sw	ra,12(sp)
     f48:	00812423          	sw	s0,8(sp)
     f4c:	00912223          	sw	s1,4(sp)
     f50:	9b9ff0ef          	jal	ra,908 <neorv32_uart0_available>
     f54:	1c050863          	beqz	a0,1124 <__neorv32_rte_debug_exc_handler+0x1e4>
     f58:	00001537          	lui	a0,0x1
     f5c:	72850513          	addi	a0,a0,1832 # 1728 <symbols.0+0xbc>
     f60:	a99ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
     f64:	34202473          	csrr	s0,mcause
     f68:	00900713          	li	a4,9
     f6c:	00f47793          	andi	a5,s0,15
     f70:	03078493          	addi	s1,a5,48
     f74:	00f77463          	bgeu	a4,a5,f7c <__neorv32_rte_debug_exc_handler+0x3c>
     f78:	05778493          	addi	s1,a5,87
     f7c:	00b00793          	li	a5,11
     f80:	0087ee63          	bltu	a5,s0,f9c <__neorv32_rte_debug_exc_handler+0x5c>
     f84:	00002737          	lui	a4,0x2
     f88:	00241793          	slli	a5,s0,0x2
     f8c:	8e870713          	addi	a4,a4,-1816 # 18e8 <symbols.0+0x27c>
     f90:	00e787b3          	add	a5,a5,a4
     f94:	0007a783          	lw	a5,0(a5)
     f98:	00078067          	jr	a5
     f9c:	800007b7          	lui	a5,0x80000
     fa0:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     fa4:	14e40e63          	beq	s0,a4,1100 <__neorv32_rte_debug_exc_handler+0x1c0>
     fa8:	02876a63          	bltu	a4,s0,fdc <__neorv32_rte_debug_exc_handler+0x9c>
     fac:	00378713          	addi	a4,a5,3
     fb0:	12e40c63          	beq	s0,a4,10e8 <__neorv32_rte_debug_exc_handler+0x1a8>
     fb4:	00778793          	addi	a5,a5,7
     fb8:	12f40e63          	beq	s0,a5,10f4 <__neorv32_rte_debug_exc_handler+0x1b4>
     fbc:	00002537          	lui	a0,0x2
     fc0:	88850513          	addi	a0,a0,-1912 # 1888 <symbols.0+0x21c>
     fc4:	a35ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
     fc8:	00040513          	mv	a0,s0
     fcc:	f05ff0ef          	jal	ra,ed0 <__neorv32_rte_print_hex_word>
     fd0:	00100793          	li	a5,1
     fd4:	08f40c63          	beq	s0,a5,106c <__neorv32_rte_debug_exc_handler+0x12c>
     fd8:	0280006f          	j	1000 <__neorv32_rte_debug_exc_handler+0xc0>
     fdc:	ff07c793          	xori	a5,a5,-16
     fe0:	00f407b3          	add	a5,s0,a5
     fe4:	00f00713          	li	a4,15
     fe8:	fcf76ae3          	bltu	a4,a5,fbc <__neorv32_rte_debug_exc_handler+0x7c>
     fec:	00002537          	lui	a0,0x2
     ff0:	87850513          	addi	a0,a0,-1928 # 1878 <symbols.0+0x20c>
     ff4:	a05ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
     ff8:	00048513          	mv	a0,s1
     ffc:	9c9ff0ef          	jal	ra,9c4 <neorv32_uart0_putc>
    1000:	ffd47413          	andi	s0,s0,-3
    1004:	00500793          	li	a5,5
    1008:	06f40263          	beq	s0,a5,106c <__neorv32_rte_debug_exc_handler+0x12c>
    100c:	00002537          	lui	a0,0x2
    1010:	8cc50513          	addi	a0,a0,-1844 # 18cc <symbols.0+0x260>
    1014:	9e5ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
    1018:	34002573          	csrr	a0,mscratch
    101c:	eb5ff0ef          	jal	ra,ed0 <__neorv32_rte_print_hex_word>
    1020:	00002537          	lui	a0,0x2
    1024:	8d450513          	addi	a0,a0,-1836 # 18d4 <symbols.0+0x268>
    1028:	9d1ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
    102c:	34302573          	csrr	a0,mtval
    1030:	ea1ff0ef          	jal	ra,ed0 <__neorv32_rte_print_hex_word>
    1034:	00812403          	lw	s0,8(sp)
    1038:	00c12083          	lw	ra,12(sp)
    103c:	00412483          	lw	s1,4(sp)
    1040:	00002537          	lui	a0,0x2
    1044:	8e050513          	addi	a0,a0,-1824 # 18e0 <symbols.0+0x274>
    1048:	01010113          	addi	sp,sp,16
    104c:	9adff06f          	j	9f8 <neorv32_uart0_print>
    1050:	00001537          	lui	a0,0x1
    1054:	73050513          	addi	a0,a0,1840 # 1730 <symbols.0+0xc4>
    1058:	9a1ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
    105c:	fb1ff06f          	j	100c <__neorv32_rte_debug_exc_handler+0xcc>
    1060:	00001537          	lui	a0,0x1
    1064:	75050513          	addi	a0,a0,1872 # 1750 <symbols.0+0xe4>
    1068:	991ff0ef          	jal	ra,9f8 <neorv32_uart0_print>
    106c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
    1070:	0a07d463          	bgez	a5,1118 <__neorv32_rte_debug_exc_handler+0x1d8>
    1074:	0017f793          	andi	a5,a5,1
    1078:	08078a63          	beqz	a5,110c <__neorv32_rte_debug_exc_handler+0x1cc>
    107c:	00002537          	lui	a0,0x2
    1080:	8a050513          	addi	a0,a0,-1888 # 18a0 <symbols.0+0x234>
    1084:	fd5ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    1088:	00001537          	lui	a0,0x1
    108c:	76c50513          	addi	a0,a0,1900 # 176c <symbols.0+0x100>
    1090:	fc9ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    1094:	00001537          	lui	a0,0x1
    1098:	78050513          	addi	a0,a0,1920 # 1780 <symbols.0+0x114>
    109c:	fbdff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    10a0:	00001537          	lui	a0,0x1
    10a4:	78c50513          	addi	a0,a0,1932 # 178c <symbols.0+0x120>
    10a8:	fb1ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    10ac:	00001537          	lui	a0,0x1
    10b0:	7a450513          	addi	a0,a0,1956 # 17a4 <symbols.0+0x138>
    10b4:	fb5ff06f          	j	1068 <__neorv32_rte_debug_exc_handler+0x128>
    10b8:	00001537          	lui	a0,0x1
    10bc:	7b850513          	addi	a0,a0,1976 # 17b8 <symbols.0+0x14c>
    10c0:	f99ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    10c4:	00001537          	lui	a0,0x1
    10c8:	7d450513          	addi	a0,a0,2004 # 17d4 <symbols.0+0x168>
    10cc:	f9dff06f          	j	1068 <__neorv32_rte_debug_exc_handler+0x128>
    10d0:	00001537          	lui	a0,0x1
    10d4:	7e850513          	addi	a0,a0,2024 # 17e8 <symbols.0+0x17c>
    10d8:	f81ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    10dc:	00002537          	lui	a0,0x2
    10e0:	80850513          	addi	a0,a0,-2040 # 1808 <symbols.0+0x19c>
    10e4:	f75ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    10e8:	00002537          	lui	a0,0x2
    10ec:	82850513          	addi	a0,a0,-2008 # 1828 <symbols.0+0x1bc>
    10f0:	f69ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    10f4:	00002537          	lui	a0,0x2
    10f8:	84450513          	addi	a0,a0,-1980 # 1844 <symbols.0+0x1d8>
    10fc:	f5dff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    1100:	00002537          	lui	a0,0x2
    1104:	85c50513          	addi	a0,a0,-1956 # 185c <symbols.0+0x1f0>
    1108:	f51ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    110c:	00002537          	lui	a0,0x2
    1110:	8b050513          	addi	a0,a0,-1872 # 18b0 <symbols.0+0x244>
    1114:	f45ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    1118:	00002537          	lui	a0,0x2
    111c:	8c050513          	addi	a0,a0,-1856 # 18c0 <symbols.0+0x254>
    1120:	f39ff06f          	j	1058 <__neorv32_rte_debug_exc_handler+0x118>
    1124:	00c12083          	lw	ra,12(sp)
    1128:	00812403          	lw	s0,8(sp)
    112c:	00412483          	lw	s1,4(sp)
    1130:	01010113          	addi	sp,sp,16
    1134:	00008067          	ret

00001138 <neorv32_rte_exception_uninstall>:
    1138:	01f00793          	li	a5,31
    113c:	02a7e263          	bltu	a5,a0,1160 <neorv32_rte_exception_uninstall+0x28>
    1140:	e4418793          	addi	a5,gp,-444 # 80000644 <__neorv32_rte_vector_lut>
    1144:	00251513          	slli	a0,a0,0x2
    1148:	00a78533          	add	a0,a5,a0
    114c:	000017b7          	lui	a5,0x1
    1150:	f4078793          	addi	a5,a5,-192 # f40 <__neorv32_rte_debug_exc_handler>
    1154:	00f52023          	sw	a5,0(a0)
    1158:	00000513          	li	a0,0
    115c:	00008067          	ret
    1160:	00100513          	li	a0,1
    1164:	00008067          	ret

00001168 <neorv32_rte_setup>:
    1168:	ff010113          	addi	sp,sp,-16
    116c:	000017b7          	lui	a5,0x1
    1170:	00112623          	sw	ra,12(sp)
    1174:	00812423          	sw	s0,8(sp)
    1178:	00912223          	sw	s1,4(sp)
    117c:	cd078793          	addi	a5,a5,-816 # cd0 <__neorv32_rte_core>
    1180:	30579073          	csrw	mtvec,a5
    1184:	00000413          	li	s0,0
    1188:	01d00493          	li	s1,29
    118c:	00040513          	mv	a0,s0
    1190:	00140413          	addi	s0,s0,1
    1194:	0ff47413          	andi	s0,s0,255
    1198:	fa1ff0ef          	jal	ra,1138 <neorv32_rte_exception_uninstall>
    119c:	fe9418e3          	bne	s0,s1,118c <neorv32_rte_setup+0x24>
    11a0:	00c12083          	lw	ra,12(sp)
    11a4:	00812403          	lw	s0,8(sp)
    11a8:	00412483          	lw	s1,4(sp)
    11ac:	01010113          	addi	sp,sp,16
    11b0:	00008067          	ret

000011b4 <neorv32_rte_check_isa>:
    11b4:	30102673          	csrr	a2,misa
    11b8:	400007b7          	lui	a5,0x40000
    11bc:	10078793          	addi	a5,a5,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe750>
    11c0:	00f67733          	and	a4,a2,a5
    11c4:	04f70463          	beq	a4,a5,120c <neorv32_rte_check_isa+0x58>
    11c8:	fe010113          	addi	sp,sp,-32
    11cc:	00112e23          	sw	ra,28(sp)
    11d0:	02051463          	bnez	a0,11f8 <neorv32_rte_check_isa+0x44>
    11d4:	400005b7          	lui	a1,0x40000
    11d8:	00002537          	lui	a0,0x2
    11dc:	10058593          	addi	a1,a1,256 # 40000100 <__crt0_copy_data_src_begin+0x3fffe750>
    11e0:	91850513          	addi	a0,a0,-1768 # 1918 <symbols.0+0x2ac>
    11e4:	86dff0ef          	jal	ra,a50 <neorv32_uart0_printf>
    11e8:	01c12083          	lw	ra,28(sp)
    11ec:	00100513          	li	a0,1
    11f0:	02010113          	addi	sp,sp,32
    11f4:	00008067          	ret
    11f8:	00c12623          	sw	a2,12(sp)
    11fc:	f0cff0ef          	jal	ra,908 <neorv32_uart0_available>
    1200:	00c12603          	lw	a2,12(sp)
    1204:	fc0508e3          	beqz	a0,11d4 <neorv32_rte_check_isa+0x20>
    1208:	fe1ff06f          	j	11e8 <neorv32_rte_check_isa+0x34>
    120c:	00000513          	li	a0,0
    1210:	00008067          	ret

00001214 <neorv32_trng_available>:
    1214:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
    1218:	01855513          	srli	a0,a0,0x18
    121c:	00157513          	andi	a0,a0,1
    1220:	00008067          	ret

00001224 <neorv32_trng_enable>:
    1224:	fa002c23          	sw	zero,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
    1228:	10000793          	li	a5,256
    122c:	00000013          	nop
    1230:	fff78793          	addi	a5,a5,-1
    1234:	fe079ce3          	bnez	a5,122c <neorv32_trng_enable+0x8>
    1238:	400007b7          	lui	a5,0x40000
    123c:	faf02c23          	sw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
    1240:	10000793          	li	a5,256
    1244:	00000013          	nop
    1248:	fff78793          	addi	a5,a5,-1 # 3fffffff <__crt0_copy_data_src_begin+0x3fffe64f>
    124c:	fe079ce3          	bnez	a5,1244 <neorv32_trng_enable+0x20>
    1250:	00008067          	ret

00001254 <neorv32_trng_get>:
    1254:	fb802783          	lw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
    1258:	00050713          	mv	a4,a0
    125c:	0007cc63          	bltz	a5,1274 <neorv32_trng_get+0x20>
    1260:	fb802783          	lw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
    1264:	0007c863          	bltz	a5,1274 <neorv32_trng_get+0x20>
    1268:	fb802783          	lw	a5,-72(zero) # ffffffb8 <__ctr0_io_space_begin+0x1b8>
    126c:	fff00513          	li	a0,-1
    1270:	0007d663          	bgez	a5,127c <neorv32_trng_get+0x28>
    1274:	00f70023          	sb	a5,0(a4)
    1278:	00000513          	li	a0,0
    127c:	00008067          	ret

00001280 <__mulsi3>:
    1280:	00050613          	mv	a2,a0
    1284:	00000513          	li	a0,0
    1288:	0015f693          	andi	a3,a1,1
    128c:	00068463          	beqz	a3,1294 <__mulsi3+0x14>
    1290:	00c50533          	add	a0,a0,a2
    1294:	0015d593          	srli	a1,a1,0x1
    1298:	00161613          	slli	a2,a2,0x1
    129c:	fe0596e3          	bnez	a1,1288 <__mulsi3+0x8>
    12a0:	00008067          	ret

000012a4 <__muldi3>:
    12a4:	00050313          	mv	t1,a0
    12a8:	ff010113          	addi	sp,sp,-16
    12ac:	00060513          	mv	a0,a2
    12b0:	00068893          	mv	a7,a3
    12b4:	00112623          	sw	ra,12(sp)
    12b8:	00030613          	mv	a2,t1
    12bc:	00050693          	mv	a3,a0
    12c0:	00000713          	li	a4,0
    12c4:	00000793          	li	a5,0
    12c8:	00000813          	li	a6,0
    12cc:	0016fe13          	andi	t3,a3,1
    12d0:	00171e93          	slli	t4,a4,0x1
    12d4:	000e0c63          	beqz	t3,12ec <__muldi3+0x48>
    12d8:	01060e33          	add	t3,a2,a6
    12dc:	010e3833          	sltu	a6,t3,a6
    12e0:	00e787b3          	add	a5,a5,a4
    12e4:	00f807b3          	add	a5,a6,a5
    12e8:	000e0813          	mv	a6,t3
    12ec:	01f65713          	srli	a4,a2,0x1f
    12f0:	0016d693          	srli	a3,a3,0x1
    12f4:	00eee733          	or	a4,t4,a4
    12f8:	00161613          	slli	a2,a2,0x1
    12fc:	fc0698e3          	bnez	a3,12cc <__muldi3+0x28>
    1300:	00058663          	beqz	a1,130c <__muldi3+0x68>
    1304:	f7dff0ef          	jal	ra,1280 <__mulsi3>
    1308:	00a787b3          	add	a5,a5,a0
    130c:	00088a63          	beqz	a7,1320 <__muldi3+0x7c>
    1310:	00030513          	mv	a0,t1
    1314:	00088593          	mv	a1,a7
    1318:	f69ff0ef          	jal	ra,1280 <__mulsi3>
    131c:	00f507b3          	add	a5,a0,a5
    1320:	00c12083          	lw	ra,12(sp)
    1324:	00080513          	mv	a0,a6
    1328:	00078593          	mv	a1,a5
    132c:	01010113          	addi	sp,sp,16
    1330:	00008067          	ret

00001334 <__divsi3>:
    1334:	06054063          	bltz	a0,1394 <__umodsi3+0x10>
    1338:	0605c663          	bltz	a1,13a4 <__umodsi3+0x20>

0000133c <__udivsi3>:
    133c:	00058613          	mv	a2,a1
    1340:	00050593          	mv	a1,a0
    1344:	fff00513          	li	a0,-1
    1348:	02060c63          	beqz	a2,1380 <__udivsi3+0x44>
    134c:	00100693          	li	a3,1
    1350:	00b67a63          	bgeu	a2,a1,1364 <__udivsi3+0x28>
    1354:	00c05863          	blez	a2,1364 <__udivsi3+0x28>
    1358:	00161613          	slli	a2,a2,0x1
    135c:	00169693          	slli	a3,a3,0x1
    1360:	feb66ae3          	bltu	a2,a1,1354 <__udivsi3+0x18>
    1364:	00000513          	li	a0,0
    1368:	00c5e663          	bltu	a1,a2,1374 <__udivsi3+0x38>
    136c:	40c585b3          	sub	a1,a1,a2
    1370:	00d56533          	or	a0,a0,a3
    1374:	0016d693          	srli	a3,a3,0x1
    1378:	00165613          	srli	a2,a2,0x1
    137c:	fe0696e3          	bnez	a3,1368 <__udivsi3+0x2c>
    1380:	00008067          	ret

00001384 <__umodsi3>:
    1384:	00008293          	mv	t0,ra
    1388:	fb5ff0ef          	jal	ra,133c <__udivsi3>
    138c:	00058513          	mv	a0,a1
    1390:	00028067          	jr	t0
    1394:	40a00533          	neg	a0,a0
    1398:	00b04863          	bgtz	a1,13a8 <__umodsi3+0x24>
    139c:	40b005b3          	neg	a1,a1
    13a0:	f9dff06f          	j	133c <__udivsi3>
    13a4:	40b005b3          	neg	a1,a1
    13a8:	00008293          	mv	t0,ra
    13ac:	f91ff0ef          	jal	ra,133c <__udivsi3>
    13b0:	40a00533          	neg	a0,a0
    13b4:	00028067          	jr	t0

000013b8 <__modsi3>:
    13b8:	00008293          	mv	t0,ra
    13bc:	0005ca63          	bltz	a1,13d0 <__modsi3+0x18>
    13c0:	00054c63          	bltz	a0,13d8 <__modsi3+0x20>
    13c4:	f79ff0ef          	jal	ra,133c <__udivsi3>
    13c8:	00058513          	mv	a0,a1
    13cc:	00028067          	jr	t0
    13d0:	40b005b3          	neg	a1,a1
    13d4:	fe0558e3          	bgez	a0,13c4 <__modsi3+0xc>
    13d8:	40a00533          	neg	a0,a0
    13dc:	f61ff0ef          	jal	ra,133c <__udivsi3>
    13e0:	40b00533          	neg	a0,a1
    13e4:	00028067          	jr	t0

000013e8 <memset>:
    13e8:	00f00313          	li	t1,15
    13ec:	00050713          	mv	a4,a0
    13f0:	02c37e63          	bgeu	t1,a2,142c <memset+0x44>
    13f4:	00f77793          	andi	a5,a4,15
    13f8:	0a079063          	bnez	a5,1498 <memset+0xb0>
    13fc:	08059263          	bnez	a1,1480 <memset+0x98>
    1400:	ff067693          	andi	a3,a2,-16
    1404:	00f67613          	andi	a2,a2,15
    1408:	00e686b3          	add	a3,a3,a4
    140c:	00b72023          	sw	a1,0(a4)
    1410:	00b72223          	sw	a1,4(a4)
    1414:	00b72423          	sw	a1,8(a4)
    1418:	00b72623          	sw	a1,12(a4)
    141c:	01070713          	addi	a4,a4,16
    1420:	fed766e3          	bltu	a4,a3,140c <memset+0x24>
    1424:	00061463          	bnez	a2,142c <memset+0x44>
    1428:	00008067          	ret
    142c:	40c306b3          	sub	a3,t1,a2
    1430:	00269693          	slli	a3,a3,0x2
    1434:	00000297          	auipc	t0,0x0
    1438:	005686b3          	add	a3,a3,t0
    143c:	00c68067          	jr	12(a3)
    1440:	00b70723          	sb	a1,14(a4)
    1444:	00b706a3          	sb	a1,13(a4)
    1448:	00b70623          	sb	a1,12(a4)
    144c:	00b705a3          	sb	a1,11(a4)
    1450:	00b70523          	sb	a1,10(a4)
    1454:	00b704a3          	sb	a1,9(a4)
    1458:	00b70423          	sb	a1,8(a4)
    145c:	00b703a3          	sb	a1,7(a4)
    1460:	00b70323          	sb	a1,6(a4)
    1464:	00b702a3          	sb	a1,5(a4)
    1468:	00b70223          	sb	a1,4(a4)
    146c:	00b701a3          	sb	a1,3(a4)
    1470:	00b70123          	sb	a1,2(a4)
    1474:	00b700a3          	sb	a1,1(a4)
    1478:	00b70023          	sb	a1,0(a4)
    147c:	00008067          	ret
    1480:	0ff5f593          	andi	a1,a1,255
    1484:	00859693          	slli	a3,a1,0x8
    1488:	00d5e5b3          	or	a1,a1,a3
    148c:	01059693          	slli	a3,a1,0x10
    1490:	00d5e5b3          	or	a1,a1,a3
    1494:	f6dff06f          	j	1400 <memset+0x18>
    1498:	00279693          	slli	a3,a5,0x2
    149c:	00000297          	auipc	t0,0x0
    14a0:	005686b3          	add	a3,a3,t0
    14a4:	00008293          	mv	t0,ra
    14a8:	fa0680e7          	jalr	-96(a3)
    14ac:	00028093          	mv	ra,t0
    14b0:	ff078793          	addi	a5,a5,-16
    14b4:	40f70733          	sub	a4,a4,a5
    14b8:	00f60633          	add	a2,a2,a5
    14bc:	f6c378e3          	bgeu	t1,a2,142c <memset+0x44>
    14c0:	f3dff06f          	j	13fc <memset+0x14>
