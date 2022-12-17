
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
      e0:	43858593          	addi	a1,a1,1080 # 1514 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x35ec>
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
     1c8:	600000ef          	jal	ra,7c8 <neorv32_uart0_setup>
     1cc:	0b1000ef          	jal	ra,a7c <neorv32_gpio_available>
     1d0:	24050263          	beqz	a0,414 <main+0x294>
     1d4:	555000ef          	jal	ra,f28 <neorv32_rte_setup>
     1d8:	00001537          	lui	a0,0x1
     1dc:	0d450513          	addi	a0,a0,212 # 10d4 <__etext+0xac>
     1e0:	6ac000ef          	jal	ra,88c <neorv32_uart0_print>
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
     214:	23478793          	addi	a5,a5,564 # 1234 <__etext+0x20c>
     218:	00890913          	addi	s2,s2,8
     21c:	00c98993          	addi	s3,s3,12
     220:	80000c37          	lui	s8,0x80000
     224:	00f12423          	sw	a5,8(sp)
     228:	004c2683          	lw	a3,4(s8) # 80000004 <__ctr0_io_space_begin+0x80000204>
     22c:	800107b7          	lui	a5,0x80010
     230:	004c0a93          	addi	s5,s8,4
     234:	01078793          	addi	a5,a5,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
     238:	0007a703          	lw	a4,0(a5)
     23c:	fee68ee3          	beq	a3,a4,238 <main+0xb8>
     240:	80000437          	lui	s0,0x80000
     244:	000107b7          	lui	a5,0x10
     248:	00e42023          	sw	a4,0(s0) # 80000000 <__ctr0_io_space_begin+0x80000200>
     24c:	ffc78793          	addi	a5,a5,-4 # fffc <__crt0_copy_data_src_begin+0xeae8>
     250:	00040413          	mv	s0,s0
     254:	00f71e63          	bne	a4,a5,270 <main+0xf0>
     258:	00001537          	lui	a0,0x1
     25c:	10450513          	addi	a0,a0,260 # 1104 <__etext+0xdc>
     260:	62c000ef          	jal	ra,88c <neorv32_uart0_print>
     264:	00042783          	lw	a5,0(s0)
     268:	00faa023          	sw	a5,0(s5)
     26c:	fbdff06f          	j	228 <main+0xa8>
     270:	80010cb7          	lui	s9,0x80010
     274:	00000493          	li	s1,0
     278:	00100b13          	li	s6,1
     27c:	008c8a13          	addi	s4,s9,8 # 80010008 <__ctr0_io_space_begin+0x80010208>
     280:	00001d37          	lui	s10,0x1
     284:	00001db7          	lui	s11,0x1
     288:	00042783          	lw	a5,0(s0)
     28c:	0167f7b3          	and	a5,a5,s6
     290:	02079e63          	bnez	a5,2cc <main+0x14c>
     294:	ff648793          	addi	a5,s1,-10
     298:	0ff7f793          	andi	a5,a5,255
     29c:	00500713          	li	a4,5
     2a0:	16f76463          	bltu	a4,a5,408 <main+0x288>
     2a4:	00812703          	lw	a4,8(sp)
     2a8:	00279793          	slli	a5,a5,0x2
     2ac:	00e787b3          	add	a5,a5,a4
     2b0:	0007a783          	lw	a5,0(a5)
     2b4:	00078067          	jr	a5
     2b8:	00001537          	lui	a0,0x1
     2bc:	12850513          	addi	a0,a0,296 # 1128 <__etext+0x100>
     2c0:	5cc000ef          	jal	ra,88c <neorv32_uart0_print>
     2c4:	00000793          	li	a5,0
     2c8:	00fa2023          	sw	a5,0(s4)
     2cc:	00148493          	addi	s1,s1,1
     2d0:	0ff4f493          	andi	s1,s1,255
     2d4:	01000793          	li	a5,16
     2d8:	001b1b13          	slli	s6,s6,0x1
     2dc:	faf496e3          	bne	s1,a5,288 <main+0x108>
     2e0:	f85ff06f          	j	264 <main+0xe4>
     2e4:	00001537          	lui	a0,0x1
     2e8:	13450513          	addi	a0,a0,308 # 1134 <__etext+0x10c>
     2ec:	5a0000ef          	jal	ra,88c <neorv32_uart0_print>
     2f0:	00100793          	li	a5,1
     2f4:	fd5ff06f          	j	2c8 <main+0x148>
     2f8:	00001537          	lui	a0,0x1
     2fc:	14050513          	addi	a0,a0,320 # 1140 <__etext+0x118>
     300:	58c000ef          	jal	ra,88c <neorv32_uart0_print>
     304:	00200793          	li	a5,2
     308:	fc1ff06f          	j	2c8 <main+0x148>
     30c:	00001537          	lui	a0,0x1
     310:	15850513          	addi	a0,a0,344 # 1158 <__etext+0x130>
     314:	578000ef          	jal	ra,88c <neorv32_uart0_print>
     318:	00042783          	lw	a5,0(s0)
     31c:	00100513          	li	a0,1
     320:	00faa023          	sw	a5,0(s5)
     324:	13c000ef          	jal	ra,460 <cambia_operando>
     328:	00050593          	mv	a1,a0
     32c:	00a92023          	sw	a0,0(s2)
     330:	800107b7          	lui	a5,0x80010
     334:	00a7a023          	sw	a0,0(a5) # 80010000 <__ctr0_io_space_begin+0x80010200>
     338:	00001537          	lui	a0,0x1
     33c:	17450513          	addi	a0,a0,372 # 1174 <__etext+0x14c>
     340:	5a4000ef          	jal	ra,8e4 <neorv32_uart0_printf>
     344:	ee5ff06f          	j	228 <main+0xa8>
     348:	00001537          	lui	a0,0x1
     34c:	18450513          	addi	a0,a0,388 # 1184 <__etext+0x15c>
     350:	53c000ef          	jal	ra,88c <neorv32_uart0_print>
     354:	00042783          	lw	a5,0(s0)
     358:	00000513          	li	a0,0
     35c:	00faa023          	sw	a5,0(s5)
     360:	100000ef          	jal	ra,460 <cambia_operando>
     364:	800107b7          	lui	a5,0x80010
     368:	00050593          	mv	a1,a0
     36c:	00a9a023          	sw	a0,0(s3)
     370:	00478793          	addi	a5,a5,4 # 80010004 <__ctr0_io_space_begin+0x80010204>
     374:	00a7a023          	sw	a0,0(a5)
     378:	00001537          	lui	a0,0x1
     37c:	1a050513          	addi	a0,a0,416 # 11a0 <__etext+0x178>
     380:	fc1ff06f          	j	340 <main+0x1c0>
     384:	000017b7          	lui	a5,0x1
     388:	1b078513          	addi	a0,a5,432 # 11b0 <__etext+0x188>
     38c:	500000ef          	jal	ra,88c <neorv32_uart0_print>
     390:	000a2783          	lw	a5,0(s4)
     394:	00f12623          	sw	a5,12(sp)
     398:	00cc8b93          	addi	s7,s9,12
     39c:	000bab83          	lw	s7,0(s7)
     3a0:	00092583          	lw	a1,0(s2)
     3a4:	1bcd0513          	addi	a0,s10,444 # 11bc <__etext+0x194>
     3a8:	53c000ef          	jal	ra,8e4 <neorv32_uart0_printf>
     3ac:	00c12783          	lw	a5,12(sp)
     3b0:	00100713          	li	a4,1
     3b4:	02e78e63          	beq	a5,a4,3f0 <main+0x270>
     3b8:	00200713          	li	a4,2
     3bc:	04e78063          	beq	a5,a4,3fc <main+0x27c>
     3c0:	00079863          	bnez	a5,3d0 <main+0x250>
     3c4:	00001537          	lui	a0,0x1
     3c8:	1c050513          	addi	a0,a0,448 # 11c0 <__etext+0x198>
     3cc:	4c0000ef          	jal	ra,88c <neorv32_uart0_print>
     3d0:	0009a583          	lw	a1,0(s3)
     3d4:	1ccd8513          	addi	a0,s11,460 # 11cc <__etext+0x1a4>
     3d8:	000b8613          	mv	a2,s7
     3dc:	508000ef          	jal	ra,8e4 <neorv32_uart0_printf>
     3e0:	00001537          	lui	a0,0x1
     3e4:	1d850513          	addi	a0,a0,472 # 11d8 <__etext+0x1b0>
     3e8:	4a4000ef          	jal	ra,88c <neorv32_uart0_print>
     3ec:	ee1ff06f          	j	2cc <main+0x14c>
     3f0:	00001537          	lui	a0,0x1
     3f4:	1c450513          	addi	a0,a0,452 # 11c4 <__etext+0x19c>
     3f8:	fd5ff06f          	j	3cc <main+0x24c>
     3fc:	00001537          	lui	a0,0x1
     400:	1c850513          	addi	a0,a0,456 # 11c8 <__etext+0x1a0>
     404:	fc9ff06f          	j	3cc <main+0x24c>
     408:	000017b7          	lui	a5,0x1
     40c:	20878513          	addi	a0,a5,520 # 1208 <__etext+0x1e0>
     410:	fd9ff06f          	j	3e8 <main+0x268>
     414:	00001537          	lui	a0,0x1
     418:	0b050513          	addi	a0,a0,176 # 10b0 <__etext+0x88>
     41c:	470000ef          	jal	ra,88c <neorv32_uart0_print>
     420:	04c12083          	lw	ra,76(sp)
     424:	04812403          	lw	s0,72(sp)
     428:	04412483          	lw	s1,68(sp)
     42c:	04012903          	lw	s2,64(sp)
     430:	03c12983          	lw	s3,60(sp)
     434:	03812a03          	lw	s4,56(sp)
     438:	03412a83          	lw	s5,52(sp)
     43c:	03012b03          	lw	s6,48(sp)
     440:	02c12b83          	lw	s7,44(sp)
     444:	02812c03          	lw	s8,40(sp)
     448:	02412c83          	lw	s9,36(sp)
     44c:	02012d03          	lw	s10,32(sp)
     450:	01c12d83          	lw	s11,28(sp)
     454:	00100513          	li	a0,1
     458:	05010113          	addi	sp,sp,80
     45c:	00008067          	ret

00000460 <cambia_operando>:
     460:	fc010113          	addi	sp,sp,-64
     464:	02912a23          	sw	s1,52(sp)
     468:	03212823          	sw	s2,48(sp)
     46c:	01712e23          	sw	s7,28(sp)
     470:	01812c23          	sw	s8,24(sp)
     474:	02112e23          	sw	ra,60(sp)
     478:	02812c23          	sw	s0,56(sp)
     47c:	03312623          	sw	s3,44(sp)
     480:	03412423          	sw	s4,40(sp)
     484:	03512223          	sw	s5,36(sp)
     488:	03612023          	sw	s6,32(sp)
     48c:	01912a23          	sw	s9,20(sp)
     490:	01a12823          	sw	s10,16(sp)
     494:	01b12623          	sw	s11,12(sp)
     498:	00050493          	mv	s1,a0
     49c:	00000913          	li	s2,0
     4a0:	fff00b93          	li	s7,-1
     4a4:	00001c37          	lui	s8,0x1
     4a8:	800009b7          	lui	s3,0x80000
     4ac:	80010737          	lui	a4,0x80010
     4b0:	0049a603          	lw	a2,4(s3) # 80000004 <__ctr0_io_space_begin+0x80000204>
     4b4:	01070713          	addi	a4,a4,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
     4b8:	00498993          	addi	s3,s3,4
     4bc:	00072683          	lw	a3,0(a4)
     4c0:	fed60ee3          	beq	a2,a3,4bc <cambia_operando+0x5c>
     4c4:	80000a37          	lui	s4,0x80000
     4c8:	00da2023          	sw	a3,0(s4) # 80000000 <__ctr0_io_space_begin+0x80000200>
     4cc:	00000413          	li	s0,0
     4d0:	00100a93          	li	s5,1
     4d4:	000a0a13          	mv	s4,s4
     4d8:	00001cb7          	lui	s9,0x1
     4dc:	00001d37          	lui	s10,0x1
     4e0:	00001b37          	lui	s6,0x1
     4e4:	00001db7          	lui	s11,0x1
     4e8:	000a2683          	lw	a3,0(s4)
     4ec:	0156f733          	and	a4,a3,s5
     4f0:	04071c63          	bnez	a4,548 <cambia_operando+0xe8>
     4f4:	00900613          	li	a2,9
     4f8:	0ff47713          	andi	a4,s0,255
     4fc:	08866063          	bltu	a2,s0,57c <cambia_operando+0x11c>
     500:	fff00713          	li	a4,-1
     504:	06eb8063          	beq	s7,a4,564 <cambia_operando+0x104>
     508:	002b9713          	slli	a4,s7,0x2
     50c:	01770733          	add	a4,a4,s7
     510:	00171713          	slli	a4,a4,0x1
     514:	00870733          	add	a4,a4,s0
     518:	1ff00693          	li	a3,511
     51c:	04e6d663          	bge	a3,a4,568 <cambia_operando+0x108>
     520:	028d8513          	addi	a0,s11,40 # 1028 <__etext>
     524:	368000ef          	jal	ra,88c <neorv32_uart0_print>
     528:	00000b93          	li	s7,0
     52c:	040d0513          	addi	a0,s10,64 # 1040 <__etext+0x18>
     530:	35c000ef          	jal	ra,88c <neorv32_uart0_print>
     534:	417005b3          	neg	a1,s7
     538:	00091463          	bnez	s2,540 <cambia_operando+0xe0>
     53c:	000b8593          	mv	a1,s7
     540:	180b0513          	addi	a0,s6,384 # 1180 <__etext+0x158>
     544:	3a0000ef          	jal	ra,8e4 <neorv32_uart0_printf>
     548:	00140413          	addi	s0,s0,1
     54c:	01000713          	li	a4,16
     550:	001a9a93          	slli	s5,s5,0x1
     554:	f8e41ae3          	bne	s0,a4,4e8 <cambia_operando+0x88>
     558:	000a2703          	lw	a4,0(s4)
     55c:	00e9a023          	sw	a4,0(s3)
     560:	f49ff06f          	j	4a8 <cambia_operando+0x48>
     564:	00000b93          	li	s7,0
     568:	002b9713          	slli	a4,s7,0x2
     56c:	017707b3          	add	a5,a4,s7
     570:	00179793          	slli	a5,a5,0x1
     574:	00878bb3          	add	s7,a5,s0
     578:	fb5ff06f          	j	52c <cambia_operando+0xcc>
     57c:	00e00613          	li	a2,14
     580:	0cc70063          	beq	a4,a2,640 <cambia_operando+0x1e0>
     584:	00048a63          	beqz	s1,598 <cambia_operando+0x138>
     588:	00f00613          	li	a2,15
     58c:	04c70063          	beq	a4,a2,5cc <cambia_operando+0x16c>
     590:	00100613          	li	a2,1
     594:	0ac49a63          	bne	s1,a2,648 <cambia_operando+0x1e8>
     598:	00a00693          	li	a3,10
     59c:	0ad70a63          	beq	a4,a3,650 <cambia_operando+0x1f0>
     5a0:	054c8513          	addi	a0,s9,84 # 1054 <__etext+0x2c>
     5a4:	2e8000ef          	jal	ra,88c <neorv32_uart0_print>
     5a8:	fa1ff06f          	j	548 <cambia_operando+0xe8>
     5ac:	000017b7          	lui	a5,0x1
     5b0:	08c78513          	addi	a0,a5,140 # 108c <__etext+0x64>
     5b4:	2d8000ef          	jal	ra,88c <neorv32_uart0_print>
     5b8:	00000913          	li	s2,0
     5bc:	0a40006f          	j	660 <cambia_operando+0x200>
     5c0:	800007b7          	lui	a5,0x80000
     5c4:	00c7ab83          	lw	s7,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     5c8:	f81ff06f          	j	548 <cambia_operando+0xe8>
     5cc:	00d9a023          	sw	a3,0(s3)
     5d0:	fff00713          	li	a4,-1
     5d4:	06eb9063          	bne	s7,a4,634 <cambia_operando+0x1d4>
     5d8:	00100793          	li	a5,1
     5dc:	04f49663          	bne	s1,a5,628 <cambia_operando+0x1c8>
     5e0:	800007b7          	lui	a5,0x80000
     5e4:	0087ab83          	lw	s7,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     5e8:	03c12083          	lw	ra,60(sp)
     5ec:	03812403          	lw	s0,56(sp)
     5f0:	03412483          	lw	s1,52(sp)
     5f4:	03012903          	lw	s2,48(sp)
     5f8:	02c12983          	lw	s3,44(sp)
     5fc:	02812a03          	lw	s4,40(sp)
     600:	02412a83          	lw	s5,36(sp)
     604:	02012b03          	lw	s6,32(sp)
     608:	01812c03          	lw	s8,24(sp)
     60c:	01412c83          	lw	s9,20(sp)
     610:	01012d03          	lw	s10,16(sp)
     614:	00c12d83          	lw	s11,12(sp)
     618:	000b8513          	mv	a0,s7
     61c:	01c12b83          	lw	s7,28(sp)
     620:	04010113          	addi	sp,sp,64
     624:	00008067          	ret
     628:	800007b7          	lui	a5,0x80000
     62c:	00c7ab83          	lw	s7,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     630:	fb9ff06f          	j	5e8 <cambia_operando+0x188>
     634:	fa090ae3          	beqz	s2,5e8 <cambia_operando+0x188>
     638:	41700bb3          	neg	s7,s7
     63c:	fadff06f          	j	5e8 <cambia_operando+0x188>
     640:	00100613          	li	a2,1
     644:	f4c48ee3          	beq	s1,a2,5a0 <cambia_operando+0x140>
     648:	00a00613          	li	a2,10
     64c:	f8c710e3          	bne	a4,a2,5cc <cambia_operando+0x16c>
     650:	f4091ee3          	bnez	s2,5ac <cambia_operando+0x14c>
     654:	068c0513          	addi	a0,s8,104 # 1068 <__etext+0x40>
     658:	234000ef          	jal	ra,88c <neorv32_uart0_print>
     65c:	00100913          	li	s2,1
     660:	00100793          	li	a5,1
     664:	f4f49ee3          	bne	s1,a5,5c0 <cambia_operando+0x160>
     668:	800007b7          	lui	a5,0x80000
     66c:	0087ab83          	lw	s7,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     670:	ed9ff06f          	j	548 <cambia_operando+0xe8>

00000674 <__neorv32_uart_itoa>:
     674:	fd010113          	addi	sp,sp,-48
     678:	02812423          	sw	s0,40(sp)
     67c:	02912223          	sw	s1,36(sp)
     680:	03212023          	sw	s2,32(sp)
     684:	01312e23          	sw	s3,28(sp)
     688:	01412c23          	sw	s4,24(sp)
     68c:	02112623          	sw	ra,44(sp)
     690:	01512a23          	sw	s5,20(sp)
     694:	00001a37          	lui	s4,0x1
     698:	00050493          	mv	s1,a0
     69c:	00058413          	mv	s0,a1
     6a0:	00058523          	sb	zero,10(a1)
     6a4:	00000993          	li	s3,0
     6a8:	00410913          	addi	s2,sp,4
     6ac:	24ca0a13          	addi	s4,s4,588 # 124c <numbers.1>
     6b0:	00a00593          	li	a1,10
     6b4:	00048513          	mv	a0,s1
     6b8:	10d000ef          	jal	ra,fc4 <__umodsi3>
     6bc:	00aa0533          	add	a0,s4,a0
     6c0:	00054783          	lbu	a5,0(a0)
     6c4:	01390ab3          	add	s5,s2,s3
     6c8:	00048513          	mv	a0,s1
     6cc:	00fa8023          	sb	a5,0(s5)
     6d0:	00a00593          	li	a1,10
     6d4:	0a9000ef          	jal	ra,f7c <__udivsi3>
     6d8:	00198993          	addi	s3,s3,1
     6dc:	00a00793          	li	a5,10
     6e0:	00050493          	mv	s1,a0
     6e4:	fcf996e3          	bne	s3,a5,6b0 <__neorv32_uart_itoa+0x3c>
     6e8:	00090693          	mv	a3,s2
     6ec:	00900713          	li	a4,9
     6f0:	03000613          	li	a2,48
     6f4:	0096c583          	lbu	a1,9(a3)
     6f8:	00070793          	mv	a5,a4
     6fc:	fff70713          	addi	a4,a4,-1
     700:	01071713          	slli	a4,a4,0x10
     704:	01075713          	srli	a4,a4,0x10
     708:	00c59a63          	bne	a1,a2,71c <__neorv32_uart_itoa+0xa8>
     70c:	000684a3          	sb	zero,9(a3)
     710:	fff68693          	addi	a3,a3,-1
     714:	fe0710e3          	bnez	a4,6f4 <__neorv32_uart_itoa+0x80>
     718:	00000793          	li	a5,0
     71c:	00f907b3          	add	a5,s2,a5
     720:	00000593          	li	a1,0
     724:	0007c703          	lbu	a4,0(a5)
     728:	00070c63          	beqz	a4,740 <__neorv32_uart_itoa+0xcc>
     72c:	00158693          	addi	a3,a1,1
     730:	00b405b3          	add	a1,s0,a1
     734:	00e58023          	sb	a4,0(a1)
     738:	01069593          	slli	a1,a3,0x10
     73c:	0105d593          	srli	a1,a1,0x10
     740:	fff78713          	addi	a4,a5,-1
     744:	02f91863          	bne	s2,a5,774 <__neorv32_uart_itoa+0x100>
     748:	00b40433          	add	s0,s0,a1
     74c:	00040023          	sb	zero,0(s0)
     750:	02c12083          	lw	ra,44(sp)
     754:	02812403          	lw	s0,40(sp)
     758:	02412483          	lw	s1,36(sp)
     75c:	02012903          	lw	s2,32(sp)
     760:	01c12983          	lw	s3,28(sp)
     764:	01812a03          	lw	s4,24(sp)
     768:	01412a83          	lw	s5,20(sp)
     76c:	03010113          	addi	sp,sp,48
     770:	00008067          	ret
     774:	00070793          	mv	a5,a4
     778:	fadff06f          	j	724 <__neorv32_uart_itoa+0xb0>

0000077c <__neorv32_uart_tohex>:
     77c:	00001637          	lui	a2,0x1
     780:	00758693          	addi	a3,a1,7
     784:	00000713          	li	a4,0
     788:	25860613          	addi	a2,a2,600 # 1258 <symbols.0>
     78c:	02000813          	li	a6,32
     790:	00e557b3          	srl	a5,a0,a4
     794:	00f7f793          	andi	a5,a5,15
     798:	00f607b3          	add	a5,a2,a5
     79c:	0007c783          	lbu	a5,0(a5)
     7a0:	00470713          	addi	a4,a4,4
     7a4:	fff68693          	addi	a3,a3,-1
     7a8:	00f680a3          	sb	a5,1(a3)
     7ac:	ff0712e3          	bne	a4,a6,790 <__neorv32_uart_tohex+0x14>
     7b0:	00058423          	sb	zero,8(a1)
     7b4:	00008067          	ret

000007b8 <neorv32_uart0_available>:
     7b8:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     7bc:	01255513          	srli	a0,a0,0x12
     7c0:	00157513          	andi	a0,a0,1
     7c4:	00008067          	ret

000007c8 <neorv32_uart0_setup>:
     7c8:	ff010113          	addi	sp,sp,-16
     7cc:	00812423          	sw	s0,8(sp)
     7d0:	00912223          	sw	s1,4(sp)
     7d4:	00112623          	sw	ra,12(sp)
     7d8:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     7dc:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     7e0:	00058413          	mv	s0,a1
     7e4:	00151593          	slli	a1,a0,0x1
     7e8:	00078513          	mv	a0,a5
     7ec:	00060493          	mv	s1,a2
     7f0:	78c000ef          	jal	ra,f7c <__udivsi3>
     7f4:	01051513          	slli	a0,a0,0x10
     7f8:	000017b7          	lui	a5,0x1
     7fc:	01055513          	srli	a0,a0,0x10
     800:	00000713          	li	a4,0
     804:	ffe78793          	addi	a5,a5,-2 # ffe <__modsi3+0x6>
     808:	04a7e463          	bltu	a5,a0,850 <neorv32_uart0_setup+0x88>
     80c:	0034f793          	andi	a5,s1,3
     810:	00347413          	andi	s0,s0,3
     814:	fff50513          	addi	a0,a0,-1
     818:	01479793          	slli	a5,a5,0x14
     81c:	01641413          	slli	s0,s0,0x16
     820:	00f567b3          	or	a5,a0,a5
     824:	0087e7b3          	or	a5,a5,s0
     828:	01871713          	slli	a4,a4,0x18
     82c:	00c12083          	lw	ra,12(sp)
     830:	00812403          	lw	s0,8(sp)
     834:	00e7e7b3          	or	a5,a5,a4
     838:	10000737          	lui	a4,0x10000
     83c:	00e7e7b3          	or	a5,a5,a4
     840:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     844:	00412483          	lw	s1,4(sp)
     848:	01010113          	addi	sp,sp,16
     84c:	00008067          	ret
     850:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeaea>
     854:	0fd6f693          	andi	a3,a3,253
     858:	00069a63          	bnez	a3,86c <neorv32_uart0_setup+0xa4>
     85c:	00355513          	srli	a0,a0,0x3
     860:	00170713          	addi	a4,a4,1
     864:	0ff77713          	andi	a4,a4,255
     868:	fa1ff06f          	j	808 <neorv32_uart0_setup+0x40>
     86c:	00155513          	srli	a0,a0,0x1
     870:	ff1ff06f          	j	860 <neorv32_uart0_setup+0x98>

00000874 <neorv32_uart0_putc>:
     874:	00040737          	lui	a4,0x40
     878:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     87c:	00e7f7b3          	and	a5,a5,a4
     880:	fe079ce3          	bnez	a5,878 <neorv32_uart0_putc+0x4>
     884:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     888:	00008067          	ret

0000088c <neorv32_uart0_print>:
     88c:	ff010113          	addi	sp,sp,-16
     890:	00812423          	sw	s0,8(sp)
     894:	01212023          	sw	s2,0(sp)
     898:	00112623          	sw	ra,12(sp)
     89c:	00912223          	sw	s1,4(sp)
     8a0:	00050413          	mv	s0,a0
     8a4:	00a00913          	li	s2,10
     8a8:	00044483          	lbu	s1,0(s0)
     8ac:	00140413          	addi	s0,s0,1
     8b0:	00049e63          	bnez	s1,8cc <neorv32_uart0_print+0x40>
     8b4:	00c12083          	lw	ra,12(sp)
     8b8:	00812403          	lw	s0,8(sp)
     8bc:	00412483          	lw	s1,4(sp)
     8c0:	00012903          	lw	s2,0(sp)
     8c4:	01010113          	addi	sp,sp,16
     8c8:	00008067          	ret
     8cc:	01249663          	bne	s1,s2,8d8 <neorv32_uart0_print+0x4c>
     8d0:	00d00513          	li	a0,13
     8d4:	fa1ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     8d8:	00048513          	mv	a0,s1
     8dc:	f99ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     8e0:	fc9ff06f          	j	8a8 <neorv32_uart0_print+0x1c>

000008e4 <neorv32_uart0_printf>:
     8e4:	fa010113          	addi	sp,sp,-96
     8e8:	04f12a23          	sw	a5,84(sp)
     8ec:	04410793          	addi	a5,sp,68
     8f0:	02812c23          	sw	s0,56(sp)
     8f4:	03212823          	sw	s2,48(sp)
     8f8:	03412423          	sw	s4,40(sp)
     8fc:	03512223          	sw	s5,36(sp)
     900:	03612023          	sw	s6,32(sp)
     904:	01712e23          	sw	s7,28(sp)
     908:	01812c23          	sw	s8,24(sp)
     90c:	01912a23          	sw	s9,20(sp)
     910:	02112e23          	sw	ra,60(sp)
     914:	02912a23          	sw	s1,52(sp)
     918:	03312623          	sw	s3,44(sp)
     91c:	00050413          	mv	s0,a0
     920:	04b12223          	sw	a1,68(sp)
     924:	04c12423          	sw	a2,72(sp)
     928:	04d12623          	sw	a3,76(sp)
     92c:	04e12823          	sw	a4,80(sp)
     930:	05012c23          	sw	a6,88(sp)
     934:	05112e23          	sw	a7,92(sp)
     938:	00f12023          	sw	a5,0(sp)
     93c:	02500a13          	li	s4,37
     940:	00a00a93          	li	s5,10
     944:	07300913          	li	s2,115
     948:	07500b13          	li	s6,117
     94c:	07800b93          	li	s7,120
     950:	06300c13          	li	s8,99
     954:	06900c93          	li	s9,105
     958:	00044483          	lbu	s1,0(s0)
     95c:	02049c63          	bnez	s1,994 <neorv32_uart0_printf+0xb0>
     960:	03c12083          	lw	ra,60(sp)
     964:	03812403          	lw	s0,56(sp)
     968:	03412483          	lw	s1,52(sp)
     96c:	03012903          	lw	s2,48(sp)
     970:	02c12983          	lw	s3,44(sp)
     974:	02812a03          	lw	s4,40(sp)
     978:	02412a83          	lw	s5,36(sp)
     97c:	02012b03          	lw	s6,32(sp)
     980:	01c12b83          	lw	s7,28(sp)
     984:	01812c03          	lw	s8,24(sp)
     988:	01412c83          	lw	s9,20(sp)
     98c:	06010113          	addi	sp,sp,96
     990:	00008067          	ret
     994:	0d449863          	bne	s1,s4,a64 <neorv32_uart0_printf+0x180>
     998:	00240993          	addi	s3,s0,2
     99c:	00144403          	lbu	s0,1(s0)
     9a0:	05240263          	beq	s0,s2,9e4 <neorv32_uart0_printf+0x100>
     9a4:	00896e63          	bltu	s2,s0,9c0 <neorv32_uart0_printf+0xdc>
     9a8:	05840c63          	beq	s0,s8,a00 <neorv32_uart0_printf+0x11c>
     9ac:	07940663          	beq	s0,s9,a18 <neorv32_uart0_printf+0x134>
     9b0:	02500513          	li	a0,37
     9b4:	ec1ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     9b8:	00040513          	mv	a0,s0
     9bc:	0540006f          	j	a10 <neorv32_uart0_printf+0x12c>
     9c0:	09640663          	beq	s0,s6,a4c <neorv32_uart0_printf+0x168>
     9c4:	ff7416e3          	bne	s0,s7,9b0 <neorv32_uart0_printf+0xcc>
     9c8:	00012783          	lw	a5,0(sp)
     9cc:	00410593          	addi	a1,sp,4
     9d0:	0007a503          	lw	a0,0(a5)
     9d4:	00478713          	addi	a4,a5,4
     9d8:	00e12023          	sw	a4,0(sp)
     9dc:	da1ff0ef          	jal	ra,77c <__neorv32_uart_tohex>
     9e0:	0640006f          	j	a44 <neorv32_uart0_printf+0x160>
     9e4:	00012783          	lw	a5,0(sp)
     9e8:	0007a503          	lw	a0,0(a5)
     9ec:	00478713          	addi	a4,a5,4
     9f0:	00e12023          	sw	a4,0(sp)
     9f4:	e99ff0ef          	jal	ra,88c <neorv32_uart0_print>
     9f8:	00098413          	mv	s0,s3
     9fc:	f5dff06f          	j	958 <neorv32_uart0_printf+0x74>
     a00:	00012783          	lw	a5,0(sp)
     a04:	0007c503          	lbu	a0,0(a5)
     a08:	00478713          	addi	a4,a5,4
     a0c:	00e12023          	sw	a4,0(sp)
     a10:	e65ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     a14:	fe5ff06f          	j	9f8 <neorv32_uart0_printf+0x114>
     a18:	00012783          	lw	a5,0(sp)
     a1c:	0007a403          	lw	s0,0(a5)
     a20:	00478713          	addi	a4,a5,4
     a24:	00e12023          	sw	a4,0(sp)
     a28:	00045863          	bgez	s0,a38 <neorv32_uart0_printf+0x154>
     a2c:	02d00513          	li	a0,45
     a30:	40800433          	neg	s0,s0
     a34:	e41ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     a38:	00410593          	addi	a1,sp,4
     a3c:	00040513          	mv	a0,s0
     a40:	c35ff0ef          	jal	ra,674 <__neorv32_uart_itoa>
     a44:	00410513          	addi	a0,sp,4
     a48:	fadff06f          	j	9f4 <neorv32_uart0_printf+0x110>
     a4c:	00012783          	lw	a5,0(sp)
     a50:	00410593          	addi	a1,sp,4
     a54:	00478713          	addi	a4,a5,4
     a58:	0007a503          	lw	a0,0(a5)
     a5c:	00e12023          	sw	a4,0(sp)
     a60:	fe1ff06f          	j	a40 <neorv32_uart0_printf+0x15c>
     a64:	01549663          	bne	s1,s5,a70 <neorv32_uart0_printf+0x18c>
     a68:	00d00513          	li	a0,13
     a6c:	e09ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     a70:	00140993          	addi	s3,s0,1
     a74:	00048513          	mv	a0,s1
     a78:	f99ff06f          	j	a10 <neorv32_uart0_printf+0x12c>

00000a7c <neorv32_gpio_available>:
     a7c:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     a80:	01055513          	srli	a0,a0,0x10
     a84:	00157513          	andi	a0,a0,1
     a88:	00008067          	ret
     a8c:	0000                	unimp
     a8e:	0000                	unimp

00000a90 <__neorv32_rte_core>:
     a90:	fc010113          	addi	sp,sp,-64
     a94:	02112e23          	sw	ra,60(sp)
     a98:	02512c23          	sw	t0,56(sp)
     a9c:	02612a23          	sw	t1,52(sp)
     aa0:	02712823          	sw	t2,48(sp)
     aa4:	02a12623          	sw	a0,44(sp)
     aa8:	02b12423          	sw	a1,40(sp)
     aac:	02c12223          	sw	a2,36(sp)
     ab0:	02d12023          	sw	a3,32(sp)
     ab4:	00e12e23          	sw	a4,28(sp)
     ab8:	00f12c23          	sw	a5,24(sp)
     abc:	01012a23          	sw	a6,20(sp)
     ac0:	01112823          	sw	a7,16(sp)
     ac4:	01c12623          	sw	t3,12(sp)
     ac8:	01d12423          	sw	t4,8(sp)
     acc:	01e12223          	sw	t5,4(sp)
     ad0:	01f12023          	sw	t6,0(sp)
     ad4:	34102773          	csrr	a4,mepc
     ad8:	34071073          	csrw	mscratch,a4
     adc:	342027f3          	csrr	a5,mcause
     ae0:	0807ca63          	bltz	a5,b74 <__neorv32_rte_core+0xe4>
     ae4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3eaec>
     ae8:	00300593          	li	a1,3
     aec:	0036f693          	andi	a3,a3,3
     af0:	00270613          	addi	a2,a4,2
     af4:	00b69463          	bne	a3,a1,afc <__neorv32_rte_core+0x6c>
     af8:	00470613          	addi	a2,a4,4
     afc:	34161073          	csrw	mepc,a2
     b00:	00b00713          	li	a4,11
     b04:	04f77c63          	bgeu	a4,a5,b5c <__neorv32_rte_core+0xcc>
     b08:	000017b7          	lui	a5,0x1
     b0c:	d0078793          	addi	a5,a5,-768 # d00 <__neorv32_rte_debug_exc_handler>
     b10:	000780e7          	jalr	a5
     b14:	03c12083          	lw	ra,60(sp)
     b18:	03812283          	lw	t0,56(sp)
     b1c:	03412303          	lw	t1,52(sp)
     b20:	03012383          	lw	t2,48(sp)
     b24:	02c12503          	lw	a0,44(sp)
     b28:	02812583          	lw	a1,40(sp)
     b2c:	02412603          	lw	a2,36(sp)
     b30:	02012683          	lw	a3,32(sp)
     b34:	01c12703          	lw	a4,28(sp)
     b38:	01812783          	lw	a5,24(sp)
     b3c:	01412803          	lw	a6,20(sp)
     b40:	01012883          	lw	a7,16(sp)
     b44:	00c12e03          	lw	t3,12(sp)
     b48:	00812e83          	lw	t4,8(sp)
     b4c:	00412f03          	lw	t5,4(sp)
     b50:	00012f83          	lw	t6,0(sp)
     b54:	04010113          	addi	sp,sp,64
     b58:	30200073          	mret
     b5c:	00001737          	lui	a4,0x1
     b60:	00279793          	slli	a5,a5,0x2
     b64:	26c70713          	addi	a4,a4,620 # 126c <symbols.0+0x14>
     b68:	00e787b3          	add	a5,a5,a4
     b6c:	0007a783          	lw	a5,0(a5)
     b70:	00078067          	jr	a5
     b74:	80000737          	lui	a4,0x80000
     b78:	ffd74713          	xori	a4,a4,-3
     b7c:	00e787b3          	add	a5,a5,a4
     b80:	01c00713          	li	a4,28
     b84:	f8f762e3          	bltu	a4,a5,b08 <__neorv32_rte_core+0x78>
     b88:	00001737          	lui	a4,0x1
     b8c:	00279793          	slli	a5,a5,0x2
     b90:	29c70713          	addi	a4,a4,668 # 129c <symbols.0+0x44>
     b94:	00e787b3          	add	a5,a5,a4
     b98:	0007a783          	lw	a5,0(a5)
     b9c:	00078067          	jr	a5
     ba0:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
     ba4:	f6dff06f          	j	b10 <__neorv32_rte_core+0x80>
     ba8:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
     bac:	f65ff06f          	j	b10 <__neorv32_rte_core+0x80>
     bb0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
     bb4:	f5dff06f          	j	b10 <__neorv32_rte_core+0x80>
     bb8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
     bbc:	f55ff06f          	j	b10 <__neorv32_rte_core+0x80>
     bc0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
     bc4:	f4dff06f          	j	b10 <__neorv32_rte_core+0x80>
     bc8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
     bcc:	f45ff06f          	j	b10 <__neorv32_rte_core+0x80>
     bd0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
     bd4:	f3dff06f          	j	b10 <__neorv32_rte_core+0x80>
     bd8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
     bdc:	f35ff06f          	j	b10 <__neorv32_rte_core+0x80>
     be0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
     be4:	f2dff06f          	j	b10 <__neorv32_rte_core+0x80>
     be8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
     bec:	f25ff06f          	j	b10 <__neorv32_rte_core+0x80>
     bf0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
     bf4:	f1dff06f          	j	b10 <__neorv32_rte_core+0x80>
     bf8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
     bfc:	f15ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c00:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
     c04:	f0dff06f          	j	b10 <__neorv32_rte_core+0x80>
     c08:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
     c0c:	f05ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c10:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
     c14:	efdff06f          	j	b10 <__neorv32_rte_core+0x80>
     c18:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
     c1c:	ef5ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c20:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
     c24:	eedff06f          	j	b10 <__neorv32_rte_core+0x80>
     c28:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
     c2c:	ee5ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c30:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
     c34:	eddff06f          	j	b10 <__neorv32_rte_core+0x80>
     c38:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
     c3c:	ed5ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c40:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
     c44:	ecdff06f          	j	b10 <__neorv32_rte_core+0x80>
     c48:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
     c4c:	ec5ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c50:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
     c54:	ebdff06f          	j	b10 <__neorv32_rte_core+0x80>
     c58:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
     c5c:	eb5ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c60:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
     c64:	eadff06f          	j	b10 <__neorv32_rte_core+0x80>
     c68:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
     c6c:	ea5ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c70:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
     c74:	e9dff06f          	j	b10 <__neorv32_rte_core+0x80>
     c78:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
     c7c:	e95ff06f          	j	b10 <__neorv32_rte_core+0x80>
     c80:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
     c84:	e8dff06f          	j	b10 <__neorv32_rte_core+0x80>
     c88:	0000                	unimp
     c8a:	0000                	unimp
     c8c:	0000                	unimp
     c8e:	0000                	unimp

00000c90 <__neorv32_rte_print_hex_word>:
     c90:	fe010113          	addi	sp,sp,-32
     c94:	01212823          	sw	s2,16(sp)
     c98:	00050913          	mv	s2,a0
     c9c:	00001537          	lui	a0,0x1
     ca0:	00912a23          	sw	s1,20(sp)
     ca4:	31050513          	addi	a0,a0,784 # 1310 <symbols.0+0xb8>
     ca8:	000014b7          	lui	s1,0x1
     cac:	00812c23          	sw	s0,24(sp)
     cb0:	01312623          	sw	s3,12(sp)
     cb4:	00112e23          	sw	ra,28(sp)
     cb8:	01c00413          	li	s0,28
     cbc:	bd1ff0ef          	jal	ra,88c <neorv32_uart0_print>
     cc0:	50448493          	addi	s1,s1,1284 # 1504 <hex_symbols.0>
     cc4:	ffc00993          	li	s3,-4
     cc8:	008957b3          	srl	a5,s2,s0
     ccc:	00f7f793          	andi	a5,a5,15
     cd0:	00f487b3          	add	a5,s1,a5
     cd4:	0007c503          	lbu	a0,0(a5)
     cd8:	ffc40413          	addi	s0,s0,-4
     cdc:	b99ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     ce0:	ff3414e3          	bne	s0,s3,cc8 <__neorv32_rte_print_hex_word+0x38>
     ce4:	01c12083          	lw	ra,28(sp)
     ce8:	01812403          	lw	s0,24(sp)
     cec:	01412483          	lw	s1,20(sp)
     cf0:	01012903          	lw	s2,16(sp)
     cf4:	00c12983          	lw	s3,12(sp)
     cf8:	02010113          	addi	sp,sp,32
     cfc:	00008067          	ret

00000d00 <__neorv32_rte_debug_exc_handler>:
     d00:	ff010113          	addi	sp,sp,-16
     d04:	00112623          	sw	ra,12(sp)
     d08:	00812423          	sw	s0,8(sp)
     d0c:	00912223          	sw	s1,4(sp)
     d10:	aa9ff0ef          	jal	ra,7b8 <neorv32_uart0_available>
     d14:	1c050863          	beqz	a0,ee4 <__neorv32_rte_debug_exc_handler+0x1e4>
     d18:	00001537          	lui	a0,0x1
     d1c:	31450513          	addi	a0,a0,788 # 1314 <symbols.0+0xbc>
     d20:	b6dff0ef          	jal	ra,88c <neorv32_uart0_print>
     d24:	34202473          	csrr	s0,mcause
     d28:	00900713          	li	a4,9
     d2c:	00f47793          	andi	a5,s0,15
     d30:	03078493          	addi	s1,a5,48
     d34:	00f77463          	bgeu	a4,a5,d3c <__neorv32_rte_debug_exc_handler+0x3c>
     d38:	05778493          	addi	s1,a5,87
     d3c:	00b00793          	li	a5,11
     d40:	0087ee63          	bltu	a5,s0,d5c <__neorv32_rte_debug_exc_handler+0x5c>
     d44:	00001737          	lui	a4,0x1
     d48:	00241793          	slli	a5,s0,0x2
     d4c:	4d470713          	addi	a4,a4,1236 # 14d4 <symbols.0+0x27c>
     d50:	00e787b3          	add	a5,a5,a4
     d54:	0007a783          	lw	a5,0(a5)
     d58:	00078067          	jr	a5
     d5c:	800007b7          	lui	a5,0x80000
     d60:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     d64:	14e40e63          	beq	s0,a4,ec0 <__neorv32_rte_debug_exc_handler+0x1c0>
     d68:	02876a63          	bltu	a4,s0,d9c <__neorv32_rte_debug_exc_handler+0x9c>
     d6c:	00378713          	addi	a4,a5,3
     d70:	12e40c63          	beq	s0,a4,ea8 <__neorv32_rte_debug_exc_handler+0x1a8>
     d74:	00778793          	addi	a5,a5,7
     d78:	12f40e63          	beq	s0,a5,eb4 <__neorv32_rte_debug_exc_handler+0x1b4>
     d7c:	00001537          	lui	a0,0x1
     d80:	47450513          	addi	a0,a0,1140 # 1474 <symbols.0+0x21c>
     d84:	b09ff0ef          	jal	ra,88c <neorv32_uart0_print>
     d88:	00040513          	mv	a0,s0
     d8c:	f05ff0ef          	jal	ra,c90 <__neorv32_rte_print_hex_word>
     d90:	00100793          	li	a5,1
     d94:	08f40c63          	beq	s0,a5,e2c <__neorv32_rte_debug_exc_handler+0x12c>
     d98:	0280006f          	j	dc0 <__neorv32_rte_debug_exc_handler+0xc0>
     d9c:	ff07c793          	xori	a5,a5,-16
     da0:	00f407b3          	add	a5,s0,a5
     da4:	00f00713          	li	a4,15
     da8:	fcf76ae3          	bltu	a4,a5,d7c <__neorv32_rte_debug_exc_handler+0x7c>
     dac:	00001537          	lui	a0,0x1
     db0:	46450513          	addi	a0,a0,1124 # 1464 <symbols.0+0x20c>
     db4:	ad9ff0ef          	jal	ra,88c <neorv32_uart0_print>
     db8:	00048513          	mv	a0,s1
     dbc:	ab9ff0ef          	jal	ra,874 <neorv32_uart0_putc>
     dc0:	ffd47413          	andi	s0,s0,-3
     dc4:	00500793          	li	a5,5
     dc8:	06f40263          	beq	s0,a5,e2c <__neorv32_rte_debug_exc_handler+0x12c>
     dcc:	00001537          	lui	a0,0x1
     dd0:	4b850513          	addi	a0,a0,1208 # 14b8 <symbols.0+0x260>
     dd4:	ab9ff0ef          	jal	ra,88c <neorv32_uart0_print>
     dd8:	34002573          	csrr	a0,mscratch
     ddc:	eb5ff0ef          	jal	ra,c90 <__neorv32_rte_print_hex_word>
     de0:	00001537          	lui	a0,0x1
     de4:	4c050513          	addi	a0,a0,1216 # 14c0 <symbols.0+0x268>
     de8:	aa5ff0ef          	jal	ra,88c <neorv32_uart0_print>
     dec:	34302573          	csrr	a0,mtval
     df0:	ea1ff0ef          	jal	ra,c90 <__neorv32_rte_print_hex_word>
     df4:	00812403          	lw	s0,8(sp)
     df8:	00c12083          	lw	ra,12(sp)
     dfc:	00412483          	lw	s1,4(sp)
     e00:	00001537          	lui	a0,0x1
     e04:	4cc50513          	addi	a0,a0,1228 # 14cc <symbols.0+0x274>
     e08:	01010113          	addi	sp,sp,16
     e0c:	a81ff06f          	j	88c <neorv32_uart0_print>
     e10:	00001537          	lui	a0,0x1
     e14:	31c50513          	addi	a0,a0,796 # 131c <symbols.0+0xc4>
     e18:	a75ff0ef          	jal	ra,88c <neorv32_uart0_print>
     e1c:	fb1ff06f          	j	dcc <__neorv32_rte_debug_exc_handler+0xcc>
     e20:	00001537          	lui	a0,0x1
     e24:	33c50513          	addi	a0,a0,828 # 133c <symbols.0+0xe4>
     e28:	a65ff0ef          	jal	ra,88c <neorv32_uart0_print>
     e2c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     e30:	0a07d463          	bgez	a5,ed8 <__neorv32_rte_debug_exc_handler+0x1d8>
     e34:	0017f793          	andi	a5,a5,1
     e38:	08078a63          	beqz	a5,ecc <__neorv32_rte_debug_exc_handler+0x1cc>
     e3c:	00001537          	lui	a0,0x1
     e40:	48c50513          	addi	a0,a0,1164 # 148c <symbols.0+0x234>
     e44:	fd5ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     e48:	00001537          	lui	a0,0x1
     e4c:	35850513          	addi	a0,a0,856 # 1358 <symbols.0+0x100>
     e50:	fc9ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     e54:	00001537          	lui	a0,0x1
     e58:	36c50513          	addi	a0,a0,876 # 136c <symbols.0+0x114>
     e5c:	fbdff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     e60:	00001537          	lui	a0,0x1
     e64:	37850513          	addi	a0,a0,888 # 1378 <symbols.0+0x120>
     e68:	fb1ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     e6c:	00001537          	lui	a0,0x1
     e70:	39050513          	addi	a0,a0,912 # 1390 <symbols.0+0x138>
     e74:	fb5ff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x128>
     e78:	00001537          	lui	a0,0x1
     e7c:	3a450513          	addi	a0,a0,932 # 13a4 <symbols.0+0x14c>
     e80:	f99ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     e84:	00001537          	lui	a0,0x1
     e88:	3c050513          	addi	a0,a0,960 # 13c0 <symbols.0+0x168>
     e8c:	f9dff06f          	j	e28 <__neorv32_rte_debug_exc_handler+0x128>
     e90:	00001537          	lui	a0,0x1
     e94:	3d450513          	addi	a0,a0,980 # 13d4 <symbols.0+0x17c>
     e98:	f81ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     e9c:	00001537          	lui	a0,0x1
     ea0:	3f450513          	addi	a0,a0,1012 # 13f4 <symbols.0+0x19c>
     ea4:	f75ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     ea8:	00001537          	lui	a0,0x1
     eac:	41450513          	addi	a0,a0,1044 # 1414 <symbols.0+0x1bc>
     eb0:	f69ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     eb4:	00001537          	lui	a0,0x1
     eb8:	43050513          	addi	a0,a0,1072 # 1430 <symbols.0+0x1d8>
     ebc:	f5dff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     ec0:	00001537          	lui	a0,0x1
     ec4:	44850513          	addi	a0,a0,1096 # 1448 <symbols.0+0x1f0>
     ec8:	f51ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     ecc:	00001537          	lui	a0,0x1
     ed0:	49c50513          	addi	a0,a0,1180 # 149c <symbols.0+0x244>
     ed4:	f45ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     ed8:	00001537          	lui	a0,0x1
     edc:	4ac50513          	addi	a0,a0,1196 # 14ac <symbols.0+0x254>
     ee0:	f39ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x118>
     ee4:	00c12083          	lw	ra,12(sp)
     ee8:	00812403          	lw	s0,8(sp)
     eec:	00412483          	lw	s1,4(sp)
     ef0:	01010113          	addi	sp,sp,16
     ef4:	00008067          	ret

00000ef8 <neorv32_rte_exception_uninstall>:
     ef8:	01f00793          	li	a5,31
     efc:	02a7e263          	bltu	a5,a0,f20 <neorv32_rte_exception_uninstall+0x28>
     f00:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
     f04:	00251513          	slli	a0,a0,0x2
     f08:	00a78533          	add	a0,a5,a0
     f0c:	000017b7          	lui	a5,0x1
     f10:	d0078793          	addi	a5,a5,-768 # d00 <__neorv32_rte_debug_exc_handler>
     f14:	00f52023          	sw	a5,0(a0)
     f18:	00000513          	li	a0,0
     f1c:	00008067          	ret
     f20:	00100513          	li	a0,1
     f24:	00008067          	ret

00000f28 <neorv32_rte_setup>:
     f28:	ff010113          	addi	sp,sp,-16
     f2c:	000017b7          	lui	a5,0x1
     f30:	00112623          	sw	ra,12(sp)
     f34:	00812423          	sw	s0,8(sp)
     f38:	00912223          	sw	s1,4(sp)
     f3c:	a9078793          	addi	a5,a5,-1392 # a90 <__neorv32_rte_core>
     f40:	30579073          	csrw	mtvec,a5
     f44:	00000413          	li	s0,0
     f48:	01d00493          	li	s1,29
     f4c:	00040513          	mv	a0,s0
     f50:	00140413          	addi	s0,s0,1
     f54:	0ff47413          	andi	s0,s0,255
     f58:	fa1ff0ef          	jal	ra,ef8 <neorv32_rte_exception_uninstall>
     f5c:	fe9418e3          	bne	s0,s1,f4c <neorv32_rte_setup+0x24>
     f60:	00c12083          	lw	ra,12(sp)
     f64:	00812403          	lw	s0,8(sp)
     f68:	00412483          	lw	s1,4(sp)
     f6c:	01010113          	addi	sp,sp,16
     f70:	00008067          	ret

00000f74 <__divsi3>:
     f74:	06054063          	bltz	a0,fd4 <__umodsi3+0x10>
     f78:	0605c663          	bltz	a1,fe4 <__umodsi3+0x20>

00000f7c <__udivsi3>:
     f7c:	00058613          	mv	a2,a1
     f80:	00050593          	mv	a1,a0
     f84:	fff00513          	li	a0,-1
     f88:	02060c63          	beqz	a2,fc0 <__udivsi3+0x44>
     f8c:	00100693          	li	a3,1
     f90:	00b67a63          	bgeu	a2,a1,fa4 <__udivsi3+0x28>
     f94:	00c05863          	blez	a2,fa4 <__udivsi3+0x28>
     f98:	00161613          	slli	a2,a2,0x1
     f9c:	00169693          	slli	a3,a3,0x1
     fa0:	feb66ae3          	bltu	a2,a1,f94 <__udivsi3+0x18>
     fa4:	00000513          	li	a0,0
     fa8:	00c5e663          	bltu	a1,a2,fb4 <__udivsi3+0x38>
     fac:	40c585b3          	sub	a1,a1,a2
     fb0:	00d56533          	or	a0,a0,a3
     fb4:	0016d693          	srli	a3,a3,0x1
     fb8:	00165613          	srli	a2,a2,0x1
     fbc:	fe0696e3          	bnez	a3,fa8 <__udivsi3+0x2c>
     fc0:	00008067          	ret

00000fc4 <__umodsi3>:
     fc4:	00008293          	mv	t0,ra
     fc8:	fb5ff0ef          	jal	ra,f7c <__udivsi3>
     fcc:	00058513          	mv	a0,a1
     fd0:	00028067          	jr	t0
     fd4:	40a00533          	neg	a0,a0
     fd8:	00b04863          	bgtz	a1,fe8 <__umodsi3+0x24>
     fdc:	40b005b3          	neg	a1,a1
     fe0:	f9dff06f          	j	f7c <__udivsi3>
     fe4:	40b005b3          	neg	a1,a1
     fe8:	00008293          	mv	t0,ra
     fec:	f91ff0ef          	jal	ra,f7c <__udivsi3>
     ff0:	40a00533          	neg	a0,a0
     ff4:	00028067          	jr	t0

00000ff8 <__modsi3>:
     ff8:	00008293          	mv	t0,ra
     ffc:	0005ca63          	bltz	a1,1010 <__modsi3+0x18>
    1000:	00054c63          	bltz	a0,1018 <__modsi3+0x20>
    1004:	f79ff0ef          	jal	ra,f7c <__udivsi3>
    1008:	00058513          	mv	a0,a1
    100c:	00028067          	jr	t0
    1010:	40b005b3          	neg	a1,a1
    1014:	fe0558e3          	bgez	a0,1004 <__modsi3+0xc>
    1018:	40a00533          	neg	a0,a0
    101c:	f61ff0ef          	jal	ra,f7c <__udivsi3>
    1020:	40b00533          	neg	a0,a1
    1024:	00028067          	jr	t0
