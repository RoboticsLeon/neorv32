
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
      c4:	f4858593          	addi	a1,a1,-184 # 80000008 <__ctr0_io_space_begin+0x80000208>
      c8:	88418613          	addi	a2,gp,-1916 # 80000084 <__BSS_END__>

000000cc <__crt0_clear_bss_loop>:
      cc:	00c5d863          	bge	a1,a2,dc <__crt0_clear_bss_loop_end>
      d0:	00058023          	sb	zero,0(a1)
      d4:	00158593          	addi	a1,a1,1
      d8:	ff5ff06f          	j	cc <__crt0_clear_bss_loop>

000000dc <__crt0_clear_bss_loop_end>:
      dc:	00001597          	auipc	a1,0x1
      e0:	45858593          	addi	a1,a1,1112 # 1534 <__crt0_copy_data_src_begin>
      e4:	80000617          	auipc	a2,0x80000
      e8:	f1c60613          	addi	a2,a2,-228 # 80000000 <__ctr0_io_space_begin+0x80000200>
      ec:	80000697          	auipc	a3,0x80000
      f0:	f1c68693          	addi	a3,a3,-228 # 80000008 <__ctr0_io_space_begin+0x80000208>

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
     184:	fb010113          	addi	sp,sp,-80
     188:	00000613          	li	a2,0
     18c:	00000593          	li	a1,0
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x35cc>
     194:	04112623          	sw	ra,76(sp)
     198:	04812423          	sw	s0,72(sp)
     19c:	04912223          	sw	s1,68(sp)
     1a0:	05212023          	sw	s2,64(sp)
     1a4:	03312e23          	sw	s3,60(sp)
     1a8:	03412c23          	sw	s4,56(sp)
     1ac:	03512a23          	sw	s5,52(sp)
     1b0:	03612823          	sw	s6,48(sp)
     1b4:	03712623          	sw	s7,44(sp)
     1b8:	03812423          	sw	s8,40(sp)
     1bc:	03912223          	sw	s9,36(sp)
     1c0:	03a12023          	sw	s10,32(sp)
     1c4:	01b12e23          	sw	s11,28(sp)
     1c8:	60c000ef          	jal	ra,7d4 <neorv32_uart0_setup>
     1cc:	0bd000ef          	jal	ra,a88 <neorv32_gpio_available>
     1d0:	26050463          	beqz	a0,438 <main+0x2b8>
     1d4:	565000ef          	jal	ra,f38 <neorv32_rte_setup>
     1d8:	00001537          	lui	a0,0x1
     1dc:	0e050513          	addi	a0,a0,224 # 10e0 <__etext+0x84>
     1e0:	6b8000ef          	jal	ra,898 <neorv32_uart0_print>
     1e4:	80000937          	lui	s2,0x80000
     1e8:	00892703          	lw	a4,8(s2) # 80000008 <__ctr0_io_space_begin+0x80000208>
     1ec:	800107b7          	lui	a5,0x80010
     1f0:	00e7a023          	sw	a4,0(a5) # 80010000 <__ctr0_io_space_begin+0x80010200>
     1f4:	800009b7          	lui	s3,0x80000
     1f8:	00c9a703          	lw	a4,12(s3) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     1fc:	00478693          	addi	a3,a5,4
     200:	00e6a023          	sw	a4,0(a3)
     204:	00000713          	li	a4,0
     208:	00878793          	addi	a5,a5,8
     20c:	00e7a023          	sw	a4,0(a5)
     210:	000017b7          	lui	a5,0x1
     214:	25478793          	addi	a5,a5,596 # 1254 <__etext+0x1f8>
     218:	00890913          	addi	s2,s2,8
     21c:	00c98993          	addi	s3,s3,12
     220:	80000c37          	lui	s8,0x80000
     224:	00f12623          	sw	a5,12(sp)
     228:	004c2683          	lw	a3,4(s8) # 80000004 <__ctr0_io_space_begin+0x80000204>
     22c:	800107b7          	lui	a5,0x80010
     230:	004c0a93          	addi	s5,s8,4
     234:	01078793          	addi	a5,a5,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
     238:	0007a703          	lw	a4,0(a5)
     23c:	fee68ee3          	beq	a3,a4,238 <main+0xb8>
     240:	80000437          	lui	s0,0x80000
     244:	000107b7          	lui	a5,0x10
     248:	00e42023          	sw	a4,0(s0) # 80000000 <__ctr0_io_space_begin+0x80000200>
     24c:	ffc78793          	addi	a5,a5,-4 # fffc <__crt0_copy_data_src_begin+0xeac8>
     250:	00040413          	mv	s0,s0
     254:	00f71e63          	bne	a4,a5,270 <main+0xf0>
     258:	00001537          	lui	a0,0x1
     25c:	11050513          	addi	a0,a0,272 # 1110 <__etext+0xb4>
     260:	638000ef          	jal	ra,898 <neorv32_uart0_print>
     264:	00042783          	lw	a5,0(s0)
     268:	00faa023          	sw	a5,0(s5)
     26c:	fbdff06f          	j	228 <main+0xa8>
     270:	80010cb7          	lui	s9,0x80010
     274:	00000493          	li	s1,0
     278:	00100b13          	li	s6,1
     27c:	008c8a13          	addi	s4,s9,8 # 80010008 <__ctr0_io_space_begin+0x80010208>
     280:	00001db7          	lui	s11,0x1
     284:	00042783          	lw	a5,0(s0)
     288:	0167f7b3          	and	a5,a5,s6
     28c:	02079e63          	bnez	a5,2c8 <main+0x148>
     290:	ff648793          	addi	a5,s1,-10
     294:	0ff7f793          	andi	a5,a5,255
     298:	00500713          	li	a4,5
     29c:	18f76863          	bltu	a4,a5,42c <main+0x2ac>
     2a0:	00c12703          	lw	a4,12(sp)
     2a4:	00279793          	slli	a5,a5,0x2
     2a8:	00e787b3          	add	a5,a5,a4
     2ac:	0007a783          	lw	a5,0(a5)
     2b0:	00078067          	jr	a5
     2b4:	00001537          	lui	a0,0x1
     2b8:	13450513          	addi	a0,a0,308 # 1134 <__etext+0xd8>
     2bc:	5dc000ef          	jal	ra,898 <neorv32_uart0_print>
     2c0:	00000793          	li	a5,0
     2c4:	00fa2023          	sw	a5,0(s4)
     2c8:	00148493          	addi	s1,s1,1
     2cc:	0ff4f493          	andi	s1,s1,255
     2d0:	01000793          	li	a5,16
     2d4:	001b1b13          	slli	s6,s6,0x1
     2d8:	faf496e3          	bne	s1,a5,284 <main+0x104>
     2dc:	f89ff06f          	j	264 <main+0xe4>
     2e0:	00001537          	lui	a0,0x1
     2e4:	14050513          	addi	a0,a0,320 # 1140 <__etext+0xe4>
     2e8:	5b0000ef          	jal	ra,898 <neorv32_uart0_print>
     2ec:	00100793          	li	a5,1
     2f0:	fd5ff06f          	j	2c4 <main+0x144>
     2f4:	00001537          	lui	a0,0x1
     2f8:	14c50513          	addi	a0,a0,332 # 114c <__etext+0xf0>
     2fc:	59c000ef          	jal	ra,898 <neorv32_uart0_print>
     300:	00200793          	li	a5,2
     304:	fc1ff06f          	j	2c4 <main+0x144>
     308:	00001537          	lui	a0,0x1
     30c:	16450513          	addi	a0,a0,356 # 1164 <__etext+0x108>
     310:	588000ef          	jal	ra,898 <neorv32_uart0_print>
     314:	00042783          	lw	a5,0(s0)
     318:	00100513          	li	a0,1
     31c:	00faa023          	sw	a5,0(s5)
     320:	164000ef          	jal	ra,484 <cambia_operando>
     324:	00050593          	mv	a1,a0
     328:	00a92023          	sw	a0,0(s2)
     32c:	800107b7          	lui	a5,0x80010
     330:	00a7a023          	sw	a0,0(a5) # 80010000 <__ctr0_io_space_begin+0x80010200>
     334:	00001537          	lui	a0,0x1
     338:	18050513          	addi	a0,a0,384 # 1180 <__etext+0x124>
     33c:	5b4000ef          	jal	ra,8f0 <neorv32_uart0_printf>
     340:	ee9ff06f          	j	228 <main+0xa8>
     344:	00001537          	lui	a0,0x1
     348:	19050513          	addi	a0,a0,400 # 1190 <__etext+0x134>
     34c:	54c000ef          	jal	ra,898 <neorv32_uart0_print>
     350:	00042783          	lw	a5,0(s0)
     354:	00000513          	li	a0,0
     358:	00faa023          	sw	a5,0(s5)
     35c:	128000ef          	jal	ra,484 <cambia_operando>
     360:	800107b7          	lui	a5,0x80010
     364:	00050593          	mv	a1,a0
     368:	00a9a023          	sw	a0,0(s3)
     36c:	00478793          	addi	a5,a5,4 # 80010004 <__ctr0_io_space_begin+0x80010204>
     370:	00a7a023          	sw	a0,0(a5)
     374:	00001537          	lui	a0,0x1
     378:	1ac50513          	addi	a0,a0,428 # 11ac <__etext+0x150>
     37c:	fc1ff06f          	j	33c <main+0x1bc>
     380:	000017b7          	lui	a5,0x1
     384:	1bc78513          	addi	a0,a5,444 # 11bc <__etext+0x160>
     388:	510000ef          	jal	ra,898 <neorv32_uart0_print>
     38c:	000a2d03          	lw	s10,0(s4)
     390:	00cc8b93          	addi	s7,s9,12
     394:	000bab83          	lw	s7,0(s7)
     398:	00092583          	lw	a1,0(s2)
     39c:	0605d063          	bgez	a1,3fc <main+0x27c>
     3a0:	00001537          	lui	a0,0x1
     3a4:	1c850513          	addi	a0,a0,456 # 11c8 <__etext+0x16c>
     3a8:	548000ef          	jal	ra,8f0 <neorv32_uart0_printf>
     3ac:	00100713          	li	a4,1
     3b0:	04ed0c63          	beq	s10,a4,408 <main+0x288>
     3b4:	00200713          	li	a4,2
     3b8:	04ed0e63          	beq	s10,a4,414 <main+0x294>
     3bc:	000d1863          	bnez	s10,3cc <main+0x24c>
     3c0:	00001537          	lui	a0,0x1
     3c4:	1d450513          	addi	a0,a0,468 # 11d4 <__etext+0x178>
     3c8:	4d0000ef          	jal	ra,898 <neorv32_uart0_print>
     3cc:	0009a583          	lw	a1,0(s3)
     3d0:	0405d863          	bgez	a1,420 <main+0x2a0>
     3d4:	00001537          	lui	a0,0x1
     3d8:	1e050513          	addi	a0,a0,480 # 11e0 <__etext+0x184>
     3dc:	514000ef          	jal	ra,8f0 <neorv32_uart0_printf>
     3e0:	000017b7          	lui	a5,0x1
     3e4:	1f078513          	addi	a0,a5,496 # 11f0 <__etext+0x194>
     3e8:	000b8593          	mv	a1,s7
     3ec:	504000ef          	jal	ra,8f0 <neorv32_uart0_printf>
     3f0:	1f8d8513          	addi	a0,s11,504 # 11f8 <__etext+0x19c>
     3f4:	4a4000ef          	jal	ra,898 <neorv32_uart0_print>
     3f8:	ed1ff06f          	j	2c8 <main+0x148>
     3fc:	00001537          	lui	a0,0x1
     400:	1d050513          	addi	a0,a0,464 # 11d0 <__etext+0x174>
     404:	fa5ff06f          	j	3a8 <main+0x228>
     408:	00001537          	lui	a0,0x1
     40c:	1d850513          	addi	a0,a0,472 # 11d8 <__etext+0x17c>
     410:	fb9ff06f          	j	3c8 <main+0x248>
     414:	00001537          	lui	a0,0x1
     418:	1dc50513          	addi	a0,a0,476 # 11dc <__etext+0x180>
     41c:	fadff06f          	j	3c8 <main+0x248>
     420:	00001537          	lui	a0,0x1
     424:	1e850513          	addi	a0,a0,488 # 11e8 <__etext+0x18c>
     428:	fb5ff06f          	j	3dc <main+0x25c>
     42c:	000017b7          	lui	a5,0x1
     430:	22878513          	addi	a0,a5,552 # 1228 <__etext+0x1cc>
     434:	fc1ff06f          	j	3f4 <main+0x274>
     438:	00001537          	lui	a0,0x1
     43c:	0bc50513          	addi	a0,a0,188 # 10bc <__etext+0x60>
     440:	458000ef          	jal	ra,898 <neorv32_uart0_print>
     444:	04c12083          	lw	ra,76(sp)
     448:	04812403          	lw	s0,72(sp)
     44c:	04412483          	lw	s1,68(sp)
     450:	04012903          	lw	s2,64(sp)
     454:	03c12983          	lw	s3,60(sp)
     458:	03812a03          	lw	s4,56(sp)
     45c:	03412a83          	lw	s5,52(sp)
     460:	03012b03          	lw	s6,48(sp)
     464:	02c12b83          	lw	s7,44(sp)
     468:	02812c03          	lw	s8,40(sp)
     46c:	02412c83          	lw	s9,36(sp)
     470:	02012d03          	lw	s10,32(sp)
     474:	01c12d83          	lw	s11,28(sp)
     478:	00100513          	li	a0,1
     47c:	05010113          	addi	sp,sp,80
     480:	00008067          	ret

00000484 <cambia_operando>:
     484:	fc010113          	addi	sp,sp,-64
     488:	02812c23          	sw	s0,56(sp)
     48c:	02912a23          	sw	s1,52(sp)
     490:	03212823          	sw	s2,48(sp)
     494:	03412423          	sw	s4,40(sp)
     498:	01812c23          	sw	s8,24(sp)
     49c:	02112e23          	sw	ra,60(sp)
     4a0:	03312623          	sw	s3,44(sp)
     4a4:	03512223          	sw	s5,36(sp)
     4a8:	03612023          	sw	s6,32(sp)
     4ac:	01712e23          	sw	s7,28(sp)
     4b0:	01912a23          	sw	s9,20(sp)
     4b4:	01a12823          	sw	s10,16(sp)
     4b8:	01b12623          	sw	s11,12(sp)
     4bc:	00050913          	mv	s2,a0
     4c0:	00100a13          	li	s4,1
     4c4:	00100493          	li	s1,1
     4c8:	00000413          	li	s0,0
     4cc:	00001c37          	lui	s8,0x1
     4d0:	80000ab7          	lui	s5,0x80000
     4d4:	800107b7          	lui	a5,0x80010
     4d8:	004aa683          	lw	a3,4(s5) # 80000004 <__ctr0_io_space_begin+0x80000204>
     4dc:	01078793          	addi	a5,a5,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
     4e0:	004a8a93          	addi	s5,s5,4
     4e4:	0007a703          	lw	a4,0(a5)
     4e8:	fee68ee3          	beq	a3,a4,4e4 <cambia_operando+0x60>
     4ec:	80000b37          	lui	s6,0x80000
     4f0:	00eb2023          	sw	a4,0(s6) # 80000000 <__ctr0_io_space_begin+0x80000200>
     4f4:	00000993          	li	s3,0
     4f8:	00100b93          	li	s7,1
     4fc:	000b0b13          	mv	s6,s6
     500:	00001cb7          	lui	s9,0x1
     504:	00001d37          	lui	s10,0x1
     508:	00001db7          	lui	s11,0x1
     50c:	000b2703          	lw	a4,0(s6)
     510:	017777b3          	and	a5,a4,s7
     514:	04079863          	bnez	a5,564 <cambia_operando+0xe0>
     518:	00900693          	li	a3,9
     51c:	0ff9f793          	andi	a5,s3,255
     520:	0736e063          	bltu	a3,s3,580 <cambia_operando+0xfc>
     524:	00241793          	slli	a5,s0,0x2
     528:	00878433          	add	s0,a5,s0
     52c:	00141413          	slli	s0,s0,0x1
     530:	01340433          	add	s0,s0,s3
     534:	1ff00793          	li	a5,511
     538:	0087d863          	bge	a5,s0,548 <cambia_operando+0xc4>
     53c:	05cd8513          	addi	a0,s11,92 # 105c <__etext>
     540:	358000ef          	jal	ra,898 <neorv32_uart0_print>
     544:	00000413          	li	s0,0
     548:	00040593          	mv	a1,s0
     54c:	00048513          	mv	a0,s1
     550:	235000ef          	jal	ra,f84 <__mulsi3>
     554:	00050593          	mv	a1,a0
     558:	074d0513          	addi	a0,s10,116 # 1074 <__etext+0x18>
     55c:	394000ef          	jal	ra,8f0 <neorv32_uart0_printf>
     560:	00000a13          	li	s4,0
     564:	00198993          	addi	s3,s3,1
     568:	01000793          	li	a5,16
     56c:	001b9b93          	slli	s7,s7,0x1
     570:	f8f99ee3          	bne	s3,a5,50c <cambia_operando+0x88>
     574:	000b2783          	lw	a5,0(s6)
     578:	00faa023          	sw	a5,0(s5)
     57c:	f55ff06f          	j	4d0 <cambia_operando+0x4c>
     580:	00e00693          	li	a3,14
     584:	0ad78463          	beq	a5,a3,62c <cambia_operando+0x1a8>
     588:	00090a63          	beqz	s2,59c <cambia_operando+0x118>
     58c:	00f00693          	li	a3,15
     590:	02d78a63          	beq	a5,a3,5c4 <cambia_operando+0x140>
     594:	00100693          	li	a3,1
     598:	08d91e63          	bne	s2,a3,634 <cambia_operando+0x1b0>
     59c:	00a00713          	li	a4,10
     5a0:	08e78e63          	beq	a5,a4,63c <cambia_operando+0x1b8>
     5a4:	08cc8513          	addi	a0,s9,140 # 108c <__etext+0x30>
     5a8:	2f0000ef          	jal	ra,898 <neorv32_uart0_print>
     5ac:	fb9ff06f          	j	564 <cambia_operando+0xe0>
     5b0:	fff00493          	li	s1,-1
     5b4:	0940006f          	j	648 <cambia_operando+0x1c4>
     5b8:	800007b7          	lui	a5,0x80000
     5bc:	00c7a583          	lw	a1,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     5c0:	0a80006f          	j	668 <cambia_operando+0x1e4>
     5c4:	00eaa023          	sw	a4,0(s5)
     5c8:	000a0863          	beqz	s4,5d8 <cambia_operando+0x154>
     5cc:	05491a63          	bne	s2,s4,620 <cambia_operando+0x19c>
     5d0:	800007b7          	lui	a5,0x80000
     5d4:	0087a403          	lw	s0,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     5d8:	00040593          	mv	a1,s0
     5dc:	00048513          	mv	a0,s1
     5e0:	1a5000ef          	jal	ra,f84 <__mulsi3>
     5e4:	03c12083          	lw	ra,60(sp)
     5e8:	03812403          	lw	s0,56(sp)
     5ec:	03412483          	lw	s1,52(sp)
     5f0:	03012903          	lw	s2,48(sp)
     5f4:	02c12983          	lw	s3,44(sp)
     5f8:	02812a03          	lw	s4,40(sp)
     5fc:	02412a83          	lw	s5,36(sp)
     600:	02012b03          	lw	s6,32(sp)
     604:	01c12b83          	lw	s7,28(sp)
     608:	01812c03          	lw	s8,24(sp)
     60c:	01412c83          	lw	s9,20(sp)
     610:	01012d03          	lw	s10,16(sp)
     614:	00c12d83          	lw	s11,12(sp)
     618:	04010113          	addi	sp,sp,64
     61c:	00008067          	ret
     620:	800007b7          	lui	a5,0x80000
     624:	00c7a403          	lw	s0,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     628:	fb1ff06f          	j	5d8 <cambia_operando+0x154>
     62c:	00100693          	li	a3,1
     630:	f6d90ae3          	beq	s2,a3,5a4 <cambia_operando+0x120>
     634:	00a00693          	li	a3,10
     638:	f8d796e3          	bne	a5,a3,5c4 <cambia_operando+0x140>
     63c:	00100793          	li	a5,1
     640:	f6f488e3          	beq	s1,a5,5b0 <cambia_operando+0x12c>
     644:	00100493          	li	s1,1
     648:	000017b7          	lui	a5,0x1
     64c:	0a078513          	addi	a0,a5,160 # 10a0 <__etext+0x44>
     650:	248000ef          	jal	ra,898 <neorv32_uart0_print>
     654:	00040593          	mv	a1,s0
     658:	000a0863          	beqz	s4,668 <cambia_operando+0x1e4>
     65c:	f5491ee3          	bne	s2,s4,5b8 <cambia_operando+0x134>
     660:	800007b7          	lui	a5,0x80000
     664:	0087a583          	lw	a1,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     668:	00048513          	mv	a0,s1
     66c:	119000ef          	jal	ra,f84 <__mulsi3>
     670:	00050593          	mv	a1,a0
     674:	0b4c0513          	addi	a0,s8,180 # 10b4 <__etext+0x58>
     678:	278000ef          	jal	ra,8f0 <neorv32_uart0_printf>
     67c:	ee9ff06f          	j	564 <cambia_operando+0xe0>

00000680 <__neorv32_uart_itoa>:
     680:	fd010113          	addi	sp,sp,-48
     684:	02812423          	sw	s0,40(sp)
     688:	02912223          	sw	s1,36(sp)
     68c:	03212023          	sw	s2,32(sp)
     690:	01312e23          	sw	s3,28(sp)
     694:	01412c23          	sw	s4,24(sp)
     698:	02112623          	sw	ra,44(sp)
     69c:	01512a23          	sw	s5,20(sp)
     6a0:	00001a37          	lui	s4,0x1
     6a4:	00050493          	mv	s1,a0
     6a8:	00058413          	mv	s0,a1
     6ac:	00058523          	sb	zero,10(a1)
     6b0:	00000993          	li	s3,0
     6b4:	00410913          	addi	s2,sp,4
     6b8:	26ca0a13          	addi	s4,s4,620 # 126c <numbers.1>
     6bc:	00a00593          	li	a1,10
     6c0:	00048513          	mv	a0,s1
     6c4:	135000ef          	jal	ra,ff8 <__umodsi3>
     6c8:	00aa0533          	add	a0,s4,a0
     6cc:	00054783          	lbu	a5,0(a0)
     6d0:	01390ab3          	add	s5,s2,s3
     6d4:	00048513          	mv	a0,s1
     6d8:	00fa8023          	sb	a5,0(s5)
     6dc:	00a00593          	li	a1,10
     6e0:	0d1000ef          	jal	ra,fb0 <__udivsi3>
     6e4:	00198993          	addi	s3,s3,1
     6e8:	00a00793          	li	a5,10
     6ec:	00050493          	mv	s1,a0
     6f0:	fcf996e3          	bne	s3,a5,6bc <__neorv32_uart_itoa+0x3c>
     6f4:	00090693          	mv	a3,s2
     6f8:	00900713          	li	a4,9
     6fc:	03000613          	li	a2,48
     700:	0096c583          	lbu	a1,9(a3)
     704:	00070793          	mv	a5,a4
     708:	fff70713          	addi	a4,a4,-1
     70c:	01071713          	slli	a4,a4,0x10
     710:	01075713          	srli	a4,a4,0x10
     714:	00c59a63          	bne	a1,a2,728 <__neorv32_uart_itoa+0xa8>
     718:	000684a3          	sb	zero,9(a3)
     71c:	fff68693          	addi	a3,a3,-1
     720:	fe0710e3          	bnez	a4,700 <__neorv32_uart_itoa+0x80>
     724:	00000793          	li	a5,0
     728:	00f907b3          	add	a5,s2,a5
     72c:	00000593          	li	a1,0
     730:	0007c703          	lbu	a4,0(a5)
     734:	00070c63          	beqz	a4,74c <__neorv32_uart_itoa+0xcc>
     738:	00158693          	addi	a3,a1,1
     73c:	00b405b3          	add	a1,s0,a1
     740:	00e58023          	sb	a4,0(a1)
     744:	01069593          	slli	a1,a3,0x10
     748:	0105d593          	srli	a1,a1,0x10
     74c:	fff78713          	addi	a4,a5,-1
     750:	02f91863          	bne	s2,a5,780 <__neorv32_uart_itoa+0x100>
     754:	00b40433          	add	s0,s0,a1
     758:	00040023          	sb	zero,0(s0)
     75c:	02c12083          	lw	ra,44(sp)
     760:	02812403          	lw	s0,40(sp)
     764:	02412483          	lw	s1,36(sp)
     768:	02012903          	lw	s2,32(sp)
     76c:	01c12983          	lw	s3,28(sp)
     770:	01812a03          	lw	s4,24(sp)
     774:	01412a83          	lw	s5,20(sp)
     778:	03010113          	addi	sp,sp,48
     77c:	00008067          	ret
     780:	00070793          	mv	a5,a4
     784:	fadff06f          	j	730 <__neorv32_uart_itoa+0xb0>

00000788 <__neorv32_uart_tohex>:
     788:	00001637          	lui	a2,0x1
     78c:	00758693          	addi	a3,a1,7
     790:	00000713          	li	a4,0
     794:	27860613          	addi	a2,a2,632 # 1278 <symbols.0>
     798:	02000813          	li	a6,32
     79c:	00e557b3          	srl	a5,a0,a4
     7a0:	00f7f793          	andi	a5,a5,15
     7a4:	00f607b3          	add	a5,a2,a5
     7a8:	0007c783          	lbu	a5,0(a5)
     7ac:	00470713          	addi	a4,a4,4
     7b0:	fff68693          	addi	a3,a3,-1
     7b4:	00f680a3          	sb	a5,1(a3)
     7b8:	ff0712e3          	bne	a4,a6,79c <__neorv32_uart_tohex+0x14>
     7bc:	00058423          	sb	zero,8(a1)
     7c0:	00008067          	ret

000007c4 <neorv32_uart0_available>:
     7c4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     7c8:	01255513          	srli	a0,a0,0x12
     7cc:	00157513          	andi	a0,a0,1
     7d0:	00008067          	ret

000007d4 <neorv32_uart0_setup>:
     7d4:	ff010113          	addi	sp,sp,-16
     7d8:	00812423          	sw	s0,8(sp)
     7dc:	00912223          	sw	s1,4(sp)
     7e0:	00112623          	sw	ra,12(sp)
     7e4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     7e8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     7ec:	00058413          	mv	s0,a1
     7f0:	00151593          	slli	a1,a0,0x1
     7f4:	00078513          	mv	a0,a5
     7f8:	00060493          	mv	s1,a2
     7fc:	7b4000ef          	jal	ra,fb0 <__udivsi3>
     800:	01051513          	slli	a0,a0,0x10
     804:	000017b7          	lui	a5,0x1
     808:	01055513          	srli	a0,a0,0x10
     80c:	00000713          	li	a4,0
     810:	ffe78793          	addi	a5,a5,-2 # ffe <__umodsi3+0x6>
     814:	04a7e463          	bltu	a5,a0,85c <neorv32_uart0_setup+0x88>
     818:	0034f793          	andi	a5,s1,3
     81c:	00347413          	andi	s0,s0,3
     820:	fff50513          	addi	a0,a0,-1
     824:	01479793          	slli	a5,a5,0x14
     828:	01641413          	slli	s0,s0,0x16
     82c:	00f567b3          	or	a5,a0,a5
     830:	0087e7b3          	or	a5,a5,s0
     834:	01871713          	slli	a4,a4,0x18
     838:	00c12083          	lw	ra,12(sp)
     83c:	00812403          	lw	s0,8(sp)
     840:	00e7e7b3          	or	a5,a5,a4
     844:	10000737          	lui	a4,0x10000
     848:	00e7e7b3          	or	a5,a5,a4
     84c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     850:	00412483          	lw	s1,4(sp)
     854:	01010113          	addi	sp,sp,16
     858:	00008067          	ret
     85c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeaca>
     860:	0fd6f693          	andi	a3,a3,253
     864:	00069a63          	bnez	a3,878 <neorv32_uart0_setup+0xa4>
     868:	00355513          	srli	a0,a0,0x3
     86c:	00170713          	addi	a4,a4,1
     870:	0ff77713          	andi	a4,a4,255
     874:	fa1ff06f          	j	814 <neorv32_uart0_setup+0x40>
     878:	00155513          	srli	a0,a0,0x1
     87c:	ff1ff06f          	j	86c <neorv32_uart0_setup+0x98>

00000880 <neorv32_uart0_putc>:
     880:	00040737          	lui	a4,0x40
     884:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     888:	00e7f7b3          	and	a5,a5,a4
     88c:	fe079ce3          	bnez	a5,884 <neorv32_uart0_putc+0x4>
     890:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     894:	00008067          	ret

00000898 <neorv32_uart0_print>:
     898:	ff010113          	addi	sp,sp,-16
     89c:	00812423          	sw	s0,8(sp)
     8a0:	01212023          	sw	s2,0(sp)
     8a4:	00112623          	sw	ra,12(sp)
     8a8:	00912223          	sw	s1,4(sp)
     8ac:	00050413          	mv	s0,a0
     8b0:	00a00913          	li	s2,10
     8b4:	00044483          	lbu	s1,0(s0)
     8b8:	00140413          	addi	s0,s0,1
     8bc:	00049e63          	bnez	s1,8d8 <neorv32_uart0_print+0x40>
     8c0:	00c12083          	lw	ra,12(sp)
     8c4:	00812403          	lw	s0,8(sp)
     8c8:	00412483          	lw	s1,4(sp)
     8cc:	00012903          	lw	s2,0(sp)
     8d0:	01010113          	addi	sp,sp,16
     8d4:	00008067          	ret
     8d8:	01249663          	bne	s1,s2,8e4 <neorv32_uart0_print+0x4c>
     8dc:	00d00513          	li	a0,13
     8e0:	fa1ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     8e4:	00048513          	mv	a0,s1
     8e8:	f99ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     8ec:	fc9ff06f          	j	8b4 <neorv32_uart0_print+0x1c>

000008f0 <neorv32_uart0_printf>:
     8f0:	fa010113          	addi	sp,sp,-96
     8f4:	04f12a23          	sw	a5,84(sp)
     8f8:	04410793          	addi	a5,sp,68
     8fc:	02812c23          	sw	s0,56(sp)
     900:	03212823          	sw	s2,48(sp)
     904:	03412423          	sw	s4,40(sp)
     908:	03512223          	sw	s5,36(sp)
     90c:	03612023          	sw	s6,32(sp)
     910:	01712e23          	sw	s7,28(sp)
     914:	01812c23          	sw	s8,24(sp)
     918:	01912a23          	sw	s9,20(sp)
     91c:	02112e23          	sw	ra,60(sp)
     920:	02912a23          	sw	s1,52(sp)
     924:	03312623          	sw	s3,44(sp)
     928:	00050413          	mv	s0,a0
     92c:	04b12223          	sw	a1,68(sp)
     930:	04c12423          	sw	a2,72(sp)
     934:	04d12623          	sw	a3,76(sp)
     938:	04e12823          	sw	a4,80(sp)
     93c:	05012c23          	sw	a6,88(sp)
     940:	05112e23          	sw	a7,92(sp)
     944:	00f12023          	sw	a5,0(sp)
     948:	02500a13          	li	s4,37
     94c:	00a00a93          	li	s5,10
     950:	07300913          	li	s2,115
     954:	07500b13          	li	s6,117
     958:	07800b93          	li	s7,120
     95c:	06300c13          	li	s8,99
     960:	06900c93          	li	s9,105
     964:	00044483          	lbu	s1,0(s0)
     968:	02049c63          	bnez	s1,9a0 <neorv32_uart0_printf+0xb0>
     96c:	03c12083          	lw	ra,60(sp)
     970:	03812403          	lw	s0,56(sp)
     974:	03412483          	lw	s1,52(sp)
     978:	03012903          	lw	s2,48(sp)
     97c:	02c12983          	lw	s3,44(sp)
     980:	02812a03          	lw	s4,40(sp)
     984:	02412a83          	lw	s5,36(sp)
     988:	02012b03          	lw	s6,32(sp)
     98c:	01c12b83          	lw	s7,28(sp)
     990:	01812c03          	lw	s8,24(sp)
     994:	01412c83          	lw	s9,20(sp)
     998:	06010113          	addi	sp,sp,96
     99c:	00008067          	ret
     9a0:	0d449863          	bne	s1,s4,a70 <neorv32_uart0_printf+0x180>
     9a4:	00240993          	addi	s3,s0,2
     9a8:	00144403          	lbu	s0,1(s0)
     9ac:	05240263          	beq	s0,s2,9f0 <neorv32_uart0_printf+0x100>
     9b0:	00896e63          	bltu	s2,s0,9cc <neorv32_uart0_printf+0xdc>
     9b4:	05840c63          	beq	s0,s8,a0c <neorv32_uart0_printf+0x11c>
     9b8:	07940663          	beq	s0,s9,a24 <neorv32_uart0_printf+0x134>
     9bc:	02500513          	li	a0,37
     9c0:	ec1ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     9c4:	00040513          	mv	a0,s0
     9c8:	0540006f          	j	a1c <neorv32_uart0_printf+0x12c>
     9cc:	09640663          	beq	s0,s6,a58 <neorv32_uart0_printf+0x168>
     9d0:	ff7416e3          	bne	s0,s7,9bc <neorv32_uart0_printf+0xcc>
     9d4:	00012783          	lw	a5,0(sp)
     9d8:	00410593          	addi	a1,sp,4
     9dc:	0007a503          	lw	a0,0(a5)
     9e0:	00478713          	addi	a4,a5,4
     9e4:	00e12023          	sw	a4,0(sp)
     9e8:	da1ff0ef          	jal	ra,788 <__neorv32_uart_tohex>
     9ec:	0640006f          	j	a50 <neorv32_uart0_printf+0x160>
     9f0:	00012783          	lw	a5,0(sp)
     9f4:	0007a503          	lw	a0,0(a5)
     9f8:	00478713          	addi	a4,a5,4
     9fc:	00e12023          	sw	a4,0(sp)
     a00:	e99ff0ef          	jal	ra,898 <neorv32_uart0_print>
     a04:	00098413          	mv	s0,s3
     a08:	f5dff06f          	j	964 <neorv32_uart0_printf+0x74>
     a0c:	00012783          	lw	a5,0(sp)
     a10:	0007c503          	lbu	a0,0(a5)
     a14:	00478713          	addi	a4,a5,4
     a18:	00e12023          	sw	a4,0(sp)
     a1c:	e65ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     a20:	fe5ff06f          	j	a04 <neorv32_uart0_printf+0x114>
     a24:	00012783          	lw	a5,0(sp)
     a28:	0007a403          	lw	s0,0(a5)
     a2c:	00478713          	addi	a4,a5,4
     a30:	00e12023          	sw	a4,0(sp)
     a34:	00045863          	bgez	s0,a44 <neorv32_uart0_printf+0x154>
     a38:	02d00513          	li	a0,45
     a3c:	40800433          	neg	s0,s0
     a40:	e41ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     a44:	00410593          	addi	a1,sp,4
     a48:	00040513          	mv	a0,s0
     a4c:	c35ff0ef          	jal	ra,680 <__neorv32_uart_itoa>
     a50:	00410513          	addi	a0,sp,4
     a54:	fadff06f          	j	a00 <neorv32_uart0_printf+0x110>
     a58:	00012783          	lw	a5,0(sp)
     a5c:	00410593          	addi	a1,sp,4
     a60:	00478713          	addi	a4,a5,4
     a64:	0007a503          	lw	a0,0(a5)
     a68:	00e12023          	sw	a4,0(sp)
     a6c:	fe1ff06f          	j	a4c <neorv32_uart0_printf+0x15c>
     a70:	01549663          	bne	s1,s5,a7c <neorv32_uart0_printf+0x18c>
     a74:	00d00513          	li	a0,13
     a78:	e09ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     a7c:	00140993          	addi	s3,s0,1
     a80:	00048513          	mv	a0,s1
     a84:	f99ff06f          	j	a1c <neorv32_uart0_printf+0x12c>

00000a88 <neorv32_gpio_available>:
     a88:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     a8c:	01055513          	srli	a0,a0,0x10
     a90:	00157513          	andi	a0,a0,1
     a94:	00008067          	ret
     a98:	0000                	unimp
     a9a:	0000                	unimp
     a9c:	0000                	unimp
     a9e:	0000                	unimp

00000aa0 <__neorv32_rte_core>:
     aa0:	fc010113          	addi	sp,sp,-64
     aa4:	02112e23          	sw	ra,60(sp)
     aa8:	02512c23          	sw	t0,56(sp)
     aac:	02612a23          	sw	t1,52(sp)
     ab0:	02712823          	sw	t2,48(sp)
     ab4:	02a12623          	sw	a0,44(sp)
     ab8:	02b12423          	sw	a1,40(sp)
     abc:	02c12223          	sw	a2,36(sp)
     ac0:	02d12023          	sw	a3,32(sp)
     ac4:	00e12e23          	sw	a4,28(sp)
     ac8:	00f12c23          	sw	a5,24(sp)
     acc:	01012a23          	sw	a6,20(sp)
     ad0:	01112823          	sw	a7,16(sp)
     ad4:	01c12623          	sw	t3,12(sp)
     ad8:	01d12423          	sw	t4,8(sp)
     adc:	01e12223          	sw	t5,4(sp)
     ae0:	01f12023          	sw	t6,0(sp)
     ae4:	34102773          	csrr	a4,mepc
     ae8:	34071073          	csrw	mscratch,a4
     aec:	342027f3          	csrr	a5,mcause
     af0:	0807ca63          	bltz	a5,b84 <__neorv32_rte_core+0xe4>
     af4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3eacc>
     af8:	00300593          	li	a1,3
     afc:	0036f693          	andi	a3,a3,3
     b00:	00270613          	addi	a2,a4,2
     b04:	00b69463          	bne	a3,a1,b0c <__neorv32_rte_core+0x6c>
     b08:	00470613          	addi	a2,a4,4
     b0c:	34161073          	csrw	mepc,a2
     b10:	00b00713          	li	a4,11
     b14:	04f77c63          	bgeu	a4,a5,b6c <__neorv32_rte_core+0xcc>
     b18:	000017b7          	lui	a5,0x1
     b1c:	d1078793          	addi	a5,a5,-752 # d10 <__neorv32_rte_debug_exc_handler>
     b20:	000780e7          	jalr	a5
     b24:	03c12083          	lw	ra,60(sp)
     b28:	03812283          	lw	t0,56(sp)
     b2c:	03412303          	lw	t1,52(sp)
     b30:	03012383          	lw	t2,48(sp)
     b34:	02c12503          	lw	a0,44(sp)
     b38:	02812583          	lw	a1,40(sp)
     b3c:	02412603          	lw	a2,36(sp)
     b40:	02012683          	lw	a3,32(sp)
     b44:	01c12703          	lw	a4,28(sp)
     b48:	01812783          	lw	a5,24(sp)
     b4c:	01412803          	lw	a6,20(sp)
     b50:	01012883          	lw	a7,16(sp)
     b54:	00c12e03          	lw	t3,12(sp)
     b58:	00812e83          	lw	t4,8(sp)
     b5c:	00412f03          	lw	t5,4(sp)
     b60:	00012f83          	lw	t6,0(sp)
     b64:	04010113          	addi	sp,sp,64
     b68:	30200073          	mret
     b6c:	00001737          	lui	a4,0x1
     b70:	00279793          	slli	a5,a5,0x2
     b74:	28c70713          	addi	a4,a4,652 # 128c <symbols.0+0x14>
     b78:	00e787b3          	add	a5,a5,a4
     b7c:	0007a783          	lw	a5,0(a5)
     b80:	00078067          	jr	a5
     b84:	80000737          	lui	a4,0x80000
     b88:	ffd74713          	xori	a4,a4,-3
     b8c:	00e787b3          	add	a5,a5,a4
     b90:	01c00713          	li	a4,28
     b94:	f8f762e3          	bltu	a4,a5,b18 <__neorv32_rte_core+0x78>
     b98:	00001737          	lui	a4,0x1
     b9c:	00279793          	slli	a5,a5,0x2
     ba0:	2bc70713          	addi	a4,a4,700 # 12bc <symbols.0+0x44>
     ba4:	00e787b3          	add	a5,a5,a4
     ba8:	0007a783          	lw	a5,0(a5)
     bac:	00078067          	jr	a5
     bb0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
     bb4:	f6dff06f          	j	b20 <__neorv32_rte_core+0x80>
     bb8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
     bbc:	f65ff06f          	j	b20 <__neorv32_rte_core+0x80>
     bc0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
     bc4:	f5dff06f          	j	b20 <__neorv32_rte_core+0x80>
     bc8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
     bcc:	f55ff06f          	j	b20 <__neorv32_rte_core+0x80>
     bd0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
     bd4:	f4dff06f          	j	b20 <__neorv32_rte_core+0x80>
     bd8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
     bdc:	f45ff06f          	j	b20 <__neorv32_rte_core+0x80>
     be0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
     be4:	f3dff06f          	j	b20 <__neorv32_rte_core+0x80>
     be8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
     bec:	f35ff06f          	j	b20 <__neorv32_rte_core+0x80>
     bf0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
     bf4:	f2dff06f          	j	b20 <__neorv32_rte_core+0x80>
     bf8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
     bfc:	f25ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c00:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
     c04:	f1dff06f          	j	b20 <__neorv32_rte_core+0x80>
     c08:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
     c0c:	f15ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c10:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
     c14:	f0dff06f          	j	b20 <__neorv32_rte_core+0x80>
     c18:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
     c1c:	f05ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c20:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
     c24:	efdff06f          	j	b20 <__neorv32_rte_core+0x80>
     c28:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
     c2c:	ef5ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c30:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
     c34:	eedff06f          	j	b20 <__neorv32_rte_core+0x80>
     c38:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
     c3c:	ee5ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c40:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
     c44:	eddff06f          	j	b20 <__neorv32_rte_core+0x80>
     c48:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
     c4c:	ed5ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c50:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
     c54:	ecdff06f          	j	b20 <__neorv32_rte_core+0x80>
     c58:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
     c5c:	ec5ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c60:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
     c64:	ebdff06f          	j	b20 <__neorv32_rte_core+0x80>
     c68:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
     c6c:	eb5ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c70:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
     c74:	eadff06f          	j	b20 <__neorv32_rte_core+0x80>
     c78:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
     c7c:	ea5ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c80:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
     c84:	e9dff06f          	j	b20 <__neorv32_rte_core+0x80>
     c88:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
     c8c:	e95ff06f          	j	b20 <__neorv32_rte_core+0x80>
     c90:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
     c94:	e8dff06f          	j	b20 <__neorv32_rte_core+0x80>
     c98:	0000                	unimp
     c9a:	0000                	unimp
     c9c:	0000                	unimp
     c9e:	0000                	unimp

00000ca0 <__neorv32_rte_print_hex_word>:
     ca0:	fe010113          	addi	sp,sp,-32
     ca4:	01212823          	sw	s2,16(sp)
     ca8:	00050913          	mv	s2,a0
     cac:	00001537          	lui	a0,0x1
     cb0:	00912a23          	sw	s1,20(sp)
     cb4:	33050513          	addi	a0,a0,816 # 1330 <symbols.0+0xb8>
     cb8:	000014b7          	lui	s1,0x1
     cbc:	00812c23          	sw	s0,24(sp)
     cc0:	01312623          	sw	s3,12(sp)
     cc4:	00112e23          	sw	ra,28(sp)
     cc8:	01c00413          	li	s0,28
     ccc:	bcdff0ef          	jal	ra,898 <neorv32_uart0_print>
     cd0:	52448493          	addi	s1,s1,1316 # 1524 <hex_symbols.0>
     cd4:	ffc00993          	li	s3,-4
     cd8:	008957b3          	srl	a5,s2,s0
     cdc:	00f7f793          	andi	a5,a5,15
     ce0:	00f487b3          	add	a5,s1,a5
     ce4:	0007c503          	lbu	a0,0(a5)
     ce8:	ffc40413          	addi	s0,s0,-4
     cec:	b95ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     cf0:	ff3414e3          	bne	s0,s3,cd8 <__neorv32_rte_print_hex_word+0x38>
     cf4:	01c12083          	lw	ra,28(sp)
     cf8:	01812403          	lw	s0,24(sp)
     cfc:	01412483          	lw	s1,20(sp)
     d00:	01012903          	lw	s2,16(sp)
     d04:	00c12983          	lw	s3,12(sp)
     d08:	02010113          	addi	sp,sp,32
     d0c:	00008067          	ret

00000d10 <__neorv32_rte_debug_exc_handler>:
     d10:	ff010113          	addi	sp,sp,-16
     d14:	00112623          	sw	ra,12(sp)
     d18:	00812423          	sw	s0,8(sp)
     d1c:	00912223          	sw	s1,4(sp)
     d20:	aa5ff0ef          	jal	ra,7c4 <neorv32_uart0_available>
     d24:	1c050863          	beqz	a0,ef4 <__neorv32_rte_debug_exc_handler+0x1e4>
     d28:	00001537          	lui	a0,0x1
     d2c:	33450513          	addi	a0,a0,820 # 1334 <symbols.0+0xbc>
     d30:	b69ff0ef          	jal	ra,898 <neorv32_uart0_print>
     d34:	34202473          	csrr	s0,mcause
     d38:	00900713          	li	a4,9
     d3c:	00f47793          	andi	a5,s0,15
     d40:	03078493          	addi	s1,a5,48
     d44:	00f77463          	bgeu	a4,a5,d4c <__neorv32_rte_debug_exc_handler+0x3c>
     d48:	05778493          	addi	s1,a5,87
     d4c:	00b00793          	li	a5,11
     d50:	0087ee63          	bltu	a5,s0,d6c <__neorv32_rte_debug_exc_handler+0x5c>
     d54:	00001737          	lui	a4,0x1
     d58:	00241793          	slli	a5,s0,0x2
     d5c:	4f470713          	addi	a4,a4,1268 # 14f4 <symbols.0+0x27c>
     d60:	00e787b3          	add	a5,a5,a4
     d64:	0007a783          	lw	a5,0(a5)
     d68:	00078067          	jr	a5
     d6c:	800007b7          	lui	a5,0x80000
     d70:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     d74:	14e40e63          	beq	s0,a4,ed0 <__neorv32_rte_debug_exc_handler+0x1c0>
     d78:	02876a63          	bltu	a4,s0,dac <__neorv32_rte_debug_exc_handler+0x9c>
     d7c:	00378713          	addi	a4,a5,3
     d80:	12e40c63          	beq	s0,a4,eb8 <__neorv32_rte_debug_exc_handler+0x1a8>
     d84:	00778793          	addi	a5,a5,7
     d88:	12f40e63          	beq	s0,a5,ec4 <__neorv32_rte_debug_exc_handler+0x1b4>
     d8c:	00001537          	lui	a0,0x1
     d90:	49450513          	addi	a0,a0,1172 # 1494 <symbols.0+0x21c>
     d94:	b05ff0ef          	jal	ra,898 <neorv32_uart0_print>
     d98:	00040513          	mv	a0,s0
     d9c:	f05ff0ef          	jal	ra,ca0 <__neorv32_rte_print_hex_word>
     da0:	00100793          	li	a5,1
     da4:	08f40c63          	beq	s0,a5,e3c <__neorv32_rte_debug_exc_handler+0x12c>
     da8:	0280006f          	j	dd0 <__neorv32_rte_debug_exc_handler+0xc0>
     dac:	ff07c793          	xori	a5,a5,-16
     db0:	00f407b3          	add	a5,s0,a5
     db4:	00f00713          	li	a4,15
     db8:	fcf76ae3          	bltu	a4,a5,d8c <__neorv32_rte_debug_exc_handler+0x7c>
     dbc:	00001537          	lui	a0,0x1
     dc0:	48450513          	addi	a0,a0,1156 # 1484 <symbols.0+0x20c>
     dc4:	ad5ff0ef          	jal	ra,898 <neorv32_uart0_print>
     dc8:	00048513          	mv	a0,s1
     dcc:	ab5ff0ef          	jal	ra,880 <neorv32_uart0_putc>
     dd0:	ffd47413          	andi	s0,s0,-3
     dd4:	00500793          	li	a5,5
     dd8:	06f40263          	beq	s0,a5,e3c <__neorv32_rte_debug_exc_handler+0x12c>
     ddc:	00001537          	lui	a0,0x1
     de0:	4d850513          	addi	a0,a0,1240 # 14d8 <symbols.0+0x260>
     de4:	ab5ff0ef          	jal	ra,898 <neorv32_uart0_print>
     de8:	34002573          	csrr	a0,mscratch
     dec:	eb5ff0ef          	jal	ra,ca0 <__neorv32_rte_print_hex_word>
     df0:	00001537          	lui	a0,0x1
     df4:	4e050513          	addi	a0,a0,1248 # 14e0 <symbols.0+0x268>
     df8:	aa1ff0ef          	jal	ra,898 <neorv32_uart0_print>
     dfc:	34302573          	csrr	a0,mtval
     e00:	ea1ff0ef          	jal	ra,ca0 <__neorv32_rte_print_hex_word>
     e04:	00812403          	lw	s0,8(sp)
     e08:	00c12083          	lw	ra,12(sp)
     e0c:	00412483          	lw	s1,4(sp)
     e10:	00001537          	lui	a0,0x1
     e14:	4ec50513          	addi	a0,a0,1260 # 14ec <symbols.0+0x274>
     e18:	01010113          	addi	sp,sp,16
     e1c:	a7dff06f          	j	898 <neorv32_uart0_print>
     e20:	00001537          	lui	a0,0x1
     e24:	33c50513          	addi	a0,a0,828 # 133c <symbols.0+0xc4>
     e28:	a71ff0ef          	jal	ra,898 <neorv32_uart0_print>
     e2c:	fb1ff06f          	j	ddc <__neorv32_rte_debug_exc_handler+0xcc>
     e30:	00001537          	lui	a0,0x1
     e34:	35c50513          	addi	a0,a0,860 # 135c <symbols.0+0xe4>
     e38:	a61ff0ef          	jal	ra,898 <neorv32_uart0_print>
     e3c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     e40:	0a07d463          	bgez	a5,ee8 <__neorv32_rte_debug_exc_handler+0x1d8>
     e44:	0017f793          	andi	a5,a5,1
     e48:	08078a63          	beqz	a5,edc <__neorv32_rte_debug_exc_handler+0x1cc>
     e4c:	00001537          	lui	a0,0x1
     e50:	4ac50513          	addi	a0,a0,1196 # 14ac <symbols.0+0x234>
     e54:	fd5ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     e58:	00001537          	lui	a0,0x1
     e5c:	37850513          	addi	a0,a0,888 # 1378 <symbols.0+0x100>
     e60:	fc9ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     e64:	00001537          	lui	a0,0x1
     e68:	38c50513          	addi	a0,a0,908 # 138c <symbols.0+0x114>
     e6c:	fbdff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     e70:	00001537          	lui	a0,0x1
     e74:	39850513          	addi	a0,a0,920 # 1398 <symbols.0+0x120>
     e78:	fb1ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     e7c:	00001537          	lui	a0,0x1
     e80:	3b050513          	addi	a0,a0,944 # 13b0 <symbols.0+0x138>
     e84:	fb5ff06f          	j	e38 <__neorv32_rte_debug_exc_handler+0x128>
     e88:	00001537          	lui	a0,0x1
     e8c:	3c450513          	addi	a0,a0,964 # 13c4 <symbols.0+0x14c>
     e90:	f99ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     e94:	00001537          	lui	a0,0x1
     e98:	3e050513          	addi	a0,a0,992 # 13e0 <symbols.0+0x168>
     e9c:	f9dff06f          	j	e38 <__neorv32_rte_debug_exc_handler+0x128>
     ea0:	00001537          	lui	a0,0x1
     ea4:	3f450513          	addi	a0,a0,1012 # 13f4 <symbols.0+0x17c>
     ea8:	f81ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     eac:	00001537          	lui	a0,0x1
     eb0:	41450513          	addi	a0,a0,1044 # 1414 <symbols.0+0x19c>
     eb4:	f75ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     eb8:	00001537          	lui	a0,0x1
     ebc:	43450513          	addi	a0,a0,1076 # 1434 <symbols.0+0x1bc>
     ec0:	f69ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     ec4:	00001537          	lui	a0,0x1
     ec8:	45050513          	addi	a0,a0,1104 # 1450 <symbols.0+0x1d8>
     ecc:	f5dff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     ed0:	00001537          	lui	a0,0x1
     ed4:	46850513          	addi	a0,a0,1128 # 1468 <symbols.0+0x1f0>
     ed8:	f51ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     edc:	00001537          	lui	a0,0x1
     ee0:	4bc50513          	addi	a0,a0,1212 # 14bc <symbols.0+0x244>
     ee4:	f45ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     ee8:	00001537          	lui	a0,0x1
     eec:	4cc50513          	addi	a0,a0,1228 # 14cc <symbols.0+0x254>
     ef0:	f39ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x118>
     ef4:	00c12083          	lw	ra,12(sp)
     ef8:	00812403          	lw	s0,8(sp)
     efc:	00412483          	lw	s1,4(sp)
     f00:	01010113          	addi	sp,sp,16
     f04:	00008067          	ret

00000f08 <neorv32_rte_exception_uninstall>:
     f08:	01f00793          	li	a5,31
     f0c:	02a7e263          	bltu	a5,a0,f30 <neorv32_rte_exception_uninstall+0x28>
     f10:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
     f14:	00251513          	slli	a0,a0,0x2
     f18:	00a78533          	add	a0,a5,a0
     f1c:	000017b7          	lui	a5,0x1
     f20:	d1078793          	addi	a5,a5,-752 # d10 <__neorv32_rte_debug_exc_handler>
     f24:	00f52023          	sw	a5,0(a0)
     f28:	00000513          	li	a0,0
     f2c:	00008067          	ret
     f30:	00100513          	li	a0,1
     f34:	00008067          	ret

00000f38 <neorv32_rte_setup>:
     f38:	ff010113          	addi	sp,sp,-16
     f3c:	000017b7          	lui	a5,0x1
     f40:	00112623          	sw	ra,12(sp)
     f44:	00812423          	sw	s0,8(sp)
     f48:	00912223          	sw	s1,4(sp)
     f4c:	aa078793          	addi	a5,a5,-1376 # aa0 <__neorv32_rte_core>
     f50:	30579073          	csrw	mtvec,a5
     f54:	00000413          	li	s0,0
     f58:	01d00493          	li	s1,29
     f5c:	00040513          	mv	a0,s0
     f60:	00140413          	addi	s0,s0,1
     f64:	0ff47413          	andi	s0,s0,255
     f68:	fa1ff0ef          	jal	ra,f08 <neorv32_rte_exception_uninstall>
     f6c:	fe9418e3          	bne	s0,s1,f5c <neorv32_rte_setup+0x24>
     f70:	00c12083          	lw	ra,12(sp)
     f74:	00812403          	lw	s0,8(sp)
     f78:	00412483          	lw	s1,4(sp)
     f7c:	01010113          	addi	sp,sp,16
     f80:	00008067          	ret

00000f84 <__mulsi3>:
     f84:	00050613          	mv	a2,a0
     f88:	00000513          	li	a0,0
     f8c:	0015f693          	andi	a3,a1,1
     f90:	00068463          	beqz	a3,f98 <__mulsi3+0x14>
     f94:	00c50533          	add	a0,a0,a2
     f98:	0015d593          	srli	a1,a1,0x1
     f9c:	00161613          	slli	a2,a2,0x1
     fa0:	fe0596e3          	bnez	a1,f8c <__mulsi3+0x8>
     fa4:	00008067          	ret

00000fa8 <__divsi3>:
     fa8:	06054063          	bltz	a0,1008 <__umodsi3+0x10>
     fac:	0605c663          	bltz	a1,1018 <__umodsi3+0x20>

00000fb0 <__udivsi3>:
     fb0:	00058613          	mv	a2,a1
     fb4:	00050593          	mv	a1,a0
     fb8:	fff00513          	li	a0,-1
     fbc:	02060c63          	beqz	a2,ff4 <__udivsi3+0x44>
     fc0:	00100693          	li	a3,1
     fc4:	00b67a63          	bgeu	a2,a1,fd8 <__udivsi3+0x28>
     fc8:	00c05863          	blez	a2,fd8 <__udivsi3+0x28>
     fcc:	00161613          	slli	a2,a2,0x1
     fd0:	00169693          	slli	a3,a3,0x1
     fd4:	feb66ae3          	bltu	a2,a1,fc8 <__udivsi3+0x18>
     fd8:	00000513          	li	a0,0
     fdc:	00c5e663          	bltu	a1,a2,fe8 <__udivsi3+0x38>
     fe0:	40c585b3          	sub	a1,a1,a2
     fe4:	00d56533          	or	a0,a0,a3
     fe8:	0016d693          	srli	a3,a3,0x1
     fec:	00165613          	srli	a2,a2,0x1
     ff0:	fe0696e3          	bnez	a3,fdc <__udivsi3+0x2c>
     ff4:	00008067          	ret

00000ff8 <__umodsi3>:
     ff8:	00008293          	mv	t0,ra
     ffc:	fb5ff0ef          	jal	ra,fb0 <__udivsi3>
    1000:	00058513          	mv	a0,a1
    1004:	00028067          	jr	t0
    1008:	40a00533          	neg	a0,a0
    100c:	00b04863          	bgtz	a1,101c <__umodsi3+0x24>
    1010:	40b005b3          	neg	a1,a1
    1014:	f9dff06f          	j	fb0 <__udivsi3>
    1018:	40b005b3          	neg	a1,a1
    101c:	00008293          	mv	t0,ra
    1020:	f91ff0ef          	jal	ra,fb0 <__udivsi3>
    1024:	40a00533          	neg	a0,a0
    1028:	00028067          	jr	t0

0000102c <__modsi3>:
    102c:	00008293          	mv	t0,ra
    1030:	0005ca63          	bltz	a1,1044 <__modsi3+0x18>
    1034:	00054c63          	bltz	a0,104c <__modsi3+0x20>
    1038:	f79ff0ef          	jal	ra,fb0 <__udivsi3>
    103c:	00058513          	mv	a0,a1
    1040:	00028067          	jr	t0
    1044:	40b005b3          	neg	a1,a1
    1048:	fe0558e3          	bgez	a0,1038 <__modsi3+0xc>
    104c:	40a00533          	neg	a0,a0
    1050:	f61ff0ef          	jal	ra,fb0 <__udivsi3>
    1054:	40b00533          	neg	a0,a1
    1058:	00028067          	jr	t0
