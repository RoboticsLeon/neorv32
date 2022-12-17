
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
      e0:	46c58593          	addi	a1,a1,1132 # 1548 <__crt0_copy_data_src_begin>
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
     190:	b0050513          	addi	a0,a0,-1280 # 4b00 <__crt0_copy_data_src_begin+0x35b8>
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
     1c8:	5ec000ef          	jal	ra,7b4 <neorv32_uart0_setup>
     1cc:	09d000ef          	jal	ra,a68 <neorv32_gpio_available>
     1d0:	26050463          	beqz	a0,438 <main+0x2b8>
     1d4:	545000ef          	jal	ra,f18 <neorv32_rte_setup>
     1d8:	00001537          	lui	a0,0x1
     1dc:	0f450513          	addi	a0,a0,244 # 10f4 <__etext+0xb8>
     1e0:	698000ef          	jal	ra,878 <neorv32_uart0_print>
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
     214:	26878793          	addi	a5,a5,616 # 1268 <__etext+0x22c>
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
     24c:	ffc78793          	addi	a5,a5,-4 # fffc <__crt0_copy_data_src_begin+0xeab4>
     250:	00040413          	mv	s0,s0
     254:	00f71e63          	bne	a4,a5,270 <main+0xf0>
     258:	00001537          	lui	a0,0x1
     25c:	12450513          	addi	a0,a0,292 # 1124 <__etext+0xe8>
     260:	618000ef          	jal	ra,878 <neorv32_uart0_print>
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
     2b8:	14850513          	addi	a0,a0,328 # 1148 <__etext+0x10c>
     2bc:	5bc000ef          	jal	ra,878 <neorv32_uart0_print>
     2c0:	00000793          	li	a5,0
     2c4:	00fa2023          	sw	a5,0(s4)
     2c8:	00148493          	addi	s1,s1,1
     2cc:	0ff4f493          	andi	s1,s1,255
     2d0:	01000793          	li	a5,16
     2d4:	001b1b13          	slli	s6,s6,0x1
     2d8:	faf496e3          	bne	s1,a5,284 <main+0x104>
     2dc:	f89ff06f          	j	264 <main+0xe4>
     2e0:	00001537          	lui	a0,0x1
     2e4:	15450513          	addi	a0,a0,340 # 1154 <__etext+0x118>
     2e8:	590000ef          	jal	ra,878 <neorv32_uart0_print>
     2ec:	00100793          	li	a5,1
     2f0:	fd5ff06f          	j	2c4 <main+0x144>
     2f4:	00001537          	lui	a0,0x1
     2f8:	16050513          	addi	a0,a0,352 # 1160 <__etext+0x124>
     2fc:	57c000ef          	jal	ra,878 <neorv32_uart0_print>
     300:	00200793          	li	a5,2
     304:	fc1ff06f          	j	2c4 <main+0x144>
     308:	00001537          	lui	a0,0x1
     30c:	17850513          	addi	a0,a0,376 # 1178 <__etext+0x13c>
     310:	568000ef          	jal	ra,878 <neorv32_uart0_print>
     314:	00042783          	lw	a5,0(s0)
     318:	00100513          	li	a0,1
     31c:	00faa023          	sw	a5,0(s5)
     320:	164000ef          	jal	ra,484 <cambia_operando>
     324:	00050593          	mv	a1,a0
     328:	00a92023          	sw	a0,0(s2)
     32c:	800107b7          	lui	a5,0x80010
     330:	00a7a023          	sw	a0,0(a5) # 80010000 <__ctr0_io_space_begin+0x80010200>
     334:	00001537          	lui	a0,0x1
     338:	19450513          	addi	a0,a0,404 # 1194 <__etext+0x158>
     33c:	594000ef          	jal	ra,8d0 <neorv32_uart0_printf>
     340:	ee9ff06f          	j	228 <main+0xa8>
     344:	00001537          	lui	a0,0x1
     348:	1a450513          	addi	a0,a0,420 # 11a4 <__etext+0x168>
     34c:	52c000ef          	jal	ra,878 <neorv32_uart0_print>
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
     378:	1c050513          	addi	a0,a0,448 # 11c0 <__etext+0x184>
     37c:	fc1ff06f          	j	33c <main+0x1bc>
     380:	000017b7          	lui	a5,0x1
     384:	1d078513          	addi	a0,a5,464 # 11d0 <__etext+0x194>
     388:	4f0000ef          	jal	ra,878 <neorv32_uart0_print>
     38c:	000a2d03          	lw	s10,0(s4)
     390:	00cc8b93          	addi	s7,s9,12
     394:	000bab83          	lw	s7,0(s7)
     398:	00092583          	lw	a1,0(s2)
     39c:	0605d063          	bgez	a1,3fc <main+0x27c>
     3a0:	00001537          	lui	a0,0x1
     3a4:	1dc50513          	addi	a0,a0,476 # 11dc <__etext+0x1a0>
     3a8:	528000ef          	jal	ra,8d0 <neorv32_uart0_printf>
     3ac:	00100713          	li	a4,1
     3b0:	04ed0c63          	beq	s10,a4,408 <main+0x288>
     3b4:	00200713          	li	a4,2
     3b8:	04ed0e63          	beq	s10,a4,414 <main+0x294>
     3bc:	000d1863          	bnez	s10,3cc <main+0x24c>
     3c0:	00001537          	lui	a0,0x1
     3c4:	1e850513          	addi	a0,a0,488 # 11e8 <__etext+0x1ac>
     3c8:	4b0000ef          	jal	ra,878 <neorv32_uart0_print>
     3cc:	0009a583          	lw	a1,0(s3)
     3d0:	0405d863          	bgez	a1,420 <main+0x2a0>
     3d4:	00001537          	lui	a0,0x1
     3d8:	1f450513          	addi	a0,a0,500 # 11f4 <__etext+0x1b8>
     3dc:	4f4000ef          	jal	ra,8d0 <neorv32_uart0_printf>
     3e0:	000017b7          	lui	a5,0x1
     3e4:	20478513          	addi	a0,a5,516 # 1204 <__etext+0x1c8>
     3e8:	000b8593          	mv	a1,s7
     3ec:	4e4000ef          	jal	ra,8d0 <neorv32_uart0_printf>
     3f0:	20cd8513          	addi	a0,s11,524 # 120c <__etext+0x1d0>
     3f4:	484000ef          	jal	ra,878 <neorv32_uart0_print>
     3f8:	ed1ff06f          	j	2c8 <main+0x148>
     3fc:	00001537          	lui	a0,0x1
     400:	1e450513          	addi	a0,a0,484 # 11e4 <__etext+0x1a8>
     404:	fa5ff06f          	j	3a8 <main+0x228>
     408:	00001537          	lui	a0,0x1
     40c:	1ec50513          	addi	a0,a0,492 # 11ec <__etext+0x1b0>
     410:	fb9ff06f          	j	3c8 <main+0x248>
     414:	00001537          	lui	a0,0x1
     418:	1f050513          	addi	a0,a0,496 # 11f0 <__etext+0x1b4>
     41c:	fadff06f          	j	3c8 <main+0x248>
     420:	00001537          	lui	a0,0x1
     424:	1fc50513          	addi	a0,a0,508 # 11fc <__etext+0x1c0>
     428:	fb5ff06f          	j	3dc <main+0x25c>
     42c:	000017b7          	lui	a5,0x1
     430:	23c78513          	addi	a0,a5,572 # 123c <__etext+0x200>
     434:	fc1ff06f          	j	3f4 <main+0x274>
     438:	00001537          	lui	a0,0x1
     43c:	0d050513          	addi	a0,a0,208 # 10d0 <__etext+0x94>
     440:	438000ef          	jal	ra,878 <neorv32_uart0_print>
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
     48c:	03212823          	sw	s2,48(sp)
     490:	03512223          	sw	s5,36(sp)
     494:	01812c23          	sw	s8,24(sp)
     498:	01912a23          	sw	s9,20(sp)
     49c:	01a12823          	sw	s10,16(sp)
     4a0:	02112e23          	sw	ra,60(sp)
     4a4:	02912a23          	sw	s1,52(sp)
     4a8:	03312623          	sw	s3,44(sp)
     4ac:	03412423          	sw	s4,40(sp)
     4b0:	03612023          	sw	s6,32(sp)
     4b4:	01712e23          	sw	s7,28(sp)
     4b8:	01b12623          	sw	s11,12(sp)
     4bc:	00050913          	mv	s2,a0
     4c0:	00100a93          	li	s5,1
     4c4:	00100413          	li	s0,1
     4c8:	00000c13          	li	s8,0
     4cc:	00001cb7          	lui	s9,0x1
     4d0:	00001d37          	lui	s10,0x1
     4d4:	80000a37          	lui	s4,0x80000
     4d8:	80010737          	lui	a4,0x80010
     4dc:	004a2603          	lw	a2,4(s4) # 80000004 <__ctr0_io_space_begin+0x80000204>
     4e0:	01070713          	addi	a4,a4,16 # 80010010 <__ctr0_io_space_begin+0x80010210>
     4e4:	004a0a13          	addi	s4,s4,4
     4e8:	00072683          	lw	a3,0(a4)
     4ec:	fed60ee3          	beq	a2,a3,4e8 <cambia_operando+0x64>
     4f0:	800009b7          	lui	s3,0x80000
     4f4:	00d9a023          	sw	a3,0(s3) # 80000000 <__ctr0_io_space_begin+0x80000200>
     4f8:	00000493          	li	s1,0
     4fc:	00100b13          	li	s6,1
     500:	00098993          	mv	s3,s3
     504:	00100b93          	li	s7,1
     508:	00001db7          	lui	s11,0x1
     50c:	0009a703          	lw	a4,0(s3)
     510:	01677733          	and	a4,a4,s6
     514:	04071863          	bnez	a4,564 <cambia_operando+0xe0>
     518:	00900793          	li	a5,9
     51c:	0ff4f713          	andi	a4,s1,255
     520:	0697e063          	bltu	a5,s1,580 <cambia_operando+0xfc>
     524:	002c1713          	slli	a4,s8,0x2
     528:	018707b3          	add	a5,a4,s8
     52c:	00179793          	slli	a5,a5,0x1
     530:	00978c33          	add	s8,a5,s1
     534:	1ff00713          	li	a4,511
     538:	01875863          	bge	a4,s8,548 <cambia_operando+0xc4>
     53c:	03cd8513          	addi	a0,s11,60 # 103c <__etext>
     540:	338000ef          	jal	ra,878 <neorv32_uart0_print>
     544:	00000c13          	li	s8,0
     548:	000c0593          	mv	a1,s8
     54c:	00040513          	mv	a0,s0
     550:	215000ef          	jal	ra,f64 <__mulsi3>
     554:	00050593          	mv	a1,a0
     558:	054d0513          	addi	a0,s10,84 # 1054 <__etext+0x18>
     55c:	374000ef          	jal	ra,8d0 <neorv32_uart0_printf>
     560:	00000a93          	li	s5,0
     564:	00148493          	addi	s1,s1,1
     568:	01000713          	li	a4,16
     56c:	001b1b13          	slli	s6,s6,0x1
     570:	f8e49ee3          	bne	s1,a4,50c <cambia_operando+0x88>
     574:	0009a703          	lw	a4,0(s3)
     578:	00ea2023          	sw	a4,0(s4)
     57c:	f59ff06f          	j	4d4 <cambia_operando+0x50>
     580:	00e00793          	li	a5,14
     584:	0af70c63          	beq	a4,a5,63c <cambia_operando+0x1b8>
     588:	00090863          	beqz	s2,598 <cambia_operando+0x114>
     58c:	00f00693          	li	a3,15
     590:	02d70863          	beq	a4,a3,5c0 <cambia_operando+0x13c>
     594:	0b791663          	bne	s2,s7,640 <cambia_operando+0x1bc>
     598:	00a00693          	li	a3,10
     59c:	0ad70663          	beq	a4,a3,648 <cambia_operando+0x1c4>
     5a0:	06cc8513          	addi	a0,s9,108 # 106c <__etext+0x30>
     5a4:	2d4000ef          	jal	ra,878 <neorv32_uart0_print>
     5a8:	fbdff06f          	j	564 <cambia_operando+0xe0>
     5ac:	000017b7          	lui	a5,0x1
     5b0:	0a478513          	addi	a0,a5,164 # 10a4 <__etext+0x68>
     5b4:	2c4000ef          	jal	ra,878 <neorv32_uart0_print>
     5b8:	00100413          	li	s0,1
     5bc:	fa9ff06f          	j	564 <cambia_operando+0xe0>
     5c0:	00001537          	lui	a0,0x1
     5c4:	00040593          	mv	a1,s0
     5c8:	0c850513          	addi	a0,a0,200 # 10c8 <__etext+0x8c>
     5cc:	304000ef          	jal	ra,8d0 <neorv32_uart0_printf>
     5d0:	0009a703          	lw	a4,0(s3)
     5d4:	00ea2023          	sw	a4,0(s4)
     5d8:	000a8863          	beqz	s5,5e8 <cambia_operando+0x164>
     5dc:	05591a63          	bne	s2,s5,630 <cambia_operando+0x1ac>
     5e0:	800007b7          	lui	a5,0x80000
     5e4:	0087ac03          	lw	s8,8(a5) # 80000008 <__ctr0_io_space_begin+0x80000208>
     5e8:	000c0593          	mv	a1,s8
     5ec:	00040513          	mv	a0,s0
     5f0:	175000ef          	jal	ra,f64 <__mulsi3>
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
     620:	01012d03          	lw	s10,16(sp)
     624:	00c12d83          	lw	s11,12(sp)
     628:	04010113          	addi	sp,sp,64
     62c:	00008067          	ret
     630:	800007b7          	lui	a5,0x80000
     634:	00c7ac03          	lw	s8,12(a5) # 8000000c <__ctr0_io_space_begin+0x8000020c>
     638:	fb1ff06f          	j	5e8 <cambia_operando+0x164>
     63c:	f77902e3          	beq	s2,s7,5a0 <cambia_operando+0x11c>
     640:	00a00693          	li	a3,10
     644:	f6d71ee3          	bne	a4,a3,5c0 <cambia_operando+0x13c>
     648:	f77412e3          	bne	s0,s7,5ac <cambia_operando+0x128>
     64c:	000017b7          	lui	a5,0x1
     650:	08078513          	addi	a0,a5,128 # 1080 <__etext+0x44>
     654:	224000ef          	jal	ra,878 <neorv32_uart0_print>
     658:	fff00413          	li	s0,-1
     65c:	f09ff06f          	j	564 <cambia_operando+0xe0>

00000660 <__neorv32_uart_itoa>:
     660:	fd010113          	addi	sp,sp,-48
     664:	02812423          	sw	s0,40(sp)
     668:	02912223          	sw	s1,36(sp)
     66c:	03212023          	sw	s2,32(sp)
     670:	01312e23          	sw	s3,28(sp)
     674:	01412c23          	sw	s4,24(sp)
     678:	02112623          	sw	ra,44(sp)
     67c:	01512a23          	sw	s5,20(sp)
     680:	00001a37          	lui	s4,0x1
     684:	00050493          	mv	s1,a0
     688:	00058413          	mv	s0,a1
     68c:	00058523          	sb	zero,10(a1)
     690:	00000993          	li	s3,0
     694:	00410913          	addi	s2,sp,4
     698:	280a0a13          	addi	s4,s4,640 # 1280 <numbers.1>
     69c:	00a00593          	li	a1,10
     6a0:	00048513          	mv	a0,s1
     6a4:	135000ef          	jal	ra,fd8 <__umodsi3>
     6a8:	00aa0533          	add	a0,s4,a0
     6ac:	00054783          	lbu	a5,0(a0)
     6b0:	01390ab3          	add	s5,s2,s3
     6b4:	00048513          	mv	a0,s1
     6b8:	00fa8023          	sb	a5,0(s5)
     6bc:	00a00593          	li	a1,10
     6c0:	0d1000ef          	jal	ra,f90 <__udivsi3>
     6c4:	00198993          	addi	s3,s3,1
     6c8:	00a00793          	li	a5,10
     6cc:	00050493          	mv	s1,a0
     6d0:	fcf996e3          	bne	s3,a5,69c <__neorv32_uart_itoa+0x3c>
     6d4:	00090693          	mv	a3,s2
     6d8:	00900713          	li	a4,9
     6dc:	03000613          	li	a2,48
     6e0:	0096c583          	lbu	a1,9(a3)
     6e4:	00070793          	mv	a5,a4
     6e8:	fff70713          	addi	a4,a4,-1
     6ec:	01071713          	slli	a4,a4,0x10
     6f0:	01075713          	srli	a4,a4,0x10
     6f4:	00c59a63          	bne	a1,a2,708 <__neorv32_uart_itoa+0xa8>
     6f8:	000684a3          	sb	zero,9(a3)
     6fc:	fff68693          	addi	a3,a3,-1
     700:	fe0710e3          	bnez	a4,6e0 <__neorv32_uart_itoa+0x80>
     704:	00000793          	li	a5,0
     708:	00f907b3          	add	a5,s2,a5
     70c:	00000593          	li	a1,0
     710:	0007c703          	lbu	a4,0(a5)
     714:	00070c63          	beqz	a4,72c <__neorv32_uart_itoa+0xcc>
     718:	00158693          	addi	a3,a1,1
     71c:	00b405b3          	add	a1,s0,a1
     720:	00e58023          	sb	a4,0(a1)
     724:	01069593          	slli	a1,a3,0x10
     728:	0105d593          	srli	a1,a1,0x10
     72c:	fff78713          	addi	a4,a5,-1
     730:	02f91863          	bne	s2,a5,760 <__neorv32_uart_itoa+0x100>
     734:	00b40433          	add	s0,s0,a1
     738:	00040023          	sb	zero,0(s0)
     73c:	02c12083          	lw	ra,44(sp)
     740:	02812403          	lw	s0,40(sp)
     744:	02412483          	lw	s1,36(sp)
     748:	02012903          	lw	s2,32(sp)
     74c:	01c12983          	lw	s3,28(sp)
     750:	01812a03          	lw	s4,24(sp)
     754:	01412a83          	lw	s5,20(sp)
     758:	03010113          	addi	sp,sp,48
     75c:	00008067          	ret
     760:	00070793          	mv	a5,a4
     764:	fadff06f          	j	710 <__neorv32_uart_itoa+0xb0>

00000768 <__neorv32_uart_tohex>:
     768:	00001637          	lui	a2,0x1
     76c:	00758693          	addi	a3,a1,7
     770:	00000713          	li	a4,0
     774:	28c60613          	addi	a2,a2,652 # 128c <symbols.0>
     778:	02000813          	li	a6,32
     77c:	00e557b3          	srl	a5,a0,a4
     780:	00f7f793          	andi	a5,a5,15
     784:	00f607b3          	add	a5,a2,a5
     788:	0007c783          	lbu	a5,0(a5)
     78c:	00470713          	addi	a4,a4,4
     790:	fff68693          	addi	a3,a3,-1
     794:	00f680a3          	sb	a5,1(a3)
     798:	ff0712e3          	bne	a4,a6,77c <__neorv32_uart_tohex+0x14>
     79c:	00058423          	sb	zero,8(a1)
     7a0:	00008067          	ret

000007a4 <neorv32_uart0_available>:
     7a4:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     7a8:	01255513          	srli	a0,a0,0x12
     7ac:	00157513          	andi	a0,a0,1
     7b0:	00008067          	ret

000007b4 <neorv32_uart0_setup>:
     7b4:	ff010113          	addi	sp,sp,-16
     7b8:	00812423          	sw	s0,8(sp)
     7bc:	00912223          	sw	s1,4(sp)
     7c0:	00112623          	sw	ra,12(sp)
     7c4:	fa002023          	sw	zero,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     7c8:	fe002783          	lw	a5,-32(zero) # ffffffe0 <__ctr0_io_space_begin+0x1e0>
     7cc:	00058413          	mv	s0,a1
     7d0:	00151593          	slli	a1,a0,0x1
     7d4:	00078513          	mv	a0,a5
     7d8:	00060493          	mv	s1,a2
     7dc:	7b4000ef          	jal	ra,f90 <__udivsi3>
     7e0:	01051513          	slli	a0,a0,0x10
     7e4:	000017b7          	lui	a5,0x1
     7e8:	01055513          	srli	a0,a0,0x10
     7ec:	00000713          	li	a4,0
     7f0:	ffe78793          	addi	a5,a5,-2 # ffe <__umodsi3+0x26>
     7f4:	04a7e463          	bltu	a5,a0,83c <neorv32_uart0_setup+0x88>
     7f8:	0034f793          	andi	a5,s1,3
     7fc:	00347413          	andi	s0,s0,3
     800:	fff50513          	addi	a0,a0,-1
     804:	01479793          	slli	a5,a5,0x14
     808:	01641413          	slli	s0,s0,0x16
     80c:	00f567b3          	or	a5,a0,a5
     810:	0087e7b3          	or	a5,a5,s0
     814:	01871713          	slli	a4,a4,0x18
     818:	00c12083          	lw	ra,12(sp)
     81c:	00812403          	lw	s0,8(sp)
     820:	00e7e7b3          	or	a5,a5,a4
     824:	10000737          	lui	a4,0x10000
     828:	00e7e7b3          	or	a5,a5,a4
     82c:	faf02023          	sw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     830:	00412483          	lw	s1,4(sp)
     834:	01010113          	addi	sp,sp,16
     838:	00008067          	ret
     83c:	ffe70693          	addi	a3,a4,-2 # ffffffe <__crt0_copy_data_src_begin+0xfffeab6>
     840:	0fd6f693          	andi	a3,a3,253
     844:	00069a63          	bnez	a3,858 <neorv32_uart0_setup+0xa4>
     848:	00355513          	srli	a0,a0,0x3
     84c:	00170713          	addi	a4,a4,1
     850:	0ff77713          	andi	a4,a4,255
     854:	fa1ff06f          	j	7f4 <neorv32_uart0_setup+0x40>
     858:	00155513          	srli	a0,a0,0x1
     85c:	ff1ff06f          	j	84c <neorv32_uart0_setup+0x98>

00000860 <neorv32_uart0_putc>:
     860:	00040737          	lui	a4,0x40
     864:	fa002783          	lw	a5,-96(zero) # ffffffa0 <__ctr0_io_space_begin+0x1a0>
     868:	00e7f7b3          	and	a5,a5,a4
     86c:	fe079ce3          	bnez	a5,864 <neorv32_uart0_putc+0x4>
     870:	faa02223          	sw	a0,-92(zero) # ffffffa4 <__ctr0_io_space_begin+0x1a4>
     874:	00008067          	ret

00000878 <neorv32_uart0_print>:
     878:	ff010113          	addi	sp,sp,-16
     87c:	00812423          	sw	s0,8(sp)
     880:	01212023          	sw	s2,0(sp)
     884:	00112623          	sw	ra,12(sp)
     888:	00912223          	sw	s1,4(sp)
     88c:	00050413          	mv	s0,a0
     890:	00a00913          	li	s2,10
     894:	00044483          	lbu	s1,0(s0)
     898:	00140413          	addi	s0,s0,1
     89c:	00049e63          	bnez	s1,8b8 <neorv32_uart0_print+0x40>
     8a0:	00c12083          	lw	ra,12(sp)
     8a4:	00812403          	lw	s0,8(sp)
     8a8:	00412483          	lw	s1,4(sp)
     8ac:	00012903          	lw	s2,0(sp)
     8b0:	01010113          	addi	sp,sp,16
     8b4:	00008067          	ret
     8b8:	01249663          	bne	s1,s2,8c4 <neorv32_uart0_print+0x4c>
     8bc:	00d00513          	li	a0,13
     8c0:	fa1ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     8c4:	00048513          	mv	a0,s1
     8c8:	f99ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     8cc:	fc9ff06f          	j	894 <neorv32_uart0_print+0x1c>

000008d0 <neorv32_uart0_printf>:
     8d0:	fa010113          	addi	sp,sp,-96
     8d4:	04f12a23          	sw	a5,84(sp)
     8d8:	04410793          	addi	a5,sp,68
     8dc:	02812c23          	sw	s0,56(sp)
     8e0:	03212823          	sw	s2,48(sp)
     8e4:	03412423          	sw	s4,40(sp)
     8e8:	03512223          	sw	s5,36(sp)
     8ec:	03612023          	sw	s6,32(sp)
     8f0:	01712e23          	sw	s7,28(sp)
     8f4:	01812c23          	sw	s8,24(sp)
     8f8:	01912a23          	sw	s9,20(sp)
     8fc:	02112e23          	sw	ra,60(sp)
     900:	02912a23          	sw	s1,52(sp)
     904:	03312623          	sw	s3,44(sp)
     908:	00050413          	mv	s0,a0
     90c:	04b12223          	sw	a1,68(sp)
     910:	04c12423          	sw	a2,72(sp)
     914:	04d12623          	sw	a3,76(sp)
     918:	04e12823          	sw	a4,80(sp)
     91c:	05012c23          	sw	a6,88(sp)
     920:	05112e23          	sw	a7,92(sp)
     924:	00f12023          	sw	a5,0(sp)
     928:	02500a13          	li	s4,37
     92c:	00a00a93          	li	s5,10
     930:	07300913          	li	s2,115
     934:	07500b13          	li	s6,117
     938:	07800b93          	li	s7,120
     93c:	06300c13          	li	s8,99
     940:	06900c93          	li	s9,105
     944:	00044483          	lbu	s1,0(s0)
     948:	02049c63          	bnez	s1,980 <neorv32_uart0_printf+0xb0>
     94c:	03c12083          	lw	ra,60(sp)
     950:	03812403          	lw	s0,56(sp)
     954:	03412483          	lw	s1,52(sp)
     958:	03012903          	lw	s2,48(sp)
     95c:	02c12983          	lw	s3,44(sp)
     960:	02812a03          	lw	s4,40(sp)
     964:	02412a83          	lw	s5,36(sp)
     968:	02012b03          	lw	s6,32(sp)
     96c:	01c12b83          	lw	s7,28(sp)
     970:	01812c03          	lw	s8,24(sp)
     974:	01412c83          	lw	s9,20(sp)
     978:	06010113          	addi	sp,sp,96
     97c:	00008067          	ret
     980:	0d449863          	bne	s1,s4,a50 <neorv32_uart0_printf+0x180>
     984:	00240993          	addi	s3,s0,2
     988:	00144403          	lbu	s0,1(s0)
     98c:	05240263          	beq	s0,s2,9d0 <neorv32_uart0_printf+0x100>
     990:	00896e63          	bltu	s2,s0,9ac <neorv32_uart0_printf+0xdc>
     994:	05840c63          	beq	s0,s8,9ec <neorv32_uart0_printf+0x11c>
     998:	07940663          	beq	s0,s9,a04 <neorv32_uart0_printf+0x134>
     99c:	02500513          	li	a0,37
     9a0:	ec1ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     9a4:	00040513          	mv	a0,s0
     9a8:	0540006f          	j	9fc <neorv32_uart0_printf+0x12c>
     9ac:	09640663          	beq	s0,s6,a38 <neorv32_uart0_printf+0x168>
     9b0:	ff7416e3          	bne	s0,s7,99c <neorv32_uart0_printf+0xcc>
     9b4:	00012783          	lw	a5,0(sp)
     9b8:	00410593          	addi	a1,sp,4
     9bc:	0007a503          	lw	a0,0(a5)
     9c0:	00478713          	addi	a4,a5,4
     9c4:	00e12023          	sw	a4,0(sp)
     9c8:	da1ff0ef          	jal	ra,768 <__neorv32_uart_tohex>
     9cc:	0640006f          	j	a30 <neorv32_uart0_printf+0x160>
     9d0:	00012783          	lw	a5,0(sp)
     9d4:	0007a503          	lw	a0,0(a5)
     9d8:	00478713          	addi	a4,a5,4
     9dc:	00e12023          	sw	a4,0(sp)
     9e0:	e99ff0ef          	jal	ra,878 <neorv32_uart0_print>
     9e4:	00098413          	mv	s0,s3
     9e8:	f5dff06f          	j	944 <neorv32_uart0_printf+0x74>
     9ec:	00012783          	lw	a5,0(sp)
     9f0:	0007c503          	lbu	a0,0(a5)
     9f4:	00478713          	addi	a4,a5,4
     9f8:	00e12023          	sw	a4,0(sp)
     9fc:	e65ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     a00:	fe5ff06f          	j	9e4 <neorv32_uart0_printf+0x114>
     a04:	00012783          	lw	a5,0(sp)
     a08:	0007a403          	lw	s0,0(a5)
     a0c:	00478713          	addi	a4,a5,4
     a10:	00e12023          	sw	a4,0(sp)
     a14:	00045863          	bgez	s0,a24 <neorv32_uart0_printf+0x154>
     a18:	02d00513          	li	a0,45
     a1c:	40800433          	neg	s0,s0
     a20:	e41ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     a24:	00410593          	addi	a1,sp,4
     a28:	00040513          	mv	a0,s0
     a2c:	c35ff0ef          	jal	ra,660 <__neorv32_uart_itoa>
     a30:	00410513          	addi	a0,sp,4
     a34:	fadff06f          	j	9e0 <neorv32_uart0_printf+0x110>
     a38:	00012783          	lw	a5,0(sp)
     a3c:	00410593          	addi	a1,sp,4
     a40:	00478713          	addi	a4,a5,4
     a44:	0007a503          	lw	a0,0(a5)
     a48:	00e12023          	sw	a4,0(sp)
     a4c:	fe1ff06f          	j	a2c <neorv32_uart0_printf+0x15c>
     a50:	01549663          	bne	s1,s5,a5c <neorv32_uart0_printf+0x18c>
     a54:	00d00513          	li	a0,13
     a58:	e09ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     a5c:	00140993          	addi	s3,s0,1
     a60:	00048513          	mv	a0,s1
     a64:	f99ff06f          	j	9fc <neorv32_uart0_printf+0x12c>

00000a68 <neorv32_gpio_available>:
     a68:	fe802503          	lw	a0,-24(zero) # ffffffe8 <__ctr0_io_space_begin+0x1e8>
     a6c:	01055513          	srli	a0,a0,0x10
     a70:	00157513          	andi	a0,a0,1
     a74:	00008067          	ret
     a78:	0000                	unimp
     a7a:	0000                	unimp
     a7c:	0000                	unimp
     a7e:	0000                	unimp

00000a80 <__neorv32_rte_core>:
     a80:	fc010113          	addi	sp,sp,-64
     a84:	02112e23          	sw	ra,60(sp)
     a88:	02512c23          	sw	t0,56(sp)
     a8c:	02612a23          	sw	t1,52(sp)
     a90:	02712823          	sw	t2,48(sp)
     a94:	02a12623          	sw	a0,44(sp)
     a98:	02b12423          	sw	a1,40(sp)
     a9c:	02c12223          	sw	a2,36(sp)
     aa0:	02d12023          	sw	a3,32(sp)
     aa4:	00e12e23          	sw	a4,28(sp)
     aa8:	00f12c23          	sw	a5,24(sp)
     aac:	01012a23          	sw	a6,20(sp)
     ab0:	01112823          	sw	a7,16(sp)
     ab4:	01c12623          	sw	t3,12(sp)
     ab8:	01d12423          	sw	t4,8(sp)
     abc:	01e12223          	sw	t5,4(sp)
     ac0:	01f12023          	sw	t6,0(sp)
     ac4:	34102773          	csrr	a4,mepc
     ac8:	34071073          	csrw	mscratch,a4
     acc:	342027f3          	csrr	a5,mcause
     ad0:	0807ca63          	bltz	a5,b64 <__neorv32_rte_core+0xe4>
     ad4:	00071683          	lh	a3,0(a4) # 40000 <__crt0_copy_data_src_begin+0x3eab8>
     ad8:	00300593          	li	a1,3
     adc:	0036f693          	andi	a3,a3,3
     ae0:	00270613          	addi	a2,a4,2
     ae4:	00b69463          	bne	a3,a1,aec <__neorv32_rte_core+0x6c>
     ae8:	00470613          	addi	a2,a4,4
     aec:	34161073          	csrw	mepc,a2
     af0:	00b00713          	li	a4,11
     af4:	04f77c63          	bgeu	a4,a5,b4c <__neorv32_rte_core+0xcc>
     af8:	000017b7          	lui	a5,0x1
     afc:	cf078793          	addi	a5,a5,-784 # cf0 <__neorv32_rte_debug_exc_handler>
     b00:	000780e7          	jalr	a5
     b04:	03c12083          	lw	ra,60(sp)
     b08:	03812283          	lw	t0,56(sp)
     b0c:	03412303          	lw	t1,52(sp)
     b10:	03012383          	lw	t2,48(sp)
     b14:	02c12503          	lw	a0,44(sp)
     b18:	02812583          	lw	a1,40(sp)
     b1c:	02412603          	lw	a2,36(sp)
     b20:	02012683          	lw	a3,32(sp)
     b24:	01c12703          	lw	a4,28(sp)
     b28:	01812783          	lw	a5,24(sp)
     b2c:	01412803          	lw	a6,20(sp)
     b30:	01012883          	lw	a7,16(sp)
     b34:	00c12e03          	lw	t3,12(sp)
     b38:	00812e83          	lw	t4,8(sp)
     b3c:	00412f03          	lw	t5,4(sp)
     b40:	00012f83          	lw	t6,0(sp)
     b44:	04010113          	addi	sp,sp,64
     b48:	30200073          	mret
     b4c:	00001737          	lui	a4,0x1
     b50:	00279793          	slli	a5,a5,0x2
     b54:	2a070713          	addi	a4,a4,672 # 12a0 <symbols.0+0x14>
     b58:	00e787b3          	add	a5,a5,a4
     b5c:	0007a783          	lw	a5,0(a5)
     b60:	00078067          	jr	a5
     b64:	80000737          	lui	a4,0x80000
     b68:	ffd74713          	xori	a4,a4,-3
     b6c:	00e787b3          	add	a5,a5,a4
     b70:	01c00713          	li	a4,28
     b74:	f8f762e3          	bltu	a4,a5,af8 <__neorv32_rte_core+0x78>
     b78:	00001737          	lui	a4,0x1
     b7c:	00279793          	slli	a5,a5,0x2
     b80:	2d070713          	addi	a4,a4,720 # 12d0 <symbols.0+0x44>
     b84:	00e787b3          	add	a5,a5,a4
     b88:	0007a783          	lw	a5,0(a5)
     b8c:	00078067          	jr	a5
     b90:	8101a783          	lw	a5,-2032(gp) # 80000010 <__neorv32_rte_vector_lut>
     b94:	f6dff06f          	j	b00 <__neorv32_rte_core+0x80>
     b98:	8141a783          	lw	a5,-2028(gp) # 80000014 <__neorv32_rte_vector_lut+0x4>
     b9c:	f65ff06f          	j	b00 <__neorv32_rte_core+0x80>
     ba0:	8181a783          	lw	a5,-2024(gp) # 80000018 <__neorv32_rte_vector_lut+0x8>
     ba4:	f5dff06f          	j	b00 <__neorv32_rte_core+0x80>
     ba8:	81c1a783          	lw	a5,-2020(gp) # 8000001c <__neorv32_rte_vector_lut+0xc>
     bac:	f55ff06f          	j	b00 <__neorv32_rte_core+0x80>
     bb0:	8201a783          	lw	a5,-2016(gp) # 80000020 <__neorv32_rte_vector_lut+0x10>
     bb4:	f4dff06f          	j	b00 <__neorv32_rte_core+0x80>
     bb8:	8241a783          	lw	a5,-2012(gp) # 80000024 <__neorv32_rte_vector_lut+0x14>
     bbc:	f45ff06f          	j	b00 <__neorv32_rte_core+0x80>
     bc0:	8281a783          	lw	a5,-2008(gp) # 80000028 <__neorv32_rte_vector_lut+0x18>
     bc4:	f3dff06f          	j	b00 <__neorv32_rte_core+0x80>
     bc8:	82c1a783          	lw	a5,-2004(gp) # 8000002c <__neorv32_rte_vector_lut+0x1c>
     bcc:	f35ff06f          	j	b00 <__neorv32_rte_core+0x80>
     bd0:	8301a783          	lw	a5,-2000(gp) # 80000030 <__neorv32_rte_vector_lut+0x20>
     bd4:	f2dff06f          	j	b00 <__neorv32_rte_core+0x80>
     bd8:	8341a783          	lw	a5,-1996(gp) # 80000034 <__neorv32_rte_vector_lut+0x24>
     bdc:	f25ff06f          	j	b00 <__neorv32_rte_core+0x80>
     be0:	8381a783          	lw	a5,-1992(gp) # 80000038 <__neorv32_rte_vector_lut+0x28>
     be4:	f1dff06f          	j	b00 <__neorv32_rte_core+0x80>
     be8:	83c1a783          	lw	a5,-1988(gp) # 8000003c <__neorv32_rte_vector_lut+0x2c>
     bec:	f15ff06f          	j	b00 <__neorv32_rte_core+0x80>
     bf0:	8401a783          	lw	a5,-1984(gp) # 80000040 <__neorv32_rte_vector_lut+0x30>
     bf4:	f0dff06f          	j	b00 <__neorv32_rte_core+0x80>
     bf8:	8441a783          	lw	a5,-1980(gp) # 80000044 <__neorv32_rte_vector_lut+0x34>
     bfc:	f05ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c00:	8481a783          	lw	a5,-1976(gp) # 80000048 <__neorv32_rte_vector_lut+0x38>
     c04:	efdff06f          	j	b00 <__neorv32_rte_core+0x80>
     c08:	84c1a783          	lw	a5,-1972(gp) # 8000004c <__neorv32_rte_vector_lut+0x3c>
     c0c:	ef5ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c10:	8501a783          	lw	a5,-1968(gp) # 80000050 <__neorv32_rte_vector_lut+0x40>
     c14:	eedff06f          	j	b00 <__neorv32_rte_core+0x80>
     c18:	8541a783          	lw	a5,-1964(gp) # 80000054 <__neorv32_rte_vector_lut+0x44>
     c1c:	ee5ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c20:	8581a783          	lw	a5,-1960(gp) # 80000058 <__neorv32_rte_vector_lut+0x48>
     c24:	eddff06f          	j	b00 <__neorv32_rte_core+0x80>
     c28:	85c1a783          	lw	a5,-1956(gp) # 8000005c <__neorv32_rte_vector_lut+0x4c>
     c2c:	ed5ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c30:	8601a783          	lw	a5,-1952(gp) # 80000060 <__neorv32_rte_vector_lut+0x50>
     c34:	ecdff06f          	j	b00 <__neorv32_rte_core+0x80>
     c38:	8641a783          	lw	a5,-1948(gp) # 80000064 <__neorv32_rte_vector_lut+0x54>
     c3c:	ec5ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c40:	8681a783          	lw	a5,-1944(gp) # 80000068 <__neorv32_rte_vector_lut+0x58>
     c44:	ebdff06f          	j	b00 <__neorv32_rte_core+0x80>
     c48:	86c1a783          	lw	a5,-1940(gp) # 8000006c <__neorv32_rte_vector_lut+0x5c>
     c4c:	eb5ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c50:	8701a783          	lw	a5,-1936(gp) # 80000070 <__neorv32_rte_vector_lut+0x60>
     c54:	eadff06f          	j	b00 <__neorv32_rte_core+0x80>
     c58:	8741a783          	lw	a5,-1932(gp) # 80000074 <__neorv32_rte_vector_lut+0x64>
     c5c:	ea5ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c60:	8781a783          	lw	a5,-1928(gp) # 80000078 <__neorv32_rte_vector_lut+0x68>
     c64:	e9dff06f          	j	b00 <__neorv32_rte_core+0x80>
     c68:	87c1a783          	lw	a5,-1924(gp) # 8000007c <__neorv32_rte_vector_lut+0x6c>
     c6c:	e95ff06f          	j	b00 <__neorv32_rte_core+0x80>
     c70:	8801a783          	lw	a5,-1920(gp) # 80000080 <__neorv32_rte_vector_lut+0x70>
     c74:	e8dff06f          	j	b00 <__neorv32_rte_core+0x80>
     c78:	0000                	unimp
     c7a:	0000                	unimp
     c7c:	0000                	unimp
     c7e:	0000                	unimp

00000c80 <__neorv32_rte_print_hex_word>:
     c80:	fe010113          	addi	sp,sp,-32
     c84:	01212823          	sw	s2,16(sp)
     c88:	00050913          	mv	s2,a0
     c8c:	00001537          	lui	a0,0x1
     c90:	00912a23          	sw	s1,20(sp)
     c94:	34450513          	addi	a0,a0,836 # 1344 <symbols.0+0xb8>
     c98:	000014b7          	lui	s1,0x1
     c9c:	00812c23          	sw	s0,24(sp)
     ca0:	01312623          	sw	s3,12(sp)
     ca4:	00112e23          	sw	ra,28(sp)
     ca8:	01c00413          	li	s0,28
     cac:	bcdff0ef          	jal	ra,878 <neorv32_uart0_print>
     cb0:	53848493          	addi	s1,s1,1336 # 1538 <hex_symbols.0>
     cb4:	ffc00993          	li	s3,-4
     cb8:	008957b3          	srl	a5,s2,s0
     cbc:	00f7f793          	andi	a5,a5,15
     cc0:	00f487b3          	add	a5,s1,a5
     cc4:	0007c503          	lbu	a0,0(a5)
     cc8:	ffc40413          	addi	s0,s0,-4
     ccc:	b95ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     cd0:	ff3414e3          	bne	s0,s3,cb8 <__neorv32_rte_print_hex_word+0x38>
     cd4:	01c12083          	lw	ra,28(sp)
     cd8:	01812403          	lw	s0,24(sp)
     cdc:	01412483          	lw	s1,20(sp)
     ce0:	01012903          	lw	s2,16(sp)
     ce4:	00c12983          	lw	s3,12(sp)
     ce8:	02010113          	addi	sp,sp,32
     cec:	00008067          	ret

00000cf0 <__neorv32_rte_debug_exc_handler>:
     cf0:	ff010113          	addi	sp,sp,-16
     cf4:	00112623          	sw	ra,12(sp)
     cf8:	00812423          	sw	s0,8(sp)
     cfc:	00912223          	sw	s1,4(sp)
     d00:	aa5ff0ef          	jal	ra,7a4 <neorv32_uart0_available>
     d04:	1c050863          	beqz	a0,ed4 <__neorv32_rte_debug_exc_handler+0x1e4>
     d08:	00001537          	lui	a0,0x1
     d0c:	34850513          	addi	a0,a0,840 # 1348 <symbols.0+0xbc>
     d10:	b69ff0ef          	jal	ra,878 <neorv32_uart0_print>
     d14:	34202473          	csrr	s0,mcause
     d18:	00900713          	li	a4,9
     d1c:	00f47793          	andi	a5,s0,15
     d20:	03078493          	addi	s1,a5,48
     d24:	00f77463          	bgeu	a4,a5,d2c <__neorv32_rte_debug_exc_handler+0x3c>
     d28:	05778493          	addi	s1,a5,87
     d2c:	00b00793          	li	a5,11
     d30:	0087ee63          	bltu	a5,s0,d4c <__neorv32_rte_debug_exc_handler+0x5c>
     d34:	00001737          	lui	a4,0x1
     d38:	00241793          	slli	a5,s0,0x2
     d3c:	50870713          	addi	a4,a4,1288 # 1508 <symbols.0+0x27c>
     d40:	00e787b3          	add	a5,a5,a4
     d44:	0007a783          	lw	a5,0(a5)
     d48:	00078067          	jr	a5
     d4c:	800007b7          	lui	a5,0x80000
     d50:	00b78713          	addi	a4,a5,11 # 8000000b <__ctr0_io_space_begin+0x8000020b>
     d54:	14e40e63          	beq	s0,a4,eb0 <__neorv32_rte_debug_exc_handler+0x1c0>
     d58:	02876a63          	bltu	a4,s0,d8c <__neorv32_rte_debug_exc_handler+0x9c>
     d5c:	00378713          	addi	a4,a5,3
     d60:	12e40c63          	beq	s0,a4,e98 <__neorv32_rte_debug_exc_handler+0x1a8>
     d64:	00778793          	addi	a5,a5,7
     d68:	12f40e63          	beq	s0,a5,ea4 <__neorv32_rte_debug_exc_handler+0x1b4>
     d6c:	00001537          	lui	a0,0x1
     d70:	4a850513          	addi	a0,a0,1192 # 14a8 <symbols.0+0x21c>
     d74:	b05ff0ef          	jal	ra,878 <neorv32_uart0_print>
     d78:	00040513          	mv	a0,s0
     d7c:	f05ff0ef          	jal	ra,c80 <__neorv32_rte_print_hex_word>
     d80:	00100793          	li	a5,1
     d84:	08f40c63          	beq	s0,a5,e1c <__neorv32_rte_debug_exc_handler+0x12c>
     d88:	0280006f          	j	db0 <__neorv32_rte_debug_exc_handler+0xc0>
     d8c:	ff07c793          	xori	a5,a5,-16
     d90:	00f407b3          	add	a5,s0,a5
     d94:	00f00713          	li	a4,15
     d98:	fcf76ae3          	bltu	a4,a5,d6c <__neorv32_rte_debug_exc_handler+0x7c>
     d9c:	00001537          	lui	a0,0x1
     da0:	49850513          	addi	a0,a0,1176 # 1498 <symbols.0+0x20c>
     da4:	ad5ff0ef          	jal	ra,878 <neorv32_uart0_print>
     da8:	00048513          	mv	a0,s1
     dac:	ab5ff0ef          	jal	ra,860 <neorv32_uart0_putc>
     db0:	ffd47413          	andi	s0,s0,-3
     db4:	00500793          	li	a5,5
     db8:	06f40263          	beq	s0,a5,e1c <__neorv32_rte_debug_exc_handler+0x12c>
     dbc:	00001537          	lui	a0,0x1
     dc0:	4ec50513          	addi	a0,a0,1260 # 14ec <symbols.0+0x260>
     dc4:	ab5ff0ef          	jal	ra,878 <neorv32_uart0_print>
     dc8:	34002573          	csrr	a0,mscratch
     dcc:	eb5ff0ef          	jal	ra,c80 <__neorv32_rte_print_hex_word>
     dd0:	00001537          	lui	a0,0x1
     dd4:	4f450513          	addi	a0,a0,1268 # 14f4 <symbols.0+0x268>
     dd8:	aa1ff0ef          	jal	ra,878 <neorv32_uart0_print>
     ddc:	34302573          	csrr	a0,mtval
     de0:	ea1ff0ef          	jal	ra,c80 <__neorv32_rte_print_hex_word>
     de4:	00812403          	lw	s0,8(sp)
     de8:	00c12083          	lw	ra,12(sp)
     dec:	00412483          	lw	s1,4(sp)
     df0:	00001537          	lui	a0,0x1
     df4:	50050513          	addi	a0,a0,1280 # 1500 <symbols.0+0x274>
     df8:	01010113          	addi	sp,sp,16
     dfc:	a7dff06f          	j	878 <neorv32_uart0_print>
     e00:	00001537          	lui	a0,0x1
     e04:	35050513          	addi	a0,a0,848 # 1350 <symbols.0+0xc4>
     e08:	a71ff0ef          	jal	ra,878 <neorv32_uart0_print>
     e0c:	fb1ff06f          	j	dbc <__neorv32_rte_debug_exc_handler+0xcc>
     e10:	00001537          	lui	a0,0x1
     e14:	37050513          	addi	a0,a0,880 # 1370 <symbols.0+0xe4>
     e18:	a61ff0ef          	jal	ra,878 <neorv32_uart0_print>
     e1c:	f7c02783          	lw	a5,-132(zero) # ffffff7c <__ctr0_io_space_begin+0x17c>
     e20:	0a07d463          	bgez	a5,ec8 <__neorv32_rte_debug_exc_handler+0x1d8>
     e24:	0017f793          	andi	a5,a5,1
     e28:	08078a63          	beqz	a5,ebc <__neorv32_rte_debug_exc_handler+0x1cc>
     e2c:	00001537          	lui	a0,0x1
     e30:	4c050513          	addi	a0,a0,1216 # 14c0 <symbols.0+0x234>
     e34:	fd5ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e38:	00001537          	lui	a0,0x1
     e3c:	38c50513          	addi	a0,a0,908 # 138c <symbols.0+0x100>
     e40:	fc9ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e44:	00001537          	lui	a0,0x1
     e48:	3a050513          	addi	a0,a0,928 # 13a0 <symbols.0+0x114>
     e4c:	fbdff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e50:	00001537          	lui	a0,0x1
     e54:	3ac50513          	addi	a0,a0,940 # 13ac <symbols.0+0x120>
     e58:	fb1ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e5c:	00001537          	lui	a0,0x1
     e60:	3c450513          	addi	a0,a0,964 # 13c4 <symbols.0+0x138>
     e64:	fb5ff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x128>
     e68:	00001537          	lui	a0,0x1
     e6c:	3d850513          	addi	a0,a0,984 # 13d8 <symbols.0+0x14c>
     e70:	f99ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e74:	00001537          	lui	a0,0x1
     e78:	3f450513          	addi	a0,a0,1012 # 13f4 <symbols.0+0x168>
     e7c:	f9dff06f          	j	e18 <__neorv32_rte_debug_exc_handler+0x128>
     e80:	00001537          	lui	a0,0x1
     e84:	40850513          	addi	a0,a0,1032 # 1408 <symbols.0+0x17c>
     e88:	f81ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e8c:	00001537          	lui	a0,0x1
     e90:	42850513          	addi	a0,a0,1064 # 1428 <symbols.0+0x19c>
     e94:	f75ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     e98:	00001537          	lui	a0,0x1
     e9c:	44850513          	addi	a0,a0,1096 # 1448 <symbols.0+0x1bc>
     ea0:	f69ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     ea4:	00001537          	lui	a0,0x1
     ea8:	46450513          	addi	a0,a0,1124 # 1464 <symbols.0+0x1d8>
     eac:	f5dff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     eb0:	00001537          	lui	a0,0x1
     eb4:	47c50513          	addi	a0,a0,1148 # 147c <symbols.0+0x1f0>
     eb8:	f51ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     ebc:	00001537          	lui	a0,0x1
     ec0:	4d050513          	addi	a0,a0,1232 # 14d0 <symbols.0+0x244>
     ec4:	f45ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     ec8:	00001537          	lui	a0,0x1
     ecc:	4e050513          	addi	a0,a0,1248 # 14e0 <symbols.0+0x254>
     ed0:	f39ff06f          	j	e08 <__neorv32_rte_debug_exc_handler+0x118>
     ed4:	00c12083          	lw	ra,12(sp)
     ed8:	00812403          	lw	s0,8(sp)
     edc:	00412483          	lw	s1,4(sp)
     ee0:	01010113          	addi	sp,sp,16
     ee4:	00008067          	ret

00000ee8 <neorv32_rte_exception_uninstall>:
     ee8:	01f00793          	li	a5,31
     eec:	02a7e263          	bltu	a5,a0,f10 <neorv32_rte_exception_uninstall+0x28>
     ef0:	81018793          	addi	a5,gp,-2032 # 80000010 <__neorv32_rte_vector_lut>
     ef4:	00251513          	slli	a0,a0,0x2
     ef8:	00a78533          	add	a0,a5,a0
     efc:	000017b7          	lui	a5,0x1
     f00:	cf078793          	addi	a5,a5,-784 # cf0 <__neorv32_rte_debug_exc_handler>
     f04:	00f52023          	sw	a5,0(a0)
     f08:	00000513          	li	a0,0
     f0c:	00008067          	ret
     f10:	00100513          	li	a0,1
     f14:	00008067          	ret

00000f18 <neorv32_rte_setup>:
     f18:	ff010113          	addi	sp,sp,-16
     f1c:	000017b7          	lui	a5,0x1
     f20:	00112623          	sw	ra,12(sp)
     f24:	00812423          	sw	s0,8(sp)
     f28:	00912223          	sw	s1,4(sp)
     f2c:	a8078793          	addi	a5,a5,-1408 # a80 <__neorv32_rte_core>
     f30:	30579073          	csrw	mtvec,a5
     f34:	00000413          	li	s0,0
     f38:	01d00493          	li	s1,29
     f3c:	00040513          	mv	a0,s0
     f40:	00140413          	addi	s0,s0,1
     f44:	0ff47413          	andi	s0,s0,255
     f48:	fa1ff0ef          	jal	ra,ee8 <neorv32_rte_exception_uninstall>
     f4c:	fe9418e3          	bne	s0,s1,f3c <neorv32_rte_setup+0x24>
     f50:	00c12083          	lw	ra,12(sp)
     f54:	00812403          	lw	s0,8(sp)
     f58:	00412483          	lw	s1,4(sp)
     f5c:	01010113          	addi	sp,sp,16
     f60:	00008067          	ret

00000f64 <__mulsi3>:
     f64:	00050613          	mv	a2,a0
     f68:	00000513          	li	a0,0
     f6c:	0015f693          	andi	a3,a1,1
     f70:	00068463          	beqz	a3,f78 <__mulsi3+0x14>
     f74:	00c50533          	add	a0,a0,a2
     f78:	0015d593          	srli	a1,a1,0x1
     f7c:	00161613          	slli	a2,a2,0x1
     f80:	fe0596e3          	bnez	a1,f6c <__mulsi3+0x8>
     f84:	00008067          	ret

00000f88 <__divsi3>:
     f88:	06054063          	bltz	a0,fe8 <__umodsi3+0x10>
     f8c:	0605c663          	bltz	a1,ff8 <__umodsi3+0x20>

00000f90 <__udivsi3>:
     f90:	00058613          	mv	a2,a1
     f94:	00050593          	mv	a1,a0
     f98:	fff00513          	li	a0,-1
     f9c:	02060c63          	beqz	a2,fd4 <__udivsi3+0x44>
     fa0:	00100693          	li	a3,1
     fa4:	00b67a63          	bgeu	a2,a1,fb8 <__udivsi3+0x28>
     fa8:	00c05863          	blez	a2,fb8 <__udivsi3+0x28>
     fac:	00161613          	slli	a2,a2,0x1
     fb0:	00169693          	slli	a3,a3,0x1
     fb4:	feb66ae3          	bltu	a2,a1,fa8 <__udivsi3+0x18>
     fb8:	00000513          	li	a0,0
     fbc:	00c5e663          	bltu	a1,a2,fc8 <__udivsi3+0x38>
     fc0:	40c585b3          	sub	a1,a1,a2
     fc4:	00d56533          	or	a0,a0,a3
     fc8:	0016d693          	srli	a3,a3,0x1
     fcc:	00165613          	srli	a2,a2,0x1
     fd0:	fe0696e3          	bnez	a3,fbc <__udivsi3+0x2c>
     fd4:	00008067          	ret

00000fd8 <__umodsi3>:
     fd8:	00008293          	mv	t0,ra
     fdc:	fb5ff0ef          	jal	ra,f90 <__udivsi3>
     fe0:	00058513          	mv	a0,a1
     fe4:	00028067          	jr	t0
     fe8:	40a00533          	neg	a0,a0
     fec:	00b04863          	bgtz	a1,ffc <__umodsi3+0x24>
     ff0:	40b005b3          	neg	a1,a1
     ff4:	f9dff06f          	j	f90 <__udivsi3>
     ff8:	40b005b3          	neg	a1,a1
     ffc:	00008293          	mv	t0,ra
    1000:	f91ff0ef          	jal	ra,f90 <__udivsi3>
    1004:	40a00533          	neg	a0,a0
    1008:	00028067          	jr	t0

0000100c <__modsi3>:
    100c:	00008293          	mv	t0,ra
    1010:	0005ca63          	bltz	a1,1024 <__modsi3+0x18>
    1014:	00054c63          	bltz	a0,102c <__modsi3+0x20>
    1018:	f79ff0ef          	jal	ra,f90 <__udivsi3>
    101c:	00058513          	mv	a0,a1
    1020:	00028067          	jr	t0
    1024:	40b005b3          	neg	a1,a1
    1028:	fe0558e3          	bgez	a0,1018 <__modsi3+0xc>
    102c:	40a00533          	neg	a0,a0
    1030:	f61ff0ef          	jal	ra,f90 <__udivsi3>
    1034:	40b00533          	neg	a0,a1
    1038:	00028067          	jr	t0
