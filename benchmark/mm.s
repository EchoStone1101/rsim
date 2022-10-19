
mm:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c791                	beqz	a5,100c0 <register_fini+0x10>
   100b6:	6551                	lui	a0,0x14
   100b8:	96a50513          	addi	a0,a0,-1686 # 1396a <__libc_fini_array>
   100bc:	61e0306f          	j	136da <atexit>
   100c0:	8082                	ret

00000000000100c2 <_start>:
   100c2:	00009197          	auipc	gp,0x9
   100c6:	86e18193          	addi	gp,gp,-1938 # 18930 <__global_pointer$>
   100ca:	77818513          	addi	a0,gp,1912 # 190a8 <__malloc_max_total_mem>
   100ce:	00009617          	auipc	a2,0x9
   100d2:	06260613          	addi	a2,a2,98 # 19130 <__BSS_END__>
   100d6:	8e09                	sub	a2,a2,a0
   100d8:	4581                	li	a1,0
   100da:	37e030ef          	jal	ra,13458 <memset>
   100de:	00003517          	auipc	a0,0x3
   100e2:	5fc50513          	addi	a0,a0,1532 # 136da <atexit>
   100e6:	c519                	beqz	a0,100f4 <_start+0x32>
   100e8:	00004517          	auipc	a0,0x4
   100ec:	88250513          	addi	a0,a0,-1918 # 1396a <__libc_fini_array>
   100f0:	5ea030ef          	jal	ra,136da <atexit>
   100f4:	2fa030ef          	jal	ra,133ee <__libc_init_array>
   100f8:	4502                	lw	a0,0(sp)
   100fa:	002c                	addi	a1,sp,8
   100fc:	4601                	li	a2,0
   100fe:	056000ef          	jal	ra,10154 <main>
   10102:	2ce0306f          	j	133d0 <exit>

0000000000010106 <__do_global_dtors_aux>:
   10106:	7a01c703          	lbu	a4,1952(gp) # 190d0 <completed.1>
   1010a:	e715                	bnez	a4,10136 <__do_global_dtors_aux+0x30>
   1010c:	1141                	addi	sp,sp,-16
   1010e:	e022                	sd	s0,0(sp)
   10110:	843e                	mv	s0,a5
   10112:	e406                	sd	ra,8(sp)
   10114:	00000793          	li	a5,0
   10118:	cb81                	beqz	a5,10128 <__do_global_dtors_aux+0x22>
   1011a:	6561                	lui	a0,0x18
   1011c:	0f450513          	addi	a0,a0,244 # 180f4 <__FRAME_END__>
   10120:	00000097          	auipc	ra,0x0
   10124:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10128:	4785                	li	a5,1
   1012a:	60a2                	ld	ra,8(sp)
   1012c:	7af18023          	sb	a5,1952(gp) # 190d0 <completed.1>
   10130:	6402                	ld	s0,0(sp)
   10132:	0141                	addi	sp,sp,16
   10134:	8082                	ret
   10136:	8082                	ret

0000000000010138 <frame_dummy>:
   10138:	00000793          	li	a5,0
   1013c:	cb91                	beqz	a5,10150 <frame_dummy+0x18>
   1013e:	6561                	lui	a0,0x18
   10140:	7a818593          	addi	a1,gp,1960 # 190d8 <object.0>
   10144:	0f450513          	addi	a0,a0,244 # 180f4 <__FRAME_END__>
   10148:	00000317          	auipc	t1,0x0
   1014c:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   10150:	8082                	ret
	...

0000000000010154 <main>:
   10154:	81010113          	addi	sp,sp,-2032
   10158:	7e113423          	sd	ra,2024(sp)
   1015c:	7e813023          	sd	s0,2016(sp)
   10160:	7f010413          	addi	s0,sp,2032
   10164:	bc010113          	addi	sp,sp,-1088
   10168:	fe042623          	sw	zero,-20(s0)
   1016c:	0c40006f          	j	10230 <main+0xdc>
   10170:	fe042423          	sw	zero,-24(s0)
   10174:	0a00006f          	j	10214 <main+0xc0>
   10178:	fec42703          	lw	a4,-20(s0)
   1017c:	fe842783          	lw	a5,-24(s0)
   10180:	00f707bb          	addw	a5,a4,a5
   10184:	0007871b          	sext.w	a4,a5
   10188:	fe842783          	lw	a5,-24(s0)
   1018c:	fec42683          	lw	a3,-20(s0)
   10190:	00469693          	slli	a3,a3,0x4
   10194:	00f687b3          	add	a5,a3,a5
   10198:	00279793          	slli	a5,a5,0x2
   1019c:	ff040693          	addi	a3,s0,-16
   101a0:	00f687b3          	add	a5,a3,a5
   101a4:	bee7a423          	sw	a4,-1048(a5)
   101a8:	fec42703          	lw	a4,-20(s0)
   101ac:	fe842783          	lw	a5,-24(s0)
   101b0:	40f707bb          	subw	a5,a4,a5
   101b4:	0007871b          	sext.w	a4,a5
   101b8:	fffff7b7          	lui	a5,0xfffff
   101bc:	ff040693          	addi	a3,s0,-16
   101c0:	00f686b3          	add	a3,a3,a5
   101c4:	fe842783          	lw	a5,-24(s0)
   101c8:	fec42603          	lw	a2,-20(s0)
   101cc:	00461613          	slli	a2,a2,0x4
   101d0:	00f607b3          	add	a5,a2,a5
   101d4:	00279793          	slli	a5,a5,0x2
   101d8:	00f687b3          	add	a5,a3,a5
   101dc:	7ee7a423          	sw	a4,2024(a5) # fffffffffffff7e8 <__BSS_END__+0xfffffffffffe66b8>
   101e0:	fffff7b7          	lui	a5,0xfffff
   101e4:	ff040713          	addi	a4,s0,-16
   101e8:	00f70733          	add	a4,a4,a5
   101ec:	fe842783          	lw	a5,-24(s0)
   101f0:	fec42683          	lw	a3,-20(s0)
   101f4:	00469693          	slli	a3,a3,0x4
   101f8:	00f687b3          	add	a5,a3,a5
   101fc:	00279793          	slli	a5,a5,0x2
   10200:	00f707b3          	add	a5,a4,a5
   10204:	3e07a423          	sw	zero,1000(a5) # fffffffffffff3e8 <__BSS_END__+0xfffffffffffe62b8>
   10208:	fe842783          	lw	a5,-24(s0)
   1020c:	0017879b          	addiw	a5,a5,1
   10210:	fef42423          	sw	a5,-24(s0)
   10214:	fe842783          	lw	a5,-24(s0)
   10218:	0007871b          	sext.w	a4,a5
   1021c:	00f00793          	li	a5,15
   10220:	f4e7dce3          	bge	a5,a4,10178 <main+0x24>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	0017879b          	addiw	a5,a5,1
   1022c:	fef42623          	sw	a5,-20(s0)
   10230:	fec42783          	lw	a5,-20(s0)
   10234:	0007871b          	sext.w	a4,a5
   10238:	00f00793          	li	a5,15
   1023c:	f2e7dae3          	bge	a5,a4,10170 <main+0x1c>
   10240:	fe042223          	sw	zero,-28(s0)
   10244:	1000006f          	j	10344 <main+0x1f0>
   10248:	fe042023          	sw	zero,-32(s0)
   1024c:	0dc0006f          	j	10328 <main+0x1d4>
   10250:	fc042e23          	sw	zero,-36(s0)
   10254:	0b80006f          	j	1030c <main+0x1b8>
   10258:	fffff7b7          	lui	a5,0xfffff
   1025c:	ff040713          	addi	a4,s0,-16
   10260:	00f70733          	add	a4,a4,a5
   10264:	fe042783          	lw	a5,-32(s0)
   10268:	fe442683          	lw	a3,-28(s0)
   1026c:	00469693          	slli	a3,a3,0x4
   10270:	00f687b3          	add	a5,a3,a5
   10274:	00279793          	slli	a5,a5,0x2
   10278:	00f707b3          	add	a5,a4,a5
   1027c:	3e87a703          	lw	a4,1000(a5) # fffffffffffff3e8 <__BSS_END__+0xfffffffffffe62b8>
   10280:	fdc42783          	lw	a5,-36(s0)
   10284:	fe442683          	lw	a3,-28(s0)
   10288:	00469693          	slli	a3,a3,0x4
   1028c:	00f687b3          	add	a5,a3,a5
   10290:	00279793          	slli	a5,a5,0x2
   10294:	ff040693          	addi	a3,s0,-16
   10298:	00f687b3          	add	a5,a3,a5
   1029c:	be87a683          	lw	a3,-1048(a5)
   102a0:	fffff7b7          	lui	a5,0xfffff
   102a4:	ff040613          	addi	a2,s0,-16
   102a8:	00f60633          	add	a2,a2,a5
   102ac:	fe042783          	lw	a5,-32(s0)
   102b0:	fdc42583          	lw	a1,-36(s0)
   102b4:	00459593          	slli	a1,a1,0x4
   102b8:	00f587b3          	add	a5,a1,a5
   102bc:	00279793          	slli	a5,a5,0x2
   102c0:	00f607b3          	add	a5,a2,a5
   102c4:	7e87a783          	lw	a5,2024(a5) # fffffffffffff7e8 <__BSS_END__+0xfffffffffffe66b8>
   102c8:	02f687bb          	mulw	a5,a3,a5
   102cc:	0007879b          	sext.w	a5,a5
   102d0:	00f707bb          	addw	a5,a4,a5
   102d4:	0007871b          	sext.w	a4,a5
   102d8:	fffff7b7          	lui	a5,0xfffff
   102dc:	ff040693          	addi	a3,s0,-16
   102e0:	00f686b3          	add	a3,a3,a5
   102e4:	fe042783          	lw	a5,-32(s0)
   102e8:	fe442603          	lw	a2,-28(s0)
   102ec:	00461613          	slli	a2,a2,0x4
   102f0:	00f607b3          	add	a5,a2,a5
   102f4:	00279793          	slli	a5,a5,0x2
   102f8:	00f687b3          	add	a5,a3,a5
   102fc:	3ee7a423          	sw	a4,1000(a5) # fffffffffffff3e8 <__BSS_END__+0xfffffffffffe62b8>
   10300:	fdc42783          	lw	a5,-36(s0)
   10304:	0017879b          	addiw	a5,a5,1
   10308:	fcf42e23          	sw	a5,-36(s0)
   1030c:	fdc42783          	lw	a5,-36(s0)
   10310:	0007871b          	sext.w	a4,a5
   10314:	00f00793          	li	a5,15
   10318:	f4e7d0e3          	bge	a5,a4,10258 <main+0x104>
   1031c:	fe042783          	lw	a5,-32(s0)
   10320:	0017879b          	addiw	a5,a5,1
   10324:	fef42023          	sw	a5,-32(s0)
   10328:	fe042783          	lw	a5,-32(s0)
   1032c:	0007871b          	sext.w	a4,a5
   10330:	00f00793          	li	a5,15
   10334:	f0e7dee3          	bge	a5,a4,10250 <main+0xfc>
   10338:	fe442783          	lw	a5,-28(s0)
   1033c:	0017879b          	addiw	a5,a5,1
   10340:	fef42223          	sw	a5,-28(s0)
   10344:	fe442783          	lw	a5,-28(s0)
   10348:	0007871b          	sext.w	a4,a5
   1034c:	00f00793          	li	a5,15
   10350:	eee7dce3          	bge	a5,a4,10248 <main+0xf4>
   10354:	fffff7b7          	lui	a5,0xfffff
   10358:	ff040713          	addi	a4,s0,-16
   1035c:	00f707b3          	add	a5,a4,a5
   10360:	3e87a783          	lw	a5,1000(a5) # fffffffffffff3e8 <__BSS_END__+0xfffffffffffe62b8>
   10364:	00078713          	mv	a4,a5
   10368:	4d800793          	li	a5,1240
   1036c:	00f70c63          	beq	a4,a5,10384 <main+0x230>
   10370:	000167b7          	lui	a5,0x16
   10374:	8e078513          	addi	a0,a5,-1824 # 158e0 <__errno+0xa>
   10378:	208030ef          	jal	ra,13580 <puts>
   1037c:	fff00793          	li	a5,-1
   10380:	0380306f          	j	133b8 <main+0x3264>
   10384:	fffff7b7          	lui	a5,0xfffff
   10388:	ff040713          	addi	a4,s0,-16
   1038c:	00f707b3          	add	a5,a4,a5
   10390:	3ec7a783          	lw	a5,1004(a5) # fffffffffffff3ec <__BSS_END__+0xfffffffffffe62bc>
   10394:	00078713          	mv	a4,a5
   10398:	46000793          	li	a5,1120
   1039c:	00f70c63          	beq	a4,a5,103b4 <main+0x260>
   103a0:	000167b7          	lui	a5,0x16
   103a4:	8f878513          	addi	a0,a5,-1800 # 158f8 <__errno+0x22>
   103a8:	1d8030ef          	jal	ra,13580 <puts>
   103ac:	fff00793          	li	a5,-1
   103b0:	0080306f          	j	133b8 <main+0x3264>
   103b4:	fffff7b7          	lui	a5,0xfffff
   103b8:	ff040713          	addi	a4,s0,-16
   103bc:	00f707b3          	add	a5,a4,a5
   103c0:	3f07a783          	lw	a5,1008(a5) # fffffffffffff3f0 <__BSS_END__+0xfffffffffffe62c0>
   103c4:	00078713          	mv	a4,a5
   103c8:	3e800793          	li	a5,1000
   103cc:	00f70c63          	beq	a4,a5,103e4 <main+0x290>
   103d0:	000167b7          	lui	a5,0x16
   103d4:	91078513          	addi	a0,a5,-1776 # 15910 <__errno+0x3a>
   103d8:	1a8030ef          	jal	ra,13580 <puts>
   103dc:	fff00793          	li	a5,-1
   103e0:	7d90206f          	j	133b8 <main+0x3264>
   103e4:	fffff7b7          	lui	a5,0xfffff
   103e8:	ff040713          	addi	a4,s0,-16
   103ec:	00f707b3          	add	a5,a4,a5
   103f0:	3f47a783          	lw	a5,1012(a5) # fffffffffffff3f4 <__BSS_END__+0xfffffffffffe62c4>
   103f4:	00078713          	mv	a4,a5
   103f8:	37000793          	li	a5,880
   103fc:	00f70c63          	beq	a4,a5,10414 <main+0x2c0>
   10400:	000167b7          	lui	a5,0x16
   10404:	92878513          	addi	a0,a5,-1752 # 15928 <__errno+0x52>
   10408:	178030ef          	jal	ra,13580 <puts>
   1040c:	fff00793          	li	a5,-1
   10410:	7a90206f          	j	133b8 <main+0x3264>
   10414:	fffff7b7          	lui	a5,0xfffff
   10418:	ff040713          	addi	a4,s0,-16
   1041c:	00f707b3          	add	a5,a4,a5
   10420:	3f87a783          	lw	a5,1016(a5) # fffffffffffff3f8 <__BSS_END__+0xfffffffffffe62c8>
   10424:	00078713          	mv	a4,a5
   10428:	2f800793          	li	a5,760
   1042c:	00f70c63          	beq	a4,a5,10444 <main+0x2f0>
   10430:	000167b7          	lui	a5,0x16
   10434:	94078513          	addi	a0,a5,-1728 # 15940 <__errno+0x6a>
   10438:	148030ef          	jal	ra,13580 <puts>
   1043c:	fff00793          	li	a5,-1
   10440:	7790206f          	j	133b8 <main+0x3264>
   10444:	fffff7b7          	lui	a5,0xfffff
   10448:	ff040713          	addi	a4,s0,-16
   1044c:	00f707b3          	add	a5,a4,a5
   10450:	3fc7a783          	lw	a5,1020(a5) # fffffffffffff3fc <__BSS_END__+0xfffffffffffe62cc>
   10454:	00078713          	mv	a4,a5
   10458:	28000793          	li	a5,640
   1045c:	00f70c63          	beq	a4,a5,10474 <main+0x320>
   10460:	000167b7          	lui	a5,0x16
   10464:	95878513          	addi	a0,a5,-1704 # 15958 <__errno+0x82>
   10468:	118030ef          	jal	ra,13580 <puts>
   1046c:	fff00793          	li	a5,-1
   10470:	7490206f          	j	133b8 <main+0x3264>
   10474:	fffff7b7          	lui	a5,0xfffff
   10478:	ff040713          	addi	a4,s0,-16
   1047c:	00f707b3          	add	a5,a4,a5
   10480:	4007a783          	lw	a5,1024(a5) # fffffffffffff400 <__BSS_END__+0xfffffffffffe62d0>
   10484:	00078713          	mv	a4,a5
   10488:	20800793          	li	a5,520
   1048c:	00f70c63          	beq	a4,a5,104a4 <main+0x350>
   10490:	000167b7          	lui	a5,0x16
   10494:	97078513          	addi	a0,a5,-1680 # 15970 <__errno+0x9a>
   10498:	0e8030ef          	jal	ra,13580 <puts>
   1049c:	fff00793          	li	a5,-1
   104a0:	7190206f          	j	133b8 <main+0x3264>
   104a4:	fffff7b7          	lui	a5,0xfffff
   104a8:	ff040713          	addi	a4,s0,-16
   104ac:	00f707b3          	add	a5,a4,a5
   104b0:	4047a783          	lw	a5,1028(a5) # fffffffffffff404 <__BSS_END__+0xfffffffffffe62d4>
   104b4:	00078713          	mv	a4,a5
   104b8:	19000793          	li	a5,400
   104bc:	00f70c63          	beq	a4,a5,104d4 <main+0x380>
   104c0:	000167b7          	lui	a5,0x16
   104c4:	98878513          	addi	a0,a5,-1656 # 15988 <__errno+0xb2>
   104c8:	0b8030ef          	jal	ra,13580 <puts>
   104cc:	fff00793          	li	a5,-1
   104d0:	6e90206f          	j	133b8 <main+0x3264>
   104d4:	fffff7b7          	lui	a5,0xfffff
   104d8:	ff040713          	addi	a4,s0,-16
   104dc:	00f707b3          	add	a5,a4,a5
   104e0:	4087a783          	lw	a5,1032(a5) # fffffffffffff408 <__BSS_END__+0xfffffffffffe62d8>
   104e4:	00078713          	mv	a4,a5
   104e8:	11800793          	li	a5,280
   104ec:	00f70c63          	beq	a4,a5,10504 <main+0x3b0>
   104f0:	000167b7          	lui	a5,0x16
   104f4:	9a078513          	addi	a0,a5,-1632 # 159a0 <__errno+0xca>
   104f8:	088030ef          	jal	ra,13580 <puts>
   104fc:	fff00793          	li	a5,-1
   10500:	6b90206f          	j	133b8 <main+0x3264>
   10504:	fffff7b7          	lui	a5,0xfffff
   10508:	ff040713          	addi	a4,s0,-16
   1050c:	00f707b3          	add	a5,a4,a5
   10510:	40c7a783          	lw	a5,1036(a5) # fffffffffffff40c <__BSS_END__+0xfffffffffffe62dc>
   10514:	00078713          	mv	a4,a5
   10518:	0a000793          	li	a5,160
   1051c:	00f70c63          	beq	a4,a5,10534 <main+0x3e0>
   10520:	000167b7          	lui	a5,0x16
   10524:	9b878513          	addi	a0,a5,-1608 # 159b8 <__errno+0xe2>
   10528:	058030ef          	jal	ra,13580 <puts>
   1052c:	fff00793          	li	a5,-1
   10530:	6890206f          	j	133b8 <main+0x3264>
   10534:	fffff7b7          	lui	a5,0xfffff
   10538:	ff040713          	addi	a4,s0,-16
   1053c:	00f707b3          	add	a5,a4,a5
   10540:	4107a783          	lw	a5,1040(a5) # fffffffffffff410 <__BSS_END__+0xfffffffffffe62e0>
   10544:	00078713          	mv	a4,a5
   10548:	02800793          	li	a5,40
   1054c:	00f70c63          	beq	a4,a5,10564 <main+0x410>
   10550:	000167b7          	lui	a5,0x16
   10554:	9d078513          	addi	a0,a5,-1584 # 159d0 <__errno+0xfa>
   10558:	028030ef          	jal	ra,13580 <puts>
   1055c:	fff00793          	li	a5,-1
   10560:	6590206f          	j	133b8 <main+0x3264>
   10564:	fffff7b7          	lui	a5,0xfffff
   10568:	ff040713          	addi	a4,s0,-16
   1056c:	00f707b3          	add	a5,a4,a5
   10570:	4147a783          	lw	a5,1044(a5) # fffffffffffff414 <__BSS_END__+0xfffffffffffe62e4>
   10574:	00078713          	mv	a4,a5
   10578:	fb000793          	li	a5,-80
   1057c:	00f70c63          	beq	a4,a5,10594 <main+0x440>
   10580:	000167b7          	lui	a5,0x16
   10584:	9e878513          	addi	a0,a5,-1560 # 159e8 <__errno+0x112>
   10588:	7f9020ef          	jal	ra,13580 <puts>
   1058c:	fff00793          	li	a5,-1
   10590:	6290206f          	j	133b8 <main+0x3264>
   10594:	fffff7b7          	lui	a5,0xfffff
   10598:	ff040713          	addi	a4,s0,-16
   1059c:	00f707b3          	add	a5,a4,a5
   105a0:	4187a783          	lw	a5,1048(a5) # fffffffffffff418 <__BSS_END__+0xfffffffffffe62e8>
   105a4:	00078713          	mv	a4,a5
   105a8:	f3800793          	li	a5,-200
   105ac:	00f70c63          	beq	a4,a5,105c4 <main+0x470>
   105b0:	000167b7          	lui	a5,0x16
   105b4:	a0078513          	addi	a0,a5,-1536 # 15a00 <__errno+0x12a>
   105b8:	7c9020ef          	jal	ra,13580 <puts>
   105bc:	fff00793          	li	a5,-1
   105c0:	5f90206f          	j	133b8 <main+0x3264>
   105c4:	fffff7b7          	lui	a5,0xfffff
   105c8:	ff040713          	addi	a4,s0,-16
   105cc:	00f707b3          	add	a5,a4,a5
   105d0:	41c7a783          	lw	a5,1052(a5) # fffffffffffff41c <__BSS_END__+0xfffffffffffe62ec>
   105d4:	00078713          	mv	a4,a5
   105d8:	ec000793          	li	a5,-320
   105dc:	00f70c63          	beq	a4,a5,105f4 <main+0x4a0>
   105e0:	000167b7          	lui	a5,0x16
   105e4:	a1878513          	addi	a0,a5,-1512 # 15a18 <__errno+0x142>
   105e8:	799020ef          	jal	ra,13580 <puts>
   105ec:	fff00793          	li	a5,-1
   105f0:	5c90206f          	j	133b8 <main+0x3264>
   105f4:	fffff7b7          	lui	a5,0xfffff
   105f8:	ff040713          	addi	a4,s0,-16
   105fc:	00f707b3          	add	a5,a4,a5
   10600:	4207a783          	lw	a5,1056(a5) # fffffffffffff420 <__BSS_END__+0xfffffffffffe62f0>
   10604:	00078713          	mv	a4,a5
   10608:	e4800793          	li	a5,-440
   1060c:	00f70c63          	beq	a4,a5,10624 <main+0x4d0>
   10610:	000167b7          	lui	a5,0x16
   10614:	a3078513          	addi	a0,a5,-1488 # 15a30 <__errno+0x15a>
   10618:	769020ef          	jal	ra,13580 <puts>
   1061c:	fff00793          	li	a5,-1
   10620:	5990206f          	j	133b8 <main+0x3264>
   10624:	fffff7b7          	lui	a5,0xfffff
   10628:	ff040713          	addi	a4,s0,-16
   1062c:	00f707b3          	add	a5,a4,a5
   10630:	4247a783          	lw	a5,1060(a5) # fffffffffffff424 <__BSS_END__+0xfffffffffffe62f4>
   10634:	00078713          	mv	a4,a5
   10638:	dd000793          	li	a5,-560
   1063c:	00f70c63          	beq	a4,a5,10654 <main+0x500>
   10640:	000167b7          	lui	a5,0x16
   10644:	a4878513          	addi	a0,a5,-1464 # 15a48 <__errno+0x172>
   10648:	739020ef          	jal	ra,13580 <puts>
   1064c:	fff00793          	li	a5,-1
   10650:	5690206f          	j	133b8 <main+0x3264>
   10654:	fffff7b7          	lui	a5,0xfffff
   10658:	ff040713          	addi	a4,s0,-16
   1065c:	00f707b3          	add	a5,a4,a5
   10660:	4287a783          	lw	a5,1064(a5) # fffffffffffff428 <__BSS_END__+0xfffffffffffe62f8>
   10664:	00078713          	mv	a4,a5
   10668:	55000793          	li	a5,1360
   1066c:	00f70c63          	beq	a4,a5,10684 <main+0x530>
   10670:	000167b7          	lui	a5,0x16
   10674:	a6078513          	addi	a0,a5,-1440 # 15a60 <__errno+0x18a>
   10678:	709020ef          	jal	ra,13580 <puts>
   1067c:	fff00793          	li	a5,-1
   10680:	5390206f          	j	133b8 <main+0x3264>
   10684:	fffff7b7          	lui	a5,0xfffff
   10688:	ff040713          	addi	a4,s0,-16
   1068c:	00f707b3          	add	a5,a4,a5
   10690:	42c7a783          	lw	a5,1068(a5) # fffffffffffff42c <__BSS_END__+0xfffffffffffe62fc>
   10694:	00078713          	mv	a4,a5
   10698:	4c800793          	li	a5,1224
   1069c:	00f70c63          	beq	a4,a5,106b4 <main+0x560>
   106a0:	000167b7          	lui	a5,0x16
   106a4:	a7878513          	addi	a0,a5,-1416 # 15a78 <__errno+0x1a2>
   106a8:	6d9020ef          	jal	ra,13580 <puts>
   106ac:	fff00793          	li	a5,-1
   106b0:	5090206f          	j	133b8 <main+0x3264>
   106b4:	fffff7b7          	lui	a5,0xfffff
   106b8:	ff040713          	addi	a4,s0,-16
   106bc:	00f707b3          	add	a5,a4,a5
   106c0:	4307a783          	lw	a5,1072(a5) # fffffffffffff430 <__BSS_END__+0xfffffffffffe6300>
   106c4:	00078713          	mv	a4,a5
   106c8:	44000793          	li	a5,1088
   106cc:	00f70c63          	beq	a4,a5,106e4 <main+0x590>
   106d0:	000167b7          	lui	a5,0x16
   106d4:	a9078513          	addi	a0,a5,-1392 # 15a90 <__errno+0x1ba>
   106d8:	6a9020ef          	jal	ra,13580 <puts>
   106dc:	fff00793          	li	a5,-1
   106e0:	4d90206f          	j	133b8 <main+0x3264>
   106e4:	fffff7b7          	lui	a5,0xfffff
   106e8:	ff040713          	addi	a4,s0,-16
   106ec:	00f707b3          	add	a5,a4,a5
   106f0:	4347a783          	lw	a5,1076(a5) # fffffffffffff434 <__BSS_END__+0xfffffffffffe6304>
   106f4:	00078713          	mv	a4,a5
   106f8:	3b800793          	li	a5,952
   106fc:	00f70c63          	beq	a4,a5,10714 <main+0x5c0>
   10700:	000167b7          	lui	a5,0x16
   10704:	aa878513          	addi	a0,a5,-1368 # 15aa8 <__errno+0x1d2>
   10708:	679020ef          	jal	ra,13580 <puts>
   1070c:	fff00793          	li	a5,-1
   10710:	4a90206f          	j	133b8 <main+0x3264>
   10714:	fffff7b7          	lui	a5,0xfffff
   10718:	ff040713          	addi	a4,s0,-16
   1071c:	00f707b3          	add	a5,a4,a5
   10720:	4387a783          	lw	a5,1080(a5) # fffffffffffff438 <__BSS_END__+0xfffffffffffe6308>
   10724:	00078713          	mv	a4,a5
   10728:	33000793          	li	a5,816
   1072c:	00f70c63          	beq	a4,a5,10744 <main+0x5f0>
   10730:	000167b7          	lui	a5,0x16
   10734:	ac078513          	addi	a0,a5,-1344 # 15ac0 <__errno+0x1ea>
   10738:	649020ef          	jal	ra,13580 <puts>
   1073c:	fff00793          	li	a5,-1
   10740:	4790206f          	j	133b8 <main+0x3264>
   10744:	fffff7b7          	lui	a5,0xfffff
   10748:	ff040713          	addi	a4,s0,-16
   1074c:	00f707b3          	add	a5,a4,a5
   10750:	43c7a783          	lw	a5,1084(a5) # fffffffffffff43c <__BSS_END__+0xfffffffffffe630c>
   10754:	00078713          	mv	a4,a5
   10758:	2a800793          	li	a5,680
   1075c:	00f70c63          	beq	a4,a5,10774 <main+0x620>
   10760:	000167b7          	lui	a5,0x16
   10764:	ad878513          	addi	a0,a5,-1320 # 15ad8 <__errno+0x202>
   10768:	619020ef          	jal	ra,13580 <puts>
   1076c:	fff00793          	li	a5,-1
   10770:	4490206f          	j	133b8 <main+0x3264>
   10774:	fffff7b7          	lui	a5,0xfffff
   10778:	ff040713          	addi	a4,s0,-16
   1077c:	00f707b3          	add	a5,a4,a5
   10780:	4407a783          	lw	a5,1088(a5) # fffffffffffff440 <__BSS_END__+0xfffffffffffe6310>
   10784:	00078713          	mv	a4,a5
   10788:	22000793          	li	a5,544
   1078c:	00f70c63          	beq	a4,a5,107a4 <main+0x650>
   10790:	000167b7          	lui	a5,0x16
   10794:	af078513          	addi	a0,a5,-1296 # 15af0 <__errno+0x21a>
   10798:	5e9020ef          	jal	ra,13580 <puts>
   1079c:	fff00793          	li	a5,-1
   107a0:	4190206f          	j	133b8 <main+0x3264>
   107a4:	fffff7b7          	lui	a5,0xfffff
   107a8:	ff040713          	addi	a4,s0,-16
   107ac:	00f707b3          	add	a5,a4,a5
   107b0:	4447a783          	lw	a5,1092(a5) # fffffffffffff444 <__BSS_END__+0xfffffffffffe6314>
   107b4:	00078713          	mv	a4,a5
   107b8:	19800793          	li	a5,408
   107bc:	00f70c63          	beq	a4,a5,107d4 <main+0x680>
   107c0:	000167b7          	lui	a5,0x16
   107c4:	b0878513          	addi	a0,a5,-1272 # 15b08 <__errno+0x232>
   107c8:	5b9020ef          	jal	ra,13580 <puts>
   107cc:	fff00793          	li	a5,-1
   107d0:	3e90206f          	j	133b8 <main+0x3264>
   107d4:	fffff7b7          	lui	a5,0xfffff
   107d8:	ff040713          	addi	a4,s0,-16
   107dc:	00f707b3          	add	a5,a4,a5
   107e0:	4487a783          	lw	a5,1096(a5) # fffffffffffff448 <__BSS_END__+0xfffffffffffe6318>
   107e4:	00078713          	mv	a4,a5
   107e8:	11000793          	li	a5,272
   107ec:	00f70c63          	beq	a4,a5,10804 <main+0x6b0>
   107f0:	000167b7          	lui	a5,0x16
   107f4:	b2078513          	addi	a0,a5,-1248 # 15b20 <__errno+0x24a>
   107f8:	589020ef          	jal	ra,13580 <puts>
   107fc:	fff00793          	li	a5,-1
   10800:	3b90206f          	j	133b8 <main+0x3264>
   10804:	fffff7b7          	lui	a5,0xfffff
   10808:	ff040713          	addi	a4,s0,-16
   1080c:	00f707b3          	add	a5,a4,a5
   10810:	44c7a783          	lw	a5,1100(a5) # fffffffffffff44c <__BSS_END__+0xfffffffffffe631c>
   10814:	00078713          	mv	a4,a5
   10818:	08800793          	li	a5,136
   1081c:	00f70c63          	beq	a4,a5,10834 <main+0x6e0>
   10820:	000167b7          	lui	a5,0x16
   10824:	b3878513          	addi	a0,a5,-1224 # 15b38 <__errno+0x262>
   10828:	559020ef          	jal	ra,13580 <puts>
   1082c:	fff00793          	li	a5,-1
   10830:	3890206f          	j	133b8 <main+0x3264>
   10834:	fffff7b7          	lui	a5,0xfffff
   10838:	ff040713          	addi	a4,s0,-16
   1083c:	00f707b3          	add	a5,a4,a5
   10840:	4507a783          	lw	a5,1104(a5) # fffffffffffff450 <__BSS_END__+0xfffffffffffe6320>
   10844:	00078c63          	beqz	a5,1085c <main+0x708>
   10848:	000167b7          	lui	a5,0x16
   1084c:	b5078513          	addi	a0,a5,-1200 # 15b50 <__errno+0x27a>
   10850:	531020ef          	jal	ra,13580 <puts>
   10854:	fff00793          	li	a5,-1
   10858:	3610206f          	j	133b8 <main+0x3264>
   1085c:	fffff7b7          	lui	a5,0xfffff
   10860:	ff040713          	addi	a4,s0,-16
   10864:	00f707b3          	add	a5,a4,a5
   10868:	4547a783          	lw	a5,1108(a5) # fffffffffffff454 <__BSS_END__+0xfffffffffffe6324>
   1086c:	00078713          	mv	a4,a5
   10870:	f7800793          	li	a5,-136
   10874:	00f70c63          	beq	a4,a5,1088c <main+0x738>
   10878:	000167b7          	lui	a5,0x16
   1087c:	b6878513          	addi	a0,a5,-1176 # 15b68 <__errno+0x292>
   10880:	501020ef          	jal	ra,13580 <puts>
   10884:	fff00793          	li	a5,-1
   10888:	3310206f          	j	133b8 <main+0x3264>
   1088c:	fffff7b7          	lui	a5,0xfffff
   10890:	ff040713          	addi	a4,s0,-16
   10894:	00f707b3          	add	a5,a4,a5
   10898:	4587a783          	lw	a5,1112(a5) # fffffffffffff458 <__BSS_END__+0xfffffffffffe6328>
   1089c:	00078713          	mv	a4,a5
   108a0:	ef000793          	li	a5,-272
   108a4:	00f70c63          	beq	a4,a5,108bc <main+0x768>
   108a8:	000167b7          	lui	a5,0x16
   108ac:	b8078513          	addi	a0,a5,-1152 # 15b80 <__errno+0x2aa>
   108b0:	4d1020ef          	jal	ra,13580 <puts>
   108b4:	fff00793          	li	a5,-1
   108b8:	3010206f          	j	133b8 <main+0x3264>
   108bc:	fffff7b7          	lui	a5,0xfffff
   108c0:	ff040713          	addi	a4,s0,-16
   108c4:	00f707b3          	add	a5,a4,a5
   108c8:	45c7a783          	lw	a5,1116(a5) # fffffffffffff45c <__BSS_END__+0xfffffffffffe632c>
   108cc:	00078713          	mv	a4,a5
   108d0:	e6800793          	li	a5,-408
   108d4:	00f70c63          	beq	a4,a5,108ec <main+0x798>
   108d8:	000167b7          	lui	a5,0x16
   108dc:	b9878513          	addi	a0,a5,-1128 # 15b98 <__errno+0x2c2>
   108e0:	4a1020ef          	jal	ra,13580 <puts>
   108e4:	fff00793          	li	a5,-1
   108e8:	2d10206f          	j	133b8 <main+0x3264>
   108ec:	fffff7b7          	lui	a5,0xfffff
   108f0:	ff040713          	addi	a4,s0,-16
   108f4:	00f707b3          	add	a5,a4,a5
   108f8:	4607a783          	lw	a5,1120(a5) # fffffffffffff460 <__BSS_END__+0xfffffffffffe6330>
   108fc:	00078713          	mv	a4,a5
   10900:	de000793          	li	a5,-544
   10904:	00f70c63          	beq	a4,a5,1091c <main+0x7c8>
   10908:	000167b7          	lui	a5,0x16
   1090c:	bb078513          	addi	a0,a5,-1104 # 15bb0 <__errno+0x2da>
   10910:	471020ef          	jal	ra,13580 <puts>
   10914:	fff00793          	li	a5,-1
   10918:	2a10206f          	j	133b8 <main+0x3264>
   1091c:	fffff7b7          	lui	a5,0xfffff
   10920:	ff040713          	addi	a4,s0,-16
   10924:	00f707b3          	add	a5,a4,a5
   10928:	4647a783          	lw	a5,1124(a5) # fffffffffffff464 <__BSS_END__+0xfffffffffffe6334>
   1092c:	00078713          	mv	a4,a5
   10930:	d5800793          	li	a5,-680
   10934:	00f70c63          	beq	a4,a5,1094c <main+0x7f8>
   10938:	000167b7          	lui	a5,0x16
   1093c:	bc878513          	addi	a0,a5,-1080 # 15bc8 <__errno+0x2f2>
   10940:	441020ef          	jal	ra,13580 <puts>
   10944:	fff00793          	li	a5,-1
   10948:	2710206f          	j	133b8 <main+0x3264>
   1094c:	fffff7b7          	lui	a5,0xfffff
   10950:	ff040713          	addi	a4,s0,-16
   10954:	00f707b3          	add	a5,a4,a5
   10958:	4687a783          	lw	a5,1128(a5) # fffffffffffff468 <__BSS_END__+0xfffffffffffe6338>
   1095c:	00078713          	mv	a4,a5
   10960:	5c800793          	li	a5,1480
   10964:	00f70c63          	beq	a4,a5,1097c <main+0x828>
   10968:	000167b7          	lui	a5,0x16
   1096c:	be078513          	addi	a0,a5,-1056 # 15be0 <__errno+0x30a>
   10970:	411020ef          	jal	ra,13580 <puts>
   10974:	fff00793          	li	a5,-1
   10978:	2410206f          	j	133b8 <main+0x3264>
   1097c:	fffff7b7          	lui	a5,0xfffff
   10980:	ff040713          	addi	a4,s0,-16
   10984:	00f707b3          	add	a5,a4,a5
   10988:	46c7a783          	lw	a5,1132(a5) # fffffffffffff46c <__BSS_END__+0xfffffffffffe633c>
   1098c:	00078713          	mv	a4,a5
   10990:	53000793          	li	a5,1328
   10994:	00f70c63          	beq	a4,a5,109ac <main+0x858>
   10998:	000167b7          	lui	a5,0x16
   1099c:	bf878513          	addi	a0,a5,-1032 # 15bf8 <__errno+0x322>
   109a0:	3e1020ef          	jal	ra,13580 <puts>
   109a4:	fff00793          	li	a5,-1
   109a8:	2110206f          	j	133b8 <main+0x3264>
   109ac:	fffff7b7          	lui	a5,0xfffff
   109b0:	ff040713          	addi	a4,s0,-16
   109b4:	00f707b3          	add	a5,a4,a5
   109b8:	4707a783          	lw	a5,1136(a5) # fffffffffffff470 <__BSS_END__+0xfffffffffffe6340>
   109bc:	00078713          	mv	a4,a5
   109c0:	49800793          	li	a5,1176
   109c4:	00f70c63          	beq	a4,a5,109dc <main+0x888>
   109c8:	000167b7          	lui	a5,0x16
   109cc:	c1078513          	addi	a0,a5,-1008 # 15c10 <__errno+0x33a>
   109d0:	3b1020ef          	jal	ra,13580 <puts>
   109d4:	fff00793          	li	a5,-1
   109d8:	1e10206f          	j	133b8 <main+0x3264>
   109dc:	fffff7b7          	lui	a5,0xfffff
   109e0:	ff040713          	addi	a4,s0,-16
   109e4:	00f707b3          	add	a5,a4,a5
   109e8:	4747a783          	lw	a5,1140(a5) # fffffffffffff474 <__BSS_END__+0xfffffffffffe6344>
   109ec:	00078713          	mv	a4,a5
   109f0:	40000793          	li	a5,1024
   109f4:	00f70c63          	beq	a4,a5,10a0c <main+0x8b8>
   109f8:	000167b7          	lui	a5,0x16
   109fc:	c2878513          	addi	a0,a5,-984 # 15c28 <__errno+0x352>
   10a00:	381020ef          	jal	ra,13580 <puts>
   10a04:	fff00793          	li	a5,-1
   10a08:	1b10206f          	j	133b8 <main+0x3264>
   10a0c:	fffff7b7          	lui	a5,0xfffff
   10a10:	ff040713          	addi	a4,s0,-16
   10a14:	00f707b3          	add	a5,a4,a5
   10a18:	4787a783          	lw	a5,1144(a5) # fffffffffffff478 <__BSS_END__+0xfffffffffffe6348>
   10a1c:	00078713          	mv	a4,a5
   10a20:	36800793          	li	a5,872
   10a24:	00f70c63          	beq	a4,a5,10a3c <main+0x8e8>
   10a28:	000167b7          	lui	a5,0x16
   10a2c:	c4078513          	addi	a0,a5,-960 # 15c40 <__errno+0x36a>
   10a30:	351020ef          	jal	ra,13580 <puts>
   10a34:	fff00793          	li	a5,-1
   10a38:	1810206f          	j	133b8 <main+0x3264>
   10a3c:	fffff7b7          	lui	a5,0xfffff
   10a40:	ff040713          	addi	a4,s0,-16
   10a44:	00f707b3          	add	a5,a4,a5
   10a48:	47c7a783          	lw	a5,1148(a5) # fffffffffffff47c <__BSS_END__+0xfffffffffffe634c>
   10a4c:	00078713          	mv	a4,a5
   10a50:	2d000793          	li	a5,720
   10a54:	00f70c63          	beq	a4,a5,10a6c <main+0x918>
   10a58:	000167b7          	lui	a5,0x16
   10a5c:	c5878513          	addi	a0,a5,-936 # 15c58 <__errno+0x382>
   10a60:	321020ef          	jal	ra,13580 <puts>
   10a64:	fff00793          	li	a5,-1
   10a68:	1510206f          	j	133b8 <main+0x3264>
   10a6c:	fffff7b7          	lui	a5,0xfffff
   10a70:	ff040713          	addi	a4,s0,-16
   10a74:	00f707b3          	add	a5,a4,a5
   10a78:	4807a783          	lw	a5,1152(a5) # fffffffffffff480 <__BSS_END__+0xfffffffffffe6350>
   10a7c:	00078713          	mv	a4,a5
   10a80:	23800793          	li	a5,568
   10a84:	00f70c63          	beq	a4,a5,10a9c <main+0x948>
   10a88:	000167b7          	lui	a5,0x16
   10a8c:	c7078513          	addi	a0,a5,-912 # 15c70 <__errno+0x39a>
   10a90:	2f1020ef          	jal	ra,13580 <puts>
   10a94:	fff00793          	li	a5,-1
   10a98:	1210206f          	j	133b8 <main+0x3264>
   10a9c:	fffff7b7          	lui	a5,0xfffff
   10aa0:	ff040713          	addi	a4,s0,-16
   10aa4:	00f707b3          	add	a5,a4,a5
   10aa8:	4847a783          	lw	a5,1156(a5) # fffffffffffff484 <__BSS_END__+0xfffffffffffe6354>
   10aac:	00078713          	mv	a4,a5
   10ab0:	1a000793          	li	a5,416
   10ab4:	00f70c63          	beq	a4,a5,10acc <main+0x978>
   10ab8:	000167b7          	lui	a5,0x16
   10abc:	c8878513          	addi	a0,a5,-888 # 15c88 <__errno+0x3b2>
   10ac0:	2c1020ef          	jal	ra,13580 <puts>
   10ac4:	fff00793          	li	a5,-1
   10ac8:	0f10206f          	j	133b8 <main+0x3264>
   10acc:	fffff7b7          	lui	a5,0xfffff
   10ad0:	ff040713          	addi	a4,s0,-16
   10ad4:	00f707b3          	add	a5,a4,a5
   10ad8:	4887a783          	lw	a5,1160(a5) # fffffffffffff488 <__BSS_END__+0xfffffffffffe6358>
   10adc:	00078713          	mv	a4,a5
   10ae0:	10800793          	li	a5,264
   10ae4:	00f70c63          	beq	a4,a5,10afc <main+0x9a8>
   10ae8:	000167b7          	lui	a5,0x16
   10aec:	ca078513          	addi	a0,a5,-864 # 15ca0 <__errno+0x3ca>
   10af0:	291020ef          	jal	ra,13580 <puts>
   10af4:	fff00793          	li	a5,-1
   10af8:	0c10206f          	j	133b8 <main+0x3264>
   10afc:	fffff7b7          	lui	a5,0xfffff
   10b00:	ff040713          	addi	a4,s0,-16
   10b04:	00f707b3          	add	a5,a4,a5
   10b08:	48c7a783          	lw	a5,1164(a5) # fffffffffffff48c <__BSS_END__+0xfffffffffffe635c>
   10b0c:	00078713          	mv	a4,a5
   10b10:	07000793          	li	a5,112
   10b14:	00f70c63          	beq	a4,a5,10b2c <main+0x9d8>
   10b18:	000167b7          	lui	a5,0x16
   10b1c:	cb878513          	addi	a0,a5,-840 # 15cb8 <__errno+0x3e2>
   10b20:	261020ef          	jal	ra,13580 <puts>
   10b24:	fff00793          	li	a5,-1
   10b28:	0910206f          	j	133b8 <main+0x3264>
   10b2c:	fffff7b7          	lui	a5,0xfffff
   10b30:	ff040713          	addi	a4,s0,-16
   10b34:	00f707b3          	add	a5,a4,a5
   10b38:	4907a783          	lw	a5,1168(a5) # fffffffffffff490 <__BSS_END__+0xfffffffffffe6360>
   10b3c:	00078713          	mv	a4,a5
   10b40:	fd800793          	li	a5,-40
   10b44:	00f70c63          	beq	a4,a5,10b5c <main+0xa08>
   10b48:	000167b7          	lui	a5,0x16
   10b4c:	cd078513          	addi	a0,a5,-816 # 15cd0 <__errno+0x3fa>
   10b50:	231020ef          	jal	ra,13580 <puts>
   10b54:	fff00793          	li	a5,-1
   10b58:	0610206f          	j	133b8 <main+0x3264>
   10b5c:	fffff7b7          	lui	a5,0xfffff
   10b60:	ff040713          	addi	a4,s0,-16
   10b64:	00f707b3          	add	a5,a4,a5
   10b68:	4947a783          	lw	a5,1172(a5) # fffffffffffff494 <__BSS_END__+0xfffffffffffe6364>
   10b6c:	00078713          	mv	a4,a5
   10b70:	f4000793          	li	a5,-192
   10b74:	00f70c63          	beq	a4,a5,10b8c <main+0xa38>
   10b78:	000167b7          	lui	a5,0x16
   10b7c:	ce878513          	addi	a0,a5,-792 # 15ce8 <__errno+0x412>
   10b80:	201020ef          	jal	ra,13580 <puts>
   10b84:	fff00793          	li	a5,-1
   10b88:	0310206f          	j	133b8 <main+0x3264>
   10b8c:	fffff7b7          	lui	a5,0xfffff
   10b90:	ff040713          	addi	a4,s0,-16
   10b94:	00f707b3          	add	a5,a4,a5
   10b98:	4987a783          	lw	a5,1176(a5) # fffffffffffff498 <__BSS_END__+0xfffffffffffe6368>
   10b9c:	00078713          	mv	a4,a5
   10ba0:	ea800793          	li	a5,-344
   10ba4:	00f70c63          	beq	a4,a5,10bbc <main+0xa68>
   10ba8:	000167b7          	lui	a5,0x16
   10bac:	d0078513          	addi	a0,a5,-768 # 15d00 <__errno+0x42a>
   10bb0:	1d1020ef          	jal	ra,13580 <puts>
   10bb4:	fff00793          	li	a5,-1
   10bb8:	0010206f          	j	133b8 <main+0x3264>
   10bbc:	fffff7b7          	lui	a5,0xfffff
   10bc0:	ff040713          	addi	a4,s0,-16
   10bc4:	00f707b3          	add	a5,a4,a5
   10bc8:	49c7a783          	lw	a5,1180(a5) # fffffffffffff49c <__BSS_END__+0xfffffffffffe636c>
   10bcc:	00078713          	mv	a4,a5
   10bd0:	e1000793          	li	a5,-496
   10bd4:	00f70c63          	beq	a4,a5,10bec <main+0xa98>
   10bd8:	000167b7          	lui	a5,0x16
   10bdc:	d1878513          	addi	a0,a5,-744 # 15d18 <__errno+0x442>
   10be0:	1a1020ef          	jal	ra,13580 <puts>
   10be4:	fff00793          	li	a5,-1
   10be8:	7d00206f          	j	133b8 <main+0x3264>
   10bec:	fffff7b7          	lui	a5,0xfffff
   10bf0:	ff040713          	addi	a4,s0,-16
   10bf4:	00f707b3          	add	a5,a4,a5
   10bf8:	4a07a783          	lw	a5,1184(a5) # fffffffffffff4a0 <__BSS_END__+0xfffffffffffe6370>
   10bfc:	00078713          	mv	a4,a5
   10c00:	d7800793          	li	a5,-648
   10c04:	00f70c63          	beq	a4,a5,10c1c <main+0xac8>
   10c08:	000167b7          	lui	a5,0x16
   10c0c:	d3078513          	addi	a0,a5,-720 # 15d30 <__errno+0x45a>
   10c10:	171020ef          	jal	ra,13580 <puts>
   10c14:	fff00793          	li	a5,-1
   10c18:	7a00206f          	j	133b8 <main+0x3264>
   10c1c:	fffff7b7          	lui	a5,0xfffff
   10c20:	ff040713          	addi	a4,s0,-16
   10c24:	00f707b3          	add	a5,a4,a5
   10c28:	4a47a783          	lw	a5,1188(a5) # fffffffffffff4a4 <__BSS_END__+0xfffffffffffe6374>
   10c2c:	00078713          	mv	a4,a5
   10c30:	ce000793          	li	a5,-800
   10c34:	00f70c63          	beq	a4,a5,10c4c <main+0xaf8>
   10c38:	000167b7          	lui	a5,0x16
   10c3c:	d4878513          	addi	a0,a5,-696 # 15d48 <__errno+0x472>
   10c40:	141020ef          	jal	ra,13580 <puts>
   10c44:	fff00793          	li	a5,-1
   10c48:	7700206f          	j	133b8 <main+0x3264>
   10c4c:	fffff7b7          	lui	a5,0xfffff
   10c50:	ff040713          	addi	a4,s0,-16
   10c54:	00f707b3          	add	a5,a4,a5
   10c58:	4a87a783          	lw	a5,1192(a5) # fffffffffffff4a8 <__BSS_END__+0xfffffffffffe6378>
   10c5c:	00078713          	mv	a4,a5
   10c60:	64000793          	li	a5,1600
   10c64:	00f70c63          	beq	a4,a5,10c7c <main+0xb28>
   10c68:	000167b7          	lui	a5,0x16
   10c6c:	d6078513          	addi	a0,a5,-672 # 15d60 <__errno+0x48a>
   10c70:	111020ef          	jal	ra,13580 <puts>
   10c74:	fff00793          	li	a5,-1
   10c78:	7400206f          	j	133b8 <main+0x3264>
   10c7c:	fffff7b7          	lui	a5,0xfffff
   10c80:	ff040713          	addi	a4,s0,-16
   10c84:	00f707b3          	add	a5,a4,a5
   10c88:	4ac7a783          	lw	a5,1196(a5) # fffffffffffff4ac <__BSS_END__+0xfffffffffffe637c>
   10c8c:	00078713          	mv	a4,a5
   10c90:	59800793          	li	a5,1432
   10c94:	00f70c63          	beq	a4,a5,10cac <main+0xb58>
   10c98:	000167b7          	lui	a5,0x16
   10c9c:	d7878513          	addi	a0,a5,-648 # 15d78 <__errno+0x4a2>
   10ca0:	0e1020ef          	jal	ra,13580 <puts>
   10ca4:	fff00793          	li	a5,-1
   10ca8:	7100206f          	j	133b8 <main+0x3264>
   10cac:	fffff7b7          	lui	a5,0xfffff
   10cb0:	ff040713          	addi	a4,s0,-16
   10cb4:	00f707b3          	add	a5,a4,a5
   10cb8:	4b07a783          	lw	a5,1200(a5) # fffffffffffff4b0 <__BSS_END__+0xfffffffffffe6380>
   10cbc:	00078713          	mv	a4,a5
   10cc0:	4f000793          	li	a5,1264
   10cc4:	00f70c63          	beq	a4,a5,10cdc <main+0xb88>
   10cc8:	000167b7          	lui	a5,0x16
   10ccc:	d9078513          	addi	a0,a5,-624 # 15d90 <__errno+0x4ba>
   10cd0:	0b1020ef          	jal	ra,13580 <puts>
   10cd4:	fff00793          	li	a5,-1
   10cd8:	6e00206f          	j	133b8 <main+0x3264>
   10cdc:	fffff7b7          	lui	a5,0xfffff
   10ce0:	ff040713          	addi	a4,s0,-16
   10ce4:	00f707b3          	add	a5,a4,a5
   10ce8:	4b47a783          	lw	a5,1204(a5) # fffffffffffff4b4 <__BSS_END__+0xfffffffffffe6384>
   10cec:	00078713          	mv	a4,a5
   10cf0:	44800793          	li	a5,1096
   10cf4:	00f70c63          	beq	a4,a5,10d0c <main+0xbb8>
   10cf8:	000167b7          	lui	a5,0x16
   10cfc:	da878513          	addi	a0,a5,-600 # 15da8 <__errno+0x4d2>
   10d00:	081020ef          	jal	ra,13580 <puts>
   10d04:	fff00793          	li	a5,-1
   10d08:	6b00206f          	j	133b8 <main+0x3264>
   10d0c:	fffff7b7          	lui	a5,0xfffff
   10d10:	ff040713          	addi	a4,s0,-16
   10d14:	00f707b3          	add	a5,a4,a5
   10d18:	4b87a783          	lw	a5,1208(a5) # fffffffffffff4b8 <__BSS_END__+0xfffffffffffe6388>
   10d1c:	00078713          	mv	a4,a5
   10d20:	3a000793          	li	a5,928
   10d24:	00f70c63          	beq	a4,a5,10d3c <main+0xbe8>
   10d28:	000167b7          	lui	a5,0x16
   10d2c:	dc078513          	addi	a0,a5,-576 # 15dc0 <__errno+0x4ea>
   10d30:	051020ef          	jal	ra,13580 <puts>
   10d34:	fff00793          	li	a5,-1
   10d38:	6800206f          	j	133b8 <main+0x3264>
   10d3c:	fffff7b7          	lui	a5,0xfffff
   10d40:	ff040713          	addi	a4,s0,-16
   10d44:	00f707b3          	add	a5,a4,a5
   10d48:	4bc7a783          	lw	a5,1212(a5) # fffffffffffff4bc <__BSS_END__+0xfffffffffffe638c>
   10d4c:	00078713          	mv	a4,a5
   10d50:	2f800793          	li	a5,760
   10d54:	00f70c63          	beq	a4,a5,10d6c <main+0xc18>
   10d58:	000167b7          	lui	a5,0x16
   10d5c:	dd878513          	addi	a0,a5,-552 # 15dd8 <__errno+0x502>
   10d60:	021020ef          	jal	ra,13580 <puts>
   10d64:	fff00793          	li	a5,-1
   10d68:	6500206f          	j	133b8 <main+0x3264>
   10d6c:	fffff7b7          	lui	a5,0xfffff
   10d70:	ff040713          	addi	a4,s0,-16
   10d74:	00f707b3          	add	a5,a4,a5
   10d78:	4c07a783          	lw	a5,1216(a5) # fffffffffffff4c0 <__BSS_END__+0xfffffffffffe6390>
   10d7c:	00078713          	mv	a4,a5
   10d80:	25000793          	li	a5,592
   10d84:	00f70c63          	beq	a4,a5,10d9c <main+0xc48>
   10d88:	000167b7          	lui	a5,0x16
   10d8c:	df078513          	addi	a0,a5,-528 # 15df0 <__errno+0x51a>
   10d90:	7f0020ef          	jal	ra,13580 <puts>
   10d94:	fff00793          	li	a5,-1
   10d98:	6200206f          	j	133b8 <main+0x3264>
   10d9c:	fffff7b7          	lui	a5,0xfffff
   10da0:	ff040713          	addi	a4,s0,-16
   10da4:	00f707b3          	add	a5,a4,a5
   10da8:	4c47a783          	lw	a5,1220(a5) # fffffffffffff4c4 <__BSS_END__+0xfffffffffffe6394>
   10dac:	00078713          	mv	a4,a5
   10db0:	1a800793          	li	a5,424
   10db4:	00f70c63          	beq	a4,a5,10dcc <main+0xc78>
   10db8:	000167b7          	lui	a5,0x16
   10dbc:	e0878513          	addi	a0,a5,-504 # 15e08 <__errno+0x532>
   10dc0:	7c0020ef          	jal	ra,13580 <puts>
   10dc4:	fff00793          	li	a5,-1
   10dc8:	5f00206f          	j	133b8 <main+0x3264>
   10dcc:	fffff7b7          	lui	a5,0xfffff
   10dd0:	ff040713          	addi	a4,s0,-16
   10dd4:	00f707b3          	add	a5,a4,a5
   10dd8:	4c87a783          	lw	a5,1224(a5) # fffffffffffff4c8 <__BSS_END__+0xfffffffffffe6398>
   10ddc:	00078713          	mv	a4,a5
   10de0:	10000793          	li	a5,256
   10de4:	00f70c63          	beq	a4,a5,10dfc <main+0xca8>
   10de8:	000167b7          	lui	a5,0x16
   10dec:	e2078513          	addi	a0,a5,-480 # 15e20 <__errno+0x54a>
   10df0:	790020ef          	jal	ra,13580 <puts>
   10df4:	fff00793          	li	a5,-1
   10df8:	5c00206f          	j	133b8 <main+0x3264>
   10dfc:	fffff7b7          	lui	a5,0xfffff
   10e00:	ff040713          	addi	a4,s0,-16
   10e04:	00f707b3          	add	a5,a4,a5
   10e08:	4cc7a783          	lw	a5,1228(a5) # fffffffffffff4cc <__BSS_END__+0xfffffffffffe639c>
   10e0c:	00078713          	mv	a4,a5
   10e10:	05800793          	li	a5,88
   10e14:	00f70c63          	beq	a4,a5,10e2c <main+0xcd8>
   10e18:	000167b7          	lui	a5,0x16
   10e1c:	e3878513          	addi	a0,a5,-456 # 15e38 <__errno+0x562>
   10e20:	760020ef          	jal	ra,13580 <puts>
   10e24:	fff00793          	li	a5,-1
   10e28:	5900206f          	j	133b8 <main+0x3264>
   10e2c:	fffff7b7          	lui	a5,0xfffff
   10e30:	ff040713          	addi	a4,s0,-16
   10e34:	00f707b3          	add	a5,a4,a5
   10e38:	4d07a783          	lw	a5,1232(a5) # fffffffffffff4d0 <__BSS_END__+0xfffffffffffe63a0>
   10e3c:	00078713          	mv	a4,a5
   10e40:	fb000793          	li	a5,-80
   10e44:	00f70c63          	beq	a4,a5,10e5c <main+0xd08>
   10e48:	000167b7          	lui	a5,0x16
   10e4c:	e5078513          	addi	a0,a5,-432 # 15e50 <__errno+0x57a>
   10e50:	730020ef          	jal	ra,13580 <puts>
   10e54:	fff00793          	li	a5,-1
   10e58:	5600206f          	j	133b8 <main+0x3264>
   10e5c:	fffff7b7          	lui	a5,0xfffff
   10e60:	ff040713          	addi	a4,s0,-16
   10e64:	00f707b3          	add	a5,a4,a5
   10e68:	4d47a783          	lw	a5,1236(a5) # fffffffffffff4d4 <__BSS_END__+0xfffffffffffe63a4>
   10e6c:	00078713          	mv	a4,a5
   10e70:	f0800793          	li	a5,-248
   10e74:	00f70c63          	beq	a4,a5,10e8c <main+0xd38>
   10e78:	000167b7          	lui	a5,0x16
   10e7c:	e6878513          	addi	a0,a5,-408 # 15e68 <__errno+0x592>
   10e80:	700020ef          	jal	ra,13580 <puts>
   10e84:	fff00793          	li	a5,-1
   10e88:	5300206f          	j	133b8 <main+0x3264>
   10e8c:	fffff7b7          	lui	a5,0xfffff
   10e90:	ff040713          	addi	a4,s0,-16
   10e94:	00f707b3          	add	a5,a4,a5
   10e98:	4d87a783          	lw	a5,1240(a5) # fffffffffffff4d8 <__BSS_END__+0xfffffffffffe63a8>
   10e9c:	00078713          	mv	a4,a5
   10ea0:	e6000793          	li	a5,-416
   10ea4:	00f70c63          	beq	a4,a5,10ebc <main+0xd68>
   10ea8:	000167b7          	lui	a5,0x16
   10eac:	e8078513          	addi	a0,a5,-384 # 15e80 <__errno+0x5aa>
   10eb0:	6d0020ef          	jal	ra,13580 <puts>
   10eb4:	fff00793          	li	a5,-1
   10eb8:	5000206f          	j	133b8 <main+0x3264>
   10ebc:	fffff7b7          	lui	a5,0xfffff
   10ec0:	ff040713          	addi	a4,s0,-16
   10ec4:	00f707b3          	add	a5,a4,a5
   10ec8:	4dc7a783          	lw	a5,1244(a5) # fffffffffffff4dc <__BSS_END__+0xfffffffffffe63ac>
   10ecc:	00078713          	mv	a4,a5
   10ed0:	db800793          	li	a5,-584
   10ed4:	00f70c63          	beq	a4,a5,10eec <main+0xd98>
   10ed8:	000167b7          	lui	a5,0x16
   10edc:	e9878513          	addi	a0,a5,-360 # 15e98 <__errno+0x5c2>
   10ee0:	6a0020ef          	jal	ra,13580 <puts>
   10ee4:	fff00793          	li	a5,-1
   10ee8:	4d00206f          	j	133b8 <main+0x3264>
   10eec:	fffff7b7          	lui	a5,0xfffff
   10ef0:	ff040713          	addi	a4,s0,-16
   10ef4:	00f707b3          	add	a5,a4,a5
   10ef8:	4e07a783          	lw	a5,1248(a5) # fffffffffffff4e0 <__BSS_END__+0xfffffffffffe63b0>
   10efc:	00078713          	mv	a4,a5
   10f00:	d1000793          	li	a5,-752
   10f04:	00f70c63          	beq	a4,a5,10f1c <main+0xdc8>
   10f08:	000167b7          	lui	a5,0x16
   10f0c:	eb078513          	addi	a0,a5,-336 # 15eb0 <__errno+0x5da>
   10f10:	670020ef          	jal	ra,13580 <puts>
   10f14:	fff00793          	li	a5,-1
   10f18:	4a00206f          	j	133b8 <main+0x3264>
   10f1c:	fffff7b7          	lui	a5,0xfffff
   10f20:	ff040713          	addi	a4,s0,-16
   10f24:	00f707b3          	add	a5,a4,a5
   10f28:	4e47a783          	lw	a5,1252(a5) # fffffffffffff4e4 <__BSS_END__+0xfffffffffffe63b4>
   10f2c:	00078713          	mv	a4,a5
   10f30:	c6800793          	li	a5,-920
   10f34:	00f70c63          	beq	a4,a5,10f4c <main+0xdf8>
   10f38:	000167b7          	lui	a5,0x16
   10f3c:	ec878513          	addi	a0,a5,-312 # 15ec8 <__errno+0x5f2>
   10f40:	640020ef          	jal	ra,13580 <puts>
   10f44:	fff00793          	li	a5,-1
   10f48:	4700206f          	j	133b8 <main+0x3264>
   10f4c:	fffff7b7          	lui	a5,0xfffff
   10f50:	ff040713          	addi	a4,s0,-16
   10f54:	00f707b3          	add	a5,a4,a5
   10f58:	4e87a783          	lw	a5,1256(a5) # fffffffffffff4e8 <__BSS_END__+0xfffffffffffe63b8>
   10f5c:	00078713          	mv	a4,a5
   10f60:	6b800793          	li	a5,1720
   10f64:	00f70c63          	beq	a4,a5,10f7c <main+0xe28>
   10f68:	000167b7          	lui	a5,0x16
   10f6c:	ee078513          	addi	a0,a5,-288 # 15ee0 <__errno+0x60a>
   10f70:	610020ef          	jal	ra,13580 <puts>
   10f74:	fff00793          	li	a5,-1
   10f78:	4400206f          	j	133b8 <main+0x3264>
   10f7c:	fffff7b7          	lui	a5,0xfffff
   10f80:	ff040713          	addi	a4,s0,-16
   10f84:	00f707b3          	add	a5,a4,a5
   10f88:	4ec7a783          	lw	a5,1260(a5) # fffffffffffff4ec <__BSS_END__+0xfffffffffffe63bc>
   10f8c:	00078713          	mv	a4,a5
   10f90:	60000793          	li	a5,1536
   10f94:	00f70c63          	beq	a4,a5,10fac <main+0xe58>
   10f98:	000167b7          	lui	a5,0x16
   10f9c:	ef878513          	addi	a0,a5,-264 # 15ef8 <__errno+0x622>
   10fa0:	5e0020ef          	jal	ra,13580 <puts>
   10fa4:	fff00793          	li	a5,-1
   10fa8:	4100206f          	j	133b8 <main+0x3264>
   10fac:	fffff7b7          	lui	a5,0xfffff
   10fb0:	ff040713          	addi	a4,s0,-16
   10fb4:	00f707b3          	add	a5,a4,a5
   10fb8:	4f07a783          	lw	a5,1264(a5) # fffffffffffff4f0 <__BSS_END__+0xfffffffffffe63c0>
   10fbc:	00078713          	mv	a4,a5
   10fc0:	54800793          	li	a5,1352
   10fc4:	00f70c63          	beq	a4,a5,10fdc <main+0xe88>
   10fc8:	000167b7          	lui	a5,0x16
   10fcc:	f1078513          	addi	a0,a5,-240 # 15f10 <__errno+0x63a>
   10fd0:	5b0020ef          	jal	ra,13580 <puts>
   10fd4:	fff00793          	li	a5,-1
   10fd8:	3e00206f          	j	133b8 <main+0x3264>
   10fdc:	fffff7b7          	lui	a5,0xfffff
   10fe0:	ff040713          	addi	a4,s0,-16
   10fe4:	00f707b3          	add	a5,a4,a5
   10fe8:	4f47a783          	lw	a5,1268(a5) # fffffffffffff4f4 <__BSS_END__+0xfffffffffffe63c4>
   10fec:	00078713          	mv	a4,a5
   10ff0:	49000793          	li	a5,1168
   10ff4:	00f70c63          	beq	a4,a5,1100c <main+0xeb8>
   10ff8:	000167b7          	lui	a5,0x16
   10ffc:	f2878513          	addi	a0,a5,-216 # 15f28 <__errno+0x652>
   11000:	580020ef          	jal	ra,13580 <puts>
   11004:	fff00793          	li	a5,-1
   11008:	3b00206f          	j	133b8 <main+0x3264>
   1100c:	fffff7b7          	lui	a5,0xfffff
   11010:	ff040713          	addi	a4,s0,-16
   11014:	00f707b3          	add	a5,a4,a5
   11018:	4f87a783          	lw	a5,1272(a5) # fffffffffffff4f8 <__BSS_END__+0xfffffffffffe63c8>
   1101c:	00078713          	mv	a4,a5
   11020:	3d800793          	li	a5,984
   11024:	00f70c63          	beq	a4,a5,1103c <main+0xee8>
   11028:	000167b7          	lui	a5,0x16
   1102c:	f4078513          	addi	a0,a5,-192 # 15f40 <__errno+0x66a>
   11030:	550020ef          	jal	ra,13580 <puts>
   11034:	fff00793          	li	a5,-1
   11038:	3800206f          	j	133b8 <main+0x3264>
   1103c:	fffff7b7          	lui	a5,0xfffff
   11040:	ff040713          	addi	a4,s0,-16
   11044:	00f707b3          	add	a5,a4,a5
   11048:	4fc7a783          	lw	a5,1276(a5) # fffffffffffff4fc <__BSS_END__+0xfffffffffffe63cc>
   1104c:	00078713          	mv	a4,a5
   11050:	32000793          	li	a5,800
   11054:	00f70c63          	beq	a4,a5,1106c <main+0xf18>
   11058:	000167b7          	lui	a5,0x16
   1105c:	f5878513          	addi	a0,a5,-168 # 15f58 <__errno+0x682>
   11060:	520020ef          	jal	ra,13580 <puts>
   11064:	fff00793          	li	a5,-1
   11068:	3500206f          	j	133b8 <main+0x3264>
   1106c:	fffff7b7          	lui	a5,0xfffff
   11070:	ff040713          	addi	a4,s0,-16
   11074:	00f707b3          	add	a5,a4,a5
   11078:	5007a783          	lw	a5,1280(a5) # fffffffffffff500 <__BSS_END__+0xfffffffffffe63d0>
   1107c:	00078713          	mv	a4,a5
   11080:	26800793          	li	a5,616
   11084:	00f70c63          	beq	a4,a5,1109c <main+0xf48>
   11088:	000167b7          	lui	a5,0x16
   1108c:	f7078513          	addi	a0,a5,-144 # 15f70 <__errno+0x69a>
   11090:	4f0020ef          	jal	ra,13580 <puts>
   11094:	fff00793          	li	a5,-1
   11098:	3200206f          	j	133b8 <main+0x3264>
   1109c:	fffff7b7          	lui	a5,0xfffff
   110a0:	ff040713          	addi	a4,s0,-16
   110a4:	00f707b3          	add	a5,a4,a5
   110a8:	5047a783          	lw	a5,1284(a5) # fffffffffffff504 <__BSS_END__+0xfffffffffffe63d4>
   110ac:	00078713          	mv	a4,a5
   110b0:	1b000793          	li	a5,432
   110b4:	00f70c63          	beq	a4,a5,110cc <main+0xf78>
   110b8:	000167b7          	lui	a5,0x16
   110bc:	f8878513          	addi	a0,a5,-120 # 15f88 <__errno+0x6b2>
   110c0:	4c0020ef          	jal	ra,13580 <puts>
   110c4:	fff00793          	li	a5,-1
   110c8:	2f00206f          	j	133b8 <main+0x3264>
   110cc:	fffff7b7          	lui	a5,0xfffff
   110d0:	ff040713          	addi	a4,s0,-16
   110d4:	00f707b3          	add	a5,a4,a5
   110d8:	5087a783          	lw	a5,1288(a5) # fffffffffffff508 <__BSS_END__+0xfffffffffffe63d8>
   110dc:	00078713          	mv	a4,a5
   110e0:	0f800793          	li	a5,248
   110e4:	00f70c63          	beq	a4,a5,110fc <main+0xfa8>
   110e8:	000167b7          	lui	a5,0x16
   110ec:	fa078513          	addi	a0,a5,-96 # 15fa0 <__errno+0x6ca>
   110f0:	490020ef          	jal	ra,13580 <puts>
   110f4:	fff00793          	li	a5,-1
   110f8:	2c00206f          	j	133b8 <main+0x3264>
   110fc:	fffff7b7          	lui	a5,0xfffff
   11100:	ff040713          	addi	a4,s0,-16
   11104:	00f707b3          	add	a5,a4,a5
   11108:	50c7a783          	lw	a5,1292(a5) # fffffffffffff50c <__BSS_END__+0xfffffffffffe63dc>
   1110c:	00078713          	mv	a4,a5
   11110:	04000793          	li	a5,64
   11114:	00f70c63          	beq	a4,a5,1112c <main+0xfd8>
   11118:	000167b7          	lui	a5,0x16
   1111c:	fb878513          	addi	a0,a5,-72 # 15fb8 <__errno+0x6e2>
   11120:	460020ef          	jal	ra,13580 <puts>
   11124:	fff00793          	li	a5,-1
   11128:	2900206f          	j	133b8 <main+0x3264>
   1112c:	fffff7b7          	lui	a5,0xfffff
   11130:	ff040713          	addi	a4,s0,-16
   11134:	00f707b3          	add	a5,a4,a5
   11138:	5107a783          	lw	a5,1296(a5) # fffffffffffff510 <__BSS_END__+0xfffffffffffe63e0>
   1113c:	00078713          	mv	a4,a5
   11140:	f8800793          	li	a5,-120
   11144:	00f70c63          	beq	a4,a5,1115c <main+0x1008>
   11148:	000167b7          	lui	a5,0x16
   1114c:	fd078513          	addi	a0,a5,-48 # 15fd0 <__errno+0x6fa>
   11150:	430020ef          	jal	ra,13580 <puts>
   11154:	fff00793          	li	a5,-1
   11158:	2600206f          	j	133b8 <main+0x3264>
   1115c:	fffff7b7          	lui	a5,0xfffff
   11160:	ff040713          	addi	a4,s0,-16
   11164:	00f707b3          	add	a5,a4,a5
   11168:	5147a783          	lw	a5,1300(a5) # fffffffffffff514 <__BSS_END__+0xfffffffffffe63e4>
   1116c:	00078713          	mv	a4,a5
   11170:	ed000793          	li	a5,-304
   11174:	00f70c63          	beq	a4,a5,1118c <main+0x1038>
   11178:	000167b7          	lui	a5,0x16
   1117c:	fe878513          	addi	a0,a5,-24 # 15fe8 <__errno+0x712>
   11180:	400020ef          	jal	ra,13580 <puts>
   11184:	fff00793          	li	a5,-1
   11188:	2300206f          	j	133b8 <main+0x3264>
   1118c:	fffff7b7          	lui	a5,0xfffff
   11190:	ff040713          	addi	a4,s0,-16
   11194:	00f707b3          	add	a5,a4,a5
   11198:	5187a783          	lw	a5,1304(a5) # fffffffffffff518 <__BSS_END__+0xfffffffffffe63e8>
   1119c:	00078713          	mv	a4,a5
   111a0:	e1800793          	li	a5,-488
   111a4:	00f70c63          	beq	a4,a5,111bc <main+0x1068>
   111a8:	000167b7          	lui	a5,0x16
   111ac:	00078513          	mv	a0,a5
   111b0:	3d0020ef          	jal	ra,13580 <puts>
   111b4:	fff00793          	li	a5,-1
   111b8:	2000206f          	j	133b8 <main+0x3264>
   111bc:	fffff7b7          	lui	a5,0xfffff
   111c0:	ff040713          	addi	a4,s0,-16
   111c4:	00f707b3          	add	a5,a4,a5
   111c8:	51c7a783          	lw	a5,1308(a5) # fffffffffffff51c <__BSS_END__+0xfffffffffffe63ec>
   111cc:	00078713          	mv	a4,a5
   111d0:	d6000793          	li	a5,-672
   111d4:	00f70c63          	beq	a4,a5,111ec <main+0x1098>
   111d8:	000167b7          	lui	a5,0x16
   111dc:	01878513          	addi	a0,a5,24 # 16018 <__errno+0x742>
   111e0:	3a0020ef          	jal	ra,13580 <puts>
   111e4:	fff00793          	li	a5,-1
   111e8:	1d00206f          	j	133b8 <main+0x3264>
   111ec:	fffff7b7          	lui	a5,0xfffff
   111f0:	ff040713          	addi	a4,s0,-16
   111f4:	00f707b3          	add	a5,a4,a5
   111f8:	5207a783          	lw	a5,1312(a5) # fffffffffffff520 <__BSS_END__+0xfffffffffffe63f0>
   111fc:	00078713          	mv	a4,a5
   11200:	ca800793          	li	a5,-856
   11204:	00f70c63          	beq	a4,a5,1121c <main+0x10c8>
   11208:	000167b7          	lui	a5,0x16
   1120c:	03078513          	addi	a0,a5,48 # 16030 <__errno+0x75a>
   11210:	370020ef          	jal	ra,13580 <puts>
   11214:	fff00793          	li	a5,-1
   11218:	1a00206f          	j	133b8 <main+0x3264>
   1121c:	fffff7b7          	lui	a5,0xfffff
   11220:	ff040713          	addi	a4,s0,-16
   11224:	00f707b3          	add	a5,a4,a5
   11228:	5247a783          	lw	a5,1316(a5) # fffffffffffff524 <__BSS_END__+0xfffffffffffe63f4>
   1122c:	00078713          	mv	a4,a5
   11230:	bf000793          	li	a5,-1040
   11234:	00f70c63          	beq	a4,a5,1124c <main+0x10f8>
   11238:	000167b7          	lui	a5,0x16
   1123c:	04878513          	addi	a0,a5,72 # 16048 <__errno+0x772>
   11240:	340020ef          	jal	ra,13580 <puts>
   11244:	fff00793          	li	a5,-1
   11248:	1700206f          	j	133b8 <main+0x3264>
   1124c:	fffff7b7          	lui	a5,0xfffff
   11250:	ff040713          	addi	a4,s0,-16
   11254:	00f707b3          	add	a5,a4,a5
   11258:	5287a783          	lw	a5,1320(a5) # fffffffffffff528 <__BSS_END__+0xfffffffffffe63f8>
   1125c:	00078713          	mv	a4,a5
   11260:	73000793          	li	a5,1840
   11264:	00f70c63          	beq	a4,a5,1127c <main+0x1128>
   11268:	000167b7          	lui	a5,0x16
   1126c:	06078513          	addi	a0,a5,96 # 16060 <__errno+0x78a>
   11270:	310020ef          	jal	ra,13580 <puts>
   11274:	fff00793          	li	a5,-1
   11278:	1400206f          	j	133b8 <main+0x3264>
   1127c:	fffff7b7          	lui	a5,0xfffff
   11280:	ff040713          	addi	a4,s0,-16
   11284:	00f707b3          	add	a5,a4,a5
   11288:	52c7a783          	lw	a5,1324(a5) # fffffffffffff52c <__BSS_END__+0xfffffffffffe63fc>
   1128c:	00078713          	mv	a4,a5
   11290:	66800793          	li	a5,1640
   11294:	00f70c63          	beq	a4,a5,112ac <main+0x1158>
   11298:	000167b7          	lui	a5,0x16
   1129c:	07878513          	addi	a0,a5,120 # 16078 <__errno+0x7a2>
   112a0:	2e0020ef          	jal	ra,13580 <puts>
   112a4:	fff00793          	li	a5,-1
   112a8:	1100206f          	j	133b8 <main+0x3264>
   112ac:	fffff7b7          	lui	a5,0xfffff
   112b0:	ff040713          	addi	a4,s0,-16
   112b4:	00f707b3          	add	a5,a4,a5
   112b8:	5307a783          	lw	a5,1328(a5) # fffffffffffff530 <__BSS_END__+0xfffffffffffe6400>
   112bc:	00078713          	mv	a4,a5
   112c0:	5a000793          	li	a5,1440
   112c4:	00f70c63          	beq	a4,a5,112dc <main+0x1188>
   112c8:	000167b7          	lui	a5,0x16
   112cc:	09078513          	addi	a0,a5,144 # 16090 <__errno+0x7ba>
   112d0:	2b0020ef          	jal	ra,13580 <puts>
   112d4:	fff00793          	li	a5,-1
   112d8:	0e00206f          	j	133b8 <main+0x3264>
   112dc:	fffff7b7          	lui	a5,0xfffff
   112e0:	ff040713          	addi	a4,s0,-16
   112e4:	00f707b3          	add	a5,a4,a5
   112e8:	5347a783          	lw	a5,1332(a5) # fffffffffffff534 <__BSS_END__+0xfffffffffffe6404>
   112ec:	00078713          	mv	a4,a5
   112f0:	4d800793          	li	a5,1240
   112f4:	00f70c63          	beq	a4,a5,1130c <main+0x11b8>
   112f8:	000167b7          	lui	a5,0x16
   112fc:	0a878513          	addi	a0,a5,168 # 160a8 <__errno+0x7d2>
   11300:	280020ef          	jal	ra,13580 <puts>
   11304:	fff00793          	li	a5,-1
   11308:	0b00206f          	j	133b8 <main+0x3264>
   1130c:	fffff7b7          	lui	a5,0xfffff
   11310:	ff040713          	addi	a4,s0,-16
   11314:	00f707b3          	add	a5,a4,a5
   11318:	5387a783          	lw	a5,1336(a5) # fffffffffffff538 <__BSS_END__+0xfffffffffffe6408>
   1131c:	00078713          	mv	a4,a5
   11320:	41000793          	li	a5,1040
   11324:	00f70c63          	beq	a4,a5,1133c <main+0x11e8>
   11328:	000167b7          	lui	a5,0x16
   1132c:	0c078513          	addi	a0,a5,192 # 160c0 <__errno+0x7ea>
   11330:	250020ef          	jal	ra,13580 <puts>
   11334:	fff00793          	li	a5,-1
   11338:	0800206f          	j	133b8 <main+0x3264>
   1133c:	fffff7b7          	lui	a5,0xfffff
   11340:	ff040713          	addi	a4,s0,-16
   11344:	00f707b3          	add	a5,a4,a5
   11348:	53c7a783          	lw	a5,1340(a5) # fffffffffffff53c <__BSS_END__+0xfffffffffffe640c>
   1134c:	00078713          	mv	a4,a5
   11350:	34800793          	li	a5,840
   11354:	00f70c63          	beq	a4,a5,1136c <main+0x1218>
   11358:	000167b7          	lui	a5,0x16
   1135c:	0d878513          	addi	a0,a5,216 # 160d8 <__errno+0x802>
   11360:	220020ef          	jal	ra,13580 <puts>
   11364:	fff00793          	li	a5,-1
   11368:	0500206f          	j	133b8 <main+0x3264>
   1136c:	fffff7b7          	lui	a5,0xfffff
   11370:	ff040713          	addi	a4,s0,-16
   11374:	00f707b3          	add	a5,a4,a5
   11378:	5407a783          	lw	a5,1344(a5) # fffffffffffff540 <__BSS_END__+0xfffffffffffe6410>
   1137c:	00078713          	mv	a4,a5
   11380:	28000793          	li	a5,640
   11384:	00f70c63          	beq	a4,a5,1139c <main+0x1248>
   11388:	000167b7          	lui	a5,0x16
   1138c:	0f078513          	addi	a0,a5,240 # 160f0 <__errno+0x81a>
   11390:	1f0020ef          	jal	ra,13580 <puts>
   11394:	fff00793          	li	a5,-1
   11398:	0200206f          	j	133b8 <main+0x3264>
   1139c:	fffff7b7          	lui	a5,0xfffff
   113a0:	ff040713          	addi	a4,s0,-16
   113a4:	00f707b3          	add	a5,a4,a5
   113a8:	5447a783          	lw	a5,1348(a5) # fffffffffffff544 <__BSS_END__+0xfffffffffffe6414>
   113ac:	00078713          	mv	a4,a5
   113b0:	1b800793          	li	a5,440
   113b4:	00f70c63          	beq	a4,a5,113cc <main+0x1278>
   113b8:	000167b7          	lui	a5,0x16
   113bc:	10878513          	addi	a0,a5,264 # 16108 <__errno+0x832>
   113c0:	1c0020ef          	jal	ra,13580 <puts>
   113c4:	fff00793          	li	a5,-1
   113c8:	7f10106f          	j	133b8 <main+0x3264>
   113cc:	fffff7b7          	lui	a5,0xfffff
   113d0:	ff040713          	addi	a4,s0,-16
   113d4:	00f707b3          	add	a5,a4,a5
   113d8:	5487a783          	lw	a5,1352(a5) # fffffffffffff548 <__BSS_END__+0xfffffffffffe6418>
   113dc:	00078713          	mv	a4,a5
   113e0:	0f000793          	li	a5,240
   113e4:	00f70c63          	beq	a4,a5,113fc <main+0x12a8>
   113e8:	000167b7          	lui	a5,0x16
   113ec:	12078513          	addi	a0,a5,288 # 16120 <__errno+0x84a>
   113f0:	190020ef          	jal	ra,13580 <puts>
   113f4:	fff00793          	li	a5,-1
   113f8:	7c10106f          	j	133b8 <main+0x3264>
   113fc:	fffff7b7          	lui	a5,0xfffff
   11400:	ff040713          	addi	a4,s0,-16
   11404:	00f707b3          	add	a5,a4,a5
   11408:	54c7a783          	lw	a5,1356(a5) # fffffffffffff54c <__BSS_END__+0xfffffffffffe641c>
   1140c:	00078713          	mv	a4,a5
   11410:	02800793          	li	a5,40
   11414:	00f70c63          	beq	a4,a5,1142c <main+0x12d8>
   11418:	000167b7          	lui	a5,0x16
   1141c:	13878513          	addi	a0,a5,312 # 16138 <__errno+0x862>
   11420:	160020ef          	jal	ra,13580 <puts>
   11424:	fff00793          	li	a5,-1
   11428:	7910106f          	j	133b8 <main+0x3264>
   1142c:	fffff7b7          	lui	a5,0xfffff
   11430:	ff040713          	addi	a4,s0,-16
   11434:	00f707b3          	add	a5,a4,a5
   11438:	5507a783          	lw	a5,1360(a5) # fffffffffffff550 <__BSS_END__+0xfffffffffffe6420>
   1143c:	00078713          	mv	a4,a5
   11440:	f6000793          	li	a5,-160
   11444:	00f70c63          	beq	a4,a5,1145c <main+0x1308>
   11448:	000167b7          	lui	a5,0x16
   1144c:	15078513          	addi	a0,a5,336 # 16150 <__errno+0x87a>
   11450:	130020ef          	jal	ra,13580 <puts>
   11454:	fff00793          	li	a5,-1
   11458:	7610106f          	j	133b8 <main+0x3264>
   1145c:	fffff7b7          	lui	a5,0xfffff
   11460:	ff040713          	addi	a4,s0,-16
   11464:	00f707b3          	add	a5,a4,a5
   11468:	5547a783          	lw	a5,1364(a5) # fffffffffffff554 <__BSS_END__+0xfffffffffffe6424>
   1146c:	00078713          	mv	a4,a5
   11470:	e9800793          	li	a5,-360
   11474:	00f70c63          	beq	a4,a5,1148c <main+0x1338>
   11478:	000167b7          	lui	a5,0x16
   1147c:	16878513          	addi	a0,a5,360 # 16168 <__errno+0x892>
   11480:	100020ef          	jal	ra,13580 <puts>
   11484:	fff00793          	li	a5,-1
   11488:	7310106f          	j	133b8 <main+0x3264>
   1148c:	fffff7b7          	lui	a5,0xfffff
   11490:	ff040713          	addi	a4,s0,-16
   11494:	00f707b3          	add	a5,a4,a5
   11498:	5587a783          	lw	a5,1368(a5) # fffffffffffff558 <__BSS_END__+0xfffffffffffe6428>
   1149c:	00078713          	mv	a4,a5
   114a0:	dd000793          	li	a5,-560
   114a4:	00f70c63          	beq	a4,a5,114bc <main+0x1368>
   114a8:	000167b7          	lui	a5,0x16
   114ac:	18078513          	addi	a0,a5,384 # 16180 <__errno+0x8aa>
   114b0:	0d0020ef          	jal	ra,13580 <puts>
   114b4:	fff00793          	li	a5,-1
   114b8:	7010106f          	j	133b8 <main+0x3264>
   114bc:	fffff7b7          	lui	a5,0xfffff
   114c0:	ff040713          	addi	a4,s0,-16
   114c4:	00f707b3          	add	a5,a4,a5
   114c8:	55c7a783          	lw	a5,1372(a5) # fffffffffffff55c <__BSS_END__+0xfffffffffffe642c>
   114cc:	00078713          	mv	a4,a5
   114d0:	d0800793          	li	a5,-760
   114d4:	00f70c63          	beq	a4,a5,114ec <main+0x1398>
   114d8:	000167b7          	lui	a5,0x16
   114dc:	19878513          	addi	a0,a5,408 # 16198 <__errno+0x8c2>
   114e0:	0a0020ef          	jal	ra,13580 <puts>
   114e4:	fff00793          	li	a5,-1
   114e8:	6d10106f          	j	133b8 <main+0x3264>
   114ec:	fffff7b7          	lui	a5,0xfffff
   114f0:	ff040713          	addi	a4,s0,-16
   114f4:	00f707b3          	add	a5,a4,a5
   114f8:	5607a783          	lw	a5,1376(a5) # fffffffffffff560 <__BSS_END__+0xfffffffffffe6430>
   114fc:	00078713          	mv	a4,a5
   11500:	c4000793          	li	a5,-960
   11504:	00f70c63          	beq	a4,a5,1151c <main+0x13c8>
   11508:	000167b7          	lui	a5,0x16
   1150c:	1b078513          	addi	a0,a5,432 # 161b0 <__errno+0x8da>
   11510:	070020ef          	jal	ra,13580 <puts>
   11514:	fff00793          	li	a5,-1
   11518:	6a10106f          	j	133b8 <main+0x3264>
   1151c:	fffff7b7          	lui	a5,0xfffff
   11520:	ff040713          	addi	a4,s0,-16
   11524:	00f707b3          	add	a5,a4,a5
   11528:	5647a783          	lw	a5,1380(a5) # fffffffffffff564 <__BSS_END__+0xfffffffffffe6434>
   1152c:	00078713          	mv	a4,a5
   11530:	b7800793          	li	a5,-1160
   11534:	00f70c63          	beq	a4,a5,1154c <main+0x13f8>
   11538:	000167b7          	lui	a5,0x16
   1153c:	1c878513          	addi	a0,a5,456 # 161c8 <__errno+0x8f2>
   11540:	040020ef          	jal	ra,13580 <puts>
   11544:	fff00793          	li	a5,-1
   11548:	6710106f          	j	133b8 <main+0x3264>
   1154c:	fffff7b7          	lui	a5,0xfffff
   11550:	ff040713          	addi	a4,s0,-16
   11554:	00f707b3          	add	a5,a4,a5
   11558:	5687a783          	lw	a5,1384(a5) # fffffffffffff568 <__BSS_END__+0xfffffffffffe6438>
   1155c:	00078713          	mv	a4,a5
   11560:	7a800793          	li	a5,1960
   11564:	00f70c63          	beq	a4,a5,1157c <main+0x1428>
   11568:	000167b7          	lui	a5,0x16
   1156c:	1e078513          	addi	a0,a5,480 # 161e0 <__errno+0x90a>
   11570:	010020ef          	jal	ra,13580 <puts>
   11574:	fff00793          	li	a5,-1
   11578:	6410106f          	j	133b8 <main+0x3264>
   1157c:	fffff7b7          	lui	a5,0xfffff
   11580:	ff040713          	addi	a4,s0,-16
   11584:	00f707b3          	add	a5,a4,a5
   11588:	56c7a783          	lw	a5,1388(a5) # fffffffffffff56c <__BSS_END__+0xfffffffffffe643c>
   1158c:	00078713          	mv	a4,a5
   11590:	6d000793          	li	a5,1744
   11594:	00f70c63          	beq	a4,a5,115ac <main+0x1458>
   11598:	000167b7          	lui	a5,0x16
   1159c:	1f878513          	addi	a0,a5,504 # 161f8 <__errno+0x922>
   115a0:	7e1010ef          	jal	ra,13580 <puts>
   115a4:	fff00793          	li	a5,-1
   115a8:	6110106f          	j	133b8 <main+0x3264>
   115ac:	fffff7b7          	lui	a5,0xfffff
   115b0:	ff040713          	addi	a4,s0,-16
   115b4:	00f707b3          	add	a5,a4,a5
   115b8:	5707a783          	lw	a5,1392(a5) # fffffffffffff570 <__BSS_END__+0xfffffffffffe6440>
   115bc:	00078713          	mv	a4,a5
   115c0:	5f800793          	li	a5,1528
   115c4:	00f70c63          	beq	a4,a5,115dc <main+0x1488>
   115c8:	000167b7          	lui	a5,0x16
   115cc:	21078513          	addi	a0,a5,528 # 16210 <__errno+0x93a>
   115d0:	7b1010ef          	jal	ra,13580 <puts>
   115d4:	fff00793          	li	a5,-1
   115d8:	5e10106f          	j	133b8 <main+0x3264>
   115dc:	fffff7b7          	lui	a5,0xfffff
   115e0:	ff040713          	addi	a4,s0,-16
   115e4:	00f707b3          	add	a5,a4,a5
   115e8:	5747a783          	lw	a5,1396(a5) # fffffffffffff574 <__BSS_END__+0xfffffffffffe6444>
   115ec:	00078713          	mv	a4,a5
   115f0:	52000793          	li	a5,1312
   115f4:	00f70c63          	beq	a4,a5,1160c <main+0x14b8>
   115f8:	000167b7          	lui	a5,0x16
   115fc:	22878513          	addi	a0,a5,552 # 16228 <__errno+0x952>
   11600:	781010ef          	jal	ra,13580 <puts>
   11604:	fff00793          	li	a5,-1
   11608:	5b10106f          	j	133b8 <main+0x3264>
   1160c:	fffff7b7          	lui	a5,0xfffff
   11610:	ff040713          	addi	a4,s0,-16
   11614:	00f707b3          	add	a5,a4,a5
   11618:	5787a783          	lw	a5,1400(a5) # fffffffffffff578 <__BSS_END__+0xfffffffffffe6448>
   1161c:	00078713          	mv	a4,a5
   11620:	44800793          	li	a5,1096
   11624:	00f70c63          	beq	a4,a5,1163c <main+0x14e8>
   11628:	000167b7          	lui	a5,0x16
   1162c:	24078513          	addi	a0,a5,576 # 16240 <__errno+0x96a>
   11630:	751010ef          	jal	ra,13580 <puts>
   11634:	fff00793          	li	a5,-1
   11638:	5810106f          	j	133b8 <main+0x3264>
   1163c:	fffff7b7          	lui	a5,0xfffff
   11640:	ff040713          	addi	a4,s0,-16
   11644:	00f707b3          	add	a5,a4,a5
   11648:	57c7a783          	lw	a5,1404(a5) # fffffffffffff57c <__BSS_END__+0xfffffffffffe644c>
   1164c:	00078713          	mv	a4,a5
   11650:	37000793          	li	a5,880
   11654:	00f70c63          	beq	a4,a5,1166c <main+0x1518>
   11658:	000167b7          	lui	a5,0x16
   1165c:	25878513          	addi	a0,a5,600 # 16258 <__errno+0x982>
   11660:	721010ef          	jal	ra,13580 <puts>
   11664:	fff00793          	li	a5,-1
   11668:	5510106f          	j	133b8 <main+0x3264>
   1166c:	fffff7b7          	lui	a5,0xfffff
   11670:	ff040713          	addi	a4,s0,-16
   11674:	00f707b3          	add	a5,a4,a5
   11678:	5807a783          	lw	a5,1408(a5) # fffffffffffff580 <__BSS_END__+0xfffffffffffe6450>
   1167c:	00078713          	mv	a4,a5
   11680:	29800793          	li	a5,664
   11684:	00f70c63          	beq	a4,a5,1169c <main+0x1548>
   11688:	000167b7          	lui	a5,0x16
   1168c:	27078513          	addi	a0,a5,624 # 16270 <__errno+0x99a>
   11690:	6f1010ef          	jal	ra,13580 <puts>
   11694:	fff00793          	li	a5,-1
   11698:	5210106f          	j	133b8 <main+0x3264>
   1169c:	fffff7b7          	lui	a5,0xfffff
   116a0:	ff040713          	addi	a4,s0,-16
   116a4:	00f707b3          	add	a5,a4,a5
   116a8:	5847a783          	lw	a5,1412(a5) # fffffffffffff584 <__BSS_END__+0xfffffffffffe6454>
   116ac:	00078713          	mv	a4,a5
   116b0:	1c000793          	li	a5,448
   116b4:	00f70c63          	beq	a4,a5,116cc <main+0x1578>
   116b8:	000167b7          	lui	a5,0x16
   116bc:	28878513          	addi	a0,a5,648 # 16288 <__errno+0x9b2>
   116c0:	6c1010ef          	jal	ra,13580 <puts>
   116c4:	fff00793          	li	a5,-1
   116c8:	4f10106f          	j	133b8 <main+0x3264>
   116cc:	fffff7b7          	lui	a5,0xfffff
   116d0:	ff040713          	addi	a4,s0,-16
   116d4:	00f707b3          	add	a5,a4,a5
   116d8:	5887a783          	lw	a5,1416(a5) # fffffffffffff588 <__BSS_END__+0xfffffffffffe6458>
   116dc:	00078713          	mv	a4,a5
   116e0:	0e800793          	li	a5,232
   116e4:	00f70c63          	beq	a4,a5,116fc <main+0x15a8>
   116e8:	000167b7          	lui	a5,0x16
   116ec:	2a078513          	addi	a0,a5,672 # 162a0 <__errno+0x9ca>
   116f0:	691010ef          	jal	ra,13580 <puts>
   116f4:	fff00793          	li	a5,-1
   116f8:	4c10106f          	j	133b8 <main+0x3264>
   116fc:	fffff7b7          	lui	a5,0xfffff
   11700:	ff040713          	addi	a4,s0,-16
   11704:	00f707b3          	add	a5,a4,a5
   11708:	58c7a783          	lw	a5,1420(a5) # fffffffffffff58c <__BSS_END__+0xfffffffffffe645c>
   1170c:	00078713          	mv	a4,a5
   11710:	01000793          	li	a5,16
   11714:	00f70c63          	beq	a4,a5,1172c <main+0x15d8>
   11718:	000167b7          	lui	a5,0x16
   1171c:	2b878513          	addi	a0,a5,696 # 162b8 <__errno+0x9e2>
   11720:	661010ef          	jal	ra,13580 <puts>
   11724:	fff00793          	li	a5,-1
   11728:	4910106f          	j	133b8 <main+0x3264>
   1172c:	fffff7b7          	lui	a5,0xfffff
   11730:	ff040713          	addi	a4,s0,-16
   11734:	00f707b3          	add	a5,a4,a5
   11738:	5907a783          	lw	a5,1424(a5) # fffffffffffff590 <__BSS_END__+0xfffffffffffe6460>
   1173c:	00078713          	mv	a4,a5
   11740:	f3800793          	li	a5,-200
   11744:	00f70c63          	beq	a4,a5,1175c <main+0x1608>
   11748:	000167b7          	lui	a5,0x16
   1174c:	2d078513          	addi	a0,a5,720 # 162d0 <__errno+0x9fa>
   11750:	631010ef          	jal	ra,13580 <puts>
   11754:	fff00793          	li	a5,-1
   11758:	4610106f          	j	133b8 <main+0x3264>
   1175c:	fffff7b7          	lui	a5,0xfffff
   11760:	ff040713          	addi	a4,s0,-16
   11764:	00f707b3          	add	a5,a4,a5
   11768:	5947a783          	lw	a5,1428(a5) # fffffffffffff594 <__BSS_END__+0xfffffffffffe6464>
   1176c:	00078713          	mv	a4,a5
   11770:	e6000793          	li	a5,-416
   11774:	00f70c63          	beq	a4,a5,1178c <main+0x1638>
   11778:	000167b7          	lui	a5,0x16
   1177c:	2e878513          	addi	a0,a5,744 # 162e8 <__errno+0xa12>
   11780:	601010ef          	jal	ra,13580 <puts>
   11784:	fff00793          	li	a5,-1
   11788:	4310106f          	j	133b8 <main+0x3264>
   1178c:	fffff7b7          	lui	a5,0xfffff
   11790:	ff040713          	addi	a4,s0,-16
   11794:	00f707b3          	add	a5,a4,a5
   11798:	5987a783          	lw	a5,1432(a5) # fffffffffffff598 <__BSS_END__+0xfffffffffffe6468>
   1179c:	00078713          	mv	a4,a5
   117a0:	d8800793          	li	a5,-632
   117a4:	00f70c63          	beq	a4,a5,117bc <main+0x1668>
   117a8:	000167b7          	lui	a5,0x16
   117ac:	30078513          	addi	a0,a5,768 # 16300 <__errno+0xa2a>
   117b0:	5d1010ef          	jal	ra,13580 <puts>
   117b4:	fff00793          	li	a5,-1
   117b8:	4010106f          	j	133b8 <main+0x3264>
   117bc:	fffff7b7          	lui	a5,0xfffff
   117c0:	ff040713          	addi	a4,s0,-16
   117c4:	00f707b3          	add	a5,a4,a5
   117c8:	59c7a783          	lw	a5,1436(a5) # fffffffffffff59c <__BSS_END__+0xfffffffffffe646c>
   117cc:	00078713          	mv	a4,a5
   117d0:	cb000793          	li	a5,-848
   117d4:	00f70c63          	beq	a4,a5,117ec <main+0x1698>
   117d8:	000167b7          	lui	a5,0x16
   117dc:	31878513          	addi	a0,a5,792 # 16318 <__errno+0xa42>
   117e0:	5a1010ef          	jal	ra,13580 <puts>
   117e4:	fff00793          	li	a5,-1
   117e8:	3d10106f          	j	133b8 <main+0x3264>
   117ec:	fffff7b7          	lui	a5,0xfffff
   117f0:	ff040713          	addi	a4,s0,-16
   117f4:	00f707b3          	add	a5,a4,a5
   117f8:	5a07a783          	lw	a5,1440(a5) # fffffffffffff5a0 <__BSS_END__+0xfffffffffffe6470>
   117fc:	00078713          	mv	a4,a5
   11800:	bd800793          	li	a5,-1064
   11804:	00f70c63          	beq	a4,a5,1181c <main+0x16c8>
   11808:	000167b7          	lui	a5,0x16
   1180c:	33078513          	addi	a0,a5,816 # 16330 <__errno+0xa5a>
   11810:	571010ef          	jal	ra,13580 <puts>
   11814:	fff00793          	li	a5,-1
   11818:	3a10106f          	j	133b8 <main+0x3264>
   1181c:	fffff7b7          	lui	a5,0xfffff
   11820:	ff040713          	addi	a4,s0,-16
   11824:	00f707b3          	add	a5,a4,a5
   11828:	5a47a783          	lw	a5,1444(a5) # fffffffffffff5a4 <__BSS_END__+0xfffffffffffe6474>
   1182c:	00078713          	mv	a4,a5
   11830:	b0000793          	li	a5,-1280
   11834:	00f70c63          	beq	a4,a5,1184c <main+0x16f8>
   11838:	000167b7          	lui	a5,0x16
   1183c:	34878513          	addi	a0,a5,840 # 16348 <__errno+0xa72>
   11840:	541010ef          	jal	ra,13580 <puts>
   11844:	fff00793          	li	a5,-1
   11848:	3710106f          	j	133b8 <main+0x3264>
   1184c:	fffff7b7          	lui	a5,0xfffff
   11850:	ff040713          	addi	a4,s0,-16
   11854:	00f707b3          	add	a5,a4,a5
   11858:	5a87a783          	lw	a5,1448(a5) # fffffffffffff5a8 <__BSS_END__+0xfffffffffffe6478>
   1185c:	00078713          	mv	a4,a5
   11860:	000017b7          	lui	a5,0x1
   11864:	82078793          	addi	a5,a5,-2016 # 820 <register_fini-0xf890>
   11868:	00f70c63          	beq	a4,a5,11880 <main+0x172c>
   1186c:	000167b7          	lui	a5,0x16
   11870:	36078513          	addi	a0,a5,864 # 16360 <__errno+0xa8a>
   11874:	50d010ef          	jal	ra,13580 <puts>
   11878:	fff00793          	li	a5,-1
   1187c:	33d0106f          	j	133b8 <main+0x3264>
   11880:	fffff7b7          	lui	a5,0xfffff
   11884:	ff040713          	addi	a4,s0,-16
   11888:	00f707b3          	add	a5,a4,a5
   1188c:	5ac7a783          	lw	a5,1452(a5) # fffffffffffff5ac <__BSS_END__+0xfffffffffffe647c>
   11890:	00078713          	mv	a4,a5
   11894:	73800793          	li	a5,1848
   11898:	00f70c63          	beq	a4,a5,118b0 <main+0x175c>
   1189c:	000167b7          	lui	a5,0x16
   118a0:	37878513          	addi	a0,a5,888 # 16378 <__errno+0xaa2>
   118a4:	4dd010ef          	jal	ra,13580 <puts>
   118a8:	fff00793          	li	a5,-1
   118ac:	30d0106f          	j	133b8 <main+0x3264>
   118b0:	fffff7b7          	lui	a5,0xfffff
   118b4:	ff040713          	addi	a4,s0,-16
   118b8:	00f707b3          	add	a5,a4,a5
   118bc:	5b07a783          	lw	a5,1456(a5) # fffffffffffff5b0 <__BSS_END__+0xfffffffffffe6480>
   118c0:	00078713          	mv	a4,a5
   118c4:	65000793          	li	a5,1616
   118c8:	00f70c63          	beq	a4,a5,118e0 <main+0x178c>
   118cc:	000167b7          	lui	a5,0x16
   118d0:	39078513          	addi	a0,a5,912 # 16390 <__errno+0xaba>
   118d4:	4ad010ef          	jal	ra,13580 <puts>
   118d8:	fff00793          	li	a5,-1
   118dc:	2dd0106f          	j	133b8 <main+0x3264>
   118e0:	fffff7b7          	lui	a5,0xfffff
   118e4:	ff040713          	addi	a4,s0,-16
   118e8:	00f707b3          	add	a5,a4,a5
   118ec:	5b47a783          	lw	a5,1460(a5) # fffffffffffff5b4 <__BSS_END__+0xfffffffffffe6484>
   118f0:	00078713          	mv	a4,a5
   118f4:	56800793          	li	a5,1384
   118f8:	00f70c63          	beq	a4,a5,11910 <main+0x17bc>
   118fc:	000167b7          	lui	a5,0x16
   11900:	3a878513          	addi	a0,a5,936 # 163a8 <__errno+0xad2>
   11904:	47d010ef          	jal	ra,13580 <puts>
   11908:	fff00793          	li	a5,-1
   1190c:	2ad0106f          	j	133b8 <main+0x3264>
   11910:	fffff7b7          	lui	a5,0xfffff
   11914:	ff040713          	addi	a4,s0,-16
   11918:	00f707b3          	add	a5,a4,a5
   1191c:	5b87a783          	lw	a5,1464(a5) # fffffffffffff5b8 <__BSS_END__+0xfffffffffffe6488>
   11920:	00078713          	mv	a4,a5
   11924:	48000793          	li	a5,1152
   11928:	00f70c63          	beq	a4,a5,11940 <main+0x17ec>
   1192c:	000167b7          	lui	a5,0x16
   11930:	3c078513          	addi	a0,a5,960 # 163c0 <__errno+0xaea>
   11934:	44d010ef          	jal	ra,13580 <puts>
   11938:	fff00793          	li	a5,-1
   1193c:	27d0106f          	j	133b8 <main+0x3264>
   11940:	fffff7b7          	lui	a5,0xfffff
   11944:	ff040713          	addi	a4,s0,-16
   11948:	00f707b3          	add	a5,a4,a5
   1194c:	5bc7a783          	lw	a5,1468(a5) # fffffffffffff5bc <__BSS_END__+0xfffffffffffe648c>
   11950:	00078713          	mv	a4,a5
   11954:	39800793          	li	a5,920
   11958:	00f70c63          	beq	a4,a5,11970 <main+0x181c>
   1195c:	000167b7          	lui	a5,0x16
   11960:	3d878513          	addi	a0,a5,984 # 163d8 <__errno+0xb02>
   11964:	41d010ef          	jal	ra,13580 <puts>
   11968:	fff00793          	li	a5,-1
   1196c:	24d0106f          	j	133b8 <main+0x3264>
   11970:	fffff7b7          	lui	a5,0xfffff
   11974:	ff040713          	addi	a4,s0,-16
   11978:	00f707b3          	add	a5,a4,a5
   1197c:	5c07a783          	lw	a5,1472(a5) # fffffffffffff5c0 <__BSS_END__+0xfffffffffffe6490>
   11980:	00078713          	mv	a4,a5
   11984:	2b000793          	li	a5,688
   11988:	00f70c63          	beq	a4,a5,119a0 <main+0x184c>
   1198c:	000167b7          	lui	a5,0x16
   11990:	3f078513          	addi	a0,a5,1008 # 163f0 <__errno+0xb1a>
   11994:	3ed010ef          	jal	ra,13580 <puts>
   11998:	fff00793          	li	a5,-1
   1199c:	21d0106f          	j	133b8 <main+0x3264>
   119a0:	fffff7b7          	lui	a5,0xfffff
   119a4:	ff040713          	addi	a4,s0,-16
   119a8:	00f707b3          	add	a5,a4,a5
   119ac:	5c47a783          	lw	a5,1476(a5) # fffffffffffff5c4 <__BSS_END__+0xfffffffffffe6494>
   119b0:	00078713          	mv	a4,a5
   119b4:	1c800793          	li	a5,456
   119b8:	00f70c63          	beq	a4,a5,119d0 <main+0x187c>
   119bc:	000167b7          	lui	a5,0x16
   119c0:	40878513          	addi	a0,a5,1032 # 16408 <__errno+0xb32>
   119c4:	3bd010ef          	jal	ra,13580 <puts>
   119c8:	fff00793          	li	a5,-1
   119cc:	1ed0106f          	j	133b8 <main+0x3264>
   119d0:	fffff7b7          	lui	a5,0xfffff
   119d4:	ff040713          	addi	a4,s0,-16
   119d8:	00f707b3          	add	a5,a4,a5
   119dc:	5c87a783          	lw	a5,1480(a5) # fffffffffffff5c8 <__BSS_END__+0xfffffffffffe6498>
   119e0:	00078713          	mv	a4,a5
   119e4:	0e000793          	li	a5,224
   119e8:	00f70c63          	beq	a4,a5,11a00 <main+0x18ac>
   119ec:	000167b7          	lui	a5,0x16
   119f0:	42078513          	addi	a0,a5,1056 # 16420 <__errno+0xb4a>
   119f4:	38d010ef          	jal	ra,13580 <puts>
   119f8:	fff00793          	li	a5,-1
   119fc:	1bd0106f          	j	133b8 <main+0x3264>
   11a00:	fffff7b7          	lui	a5,0xfffff
   11a04:	ff040713          	addi	a4,s0,-16
   11a08:	00f707b3          	add	a5,a4,a5
   11a0c:	5cc7a783          	lw	a5,1484(a5) # fffffffffffff5cc <__BSS_END__+0xfffffffffffe649c>
   11a10:	00078713          	mv	a4,a5
   11a14:	ff800793          	li	a5,-8
   11a18:	00f70c63          	beq	a4,a5,11a30 <main+0x18dc>
   11a1c:	000167b7          	lui	a5,0x16
   11a20:	43878513          	addi	a0,a5,1080 # 16438 <__errno+0xb62>
   11a24:	35d010ef          	jal	ra,13580 <puts>
   11a28:	fff00793          	li	a5,-1
   11a2c:	18d0106f          	j	133b8 <main+0x3264>
   11a30:	fffff7b7          	lui	a5,0xfffff
   11a34:	ff040713          	addi	a4,s0,-16
   11a38:	00f707b3          	add	a5,a4,a5
   11a3c:	5d07a783          	lw	a5,1488(a5) # fffffffffffff5d0 <__BSS_END__+0xfffffffffffe64a0>
   11a40:	00078713          	mv	a4,a5
   11a44:	f1000793          	li	a5,-240
   11a48:	00f70c63          	beq	a4,a5,11a60 <main+0x190c>
   11a4c:	000167b7          	lui	a5,0x16
   11a50:	45078513          	addi	a0,a5,1104 # 16450 <__errno+0xb7a>
   11a54:	32d010ef          	jal	ra,13580 <puts>
   11a58:	fff00793          	li	a5,-1
   11a5c:	15d0106f          	j	133b8 <main+0x3264>
   11a60:	fffff7b7          	lui	a5,0xfffff
   11a64:	ff040713          	addi	a4,s0,-16
   11a68:	00f707b3          	add	a5,a4,a5
   11a6c:	5d47a783          	lw	a5,1492(a5) # fffffffffffff5d4 <__BSS_END__+0xfffffffffffe64a4>
   11a70:	00078713          	mv	a4,a5
   11a74:	e2800793          	li	a5,-472
   11a78:	00f70c63          	beq	a4,a5,11a90 <main+0x193c>
   11a7c:	000167b7          	lui	a5,0x16
   11a80:	46878513          	addi	a0,a5,1128 # 16468 <__errno+0xb92>
   11a84:	2fd010ef          	jal	ra,13580 <puts>
   11a88:	fff00793          	li	a5,-1
   11a8c:	12d0106f          	j	133b8 <main+0x3264>
   11a90:	fffff7b7          	lui	a5,0xfffff
   11a94:	ff040713          	addi	a4,s0,-16
   11a98:	00f707b3          	add	a5,a4,a5
   11a9c:	5d87a783          	lw	a5,1496(a5) # fffffffffffff5d8 <__BSS_END__+0xfffffffffffe64a8>
   11aa0:	00078713          	mv	a4,a5
   11aa4:	d4000793          	li	a5,-704
   11aa8:	00f70c63          	beq	a4,a5,11ac0 <main+0x196c>
   11aac:	000167b7          	lui	a5,0x16
   11ab0:	48078513          	addi	a0,a5,1152 # 16480 <__errno+0xbaa>
   11ab4:	2cd010ef          	jal	ra,13580 <puts>
   11ab8:	fff00793          	li	a5,-1
   11abc:	0fd0106f          	j	133b8 <main+0x3264>
   11ac0:	fffff7b7          	lui	a5,0xfffff
   11ac4:	ff040713          	addi	a4,s0,-16
   11ac8:	00f707b3          	add	a5,a4,a5
   11acc:	5dc7a783          	lw	a5,1500(a5) # fffffffffffff5dc <__BSS_END__+0xfffffffffffe64ac>
   11ad0:	00078713          	mv	a4,a5
   11ad4:	c5800793          	li	a5,-936
   11ad8:	00f70c63          	beq	a4,a5,11af0 <main+0x199c>
   11adc:	000167b7          	lui	a5,0x16
   11ae0:	49878513          	addi	a0,a5,1176 # 16498 <__errno+0xbc2>
   11ae4:	29d010ef          	jal	ra,13580 <puts>
   11ae8:	fff00793          	li	a5,-1
   11aec:	0cd0106f          	j	133b8 <main+0x3264>
   11af0:	fffff7b7          	lui	a5,0xfffff
   11af4:	ff040713          	addi	a4,s0,-16
   11af8:	00f707b3          	add	a5,a4,a5
   11afc:	5e07a783          	lw	a5,1504(a5) # fffffffffffff5e0 <__BSS_END__+0xfffffffffffe64b0>
   11b00:	00078713          	mv	a4,a5
   11b04:	b7000793          	li	a5,-1168
   11b08:	00f70c63          	beq	a4,a5,11b20 <main+0x19cc>
   11b0c:	000167b7          	lui	a5,0x16
   11b10:	4b078513          	addi	a0,a5,1200 # 164b0 <__errno+0xbda>
   11b14:	26d010ef          	jal	ra,13580 <puts>
   11b18:	fff00793          	li	a5,-1
   11b1c:	09d0106f          	j	133b8 <main+0x3264>
   11b20:	fffff7b7          	lui	a5,0xfffff
   11b24:	ff040713          	addi	a4,s0,-16
   11b28:	00f707b3          	add	a5,a4,a5
   11b2c:	5e47a783          	lw	a5,1508(a5) # fffffffffffff5e4 <__BSS_END__+0xfffffffffffe64b4>
   11b30:	00078713          	mv	a4,a5
   11b34:	a8800793          	li	a5,-1400
   11b38:	00f70c63          	beq	a4,a5,11b50 <main+0x19fc>
   11b3c:	000167b7          	lui	a5,0x16
   11b40:	4c878513          	addi	a0,a5,1224 # 164c8 <__errno+0xbf2>
   11b44:	23d010ef          	jal	ra,13580 <puts>
   11b48:	fff00793          	li	a5,-1
   11b4c:	06d0106f          	j	133b8 <main+0x3264>
   11b50:	fffff7b7          	lui	a5,0xfffff
   11b54:	ff040713          	addi	a4,s0,-16
   11b58:	00f707b3          	add	a5,a4,a5
   11b5c:	5e87a783          	lw	a5,1512(a5) # fffffffffffff5e8 <__BSS_END__+0xfffffffffffe64b8>
   11b60:	00078713          	mv	a4,a5
   11b64:	000017b7          	lui	a5,0x1
   11b68:	89878793          	addi	a5,a5,-1896 # 898 <register_fini-0xf818>
   11b6c:	00f70c63          	beq	a4,a5,11b84 <main+0x1a30>
   11b70:	000167b7          	lui	a5,0x16
   11b74:	4e078513          	addi	a0,a5,1248 # 164e0 <__errno+0xc0a>
   11b78:	209010ef          	jal	ra,13580 <puts>
   11b7c:	fff00793          	li	a5,-1
   11b80:	0390106f          	j	133b8 <main+0x3264>
   11b84:	fffff7b7          	lui	a5,0xfffff
   11b88:	ff040713          	addi	a4,s0,-16
   11b8c:	00f707b3          	add	a5,a4,a5
   11b90:	5ec7a783          	lw	a5,1516(a5) # fffffffffffff5ec <__BSS_END__+0xfffffffffffe64bc>
   11b94:	00078713          	mv	a4,a5
   11b98:	7a000793          	li	a5,1952
   11b9c:	00f70c63          	beq	a4,a5,11bb4 <main+0x1a60>
   11ba0:	000167b7          	lui	a5,0x16
   11ba4:	4f878513          	addi	a0,a5,1272 # 164f8 <__errno+0xc22>
   11ba8:	1d9010ef          	jal	ra,13580 <puts>
   11bac:	fff00793          	li	a5,-1
   11bb0:	0090106f          	j	133b8 <main+0x3264>
   11bb4:	fffff7b7          	lui	a5,0xfffff
   11bb8:	ff040713          	addi	a4,s0,-16
   11bbc:	00f707b3          	add	a5,a4,a5
   11bc0:	5f07a783          	lw	a5,1520(a5) # fffffffffffff5f0 <__BSS_END__+0xfffffffffffe64c0>
   11bc4:	00078713          	mv	a4,a5
   11bc8:	6a800793          	li	a5,1704
   11bcc:	00f70c63          	beq	a4,a5,11be4 <main+0x1a90>
   11bd0:	000167b7          	lui	a5,0x16
   11bd4:	51078513          	addi	a0,a5,1296 # 16510 <__errno+0xc3a>
   11bd8:	1a9010ef          	jal	ra,13580 <puts>
   11bdc:	fff00793          	li	a5,-1
   11be0:	7d80106f          	j	133b8 <main+0x3264>
   11be4:	fffff7b7          	lui	a5,0xfffff
   11be8:	ff040713          	addi	a4,s0,-16
   11bec:	00f707b3          	add	a5,a4,a5
   11bf0:	5f47a783          	lw	a5,1524(a5) # fffffffffffff5f4 <__BSS_END__+0xfffffffffffe64c4>
   11bf4:	00078713          	mv	a4,a5
   11bf8:	5b000793          	li	a5,1456
   11bfc:	00f70c63          	beq	a4,a5,11c14 <main+0x1ac0>
   11c00:	000167b7          	lui	a5,0x16
   11c04:	52878513          	addi	a0,a5,1320 # 16528 <__errno+0xc52>
   11c08:	179010ef          	jal	ra,13580 <puts>
   11c0c:	fff00793          	li	a5,-1
   11c10:	7a80106f          	j	133b8 <main+0x3264>
   11c14:	fffff7b7          	lui	a5,0xfffff
   11c18:	ff040713          	addi	a4,s0,-16
   11c1c:	00f707b3          	add	a5,a4,a5
   11c20:	5f87a783          	lw	a5,1528(a5) # fffffffffffff5f8 <__BSS_END__+0xfffffffffffe64c8>
   11c24:	00078713          	mv	a4,a5
   11c28:	4b800793          	li	a5,1208
   11c2c:	00f70c63          	beq	a4,a5,11c44 <main+0x1af0>
   11c30:	000167b7          	lui	a5,0x16
   11c34:	54078513          	addi	a0,a5,1344 # 16540 <__errno+0xc6a>
   11c38:	149010ef          	jal	ra,13580 <puts>
   11c3c:	fff00793          	li	a5,-1
   11c40:	7780106f          	j	133b8 <main+0x3264>
   11c44:	fffff7b7          	lui	a5,0xfffff
   11c48:	ff040713          	addi	a4,s0,-16
   11c4c:	00f707b3          	add	a5,a4,a5
   11c50:	5fc7a783          	lw	a5,1532(a5) # fffffffffffff5fc <__BSS_END__+0xfffffffffffe64cc>
   11c54:	00078713          	mv	a4,a5
   11c58:	3c000793          	li	a5,960
   11c5c:	00f70c63          	beq	a4,a5,11c74 <main+0x1b20>
   11c60:	000167b7          	lui	a5,0x16
   11c64:	55878513          	addi	a0,a5,1368 # 16558 <__errno+0xc82>
   11c68:	119010ef          	jal	ra,13580 <puts>
   11c6c:	fff00793          	li	a5,-1
   11c70:	7480106f          	j	133b8 <main+0x3264>
   11c74:	fffff7b7          	lui	a5,0xfffff
   11c78:	ff040713          	addi	a4,s0,-16
   11c7c:	00f707b3          	add	a5,a4,a5
   11c80:	6007a783          	lw	a5,1536(a5) # fffffffffffff600 <__BSS_END__+0xfffffffffffe64d0>
   11c84:	00078713          	mv	a4,a5
   11c88:	2c800793          	li	a5,712
   11c8c:	00f70c63          	beq	a4,a5,11ca4 <main+0x1b50>
   11c90:	000167b7          	lui	a5,0x16
   11c94:	57078513          	addi	a0,a5,1392 # 16570 <__errno+0xc9a>
   11c98:	0e9010ef          	jal	ra,13580 <puts>
   11c9c:	fff00793          	li	a5,-1
   11ca0:	7180106f          	j	133b8 <main+0x3264>
   11ca4:	fffff7b7          	lui	a5,0xfffff
   11ca8:	ff040713          	addi	a4,s0,-16
   11cac:	00f707b3          	add	a5,a4,a5
   11cb0:	6047a783          	lw	a5,1540(a5) # fffffffffffff604 <__BSS_END__+0xfffffffffffe64d4>
   11cb4:	00078713          	mv	a4,a5
   11cb8:	1d000793          	li	a5,464
   11cbc:	00f70c63          	beq	a4,a5,11cd4 <main+0x1b80>
   11cc0:	000167b7          	lui	a5,0x16
   11cc4:	58878513          	addi	a0,a5,1416 # 16588 <__errno+0xcb2>
   11cc8:	0b9010ef          	jal	ra,13580 <puts>
   11ccc:	fff00793          	li	a5,-1
   11cd0:	6e80106f          	j	133b8 <main+0x3264>
   11cd4:	fffff7b7          	lui	a5,0xfffff
   11cd8:	ff040713          	addi	a4,s0,-16
   11cdc:	00f707b3          	add	a5,a4,a5
   11ce0:	6087a783          	lw	a5,1544(a5) # fffffffffffff608 <__BSS_END__+0xfffffffffffe64d8>
   11ce4:	00078713          	mv	a4,a5
   11ce8:	0d800793          	li	a5,216
   11cec:	00f70c63          	beq	a4,a5,11d04 <main+0x1bb0>
   11cf0:	000167b7          	lui	a5,0x16
   11cf4:	5a078513          	addi	a0,a5,1440 # 165a0 <__errno+0xcca>
   11cf8:	089010ef          	jal	ra,13580 <puts>
   11cfc:	fff00793          	li	a5,-1
   11d00:	6b80106f          	j	133b8 <main+0x3264>
   11d04:	fffff7b7          	lui	a5,0xfffff
   11d08:	ff040713          	addi	a4,s0,-16
   11d0c:	00f707b3          	add	a5,a4,a5
   11d10:	60c7a783          	lw	a5,1548(a5) # fffffffffffff60c <__BSS_END__+0xfffffffffffe64dc>
   11d14:	00078713          	mv	a4,a5
   11d18:	fe000793          	li	a5,-32
   11d1c:	00f70c63          	beq	a4,a5,11d34 <main+0x1be0>
   11d20:	000167b7          	lui	a5,0x16
   11d24:	5b878513          	addi	a0,a5,1464 # 165b8 <__errno+0xce2>
   11d28:	059010ef          	jal	ra,13580 <puts>
   11d2c:	fff00793          	li	a5,-1
   11d30:	6880106f          	j	133b8 <main+0x3264>
   11d34:	fffff7b7          	lui	a5,0xfffff
   11d38:	ff040713          	addi	a4,s0,-16
   11d3c:	00f707b3          	add	a5,a4,a5
   11d40:	6107a783          	lw	a5,1552(a5) # fffffffffffff610 <__BSS_END__+0xfffffffffffe64e0>
   11d44:	00078713          	mv	a4,a5
   11d48:	ee800793          	li	a5,-280
   11d4c:	00f70c63          	beq	a4,a5,11d64 <main+0x1c10>
   11d50:	000167b7          	lui	a5,0x16
   11d54:	5d078513          	addi	a0,a5,1488 # 165d0 <__errno+0xcfa>
   11d58:	029010ef          	jal	ra,13580 <puts>
   11d5c:	fff00793          	li	a5,-1
   11d60:	6580106f          	j	133b8 <main+0x3264>
   11d64:	fffff7b7          	lui	a5,0xfffff
   11d68:	ff040713          	addi	a4,s0,-16
   11d6c:	00f707b3          	add	a5,a4,a5
   11d70:	6147a783          	lw	a5,1556(a5) # fffffffffffff614 <__BSS_END__+0xfffffffffffe64e4>
   11d74:	00078713          	mv	a4,a5
   11d78:	df000793          	li	a5,-528
   11d7c:	00f70c63          	beq	a4,a5,11d94 <main+0x1c40>
   11d80:	000167b7          	lui	a5,0x16
   11d84:	5e878513          	addi	a0,a5,1512 # 165e8 <__errno+0xd12>
   11d88:	7f8010ef          	jal	ra,13580 <puts>
   11d8c:	fff00793          	li	a5,-1
   11d90:	6280106f          	j	133b8 <main+0x3264>
   11d94:	fffff7b7          	lui	a5,0xfffff
   11d98:	ff040713          	addi	a4,s0,-16
   11d9c:	00f707b3          	add	a5,a4,a5
   11da0:	6187a783          	lw	a5,1560(a5) # fffffffffffff618 <__BSS_END__+0xfffffffffffe64e8>
   11da4:	00078713          	mv	a4,a5
   11da8:	cf800793          	li	a5,-776
   11dac:	00f70c63          	beq	a4,a5,11dc4 <main+0x1c70>
   11db0:	000167b7          	lui	a5,0x16
   11db4:	60078513          	addi	a0,a5,1536 # 16600 <__errno+0xd2a>
   11db8:	7c8010ef          	jal	ra,13580 <puts>
   11dbc:	fff00793          	li	a5,-1
   11dc0:	5f80106f          	j	133b8 <main+0x3264>
   11dc4:	fffff7b7          	lui	a5,0xfffff
   11dc8:	ff040713          	addi	a4,s0,-16
   11dcc:	00f707b3          	add	a5,a4,a5
   11dd0:	61c7a783          	lw	a5,1564(a5) # fffffffffffff61c <__BSS_END__+0xfffffffffffe64ec>
   11dd4:	00078713          	mv	a4,a5
   11dd8:	c0000793          	li	a5,-1024
   11ddc:	00f70c63          	beq	a4,a5,11df4 <main+0x1ca0>
   11de0:	000167b7          	lui	a5,0x16
   11de4:	61878513          	addi	a0,a5,1560 # 16618 <__errno+0xd42>
   11de8:	798010ef          	jal	ra,13580 <puts>
   11dec:	fff00793          	li	a5,-1
   11df0:	5c80106f          	j	133b8 <main+0x3264>
   11df4:	fffff7b7          	lui	a5,0xfffff
   11df8:	ff040713          	addi	a4,s0,-16
   11dfc:	00f707b3          	add	a5,a4,a5
   11e00:	6207a783          	lw	a5,1568(a5) # fffffffffffff620 <__BSS_END__+0xfffffffffffe64f0>
   11e04:	00078713          	mv	a4,a5
   11e08:	b0800793          	li	a5,-1272
   11e0c:	00f70c63          	beq	a4,a5,11e24 <main+0x1cd0>
   11e10:	000167b7          	lui	a5,0x16
   11e14:	63078513          	addi	a0,a5,1584 # 16630 <__errno+0xd5a>
   11e18:	768010ef          	jal	ra,13580 <puts>
   11e1c:	fff00793          	li	a5,-1
   11e20:	5980106f          	j	133b8 <main+0x3264>
   11e24:	fffff7b7          	lui	a5,0xfffff
   11e28:	ff040713          	addi	a4,s0,-16
   11e2c:	00f707b3          	add	a5,a4,a5
   11e30:	6247a783          	lw	a5,1572(a5) # fffffffffffff624 <__BSS_END__+0xfffffffffffe64f4>
   11e34:	00078713          	mv	a4,a5
   11e38:	a1000793          	li	a5,-1520
   11e3c:	00f70c63          	beq	a4,a5,11e54 <main+0x1d00>
   11e40:	000167b7          	lui	a5,0x16
   11e44:	64878513          	addi	a0,a5,1608 # 16648 <__errno+0xd72>
   11e48:	738010ef          	jal	ra,13580 <puts>
   11e4c:	fff00793          	li	a5,-1
   11e50:	5680106f          	j	133b8 <main+0x3264>
   11e54:	fffff7b7          	lui	a5,0xfffff
   11e58:	ff040713          	addi	a4,s0,-16
   11e5c:	00f707b3          	add	a5,a4,a5
   11e60:	6287a783          	lw	a5,1576(a5) # fffffffffffff628 <__BSS_END__+0xfffffffffffe64f8>
   11e64:	00078713          	mv	a4,a5
   11e68:	000017b7          	lui	a5,0x1
   11e6c:	91078793          	addi	a5,a5,-1776 # 910 <register_fini-0xf7a0>
   11e70:	00f70c63          	beq	a4,a5,11e88 <main+0x1d34>
   11e74:	000167b7          	lui	a5,0x16
   11e78:	66078513          	addi	a0,a5,1632 # 16660 <__errno+0xd8a>
   11e7c:	704010ef          	jal	ra,13580 <puts>
   11e80:	fff00793          	li	a5,-1
   11e84:	5340106f          	j	133b8 <main+0x3264>
   11e88:	fffff7b7          	lui	a5,0xfffff
   11e8c:	ff040713          	addi	a4,s0,-16
   11e90:	00f707b3          	add	a5,a4,a5
   11e94:	62c7a783          	lw	a5,1580(a5) # fffffffffffff62c <__BSS_END__+0xfffffffffffe64fc>
   11e98:	00078713          	mv	a4,a5
   11e9c:	000017b7          	lui	a5,0x1
   11ea0:	80878793          	addi	a5,a5,-2040 # 808 <register_fini-0xf8a8>
   11ea4:	00f70c63          	beq	a4,a5,11ebc <main+0x1d68>
   11ea8:	000167b7          	lui	a5,0x16
   11eac:	67878513          	addi	a0,a5,1656 # 16678 <__errno+0xda2>
   11eb0:	6d0010ef          	jal	ra,13580 <puts>
   11eb4:	fff00793          	li	a5,-1
   11eb8:	5000106f          	j	133b8 <main+0x3264>
   11ebc:	fffff7b7          	lui	a5,0xfffff
   11ec0:	ff040713          	addi	a4,s0,-16
   11ec4:	00f707b3          	add	a5,a4,a5
   11ec8:	6307a783          	lw	a5,1584(a5) # fffffffffffff630 <__BSS_END__+0xfffffffffffe6500>
   11ecc:	00078713          	mv	a4,a5
   11ed0:	70000793          	li	a5,1792
   11ed4:	00f70c63          	beq	a4,a5,11eec <main+0x1d98>
   11ed8:	000167b7          	lui	a5,0x16
   11edc:	69078513          	addi	a0,a5,1680 # 16690 <__errno+0xdba>
   11ee0:	6a0010ef          	jal	ra,13580 <puts>
   11ee4:	fff00793          	li	a5,-1
   11ee8:	4d00106f          	j	133b8 <main+0x3264>
   11eec:	fffff7b7          	lui	a5,0xfffff
   11ef0:	ff040713          	addi	a4,s0,-16
   11ef4:	00f707b3          	add	a5,a4,a5
   11ef8:	6347a783          	lw	a5,1588(a5) # fffffffffffff634 <__BSS_END__+0xfffffffffffe6504>
   11efc:	00078713          	mv	a4,a5
   11f00:	5f800793          	li	a5,1528
   11f04:	00f70c63          	beq	a4,a5,11f1c <main+0x1dc8>
   11f08:	000167b7          	lui	a5,0x16
   11f0c:	6a878513          	addi	a0,a5,1704 # 166a8 <__errno+0xdd2>
   11f10:	670010ef          	jal	ra,13580 <puts>
   11f14:	fff00793          	li	a5,-1
   11f18:	4a00106f          	j	133b8 <main+0x3264>
   11f1c:	fffff7b7          	lui	a5,0xfffff
   11f20:	ff040713          	addi	a4,s0,-16
   11f24:	00f707b3          	add	a5,a4,a5
   11f28:	6387a783          	lw	a5,1592(a5) # fffffffffffff638 <__BSS_END__+0xfffffffffffe6508>
   11f2c:	00078713          	mv	a4,a5
   11f30:	4f000793          	li	a5,1264
   11f34:	00f70c63          	beq	a4,a5,11f4c <main+0x1df8>
   11f38:	000167b7          	lui	a5,0x16
   11f3c:	6c078513          	addi	a0,a5,1728 # 166c0 <__errno+0xdea>
   11f40:	640010ef          	jal	ra,13580 <puts>
   11f44:	fff00793          	li	a5,-1
   11f48:	4700106f          	j	133b8 <main+0x3264>
   11f4c:	fffff7b7          	lui	a5,0xfffff
   11f50:	ff040713          	addi	a4,s0,-16
   11f54:	00f707b3          	add	a5,a4,a5
   11f58:	63c7a783          	lw	a5,1596(a5) # fffffffffffff63c <__BSS_END__+0xfffffffffffe650c>
   11f5c:	00078713          	mv	a4,a5
   11f60:	3e800793          	li	a5,1000
   11f64:	00f70c63          	beq	a4,a5,11f7c <main+0x1e28>
   11f68:	000167b7          	lui	a5,0x16
   11f6c:	6d878513          	addi	a0,a5,1752 # 166d8 <__errno+0xe02>
   11f70:	610010ef          	jal	ra,13580 <puts>
   11f74:	fff00793          	li	a5,-1
   11f78:	4400106f          	j	133b8 <main+0x3264>
   11f7c:	fffff7b7          	lui	a5,0xfffff
   11f80:	ff040713          	addi	a4,s0,-16
   11f84:	00f707b3          	add	a5,a4,a5
   11f88:	6407a783          	lw	a5,1600(a5) # fffffffffffff640 <__BSS_END__+0xfffffffffffe6510>
   11f8c:	00078713          	mv	a4,a5
   11f90:	2e000793          	li	a5,736
   11f94:	00f70c63          	beq	a4,a5,11fac <main+0x1e58>
   11f98:	000167b7          	lui	a5,0x16
   11f9c:	6f078513          	addi	a0,a5,1776 # 166f0 <__errno+0xe1a>
   11fa0:	5e0010ef          	jal	ra,13580 <puts>
   11fa4:	fff00793          	li	a5,-1
   11fa8:	4100106f          	j	133b8 <main+0x3264>
   11fac:	fffff7b7          	lui	a5,0xfffff
   11fb0:	ff040713          	addi	a4,s0,-16
   11fb4:	00f707b3          	add	a5,a4,a5
   11fb8:	6447a783          	lw	a5,1604(a5) # fffffffffffff644 <__BSS_END__+0xfffffffffffe6514>
   11fbc:	00078713          	mv	a4,a5
   11fc0:	1d800793          	li	a5,472
   11fc4:	00f70c63          	beq	a4,a5,11fdc <main+0x1e88>
   11fc8:	000167b7          	lui	a5,0x16
   11fcc:	70878513          	addi	a0,a5,1800 # 16708 <__errno+0xe32>
   11fd0:	5b0010ef          	jal	ra,13580 <puts>
   11fd4:	fff00793          	li	a5,-1
   11fd8:	3e00106f          	j	133b8 <main+0x3264>
   11fdc:	fffff7b7          	lui	a5,0xfffff
   11fe0:	ff040713          	addi	a4,s0,-16
   11fe4:	00f707b3          	add	a5,a4,a5
   11fe8:	6487a783          	lw	a5,1608(a5) # fffffffffffff648 <__BSS_END__+0xfffffffffffe6518>
   11fec:	00078713          	mv	a4,a5
   11ff0:	0d000793          	li	a5,208
   11ff4:	00f70c63          	beq	a4,a5,1200c <main+0x1eb8>
   11ff8:	000167b7          	lui	a5,0x16
   11ffc:	72078513          	addi	a0,a5,1824 # 16720 <__errno+0xe4a>
   12000:	580010ef          	jal	ra,13580 <puts>
   12004:	fff00793          	li	a5,-1
   12008:	3b00106f          	j	133b8 <main+0x3264>
   1200c:	fffff7b7          	lui	a5,0xfffff
   12010:	ff040713          	addi	a4,s0,-16
   12014:	00f707b3          	add	a5,a4,a5
   12018:	64c7a783          	lw	a5,1612(a5) # fffffffffffff64c <__BSS_END__+0xfffffffffffe651c>
   1201c:	00078713          	mv	a4,a5
   12020:	fc800793          	li	a5,-56
   12024:	00f70c63          	beq	a4,a5,1203c <main+0x1ee8>
   12028:	000167b7          	lui	a5,0x16
   1202c:	73878513          	addi	a0,a5,1848 # 16738 <__errno+0xe62>
   12030:	550010ef          	jal	ra,13580 <puts>
   12034:	fff00793          	li	a5,-1
   12038:	3800106f          	j	133b8 <main+0x3264>
   1203c:	fffff7b7          	lui	a5,0xfffff
   12040:	ff040713          	addi	a4,s0,-16
   12044:	00f707b3          	add	a5,a4,a5
   12048:	6507a783          	lw	a5,1616(a5) # fffffffffffff650 <__BSS_END__+0xfffffffffffe6520>
   1204c:	00078713          	mv	a4,a5
   12050:	ec000793          	li	a5,-320
   12054:	00f70c63          	beq	a4,a5,1206c <main+0x1f18>
   12058:	000167b7          	lui	a5,0x16
   1205c:	75078513          	addi	a0,a5,1872 # 16750 <__errno+0xe7a>
   12060:	520010ef          	jal	ra,13580 <puts>
   12064:	fff00793          	li	a5,-1
   12068:	3500106f          	j	133b8 <main+0x3264>
   1206c:	fffff7b7          	lui	a5,0xfffff
   12070:	ff040713          	addi	a4,s0,-16
   12074:	00f707b3          	add	a5,a4,a5
   12078:	6547a783          	lw	a5,1620(a5) # fffffffffffff654 <__BSS_END__+0xfffffffffffe6524>
   1207c:	00078713          	mv	a4,a5
   12080:	db800793          	li	a5,-584
   12084:	00f70c63          	beq	a4,a5,1209c <main+0x1f48>
   12088:	000167b7          	lui	a5,0x16
   1208c:	76878513          	addi	a0,a5,1896 # 16768 <__errno+0xe92>
   12090:	4f0010ef          	jal	ra,13580 <puts>
   12094:	fff00793          	li	a5,-1
   12098:	3200106f          	j	133b8 <main+0x3264>
   1209c:	fffff7b7          	lui	a5,0xfffff
   120a0:	ff040713          	addi	a4,s0,-16
   120a4:	00f707b3          	add	a5,a4,a5
   120a8:	6587a783          	lw	a5,1624(a5) # fffffffffffff658 <__BSS_END__+0xfffffffffffe6528>
   120ac:	00078713          	mv	a4,a5
   120b0:	cb000793          	li	a5,-848
   120b4:	00f70c63          	beq	a4,a5,120cc <main+0x1f78>
   120b8:	000167b7          	lui	a5,0x16
   120bc:	78078513          	addi	a0,a5,1920 # 16780 <__errno+0xeaa>
   120c0:	4c0010ef          	jal	ra,13580 <puts>
   120c4:	fff00793          	li	a5,-1
   120c8:	2f00106f          	j	133b8 <main+0x3264>
   120cc:	fffff7b7          	lui	a5,0xfffff
   120d0:	ff040713          	addi	a4,s0,-16
   120d4:	00f707b3          	add	a5,a4,a5
   120d8:	65c7a783          	lw	a5,1628(a5) # fffffffffffff65c <__BSS_END__+0xfffffffffffe652c>
   120dc:	00078713          	mv	a4,a5
   120e0:	ba800793          	li	a5,-1112
   120e4:	00f70c63          	beq	a4,a5,120fc <main+0x1fa8>
   120e8:	000167b7          	lui	a5,0x16
   120ec:	79878513          	addi	a0,a5,1944 # 16798 <__errno+0xec2>
   120f0:	490010ef          	jal	ra,13580 <puts>
   120f4:	fff00793          	li	a5,-1
   120f8:	2c00106f          	j	133b8 <main+0x3264>
   120fc:	fffff7b7          	lui	a5,0xfffff
   12100:	ff040713          	addi	a4,s0,-16
   12104:	00f707b3          	add	a5,a4,a5
   12108:	6607a783          	lw	a5,1632(a5) # fffffffffffff660 <__BSS_END__+0xfffffffffffe6530>
   1210c:	00078713          	mv	a4,a5
   12110:	aa000793          	li	a5,-1376
   12114:	00f70c63          	beq	a4,a5,1212c <main+0x1fd8>
   12118:	000167b7          	lui	a5,0x16
   1211c:	7b078513          	addi	a0,a5,1968 # 167b0 <__errno+0xeda>
   12120:	460010ef          	jal	ra,13580 <puts>
   12124:	fff00793          	li	a5,-1
   12128:	2900106f          	j	133b8 <main+0x3264>
   1212c:	fffff7b7          	lui	a5,0xfffff
   12130:	ff040713          	addi	a4,s0,-16
   12134:	00f707b3          	add	a5,a4,a5
   12138:	6647a783          	lw	a5,1636(a5) # fffffffffffff664 <__BSS_END__+0xfffffffffffe6534>
   1213c:	00078713          	mv	a4,a5
   12140:	99800793          	li	a5,-1640
   12144:	00f70c63          	beq	a4,a5,1215c <main+0x2008>
   12148:	000167b7          	lui	a5,0x16
   1214c:	7c878513          	addi	a0,a5,1992 # 167c8 <__errno+0xef2>
   12150:	430010ef          	jal	ra,13580 <puts>
   12154:	fff00793          	li	a5,-1
   12158:	2600106f          	j	133b8 <main+0x3264>
   1215c:	fffff7b7          	lui	a5,0xfffff
   12160:	ff040713          	addi	a4,s0,-16
   12164:	00f707b3          	add	a5,a4,a5
   12168:	6687a783          	lw	a5,1640(a5) # fffffffffffff668 <__BSS_END__+0xfffffffffffe6538>
   1216c:	00078713          	mv	a4,a5
   12170:	000017b7          	lui	a5,0x1
   12174:	98878793          	addi	a5,a5,-1656 # 988 <register_fini-0xf728>
   12178:	00f70c63          	beq	a4,a5,12190 <main+0x203c>
   1217c:	000167b7          	lui	a5,0x16
   12180:	7e078513          	addi	a0,a5,2016 # 167e0 <__errno+0xf0a>
   12184:	3fc010ef          	jal	ra,13580 <puts>
   12188:	fff00793          	li	a5,-1
   1218c:	22c0106f          	j	133b8 <main+0x3264>
   12190:	fffff7b7          	lui	a5,0xfffff
   12194:	ff040713          	addi	a4,s0,-16
   12198:	00f707b3          	add	a5,a4,a5
   1219c:	66c7a783          	lw	a5,1644(a5) # fffffffffffff66c <__BSS_END__+0xfffffffffffe653c>
   121a0:	00078713          	mv	a4,a5
   121a4:	000017b7          	lui	a5,0x1
   121a8:	87078793          	addi	a5,a5,-1936 # 870 <register_fini-0xf840>
   121ac:	00f70c63          	beq	a4,a5,121c4 <main+0x2070>
   121b0:	000167b7          	lui	a5,0x16
   121b4:	7f878513          	addi	a0,a5,2040 # 167f8 <__errno+0xf22>
   121b8:	3c8010ef          	jal	ra,13580 <puts>
   121bc:	fff00793          	li	a5,-1
   121c0:	1f80106f          	j	133b8 <main+0x3264>
   121c4:	fffff7b7          	lui	a5,0xfffff
   121c8:	ff040713          	addi	a4,s0,-16
   121cc:	00f707b3          	add	a5,a4,a5
   121d0:	6707a783          	lw	a5,1648(a5) # fffffffffffff670 <__BSS_END__+0xfffffffffffe6540>
   121d4:	00078713          	mv	a4,a5
   121d8:	75800793          	li	a5,1880
   121dc:	00f70c63          	beq	a4,a5,121f4 <main+0x20a0>
   121e0:	000177b7          	lui	a5,0x17
   121e4:	81078513          	addi	a0,a5,-2032 # 16810 <__errno+0xf3a>
   121e8:	398010ef          	jal	ra,13580 <puts>
   121ec:	fff00793          	li	a5,-1
   121f0:	1c80106f          	j	133b8 <main+0x3264>
   121f4:	fffff7b7          	lui	a5,0xfffff
   121f8:	ff040713          	addi	a4,s0,-16
   121fc:	00f707b3          	add	a5,a4,a5
   12200:	6747a783          	lw	a5,1652(a5) # fffffffffffff674 <__BSS_END__+0xfffffffffffe6544>
   12204:	00078713          	mv	a4,a5
   12208:	64000793          	li	a5,1600
   1220c:	00f70c63          	beq	a4,a5,12224 <main+0x20d0>
   12210:	000177b7          	lui	a5,0x17
   12214:	82878513          	addi	a0,a5,-2008 # 16828 <__errno+0xf52>
   12218:	368010ef          	jal	ra,13580 <puts>
   1221c:	fff00793          	li	a5,-1
   12220:	1980106f          	j	133b8 <main+0x3264>
   12224:	fffff7b7          	lui	a5,0xfffff
   12228:	ff040713          	addi	a4,s0,-16
   1222c:	00f707b3          	add	a5,a4,a5
   12230:	6787a783          	lw	a5,1656(a5) # fffffffffffff678 <__BSS_END__+0xfffffffffffe6548>
   12234:	00078713          	mv	a4,a5
   12238:	52800793          	li	a5,1320
   1223c:	00f70c63          	beq	a4,a5,12254 <main+0x2100>
   12240:	000177b7          	lui	a5,0x17
   12244:	84078513          	addi	a0,a5,-1984 # 16840 <__errno+0xf6a>
   12248:	338010ef          	jal	ra,13580 <puts>
   1224c:	fff00793          	li	a5,-1
   12250:	1680106f          	j	133b8 <main+0x3264>
   12254:	fffff7b7          	lui	a5,0xfffff
   12258:	ff040713          	addi	a4,s0,-16
   1225c:	00f707b3          	add	a5,a4,a5
   12260:	67c7a783          	lw	a5,1660(a5) # fffffffffffff67c <__BSS_END__+0xfffffffffffe654c>
   12264:	00078713          	mv	a4,a5
   12268:	41000793          	li	a5,1040
   1226c:	00f70c63          	beq	a4,a5,12284 <main+0x2130>
   12270:	000177b7          	lui	a5,0x17
   12274:	85878513          	addi	a0,a5,-1960 # 16858 <__errno+0xf82>
   12278:	308010ef          	jal	ra,13580 <puts>
   1227c:	fff00793          	li	a5,-1
   12280:	1380106f          	j	133b8 <main+0x3264>
   12284:	fffff7b7          	lui	a5,0xfffff
   12288:	ff040713          	addi	a4,s0,-16
   1228c:	00f707b3          	add	a5,a4,a5
   12290:	6807a783          	lw	a5,1664(a5) # fffffffffffff680 <__BSS_END__+0xfffffffffffe6550>
   12294:	00078713          	mv	a4,a5
   12298:	2f800793          	li	a5,760
   1229c:	00f70c63          	beq	a4,a5,122b4 <main+0x2160>
   122a0:	000177b7          	lui	a5,0x17
   122a4:	87078513          	addi	a0,a5,-1936 # 16870 <__errno+0xf9a>
   122a8:	2d8010ef          	jal	ra,13580 <puts>
   122ac:	fff00793          	li	a5,-1
   122b0:	1080106f          	j	133b8 <main+0x3264>
   122b4:	fffff7b7          	lui	a5,0xfffff
   122b8:	ff040713          	addi	a4,s0,-16
   122bc:	00f707b3          	add	a5,a4,a5
   122c0:	6847a783          	lw	a5,1668(a5) # fffffffffffff684 <__BSS_END__+0xfffffffffffe6554>
   122c4:	00078713          	mv	a4,a5
   122c8:	1e000793          	li	a5,480
   122cc:	00f70c63          	beq	a4,a5,122e4 <main+0x2190>
   122d0:	000177b7          	lui	a5,0x17
   122d4:	88878513          	addi	a0,a5,-1912 # 16888 <__errno+0xfb2>
   122d8:	2a8010ef          	jal	ra,13580 <puts>
   122dc:	fff00793          	li	a5,-1
   122e0:	0d80106f          	j	133b8 <main+0x3264>
   122e4:	fffff7b7          	lui	a5,0xfffff
   122e8:	ff040713          	addi	a4,s0,-16
   122ec:	00f707b3          	add	a5,a4,a5
   122f0:	6887a783          	lw	a5,1672(a5) # fffffffffffff688 <__BSS_END__+0xfffffffffffe6558>
   122f4:	00078713          	mv	a4,a5
   122f8:	0c800793          	li	a5,200
   122fc:	00f70c63          	beq	a4,a5,12314 <main+0x21c0>
   12300:	000177b7          	lui	a5,0x17
   12304:	8a078513          	addi	a0,a5,-1888 # 168a0 <__errno+0xfca>
   12308:	278010ef          	jal	ra,13580 <puts>
   1230c:	fff00793          	li	a5,-1
   12310:	0a80106f          	j	133b8 <main+0x3264>
   12314:	fffff7b7          	lui	a5,0xfffff
   12318:	ff040713          	addi	a4,s0,-16
   1231c:	00f707b3          	add	a5,a4,a5
   12320:	68c7a783          	lw	a5,1676(a5) # fffffffffffff68c <__BSS_END__+0xfffffffffffe655c>
   12324:	00078713          	mv	a4,a5
   12328:	fb000793          	li	a5,-80
   1232c:	00f70c63          	beq	a4,a5,12344 <main+0x21f0>
   12330:	000177b7          	lui	a5,0x17
   12334:	8b878513          	addi	a0,a5,-1864 # 168b8 <__errno+0xfe2>
   12338:	248010ef          	jal	ra,13580 <puts>
   1233c:	fff00793          	li	a5,-1
   12340:	0780106f          	j	133b8 <main+0x3264>
   12344:	fffff7b7          	lui	a5,0xfffff
   12348:	ff040713          	addi	a4,s0,-16
   1234c:	00f707b3          	add	a5,a4,a5
   12350:	6907a783          	lw	a5,1680(a5) # fffffffffffff690 <__BSS_END__+0xfffffffffffe6560>
   12354:	00078713          	mv	a4,a5
   12358:	e9800793          	li	a5,-360
   1235c:	00f70c63          	beq	a4,a5,12374 <main+0x2220>
   12360:	000177b7          	lui	a5,0x17
   12364:	8d078513          	addi	a0,a5,-1840 # 168d0 <__errno+0xffa>
   12368:	218010ef          	jal	ra,13580 <puts>
   1236c:	fff00793          	li	a5,-1
   12370:	0480106f          	j	133b8 <main+0x3264>
   12374:	fffff7b7          	lui	a5,0xfffff
   12378:	ff040713          	addi	a4,s0,-16
   1237c:	00f707b3          	add	a5,a4,a5
   12380:	6947a783          	lw	a5,1684(a5) # fffffffffffff694 <__BSS_END__+0xfffffffffffe6564>
   12384:	00078713          	mv	a4,a5
   12388:	d8000793          	li	a5,-640
   1238c:	00f70c63          	beq	a4,a5,123a4 <main+0x2250>
   12390:	000177b7          	lui	a5,0x17
   12394:	8e878513          	addi	a0,a5,-1816 # 168e8 <__errno+0x1012>
   12398:	1e8010ef          	jal	ra,13580 <puts>
   1239c:	fff00793          	li	a5,-1
   123a0:	0180106f          	j	133b8 <main+0x3264>
   123a4:	fffff7b7          	lui	a5,0xfffff
   123a8:	ff040713          	addi	a4,s0,-16
   123ac:	00f707b3          	add	a5,a4,a5
   123b0:	6987a783          	lw	a5,1688(a5) # fffffffffffff698 <__BSS_END__+0xfffffffffffe6568>
   123b4:	00078713          	mv	a4,a5
   123b8:	c6800793          	li	a5,-920
   123bc:	00f70c63          	beq	a4,a5,123d4 <main+0x2280>
   123c0:	000177b7          	lui	a5,0x17
   123c4:	90078513          	addi	a0,a5,-1792 # 16900 <__errno+0x102a>
   123c8:	1b8010ef          	jal	ra,13580 <puts>
   123cc:	fff00793          	li	a5,-1
   123d0:	7e90006f          	j	133b8 <main+0x3264>
   123d4:	fffff7b7          	lui	a5,0xfffff
   123d8:	ff040713          	addi	a4,s0,-16
   123dc:	00f707b3          	add	a5,a4,a5
   123e0:	69c7a783          	lw	a5,1692(a5) # fffffffffffff69c <__BSS_END__+0xfffffffffffe656c>
   123e4:	00078713          	mv	a4,a5
   123e8:	b5000793          	li	a5,-1200
   123ec:	00f70c63          	beq	a4,a5,12404 <main+0x22b0>
   123f0:	000177b7          	lui	a5,0x17
   123f4:	91878513          	addi	a0,a5,-1768 # 16918 <__errno+0x1042>
   123f8:	188010ef          	jal	ra,13580 <puts>
   123fc:	fff00793          	li	a5,-1
   12400:	7b90006f          	j	133b8 <main+0x3264>
   12404:	fffff7b7          	lui	a5,0xfffff
   12408:	ff040713          	addi	a4,s0,-16
   1240c:	00f707b3          	add	a5,a4,a5
   12410:	6a07a783          	lw	a5,1696(a5) # fffffffffffff6a0 <__BSS_END__+0xfffffffffffe6570>
   12414:	00078713          	mv	a4,a5
   12418:	a3800793          	li	a5,-1480
   1241c:	00f70c63          	beq	a4,a5,12434 <main+0x22e0>
   12420:	000177b7          	lui	a5,0x17
   12424:	93078513          	addi	a0,a5,-1744 # 16930 <__errno+0x105a>
   12428:	158010ef          	jal	ra,13580 <puts>
   1242c:	fff00793          	li	a5,-1
   12430:	7890006f          	j	133b8 <main+0x3264>
   12434:	fffff7b7          	lui	a5,0xfffff
   12438:	ff040713          	addi	a4,s0,-16
   1243c:	00f707b3          	add	a5,a4,a5
   12440:	6a47a783          	lw	a5,1700(a5) # fffffffffffff6a4 <__BSS_END__+0xfffffffffffe6574>
   12444:	00078713          	mv	a4,a5
   12448:	92000793          	li	a5,-1760
   1244c:	00f70c63          	beq	a4,a5,12464 <main+0x2310>
   12450:	000177b7          	lui	a5,0x17
   12454:	94878513          	addi	a0,a5,-1720 # 16948 <__errno+0x1072>
   12458:	128010ef          	jal	ra,13580 <puts>
   1245c:	fff00793          	li	a5,-1
   12460:	7590006f          	j	133b8 <main+0x3264>
   12464:	fffff7b7          	lui	a5,0xfffff
   12468:	ff040713          	addi	a4,s0,-16
   1246c:	00f707b3          	add	a5,a4,a5
   12470:	6a87a783          	lw	a5,1704(a5) # fffffffffffff6a8 <__BSS_END__+0xfffffffffffe6578>
   12474:	00078713          	mv	a4,a5
   12478:	000017b7          	lui	a5,0x1
   1247c:	a0078793          	addi	a5,a5,-1536 # a00 <register_fini-0xf6b0>
   12480:	00f70c63          	beq	a4,a5,12498 <main+0x2344>
   12484:	000177b7          	lui	a5,0x17
   12488:	96078513          	addi	a0,a5,-1696 # 16960 <__errno+0x108a>
   1248c:	0f4010ef          	jal	ra,13580 <puts>
   12490:	fff00793          	li	a5,-1
   12494:	7250006f          	j	133b8 <main+0x3264>
   12498:	fffff7b7          	lui	a5,0xfffff
   1249c:	ff040713          	addi	a4,s0,-16
   124a0:	00f707b3          	add	a5,a4,a5
   124a4:	6ac7a783          	lw	a5,1708(a5) # fffffffffffff6ac <__BSS_END__+0xfffffffffffe657c>
   124a8:	00078713          	mv	a4,a5
   124ac:	000017b7          	lui	a5,0x1
   124b0:	8d878793          	addi	a5,a5,-1832 # 8d8 <register_fini-0xf7d8>
   124b4:	00f70c63          	beq	a4,a5,124cc <main+0x2378>
   124b8:	000177b7          	lui	a5,0x17
   124bc:	97878513          	addi	a0,a5,-1672 # 16978 <__errno+0x10a2>
   124c0:	0c0010ef          	jal	ra,13580 <puts>
   124c4:	fff00793          	li	a5,-1
   124c8:	6f10006f          	j	133b8 <main+0x3264>
   124cc:	fffff7b7          	lui	a5,0xfffff
   124d0:	ff040713          	addi	a4,s0,-16
   124d4:	00f707b3          	add	a5,a4,a5
   124d8:	6b07a783          	lw	a5,1712(a5) # fffffffffffff6b0 <__BSS_END__+0xfffffffffffe6580>
   124dc:	00078713          	mv	a4,a5
   124e0:	7b000793          	li	a5,1968
   124e4:	00f70c63          	beq	a4,a5,124fc <main+0x23a8>
   124e8:	000177b7          	lui	a5,0x17
   124ec:	99078513          	addi	a0,a5,-1648 # 16990 <__errno+0x10ba>
   124f0:	090010ef          	jal	ra,13580 <puts>
   124f4:	fff00793          	li	a5,-1
   124f8:	6c10006f          	j	133b8 <main+0x3264>
   124fc:	fffff7b7          	lui	a5,0xfffff
   12500:	ff040713          	addi	a4,s0,-16
   12504:	00f707b3          	add	a5,a4,a5
   12508:	6b47a783          	lw	a5,1716(a5) # fffffffffffff6b4 <__BSS_END__+0xfffffffffffe6584>
   1250c:	00078713          	mv	a4,a5
   12510:	68800793          	li	a5,1672
   12514:	00f70c63          	beq	a4,a5,1252c <main+0x23d8>
   12518:	000177b7          	lui	a5,0x17
   1251c:	9a878513          	addi	a0,a5,-1624 # 169a8 <__errno+0x10d2>
   12520:	060010ef          	jal	ra,13580 <puts>
   12524:	fff00793          	li	a5,-1
   12528:	6910006f          	j	133b8 <main+0x3264>
   1252c:	fffff7b7          	lui	a5,0xfffff
   12530:	ff040713          	addi	a4,s0,-16
   12534:	00f707b3          	add	a5,a4,a5
   12538:	6b87a783          	lw	a5,1720(a5) # fffffffffffff6b8 <__BSS_END__+0xfffffffffffe6588>
   1253c:	00078713          	mv	a4,a5
   12540:	56000793          	li	a5,1376
   12544:	00f70c63          	beq	a4,a5,1255c <main+0x2408>
   12548:	000177b7          	lui	a5,0x17
   1254c:	9c078513          	addi	a0,a5,-1600 # 169c0 <__errno+0x10ea>
   12550:	030010ef          	jal	ra,13580 <puts>
   12554:	fff00793          	li	a5,-1
   12558:	6610006f          	j	133b8 <main+0x3264>
   1255c:	fffff7b7          	lui	a5,0xfffff
   12560:	ff040713          	addi	a4,s0,-16
   12564:	00f707b3          	add	a5,a4,a5
   12568:	6bc7a783          	lw	a5,1724(a5) # fffffffffffff6bc <__BSS_END__+0xfffffffffffe658c>
   1256c:	00078713          	mv	a4,a5
   12570:	43800793          	li	a5,1080
   12574:	00f70c63          	beq	a4,a5,1258c <main+0x2438>
   12578:	000177b7          	lui	a5,0x17
   1257c:	9d878513          	addi	a0,a5,-1576 # 169d8 <__errno+0x1102>
   12580:	000010ef          	jal	ra,13580 <puts>
   12584:	fff00793          	li	a5,-1
   12588:	6310006f          	j	133b8 <main+0x3264>
   1258c:	fffff7b7          	lui	a5,0xfffff
   12590:	ff040713          	addi	a4,s0,-16
   12594:	00f707b3          	add	a5,a4,a5
   12598:	6c07a783          	lw	a5,1728(a5) # fffffffffffff6c0 <__BSS_END__+0xfffffffffffe6590>
   1259c:	00078713          	mv	a4,a5
   125a0:	31000793          	li	a5,784
   125a4:	00f70c63          	beq	a4,a5,125bc <main+0x2468>
   125a8:	000177b7          	lui	a5,0x17
   125ac:	9f078513          	addi	a0,a5,-1552 # 169f0 <__errno+0x111a>
   125b0:	7d1000ef          	jal	ra,13580 <puts>
   125b4:	fff00793          	li	a5,-1
   125b8:	6010006f          	j	133b8 <main+0x3264>
   125bc:	fffff7b7          	lui	a5,0xfffff
   125c0:	ff040713          	addi	a4,s0,-16
   125c4:	00f707b3          	add	a5,a4,a5
   125c8:	6c47a783          	lw	a5,1732(a5) # fffffffffffff6c4 <__BSS_END__+0xfffffffffffe6594>
   125cc:	00078713          	mv	a4,a5
   125d0:	1e800793          	li	a5,488
   125d4:	00f70c63          	beq	a4,a5,125ec <main+0x2498>
   125d8:	000177b7          	lui	a5,0x17
   125dc:	a0878513          	addi	a0,a5,-1528 # 16a08 <__errno+0x1132>
   125e0:	7a1000ef          	jal	ra,13580 <puts>
   125e4:	fff00793          	li	a5,-1
   125e8:	5d10006f          	j	133b8 <main+0x3264>
   125ec:	fffff7b7          	lui	a5,0xfffff
   125f0:	ff040713          	addi	a4,s0,-16
   125f4:	00f707b3          	add	a5,a4,a5
   125f8:	6c87a783          	lw	a5,1736(a5) # fffffffffffff6c8 <__BSS_END__+0xfffffffffffe6598>
   125fc:	00078713          	mv	a4,a5
   12600:	0c000793          	li	a5,192
   12604:	00f70c63          	beq	a4,a5,1261c <main+0x24c8>
   12608:	000177b7          	lui	a5,0x17
   1260c:	a2078513          	addi	a0,a5,-1504 # 16a20 <__errno+0x114a>
   12610:	771000ef          	jal	ra,13580 <puts>
   12614:	fff00793          	li	a5,-1
   12618:	5a10006f          	j	133b8 <main+0x3264>
   1261c:	fffff7b7          	lui	a5,0xfffff
   12620:	ff040713          	addi	a4,s0,-16
   12624:	00f707b3          	add	a5,a4,a5
   12628:	6cc7a783          	lw	a5,1740(a5) # fffffffffffff6cc <__BSS_END__+0xfffffffffffe659c>
   1262c:	00078713          	mv	a4,a5
   12630:	f9800793          	li	a5,-104
   12634:	00f70c63          	beq	a4,a5,1264c <main+0x24f8>
   12638:	000177b7          	lui	a5,0x17
   1263c:	a3878513          	addi	a0,a5,-1480 # 16a38 <__errno+0x1162>
   12640:	741000ef          	jal	ra,13580 <puts>
   12644:	fff00793          	li	a5,-1
   12648:	5710006f          	j	133b8 <main+0x3264>
   1264c:	fffff7b7          	lui	a5,0xfffff
   12650:	ff040713          	addi	a4,s0,-16
   12654:	00f707b3          	add	a5,a4,a5
   12658:	6d07a783          	lw	a5,1744(a5) # fffffffffffff6d0 <__BSS_END__+0xfffffffffffe65a0>
   1265c:	00078713          	mv	a4,a5
   12660:	e7000793          	li	a5,-400
   12664:	00f70c63          	beq	a4,a5,1267c <main+0x2528>
   12668:	000177b7          	lui	a5,0x17
   1266c:	a5078513          	addi	a0,a5,-1456 # 16a50 <__errno+0x117a>
   12670:	711000ef          	jal	ra,13580 <puts>
   12674:	fff00793          	li	a5,-1
   12678:	5410006f          	j	133b8 <main+0x3264>
   1267c:	fffff7b7          	lui	a5,0xfffff
   12680:	ff040713          	addi	a4,s0,-16
   12684:	00f707b3          	add	a5,a4,a5
   12688:	6d47a783          	lw	a5,1748(a5) # fffffffffffff6d4 <__BSS_END__+0xfffffffffffe65a4>
   1268c:	00078713          	mv	a4,a5
   12690:	d4800793          	li	a5,-696
   12694:	00f70c63          	beq	a4,a5,126ac <main+0x2558>
   12698:	000177b7          	lui	a5,0x17
   1269c:	a6878513          	addi	a0,a5,-1432 # 16a68 <__errno+0x1192>
   126a0:	6e1000ef          	jal	ra,13580 <puts>
   126a4:	fff00793          	li	a5,-1
   126a8:	5110006f          	j	133b8 <main+0x3264>
   126ac:	fffff7b7          	lui	a5,0xfffff
   126b0:	ff040713          	addi	a4,s0,-16
   126b4:	00f707b3          	add	a5,a4,a5
   126b8:	6d87a783          	lw	a5,1752(a5) # fffffffffffff6d8 <__BSS_END__+0xfffffffffffe65a8>
   126bc:	00078713          	mv	a4,a5
   126c0:	c2000793          	li	a5,-992
   126c4:	00f70c63          	beq	a4,a5,126dc <main+0x2588>
   126c8:	000177b7          	lui	a5,0x17
   126cc:	a8078513          	addi	a0,a5,-1408 # 16a80 <__errno+0x11aa>
   126d0:	6b1000ef          	jal	ra,13580 <puts>
   126d4:	fff00793          	li	a5,-1
   126d8:	4e10006f          	j	133b8 <main+0x3264>
   126dc:	fffff7b7          	lui	a5,0xfffff
   126e0:	ff040713          	addi	a4,s0,-16
   126e4:	00f707b3          	add	a5,a4,a5
   126e8:	6dc7a783          	lw	a5,1756(a5) # fffffffffffff6dc <__BSS_END__+0xfffffffffffe65ac>
   126ec:	00078713          	mv	a4,a5
   126f0:	af800793          	li	a5,-1288
   126f4:	00f70c63          	beq	a4,a5,1270c <main+0x25b8>
   126f8:	000177b7          	lui	a5,0x17
   126fc:	a9878513          	addi	a0,a5,-1384 # 16a98 <__errno+0x11c2>
   12700:	681000ef          	jal	ra,13580 <puts>
   12704:	fff00793          	li	a5,-1
   12708:	4b10006f          	j	133b8 <main+0x3264>
   1270c:	fffff7b7          	lui	a5,0xfffff
   12710:	ff040713          	addi	a4,s0,-16
   12714:	00f707b3          	add	a5,a4,a5
   12718:	6e07a783          	lw	a5,1760(a5) # fffffffffffff6e0 <__BSS_END__+0xfffffffffffe65b0>
   1271c:	00078713          	mv	a4,a5
   12720:	9d000793          	li	a5,-1584
   12724:	00f70c63          	beq	a4,a5,1273c <main+0x25e8>
   12728:	000177b7          	lui	a5,0x17
   1272c:	ab078513          	addi	a0,a5,-1360 # 16ab0 <__errno+0x11da>
   12730:	651000ef          	jal	ra,13580 <puts>
   12734:	fff00793          	li	a5,-1
   12738:	4810006f          	j	133b8 <main+0x3264>
   1273c:	fffff7b7          	lui	a5,0xfffff
   12740:	ff040713          	addi	a4,s0,-16
   12744:	00f707b3          	add	a5,a4,a5
   12748:	6e47a783          	lw	a5,1764(a5) # fffffffffffff6e4 <__BSS_END__+0xfffffffffffe65b4>
   1274c:	00078713          	mv	a4,a5
   12750:	8a800793          	li	a5,-1880
   12754:	00f70c63          	beq	a4,a5,1276c <main+0x2618>
   12758:	000177b7          	lui	a5,0x17
   1275c:	ac878513          	addi	a0,a5,-1336 # 16ac8 <__errno+0x11f2>
   12760:	621000ef          	jal	ra,13580 <puts>
   12764:	fff00793          	li	a5,-1
   12768:	4510006f          	j	133b8 <main+0x3264>
   1276c:	fffff7b7          	lui	a5,0xfffff
   12770:	ff040713          	addi	a4,s0,-16
   12774:	00f707b3          	add	a5,a4,a5
   12778:	6e87a783          	lw	a5,1768(a5) # fffffffffffff6e8 <__BSS_END__+0xfffffffffffe65b8>
   1277c:	00078713          	mv	a4,a5
   12780:	000017b7          	lui	a5,0x1
   12784:	a7878793          	addi	a5,a5,-1416 # a78 <register_fini-0xf638>
   12788:	00f70c63          	beq	a4,a5,127a0 <main+0x264c>
   1278c:	000177b7          	lui	a5,0x17
   12790:	ae078513          	addi	a0,a5,-1312 # 16ae0 <__errno+0x120a>
   12794:	5ed000ef          	jal	ra,13580 <puts>
   12798:	fff00793          	li	a5,-1
   1279c:	41d0006f          	j	133b8 <main+0x3264>
   127a0:	fffff7b7          	lui	a5,0xfffff
   127a4:	ff040713          	addi	a4,s0,-16
   127a8:	00f707b3          	add	a5,a4,a5
   127ac:	6ec7a783          	lw	a5,1772(a5) # fffffffffffff6ec <__BSS_END__+0xfffffffffffe65bc>
   127b0:	00078713          	mv	a4,a5
   127b4:	000017b7          	lui	a5,0x1
   127b8:	94078793          	addi	a5,a5,-1728 # 940 <register_fini-0xf770>
   127bc:	00f70c63          	beq	a4,a5,127d4 <main+0x2680>
   127c0:	000177b7          	lui	a5,0x17
   127c4:	af878513          	addi	a0,a5,-1288 # 16af8 <__errno+0x1222>
   127c8:	5b9000ef          	jal	ra,13580 <puts>
   127cc:	fff00793          	li	a5,-1
   127d0:	3e90006f          	j	133b8 <main+0x3264>
   127d4:	fffff7b7          	lui	a5,0xfffff
   127d8:	ff040713          	addi	a4,s0,-16
   127dc:	00f707b3          	add	a5,a4,a5
   127e0:	6f07a783          	lw	a5,1776(a5) # fffffffffffff6f0 <__BSS_END__+0xfffffffffffe65c0>
   127e4:	00078713          	mv	a4,a5
   127e8:	000017b7          	lui	a5,0x1
   127ec:	80878793          	addi	a5,a5,-2040 # 808 <register_fini-0xf8a8>
   127f0:	00f70c63          	beq	a4,a5,12808 <main+0x26b4>
   127f4:	000177b7          	lui	a5,0x17
   127f8:	b1078513          	addi	a0,a5,-1264 # 16b10 <__errno+0x123a>
   127fc:	585000ef          	jal	ra,13580 <puts>
   12800:	fff00793          	li	a5,-1
   12804:	3b50006f          	j	133b8 <main+0x3264>
   12808:	fffff7b7          	lui	a5,0xfffff
   1280c:	ff040713          	addi	a4,s0,-16
   12810:	00f707b3          	add	a5,a4,a5
   12814:	6f47a783          	lw	a5,1780(a5) # fffffffffffff6f4 <__BSS_END__+0xfffffffffffe65c4>
   12818:	00078713          	mv	a4,a5
   1281c:	6d000793          	li	a5,1744
   12820:	00f70c63          	beq	a4,a5,12838 <main+0x26e4>
   12824:	000177b7          	lui	a5,0x17
   12828:	b2878513          	addi	a0,a5,-1240 # 16b28 <__errno+0x1252>
   1282c:	555000ef          	jal	ra,13580 <puts>
   12830:	fff00793          	li	a5,-1
   12834:	3850006f          	j	133b8 <main+0x3264>
   12838:	fffff7b7          	lui	a5,0xfffff
   1283c:	ff040713          	addi	a4,s0,-16
   12840:	00f707b3          	add	a5,a4,a5
   12844:	6f87a783          	lw	a5,1784(a5) # fffffffffffff6f8 <__BSS_END__+0xfffffffffffe65c8>
   12848:	00078713          	mv	a4,a5
   1284c:	59800793          	li	a5,1432
   12850:	00f70c63          	beq	a4,a5,12868 <main+0x2714>
   12854:	000177b7          	lui	a5,0x17
   12858:	b4078513          	addi	a0,a5,-1216 # 16b40 <__errno+0x126a>
   1285c:	525000ef          	jal	ra,13580 <puts>
   12860:	fff00793          	li	a5,-1
   12864:	3550006f          	j	133b8 <main+0x3264>
   12868:	fffff7b7          	lui	a5,0xfffff
   1286c:	ff040713          	addi	a4,s0,-16
   12870:	00f707b3          	add	a5,a4,a5
   12874:	6fc7a783          	lw	a5,1788(a5) # fffffffffffff6fc <__BSS_END__+0xfffffffffffe65cc>
   12878:	00078713          	mv	a4,a5
   1287c:	46000793          	li	a5,1120
   12880:	00f70c63          	beq	a4,a5,12898 <main+0x2744>
   12884:	000177b7          	lui	a5,0x17
   12888:	b5878513          	addi	a0,a5,-1192 # 16b58 <__errno+0x1282>
   1288c:	4f5000ef          	jal	ra,13580 <puts>
   12890:	fff00793          	li	a5,-1
   12894:	3250006f          	j	133b8 <main+0x3264>
   12898:	fffff7b7          	lui	a5,0xfffff
   1289c:	ff040713          	addi	a4,s0,-16
   128a0:	00f707b3          	add	a5,a4,a5
   128a4:	7007a783          	lw	a5,1792(a5) # fffffffffffff700 <__BSS_END__+0xfffffffffffe65d0>
   128a8:	00078713          	mv	a4,a5
   128ac:	32800793          	li	a5,808
   128b0:	00f70c63          	beq	a4,a5,128c8 <main+0x2774>
   128b4:	000177b7          	lui	a5,0x17
   128b8:	b7078513          	addi	a0,a5,-1168 # 16b70 <__errno+0x129a>
   128bc:	4c5000ef          	jal	ra,13580 <puts>
   128c0:	fff00793          	li	a5,-1
   128c4:	2f50006f          	j	133b8 <main+0x3264>
   128c8:	fffff7b7          	lui	a5,0xfffff
   128cc:	ff040713          	addi	a4,s0,-16
   128d0:	00f707b3          	add	a5,a4,a5
   128d4:	7047a783          	lw	a5,1796(a5) # fffffffffffff704 <__BSS_END__+0xfffffffffffe65d4>
   128d8:	00078713          	mv	a4,a5
   128dc:	1f000793          	li	a5,496
   128e0:	00f70c63          	beq	a4,a5,128f8 <main+0x27a4>
   128e4:	000177b7          	lui	a5,0x17
   128e8:	b8878513          	addi	a0,a5,-1144 # 16b88 <__errno+0x12b2>
   128ec:	495000ef          	jal	ra,13580 <puts>
   128f0:	fff00793          	li	a5,-1
   128f4:	2c50006f          	j	133b8 <main+0x3264>
   128f8:	fffff7b7          	lui	a5,0xfffff
   128fc:	ff040713          	addi	a4,s0,-16
   12900:	00f707b3          	add	a5,a4,a5
   12904:	7087a783          	lw	a5,1800(a5) # fffffffffffff708 <__BSS_END__+0xfffffffffffe65d8>
   12908:	00078713          	mv	a4,a5
   1290c:	0b800793          	li	a5,184
   12910:	00f70c63          	beq	a4,a5,12928 <main+0x27d4>
   12914:	000177b7          	lui	a5,0x17
   12918:	ba078513          	addi	a0,a5,-1120 # 16ba0 <__errno+0x12ca>
   1291c:	465000ef          	jal	ra,13580 <puts>
   12920:	fff00793          	li	a5,-1
   12924:	2950006f          	j	133b8 <main+0x3264>
   12928:	fffff7b7          	lui	a5,0xfffff
   1292c:	ff040713          	addi	a4,s0,-16
   12930:	00f707b3          	add	a5,a4,a5
   12934:	70c7a783          	lw	a5,1804(a5) # fffffffffffff70c <__BSS_END__+0xfffffffffffe65dc>
   12938:	00078713          	mv	a4,a5
   1293c:	f8000793          	li	a5,-128
   12940:	00f70c63          	beq	a4,a5,12958 <main+0x2804>
   12944:	000177b7          	lui	a5,0x17
   12948:	bb878513          	addi	a0,a5,-1096 # 16bb8 <__errno+0x12e2>
   1294c:	435000ef          	jal	ra,13580 <puts>
   12950:	fff00793          	li	a5,-1
   12954:	2650006f          	j	133b8 <main+0x3264>
   12958:	fffff7b7          	lui	a5,0xfffff
   1295c:	ff040713          	addi	a4,s0,-16
   12960:	00f707b3          	add	a5,a4,a5
   12964:	7107a783          	lw	a5,1808(a5) # fffffffffffff710 <__BSS_END__+0xfffffffffffe65e0>
   12968:	00078713          	mv	a4,a5
   1296c:	e4800793          	li	a5,-440
   12970:	00f70c63          	beq	a4,a5,12988 <main+0x2834>
   12974:	000177b7          	lui	a5,0x17
   12978:	bd078513          	addi	a0,a5,-1072 # 16bd0 <__errno+0x12fa>
   1297c:	405000ef          	jal	ra,13580 <puts>
   12980:	fff00793          	li	a5,-1
   12984:	2350006f          	j	133b8 <main+0x3264>
   12988:	fffff7b7          	lui	a5,0xfffff
   1298c:	ff040713          	addi	a4,s0,-16
   12990:	00f707b3          	add	a5,a4,a5
   12994:	7147a783          	lw	a5,1812(a5) # fffffffffffff714 <__BSS_END__+0xfffffffffffe65e4>
   12998:	00078713          	mv	a4,a5
   1299c:	d1000793          	li	a5,-752
   129a0:	00f70c63          	beq	a4,a5,129b8 <main+0x2864>
   129a4:	000177b7          	lui	a5,0x17
   129a8:	be878513          	addi	a0,a5,-1048 # 16be8 <__errno+0x1312>
   129ac:	3d5000ef          	jal	ra,13580 <puts>
   129b0:	fff00793          	li	a5,-1
   129b4:	2050006f          	j	133b8 <main+0x3264>
   129b8:	fffff7b7          	lui	a5,0xfffff
   129bc:	ff040713          	addi	a4,s0,-16
   129c0:	00f707b3          	add	a5,a4,a5
   129c4:	7187a783          	lw	a5,1816(a5) # fffffffffffff718 <__BSS_END__+0xfffffffffffe65e8>
   129c8:	00078713          	mv	a4,a5
   129cc:	bd800793          	li	a5,-1064
   129d0:	00f70c63          	beq	a4,a5,129e8 <main+0x2894>
   129d4:	000177b7          	lui	a5,0x17
   129d8:	c0078513          	addi	a0,a5,-1024 # 16c00 <__errno+0x132a>
   129dc:	3a5000ef          	jal	ra,13580 <puts>
   129e0:	fff00793          	li	a5,-1
   129e4:	1d50006f          	j	133b8 <main+0x3264>
   129e8:	fffff7b7          	lui	a5,0xfffff
   129ec:	ff040713          	addi	a4,s0,-16
   129f0:	00f707b3          	add	a5,a4,a5
   129f4:	71c7a783          	lw	a5,1820(a5) # fffffffffffff71c <__BSS_END__+0xfffffffffffe65ec>
   129f8:	00078713          	mv	a4,a5
   129fc:	aa000793          	li	a5,-1376
   12a00:	00f70c63          	beq	a4,a5,12a18 <main+0x28c4>
   12a04:	000177b7          	lui	a5,0x17
   12a08:	c1878513          	addi	a0,a5,-1000 # 16c18 <__errno+0x1342>
   12a0c:	375000ef          	jal	ra,13580 <puts>
   12a10:	fff00793          	li	a5,-1
   12a14:	1a50006f          	j	133b8 <main+0x3264>
   12a18:	fffff7b7          	lui	a5,0xfffff
   12a1c:	ff040713          	addi	a4,s0,-16
   12a20:	00f707b3          	add	a5,a4,a5
   12a24:	7207a783          	lw	a5,1824(a5) # fffffffffffff720 <__BSS_END__+0xfffffffffffe65f0>
   12a28:	00078713          	mv	a4,a5
   12a2c:	96800793          	li	a5,-1688
   12a30:	00f70c63          	beq	a4,a5,12a48 <main+0x28f4>
   12a34:	000177b7          	lui	a5,0x17
   12a38:	c3078513          	addi	a0,a5,-976 # 16c30 <__errno+0x135a>
   12a3c:	345000ef          	jal	ra,13580 <puts>
   12a40:	fff00793          	li	a5,-1
   12a44:	1750006f          	j	133b8 <main+0x3264>
   12a48:	fffff7b7          	lui	a5,0xfffff
   12a4c:	ff040713          	addi	a4,s0,-16
   12a50:	00f707b3          	add	a5,a4,a5
   12a54:	7247a783          	lw	a5,1828(a5) # fffffffffffff724 <__BSS_END__+0xfffffffffffe65f4>
   12a58:	00078713          	mv	a4,a5
   12a5c:	83000793          	li	a5,-2000
   12a60:	00f70c63          	beq	a4,a5,12a78 <main+0x2924>
   12a64:	000177b7          	lui	a5,0x17
   12a68:	c4878513          	addi	a0,a5,-952 # 16c48 <__errno+0x1372>
   12a6c:	315000ef          	jal	ra,13580 <puts>
   12a70:	fff00793          	li	a5,-1
   12a74:	1450006f          	j	133b8 <main+0x3264>
   12a78:	fffff7b7          	lui	a5,0xfffff
   12a7c:	ff040713          	addi	a4,s0,-16
   12a80:	00f707b3          	add	a5,a4,a5
   12a84:	7287a783          	lw	a5,1832(a5) # fffffffffffff728 <__BSS_END__+0xfffffffffffe65f8>
   12a88:	00078713          	mv	a4,a5
   12a8c:	000017b7          	lui	a5,0x1
   12a90:	af078793          	addi	a5,a5,-1296 # af0 <register_fini-0xf5c0>
   12a94:	00f70c63          	beq	a4,a5,12aac <main+0x2958>
   12a98:	000177b7          	lui	a5,0x17
   12a9c:	c6078513          	addi	a0,a5,-928 # 16c60 <__errno+0x138a>
   12aa0:	2e1000ef          	jal	ra,13580 <puts>
   12aa4:	fff00793          	li	a5,-1
   12aa8:	1110006f          	j	133b8 <main+0x3264>
   12aac:	fffff7b7          	lui	a5,0xfffff
   12ab0:	ff040713          	addi	a4,s0,-16
   12ab4:	00f707b3          	add	a5,a4,a5
   12ab8:	72c7a783          	lw	a5,1836(a5) # fffffffffffff72c <__BSS_END__+0xfffffffffffe65fc>
   12abc:	00078713          	mv	a4,a5
   12ac0:	000017b7          	lui	a5,0x1
   12ac4:	9a878793          	addi	a5,a5,-1624 # 9a8 <register_fini-0xf708>
   12ac8:	00f70c63          	beq	a4,a5,12ae0 <main+0x298c>
   12acc:	000177b7          	lui	a5,0x17
   12ad0:	c7878513          	addi	a0,a5,-904 # 16c78 <__errno+0x13a2>
   12ad4:	2ad000ef          	jal	ra,13580 <puts>
   12ad8:	fff00793          	li	a5,-1
   12adc:	0dd0006f          	j	133b8 <main+0x3264>
   12ae0:	fffff7b7          	lui	a5,0xfffff
   12ae4:	ff040713          	addi	a4,s0,-16
   12ae8:	00f707b3          	add	a5,a4,a5
   12aec:	7307a783          	lw	a5,1840(a5) # fffffffffffff730 <__BSS_END__+0xfffffffffffe6600>
   12af0:	00078713          	mv	a4,a5
   12af4:	000017b7          	lui	a5,0x1
   12af8:	86078793          	addi	a5,a5,-1952 # 860 <register_fini-0xf850>
   12afc:	00f70c63          	beq	a4,a5,12b14 <main+0x29c0>
   12b00:	000177b7          	lui	a5,0x17
   12b04:	c9078513          	addi	a0,a5,-880 # 16c90 <__errno+0x13ba>
   12b08:	279000ef          	jal	ra,13580 <puts>
   12b0c:	fff00793          	li	a5,-1
   12b10:	0a90006f          	j	133b8 <main+0x3264>
   12b14:	fffff7b7          	lui	a5,0xfffff
   12b18:	ff040713          	addi	a4,s0,-16
   12b1c:	00f707b3          	add	a5,a4,a5
   12b20:	7347a783          	lw	a5,1844(a5) # fffffffffffff734 <__BSS_END__+0xfffffffffffe6604>
   12b24:	00078713          	mv	a4,a5
   12b28:	71800793          	li	a5,1816
   12b2c:	00f70c63          	beq	a4,a5,12b44 <main+0x29f0>
   12b30:	000177b7          	lui	a5,0x17
   12b34:	ca878513          	addi	a0,a5,-856 # 16ca8 <__errno+0x13d2>
   12b38:	249000ef          	jal	ra,13580 <puts>
   12b3c:	fff00793          	li	a5,-1
   12b40:	0790006f          	j	133b8 <main+0x3264>
   12b44:	fffff7b7          	lui	a5,0xfffff
   12b48:	ff040713          	addi	a4,s0,-16
   12b4c:	00f707b3          	add	a5,a4,a5
   12b50:	7387a783          	lw	a5,1848(a5) # fffffffffffff738 <__BSS_END__+0xfffffffffffe6608>
   12b54:	00078713          	mv	a4,a5
   12b58:	5d000793          	li	a5,1488
   12b5c:	00f70c63          	beq	a4,a5,12b74 <main+0x2a20>
   12b60:	000177b7          	lui	a5,0x17
   12b64:	cc078513          	addi	a0,a5,-832 # 16cc0 <__errno+0x13ea>
   12b68:	219000ef          	jal	ra,13580 <puts>
   12b6c:	fff00793          	li	a5,-1
   12b70:	0490006f          	j	133b8 <main+0x3264>
   12b74:	fffff7b7          	lui	a5,0xfffff
   12b78:	ff040713          	addi	a4,s0,-16
   12b7c:	00f707b3          	add	a5,a4,a5
   12b80:	73c7a783          	lw	a5,1852(a5) # fffffffffffff73c <__BSS_END__+0xfffffffffffe660c>
   12b84:	00078713          	mv	a4,a5
   12b88:	48800793          	li	a5,1160
   12b8c:	00f70c63          	beq	a4,a5,12ba4 <main+0x2a50>
   12b90:	000177b7          	lui	a5,0x17
   12b94:	cd878513          	addi	a0,a5,-808 # 16cd8 <__errno+0x1402>
   12b98:	1e9000ef          	jal	ra,13580 <puts>
   12b9c:	fff00793          	li	a5,-1
   12ba0:	0190006f          	j	133b8 <main+0x3264>
   12ba4:	fffff7b7          	lui	a5,0xfffff
   12ba8:	ff040713          	addi	a4,s0,-16
   12bac:	00f707b3          	add	a5,a4,a5
   12bb0:	7407a783          	lw	a5,1856(a5) # fffffffffffff740 <__BSS_END__+0xfffffffffffe6610>
   12bb4:	00078713          	mv	a4,a5
   12bb8:	34000793          	li	a5,832
   12bbc:	00f70c63          	beq	a4,a5,12bd4 <main+0x2a80>
   12bc0:	000177b7          	lui	a5,0x17
   12bc4:	cf078513          	addi	a0,a5,-784 # 16cf0 <__errno+0x141a>
   12bc8:	1b9000ef          	jal	ra,13580 <puts>
   12bcc:	fff00793          	li	a5,-1
   12bd0:	7e80006f          	j	133b8 <main+0x3264>
   12bd4:	fffff7b7          	lui	a5,0xfffff
   12bd8:	ff040713          	addi	a4,s0,-16
   12bdc:	00f707b3          	add	a5,a4,a5
   12be0:	7447a783          	lw	a5,1860(a5) # fffffffffffff744 <__BSS_END__+0xfffffffffffe6614>
   12be4:	00078713          	mv	a4,a5
   12be8:	1f800793          	li	a5,504
   12bec:	00f70c63          	beq	a4,a5,12c04 <main+0x2ab0>
   12bf0:	000177b7          	lui	a5,0x17
   12bf4:	d0878513          	addi	a0,a5,-760 # 16d08 <__errno+0x1432>
   12bf8:	189000ef          	jal	ra,13580 <puts>
   12bfc:	fff00793          	li	a5,-1
   12c00:	7b80006f          	j	133b8 <main+0x3264>
   12c04:	fffff7b7          	lui	a5,0xfffff
   12c08:	ff040713          	addi	a4,s0,-16
   12c0c:	00f707b3          	add	a5,a4,a5
   12c10:	7487a783          	lw	a5,1864(a5) # fffffffffffff748 <__BSS_END__+0xfffffffffffe6618>
   12c14:	00078713          	mv	a4,a5
   12c18:	0b000793          	li	a5,176
   12c1c:	00f70c63          	beq	a4,a5,12c34 <main+0x2ae0>
   12c20:	000177b7          	lui	a5,0x17
   12c24:	d2078513          	addi	a0,a5,-736 # 16d20 <__errno+0x144a>
   12c28:	159000ef          	jal	ra,13580 <puts>
   12c2c:	fff00793          	li	a5,-1
   12c30:	7880006f          	j	133b8 <main+0x3264>
   12c34:	fffff7b7          	lui	a5,0xfffff
   12c38:	ff040713          	addi	a4,s0,-16
   12c3c:	00f707b3          	add	a5,a4,a5
   12c40:	74c7a783          	lw	a5,1868(a5) # fffffffffffff74c <__BSS_END__+0xfffffffffffe661c>
   12c44:	00078713          	mv	a4,a5
   12c48:	f6800793          	li	a5,-152
   12c4c:	00f70c63          	beq	a4,a5,12c64 <main+0x2b10>
   12c50:	000177b7          	lui	a5,0x17
   12c54:	d3878513          	addi	a0,a5,-712 # 16d38 <__errno+0x1462>
   12c58:	129000ef          	jal	ra,13580 <puts>
   12c5c:	fff00793          	li	a5,-1
   12c60:	7580006f          	j	133b8 <main+0x3264>
   12c64:	fffff7b7          	lui	a5,0xfffff
   12c68:	ff040713          	addi	a4,s0,-16
   12c6c:	00f707b3          	add	a5,a4,a5
   12c70:	7507a783          	lw	a5,1872(a5) # fffffffffffff750 <__BSS_END__+0xfffffffffffe6620>
   12c74:	00078713          	mv	a4,a5
   12c78:	e2000793          	li	a5,-480
   12c7c:	00f70c63          	beq	a4,a5,12c94 <main+0x2b40>
   12c80:	000177b7          	lui	a5,0x17
   12c84:	d5078513          	addi	a0,a5,-688 # 16d50 <__errno+0x147a>
   12c88:	0f9000ef          	jal	ra,13580 <puts>
   12c8c:	fff00793          	li	a5,-1
   12c90:	7280006f          	j	133b8 <main+0x3264>
   12c94:	fffff7b7          	lui	a5,0xfffff
   12c98:	ff040713          	addi	a4,s0,-16
   12c9c:	00f707b3          	add	a5,a4,a5
   12ca0:	7547a783          	lw	a5,1876(a5) # fffffffffffff754 <__BSS_END__+0xfffffffffffe6624>
   12ca4:	00078713          	mv	a4,a5
   12ca8:	cd800793          	li	a5,-808
   12cac:	00f70c63          	beq	a4,a5,12cc4 <main+0x2b70>
   12cb0:	000177b7          	lui	a5,0x17
   12cb4:	d6878513          	addi	a0,a5,-664 # 16d68 <__errno+0x1492>
   12cb8:	0c9000ef          	jal	ra,13580 <puts>
   12cbc:	fff00793          	li	a5,-1
   12cc0:	6f80006f          	j	133b8 <main+0x3264>
   12cc4:	fffff7b7          	lui	a5,0xfffff
   12cc8:	ff040713          	addi	a4,s0,-16
   12ccc:	00f707b3          	add	a5,a4,a5
   12cd0:	7587a783          	lw	a5,1880(a5) # fffffffffffff758 <__BSS_END__+0xfffffffffffe6628>
   12cd4:	00078713          	mv	a4,a5
   12cd8:	b9000793          	li	a5,-1136
   12cdc:	00f70c63          	beq	a4,a5,12cf4 <main+0x2ba0>
   12ce0:	000177b7          	lui	a5,0x17
   12ce4:	d8078513          	addi	a0,a5,-640 # 16d80 <__errno+0x14aa>
   12ce8:	099000ef          	jal	ra,13580 <puts>
   12cec:	fff00793          	li	a5,-1
   12cf0:	6c80006f          	j	133b8 <main+0x3264>
   12cf4:	fffff7b7          	lui	a5,0xfffff
   12cf8:	ff040713          	addi	a4,s0,-16
   12cfc:	00f707b3          	add	a5,a4,a5
   12d00:	75c7a783          	lw	a5,1884(a5) # fffffffffffff75c <__BSS_END__+0xfffffffffffe662c>
   12d04:	00078713          	mv	a4,a5
   12d08:	a4800793          	li	a5,-1464
   12d0c:	00f70c63          	beq	a4,a5,12d24 <main+0x2bd0>
   12d10:	000177b7          	lui	a5,0x17
   12d14:	d9878513          	addi	a0,a5,-616 # 16d98 <__errno+0x14c2>
   12d18:	069000ef          	jal	ra,13580 <puts>
   12d1c:	fff00793          	li	a5,-1
   12d20:	6980006f          	j	133b8 <main+0x3264>
   12d24:	fffff7b7          	lui	a5,0xfffff
   12d28:	ff040713          	addi	a4,s0,-16
   12d2c:	00f707b3          	add	a5,a4,a5
   12d30:	7607a783          	lw	a5,1888(a5) # fffffffffffff760 <__BSS_END__+0xfffffffffffe6630>
   12d34:	00078713          	mv	a4,a5
   12d38:	90000793          	li	a5,-1792
   12d3c:	00f70c63          	beq	a4,a5,12d54 <main+0x2c00>
   12d40:	000177b7          	lui	a5,0x17
   12d44:	db078513          	addi	a0,a5,-592 # 16db0 <__errno+0x14da>
   12d48:	039000ef          	jal	ra,13580 <puts>
   12d4c:	fff00793          	li	a5,-1
   12d50:	6680006f          	j	133b8 <main+0x3264>
   12d54:	fffff7b7          	lui	a5,0xfffff
   12d58:	ff040713          	addi	a4,s0,-16
   12d5c:	00f707b3          	add	a5,a4,a5
   12d60:	7647a783          	lw	a5,1892(a5) # fffffffffffff764 <__BSS_END__+0xfffffffffffe6634>
   12d64:	00078713          	mv	a4,a5
   12d68:	fffff7b7          	lui	a5,0xfffff
   12d6c:	7b878793          	addi	a5,a5,1976 # fffffffffffff7b8 <__BSS_END__+0xfffffffffffe6688>
   12d70:	00f70c63          	beq	a4,a5,12d88 <main+0x2c34>
   12d74:	000177b7          	lui	a5,0x17
   12d78:	dc878513          	addi	a0,a5,-568 # 16dc8 <__errno+0x14f2>
   12d7c:	005000ef          	jal	ra,13580 <puts>
   12d80:	fff00793          	li	a5,-1
   12d84:	6340006f          	j	133b8 <main+0x3264>
   12d88:	fffff7b7          	lui	a5,0xfffff
   12d8c:	ff040713          	addi	a4,s0,-16
   12d90:	00f707b3          	add	a5,a4,a5
   12d94:	7687a783          	lw	a5,1896(a5) # fffffffffffff768 <__BSS_END__+0xfffffffffffe6638>
   12d98:	00078713          	mv	a4,a5
   12d9c:	000017b7          	lui	a5,0x1
   12da0:	b6878793          	addi	a5,a5,-1176 # b68 <register_fini-0xf548>
   12da4:	00f70c63          	beq	a4,a5,12dbc <main+0x2c68>
   12da8:	000177b7          	lui	a5,0x17
   12dac:	de078513          	addi	a0,a5,-544 # 16de0 <__errno+0x150a>
   12db0:	7d0000ef          	jal	ra,13580 <puts>
   12db4:	fff00793          	li	a5,-1
   12db8:	6000006f          	j	133b8 <main+0x3264>
   12dbc:	fffff7b7          	lui	a5,0xfffff
   12dc0:	ff040713          	addi	a4,s0,-16
   12dc4:	00f707b3          	add	a5,a4,a5
   12dc8:	76c7a783          	lw	a5,1900(a5) # fffffffffffff76c <__BSS_END__+0xfffffffffffe663c>
   12dcc:	00078713          	mv	a4,a5
   12dd0:	000017b7          	lui	a5,0x1
   12dd4:	a1078793          	addi	a5,a5,-1520 # a10 <register_fini-0xf6a0>
   12dd8:	00f70c63          	beq	a4,a5,12df0 <main+0x2c9c>
   12ddc:	000177b7          	lui	a5,0x17
   12de0:	df878513          	addi	a0,a5,-520 # 16df8 <__errno+0x1522>
   12de4:	79c000ef          	jal	ra,13580 <puts>
   12de8:	fff00793          	li	a5,-1
   12dec:	5cc0006f          	j	133b8 <main+0x3264>
   12df0:	fffff7b7          	lui	a5,0xfffff
   12df4:	ff040713          	addi	a4,s0,-16
   12df8:	00f707b3          	add	a5,a4,a5
   12dfc:	7707a783          	lw	a5,1904(a5) # fffffffffffff770 <__BSS_END__+0xfffffffffffe6640>
   12e00:	00078713          	mv	a4,a5
   12e04:	000017b7          	lui	a5,0x1
   12e08:	8b878793          	addi	a5,a5,-1864 # 8b8 <register_fini-0xf7f8>
   12e0c:	00f70c63          	beq	a4,a5,12e24 <main+0x2cd0>
   12e10:	000177b7          	lui	a5,0x17
   12e14:	e1078513          	addi	a0,a5,-496 # 16e10 <__errno+0x153a>
   12e18:	768000ef          	jal	ra,13580 <puts>
   12e1c:	fff00793          	li	a5,-1
   12e20:	5980006f          	j	133b8 <main+0x3264>
   12e24:	fffff7b7          	lui	a5,0xfffff
   12e28:	ff040713          	addi	a4,s0,-16
   12e2c:	00f707b3          	add	a5,a4,a5
   12e30:	7747a783          	lw	a5,1908(a5) # fffffffffffff774 <__BSS_END__+0xfffffffffffe6644>
   12e34:	00078713          	mv	a4,a5
   12e38:	76000793          	li	a5,1888
   12e3c:	00f70c63          	beq	a4,a5,12e54 <main+0x2d00>
   12e40:	000177b7          	lui	a5,0x17
   12e44:	e2878513          	addi	a0,a5,-472 # 16e28 <__errno+0x1552>
   12e48:	738000ef          	jal	ra,13580 <puts>
   12e4c:	fff00793          	li	a5,-1
   12e50:	5680006f          	j	133b8 <main+0x3264>
   12e54:	fffff7b7          	lui	a5,0xfffff
   12e58:	ff040713          	addi	a4,s0,-16
   12e5c:	00f707b3          	add	a5,a4,a5
   12e60:	7787a783          	lw	a5,1912(a5) # fffffffffffff778 <__BSS_END__+0xfffffffffffe6648>
   12e64:	00078713          	mv	a4,a5
   12e68:	60800793          	li	a5,1544
   12e6c:	00f70c63          	beq	a4,a5,12e84 <main+0x2d30>
   12e70:	000177b7          	lui	a5,0x17
   12e74:	e4078513          	addi	a0,a5,-448 # 16e40 <__errno+0x156a>
   12e78:	708000ef          	jal	ra,13580 <puts>
   12e7c:	fff00793          	li	a5,-1
   12e80:	5380006f          	j	133b8 <main+0x3264>
   12e84:	fffff7b7          	lui	a5,0xfffff
   12e88:	ff040713          	addi	a4,s0,-16
   12e8c:	00f707b3          	add	a5,a4,a5
   12e90:	77c7a783          	lw	a5,1916(a5) # fffffffffffff77c <__BSS_END__+0xfffffffffffe664c>
   12e94:	00078713          	mv	a4,a5
   12e98:	4b000793          	li	a5,1200
   12e9c:	00f70c63          	beq	a4,a5,12eb4 <main+0x2d60>
   12ea0:	000177b7          	lui	a5,0x17
   12ea4:	e5878513          	addi	a0,a5,-424 # 16e58 <__errno+0x1582>
   12ea8:	6d8000ef          	jal	ra,13580 <puts>
   12eac:	fff00793          	li	a5,-1
   12eb0:	5080006f          	j	133b8 <main+0x3264>
   12eb4:	fffff7b7          	lui	a5,0xfffff
   12eb8:	ff040713          	addi	a4,s0,-16
   12ebc:	00f707b3          	add	a5,a4,a5
   12ec0:	7807a783          	lw	a5,1920(a5) # fffffffffffff780 <__BSS_END__+0xfffffffffffe6650>
   12ec4:	00078713          	mv	a4,a5
   12ec8:	35800793          	li	a5,856
   12ecc:	00f70c63          	beq	a4,a5,12ee4 <main+0x2d90>
   12ed0:	000177b7          	lui	a5,0x17
   12ed4:	e7078513          	addi	a0,a5,-400 # 16e70 <__errno+0x159a>
   12ed8:	6a8000ef          	jal	ra,13580 <puts>
   12edc:	fff00793          	li	a5,-1
   12ee0:	4d80006f          	j	133b8 <main+0x3264>
   12ee4:	fffff7b7          	lui	a5,0xfffff
   12ee8:	ff040713          	addi	a4,s0,-16
   12eec:	00f707b3          	add	a5,a4,a5
   12ef0:	7847a783          	lw	a5,1924(a5) # fffffffffffff784 <__BSS_END__+0xfffffffffffe6654>
   12ef4:	00078713          	mv	a4,a5
   12ef8:	20000793          	li	a5,512
   12efc:	00f70c63          	beq	a4,a5,12f14 <main+0x2dc0>
   12f00:	000177b7          	lui	a5,0x17
   12f04:	e8878513          	addi	a0,a5,-376 # 16e88 <__errno+0x15b2>
   12f08:	678000ef          	jal	ra,13580 <puts>
   12f0c:	fff00793          	li	a5,-1
   12f10:	4a80006f          	j	133b8 <main+0x3264>
   12f14:	fffff7b7          	lui	a5,0xfffff
   12f18:	ff040713          	addi	a4,s0,-16
   12f1c:	00f707b3          	add	a5,a4,a5
   12f20:	7887a783          	lw	a5,1928(a5) # fffffffffffff788 <__BSS_END__+0xfffffffffffe6658>
   12f24:	00078713          	mv	a4,a5
   12f28:	0a800793          	li	a5,168
   12f2c:	00f70c63          	beq	a4,a5,12f44 <main+0x2df0>
   12f30:	000177b7          	lui	a5,0x17
   12f34:	ea078513          	addi	a0,a5,-352 # 16ea0 <__errno+0x15ca>
   12f38:	648000ef          	jal	ra,13580 <puts>
   12f3c:	fff00793          	li	a5,-1
   12f40:	4780006f          	j	133b8 <main+0x3264>
   12f44:	fffff7b7          	lui	a5,0xfffff
   12f48:	ff040713          	addi	a4,s0,-16
   12f4c:	00f707b3          	add	a5,a4,a5
   12f50:	78c7a783          	lw	a5,1932(a5) # fffffffffffff78c <__BSS_END__+0xfffffffffffe665c>
   12f54:	00078713          	mv	a4,a5
   12f58:	f5000793          	li	a5,-176
   12f5c:	00f70c63          	beq	a4,a5,12f74 <main+0x2e20>
   12f60:	000177b7          	lui	a5,0x17
   12f64:	eb878513          	addi	a0,a5,-328 # 16eb8 <__errno+0x15e2>
   12f68:	618000ef          	jal	ra,13580 <puts>
   12f6c:	fff00793          	li	a5,-1
   12f70:	4480006f          	j	133b8 <main+0x3264>
   12f74:	fffff7b7          	lui	a5,0xfffff
   12f78:	ff040713          	addi	a4,s0,-16
   12f7c:	00f707b3          	add	a5,a4,a5
   12f80:	7907a783          	lw	a5,1936(a5) # fffffffffffff790 <__BSS_END__+0xfffffffffffe6660>
   12f84:	00078713          	mv	a4,a5
   12f88:	df800793          	li	a5,-520
   12f8c:	00f70c63          	beq	a4,a5,12fa4 <main+0x2e50>
   12f90:	000177b7          	lui	a5,0x17
   12f94:	ed078513          	addi	a0,a5,-304 # 16ed0 <__errno+0x15fa>
   12f98:	5e8000ef          	jal	ra,13580 <puts>
   12f9c:	fff00793          	li	a5,-1
   12fa0:	4180006f          	j	133b8 <main+0x3264>
   12fa4:	fffff7b7          	lui	a5,0xfffff
   12fa8:	ff040713          	addi	a4,s0,-16
   12fac:	00f707b3          	add	a5,a4,a5
   12fb0:	7947a783          	lw	a5,1940(a5) # fffffffffffff794 <__BSS_END__+0xfffffffffffe6664>
   12fb4:	00078713          	mv	a4,a5
   12fb8:	ca000793          	li	a5,-864
   12fbc:	00f70c63          	beq	a4,a5,12fd4 <main+0x2e80>
   12fc0:	000177b7          	lui	a5,0x17
   12fc4:	ee878513          	addi	a0,a5,-280 # 16ee8 <__errno+0x1612>
   12fc8:	5b8000ef          	jal	ra,13580 <puts>
   12fcc:	fff00793          	li	a5,-1
   12fd0:	3e80006f          	j	133b8 <main+0x3264>
   12fd4:	fffff7b7          	lui	a5,0xfffff
   12fd8:	ff040713          	addi	a4,s0,-16
   12fdc:	00f707b3          	add	a5,a4,a5
   12fe0:	7987a783          	lw	a5,1944(a5) # fffffffffffff798 <__BSS_END__+0xfffffffffffe6668>
   12fe4:	00078713          	mv	a4,a5
   12fe8:	b4800793          	li	a5,-1208
   12fec:	00f70c63          	beq	a4,a5,13004 <main+0x2eb0>
   12ff0:	000177b7          	lui	a5,0x17
   12ff4:	f0078513          	addi	a0,a5,-256 # 16f00 <__errno+0x162a>
   12ff8:	588000ef          	jal	ra,13580 <puts>
   12ffc:	fff00793          	li	a5,-1
   13000:	3b80006f          	j	133b8 <main+0x3264>
   13004:	fffff7b7          	lui	a5,0xfffff
   13008:	ff040713          	addi	a4,s0,-16
   1300c:	00f707b3          	add	a5,a4,a5
   13010:	79c7a783          	lw	a5,1948(a5) # fffffffffffff79c <__BSS_END__+0xfffffffffffe666c>
   13014:	00078713          	mv	a4,a5
   13018:	9f000793          	li	a5,-1552
   1301c:	00f70c63          	beq	a4,a5,13034 <main+0x2ee0>
   13020:	000177b7          	lui	a5,0x17
   13024:	f1878513          	addi	a0,a5,-232 # 16f18 <__errno+0x1642>
   13028:	558000ef          	jal	ra,13580 <puts>
   1302c:	fff00793          	li	a5,-1
   13030:	3880006f          	j	133b8 <main+0x3264>
   13034:	fffff7b7          	lui	a5,0xfffff
   13038:	ff040713          	addi	a4,s0,-16
   1303c:	00f707b3          	add	a5,a4,a5
   13040:	7a07a783          	lw	a5,1952(a5) # fffffffffffff7a0 <__BSS_END__+0xfffffffffffe6670>
   13044:	00078713          	mv	a4,a5
   13048:	89800793          	li	a5,-1896
   1304c:	00f70c63          	beq	a4,a5,13064 <main+0x2f10>
   13050:	000177b7          	lui	a5,0x17
   13054:	f3078513          	addi	a0,a5,-208 # 16f30 <__errno+0x165a>
   13058:	528000ef          	jal	ra,13580 <puts>
   1305c:	fff00793          	li	a5,-1
   13060:	3580006f          	j	133b8 <main+0x3264>
   13064:	fffff7b7          	lui	a5,0xfffff
   13068:	ff040713          	addi	a4,s0,-16
   1306c:	00f707b3          	add	a5,a4,a5
   13070:	7a47a783          	lw	a5,1956(a5) # fffffffffffff7a4 <__BSS_END__+0xfffffffffffe6674>
   13074:	00078713          	mv	a4,a5
   13078:	fffff7b7          	lui	a5,0xfffff
   1307c:	74078793          	addi	a5,a5,1856 # fffffffffffff740 <__BSS_END__+0xfffffffffffe6610>
   13080:	00f70c63          	beq	a4,a5,13098 <main+0x2f44>
   13084:	000177b7          	lui	a5,0x17
   13088:	f4878513          	addi	a0,a5,-184 # 16f48 <__errno+0x1672>
   1308c:	4f4000ef          	jal	ra,13580 <puts>
   13090:	fff00793          	li	a5,-1
   13094:	3240006f          	j	133b8 <main+0x3264>
   13098:	fffff7b7          	lui	a5,0xfffff
   1309c:	ff040713          	addi	a4,s0,-16
   130a0:	00f707b3          	add	a5,a4,a5
   130a4:	7a87a783          	lw	a5,1960(a5) # fffffffffffff7a8 <__BSS_END__+0xfffffffffffe6678>
   130a8:	00078713          	mv	a4,a5
   130ac:	000017b7          	lui	a5,0x1
   130b0:	be078793          	addi	a5,a5,-1056 # be0 <register_fini-0xf4d0>
   130b4:	00f70c63          	beq	a4,a5,130cc <main+0x2f78>
   130b8:	000177b7          	lui	a5,0x17
   130bc:	f6078513          	addi	a0,a5,-160 # 16f60 <__errno+0x168a>
   130c0:	4c0000ef          	jal	ra,13580 <puts>
   130c4:	fff00793          	li	a5,-1
   130c8:	2f00006f          	j	133b8 <main+0x3264>
   130cc:	fffff7b7          	lui	a5,0xfffff
   130d0:	ff040713          	addi	a4,s0,-16
   130d4:	00f707b3          	add	a5,a4,a5
   130d8:	7ac7a783          	lw	a5,1964(a5) # fffffffffffff7ac <__BSS_END__+0xfffffffffffe667c>
   130dc:	00078713          	mv	a4,a5
   130e0:	000017b7          	lui	a5,0x1
   130e4:	a7878793          	addi	a5,a5,-1416 # a78 <register_fini-0xf638>
   130e8:	00f70c63          	beq	a4,a5,13100 <main+0x2fac>
   130ec:	000177b7          	lui	a5,0x17
   130f0:	f7878513          	addi	a0,a5,-136 # 16f78 <__errno+0x16a2>
   130f4:	48c000ef          	jal	ra,13580 <puts>
   130f8:	fff00793          	li	a5,-1
   130fc:	2bc0006f          	j	133b8 <main+0x3264>
   13100:	fffff7b7          	lui	a5,0xfffff
   13104:	ff040713          	addi	a4,s0,-16
   13108:	00f707b3          	add	a5,a4,a5
   1310c:	7b07a783          	lw	a5,1968(a5) # fffffffffffff7b0 <__BSS_END__+0xfffffffffffe6680>
   13110:	00078713          	mv	a4,a5
   13114:	000017b7          	lui	a5,0x1
   13118:	91078793          	addi	a5,a5,-1776 # 910 <register_fini-0xf7a0>
   1311c:	00f70c63          	beq	a4,a5,13134 <main+0x2fe0>
   13120:	000177b7          	lui	a5,0x17
   13124:	f9078513          	addi	a0,a5,-112 # 16f90 <__errno+0x16ba>
   13128:	458000ef          	jal	ra,13580 <puts>
   1312c:	fff00793          	li	a5,-1
   13130:	2880006f          	j	133b8 <main+0x3264>
   13134:	fffff7b7          	lui	a5,0xfffff
   13138:	ff040713          	addi	a4,s0,-16
   1313c:	00f707b3          	add	a5,a4,a5
   13140:	7b47a783          	lw	a5,1972(a5) # fffffffffffff7b4 <__BSS_END__+0xfffffffffffe6684>
   13144:	00078713          	mv	a4,a5
   13148:	7a800793          	li	a5,1960
   1314c:	00f70c63          	beq	a4,a5,13164 <main+0x3010>
   13150:	000177b7          	lui	a5,0x17
   13154:	fa878513          	addi	a0,a5,-88 # 16fa8 <__errno+0x16d2>
   13158:	428000ef          	jal	ra,13580 <puts>
   1315c:	fff00793          	li	a5,-1
   13160:	2580006f          	j	133b8 <main+0x3264>
   13164:	fffff7b7          	lui	a5,0xfffff
   13168:	ff040713          	addi	a4,s0,-16
   1316c:	00f707b3          	add	a5,a4,a5
   13170:	7b87a783          	lw	a5,1976(a5) # fffffffffffff7b8 <__BSS_END__+0xfffffffffffe6688>
   13174:	00078713          	mv	a4,a5
   13178:	64000793          	li	a5,1600
   1317c:	00f70c63          	beq	a4,a5,13194 <main+0x3040>
   13180:	000177b7          	lui	a5,0x17
   13184:	fc078513          	addi	a0,a5,-64 # 16fc0 <__errno+0x16ea>
   13188:	3f8000ef          	jal	ra,13580 <puts>
   1318c:	fff00793          	li	a5,-1
   13190:	2280006f          	j	133b8 <main+0x3264>
   13194:	fffff7b7          	lui	a5,0xfffff
   13198:	ff040713          	addi	a4,s0,-16
   1319c:	00f707b3          	add	a5,a4,a5
   131a0:	7bc7a783          	lw	a5,1980(a5) # fffffffffffff7bc <__BSS_END__+0xfffffffffffe668c>
   131a4:	00078713          	mv	a4,a5
   131a8:	4d800793          	li	a5,1240
   131ac:	00f70c63          	beq	a4,a5,131c4 <main+0x3070>
   131b0:	000177b7          	lui	a5,0x17
   131b4:	fd878513          	addi	a0,a5,-40 # 16fd8 <__errno+0x1702>
   131b8:	3c8000ef          	jal	ra,13580 <puts>
   131bc:	fff00793          	li	a5,-1
   131c0:	1f80006f          	j	133b8 <main+0x3264>
   131c4:	fffff7b7          	lui	a5,0xfffff
   131c8:	ff040713          	addi	a4,s0,-16
   131cc:	00f707b3          	add	a5,a4,a5
   131d0:	7c07a783          	lw	a5,1984(a5) # fffffffffffff7c0 <__BSS_END__+0xfffffffffffe6690>
   131d4:	00078713          	mv	a4,a5
   131d8:	37000793          	li	a5,880
   131dc:	00f70c63          	beq	a4,a5,131f4 <main+0x30a0>
   131e0:	000177b7          	lui	a5,0x17
   131e4:	ff078513          	addi	a0,a5,-16 # 16ff0 <__errno+0x171a>
   131e8:	398000ef          	jal	ra,13580 <puts>
   131ec:	fff00793          	li	a5,-1
   131f0:	1c80006f          	j	133b8 <main+0x3264>
   131f4:	fffff7b7          	lui	a5,0xfffff
   131f8:	ff040713          	addi	a4,s0,-16
   131fc:	00f707b3          	add	a5,a4,a5
   13200:	7c47a783          	lw	a5,1988(a5) # fffffffffffff7c4 <__BSS_END__+0xfffffffffffe6694>
   13204:	00078713          	mv	a4,a5
   13208:	20800793          	li	a5,520
   1320c:	00f70c63          	beq	a4,a5,13224 <main+0x30d0>
   13210:	000177b7          	lui	a5,0x17
   13214:	00878513          	addi	a0,a5,8 # 17008 <__errno+0x1732>
   13218:	368000ef          	jal	ra,13580 <puts>
   1321c:	fff00793          	li	a5,-1
   13220:	1980006f          	j	133b8 <main+0x3264>
   13224:	fffff7b7          	lui	a5,0xfffff
   13228:	ff040713          	addi	a4,s0,-16
   1322c:	00f707b3          	add	a5,a4,a5
   13230:	7c87a783          	lw	a5,1992(a5) # fffffffffffff7c8 <__BSS_END__+0xfffffffffffe6698>
   13234:	00078713          	mv	a4,a5
   13238:	0a000793          	li	a5,160
   1323c:	00f70c63          	beq	a4,a5,13254 <main+0x3100>
   13240:	000177b7          	lui	a5,0x17
   13244:	02078513          	addi	a0,a5,32 # 17020 <__errno+0x174a>
   13248:	338000ef          	jal	ra,13580 <puts>
   1324c:	fff00793          	li	a5,-1
   13250:	1680006f          	j	133b8 <main+0x3264>
   13254:	fffff7b7          	lui	a5,0xfffff
   13258:	ff040713          	addi	a4,s0,-16
   1325c:	00f707b3          	add	a5,a4,a5
   13260:	7cc7a783          	lw	a5,1996(a5) # fffffffffffff7cc <__BSS_END__+0xfffffffffffe669c>
   13264:	00078713          	mv	a4,a5
   13268:	f3800793          	li	a5,-200
   1326c:	00f70c63          	beq	a4,a5,13284 <main+0x3130>
   13270:	000177b7          	lui	a5,0x17
   13274:	03878513          	addi	a0,a5,56 # 17038 <__errno+0x1762>
   13278:	308000ef          	jal	ra,13580 <puts>
   1327c:	fff00793          	li	a5,-1
   13280:	1380006f          	j	133b8 <main+0x3264>
   13284:	fffff7b7          	lui	a5,0xfffff
   13288:	ff040713          	addi	a4,s0,-16
   1328c:	00f707b3          	add	a5,a4,a5
   13290:	7d07a783          	lw	a5,2000(a5) # fffffffffffff7d0 <__BSS_END__+0xfffffffffffe66a0>
   13294:	00078713          	mv	a4,a5
   13298:	dd000793          	li	a5,-560
   1329c:	00f70c63          	beq	a4,a5,132b4 <main+0x3160>
   132a0:	000177b7          	lui	a5,0x17
   132a4:	05078513          	addi	a0,a5,80 # 17050 <__errno+0x177a>
   132a8:	2d8000ef          	jal	ra,13580 <puts>
   132ac:	fff00793          	li	a5,-1
   132b0:	1080006f          	j	133b8 <main+0x3264>
   132b4:	fffff7b7          	lui	a5,0xfffff
   132b8:	ff040713          	addi	a4,s0,-16
   132bc:	00f707b3          	add	a5,a4,a5
   132c0:	7d47a783          	lw	a5,2004(a5) # fffffffffffff7d4 <__BSS_END__+0xfffffffffffe66a4>
   132c4:	00078713          	mv	a4,a5
   132c8:	c6800793          	li	a5,-920
   132cc:	00f70c63          	beq	a4,a5,132e4 <main+0x3190>
   132d0:	000177b7          	lui	a5,0x17
   132d4:	06878513          	addi	a0,a5,104 # 17068 <__errno+0x1792>
   132d8:	2a8000ef          	jal	ra,13580 <puts>
   132dc:	fff00793          	li	a5,-1
   132e0:	0d80006f          	j	133b8 <main+0x3264>
   132e4:	fffff7b7          	lui	a5,0xfffff
   132e8:	ff040713          	addi	a4,s0,-16
   132ec:	00f707b3          	add	a5,a4,a5
   132f0:	7d87a783          	lw	a5,2008(a5) # fffffffffffff7d8 <__BSS_END__+0xfffffffffffe66a8>
   132f4:	00078713          	mv	a4,a5
   132f8:	b0000793          	li	a5,-1280
   132fc:	00f70c63          	beq	a4,a5,13314 <main+0x31c0>
   13300:	000177b7          	lui	a5,0x17
   13304:	08078513          	addi	a0,a5,128 # 17080 <__errno+0x17aa>
   13308:	278000ef          	jal	ra,13580 <puts>
   1330c:	fff00793          	li	a5,-1
   13310:	0a80006f          	j	133b8 <main+0x3264>
   13314:	fffff7b7          	lui	a5,0xfffff
   13318:	ff040713          	addi	a4,s0,-16
   1331c:	00f707b3          	add	a5,a4,a5
   13320:	7dc7a783          	lw	a5,2012(a5) # fffffffffffff7dc <__BSS_END__+0xfffffffffffe66ac>
   13324:	00078713          	mv	a4,a5
   13328:	99800793          	li	a5,-1640
   1332c:	00f70c63          	beq	a4,a5,13344 <main+0x31f0>
   13330:	000177b7          	lui	a5,0x17
   13334:	09878513          	addi	a0,a5,152 # 17098 <__errno+0x17c2>
   13338:	248000ef          	jal	ra,13580 <puts>
   1333c:	fff00793          	li	a5,-1
   13340:	0780006f          	j	133b8 <main+0x3264>
   13344:	fffff7b7          	lui	a5,0xfffff
   13348:	ff040713          	addi	a4,s0,-16
   1334c:	00f707b3          	add	a5,a4,a5
   13350:	7e07a783          	lw	a5,2016(a5) # fffffffffffff7e0 <__BSS_END__+0xfffffffffffe66b0>
   13354:	00078713          	mv	a4,a5
   13358:	83000793          	li	a5,-2000
   1335c:	00f70c63          	beq	a4,a5,13374 <main+0x3220>
   13360:	000177b7          	lui	a5,0x17
   13364:	0b078513          	addi	a0,a5,176 # 170b0 <__errno+0x17da>
   13368:	218000ef          	jal	ra,13580 <puts>
   1336c:	fff00793          	li	a5,-1
   13370:	0480006f          	j	133b8 <main+0x3264>
   13374:	fffff7b7          	lui	a5,0xfffff
   13378:	ff040713          	addi	a4,s0,-16
   1337c:	00f707b3          	add	a5,a4,a5
   13380:	7e47a783          	lw	a5,2020(a5) # fffffffffffff7e4 <__BSS_END__+0xfffffffffffe66b4>
   13384:	00078713          	mv	a4,a5
   13388:	fffff7b7          	lui	a5,0xfffff
   1338c:	6c878793          	addi	a5,a5,1736 # fffffffffffff6c8 <__BSS_END__+0xfffffffffffe6598>
   13390:	00f70c63          	beq	a4,a5,133a8 <main+0x3254>
   13394:	000177b7          	lui	a5,0x17
   13398:	0c878513          	addi	a0,a5,200 # 170c8 <__errno+0x17f2>
   1339c:	1e4000ef          	jal	ra,13580 <puts>
   133a0:	fff00793          	li	a5,-1
   133a4:	0140006f          	j	133b8 <main+0x3264>
   133a8:	000177b7          	lui	a5,0x17
   133ac:	0e078513          	addi	a0,a5,224 # 170e0 <__errno+0x180a>
   133b0:	1d0000ef          	jal	ra,13580 <puts>
   133b4:	00000793          	li	a5,0
   133b8:	00078513          	mv	a0,a5
   133bc:	44010113          	addi	sp,sp,1088
   133c0:	7e813083          	ld	ra,2024(sp)
   133c4:	7e013403          	ld	s0,2016(sp)
   133c8:	7f010113          	addi	sp,sp,2032
   133cc:	00008067          	ret

00000000000133d0 <exit>:
   133d0:	1141                	addi	sp,sp,-16
   133d2:	4581                	li	a1,0
   133d4:	e022                	sd	s0,0(sp)
   133d6:	e406                	sd	ra,8(sp)
   133d8:	842a                	mv	s0,a0
   133da:	23e000ef          	jal	ra,13618 <__call_exitprocs>
   133de:	7501b503          	ld	a0,1872(gp) # 19080 <_global_impure_ptr>
   133e2:	6d3c                	ld	a5,88(a0)
   133e4:	c391                	beqz	a5,133e8 <exit+0x18>
   133e6:	9782                	jalr	a5
   133e8:	8522                	mv	a0,s0
   133ea:	332020ef          	jal	ra,1571c <_exit>

00000000000133ee <__libc_init_array>:
   133ee:	1101                	addi	sp,sp,-32
   133f0:	e822                	sd	s0,16(sp)
   133f2:	e04a                	sd	s2,0(sp)
   133f4:	6461                	lui	s0,0x18
   133f6:	6961                	lui	s2,0x18
   133f8:	0f840793          	addi	a5,s0,248 # 180f8 <__init_array_start>
   133fc:	0f890913          	addi	s2,s2,248 # 180f8 <__init_array_start>
   13400:	40f90933          	sub	s2,s2,a5
   13404:	ec06                	sd	ra,24(sp)
   13406:	e426                	sd	s1,8(sp)
   13408:	40395913          	srai	s2,s2,0x3
   1340c:	00090b63          	beqz	s2,13422 <__libc_init_array+0x34>
   13410:	0f840413          	addi	s0,s0,248
   13414:	4481                	li	s1,0
   13416:	601c                	ld	a5,0(s0)
   13418:	0485                	addi	s1,s1,1
   1341a:	0421                	addi	s0,s0,8
   1341c:	9782                	jalr	a5
   1341e:	fe991ce3          	bne	s2,s1,13416 <__libc_init_array+0x28>
   13422:	6461                	lui	s0,0x18
   13424:	6961                	lui	s2,0x18
   13426:	0f840793          	addi	a5,s0,248 # 180f8 <__init_array_start>
   1342a:	10890913          	addi	s2,s2,264 # 18108 <__do_global_dtors_aux_fini_array_entry>
   1342e:	40f90933          	sub	s2,s2,a5
   13432:	40395913          	srai	s2,s2,0x3
   13436:	00090b63          	beqz	s2,1344c <__libc_init_array+0x5e>
   1343a:	0f840413          	addi	s0,s0,248
   1343e:	4481                	li	s1,0
   13440:	601c                	ld	a5,0(s0)
   13442:	0485                	addi	s1,s1,1
   13444:	0421                	addi	s0,s0,8
   13446:	9782                	jalr	a5
   13448:	fe991ce3          	bne	s2,s1,13440 <__libc_init_array+0x52>
   1344c:	60e2                	ld	ra,24(sp)
   1344e:	6442                	ld	s0,16(sp)
   13450:	64a2                	ld	s1,8(sp)
   13452:	6902                	ld	s2,0(sp)
   13454:	6105                	addi	sp,sp,32
   13456:	8082                	ret

0000000000013458 <memset>:
   13458:	433d                	li	t1,15
   1345a:	872a                	mv	a4,a0
   1345c:	02c37163          	bgeu	t1,a2,1347e <memset+0x26>
   13460:	00f77793          	andi	a5,a4,15
   13464:	e3c1                	bnez	a5,134e4 <memset+0x8c>
   13466:	e1bd                	bnez	a1,134cc <memset+0x74>
   13468:	ff067693          	andi	a3,a2,-16
   1346c:	8a3d                	andi	a2,a2,15
   1346e:	96ba                	add	a3,a3,a4
   13470:	e30c                	sd	a1,0(a4)
   13472:	e70c                	sd	a1,8(a4)
   13474:	0741                	addi	a4,a4,16
   13476:	fed76de3          	bltu	a4,a3,13470 <memset+0x18>
   1347a:	e211                	bnez	a2,1347e <memset+0x26>
   1347c:	8082                	ret
   1347e:	40c306b3          	sub	a3,t1,a2
   13482:	068a                	slli	a3,a3,0x2
   13484:	00000297          	auipc	t0,0x0
   13488:	9696                	add	a3,a3,t0
   1348a:	00a68067          	jr	10(a3)
   1348e:	00b70723          	sb	a1,14(a4)
   13492:	00b706a3          	sb	a1,13(a4)
   13496:	00b70623          	sb	a1,12(a4)
   1349a:	00b705a3          	sb	a1,11(a4)
   1349e:	00b70523          	sb	a1,10(a4)
   134a2:	00b704a3          	sb	a1,9(a4)
   134a6:	00b70423          	sb	a1,8(a4)
   134aa:	00b703a3          	sb	a1,7(a4)
   134ae:	00b70323          	sb	a1,6(a4)
   134b2:	00b702a3          	sb	a1,5(a4)
   134b6:	00b70223          	sb	a1,4(a4)
   134ba:	00b701a3          	sb	a1,3(a4)
   134be:	00b70123          	sb	a1,2(a4)
   134c2:	00b700a3          	sb	a1,1(a4)
   134c6:	00b70023          	sb	a1,0(a4)
   134ca:	8082                	ret
   134cc:	0ff5f593          	zext.b	a1,a1
   134d0:	00859693          	slli	a3,a1,0x8
   134d4:	8dd5                	or	a1,a1,a3
   134d6:	01059693          	slli	a3,a1,0x10
   134da:	8dd5                	or	a1,a1,a3
   134dc:	02059693          	slli	a3,a1,0x20
   134e0:	8dd5                	or	a1,a1,a3
   134e2:	b759                	j	13468 <memset+0x10>
   134e4:	00279693          	slli	a3,a5,0x2
   134e8:	00000297          	auipc	t0,0x0
   134ec:	9696                	add	a3,a3,t0
   134ee:	8286                	mv	t0,ra
   134f0:	fa2680e7          	jalr	-94(a3)
   134f4:	8096                	mv	ra,t0
   134f6:	17c1                	addi	a5,a5,-16
   134f8:	8f1d                	sub	a4,a4,a5
   134fa:	963e                	add	a2,a2,a5
   134fc:	f8c371e3          	bgeu	t1,a2,1347e <memset+0x26>
   13500:	b79d                	j	13466 <memset+0xe>

0000000000013502 <_puts_r>:
   13502:	7159                	addi	sp,sp,-112
   13504:	f0a2                	sd	s0,96(sp)
   13506:	842a                	mv	s0,a0
   13508:	852e                	mv	a0,a1
   1350a:	eca6                	sd	s1,88(sp)
   1350c:	f486                	sd	ra,104(sp)
   1350e:	84ae                	mv	s1,a1
   13510:	078000ef          	jal	ra,13588 <strlen>
   13514:	67dd                	lui	a5,0x17
   13516:	0f078793          	addi	a5,a5,240 # 170f0 <__errno+0x181a>
   1351a:	e0be                	sd	a5,64(sp)
   1351c:	4785                	li	a5,1
   1351e:	e4be                	sd	a5,72(sp)
   13520:	4838                	lw	a4,80(s0)
   13522:	181c                	addi	a5,sp,48
   13524:	00150693          	addi	a3,a0,1
   13528:	ec3e                	sd	a5,24(sp)
   1352a:	4789                	li	a5,2
   1352c:	f826                	sd	s1,48(sp)
   1352e:	fc2a                	sd	a0,56(sp)
   13530:	f436                	sd	a3,40(sp)
   13532:	d03e                	sw	a5,32(sp)
   13534:	680c                	ld	a1,16(s0)
   13536:	cf0d                	beqz	a4,13570 <_puts_r+0x6e>
   13538:	01059783          	lh	a5,16(a1)
   1353c:	03279713          	slli	a4,a5,0x32
   13540:	00074d63          	bltz	a4,1355a <_puts_r+0x58>
   13544:	0ac5a703          	lw	a4,172(a1)
   13548:	6689                	lui	a3,0x2
   1354a:	8fd5                	or	a5,a5,a3
   1354c:	76f9                	lui	a3,0xffffe
   1354e:	16fd                	addi	a3,a3,-1
   13550:	8f75                	and	a4,a4,a3
   13552:	00f59823          	sh	a5,16(a1)
   13556:	0ae5a623          	sw	a4,172(a1)
   1355a:	0830                	addi	a2,sp,24
   1355c:	8522                	mv	a0,s0
   1355e:	440000ef          	jal	ra,1399e <__sfvwrite_r>
   13562:	ed09                	bnez	a0,1357c <_puts_r+0x7a>
   13564:	4529                	li	a0,10
   13566:	70a6                	ld	ra,104(sp)
   13568:	7406                	ld	s0,96(sp)
   1356a:	64e6                	ld	s1,88(sp)
   1356c:	6165                	addi	sp,sp,112
   1356e:	8082                	ret
   13570:	8522                	mv	a0,s0
   13572:	e42e                	sd	a1,8(sp)
   13574:	3ce000ef          	jal	ra,13942 <__sinit>
   13578:	65a2                	ld	a1,8(sp)
   1357a:	bf7d                	j	13538 <_puts_r+0x36>
   1357c:	557d                	li	a0,-1
   1357e:	b7e5                	j	13566 <_puts_r+0x64>

0000000000013580 <puts>:
   13580:	85aa                	mv	a1,a0
   13582:	7601b503          	ld	a0,1888(gp) # 19090 <_impure_ptr>
   13586:	bfb5                	j	13502 <_puts_r>

0000000000013588 <strlen>:
   13588:	00757793          	andi	a5,a0,7
   1358c:	872a                	mv	a4,a0
   1358e:	eba9                	bnez	a5,135e0 <strlen+0x58>
   13590:	7381b683          	ld	a3,1848(gp) # 19068 <__SDATA_BEGIN__>
   13594:	55fd                	li	a1,-1
   13596:	6310                	ld	a2,0(a4)
   13598:	0721                	addi	a4,a4,8
   1359a:	00d677b3          	and	a5,a2,a3
   1359e:	97b6                	add	a5,a5,a3
   135a0:	8fd1                	or	a5,a5,a2
   135a2:	8fd5                	or	a5,a5,a3
   135a4:	feb789e3          	beq	a5,a1,13596 <strlen+0xe>
   135a8:	ff874683          	lbu	a3,-8(a4)
   135ac:	40a707b3          	sub	a5,a4,a0
   135b0:	c6a9                	beqz	a3,135fa <strlen+0x72>
   135b2:	ff974683          	lbu	a3,-7(a4)
   135b6:	ce9d                	beqz	a3,135f4 <strlen+0x6c>
   135b8:	ffa74683          	lbu	a3,-6(a4)
   135bc:	c6a9                	beqz	a3,13606 <strlen+0x7e>
   135be:	ffb74683          	lbu	a3,-5(a4)
   135c2:	ce9d                	beqz	a3,13600 <strlen+0x78>
   135c4:	ffc74683          	lbu	a3,-4(a4)
   135c8:	ffd74603          	lbu	a2,-3(a4)
   135cc:	ffe74503          	lbu	a0,-2(a4)
   135d0:	ce95                	beqz	a3,1360c <strlen+0x84>
   135d2:	c221                	beqz	a2,13612 <strlen+0x8a>
   135d4:	00a03533          	snez	a0,a0
   135d8:	953e                	add	a0,a0,a5
   135da:	1579                	addi	a0,a0,-2
   135dc:	8082                	ret
   135de:	dacd                	beqz	a3,13590 <strlen+0x8>
   135e0:	00074783          	lbu	a5,0(a4)
   135e4:	0705                	addi	a4,a4,1
   135e6:	00777693          	andi	a3,a4,7
   135ea:	fbf5                	bnez	a5,135de <strlen+0x56>
   135ec:	8f09                	sub	a4,a4,a0
   135ee:	fff70513          	addi	a0,a4,-1
   135f2:	8082                	ret
   135f4:	ff978513          	addi	a0,a5,-7
   135f8:	8082                	ret
   135fa:	ff878513          	addi	a0,a5,-8
   135fe:	8082                	ret
   13600:	ffb78513          	addi	a0,a5,-5
   13604:	8082                	ret
   13606:	ffa78513          	addi	a0,a5,-6
   1360a:	8082                	ret
   1360c:	ffc78513          	addi	a0,a5,-4
   13610:	8082                	ret
   13612:	ffd78513          	addi	a0,a5,-3
   13616:	8082                	ret

0000000000013618 <__call_exitprocs>:
   13618:	715d                	addi	sp,sp,-80
   1361a:	f052                	sd	s4,32(sp)
   1361c:	7501ba03          	ld	s4,1872(gp) # 19080 <_global_impure_ptr>
   13620:	f84a                	sd	s2,48(sp)
   13622:	e486                	sd	ra,72(sp)
   13624:	1f8a3903          	ld	s2,504(s4)
   13628:	e0a2                	sd	s0,64(sp)
   1362a:	fc26                	sd	s1,56(sp)
   1362c:	f44e                	sd	s3,40(sp)
   1362e:	ec56                	sd	s5,24(sp)
   13630:	e85a                	sd	s6,16(sp)
   13632:	e45e                	sd	s7,8(sp)
   13634:	e062                	sd	s8,0(sp)
   13636:	02090863          	beqz	s2,13666 <__call_exitprocs+0x4e>
   1363a:	8b2a                	mv	s6,a0
   1363c:	8bae                	mv	s7,a1
   1363e:	4a85                	li	s5,1
   13640:	59fd                	li	s3,-1
   13642:	00892483          	lw	s1,8(s2)
   13646:	fff4841b          	addiw	s0,s1,-1
   1364a:	00044e63          	bltz	s0,13666 <__call_exitprocs+0x4e>
   1364e:	048e                	slli	s1,s1,0x3
   13650:	94ca                	add	s1,s1,s2
   13652:	020b8663          	beqz	s7,1367e <__call_exitprocs+0x66>
   13656:	2084b783          	ld	a5,520(s1)
   1365a:	03778263          	beq	a5,s7,1367e <__call_exitprocs+0x66>
   1365e:	347d                	addiw	s0,s0,-1
   13660:	14e1                	addi	s1,s1,-8
   13662:	ff3418e3          	bne	s0,s3,13652 <__call_exitprocs+0x3a>
   13666:	60a6                	ld	ra,72(sp)
   13668:	6406                	ld	s0,64(sp)
   1366a:	74e2                	ld	s1,56(sp)
   1366c:	7942                	ld	s2,48(sp)
   1366e:	79a2                	ld	s3,40(sp)
   13670:	7a02                	ld	s4,32(sp)
   13672:	6ae2                	ld	s5,24(sp)
   13674:	6b42                	ld	s6,16(sp)
   13676:	6ba2                	ld	s7,8(sp)
   13678:	6c02                	ld	s8,0(sp)
   1367a:	6161                	addi	sp,sp,80
   1367c:	8082                	ret
   1367e:	00892783          	lw	a5,8(s2)
   13682:	6498                	ld	a4,8(s1)
   13684:	37fd                	addiw	a5,a5,-1
   13686:	04878463          	beq	a5,s0,136ce <__call_exitprocs+0xb6>
   1368a:	0004b423          	sd	zero,8(s1)
   1368e:	db61                	beqz	a4,1365e <__call_exitprocs+0x46>
   13690:	31092783          	lw	a5,784(s2)
   13694:	008a96bb          	sllw	a3,s5,s0
   13698:	00892c03          	lw	s8,8(s2)
   1369c:	8ff5                	and	a5,a5,a3
   1369e:	2781                	sext.w	a5,a5
   136a0:	ef89                	bnez	a5,136ba <__call_exitprocs+0xa2>
   136a2:	9702                	jalr	a4
   136a4:	00892703          	lw	a4,8(s2)
   136a8:	1f8a3783          	ld	a5,504(s4)
   136ac:	01871463          	bne	a4,s8,136b4 <__call_exitprocs+0x9c>
   136b0:	fb2787e3          	beq	a5,s2,1365e <__call_exitprocs+0x46>
   136b4:	dbcd                	beqz	a5,13666 <__call_exitprocs+0x4e>
   136b6:	893e                	mv	s2,a5
   136b8:	b769                	j	13642 <__call_exitprocs+0x2a>
   136ba:	31492783          	lw	a5,788(s2)
   136be:	1084b583          	ld	a1,264(s1)
   136c2:	8ff5                	and	a5,a5,a3
   136c4:	2781                	sext.w	a5,a5
   136c6:	e799                	bnez	a5,136d4 <__call_exitprocs+0xbc>
   136c8:	855a                	mv	a0,s6
   136ca:	9702                	jalr	a4
   136cc:	bfe1                	j	136a4 <__call_exitprocs+0x8c>
   136ce:	00892423          	sw	s0,8(s2)
   136d2:	bf75                	j	1368e <__call_exitprocs+0x76>
   136d4:	852e                	mv	a0,a1
   136d6:	9702                	jalr	a4
   136d8:	b7f1                	j	136a4 <__call_exitprocs+0x8c>

00000000000136da <atexit>:
   136da:	85aa                	mv	a1,a0
   136dc:	4681                	li	a3,0
   136de:	4601                	li	a2,0
   136e0:	4501                	li	a0,0
   136e2:	5a20106f          	j	14c84 <__register_exitproc>

00000000000136e6 <__fp_lock>:
   136e6:	4501                	li	a0,0
   136e8:	8082                	ret

00000000000136ea <_cleanup_r>:
   136ea:	65d5                	lui	a1,0x15
   136ec:	db058593          	addi	a1,a1,-592 # 14db0 <_fclose_r>
   136f0:	ada9                	j	13d4a <_fwalk_reent>

00000000000136f2 <__fp_unlock>:
   136f2:	4501                	li	a0,0
   136f4:	8082                	ret

00000000000136f6 <__sinit.part.0>:
   136f6:	7139                	addi	sp,sp,-64
   136f8:	67cd                	lui	a5,0x13
   136fa:	fc06                	sd	ra,56(sp)
   136fc:	f822                	sd	s0,48(sp)
   136fe:	f426                	sd	s1,40(sp)
   13700:	f04a                	sd	s2,32(sp)
   13702:	ec4e                	sd	s3,24(sp)
   13704:	e852                	sd	s4,16(sp)
   13706:	e456                	sd	s5,8(sp)
   13708:	e05a                	sd	s6,0(sp)
   1370a:	6500                	ld	s0,8(a0)
   1370c:	6ea78793          	addi	a5,a5,1770 # 136ea <_cleanup_r>
   13710:	ed3c                	sd	a5,88(a0)
   13712:	53850713          	addi	a4,a0,1336
   13716:	478d                	li	a5,3
   13718:	52e53823          	sd	a4,1328(a0)
   1371c:	52f52423          	sw	a5,1320(a0)
   13720:	52053023          	sd	zero,1312(a0)
   13724:	4791                	li	a5,4
   13726:	892a                	mv	s2,a0
   13728:	c81c                	sw	a5,16(s0)
   1372a:	4621                	li	a2,8
   1372c:	4581                	li	a1,0
   1372e:	0a042623          	sw	zero,172(s0)
   13732:	00043023          	sd	zero,0(s0)
   13736:	00043423          	sd	zero,8(s0)
   1373a:	00043c23          	sd	zero,24(s0)
   1373e:	02042023          	sw	zero,32(s0)
   13742:	02042423          	sw	zero,40(s0)
   13746:	0a440513          	addi	a0,s0,164
   1374a:	d0fff0ef          	jal	ra,13458 <memset>
   1374e:	6b55                	lui	s6,0x15
   13750:	01093483          	ld	s1,16(s2)
   13754:	6ad5                	lui	s5,0x15
   13756:	6a55                	lui	s4,0x15
   13758:	69d5                	lui	s3,0x15
   1375a:	a7ab0b13          	addi	s6,s6,-1414 # 14a7a <__sread>
   1375e:	ab6a8a93          	addi	s5,s5,-1354 # 14ab6 <__swrite>
   13762:	b08a0a13          	addi	s4,s4,-1272 # 14b08 <__sseek>
   13766:	b4a98993          	addi	s3,s3,-1206 # 14b4a <__sclose>
   1376a:	67c1                	lui	a5,0x10
   1376c:	03643c23          	sd	s6,56(s0)
   13770:	05543023          	sd	s5,64(s0)
   13774:	05443423          	sd	s4,72(s0)
   13778:	05343823          	sd	s3,80(s0)
   1377c:	f800                	sd	s0,48(s0)
   1377e:	07a5                	addi	a5,a5,9
   13780:	c89c                	sw	a5,16(s1)
   13782:	4621                	li	a2,8
   13784:	4581                	li	a1,0
   13786:	0a04a623          	sw	zero,172(s1)
   1378a:	0004b023          	sd	zero,0(s1)
   1378e:	0004b423          	sd	zero,8(s1)
   13792:	0004bc23          	sd	zero,24(s1)
   13796:	0204a023          	sw	zero,32(s1)
   1379a:	0204a423          	sw	zero,40(s1)
   1379e:	0a448513          	addi	a0,s1,164
   137a2:	cb7ff0ef          	jal	ra,13458 <memset>
   137a6:	01893403          	ld	s0,24(s2)
   137aa:	000207b7          	lui	a5,0x20
   137ae:	0364bc23          	sd	s6,56(s1)
   137b2:	0554b023          	sd	s5,64(s1)
   137b6:	0544b423          	sd	s4,72(s1)
   137ba:	0534b823          	sd	s3,80(s1)
   137be:	f884                	sd	s1,48(s1)
   137c0:	07c9                	addi	a5,a5,18
   137c2:	c81c                	sw	a5,16(s0)
   137c4:	0a042623          	sw	zero,172(s0)
   137c8:	00043023          	sd	zero,0(s0)
   137cc:	00043423          	sd	zero,8(s0)
   137d0:	00043c23          	sd	zero,24(s0)
   137d4:	02042023          	sw	zero,32(s0)
   137d8:	02042423          	sw	zero,40(s0)
   137dc:	0a440513          	addi	a0,s0,164
   137e0:	4621                	li	a2,8
   137e2:	4581                	li	a1,0
   137e4:	c75ff0ef          	jal	ra,13458 <memset>
   137e8:	70e2                	ld	ra,56(sp)
   137ea:	03643c23          	sd	s6,56(s0)
   137ee:	05543023          	sd	s5,64(s0)
   137f2:	05443423          	sd	s4,72(s0)
   137f6:	05343823          	sd	s3,80(s0)
   137fa:	f800                	sd	s0,48(s0)
   137fc:	7442                	ld	s0,48(sp)
   137fe:	4785                	li	a5,1
   13800:	04f92823          	sw	a5,80(s2)
   13804:	74a2                	ld	s1,40(sp)
   13806:	7902                	ld	s2,32(sp)
   13808:	69e2                	ld	s3,24(sp)
   1380a:	6a42                	ld	s4,16(sp)
   1380c:	6aa2                	ld	s5,8(sp)
   1380e:	6b02                	ld	s6,0(sp)
   13810:	6121                	addi	sp,sp,64
   13812:	8082                	ret

0000000000013814 <__sfmoreglue>:
   13814:	1101                	addi	sp,sp,-32
   13816:	e426                	sd	s1,8(sp)
   13818:	0b000613          	li	a2,176
   1381c:	fff5849b          	addiw	s1,a1,-1
   13820:	02c484b3          	mul	s1,s1,a2
   13824:	e04a                	sd	s2,0(sp)
   13826:	892e                	mv	s2,a1
   13828:	e822                	sd	s0,16(sp)
   1382a:	ec06                	sd	ra,24(sp)
   1382c:	0c848593          	addi	a1,s1,200
   13830:	5a4000ef          	jal	ra,13dd4 <_malloc_r>
   13834:	842a                	mv	s0,a0
   13836:	cd01                	beqz	a0,1384e <__sfmoreglue+0x3a>
   13838:	0561                	addi	a0,a0,24
   1383a:	00043023          	sd	zero,0(s0)
   1383e:	01242423          	sw	s2,8(s0)
   13842:	e808                	sd	a0,16(s0)
   13844:	0b048613          	addi	a2,s1,176
   13848:	4581                	li	a1,0
   1384a:	c0fff0ef          	jal	ra,13458 <memset>
   1384e:	60e2                	ld	ra,24(sp)
   13850:	8522                	mv	a0,s0
   13852:	6442                	ld	s0,16(sp)
   13854:	64a2                	ld	s1,8(sp)
   13856:	6902                	ld	s2,0(sp)
   13858:	6105                	addi	sp,sp,32
   1385a:	8082                	ret

000000000001385c <__sfp>:
   1385c:	7179                	addi	sp,sp,-48
   1385e:	ec26                	sd	s1,24(sp)
   13860:	7501b483          	ld	s1,1872(gp) # 19080 <_global_impure_ptr>
   13864:	e84a                	sd	s2,16(sp)
   13866:	f406                	sd	ra,40(sp)
   13868:	48bc                	lw	a5,80(s1)
   1386a:	f022                	sd	s0,32(sp)
   1386c:	e44e                	sd	s3,8(sp)
   1386e:	e052                	sd	s4,0(sp)
   13870:	892a                	mv	s2,a0
   13872:	c3d9                	beqz	a5,138f8 <__sfp+0x9c>
   13874:	52048493          	addi	s1,s1,1312
   13878:	0b000993          	li	s3,176
   1387c:	4a11                	li	s4,4
   1387e:	449c                	lw	a5,8(s1)
   13880:	6880                	ld	s0,16(s1)
   13882:	06f05763          	blez	a5,138f0 <__sfp+0x94>
   13886:	37fd                	addiw	a5,a5,-1
   13888:	1782                	slli	a5,a5,0x20
   1388a:	9381                	srli	a5,a5,0x20
   1388c:	0785                	addi	a5,a5,1
   1388e:	033787b3          	mul	a5,a5,s3
   13892:	97a2                	add	a5,a5,s0
   13894:	a029                	j	1389e <__sfp+0x42>
   13896:	0b040413          	addi	s0,s0,176
   1389a:	04f40b63          	beq	s0,a5,138f0 <__sfp+0x94>
   1389e:	01041703          	lh	a4,16(s0)
   138a2:	fb75                	bnez	a4,13896 <__sfp+0x3a>
   138a4:	77c1                	lui	a5,0xffff0
   138a6:	0785                	addi	a5,a5,1
   138a8:	0a042623          	sw	zero,172(s0)
   138ac:	00043023          	sd	zero,0(s0)
   138b0:	00043423          	sd	zero,8(s0)
   138b4:	c81c                	sw	a5,16(s0)
   138b6:	00043c23          	sd	zero,24(s0)
   138ba:	02042023          	sw	zero,32(s0)
   138be:	02042423          	sw	zero,40(s0)
   138c2:	4621                	li	a2,8
   138c4:	4581                	li	a1,0
   138c6:	0a440513          	addi	a0,s0,164
   138ca:	b8fff0ef          	jal	ra,13458 <memset>
   138ce:	04043c23          	sd	zero,88(s0)
   138d2:	06042023          	sw	zero,96(s0)
   138d6:	06043c23          	sd	zero,120(s0)
   138da:	08042023          	sw	zero,128(s0)
   138de:	70a2                	ld	ra,40(sp)
   138e0:	8522                	mv	a0,s0
   138e2:	7402                	ld	s0,32(sp)
   138e4:	64e2                	ld	s1,24(sp)
   138e6:	6942                	ld	s2,16(sp)
   138e8:	69a2                	ld	s3,8(sp)
   138ea:	6a02                	ld	s4,0(sp)
   138ec:	6145                	addi	sp,sp,48
   138ee:	8082                	ret
   138f0:	6080                	ld	s0,0(s1)
   138f2:	c419                	beqz	s0,13900 <__sfp+0xa4>
   138f4:	84a2                	mv	s1,s0
   138f6:	b761                	j	1387e <__sfp+0x22>
   138f8:	8526                	mv	a0,s1
   138fa:	dfdff0ef          	jal	ra,136f6 <__sinit.part.0>
   138fe:	bf9d                	j	13874 <__sfp+0x18>
   13900:	2d800593          	li	a1,728
   13904:	854a                	mv	a0,s2
   13906:	4ce000ef          	jal	ra,13dd4 <_malloc_r>
   1390a:	842a                	mv	s0,a0
   1390c:	cd19                	beqz	a0,1392a <__sfp+0xce>
   1390e:	0561                	addi	a0,a0,24
   13910:	00043023          	sd	zero,0(s0)
   13914:	01442423          	sw	s4,8(s0)
   13918:	e808                	sd	a0,16(s0)
   1391a:	2c000613          	li	a2,704
   1391e:	4581                	li	a1,0
   13920:	b39ff0ef          	jal	ra,13458 <memset>
   13924:	e080                	sd	s0,0(s1)
   13926:	84a2                	mv	s1,s0
   13928:	bf99                	j	1387e <__sfp+0x22>
   1392a:	0004b023          	sd	zero,0(s1)
   1392e:	47b1                	li	a5,12
   13930:	00f92023          	sw	a5,0(s2)
   13934:	b76d                	j	138de <__sfp+0x82>

0000000000013936 <_cleanup>:
   13936:	7501b503          	ld	a0,1872(gp) # 19080 <_global_impure_ptr>
   1393a:	65d5                	lui	a1,0x15
   1393c:	db058593          	addi	a1,a1,-592 # 14db0 <_fclose_r>
   13940:	a129                	j	13d4a <_fwalk_reent>

0000000000013942 <__sinit>:
   13942:	493c                	lw	a5,80(a0)
   13944:	c391                	beqz	a5,13948 <__sinit+0x6>
   13946:	8082                	ret
   13948:	b37d                	j	136f6 <__sinit.part.0>

000000000001394a <__sfp_lock_acquire>:
   1394a:	8082                	ret

000000000001394c <__sfp_lock_release>:
   1394c:	8082                	ret

000000000001394e <__sinit_lock_acquire>:
   1394e:	8082                	ret

0000000000013950 <__sinit_lock_release>:
   13950:	8082                	ret

0000000000013952 <__fp_lock_all>:
   13952:	7601b503          	ld	a0,1888(gp) # 19090 <_impure_ptr>
   13956:	65cd                	lui	a1,0x13
   13958:	6e658593          	addi	a1,a1,1766 # 136e6 <__fp_lock>
   1395c:	a6b5                	j	13cc8 <_fwalk>

000000000001395e <__fp_unlock_all>:
   1395e:	7601b503          	ld	a0,1888(gp) # 19090 <_impure_ptr>
   13962:	65cd                	lui	a1,0x13
   13964:	6f258593          	addi	a1,a1,1778 # 136f2 <__fp_unlock>
   13968:	a685                	j	13cc8 <_fwalk>

000000000001396a <__libc_fini_array>:
   1396a:	1101                	addi	sp,sp,-32
   1396c:	e822                	sd	s0,16(sp)
   1396e:	67e1                	lui	a5,0x18
   13970:	6461                	lui	s0,0x18
   13972:	10840413          	addi	s0,s0,264 # 18108 <__do_global_dtors_aux_fini_array_entry>
   13976:	11078793          	addi	a5,a5,272 # 18110 <impure_data>
   1397a:	8f81                	sub	a5,a5,s0
   1397c:	e426                	sd	s1,8(sp)
   1397e:	ec06                	sd	ra,24(sp)
   13980:	4037d493          	srai	s1,a5,0x3
   13984:	c881                	beqz	s1,13994 <__libc_fini_array+0x2a>
   13986:	17e1                	addi	a5,a5,-8
   13988:	943e                	add	s0,s0,a5
   1398a:	601c                	ld	a5,0(s0)
   1398c:	14fd                	addi	s1,s1,-1
   1398e:	1461                	addi	s0,s0,-8
   13990:	9782                	jalr	a5
   13992:	fce5                	bnez	s1,1398a <__libc_fini_array+0x20>
   13994:	60e2                	ld	ra,24(sp)
   13996:	6442                	ld	s0,16(sp)
   13998:	64a2                	ld	s1,8(sp)
   1399a:	6105                	addi	sp,sp,32
   1399c:	8082                	ret

000000000001399e <__sfvwrite_r>:
   1399e:	6a1c                	ld	a5,16(a2)
   139a0:	1a078c63          	beqz	a5,13b58 <__sfvwrite_r+0x1ba>
   139a4:	0105d783          	lhu	a5,16(a1)
   139a8:	711d                	addi	sp,sp,-96
   139aa:	e8a2                	sd	s0,80(sp)
   139ac:	f852                	sd	s4,48(sp)
   139ae:	f456                	sd	s5,40(sp)
   139b0:	ec86                	sd	ra,88(sp)
   139b2:	e4a6                	sd	s1,72(sp)
   139b4:	e0ca                	sd	s2,64(sp)
   139b6:	fc4e                	sd	s3,56(sp)
   139b8:	f05a                	sd	s6,32(sp)
   139ba:	ec5e                	sd	s7,24(sp)
   139bc:	e862                	sd	s8,16(sp)
   139be:	e466                	sd	s9,8(sp)
   139c0:	e06a                	sd	s10,0(sp)
   139c2:	0087f713          	andi	a4,a5,8
   139c6:	8a32                	mv	s4,a2
   139c8:	8aaa                	mv	s5,a0
   139ca:	842e                	mv	s0,a1
   139cc:	c325                	beqz	a4,13a2c <__sfvwrite_r+0x8e>
   139ce:	6d98                	ld	a4,24(a1)
   139d0:	cf31                	beqz	a4,13a2c <__sfvwrite_r+0x8e>
   139d2:	0027f713          	andi	a4,a5,2
   139d6:	000a3903          	ld	s2,0(s4)
   139da:	c735                	beqz	a4,13a46 <__sfvwrite_r+0xa8>
   139dc:	603c                	ld	a5,64(s0)
   139de:	780c                	ld	a1,48(s0)
   139e0:	80000b37          	lui	s6,0x80000
   139e4:	4981                	li	s3,0
   139e6:	4481                	li	s1,0
   139e8:	c00b4b13          	xori	s6,s6,-1024
   139ec:	864e                	mv	a2,s3
   139ee:	8556                	mv	a0,s5
   139f0:	c885                	beqz	s1,13a20 <__sfvwrite_r+0x82>
   139f2:	86a6                	mv	a3,s1
   139f4:	009b7363          	bgeu	s6,s1,139fa <__sfvwrite_r+0x5c>
   139f8:	86da                	mv	a3,s6
   139fa:	2681                	sext.w	a3,a3
   139fc:	9782                	jalr	a5
   139fe:	14a05563          	blez	a0,13b48 <__sfvwrite_r+0x1aa>
   13a02:	010a3783          	ld	a5,16(s4)
   13a06:	99aa                	add	s3,s3,a0
   13a08:	8c89                	sub	s1,s1,a0
   13a0a:	40a78533          	sub	a0,a5,a0
   13a0e:	00aa3823          	sd	a0,16(s4)
   13a12:	10050763          	beqz	a0,13b20 <__sfvwrite_r+0x182>
   13a16:	603c                	ld	a5,64(s0)
   13a18:	780c                	ld	a1,48(s0)
   13a1a:	864e                	mv	a2,s3
   13a1c:	8556                	mv	a0,s5
   13a1e:	f8f1                	bnez	s1,139f2 <__sfvwrite_r+0x54>
   13a20:	00093983          	ld	s3,0(s2)
   13a24:	00893483          	ld	s1,8(s2)
   13a28:	0941                	addi	s2,s2,16
   13a2a:	b7c9                	j	139ec <__sfvwrite_r+0x4e>
   13a2c:	85a2                	mv	a1,s0
   13a2e:	8556                	mv	a0,s5
   13a30:	15c010ef          	jal	ra,14b8c <__swsetup_r>
   13a34:	28051863          	bnez	a0,13cc4 <__sfvwrite_r+0x326>
   13a38:	01045783          	lhu	a5,16(s0)
   13a3c:	000a3903          	ld	s2,0(s4)
   13a40:	0027f713          	andi	a4,a5,2
   13a44:	ff41                	bnez	a4,139dc <__sfvwrite_r+0x3e>
   13a46:	0017f713          	andi	a4,a5,1
   13a4a:	eb35                	bnez	a4,13abe <__sfvwrite_r+0x120>
   13a4c:	4444                	lw	s1,12(s0)
   13a4e:	6008                	ld	a0,0(s0)
   13a50:	80000b37          	lui	s6,0x80000
   13a54:	ffeb4b93          	xori	s7,s6,-2
   13a58:	4c01                	li	s8,0
   13a5a:	4981                	li	s3,0
   13a5c:	fffb4b13          	not	s6,s6
   13a60:	8ca6                	mv	s9,s1
   13a62:	04098863          	beqz	s3,13ab2 <__sfvwrite_r+0x114>
   13a66:	2007f713          	andi	a4,a5,512
   13a6a:	12070a63          	beqz	a4,13b9e <__sfvwrite_r+0x200>
   13a6e:	8d26                	mv	s10,s1
   13a70:	1899f763          	bgeu	s3,s1,13bfe <__sfvwrite_r+0x260>
   13a74:	8cce                	mv	s9,s3
   13a76:	8d4e                	mv	s10,s3
   13a78:	866a                	mv	a2,s10
   13a7a:	85e2                	mv	a1,s8
   13a7c:	2e9000ef          	jal	ra,14564 <memmove>
   13a80:	4458                	lw	a4,12(s0)
   13a82:	601c                	ld	a5,0(s0)
   13a84:	84ce                	mv	s1,s3
   13a86:	41970cbb          	subw	s9,a4,s9
   13a8a:	97ea                	add	a5,a5,s10
   13a8c:	01942623          	sw	s9,12(s0)
   13a90:	e01c                	sd	a5,0(s0)
   13a92:	4981                	li	s3,0
   13a94:	010a3603          	ld	a2,16(s4)
   13a98:	9c26                	add	s8,s8,s1
   13a9a:	409604b3          	sub	s1,a2,s1
   13a9e:	009a3823          	sd	s1,16(s4)
   13aa2:	ccbd                	beqz	s1,13b20 <__sfvwrite_r+0x182>
   13aa4:	4444                	lw	s1,12(s0)
   13aa6:	6008                	ld	a0,0(s0)
   13aa8:	01045783          	lhu	a5,16(s0)
   13aac:	8ca6                	mv	s9,s1
   13aae:	fa099ce3          	bnez	s3,13a66 <__sfvwrite_r+0xc8>
   13ab2:	00093c03          	ld	s8,0(s2)
   13ab6:	00893983          	ld	s3,8(s2)
   13aba:	0941                	addi	s2,s2,16
   13abc:	b755                	j	13a60 <__sfvwrite_r+0xc2>
   13abe:	4981                	li	s3,0
   13ac0:	4501                	li	a0,0
   13ac2:	4c81                	li	s9,0
   13ac4:	4c01                	li	s8,0
   13ac6:	080c0b63          	beqz	s8,13b5c <__sfvwrite_r+0x1be>
   13aca:	c145                	beqz	a0,13b6a <__sfvwrite_r+0x1cc>
   13acc:	8bce                	mv	s7,s3
   13ace:	013c7363          	bgeu	s8,s3,13ad4 <__sfvwrite_r+0x136>
   13ad2:	8be2                	mv	s7,s8
   13ad4:	6008                	ld	a0,0(s0)
   13ad6:	6c1c                	ld	a5,24(s0)
   13ad8:	5014                	lw	a3,32(s0)
   13ada:	84de                	mv	s1,s7
   13adc:	00a7f763          	bgeu	a5,a0,13aea <__sfvwrite_r+0x14c>
   13ae0:	445c                	lw	a5,12(s0)
   13ae2:	00d78b3b          	addw	s6,a5,a3
   13ae6:	097b4d63          	blt	s6,s7,13b80 <__sfvwrite_r+0x1e2>
   13aea:	18dbc463          	blt	s7,a3,13c72 <__sfvwrite_r+0x2d4>
   13aee:	603c                	ld	a5,64(s0)
   13af0:	780c                	ld	a1,48(s0)
   13af2:	8666                	mv	a2,s9
   13af4:	8556                	mv	a0,s5
   13af6:	9782                	jalr	a5
   13af8:	84aa                	mv	s1,a0
   13afa:	04a05763          	blez	a0,13b48 <__sfvwrite_r+0x1aa>
   13afe:	0005079b          	sext.w	a5,a0
   13b02:	40f989bb          	subw	s3,s3,a5
   13b06:	4505                	li	a0,1
   13b08:	02098b63          	beqz	s3,13b3e <__sfvwrite_r+0x1a0>
   13b0c:	010a3783          	ld	a5,16(s4)
   13b10:	9ca6                	add	s9,s9,s1
   13b12:	409c0c33          	sub	s8,s8,s1
   13b16:	409784b3          	sub	s1,a5,s1
   13b1a:	009a3823          	sd	s1,16(s4)
   13b1e:	f4c5                	bnez	s1,13ac6 <__sfvwrite_r+0x128>
   13b20:	4501                	li	a0,0
   13b22:	60e6                	ld	ra,88(sp)
   13b24:	6446                	ld	s0,80(sp)
   13b26:	64a6                	ld	s1,72(sp)
   13b28:	6906                	ld	s2,64(sp)
   13b2a:	79e2                	ld	s3,56(sp)
   13b2c:	7a42                	ld	s4,48(sp)
   13b2e:	7aa2                	ld	s5,40(sp)
   13b30:	7b02                	ld	s6,32(sp)
   13b32:	6be2                	ld	s7,24(sp)
   13b34:	6c42                	ld	s8,16(sp)
   13b36:	6ca2                	ld	s9,8(sp)
   13b38:	6d02                	ld	s10,0(sp)
   13b3a:	6125                	addi	sp,sp,96
   13b3c:	8082                	ret
   13b3e:	85a2                	mv	a1,s0
   13b40:	8556                	mv	a0,s5
   13b42:	480010ef          	jal	ra,14fc2 <_fflush_r>
   13b46:	d179                	beqz	a0,13b0c <__sfvwrite_r+0x16e>
   13b48:	01041783          	lh	a5,16(s0)
   13b4c:	0407e793          	ori	a5,a5,64
   13b50:	00f41823          	sh	a5,16(s0)
   13b54:	557d                	li	a0,-1
   13b56:	b7f1                	j	13b22 <__sfvwrite_r+0x184>
   13b58:	4501                	li	a0,0
   13b5a:	8082                	ret
   13b5c:	00893c03          	ld	s8,8(s2)
   13b60:	00093c83          	ld	s9,0(s2)
   13b64:	0941                	addi	s2,s2,16
   13b66:	fe0c0be3          	beqz	s8,13b5c <__sfvwrite_r+0x1be>
   13b6a:	8662                	mv	a2,s8
   13b6c:	45a9                	li	a1,10
   13b6e:	8566                	mv	a0,s9
   13b70:	07f000ef          	jal	ra,143ee <memchr>
   13b74:	12050f63          	beqz	a0,13cb2 <__sfvwrite_r+0x314>
   13b78:	0505                	addi	a0,a0,1
   13b7a:	419509bb          	subw	s3,a0,s9
   13b7e:	b7b9                	j	13acc <__sfvwrite_r+0x12e>
   13b80:	85e6                	mv	a1,s9
   13b82:	865a                	mv	a2,s6
   13b84:	1e1000ef          	jal	ra,14564 <memmove>
   13b88:	601c                	ld	a5,0(s0)
   13b8a:	85a2                	mv	a1,s0
   13b8c:	8556                	mv	a0,s5
   13b8e:	97da                	add	a5,a5,s6
   13b90:	e01c                	sd	a5,0(s0)
   13b92:	430010ef          	jal	ra,14fc2 <_fflush_r>
   13b96:	f94d                	bnez	a0,13b48 <__sfvwrite_r+0x1aa>
   13b98:	87da                	mv	a5,s6
   13b9a:	84da                	mv	s1,s6
   13b9c:	b79d                	j	13b02 <__sfvwrite_r+0x164>
   13b9e:	6c1c                	ld	a5,24(s0)
   13ba0:	02a7e863          	bltu	a5,a0,13bd0 <__sfvwrite_r+0x232>
   13ba4:	501c                	lw	a5,32(s0)
   13ba6:	02f9e563          	bltu	s3,a5,13bd0 <__sfvwrite_r+0x232>
   13baa:	86ce                	mv	a3,s3
   13bac:	013bf363          	bgeu	s7,s3,13bb2 <__sfvwrite_r+0x214>
   13bb0:	86da                	mv	a3,s6
   13bb2:	02f6c6bb          	divw	a3,a3,a5
   13bb6:	6038                	ld	a4,64(s0)
   13bb8:	780c                	ld	a1,48(s0)
   13bba:	8662                	mv	a2,s8
   13bbc:	8556                	mv	a0,s5
   13bbe:	02f686bb          	mulw	a3,a3,a5
   13bc2:	9702                	jalr	a4
   13bc4:	84aa                	mv	s1,a0
   13bc6:	f8a051e3          	blez	a0,13b48 <__sfvwrite_r+0x1aa>
   13bca:	409989b3          	sub	s3,s3,s1
   13bce:	b5d9                	j	13a94 <__sfvwrite_r+0xf6>
   13bd0:	0099f363          	bgeu	s3,s1,13bd6 <__sfvwrite_r+0x238>
   13bd4:	84ce                	mv	s1,s3
   13bd6:	8626                	mv	a2,s1
   13bd8:	85e2                	mv	a1,s8
   13bda:	18b000ef          	jal	ra,14564 <memmove>
   13bde:	445c                	lw	a5,12(s0)
   13be0:	6018                	ld	a4,0(s0)
   13be2:	409786bb          	subw	a3,a5,s1
   13be6:	9726                	add	a4,a4,s1
   13be8:	c454                	sw	a3,12(s0)
   13bea:	e018                	sd	a4,0(s0)
   13bec:	fef9                	bnez	a3,13bca <__sfvwrite_r+0x22c>
   13bee:	85a2                	mv	a1,s0
   13bf0:	8556                	mv	a0,s5
   13bf2:	3d0010ef          	jal	ra,14fc2 <_fflush_r>
   13bf6:	f929                	bnez	a0,13b48 <__sfvwrite_r+0x1aa>
   13bf8:	409989b3          	sub	s3,s3,s1
   13bfc:	bd61                	j	13a94 <__sfvwrite_r+0xf6>
   13bfe:	4807f713          	andi	a4,a5,1152
   13c02:	e6070be3          	beqz	a4,13a78 <__sfvwrite_r+0xda>
   13c06:	5004                	lw	s1,32(s0)
   13c08:	6c0c                	ld	a1,24(s0)
   13c0a:	00198713          	addi	a4,s3,1
   13c0e:	0014969b          	slliw	a3,s1,0x1
   13c12:	9ea5                	addw	a3,a3,s1
   13c14:	8d0d                	sub	a0,a0,a1
   13c16:	01f6d49b          	srliw	s1,a3,0x1f
   13c1a:	00050d1b          	sext.w	s10,a0
   13c1e:	9cb5                	addw	s1,s1,a3
   13c20:	4014d49b          	sraiw	s1,s1,0x1
   13c24:	976a                	add	a4,a4,s10
   13c26:	00e4f563          	bgeu	s1,a4,13c30 <__sfvwrite_r+0x292>
   13c2a:	0019849b          	addiw	s1,s3,1
   13c2e:	9ca9                	addw	s1,s1,a0
   13c30:	4007f793          	andi	a5,a5,1024
   13c34:	cfa9                	beqz	a5,13c8e <__sfvwrite_r+0x2f0>
   13c36:	85a6                	mv	a1,s1
   13c38:	8556                	mv	a0,s5
   13c3a:	19a000ef          	jal	ra,13dd4 <_malloc_r>
   13c3e:	8caa                	mv	s9,a0
   13c40:	cd25                	beqz	a0,13cb8 <__sfvwrite_r+0x31a>
   13c42:	6c0c                	ld	a1,24(s0)
   13c44:	866a                	mv	a2,s10
   13c46:	037000ef          	jal	ra,1447c <memcpy>
   13c4a:	01045783          	lhu	a5,16(s0)
   13c4e:	b7f7f793          	andi	a5,a5,-1153
   13c52:	0807e793          	ori	a5,a5,128
   13c56:	00f41823          	sh	a5,16(s0)
   13c5a:	01ac8533          	add	a0,s9,s10
   13c5e:	41a487bb          	subw	a5,s1,s10
   13c62:	01943c23          	sd	s9,24(s0)
   13c66:	e008                	sd	a0,0(s0)
   13c68:	d004                	sw	s1,32(s0)
   13c6a:	8cce                	mv	s9,s3
   13c6c:	c45c                	sw	a5,12(s0)
   13c6e:	8d4e                	mv	s10,s3
   13c70:	b521                	j	13a78 <__sfvwrite_r+0xda>
   13c72:	865e                	mv	a2,s7
   13c74:	85e6                	mv	a1,s9
   13c76:	0ef000ef          	jal	ra,14564 <memmove>
   13c7a:	4454                	lw	a3,12(s0)
   13c7c:	6018                	ld	a4,0(s0)
   13c7e:	000b879b          	sext.w	a5,s7
   13c82:	417686bb          	subw	a3,a3,s7
   13c86:	975e                	add	a4,a4,s7
   13c88:	c454                	sw	a3,12(s0)
   13c8a:	e018                	sd	a4,0(s0)
   13c8c:	bd9d                	j	13b02 <__sfvwrite_r+0x164>
   13c8e:	8626                	mv	a2,s1
   13c90:	8556                	mv	a0,s5
   13c92:	1ad000ef          	jal	ra,1463e <_realloc_r>
   13c96:	8caa                	mv	s9,a0
   13c98:	f169                	bnez	a0,13c5a <__sfvwrite_r+0x2bc>
   13c9a:	6c0c                	ld	a1,24(s0)
   13c9c:	8556                	mv	a0,s5
   13c9e:	476010ef          	jal	ra,15114 <_free_r>
   13ca2:	01041783          	lh	a5,16(s0)
   13ca6:	4731                	li	a4,12
   13ca8:	00eaa023          	sw	a4,0(s5)
   13cac:	f7f7f793          	andi	a5,a5,-129
   13cb0:	bd71                	j	13b4c <__sfvwrite_r+0x1ae>
   13cb2:	001c099b          	addiw	s3,s8,1
   13cb6:	bd19                	j	13acc <__sfvwrite_r+0x12e>
   13cb8:	4731                	li	a4,12
   13cba:	01041783          	lh	a5,16(s0)
   13cbe:	00eaa023          	sw	a4,0(s5)
   13cc2:	b569                	j	13b4c <__sfvwrite_r+0x1ae>
   13cc4:	557d                	li	a0,-1
   13cc6:	bdb1                	j	13b22 <__sfvwrite_r+0x184>

0000000000013cc8 <_fwalk>:
   13cc8:	715d                	addi	sp,sp,-80
   13cca:	f84a                	sd	s2,48(sp)
   13ccc:	f44e                	sd	s3,40(sp)
   13cce:	f052                	sd	s4,32(sp)
   13cd0:	ec56                	sd	s5,24(sp)
   13cd2:	e85a                	sd	s6,16(sp)
   13cd4:	e45e                	sd	s7,8(sp)
   13cd6:	e486                	sd	ra,72(sp)
   13cd8:	e0a2                	sd	s0,64(sp)
   13cda:	fc26                	sd	s1,56(sp)
   13cdc:	8a2e                	mv	s4,a1
   13cde:	52050913          	addi	s2,a0,1312
   13ce2:	4b01                	li	s6,0
   13ce4:	0b000a93          	li	s5,176
   13ce8:	4b85                	li	s7,1
   13cea:	59fd                	li	s3,-1
   13cec:	00892783          	lw	a5,8(s2)
   13cf0:	01093403          	ld	s0,16(s2)
   13cf4:	02f05b63          	blez	a5,13d2a <_fwalk+0x62>
   13cf8:	fff7849b          	addiw	s1,a5,-1
   13cfc:	1482                	slli	s1,s1,0x20
   13cfe:	9081                	srli	s1,s1,0x20
   13d00:	0485                	addi	s1,s1,1
   13d02:	035484b3          	mul	s1,s1,s5
   13d06:	94a2                	add	s1,s1,s0
   13d08:	01045783          	lhu	a5,16(s0)
   13d0c:	00fbfb63          	bgeu	s7,a5,13d22 <_fwalk+0x5a>
   13d10:	01241783          	lh	a5,18(s0)
   13d14:	8522                	mv	a0,s0
   13d16:	01378663          	beq	a5,s3,13d22 <_fwalk+0x5a>
   13d1a:	9a02                	jalr	s4
   13d1c:	01656b33          	or	s6,a0,s6
   13d20:	2b01                	sext.w	s6,s6
   13d22:	0b040413          	addi	s0,s0,176
   13d26:	fe8491e3          	bne	s1,s0,13d08 <_fwalk+0x40>
   13d2a:	00093903          	ld	s2,0(s2)
   13d2e:	fa091fe3          	bnez	s2,13cec <_fwalk+0x24>
   13d32:	60a6                	ld	ra,72(sp)
   13d34:	6406                	ld	s0,64(sp)
   13d36:	74e2                	ld	s1,56(sp)
   13d38:	7942                	ld	s2,48(sp)
   13d3a:	79a2                	ld	s3,40(sp)
   13d3c:	7a02                	ld	s4,32(sp)
   13d3e:	6ae2                	ld	s5,24(sp)
   13d40:	6ba2                	ld	s7,8(sp)
   13d42:	855a                	mv	a0,s6
   13d44:	6b42                	ld	s6,16(sp)
   13d46:	6161                	addi	sp,sp,80
   13d48:	8082                	ret

0000000000013d4a <_fwalk_reent>:
   13d4a:	715d                	addi	sp,sp,-80
   13d4c:	f84a                	sd	s2,48(sp)
   13d4e:	f44e                	sd	s3,40(sp)
   13d50:	f052                	sd	s4,32(sp)
   13d52:	ec56                	sd	s5,24(sp)
   13d54:	e85a                	sd	s6,16(sp)
   13d56:	e45e                	sd	s7,8(sp)
   13d58:	e062                	sd	s8,0(sp)
   13d5a:	e486                	sd	ra,72(sp)
   13d5c:	e0a2                	sd	s0,64(sp)
   13d5e:	fc26                	sd	s1,56(sp)
   13d60:	8c2a                	mv	s8,a0
   13d62:	8a2e                	mv	s4,a1
   13d64:	52050913          	addi	s2,a0,1312
   13d68:	4b01                	li	s6,0
   13d6a:	0b000a93          	li	s5,176
   13d6e:	4b85                	li	s7,1
   13d70:	59fd                	li	s3,-1
   13d72:	00892783          	lw	a5,8(s2)
   13d76:	01093403          	ld	s0,16(s2)
   13d7a:	02f05c63          	blez	a5,13db2 <_fwalk_reent+0x68>
   13d7e:	fff7849b          	addiw	s1,a5,-1
   13d82:	1482                	slli	s1,s1,0x20
   13d84:	9081                	srli	s1,s1,0x20
   13d86:	0485                	addi	s1,s1,1
   13d88:	035484b3          	mul	s1,s1,s5
   13d8c:	94a2                	add	s1,s1,s0
   13d8e:	01045783          	lhu	a5,16(s0)
   13d92:	00fbfc63          	bgeu	s7,a5,13daa <_fwalk_reent+0x60>
   13d96:	01241783          	lh	a5,18(s0)
   13d9a:	85a2                	mv	a1,s0
   13d9c:	8562                	mv	a0,s8
   13d9e:	01378663          	beq	a5,s3,13daa <_fwalk_reent+0x60>
   13da2:	9a02                	jalr	s4
   13da4:	01656b33          	or	s6,a0,s6
   13da8:	2b01                	sext.w	s6,s6
   13daa:	0b040413          	addi	s0,s0,176
   13dae:	fe8490e3          	bne	s1,s0,13d8e <_fwalk_reent+0x44>
   13db2:	00093903          	ld	s2,0(s2)
   13db6:	fa091ee3          	bnez	s2,13d72 <_fwalk_reent+0x28>
   13dba:	60a6                	ld	ra,72(sp)
   13dbc:	6406                	ld	s0,64(sp)
   13dbe:	74e2                	ld	s1,56(sp)
   13dc0:	7942                	ld	s2,48(sp)
   13dc2:	79a2                	ld	s3,40(sp)
   13dc4:	7a02                	ld	s4,32(sp)
   13dc6:	6ae2                	ld	s5,24(sp)
   13dc8:	6ba2                	ld	s7,8(sp)
   13dca:	6c02                	ld	s8,0(sp)
   13dcc:	855a                	mv	a0,s6
   13dce:	6b42                	ld	s6,16(sp)
   13dd0:	6161                	addi	sp,sp,80
   13dd2:	8082                	ret

0000000000013dd4 <_malloc_r>:
   13dd4:	711d                	addi	sp,sp,-96
   13dd6:	e4a6                	sd	s1,72(sp)
   13dd8:	e0ca                	sd	s2,64(sp)
   13dda:	ec86                	sd	ra,88(sp)
   13ddc:	e8a2                	sd	s0,80(sp)
   13dde:	fc4e                	sd	s3,56(sp)
   13de0:	f852                	sd	s4,48(sp)
   13de2:	f456                	sd	s5,40(sp)
   13de4:	f05a                	sd	s6,32(sp)
   13de6:	ec5e                	sd	s7,24(sp)
   13de8:	e862                	sd	s8,16(sp)
   13dea:	e466                	sd	s9,8(sp)
   13dec:	01758493          	addi	s1,a1,23
   13df0:	02e00793          	li	a5,46
   13df4:	892a                	mv	s2,a0
   13df6:	0497e763          	bltu	a5,s1,13e44 <_malloc_r+0x70>
   13dfa:	02000793          	li	a5,32
   13dfe:	1eb7e163          	bltu	a5,a1,13fe0 <_malloc_r+0x20c>
   13e02:	039000ef          	jal	ra,1463a <__malloc_lock>
   13e06:	02000493          	li	s1,32
   13e0a:	05000793          	li	a5,80
   13e0e:	4611                	li	a2,4
   13e10:	69e5                	lui	s3,0x19
   13e12:	85898993          	addi	s3,s3,-1960 # 18858 <__malloc_av_>
   13e16:	97ce                	add	a5,a5,s3
   13e18:	6780                	ld	s0,8(a5)
   13e1a:	ff078713          	addi	a4,a5,-16
   13e1e:	1ee40263          	beq	s0,a4,14002 <_malloc_r+0x22e>
   13e22:	641c                	ld	a5,8(s0)
   13e24:	6c14                	ld	a3,24(s0)
   13e26:	6810                	ld	a2,16(s0)
   13e28:	9bf1                	andi	a5,a5,-4
   13e2a:	97a2                	add	a5,a5,s0
   13e2c:	6798                	ld	a4,8(a5)
   13e2e:	ee14                	sd	a3,24(a2)
   13e30:	ea90                	sd	a2,16(a3)
   13e32:	00176713          	ori	a4,a4,1
   13e36:	854a                	mv	a0,s2
   13e38:	e798                	sd	a4,8(a5)
   13e3a:	003000ef          	jal	ra,1463c <__malloc_unlock>
   13e3e:	01040513          	addi	a0,s0,16
   13e42:	a25d                	j	13fe8 <_malloc_r+0x214>
   13e44:	800007b7          	lui	a5,0x80000
   13e48:	98c1                	andi	s1,s1,-16
   13e4a:	fff7c793          	not	a5,a5
   13e4e:	1897e963          	bltu	a5,s1,13fe0 <_malloc_r+0x20c>
   13e52:	18b4e763          	bltu	s1,a1,13fe0 <_malloc_r+0x20c>
   13e56:	7e4000ef          	jal	ra,1463a <__malloc_lock>
   13e5a:	1f700793          	li	a5,503
   13e5e:	3a97f063          	bgeu	a5,s1,141fe <_malloc_r+0x42a>
   13e62:	0094d793          	srli	a5,s1,0x9
   13e66:	26078c63          	beqz	a5,140de <_malloc_r+0x30a>
   13e6a:	4711                	li	a4,4
   13e6c:	30f76063          	bltu	a4,a5,1416c <_malloc_r+0x398>
   13e70:	0064d793          	srli	a5,s1,0x6
   13e74:	0397861b          	addiw	a2,a5,57
   13e78:	0016169b          	slliw	a3,a2,0x1
   13e7c:	0387851b          	addiw	a0,a5,56
   13e80:	068e                	slli	a3,a3,0x3
   13e82:	69e5                	lui	s3,0x19
   13e84:	85898993          	addi	s3,s3,-1960 # 18858 <__malloc_av_>
   13e88:	96ce                	add	a3,a3,s3
   13e8a:	6680                	ld	s0,8(a3)
   13e8c:	16c1                	addi	a3,a3,-16
   13e8e:	16868e63          	beq	a3,s0,1400a <_malloc_r+0x236>
   13e92:	45fd                	li	a1,31
   13e94:	a031                	j	13ea0 <_malloc_r+0xcc>
   13e96:	28075563          	bgez	a4,14120 <_malloc_r+0x34c>
   13e9a:	6c00                	ld	s0,24(s0)
   13e9c:	16868763          	beq	a3,s0,1400a <_malloc_r+0x236>
   13ea0:	641c                	ld	a5,8(s0)
   13ea2:	9bf1                	andi	a5,a5,-4
   13ea4:	40978733          	sub	a4,a5,s1
   13ea8:	fee5d7e3          	bge	a1,a4,13e96 <_malloc_r+0xc2>
   13eac:	0209b403          	ld	s0,32(s3)
   13eb0:	6865                	lui	a6,0x19
   13eb2:	86880813          	addi	a6,a6,-1944 # 18868 <__malloc_av_+0x10>
   13eb6:	862a                	mv	a2,a0
   13eb8:	17041063          	bne	s0,a6,14018 <_malloc_r+0x244>
   13ebc:	0089b783          	ld	a5,8(s3)
   13ec0:	4026571b          	sraiw	a4,a2,0x2
   13ec4:	4585                	li	a1,1
   13ec6:	00e595b3          	sll	a1,a1,a4
   13eca:	1ab7f763          	bgeu	a5,a1,14078 <_malloc_r+0x2a4>
   13ece:	0109b403          	ld	s0,16(s3)
   13ed2:	00843a03          	ld	s4,8(s0)
   13ed6:	ffca7a93          	andi	s5,s4,-4
   13eda:	009ae763          	bltu	s5,s1,13ee8 <_malloc_r+0x114>
   13ede:	409a87b3          	sub	a5,s5,s1
   13ee2:	477d                	li	a4,31
   13ee4:	20f74f63          	blt	a4,a5,14102 <_malloc_r+0x32e>
   13ee8:	7881ba03          	ld	s4,1928(gp) # 190b8 <__malloc_top_pad>
   13eec:	7681b703          	ld	a4,1896(gp) # 19098 <__malloc_sbrk_base>
   13ef0:	57fd                	li	a5,-1
   13ef2:	01540c33          	add	s8,s0,s5
   13ef6:	9a26                	add	s4,s4,s1
   13ef8:	3af70163          	beq	a4,a5,1429a <_malloc_r+0x4c6>
   13efc:	6785                	lui	a5,0x1
   13efe:	07fd                	addi	a5,a5,31
   13f00:	9a3e                	add	s4,s4,a5
   13f02:	77fd                	lui	a5,0xfffff
   13f04:	00fa7a33          	and	s4,s4,a5
   13f08:	85d2                	mv	a1,s4
   13f0a:	854a                	mv	a0,s2
   13f0c:	339000ef          	jal	ra,14a44 <_sbrk_r>
   13f10:	57fd                	li	a5,-1
   13f12:	8b2a                	mv	s6,a0
   13f14:	30f50a63          	beq	a0,a5,14228 <_malloc_r+0x454>
   13f18:	31856663          	bltu	a0,s8,14224 <_malloc_r+0x450>
   13f1c:	7d818b93          	addi	s7,gp,2008 # 19108 <__malloc_current_mallinfo>
   13f20:	000ba703          	lw	a4,0(s7)
   13f24:	014707bb          	addw	a5,a4,s4
   13f28:	00fba023          	sw	a5,0(s7)
   13f2c:	86be                	mv	a3,a5
   13f2e:	3eac0f63          	beq	s8,a0,1432c <_malloc_r+0x558>
   13f32:	7681b703          	ld	a4,1896(gp) # 19098 <__malloc_sbrk_base>
   13f36:	57fd                	li	a5,-1
   13f38:	40f70663          	beq	a4,a5,14344 <_malloc_r+0x570>
   13f3c:	418b07b3          	sub	a5,s6,s8
   13f40:	9fb5                	addw	a5,a5,a3
   13f42:	00fba023          	sw	a5,0(s7)
   13f46:	00fb7c13          	andi	s8,s6,15
   13f4a:	360c0663          	beqz	s8,142b6 <_malloc_r+0x4e2>
   13f4e:	6705                	lui	a4,0x1
   13f50:	418b0b33          	sub	s6,s6,s8
   13f54:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   13f58:	0b41                	addi	s6,s6,16
   13f5a:	418787b3          	sub	a5,a5,s8
   13f5e:	014b0cb3          	add	s9,s6,s4
   13f62:	41978a33          	sub	s4,a5,s9
   13f66:	177d                	addi	a4,a4,-1
   13f68:	00ea7a33          	and	s4,s4,a4
   13f6c:	85d2                	mv	a1,s4
   13f6e:	854a                	mv	a0,s2
   13f70:	2d5000ef          	jal	ra,14a44 <_sbrk_r>
   13f74:	57fd                	li	a5,-1
   13f76:	40f50c63          	beq	a0,a5,1438e <_malloc_r+0x5ba>
   13f7a:	41650533          	sub	a0,a0,s6
   13f7e:	000a071b          	sext.w	a4,s4
   13f82:	9a2a                	add	s4,s4,a0
   13f84:	000ba783          	lw	a5,0(s7)
   13f88:	0169b823          	sd	s6,16(s3)
   13f8c:	001a6a13          	ori	s4,s4,1
   13f90:	9fb9                	addw	a5,a5,a4
   13f92:	00fba023          	sw	a5,0(s7)
   13f96:	014b3423          	sd	s4,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffe6ed8>
   13f9a:	3b340863          	beq	s0,s3,1434a <_malloc_r+0x576>
   13f9e:	467d                	li	a2,31
   13fa0:	3b567763          	bgeu	a2,s5,1434e <_malloc_r+0x57a>
   13fa4:	6414                	ld	a3,8(s0)
   13fa6:	fe8a8713          	addi	a4,s5,-24
   13faa:	9b41                	andi	a4,a4,-16
   13fac:	8a85                	andi	a3,a3,1
   13fae:	8ed9                	or	a3,a3,a4
   13fb0:	e414                	sd	a3,8(s0)
   13fb2:	45a5                	li	a1,9
   13fb4:	00e406b3          	add	a3,s0,a4
   13fb8:	e68c                	sd	a1,8(a3)
   13fba:	ea8c                	sd	a1,16(a3)
   13fbc:	3ee66063          	bltu	a2,a4,1439c <_malloc_r+0x5c8>
   13fc0:	008b3a03          	ld	s4,8(s6)
   13fc4:	845a                	mv	s0,s6
   13fc6:	7801b683          	ld	a3,1920(gp) # 190b0 <__malloc_max_sbrked_mem>
   13fca:	00f6f463          	bgeu	a3,a5,13fd2 <_malloc_r+0x1fe>
   13fce:	78f1b023          	sd	a5,1920(gp) # 190b0 <__malloc_max_sbrked_mem>
   13fd2:	7781b683          	ld	a3,1912(gp) # 190a8 <__malloc_max_total_mem>
   13fd6:	24f6fd63          	bgeu	a3,a5,14230 <_malloc_r+0x45c>
   13fda:	76f1bc23          	sd	a5,1912(gp) # 190a8 <__malloc_max_total_mem>
   13fde:	ac89                	j	14230 <_malloc_r+0x45c>
   13fe0:	47b1                	li	a5,12
   13fe2:	00f92023          	sw	a5,0(s2)
   13fe6:	4501                	li	a0,0
   13fe8:	60e6                	ld	ra,88(sp)
   13fea:	6446                	ld	s0,80(sp)
   13fec:	64a6                	ld	s1,72(sp)
   13fee:	6906                	ld	s2,64(sp)
   13ff0:	79e2                	ld	s3,56(sp)
   13ff2:	7a42                	ld	s4,48(sp)
   13ff4:	7aa2                	ld	s5,40(sp)
   13ff6:	7b02                	ld	s6,32(sp)
   13ff8:	6be2                	ld	s7,24(sp)
   13ffa:	6c42                	ld	s8,16(sp)
   13ffc:	6ca2                	ld	s9,8(sp)
   13ffe:	6125                	addi	sp,sp,96
   14000:	8082                	ret
   14002:	6f80                	ld	s0,24(a5)
   14004:	2609                	addiw	a2,a2,2
   14006:	e0879ee3          	bne	a5,s0,13e22 <_malloc_r+0x4e>
   1400a:	0209b403          	ld	s0,32(s3)
   1400e:	6865                	lui	a6,0x19
   14010:	86880813          	addi	a6,a6,-1944 # 18868 <__malloc_av_+0x10>
   14014:	eb0404e3          	beq	s0,a6,13ebc <_malloc_r+0xe8>
   14018:	641c                	ld	a5,8(s0)
   1401a:	46fd                	li	a3,31
   1401c:	9bf1                	andi	a5,a5,-4
   1401e:	40978733          	sub	a4,a5,s1
   14022:	1ae6c763          	blt	a3,a4,141d0 <_malloc_r+0x3fc>
   14026:	0309b423          	sd	a6,40(s3)
   1402a:	0309b023          	sd	a6,32(s3)
   1402e:	0a075f63          	bgez	a4,140ec <_malloc_r+0x318>
   14032:	1ff00713          	li	a4,511
   14036:	0ef76863          	bltu	a4,a5,14126 <_malloc_r+0x352>
   1403a:	838d                	srli	a5,a5,0x3
   1403c:	0017871b          	addiw	a4,a5,1
   14040:	0017171b          	slliw	a4,a4,0x1
   14044:	070e                	slli	a4,a4,0x3
   14046:	0089b503          	ld	a0,8(s3)
   1404a:	974e                	add	a4,a4,s3
   1404c:	630c                	ld	a1,0(a4)
   1404e:	4027d69b          	sraiw	a3,a5,0x2
   14052:	4785                	li	a5,1
   14054:	00d797b3          	sll	a5,a5,a3
   14058:	8fc9                	or	a5,a5,a0
   1405a:	ff070693          	addi	a3,a4,-16
   1405e:	ec14                	sd	a3,24(s0)
   14060:	e80c                	sd	a1,16(s0)
   14062:	00f9b423          	sd	a5,8(s3)
   14066:	e300                	sd	s0,0(a4)
   14068:	ed80                	sd	s0,24(a1)
   1406a:	4026571b          	sraiw	a4,a2,0x2
   1406e:	4585                	li	a1,1
   14070:	00e595b3          	sll	a1,a1,a4
   14074:	e4b7ede3          	bltu	a5,a1,13ece <_malloc_r+0xfa>
   14078:	00f5f733          	and	a4,a1,a5
   1407c:	ef01                	bnez	a4,14094 <_malloc_r+0x2c0>
   1407e:	0586                	slli	a1,a1,0x1
   14080:	9a71                	andi	a2,a2,-4
   14082:	00f5f733          	and	a4,a1,a5
   14086:	2611                	addiw	a2,a2,4
   14088:	e711                	bnez	a4,14094 <_malloc_r+0x2c0>
   1408a:	0586                	slli	a1,a1,0x1
   1408c:	00f5f733          	and	a4,a1,a5
   14090:	2611                	addiw	a2,a2,4
   14092:	df65                	beqz	a4,1408a <_malloc_r+0x2b6>
   14094:	48fd                	li	a7,31
   14096:	0016031b          	addiw	t1,a2,1
   1409a:	0013131b          	slliw	t1,t1,0x1
   1409e:	030e                	slli	t1,t1,0x3
   140a0:	1341                	addi	t1,t1,-16
   140a2:	934e                	add	t1,t1,s3
   140a4:	851a                	mv	a0,t1
   140a6:	6d1c                	ld	a5,24(a0)
   140a8:	8e32                	mv	t3,a2
   140aa:	0ef50263          	beq	a0,a5,1418e <_malloc_r+0x3ba>
   140ae:	6798                	ld	a4,8(a5)
   140b0:	843e                	mv	s0,a5
   140b2:	6f9c                	ld	a5,24(a5)
   140b4:	9b71                	andi	a4,a4,-4
   140b6:	409706b3          	sub	a3,a4,s1
   140ba:	0ed8c163          	blt	a7,a3,1419c <_malloc_r+0x3c8>
   140be:	fe06c6e3          	bltz	a3,140aa <_malloc_r+0x2d6>
   140c2:	9722                	add	a4,a4,s0
   140c4:	6714                	ld	a3,8(a4)
   140c6:	6810                	ld	a2,16(s0)
   140c8:	854a                	mv	a0,s2
   140ca:	0016e693          	ori	a3,a3,1
   140ce:	e714                	sd	a3,8(a4)
   140d0:	ee1c                	sd	a5,24(a2)
   140d2:	eb90                	sd	a2,16(a5)
   140d4:	568000ef          	jal	ra,1463c <__malloc_unlock>
   140d8:	01040513          	addi	a0,s0,16
   140dc:	b731                	j	13fe8 <_malloc_r+0x214>
   140de:	40000693          	li	a3,1024
   140e2:	04000613          	li	a2,64
   140e6:	03f00513          	li	a0,63
   140ea:	bb61                	j	13e82 <_malloc_r+0xae>
   140ec:	97a2                	add	a5,a5,s0
   140ee:	6798                	ld	a4,8(a5)
   140f0:	854a                	mv	a0,s2
   140f2:	00176713          	ori	a4,a4,1
   140f6:	e798                	sd	a4,8(a5)
   140f8:	544000ef          	jal	ra,1463c <__malloc_unlock>
   140fc:	01040513          	addi	a0,s0,16
   14100:	b5e5                	j	13fe8 <_malloc_r+0x214>
   14102:	0014e713          	ori	a4,s1,1
   14106:	e418                	sd	a4,8(s0)
   14108:	94a2                	add	s1,s1,s0
   1410a:	0099b823          	sd	s1,16(s3)
   1410e:	0017e793          	ori	a5,a5,1
   14112:	854a                	mv	a0,s2
   14114:	e49c                	sd	a5,8(s1)
   14116:	526000ef          	jal	ra,1463c <__malloc_unlock>
   1411a:	01040513          	addi	a0,s0,16
   1411e:	b5e9                	j	13fe8 <_malloc_r+0x214>
   14120:	6c14                	ld	a3,24(s0)
   14122:	6810                	ld	a2,16(s0)
   14124:	b319                	j	13e2a <_malloc_r+0x56>
   14126:	0097d713          	srli	a4,a5,0x9
   1412a:	4691                	li	a3,4
   1412c:	0ee6f263          	bgeu	a3,a4,14210 <_malloc_r+0x43c>
   14130:	46d1                	li	a3,20
   14132:	1ae6e863          	bltu	a3,a4,142e2 <_malloc_r+0x50e>
   14136:	05c7059b          	addiw	a1,a4,92
   1413a:	0015959b          	slliw	a1,a1,0x1
   1413e:	05b7069b          	addiw	a3,a4,91
   14142:	058e                	slli	a1,a1,0x3
   14144:	95ce                	add	a1,a1,s3
   14146:	6198                	ld	a4,0(a1)
   14148:	15c1                	addi	a1,a1,-16
   1414a:	14e58b63          	beq	a1,a4,142a0 <_malloc_r+0x4cc>
   1414e:	6714                	ld	a3,8(a4)
   14150:	9af1                	andi	a3,a3,-4
   14152:	00d7f563          	bgeu	a5,a3,1415c <_malloc_r+0x388>
   14156:	6b18                	ld	a4,16(a4)
   14158:	fee59be3          	bne	a1,a4,1414e <_malloc_r+0x37a>
   1415c:	6f0c                	ld	a1,24(a4)
   1415e:	0089b783          	ld	a5,8(s3)
   14162:	ec0c                	sd	a1,24(s0)
   14164:	e818                	sd	a4,16(s0)
   14166:	e980                	sd	s0,16(a1)
   14168:	ef00                	sd	s0,24(a4)
   1416a:	b701                	j	1406a <_malloc_r+0x296>
   1416c:	4751                	li	a4,20
   1416e:	0cf77f63          	bgeu	a4,a5,1424c <_malloc_r+0x478>
   14172:	05400713          	li	a4,84
   14176:	18f76463          	bltu	a4,a5,142fe <_malloc_r+0x52a>
   1417a:	00c4d793          	srli	a5,s1,0xc
   1417e:	06f7861b          	addiw	a2,a5,111
   14182:	0016169b          	slliw	a3,a2,0x1
   14186:	06e7851b          	addiw	a0,a5,110
   1418a:	068e                	slli	a3,a3,0x3
   1418c:	b9dd                	j	13e82 <_malloc_r+0xae>
   1418e:	2e05                	addiw	t3,t3,1
   14190:	003e7793          	andi	a5,t3,3
   14194:	0541                	addi	a0,a0,16
   14196:	cbe1                	beqz	a5,14266 <_malloc_r+0x492>
   14198:	6d1c                	ld	a5,24(a0)
   1419a:	bf01                	j	140aa <_malloc_r+0x2d6>
   1419c:	6810                	ld	a2,16(s0)
   1419e:	0014e593          	ori	a1,s1,1
   141a2:	e40c                	sd	a1,8(s0)
   141a4:	ee1c                	sd	a5,24(a2)
   141a6:	eb90                	sd	a2,16(a5)
   141a8:	94a2                	add	s1,s1,s0
   141aa:	0299b423          	sd	s1,40(s3)
   141ae:	0299b023          	sd	s1,32(s3)
   141b2:	0016e793          	ori	a5,a3,1
   141b6:	0104bc23          	sd	a6,24(s1)
   141ba:	0104b823          	sd	a6,16(s1)
   141be:	e49c                	sd	a5,8(s1)
   141c0:	9722                	add	a4,a4,s0
   141c2:	854a                	mv	a0,s2
   141c4:	e314                	sd	a3,0(a4)
   141c6:	476000ef          	jal	ra,1463c <__malloc_unlock>
   141ca:	01040513          	addi	a0,s0,16
   141ce:	bd29                	j	13fe8 <_malloc_r+0x214>
   141d0:	0014e693          	ori	a3,s1,1
   141d4:	e414                	sd	a3,8(s0)
   141d6:	94a2                	add	s1,s1,s0
   141d8:	0299b423          	sd	s1,40(s3)
   141dc:	0299b023          	sd	s1,32(s3)
   141e0:	00176693          	ori	a3,a4,1
   141e4:	0104bc23          	sd	a6,24(s1)
   141e8:	0104b823          	sd	a6,16(s1)
   141ec:	e494                	sd	a3,8(s1)
   141ee:	97a2                	add	a5,a5,s0
   141f0:	854a                	mv	a0,s2
   141f2:	e398                	sd	a4,0(a5)
   141f4:	448000ef          	jal	ra,1463c <__malloc_unlock>
   141f8:	01040513          	addi	a0,s0,16
   141fc:	b3f5                	j	13fe8 <_malloc_r+0x214>
   141fe:	0034d613          	srli	a2,s1,0x3
   14202:	0016079b          	addiw	a5,a2,1
   14206:	0017979b          	slliw	a5,a5,0x1
   1420a:	2601                	sext.w	a2,a2
   1420c:	078e                	slli	a5,a5,0x3
   1420e:	b109                	j	13e10 <_malloc_r+0x3c>
   14210:	0067d713          	srli	a4,a5,0x6
   14214:	0397059b          	addiw	a1,a4,57
   14218:	0015959b          	slliw	a1,a1,0x1
   1421c:	0387069b          	addiw	a3,a4,56
   14220:	058e                	slli	a1,a1,0x3
   14222:	b70d                	j	14144 <_malloc_r+0x370>
   14224:	0f340b63          	beq	s0,s3,1431a <_malloc_r+0x546>
   14228:	0109b403          	ld	s0,16(s3)
   1422c:	00843a03          	ld	s4,8(s0)
   14230:	ffca7a13          	andi	s4,s4,-4
   14234:	409a07b3          	sub	a5,s4,s1
   14238:	009a6563          	bltu	s4,s1,14242 <_malloc_r+0x46e>
   1423c:	477d                	li	a4,31
   1423e:	ecf742e3          	blt	a4,a5,14102 <_malloc_r+0x32e>
   14242:	854a                	mv	a0,s2
   14244:	3f8000ef          	jal	ra,1463c <__malloc_unlock>
   14248:	4501                	li	a0,0
   1424a:	bb79                	j	13fe8 <_malloc_r+0x214>
   1424c:	05c7861b          	addiw	a2,a5,92
   14250:	0016169b          	slliw	a3,a2,0x1
   14254:	05b7851b          	addiw	a0,a5,91
   14258:	068e                	slli	a3,a3,0x3
   1425a:	b125                	j	13e82 <_malloc_r+0xae>
   1425c:	01033783          	ld	a5,16(t1) # 10158 <main+0x4>
   14260:	367d                	addiw	a2,a2,-1
   14262:	18679363          	bne	a5,t1,143e8 <_malloc_r+0x614>
   14266:	00367793          	andi	a5,a2,3
   1426a:	1341                	addi	t1,t1,-16
   1426c:	fbe5                	bnez	a5,1425c <_malloc_r+0x488>
   1426e:	0089b703          	ld	a4,8(s3)
   14272:	fff5c793          	not	a5,a1
   14276:	8ff9                	and	a5,a5,a4
   14278:	00f9b423          	sd	a5,8(s3)
   1427c:	0586                	slli	a1,a1,0x1
   1427e:	c4b7e8e3          	bltu	a5,a1,13ece <_malloc_r+0xfa>
   14282:	c40586e3          	beqz	a1,13ece <_malloc_r+0xfa>
   14286:	00f5f733          	and	a4,a1,a5
   1428a:	e711                	bnez	a4,14296 <_malloc_r+0x4c2>
   1428c:	0586                	slli	a1,a1,0x1
   1428e:	00f5f733          	and	a4,a1,a5
   14292:	2e11                	addiw	t3,t3,4
   14294:	df65                	beqz	a4,1428c <_malloc_r+0x4b8>
   14296:	8672                	mv	a2,t3
   14298:	bbfd                	j	14096 <_malloc_r+0x2c2>
   1429a:	020a0a13          	addi	s4,s4,32
   1429e:	b1ad                	j	13f08 <_malloc_r+0x134>
   142a0:	0089b503          	ld	a0,8(s3)
   142a4:	4026d69b          	sraiw	a3,a3,0x2
   142a8:	4785                	li	a5,1
   142aa:	00d797b3          	sll	a5,a5,a3
   142ae:	8fc9                	or	a5,a5,a0
   142b0:	00f9b423          	sd	a5,8(s3)
   142b4:	b57d                	j	14162 <_malloc_r+0x38e>
   142b6:	014b0c33          	add	s8,s6,s4
   142ba:	41800c33          	neg	s8,s8
   142be:	1c52                	slli	s8,s8,0x34
   142c0:	034c5c13          	srli	s8,s8,0x34
   142c4:	85e2                	mv	a1,s8
   142c6:	854a                	mv	a0,s2
   142c8:	77c000ef          	jal	ra,14a44 <_sbrk_r>
   142cc:	57fd                	li	a5,-1
   142ce:	4701                	li	a4,0
   142d0:	caf50ae3          	beq	a0,a5,13f84 <_malloc_r+0x1b0>
   142d4:	41650533          	sub	a0,a0,s6
   142d8:	000c071b          	sext.w	a4,s8
   142dc:	01850a33          	add	s4,a0,s8
   142e0:	b155                	j	13f84 <_malloc_r+0x1b0>
   142e2:	05400693          	li	a3,84
   142e6:	06e6e863          	bltu	a3,a4,14356 <_malloc_r+0x582>
   142ea:	00c7d713          	srli	a4,a5,0xc
   142ee:	06f7059b          	addiw	a1,a4,111
   142f2:	0015959b          	slliw	a1,a1,0x1
   142f6:	06e7069b          	addiw	a3,a4,110
   142fa:	058e                	slli	a1,a1,0x3
   142fc:	b5a1                	j	14144 <_malloc_r+0x370>
   142fe:	15400713          	li	a4,340
   14302:	06f76863          	bltu	a4,a5,14372 <_malloc_r+0x59e>
   14306:	00f4d793          	srli	a5,s1,0xf
   1430a:	0787861b          	addiw	a2,a5,120
   1430e:	0016169b          	slliw	a3,a2,0x1
   14312:	0777851b          	addiw	a0,a5,119
   14316:	068e                	slli	a3,a3,0x3
   14318:	b6ad                	j	13e82 <_malloc_r+0xae>
   1431a:	7d818b93          	addi	s7,gp,2008 # 19108 <__malloc_current_mallinfo>
   1431e:	000ba783          	lw	a5,0(s7)
   14322:	014786bb          	addw	a3,a5,s4
   14326:	00dba023          	sw	a3,0(s7)
   1432a:	b121                	j	13f32 <_malloc_r+0x15e>
   1432c:	034c1713          	slli	a4,s8,0x34
   14330:	c00711e3          	bnez	a4,13f32 <_malloc_r+0x15e>
   14334:	0109b403          	ld	s0,16(s3)
   14338:	9a56                	add	s4,s4,s5
   1433a:	001a6a13          	ori	s4,s4,1
   1433e:	01443423          	sd	s4,8(s0)
   14342:	b151                	j	13fc6 <_malloc_r+0x1f2>
   14344:	7761b423          	sd	s6,1896(gp) # 19098 <__malloc_sbrk_base>
   14348:	befd                	j	13f46 <_malloc_r+0x172>
   1434a:	845a                	mv	s0,s6
   1434c:	b9ad                	j	13fc6 <_malloc_r+0x1f2>
   1434e:	4785                	li	a5,1
   14350:	00fb3423          	sd	a5,8(s6)
   14354:	b5fd                	j	14242 <_malloc_r+0x46e>
   14356:	15400693          	li	a3,340
   1435a:	04e6ed63          	bltu	a3,a4,143b4 <_malloc_r+0x5e0>
   1435e:	00f7d713          	srli	a4,a5,0xf
   14362:	0787059b          	addiw	a1,a4,120
   14366:	0015959b          	slliw	a1,a1,0x1
   1436a:	0777069b          	addiw	a3,a4,119
   1436e:	058e                	slli	a1,a1,0x3
   14370:	bbd1                	j	14144 <_malloc_r+0x370>
   14372:	55400713          	li	a4,1364
   14376:	04f76d63          	bltu	a4,a5,143d0 <_malloc_r+0x5fc>
   1437a:	0124d793          	srli	a5,s1,0x12
   1437e:	07d7861b          	addiw	a2,a5,125
   14382:	0016169b          	slliw	a3,a2,0x1
   14386:	07c7851b          	addiw	a0,a5,124
   1438a:	068e                	slli	a3,a3,0x3
   1438c:	bcdd                	j	13e82 <_malloc_r+0xae>
   1438e:	1c41                	addi	s8,s8,-16
   14390:	018c8a33          	add	s4,s9,s8
   14394:	416a0a33          	sub	s4,s4,s6
   14398:	4701                	li	a4,0
   1439a:	b6ed                	j	13f84 <_malloc_r+0x1b0>
   1439c:	01040593          	addi	a1,s0,16
   143a0:	854a                	mv	a0,s2
   143a2:	573000ef          	jal	ra,15114 <_free_r>
   143a6:	0109b403          	ld	s0,16(s3)
   143aa:	000ba783          	lw	a5,0(s7)
   143ae:	00843a03          	ld	s4,8(s0)
   143b2:	b911                	j	13fc6 <_malloc_r+0x1f2>
   143b4:	55400693          	li	a3,1364
   143b8:	02e6e363          	bltu	a3,a4,143de <_malloc_r+0x60a>
   143bc:	0127d713          	srli	a4,a5,0x12
   143c0:	07d7059b          	addiw	a1,a4,125
   143c4:	0015959b          	slliw	a1,a1,0x1
   143c8:	07c7069b          	addiw	a3,a4,124
   143cc:	058e                	slli	a1,a1,0x3
   143ce:	bb9d                	j	14144 <_malloc_r+0x370>
   143d0:	7f000693          	li	a3,2032
   143d4:	07f00613          	li	a2,127
   143d8:	07e00513          	li	a0,126
   143dc:	b45d                	j	13e82 <_malloc_r+0xae>
   143de:	7f000593          	li	a1,2032
   143e2:	07e00693          	li	a3,126
   143e6:	bbb9                	j	14144 <_malloc_r+0x370>
   143e8:	0089b783          	ld	a5,8(s3)
   143ec:	bd41                	j	1427c <_malloc_r+0x4a8>

00000000000143ee <memchr>:
   143ee:	00757793          	andi	a5,a0,7
   143f2:	0ff5f693          	zext.b	a3,a1
   143f6:	c395                	beqz	a5,1441a <memchr+0x2c>
   143f8:	fff60793          	addi	a5,a2,-1
   143fc:	c605                	beqz	a2,14424 <memchr+0x36>
   143fe:	567d                	li	a2,-1
   14400:	a801                	j	14410 <memchr+0x22>
   14402:	0505                	addi	a0,a0,1
   14404:	00757713          	andi	a4,a0,7
   14408:	cb11                	beqz	a4,1441c <memchr+0x2e>
   1440a:	17fd                	addi	a5,a5,-1
   1440c:	00c78c63          	beq	a5,a2,14424 <memchr+0x36>
   14410:	00054703          	lbu	a4,0(a0)
   14414:	fed717e3          	bne	a4,a3,14402 <memchr+0x14>
   14418:	8082                	ret
   1441a:	87b2                	mv	a5,a2
   1441c:	471d                	li	a4,7
   1441e:	00f76f63          	bltu	a4,a5,1443c <memchr+0x4e>
   14422:	e399                	bnez	a5,14428 <memchr+0x3a>
   14424:	4501                	li	a0,0
   14426:	8082                	ret
   14428:	97aa                	add	a5,a5,a0
   1442a:	a021                	j	14432 <memchr+0x44>
   1442c:	0505                	addi	a0,a0,1
   1442e:	fea78be3          	beq	a5,a0,14424 <memchr+0x36>
   14432:	00054703          	lbu	a4,0(a0)
   14436:	fed71be3          	bne	a4,a3,1442c <memchr+0x3e>
   1443a:	8082                	ret
   1443c:	0ff5f593          	zext.b	a1,a1
   14440:	00859713          	slli	a4,a1,0x8
   14444:	8dd9                	or	a1,a1,a4
   14446:	01059713          	slli	a4,a1,0x10
   1444a:	7401b883          	ld	a7,1856(gp) # 19070 <__SDATA_BEGIN__+0x8>
   1444e:	8f4d                	or	a4,a4,a1
   14450:	7481b803          	ld	a6,1864(gp) # 19078 <__SDATA_BEGIN__+0x10>
   14454:	02071593          	slli	a1,a4,0x20
   14458:	8dd9                	or	a1,a1,a4
   1445a:	431d                	li	t1,7
   1445c:	6118                	ld	a4,0(a0)
   1445e:	8f2d                	xor	a4,a4,a1
   14460:	01170633          	add	a2,a4,a7
   14464:	fff74713          	not	a4,a4
   14468:	8f71                	and	a4,a4,a2
   1446a:	01077733          	and	a4,a4,a6
   1446e:	ff4d                	bnez	a4,14428 <memchr+0x3a>
   14470:	17e1                	addi	a5,a5,-8
   14472:	0521                	addi	a0,a0,8
   14474:	fef364e3          	bltu	t1,a5,1445c <memchr+0x6e>
   14478:	fbc5                	bnez	a5,14428 <memchr+0x3a>
   1447a:	b76d                	j	14424 <memchr+0x36>

000000000001447c <memcpy>:
   1447c:	00a5c7b3          	xor	a5,a1,a0
   14480:	8b9d                	andi	a5,a5,7
   14482:	00c508b3          	add	a7,a0,a2
   14486:	eba1                	bnez	a5,144d6 <memcpy+0x5a>
   14488:	479d                	li	a5,7
   1448a:	04c7f663          	bgeu	a5,a2,144d6 <memcpy+0x5a>
   1448e:	00757793          	andi	a5,a0,7
   14492:	872a                	mv	a4,a0
   14494:	e7cd                	bnez	a5,1453e <memcpy+0xc2>
   14496:	ff88f613          	andi	a2,a7,-8
   1449a:	40e606b3          	sub	a3,a2,a4
   1449e:	04000793          	li	a5,64
   144a2:	04000293          	li	t0,64
   144a6:	04d7c463          	blt	a5,a3,144ee <memcpy+0x72>
   144aa:	86ae                	mv	a3,a1
   144ac:	87ba                	mv	a5,a4
   144ae:	02c77163          	bgeu	a4,a2,144d0 <memcpy+0x54>
   144b2:	0006b803          	ld	a6,0(a3) # ffffffffffffe000 <__BSS_END__+0xfffffffffffe4ed0>
   144b6:	07a1                	addi	a5,a5,8
   144b8:	06a1                	addi	a3,a3,8
   144ba:	ff07bc23          	sd	a6,-8(a5) # ffffffffffffeff8 <__BSS_END__+0xfffffffffffe5ec8>
   144be:	fec7eae3          	bltu	a5,a2,144b2 <memcpy+0x36>
   144c2:	fff60793          	addi	a5,a2,-1
   144c6:	8f99                	sub	a5,a5,a4
   144c8:	9be1                	andi	a5,a5,-8
   144ca:	07a1                	addi	a5,a5,8
   144cc:	973e                	add	a4,a4,a5
   144ce:	95be                	add	a1,a1,a5
   144d0:	01176663          	bltu	a4,a7,144dc <memcpy+0x60>
   144d4:	8082                	ret
   144d6:	872a                	mv	a4,a0
   144d8:	ff157ee3          	bgeu	a0,a7,144d4 <memcpy+0x58>
   144dc:	0005c783          	lbu	a5,0(a1)
   144e0:	0705                	addi	a4,a4,1
   144e2:	0585                	addi	a1,a1,1
   144e4:	fef70fa3          	sb	a5,-1(a4)
   144e8:	ff176ae3          	bltu	a4,a7,144dc <memcpy+0x60>
   144ec:	8082                	ret
   144ee:	6594                	ld	a3,8(a1)
   144f0:	7d9c                	ld	a5,56(a1)
   144f2:	0005bf83          	ld	t6,0(a1)
   144f6:	0105bf03          	ld	t5,16(a1)
   144fa:	0185be83          	ld	t4,24(a1)
   144fe:	0205be03          	ld	t3,32(a1)
   14502:	0285b303          	ld	t1,40(a1)
   14506:	0305b803          	ld	a6,48(a1)
   1450a:	e714                	sd	a3,8(a4)
   1450c:	61b4                	ld	a3,64(a1)
   1450e:	01f73023          	sd	t6,0(a4)
   14512:	01e73823          	sd	t5,16(a4)
   14516:	01d73c23          	sd	t4,24(a4)
   1451a:	03c73023          	sd	t3,32(a4)
   1451e:	02673423          	sd	t1,40(a4)
   14522:	03073823          	sd	a6,48(a4)
   14526:	ff1c                	sd	a5,56(a4)
   14528:	04870713          	addi	a4,a4,72
   1452c:	40e607b3          	sub	a5,a2,a4
   14530:	fed73c23          	sd	a3,-8(a4)
   14534:	04858593          	addi	a1,a1,72
   14538:	faf2cbe3          	blt	t0,a5,144ee <memcpy+0x72>
   1453c:	b7bd                	j	144aa <memcpy+0x2e>
   1453e:	0005c683          	lbu	a3,0(a1)
   14542:	0705                	addi	a4,a4,1
   14544:	00777793          	andi	a5,a4,7
   14548:	fed70fa3          	sb	a3,-1(a4)
   1454c:	0585                	addi	a1,a1,1
   1454e:	d7a1                	beqz	a5,14496 <memcpy+0x1a>
   14550:	0005c683          	lbu	a3,0(a1)
   14554:	0705                	addi	a4,a4,1
   14556:	00777793          	andi	a5,a4,7
   1455a:	fed70fa3          	sb	a3,-1(a4)
   1455e:	0585                	addi	a1,a1,1
   14560:	fff9                	bnez	a5,1453e <memcpy+0xc2>
   14562:	bf15                	j	14496 <memcpy+0x1a>

0000000000014564 <memmove>:
   14564:	02a5f263          	bgeu	a1,a0,14588 <memmove+0x24>
   14568:	00c587b3          	add	a5,a1,a2
   1456c:	00f57e63          	bgeu	a0,a5,14588 <memmove+0x24>
   14570:	00c50733          	add	a4,a0,a2
   14574:	ca5d                	beqz	a2,1462a <memmove+0xc6>
   14576:	fff7c683          	lbu	a3,-1(a5)
   1457a:	17fd                	addi	a5,a5,-1
   1457c:	177d                	addi	a4,a4,-1
   1457e:	00d70023          	sb	a3,0(a4)
   14582:	fef59ae3          	bne	a1,a5,14576 <memmove+0x12>
   14586:	8082                	ret
   14588:	47fd                	li	a5,31
   1458a:	02c7e163          	bltu	a5,a2,145ac <memmove+0x48>
   1458e:	87aa                	mv	a5,a0
   14590:	fff60693          	addi	a3,a2,-1
   14594:	c245                	beqz	a2,14634 <memmove+0xd0>
   14596:	0685                	addi	a3,a3,1
   14598:	96be                	add	a3,a3,a5
   1459a:	0005c703          	lbu	a4,0(a1)
   1459e:	0785                	addi	a5,a5,1
   145a0:	0585                	addi	a1,a1,1
   145a2:	fee78fa3          	sb	a4,-1(a5)
   145a6:	fed79ae3          	bne	a5,a3,1459a <memmove+0x36>
   145aa:	8082                	ret
   145ac:	00a5e7b3          	or	a5,a1,a0
   145b0:	8b9d                	andi	a5,a5,7
   145b2:	efad                	bnez	a5,1462c <memmove+0xc8>
   145b4:	fe060893          	addi	a7,a2,-32
   145b8:	fe08f893          	andi	a7,a7,-32
   145bc:	02088893          	addi	a7,a7,32
   145c0:	01150833          	add	a6,a0,a7
   145c4:	872e                	mv	a4,a1
   145c6:	87aa                	mv	a5,a0
   145c8:	6314                	ld	a3,0(a4)
   145ca:	02070713          	addi	a4,a4,32
   145ce:	02078793          	addi	a5,a5,32
   145d2:	fed7b023          	sd	a3,-32(a5)
   145d6:	fe873683          	ld	a3,-24(a4)
   145da:	fed7b423          	sd	a3,-24(a5)
   145de:	ff073683          	ld	a3,-16(a4)
   145e2:	fed7b823          	sd	a3,-16(a5)
   145e6:	ff873683          	ld	a3,-8(a4)
   145ea:	fed7bc23          	sd	a3,-8(a5)
   145ee:	fcf81de3          	bne	a6,a5,145c8 <memmove+0x64>
   145f2:	01867713          	andi	a4,a2,24
   145f6:	95c6                	add	a1,a1,a7
   145f8:	01f67813          	andi	a6,a2,31
   145fc:	cf0d                	beqz	a4,14636 <memmove+0xd2>
   145fe:	872e                	mv	a4,a1
   14600:	88be                	mv	a7,a5
   14602:	4e1d                	li	t3,7
   14604:	00073303          	ld	t1,0(a4)
   14608:	0721                	addi	a4,a4,8
   1460a:	40e806b3          	sub	a3,a6,a4
   1460e:	0068b023          	sd	t1,0(a7)
   14612:	96ae                	add	a3,a3,a1
   14614:	08a1                	addi	a7,a7,8
   14616:	fede67e3          	bltu	t3,a3,14604 <memmove+0xa0>
   1461a:	ff880713          	addi	a4,a6,-8
   1461e:	9b61                	andi	a4,a4,-8
   14620:	0721                	addi	a4,a4,8
   14622:	8a1d                	andi	a2,a2,7
   14624:	97ba                	add	a5,a5,a4
   14626:	95ba                	add	a1,a1,a4
   14628:	b7a5                	j	14590 <memmove+0x2c>
   1462a:	8082                	ret
   1462c:	fff60693          	addi	a3,a2,-1
   14630:	87aa                	mv	a5,a0
   14632:	b795                	j	14596 <memmove+0x32>
   14634:	8082                	ret
   14636:	8642                	mv	a2,a6
   14638:	bfa1                	j	14590 <memmove+0x2c>

000000000001463a <__malloc_lock>:
   1463a:	8082                	ret

000000000001463c <__malloc_unlock>:
   1463c:	8082                	ret

000000000001463e <_realloc_r>:
   1463e:	715d                	addi	sp,sp,-80
   14640:	f84a                	sd	s2,48(sp)
   14642:	e486                	sd	ra,72(sp)
   14644:	e0a2                	sd	s0,64(sp)
   14646:	fc26                	sd	s1,56(sp)
   14648:	f44e                	sd	s3,40(sp)
   1464a:	f052                	sd	s4,32(sp)
   1464c:	ec56                	sd	s5,24(sp)
   1464e:	e85a                	sd	s6,16(sp)
   14650:	e45e                	sd	s7,8(sp)
   14652:	e062                	sd	s8,0(sp)
   14654:	8932                	mv	s2,a2
   14656:	14058c63          	beqz	a1,147ae <_realloc_r+0x170>
   1465a:	842e                	mv	s0,a1
   1465c:	8aaa                	mv	s5,a0
   1465e:	fddff0ef          	jal	ra,1463a <__malloc_lock>
   14662:	ff843703          	ld	a4,-8(s0)
   14666:	01790493          	addi	s1,s2,23
   1466a:	02e00793          	li	a5,46
   1466e:	ff040b13          	addi	s6,s0,-16
   14672:	ffc77a13          	andi	s4,a4,-4
   14676:	0a97fd63          	bgeu	a5,s1,14730 <_realloc_r+0xf2>
   1467a:	800007b7          	lui	a5,0x80000
   1467e:	98c1                	andi	s1,s1,-16
   14680:	fff7c793          	not	a5,a5
   14684:	0a97ea63          	bltu	a5,s1,14738 <_realloc_r+0xfa>
   14688:	0b24e863          	bltu	s1,s2,14738 <_realloc_r+0xfa>
   1468c:	014b09b3          	add	s3,s6,s4
   14690:	0c9a5e63          	bge	s4,s1,1476c <_realloc_r+0x12e>
   14694:	67e5                	lui	a5,0x19
   14696:	85878b93          	addi	s7,a5,-1960 # 18858 <__malloc_av_>
   1469a:	010bb683          	ld	a3,16(s7)
   1469e:	0089b783          	ld	a5,8(s3)
   146a2:	15368763          	beq	a3,s3,147f0 <_realloc_r+0x1b2>
   146a6:	ffe7f693          	andi	a3,a5,-2
   146aa:	96ce                	add	a3,a3,s3
   146ac:	6694                	ld	a3,8(a3)
   146ae:	8a85                	andi	a3,a3,1
   146b0:	e6ed                	bnez	a3,1479a <_realloc_r+0x15c>
   146b2:	9bf1                	andi	a5,a5,-4
   146b4:	00fa06b3          	add	a3,s4,a5
   146b8:	0a96d163          	bge	a3,s1,1475a <_realloc_r+0x11c>
   146bc:	8b05                	andi	a4,a4,1
   146be:	e30d                	bnez	a4,146e0 <_realloc_r+0xa2>
   146c0:	ff043c03          	ld	s8,-16(s0)
   146c4:	418b0c33          	sub	s8,s6,s8
   146c8:	008c3703          	ld	a4,8(s8)
   146cc:	9b71                	andi	a4,a4,-4
   146ce:	97ba                	add	a5,a5,a4
   146d0:	01478bb3          	add	s7,a5,s4
   146d4:	269bd463          	bge	s7,s1,1493c <_realloc_r+0x2fe>
   146d8:	00ea0bb3          	add	s7,s4,a4
   146dc:	209bd063          	bge	s7,s1,148dc <_realloc_r+0x29e>
   146e0:	85ca                	mv	a1,s2
   146e2:	8556                	mv	a0,s5
   146e4:	ef0ff0ef          	jal	ra,13dd4 <_malloc_r>
   146e8:	892a                	mv	s2,a0
   146ea:	cd1d                	beqz	a0,14728 <_realloc_r+0xea>
   146ec:	ff843783          	ld	a5,-8(s0)
   146f0:	ff050713          	addi	a4,a0,-16
   146f4:	9bf9                	andi	a5,a5,-2
   146f6:	97da                	add	a5,a5,s6
   146f8:	1ce78b63          	beq	a5,a4,148ce <_realloc_r+0x290>
   146fc:	ff8a0613          	addi	a2,s4,-8
   14700:	04800793          	li	a5,72
   14704:	22c7e863          	bltu	a5,a2,14934 <_realloc_r+0x2f6>
   14708:	02700713          	li	a4,39
   1470c:	6014                	ld	a3,0(s0)
   1470e:	18c76063          	bltu	a4,a2,1488e <_realloc_r+0x250>
   14712:	87aa                	mv	a5,a0
   14714:	8722                	mv	a4,s0
   14716:	e394                	sd	a3,0(a5)
   14718:	6714                	ld	a3,8(a4)
   1471a:	e794                	sd	a3,8(a5)
   1471c:	6b18                	ld	a4,16(a4)
   1471e:	eb98                	sd	a4,16(a5)
   14720:	85a2                	mv	a1,s0
   14722:	8556                	mv	a0,s5
   14724:	1f1000ef          	jal	ra,15114 <_free_r>
   14728:	8556                	mv	a0,s5
   1472a:	f13ff0ef          	jal	ra,1463c <__malloc_unlock>
   1472e:	a809                	j	14740 <_realloc_r+0x102>
   14730:	02000493          	li	s1,32
   14734:	f524fce3          	bgeu	s1,s2,1468c <_realloc_r+0x4e>
   14738:	47b1                	li	a5,12
   1473a:	00faa023          	sw	a5,0(s5)
   1473e:	4901                	li	s2,0
   14740:	60a6                	ld	ra,72(sp)
   14742:	6406                	ld	s0,64(sp)
   14744:	74e2                	ld	s1,56(sp)
   14746:	79a2                	ld	s3,40(sp)
   14748:	7a02                	ld	s4,32(sp)
   1474a:	6ae2                	ld	s5,24(sp)
   1474c:	6b42                	ld	s6,16(sp)
   1474e:	6ba2                	ld	s7,8(sp)
   14750:	6c02                	ld	s8,0(sp)
   14752:	854a                	mv	a0,s2
   14754:	7942                	ld	s2,48(sp)
   14756:	6161                	addi	sp,sp,80
   14758:	8082                	ret
   1475a:	0189b783          	ld	a5,24(s3)
   1475e:	0109b703          	ld	a4,16(s3)
   14762:	8a36                	mv	s4,a3
   14764:	00db09b3          	add	s3,s6,a3
   14768:	ef1c                	sd	a5,24(a4)
   1476a:	eb98                	sd	a4,16(a5)
   1476c:	008b3783          	ld	a5,8(s6)
   14770:	409a0733          	sub	a4,s4,s1
   14774:	46fd                	li	a3,31
   14776:	8b85                	andi	a5,a5,1
   14778:	04e6e963          	bltu	a3,a4,147ca <_realloc_r+0x18c>
   1477c:	00fa67b3          	or	a5,s4,a5
   14780:	00fb3423          	sd	a5,8(s6)
   14784:	0089b783          	ld	a5,8(s3)
   14788:	0017e793          	ori	a5,a5,1
   1478c:	00f9b423          	sd	a5,8(s3)
   14790:	8556                	mv	a0,s5
   14792:	eabff0ef          	jal	ra,1463c <__malloc_unlock>
   14796:	8922                	mv	s2,s0
   14798:	b765                	j	14740 <_realloc_r+0x102>
   1479a:	8b05                	andi	a4,a4,1
   1479c:	f331                	bnez	a4,146e0 <_realloc_r+0xa2>
   1479e:	ff043c03          	ld	s8,-16(s0)
   147a2:	418b0c33          	sub	s8,s6,s8
   147a6:	008c3703          	ld	a4,8(s8)
   147aa:	9b71                	andi	a4,a4,-4
   147ac:	b735                	j	146d8 <_realloc_r+0x9a>
   147ae:	6406                	ld	s0,64(sp)
   147b0:	60a6                	ld	ra,72(sp)
   147b2:	74e2                	ld	s1,56(sp)
   147b4:	7942                	ld	s2,48(sp)
   147b6:	79a2                	ld	s3,40(sp)
   147b8:	7a02                	ld	s4,32(sp)
   147ba:	6ae2                	ld	s5,24(sp)
   147bc:	6b42                	ld	s6,16(sp)
   147be:	6ba2                	ld	s7,8(sp)
   147c0:	6c02                	ld	s8,0(sp)
   147c2:	85b2                	mv	a1,a2
   147c4:	6161                	addi	sp,sp,80
   147c6:	e0eff06f          	j	13dd4 <_malloc_r>
   147ca:	8fc5                	or	a5,a5,s1
   147cc:	00fb3423          	sd	a5,8(s6)
   147d0:	009b05b3          	add	a1,s6,s1
   147d4:	00176713          	ori	a4,a4,1
   147d8:	e598                	sd	a4,8(a1)
   147da:	0089b783          	ld	a5,8(s3)
   147de:	05c1                	addi	a1,a1,16
   147e0:	8556                	mv	a0,s5
   147e2:	0017e793          	ori	a5,a5,1
   147e6:	00f9b423          	sd	a5,8(s3)
   147ea:	12b000ef          	jal	ra,15114 <_free_r>
   147ee:	b74d                	j	14790 <_realloc_r+0x152>
   147f0:	9bf1                	andi	a5,a5,-4
   147f2:	00fa06b3          	add	a3,s4,a5
   147f6:	02048613          	addi	a2,s1,32
   147fa:	0ac6d763          	bge	a3,a2,148a8 <_realloc_r+0x26a>
   147fe:	8b05                	andi	a4,a4,1
   14800:	ee0710e3          	bnez	a4,146e0 <_realloc_r+0xa2>
   14804:	ff043c03          	ld	s8,-16(s0)
   14808:	418b0c33          	sub	s8,s6,s8
   1480c:	008c3703          	ld	a4,8(s8)
   14810:	9b71                	andi	a4,a4,-4
   14812:	97ba                	add	a5,a5,a4
   14814:	014789b3          	add	s3,a5,s4
   14818:	ecc9c0e3          	blt	s3,a2,146d8 <_realloc_r+0x9a>
   1481c:	018c3783          	ld	a5,24(s8)
   14820:	010c3703          	ld	a4,16(s8)
   14824:	ff8a0613          	addi	a2,s4,-8
   14828:	04800693          	li	a3,72
   1482c:	ef1c                	sd	a5,24(a4)
   1482e:	eb98                	sd	a4,16(a5)
   14830:	010c0913          	addi	s2,s8,16
   14834:	1cc6ea63          	bltu	a3,a2,14a08 <_realloc_r+0x3ca>
   14838:	02700593          	li	a1,39
   1483c:	6018                	ld	a4,0(s0)
   1483e:	87ca                	mv	a5,s2
   14840:	00c5ff63          	bgeu	a1,a2,1485e <_realloc_r+0x220>
   14844:	00ec3823          	sd	a4,16(s8)
   14848:	6418                	ld	a4,8(s0)
   1484a:	03700793          	li	a5,55
   1484e:	00ec3c23          	sd	a4,24(s8)
   14852:	1cc7e063          	bltu	a5,a2,14a12 <_realloc_r+0x3d4>
   14856:	6818                	ld	a4,16(s0)
   14858:	020c0793          	addi	a5,s8,32
   1485c:	0441                	addi	s0,s0,16
   1485e:	e398                	sd	a4,0(a5)
   14860:	6418                	ld	a4,8(s0)
   14862:	e798                	sd	a4,8(a5)
   14864:	6818                	ld	a4,16(s0)
   14866:	eb98                	sd	a4,16(a5)
   14868:	009c0733          	add	a4,s8,s1
   1486c:	409989b3          	sub	s3,s3,s1
   14870:	00ebb823          	sd	a4,16(s7)
   14874:	0019e793          	ori	a5,s3,1
   14878:	e71c                	sd	a5,8(a4)
   1487a:	008c3783          	ld	a5,8(s8)
   1487e:	8556                	mv	a0,s5
   14880:	8b85                	andi	a5,a5,1
   14882:	8cdd                	or	s1,s1,a5
   14884:	009c3423          	sd	s1,8(s8)
   14888:	db5ff0ef          	jal	ra,1463c <__malloc_unlock>
   1488c:	bd55                	j	14740 <_realloc_r+0x102>
   1488e:	e114                	sd	a3,0(a0)
   14890:	6414                	ld	a3,8(s0)
   14892:	03700713          	li	a4,55
   14896:	e514                	sd	a3,8(a0)
   14898:	10c76f63          	bltu	a4,a2,149b6 <_realloc_r+0x378>
   1489c:	6814                	ld	a3,16(s0)
   1489e:	01040713          	addi	a4,s0,16
   148a2:	01050793          	addi	a5,a0,16
   148a6:	bd85                	j	14716 <_realloc_r+0xd8>
   148a8:	9b26                	add	s6,s6,s1
   148aa:	8e85                	sub	a3,a3,s1
   148ac:	016bb823          	sd	s6,16(s7)
   148b0:	0016e793          	ori	a5,a3,1
   148b4:	00fb3423          	sd	a5,8(s6)
   148b8:	ff843783          	ld	a5,-8(s0)
   148bc:	8556                	mv	a0,s5
   148be:	8922                	mv	s2,s0
   148c0:	8b85                	andi	a5,a5,1
   148c2:	8cdd                	or	s1,s1,a5
   148c4:	fe943c23          	sd	s1,-8(s0)
   148c8:	d75ff0ef          	jal	ra,1463c <__malloc_unlock>
   148cc:	bd95                	j	14740 <_realloc_r+0x102>
   148ce:	ff853783          	ld	a5,-8(a0)
   148d2:	9bf1                	andi	a5,a5,-4
   148d4:	9a3e                	add	s4,s4,a5
   148d6:	014b09b3          	add	s3,s6,s4
   148da:	bd49                	j	1476c <_realloc_r+0x12e>
   148dc:	018c3783          	ld	a5,24(s8)
   148e0:	010c3703          	ld	a4,16(s8)
   148e4:	ff8a0613          	addi	a2,s4,-8
   148e8:	04800693          	li	a3,72
   148ec:	ef1c                	sd	a5,24(a4)
   148ee:	eb98                	sd	a4,16(a5)
   148f0:	010c0913          	addi	s2,s8,16
   148f4:	017c09b3          	add	s3,s8,s7
   148f8:	0ac6e763          	bltu	a3,a2,149a6 <_realloc_r+0x368>
   148fc:	02700593          	li	a1,39
   14900:	6018                	ld	a4,0(s0)
   14902:	87ca                	mv	a5,s2
   14904:	00c5ff63          	bgeu	a1,a2,14922 <_realloc_r+0x2e4>
   14908:	00ec3823          	sd	a4,16(s8)
   1490c:	6418                	ld	a4,8(s0)
   1490e:	03700793          	li	a5,55
   14912:	00ec3c23          	sd	a4,24(s8)
   14916:	0ac7ec63          	bltu	a5,a2,149ce <_realloc_r+0x390>
   1491a:	6818                	ld	a4,16(s0)
   1491c:	020c0793          	addi	a5,s8,32
   14920:	0441                	addi	s0,s0,16
   14922:	e398                	sd	a4,0(a5)
   14924:	6418                	ld	a4,8(s0)
   14926:	8a5e                	mv	s4,s7
   14928:	8b62                	mv	s6,s8
   1492a:	e798                	sd	a4,8(a5)
   1492c:	6818                	ld	a4,16(s0)
   1492e:	844a                	mv	s0,s2
   14930:	eb98                	sd	a4,16(a5)
   14932:	bd2d                	j	1476c <_realloc_r+0x12e>
   14934:	85a2                	mv	a1,s0
   14936:	c2fff0ef          	jal	ra,14564 <memmove>
   1493a:	b3dd                	j	14720 <_realloc_r+0xe2>
   1493c:	0189b783          	ld	a5,24(s3)
   14940:	0109b703          	ld	a4,16(s3)
   14944:	ff8a0613          	addi	a2,s4,-8
   14948:	04800693          	li	a3,72
   1494c:	ef1c                	sd	a5,24(a4)
   1494e:	eb98                	sd	a4,16(a5)
   14950:	010c3703          	ld	a4,16(s8)
   14954:	018c3783          	ld	a5,24(s8)
   14958:	010c0913          	addi	s2,s8,16
   1495c:	017c09b3          	add	s3,s8,s7
   14960:	ef1c                	sd	a5,24(a4)
   14962:	eb98                	sd	a4,16(a5)
   14964:	04c6e163          	bltu	a3,a2,149a6 <_realloc_r+0x368>
   14968:	02700693          	li	a3,39
   1496c:	6018                	ld	a4,0(s0)
   1496e:	87ca                	mv	a5,s2
   14970:	fac6f9e3          	bgeu	a3,a2,14922 <_realloc_r+0x2e4>
   14974:	00ec3823          	sd	a4,16(s8)
   14978:	6418                	ld	a4,8(s0)
   1497a:	03700793          	li	a5,55
   1497e:	00ec3c23          	sd	a4,24(s8)
   14982:	6818                	ld	a4,16(s0)
   14984:	f8c7fce3          	bgeu	a5,a2,1491c <_realloc_r+0x2de>
   14988:	02ec3023          	sd	a4,32(s8)
   1498c:	6c18                	ld	a4,24(s0)
   1498e:	04800793          	li	a5,72
   14992:	02ec3423          	sd	a4,40(s8)
   14996:	7018                	ld	a4,32(s0)
   14998:	04f60463          	beq	a2,a5,149e0 <_realloc_r+0x3a2>
   1499c:	030c0793          	addi	a5,s8,48
   149a0:	02040413          	addi	s0,s0,32
   149a4:	bfbd                	j	14922 <_realloc_r+0x2e4>
   149a6:	85a2                	mv	a1,s0
   149a8:	854a                	mv	a0,s2
   149aa:	bbbff0ef          	jal	ra,14564 <memmove>
   149ae:	844a                	mv	s0,s2
   149b0:	8a5e                	mv	s4,s7
   149b2:	8b62                	mv	s6,s8
   149b4:	bb65                	j	1476c <_realloc_r+0x12e>
   149b6:	6818                	ld	a4,16(s0)
   149b8:	e918                	sd	a4,16(a0)
   149ba:	6c18                	ld	a4,24(s0)
   149bc:	ed18                	sd	a4,24(a0)
   149be:	7014                	ld	a3,32(s0)
   149c0:	02f60b63          	beq	a2,a5,149f6 <_realloc_r+0x3b8>
   149c4:	02040713          	addi	a4,s0,32
   149c8:	02050793          	addi	a5,a0,32
   149cc:	b3a9                	j	14716 <_realloc_r+0xd8>
   149ce:	681c                	ld	a5,16(s0)
   149d0:	02fc3023          	sd	a5,32(s8)
   149d4:	6c1c                	ld	a5,24(s0)
   149d6:	02fc3423          	sd	a5,40(s8)
   149da:	7018                	ld	a4,32(s0)
   149dc:	fcd610e3          	bne	a2,a3,1499c <_realloc_r+0x35e>
   149e0:	02ec3823          	sd	a4,48(s8)
   149e4:	7418                	ld	a4,40(s0)
   149e6:	040c0793          	addi	a5,s8,64
   149ea:	03040413          	addi	s0,s0,48
   149ee:	02ec3c23          	sd	a4,56(s8)
   149f2:	6018                	ld	a4,0(s0)
   149f4:	b73d                	j	14922 <_realloc_r+0x2e4>
   149f6:	f114                	sd	a3,32(a0)
   149f8:	7414                	ld	a3,40(s0)
   149fa:	03040713          	addi	a4,s0,48
   149fe:	03050793          	addi	a5,a0,48
   14a02:	f514                	sd	a3,40(a0)
   14a04:	7814                	ld	a3,48(s0)
   14a06:	bb01                	j	14716 <_realloc_r+0xd8>
   14a08:	85a2                	mv	a1,s0
   14a0a:	854a                	mv	a0,s2
   14a0c:	b59ff0ef          	jal	ra,14564 <memmove>
   14a10:	bda1                	j	14868 <_realloc_r+0x22a>
   14a12:	681c                	ld	a5,16(s0)
   14a14:	02fc3023          	sd	a5,32(s8)
   14a18:	6c1c                	ld	a5,24(s0)
   14a1a:	02fc3423          	sd	a5,40(s8)
   14a1e:	7018                	ld	a4,32(s0)
   14a20:	00d60763          	beq	a2,a3,14a2e <_realloc_r+0x3f0>
   14a24:	030c0793          	addi	a5,s8,48
   14a28:	02040413          	addi	s0,s0,32
   14a2c:	bd0d                	j	1485e <_realloc_r+0x220>
   14a2e:	02ec3823          	sd	a4,48(s8)
   14a32:	7418                	ld	a4,40(s0)
   14a34:	040c0793          	addi	a5,s8,64
   14a38:	03040413          	addi	s0,s0,48
   14a3c:	02ec3c23          	sd	a4,56(s8)
   14a40:	6018                	ld	a4,0(s0)
   14a42:	bd31                	j	1485e <_realloc_r+0x220>

0000000000014a44 <_sbrk_r>:
   14a44:	1101                	addi	sp,sp,-32
   14a46:	e822                	sd	s0,16(sp)
   14a48:	e426                	sd	s1,8(sp)
   14a4a:	842a                	mv	s0,a0
   14a4c:	852e                	mv	a0,a1
   14a4e:	ec06                	sd	ra,24(sp)
   14a50:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   14a54:	5a9000ef          	jal	ra,157fc <_sbrk>
   14a58:	57fd                	li	a5,-1
   14a5a:	00f50763          	beq	a0,a5,14a68 <_sbrk_r+0x24>
   14a5e:	60e2                	ld	ra,24(sp)
   14a60:	6442                	ld	s0,16(sp)
   14a62:	64a2                	ld	s1,8(sp)
   14a64:	6105                	addi	sp,sp,32
   14a66:	8082                	ret
   14a68:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   14a6c:	dbed                	beqz	a5,14a5e <_sbrk_r+0x1a>
   14a6e:	60e2                	ld	ra,24(sp)
   14a70:	c01c                	sw	a5,0(s0)
   14a72:	6442                	ld	s0,16(sp)
   14a74:	64a2                	ld	s1,8(sp)
   14a76:	6105                	addi	sp,sp,32
   14a78:	8082                	ret

0000000000014a7a <__sread>:
   14a7a:	1141                	addi	sp,sp,-16
   14a7c:	e022                	sd	s0,0(sp)
   14a7e:	842e                	mv	s0,a1
   14a80:	01259583          	lh	a1,18(a1)
   14a84:	e406                	sd	ra,8(sp)
   14a86:	2ad000ef          	jal	ra,15532 <_read_r>
   14a8a:	00054963          	bltz	a0,14a9c <__sread+0x22>
   14a8e:	685c                	ld	a5,144(s0)
   14a90:	60a2                	ld	ra,8(sp)
   14a92:	97aa                	add	a5,a5,a0
   14a94:	e85c                	sd	a5,144(s0)
   14a96:	6402                	ld	s0,0(sp)
   14a98:	0141                	addi	sp,sp,16
   14a9a:	8082                	ret
   14a9c:	01045783          	lhu	a5,16(s0)
   14aa0:	777d                	lui	a4,0xfffff
   14aa2:	177d                	addi	a4,a4,-1
   14aa4:	8ff9                	and	a5,a5,a4
   14aa6:	60a2                	ld	ra,8(sp)
   14aa8:	00f41823          	sh	a5,16(s0)
   14aac:	6402                	ld	s0,0(sp)
   14aae:	0141                	addi	sp,sp,16
   14ab0:	8082                	ret

0000000000014ab2 <__seofread>:
   14ab2:	4501                	li	a0,0
   14ab4:	8082                	ret

0000000000014ab6 <__swrite>:
   14ab6:	01059783          	lh	a5,16(a1)
   14aba:	7179                	addi	sp,sp,-48
   14abc:	f022                	sd	s0,32(sp)
   14abe:	ec26                	sd	s1,24(sp)
   14ac0:	e84a                	sd	s2,16(sp)
   14ac2:	e44e                	sd	s3,8(sp)
   14ac4:	f406                	sd	ra,40(sp)
   14ac6:	1007f713          	andi	a4,a5,256
   14aca:	842e                	mv	s0,a1
   14acc:	84aa                	mv	s1,a0
   14ace:	01259583          	lh	a1,18(a1)
   14ad2:	8932                	mv	s2,a2
   14ad4:	89b6                	mv	s3,a3
   14ad6:	e305                	bnez	a4,14af6 <__swrite+0x40>
   14ad8:	777d                	lui	a4,0xfffff
   14ada:	177d                	addi	a4,a4,-1
   14adc:	8ff9                	and	a5,a5,a4
   14ade:	00f41823          	sh	a5,16(s0)
   14ae2:	7402                	ld	s0,32(sp)
   14ae4:	70a2                	ld	ra,40(sp)
   14ae6:	86ce                	mv	a3,s3
   14ae8:	864a                	mv	a2,s2
   14aea:	69a2                	ld	s3,8(sp)
   14aec:	6942                	ld	s2,16(sp)
   14aee:	8526                	mv	a0,s1
   14af0:	64e2                	ld	s1,24(sp)
   14af2:	6145                	addi	sp,sp,48
   14af4:	a8b1                	j	14b50 <_write_r>
   14af6:	4689                	li	a3,2
   14af8:	4601                	li	a2,0
   14afa:	067000ef          	jal	ra,15360 <_lseek_r>
   14afe:	01041783          	lh	a5,16(s0)
   14b02:	01241583          	lh	a1,18(s0)
   14b06:	bfc9                	j	14ad8 <__swrite+0x22>

0000000000014b08 <__sseek>:
   14b08:	1141                	addi	sp,sp,-16
   14b0a:	e022                	sd	s0,0(sp)
   14b0c:	842e                	mv	s0,a1
   14b0e:	01259583          	lh	a1,18(a1)
   14b12:	e406                	sd	ra,8(sp)
   14b14:	04d000ef          	jal	ra,15360 <_lseek_r>
   14b18:	57fd                	li	a5,-1
   14b1a:	00f50d63          	beq	a0,a5,14b34 <__sseek+0x2c>
   14b1e:	01045783          	lhu	a5,16(s0)
   14b22:	6705                	lui	a4,0x1
   14b24:	60a2                	ld	ra,8(sp)
   14b26:	8fd9                	or	a5,a5,a4
   14b28:	e848                	sd	a0,144(s0)
   14b2a:	00f41823          	sh	a5,16(s0)
   14b2e:	6402                	ld	s0,0(sp)
   14b30:	0141                	addi	sp,sp,16
   14b32:	8082                	ret
   14b34:	01045783          	lhu	a5,16(s0)
   14b38:	777d                	lui	a4,0xfffff
   14b3a:	177d                	addi	a4,a4,-1
   14b3c:	8ff9                	and	a5,a5,a4
   14b3e:	60a2                	ld	ra,8(sp)
   14b40:	00f41823          	sh	a5,16(s0)
   14b44:	6402                	ld	s0,0(sp)
   14b46:	0141                	addi	sp,sp,16
   14b48:	8082                	ret

0000000000014b4a <__sclose>:
   14b4a:	01259583          	lh	a1,18(a1)
   14b4e:	a275                	j	14cfa <_close_r>

0000000000014b50 <_write_r>:
   14b50:	1101                	addi	sp,sp,-32
   14b52:	872e                	mv	a4,a1
   14b54:	e822                	sd	s0,16(sp)
   14b56:	e426                	sd	s1,8(sp)
   14b58:	85b2                	mv	a1,a2
   14b5a:	842a                	mv	s0,a0
   14b5c:	8636                	mv	a2,a3
   14b5e:	853a                	mv	a0,a4
   14b60:	ec06                	sd	ra,24(sp)
   14b62:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   14b66:	4eb000ef          	jal	ra,15850 <_write>
   14b6a:	57fd                	li	a5,-1
   14b6c:	00f50763          	beq	a0,a5,14b7a <_write_r+0x2a>
   14b70:	60e2                	ld	ra,24(sp)
   14b72:	6442                	ld	s0,16(sp)
   14b74:	64a2                	ld	s1,8(sp)
   14b76:	6105                	addi	sp,sp,32
   14b78:	8082                	ret
   14b7a:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   14b7e:	dbed                	beqz	a5,14b70 <_write_r+0x20>
   14b80:	60e2                	ld	ra,24(sp)
   14b82:	c01c                	sw	a5,0(s0)
   14b84:	6442                	ld	s0,16(sp)
   14b86:	64a2                	ld	s1,8(sp)
   14b88:	6105                	addi	sp,sp,32
   14b8a:	8082                	ret

0000000000014b8c <__swsetup_r>:
   14b8c:	7601b783          	ld	a5,1888(gp) # 19090 <_impure_ptr>
   14b90:	1101                	addi	sp,sp,-32
   14b92:	e822                	sd	s0,16(sp)
   14b94:	e426                	sd	s1,8(sp)
   14b96:	ec06                	sd	ra,24(sp)
   14b98:	84aa                	mv	s1,a0
   14b9a:	842e                	mv	s0,a1
   14b9c:	c399                	beqz	a5,14ba2 <__swsetup_r+0x16>
   14b9e:	4bb8                	lw	a4,80(a5)
   14ba0:	cf21                	beqz	a4,14bf8 <__swsetup_r+0x6c>
   14ba2:	01041703          	lh	a4,16(s0)
   14ba6:	03071793          	slli	a5,a4,0x30
   14baa:	00877693          	andi	a3,a4,8
   14bae:	93c1                	srli	a5,a5,0x30
   14bb0:	ceb9                	beqz	a3,14c0e <__swsetup_r+0x82>
   14bb2:	6c14                	ld	a3,24(s0)
   14bb4:	cabd                	beqz	a3,14c2a <__swsetup_r+0x9e>
   14bb6:	0017f613          	andi	a2,a5,1
   14bba:	ce11                	beqz	a2,14bd6 <__swsetup_r+0x4a>
   14bbc:	5010                	lw	a2,32(s0)
   14bbe:	00042623          	sw	zero,12(s0)
   14bc2:	4501                	li	a0,0
   14bc4:	40c0063b          	negw	a2,a2
   14bc8:	d410                	sw	a2,40(s0)
   14bca:	ce91                	beqz	a3,14be6 <__swsetup_r+0x5a>
   14bcc:	60e2                	ld	ra,24(sp)
   14bce:	6442                	ld	s0,16(sp)
   14bd0:	64a2                	ld	s1,8(sp)
   14bd2:	6105                	addi	sp,sp,32
   14bd4:	8082                	ret
   14bd6:	0027f613          	andi	a2,a5,2
   14bda:	4581                	li	a1,0
   14bdc:	e211                	bnez	a2,14be0 <__swsetup_r+0x54>
   14bde:	500c                	lw	a1,32(s0)
   14be0:	c44c                	sw	a1,12(s0)
   14be2:	4501                	li	a0,0
   14be4:	f6e5                	bnez	a3,14bcc <__swsetup_r+0x40>
   14be6:	0807f793          	andi	a5,a5,128
   14bea:	d3ed                	beqz	a5,14bcc <__swsetup_r+0x40>
   14bec:	04076713          	ori	a4,a4,64
   14bf0:	00e41823          	sh	a4,16(s0)
   14bf4:	557d                	li	a0,-1
   14bf6:	bfd9                	j	14bcc <__swsetup_r+0x40>
   14bf8:	853e                	mv	a0,a5
   14bfa:	d49fe0ef          	jal	ra,13942 <__sinit>
   14bfe:	01041703          	lh	a4,16(s0)
   14c02:	03071793          	slli	a5,a4,0x30
   14c06:	00877693          	andi	a3,a4,8
   14c0a:	93c1                	srli	a5,a5,0x30
   14c0c:	f2dd                	bnez	a3,14bb2 <__swsetup_r+0x26>
   14c0e:	0107f693          	andi	a3,a5,16
   14c12:	c2ad                	beqz	a3,14c74 <__swsetup_r+0xe8>
   14c14:	8b91                	andi	a5,a5,4
   14c16:	eb9d                	bnez	a5,14c4c <__swsetup_r+0xc0>
   14c18:	6c14                	ld	a3,24(s0)
   14c1a:	00876713          	ori	a4,a4,8
   14c1e:	03071793          	slli	a5,a4,0x30
   14c22:	00e41823          	sh	a4,16(s0)
   14c26:	93c1                	srli	a5,a5,0x30
   14c28:	f6d9                	bnez	a3,14bb6 <__swsetup_r+0x2a>
   14c2a:	2807f613          	andi	a2,a5,640
   14c2e:	20000593          	li	a1,512
   14c32:	f8b602e3          	beq	a2,a1,14bb6 <__swsetup_r+0x2a>
   14c36:	85a2                	mv	a1,s0
   14c38:	8526                	mv	a0,s1
   14c3a:	762000ef          	jal	ra,1539c <__smakebuf_r>
   14c3e:	01041703          	lh	a4,16(s0)
   14c42:	6c14                	ld	a3,24(s0)
   14c44:	03071793          	slli	a5,a4,0x30
   14c48:	93c1                	srli	a5,a5,0x30
   14c4a:	b7b5                	j	14bb6 <__swsetup_r+0x2a>
   14c4c:	6c2c                	ld	a1,88(s0)
   14c4e:	cd81                	beqz	a1,14c66 <__swsetup_r+0xda>
   14c50:	07440793          	addi	a5,s0,116
   14c54:	00f58763          	beq	a1,a5,14c62 <__swsetup_r+0xd6>
   14c58:	8526                	mv	a0,s1
   14c5a:	4ba000ef          	jal	ra,15114 <_free_r>
   14c5e:	01041703          	lh	a4,16(s0)
   14c62:	04043c23          	sd	zero,88(s0)
   14c66:	6c14                	ld	a3,24(s0)
   14c68:	fdb77713          	andi	a4,a4,-37
   14c6c:	00042423          	sw	zero,8(s0)
   14c70:	e014                	sd	a3,0(s0)
   14c72:	b765                	j	14c1a <__swsetup_r+0x8e>
   14c74:	47a5                	li	a5,9
   14c76:	c09c                	sw	a5,0(s1)
   14c78:	04076713          	ori	a4,a4,64
   14c7c:	00e41823          	sh	a4,16(s0)
   14c80:	557d                	li	a0,-1
   14c82:	b7a9                	j	14bcc <__swsetup_r+0x40>

0000000000014c84 <__register_exitproc>:
   14c84:	7501b703          	ld	a4,1872(gp) # 19080 <_global_impure_ptr>
   14c88:	1f873783          	ld	a5,504(a4) # fffffffffffff1f8 <__BSS_END__+0xfffffffffffe60c8>
   14c8c:	c3b1                	beqz	a5,14cd0 <__register_exitproc+0x4c>
   14c8e:	4798                	lw	a4,8(a5)
   14c90:	487d                	li	a6,31
   14c92:	06e84263          	blt	a6,a4,14cf6 <__register_exitproc+0x72>
   14c96:	c505                	beqz	a0,14cbe <__register_exitproc+0x3a>
   14c98:	00371813          	slli	a6,a4,0x3
   14c9c:	983e                	add	a6,a6,a5
   14c9e:	10c83823          	sd	a2,272(a6)
   14ca2:	3107a883          	lw	a7,784(a5)
   14ca6:	4605                	li	a2,1
   14ca8:	00e6163b          	sllw	a2,a2,a4
   14cac:	00c8e8b3          	or	a7,a7,a2
   14cb0:	3117a823          	sw	a7,784(a5)
   14cb4:	20d83823          	sd	a3,528(a6)
   14cb8:	4689                	li	a3,2
   14cba:	02d50063          	beq	a0,a3,14cda <__register_exitproc+0x56>
   14cbe:	00270693          	addi	a3,a4,2
   14cc2:	068e                	slli	a3,a3,0x3
   14cc4:	2705                	addiw	a4,a4,1
   14cc6:	c798                	sw	a4,8(a5)
   14cc8:	97b6                	add	a5,a5,a3
   14cca:	e38c                	sd	a1,0(a5)
   14ccc:	4501                	li	a0,0
   14cce:	8082                	ret
   14cd0:	20070793          	addi	a5,a4,512
   14cd4:	1ef73c23          	sd	a5,504(a4)
   14cd8:	bf5d                	j	14c8e <__register_exitproc+0xa>
   14cda:	3147a683          	lw	a3,788(a5)
   14cde:	4501                	li	a0,0
   14ce0:	8e55                	or	a2,a2,a3
   14ce2:	00270693          	addi	a3,a4,2
   14ce6:	068e                	slli	a3,a3,0x3
   14ce8:	2705                	addiw	a4,a4,1
   14cea:	30c7aa23          	sw	a2,788(a5)
   14cee:	c798                	sw	a4,8(a5)
   14cf0:	97b6                	add	a5,a5,a3
   14cf2:	e38c                	sd	a1,0(a5)
   14cf4:	8082                	ret
   14cf6:	557d                	li	a0,-1
   14cf8:	8082                	ret

0000000000014cfa <_close_r>:
   14cfa:	1101                	addi	sp,sp,-32
   14cfc:	e822                	sd	s0,16(sp)
   14cfe:	e426                	sd	s1,8(sp)
   14d00:	842a                	mv	s0,a0
   14d02:	852e                	mv	a0,a1
   14d04:	ec06                	sd	ra,24(sp)
   14d06:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   14d0a:	1e7000ef          	jal	ra,156f0 <_close>
   14d0e:	57fd                	li	a5,-1
   14d10:	00f50763          	beq	a0,a5,14d1e <_close_r+0x24>
   14d14:	60e2                	ld	ra,24(sp)
   14d16:	6442                	ld	s0,16(sp)
   14d18:	64a2                	ld	s1,8(sp)
   14d1a:	6105                	addi	sp,sp,32
   14d1c:	8082                	ret
   14d1e:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   14d22:	dbed                	beqz	a5,14d14 <_close_r+0x1a>
   14d24:	60e2                	ld	ra,24(sp)
   14d26:	c01c                	sw	a5,0(s0)
   14d28:	6442                	ld	s0,16(sp)
   14d2a:	64a2                	ld	s1,8(sp)
   14d2c:	6105                	addi	sp,sp,32
   14d2e:	8082                	ret

0000000000014d30 <_fclose_r.part.0>:
   14d30:	1101                	addi	sp,sp,-32
   14d32:	e822                	sd	s0,16(sp)
   14d34:	e426                	sd	s1,8(sp)
   14d36:	e04a                	sd	s2,0(sp)
   14d38:	842e                	mv	s0,a1
   14d3a:	ec06                	sd	ra,24(sp)
   14d3c:	84aa                	mv	s1,a0
   14d3e:	0f2000ef          	jal	ra,14e30 <__sflush_r>
   14d42:	683c                	ld	a5,80(s0)
   14d44:	892a                	mv	s2,a0
   14d46:	c791                	beqz	a5,14d52 <_fclose_r.part.0+0x22>
   14d48:	780c                	ld	a1,48(s0)
   14d4a:	8526                	mv	a0,s1
   14d4c:	9782                	jalr	a5
   14d4e:	04054663          	bltz	a0,14d9a <_fclose_r.part.0+0x6a>
   14d52:	01045783          	lhu	a5,16(s0)
   14d56:	0807f793          	andi	a5,a5,128
   14d5a:	e7b1                	bnez	a5,14da6 <_fclose_r.part.0+0x76>
   14d5c:	6c2c                	ld	a1,88(s0)
   14d5e:	c991                	beqz	a1,14d72 <_fclose_r.part.0+0x42>
   14d60:	07440793          	addi	a5,s0,116
   14d64:	00f58563          	beq	a1,a5,14d6e <_fclose_r.part.0+0x3e>
   14d68:	8526                	mv	a0,s1
   14d6a:	3aa000ef          	jal	ra,15114 <_free_r>
   14d6e:	04043c23          	sd	zero,88(s0)
   14d72:	7c2c                	ld	a1,120(s0)
   14d74:	c591                	beqz	a1,14d80 <_fclose_r.part.0+0x50>
   14d76:	8526                	mv	a0,s1
   14d78:	39c000ef          	jal	ra,15114 <_free_r>
   14d7c:	06043c23          	sd	zero,120(s0)
   14d80:	bcbfe0ef          	jal	ra,1394a <__sfp_lock_acquire>
   14d84:	00041823          	sh	zero,16(s0)
   14d88:	bc5fe0ef          	jal	ra,1394c <__sfp_lock_release>
   14d8c:	60e2                	ld	ra,24(sp)
   14d8e:	6442                	ld	s0,16(sp)
   14d90:	64a2                	ld	s1,8(sp)
   14d92:	854a                	mv	a0,s2
   14d94:	6902                	ld	s2,0(sp)
   14d96:	6105                	addi	sp,sp,32
   14d98:	8082                	ret
   14d9a:	01045783          	lhu	a5,16(s0)
   14d9e:	597d                	li	s2,-1
   14da0:	0807f793          	andi	a5,a5,128
   14da4:	dfc5                	beqz	a5,14d5c <_fclose_r.part.0+0x2c>
   14da6:	6c0c                	ld	a1,24(s0)
   14da8:	8526                	mv	a0,s1
   14daa:	36a000ef          	jal	ra,15114 <_free_r>
   14dae:	b77d                	j	14d5c <_fclose_r.part.0+0x2c>

0000000000014db0 <_fclose_r>:
   14db0:	cd8d                	beqz	a1,14dea <_fclose_r+0x3a>
   14db2:	1101                	addi	sp,sp,-32
   14db4:	e822                	sd	s0,16(sp)
   14db6:	ec06                	sd	ra,24(sp)
   14db8:	842a                	mv	s0,a0
   14dba:	c119                	beqz	a0,14dc0 <_fclose_r+0x10>
   14dbc:	493c                	lw	a5,80(a0)
   14dbe:	cf91                	beqz	a5,14dda <_fclose_r+0x2a>
   14dc0:	01059783          	lh	a5,16(a1)
   14dc4:	e791                	bnez	a5,14dd0 <_fclose_r+0x20>
   14dc6:	60e2                	ld	ra,24(sp)
   14dc8:	6442                	ld	s0,16(sp)
   14dca:	4501                	li	a0,0
   14dcc:	6105                	addi	sp,sp,32
   14dce:	8082                	ret
   14dd0:	8522                	mv	a0,s0
   14dd2:	6442                	ld	s0,16(sp)
   14dd4:	60e2                	ld	ra,24(sp)
   14dd6:	6105                	addi	sp,sp,32
   14dd8:	bfa1                	j	14d30 <_fclose_r.part.0>
   14dda:	e42e                	sd	a1,8(sp)
   14ddc:	b67fe0ef          	jal	ra,13942 <__sinit>
   14de0:	65a2                	ld	a1,8(sp)
   14de2:	01059783          	lh	a5,16(a1)
   14de6:	d3e5                	beqz	a5,14dc6 <_fclose_r+0x16>
   14de8:	b7e5                	j	14dd0 <_fclose_r+0x20>
   14dea:	4501                	li	a0,0
   14dec:	8082                	ret

0000000000014dee <fclose>:
   14dee:	cd1d                	beqz	a0,14e2c <fclose+0x3e>
   14df0:	1101                	addi	sp,sp,-32
   14df2:	e822                	sd	s0,16(sp)
   14df4:	842a                	mv	s0,a0
   14df6:	7601b503          	ld	a0,1888(gp) # 19090 <_impure_ptr>
   14dfa:	ec06                	sd	ra,24(sp)
   14dfc:	c119                	beqz	a0,14e02 <fclose+0x14>
   14dfe:	493c                	lw	a5,80(a0)
   14e00:	cf91                	beqz	a5,14e1c <fclose+0x2e>
   14e02:	01041783          	lh	a5,16(s0)
   14e06:	e791                	bnez	a5,14e12 <fclose+0x24>
   14e08:	60e2                	ld	ra,24(sp)
   14e0a:	6442                	ld	s0,16(sp)
   14e0c:	4501                	li	a0,0
   14e0e:	6105                	addi	sp,sp,32
   14e10:	8082                	ret
   14e12:	85a2                	mv	a1,s0
   14e14:	6442                	ld	s0,16(sp)
   14e16:	60e2                	ld	ra,24(sp)
   14e18:	6105                	addi	sp,sp,32
   14e1a:	bf19                	j	14d30 <_fclose_r.part.0>
   14e1c:	e42a                	sd	a0,8(sp)
   14e1e:	b25fe0ef          	jal	ra,13942 <__sinit>
   14e22:	01041783          	lh	a5,16(s0)
   14e26:	6522                	ld	a0,8(sp)
   14e28:	d3e5                	beqz	a5,14e08 <fclose+0x1a>
   14e2a:	b7e5                	j	14e12 <fclose+0x24>
   14e2c:	4501                	li	a0,0
   14e2e:	8082                	ret

0000000000014e30 <__sflush_r>:
   14e30:	01059783          	lh	a5,16(a1)
   14e34:	7179                	addi	sp,sp,-48
   14e36:	f022                	sd	s0,32(sp)
   14e38:	e44e                	sd	s3,8(sp)
   14e3a:	f406                	sd	ra,40(sp)
   14e3c:	ec26                	sd	s1,24(sp)
   14e3e:	e84a                	sd	s2,16(sp)
   14e40:	0087f693          	andi	a3,a5,8
   14e44:	842e                	mv	s0,a1
   14e46:	89aa                	mv	s3,a0
   14e48:	ead5                	bnez	a3,14efc <__sflush_r+0xcc>
   14e4a:	6705                	lui	a4,0x1
   14e4c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   14e50:	4594                	lw	a3,8(a1)
   14e52:	8fd9                	or	a5,a5,a4
   14e54:	00f59823          	sh	a5,16(a1)
   14e58:	10d05063          	blez	a3,14f58 <__sflush_r+0x128>
   14e5c:	6438                	ld	a4,72(s0)
   14e5e:	c759                	beqz	a4,14eec <__sflush_r+0xbc>
   14e60:	17c2                	slli	a5,a5,0x30
   14e62:	93c1                	srli	a5,a5,0x30
   14e64:	6685                	lui	a3,0x1
   14e66:	0009a483          	lw	s1,0(s3)
   14e6a:	8efd                	and	a3,a3,a5
   14e6c:	0009a023          	sw	zero,0(s3)
   14e70:	780c                	ld	a1,48(s0)
   14e72:	e6fd                	bnez	a3,14f60 <__sflush_r+0x130>
   14e74:	4601                	li	a2,0
   14e76:	4685                	li	a3,1
   14e78:	854e                	mv	a0,s3
   14e7a:	9702                	jalr	a4
   14e7c:	57fd                	li	a5,-1
   14e7e:	862a                	mv	a2,a0
   14e80:	10f50763          	beq	a0,a5,14f8e <__sflush_r+0x15e>
   14e84:	01045783          	lhu	a5,16(s0)
   14e88:	6438                	ld	a4,72(s0)
   14e8a:	780c                	ld	a1,48(s0)
   14e8c:	8b91                	andi	a5,a5,4
   14e8e:	c799                	beqz	a5,14e9c <__sflush_r+0x6c>
   14e90:	4414                	lw	a3,8(s0)
   14e92:	6c3c                	ld	a5,88(s0)
   14e94:	8e15                	sub	a2,a2,a3
   14e96:	c399                	beqz	a5,14e9c <__sflush_r+0x6c>
   14e98:	583c                	lw	a5,112(s0)
   14e9a:	8e1d                	sub	a2,a2,a5
   14e9c:	4681                	li	a3,0
   14e9e:	854e                	mv	a0,s3
   14ea0:	9702                	jalr	a4
   14ea2:	57fd                	li	a5,-1
   14ea4:	0cf51063          	bne	a0,a5,14f64 <__sflush_r+0x134>
   14ea8:	0009a703          	lw	a4,0(s3)
   14eac:	01041783          	lh	a5,16(s0)
   14eb0:	cf6d                	beqz	a4,14faa <__sflush_r+0x17a>
   14eb2:	46f5                	li	a3,29
   14eb4:	00d70563          	beq	a4,a3,14ebe <__sflush_r+0x8e>
   14eb8:	46d9                	li	a3,22
   14eba:	0ed71e63          	bne	a4,a3,14fb6 <__sflush_r+0x186>
   14ebe:	6c14                	ld	a3,24(s0)
   14ec0:	777d                	lui	a4,0xfffff
   14ec2:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe66cf>
   14ec6:	8ff9                	and	a5,a5,a4
   14ec8:	00f41823          	sh	a5,16(s0)
   14ecc:	00042423          	sw	zero,8(s0)
   14ed0:	e014                	sd	a3,0(s0)
   14ed2:	6c2c                	ld	a1,88(s0)
   14ed4:	0099a023          	sw	s1,0(s3)
   14ed8:	c991                	beqz	a1,14eec <__sflush_r+0xbc>
   14eda:	07440793          	addi	a5,s0,116
   14ede:	00f58563          	beq	a1,a5,14ee8 <__sflush_r+0xb8>
   14ee2:	854e                	mv	a0,s3
   14ee4:	230000ef          	jal	ra,15114 <_free_r>
   14ee8:	04043c23          	sd	zero,88(s0)
   14eec:	4501                	li	a0,0
   14eee:	70a2                	ld	ra,40(sp)
   14ef0:	7402                	ld	s0,32(sp)
   14ef2:	64e2                	ld	s1,24(sp)
   14ef4:	6942                	ld	s2,16(sp)
   14ef6:	69a2                	ld	s3,8(sp)
   14ef8:	6145                	addi	sp,sp,48
   14efa:	8082                	ret
   14efc:	0185b903          	ld	s2,24(a1)
   14f00:	fe0906e3          	beqz	s2,14eec <__sflush_r+0xbc>
   14f04:	6184                	ld	s1,0(a1)
   14f06:	03079713          	slli	a4,a5,0x30
   14f0a:	9341                	srli	a4,a4,0x30
   14f0c:	8b0d                	andi	a4,a4,3
   14f0e:	0125b023          	sd	s2,0(a1)
   14f12:	412484bb          	subw	s1,s1,s2
   14f16:	4781                	li	a5,0
   14f18:	e311                	bnez	a4,14f1c <__sflush_r+0xec>
   14f1a:	519c                	lw	a5,32(a1)
   14f1c:	c45c                	sw	a5,12(s0)
   14f1e:	00904663          	bgtz	s1,14f2a <__sflush_r+0xfa>
   14f22:	b7e9                	j	14eec <__sflush_r+0xbc>
   14f24:	992a                	add	s2,s2,a0
   14f26:	fc9053e3          	blez	s1,14eec <__sflush_r+0xbc>
   14f2a:	603c                	ld	a5,64(s0)
   14f2c:	780c                	ld	a1,48(s0)
   14f2e:	86a6                	mv	a3,s1
   14f30:	864a                	mv	a2,s2
   14f32:	854e                	mv	a0,s3
   14f34:	9782                	jalr	a5
   14f36:	9c89                	subw	s1,s1,a0
   14f38:	fea046e3          	bgtz	a0,14f24 <__sflush_r+0xf4>
   14f3c:	01045783          	lhu	a5,16(s0)
   14f40:	70a2                	ld	ra,40(sp)
   14f42:	64e2                	ld	s1,24(sp)
   14f44:	0407e793          	ori	a5,a5,64
   14f48:	00f41823          	sh	a5,16(s0)
   14f4c:	7402                	ld	s0,32(sp)
   14f4e:	6942                	ld	s2,16(sp)
   14f50:	69a2                	ld	s3,8(sp)
   14f52:	557d                	li	a0,-1
   14f54:	6145                	addi	sp,sp,48
   14f56:	8082                	ret
   14f58:	59b8                	lw	a4,112(a1)
   14f5a:	f0e041e3          	bgtz	a4,14e5c <__sflush_r+0x2c>
   14f5e:	b779                	j	14eec <__sflush_r+0xbc>
   14f60:	6850                	ld	a2,144(s0)
   14f62:	b72d                	j	14e8c <__sflush_r+0x5c>
   14f64:	01045783          	lhu	a5,16(s0)
   14f68:	777d                	lui	a4,0xfffff
   14f6a:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe66cf>
   14f6e:	8ff9                	and	a5,a5,a4
   14f70:	6c14                	ld	a3,24(s0)
   14f72:	0107979b          	slliw	a5,a5,0x10
   14f76:	4107d79b          	sraiw	a5,a5,0x10
   14f7a:	6705                	lui	a4,0x1
   14f7c:	00f41823          	sh	a5,16(s0)
   14f80:	00042423          	sw	zero,8(s0)
   14f84:	e014                	sd	a3,0(s0)
   14f86:	8ff9                	and	a5,a5,a4
   14f88:	d7a9                	beqz	a5,14ed2 <__sflush_r+0xa2>
   14f8a:	e848                	sd	a0,144(s0)
   14f8c:	b799                	j	14ed2 <__sflush_r+0xa2>
   14f8e:	0009a783          	lw	a5,0(s3)
   14f92:	ee0789e3          	beqz	a5,14e84 <__sflush_r+0x54>
   14f96:	4775                	li	a4,29
   14f98:	00e78563          	beq	a5,a4,14fa2 <__sflush_r+0x172>
   14f9c:	4759                	li	a4,22
   14f9e:	f8e79fe3          	bne	a5,a4,14f3c <__sflush_r+0x10c>
   14fa2:	0099a023          	sw	s1,0(s3)
   14fa6:	4501                	li	a0,0
   14fa8:	b799                	j	14eee <__sflush_r+0xbe>
   14faa:	777d                	lui	a4,0xfffff
   14fac:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffe66cf>
   14fb0:	6c14                	ld	a3,24(s0)
   14fb2:	8ff9                	and	a5,a5,a4
   14fb4:	b7d9                	j	14f7a <__sflush_r+0x14a>
   14fb6:	0407e793          	ori	a5,a5,64
   14fba:	00f41823          	sh	a5,16(s0)
   14fbe:	557d                	li	a0,-1
   14fc0:	b73d                	j	14eee <__sflush_r+0xbe>

0000000000014fc2 <_fflush_r>:
   14fc2:	1101                	addi	sp,sp,-32
   14fc4:	e822                	sd	s0,16(sp)
   14fc6:	ec06                	sd	ra,24(sp)
   14fc8:	842a                	mv	s0,a0
   14fca:	c119                	beqz	a0,14fd0 <_fflush_r+0xe>
   14fcc:	493c                	lw	a5,80(a0)
   14fce:	cb89                	beqz	a5,14fe0 <_fflush_r+0x1e>
   14fd0:	01059783          	lh	a5,16(a1)
   14fd4:	ef89                	bnez	a5,14fee <_fflush_r+0x2c>
   14fd6:	60e2                	ld	ra,24(sp)
   14fd8:	6442                	ld	s0,16(sp)
   14fda:	4501                	li	a0,0
   14fdc:	6105                	addi	sp,sp,32
   14fde:	8082                	ret
   14fe0:	e42e                	sd	a1,8(sp)
   14fe2:	961fe0ef          	jal	ra,13942 <__sinit>
   14fe6:	65a2                	ld	a1,8(sp)
   14fe8:	01059783          	lh	a5,16(a1)
   14fec:	d7ed                	beqz	a5,14fd6 <_fflush_r+0x14>
   14fee:	8522                	mv	a0,s0
   14ff0:	6442                	ld	s0,16(sp)
   14ff2:	60e2                	ld	ra,24(sp)
   14ff4:	6105                	addi	sp,sp,32
   14ff6:	bd2d                	j	14e30 <__sflush_r>

0000000000014ff8 <fflush>:
   14ff8:	cd1d                	beqz	a0,15036 <fflush+0x3e>
   14ffa:	1101                	addi	sp,sp,-32
   14ffc:	e822                	sd	s0,16(sp)
   14ffe:	842a                	mv	s0,a0
   15000:	7601b503          	ld	a0,1888(gp) # 19090 <_impure_ptr>
   15004:	ec06                	sd	ra,24(sp)
   15006:	c119                	beqz	a0,1500c <fflush+0x14>
   15008:	493c                	lw	a5,80(a0)
   1500a:	cf91                	beqz	a5,15026 <fflush+0x2e>
   1500c:	01041783          	lh	a5,16(s0)
   15010:	e791                	bnez	a5,1501c <fflush+0x24>
   15012:	60e2                	ld	ra,24(sp)
   15014:	6442                	ld	s0,16(sp)
   15016:	4501                	li	a0,0
   15018:	6105                	addi	sp,sp,32
   1501a:	8082                	ret
   1501c:	85a2                	mv	a1,s0
   1501e:	6442                	ld	s0,16(sp)
   15020:	60e2                	ld	ra,24(sp)
   15022:	6105                	addi	sp,sp,32
   15024:	b531                	j	14e30 <__sflush_r>
   15026:	e42a                	sd	a0,8(sp)
   15028:	91bfe0ef          	jal	ra,13942 <__sinit>
   1502c:	01041783          	lh	a5,16(s0)
   15030:	6522                	ld	a0,8(sp)
   15032:	d3e5                	beqz	a5,15012 <fflush+0x1a>
   15034:	b7e5                	j	1501c <fflush+0x24>
   15036:	7501b503          	ld	a0,1872(gp) # 19080 <_global_impure_ptr>
   1503a:	65d5                	lui	a1,0x15
   1503c:	fc258593          	addi	a1,a1,-62 # 14fc2 <_fflush_r>
   15040:	d0bfe06f          	j	13d4a <_fwalk_reent>

0000000000015044 <_malloc_trim_r>:
   15044:	7179                	addi	sp,sp,-48
   15046:	e44e                	sd	s3,8(sp)
   15048:	69e5                	lui	s3,0x19
   1504a:	f022                	sd	s0,32(sp)
   1504c:	ec26                	sd	s1,24(sp)
   1504e:	e84a                	sd	s2,16(sp)
   15050:	e052                	sd	s4,0(sp)
   15052:	f406                	sd	ra,40(sp)
   15054:	8a2e                	mv	s4,a1
   15056:	892a                	mv	s2,a0
   15058:	85898993          	addi	s3,s3,-1960 # 18858 <__malloc_av_>
   1505c:	ddeff0ef          	jal	ra,1463a <__malloc_lock>
   15060:	0109b703          	ld	a4,16(s3)
   15064:	6785                	lui	a5,0x1
   15066:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   1506a:	6704                	ld	s1,8(a4)
   1506c:	41440433          	sub	s0,s0,s4
   15070:	98f1                	andi	s1,s1,-4
   15072:	9426                	add	s0,s0,s1
   15074:	8031                	srli	s0,s0,0xc
   15076:	147d                	addi	s0,s0,-1
   15078:	0432                	slli	s0,s0,0xc
   1507a:	00f44b63          	blt	s0,a5,15090 <_malloc_trim_r+0x4c>
   1507e:	4581                	li	a1,0
   15080:	854a                	mv	a0,s2
   15082:	9c3ff0ef          	jal	ra,14a44 <_sbrk_r>
   15086:	0109b783          	ld	a5,16(s3)
   1508a:	97a6                	add	a5,a5,s1
   1508c:	00f50e63          	beq	a0,a5,150a8 <_malloc_trim_r+0x64>
   15090:	854a                	mv	a0,s2
   15092:	daaff0ef          	jal	ra,1463c <__malloc_unlock>
   15096:	70a2                	ld	ra,40(sp)
   15098:	7402                	ld	s0,32(sp)
   1509a:	64e2                	ld	s1,24(sp)
   1509c:	6942                	ld	s2,16(sp)
   1509e:	69a2                	ld	s3,8(sp)
   150a0:	6a02                	ld	s4,0(sp)
   150a2:	4501                	li	a0,0
   150a4:	6145                	addi	sp,sp,48
   150a6:	8082                	ret
   150a8:	408005b3          	neg	a1,s0
   150ac:	854a                	mv	a0,s2
   150ae:	997ff0ef          	jal	ra,14a44 <_sbrk_r>
   150b2:	57fd                	li	a5,-1
   150b4:	02f50b63          	beq	a0,a5,150ea <_malloc_trim_r+0xa6>
   150b8:	67e5                	lui	a5,0x19
   150ba:	10878793          	addi	a5,a5,264 # 19108 <__malloc_current_mallinfo>
   150be:	4398                	lw	a4,0(a5)
   150c0:	0109b683          	ld	a3,16(s3)
   150c4:	8c81                	sub	s1,s1,s0
   150c6:	0014e493          	ori	s1,s1,1
   150ca:	4087043b          	subw	s0,a4,s0
   150ce:	854a                	mv	a0,s2
   150d0:	e684                	sd	s1,8(a3)
   150d2:	c380                	sw	s0,0(a5)
   150d4:	d68ff0ef          	jal	ra,1463c <__malloc_unlock>
   150d8:	70a2                	ld	ra,40(sp)
   150da:	7402                	ld	s0,32(sp)
   150dc:	64e2                	ld	s1,24(sp)
   150de:	6942                	ld	s2,16(sp)
   150e0:	69a2                	ld	s3,8(sp)
   150e2:	6a02                	ld	s4,0(sp)
   150e4:	4505                	li	a0,1
   150e6:	6145                	addi	sp,sp,48
   150e8:	8082                	ret
   150ea:	4581                	li	a1,0
   150ec:	854a                	mv	a0,s2
   150ee:	957ff0ef          	jal	ra,14a44 <_sbrk_r>
   150f2:	0109b703          	ld	a4,16(s3)
   150f6:	46fd                	li	a3,31
   150f8:	40e507b3          	sub	a5,a0,a4
   150fc:	f8f6dae3          	bge	a3,a5,15090 <_malloc_trim_r+0x4c>
   15100:	7681b683          	ld	a3,1896(gp) # 19098 <__malloc_sbrk_base>
   15104:	0017e793          	ori	a5,a5,1
   15108:	e71c                	sd	a5,8(a4)
   1510a:	8d15                	sub	a0,a0,a3
   1510c:	66e5                	lui	a3,0x19
   1510e:	10a6a423          	sw	a0,264(a3) # 19108 <__malloc_current_mallinfo>
   15112:	bfbd                	j	15090 <_malloc_trim_r+0x4c>

0000000000015114 <_free_r>:
   15114:	c5ed                	beqz	a1,151fe <_free_r+0xea>
   15116:	1101                	addi	sp,sp,-32
   15118:	e822                	sd	s0,16(sp)
   1511a:	e426                	sd	s1,8(sp)
   1511c:	842e                	mv	s0,a1
   1511e:	84aa                	mv	s1,a0
   15120:	ec06                	sd	ra,24(sp)
   15122:	d18ff0ef          	jal	ra,1463a <__malloc_lock>
   15126:	ff843503          	ld	a0,-8(s0)
   1512a:	ff040713          	addi	a4,s0,-16
   1512e:	65e5                	lui	a1,0x19
   15130:	ffe57793          	andi	a5,a0,-2
   15134:	00f70633          	add	a2,a4,a5
   15138:	85858593          	addi	a1,a1,-1960 # 18858 <__malloc_av_>
   1513c:	6614                	ld	a3,8(a2)
   1513e:	0105b803          	ld	a6,16(a1)
   15142:	9af1                	andi	a3,a3,-4
   15144:	14c80063          	beq	a6,a2,15284 <_free_r+0x170>
   15148:	e614                	sd	a3,8(a2)
   1514a:	8905                	andi	a0,a0,1
   1514c:	00d60833          	add	a6,a2,a3
   15150:	e141                	bnez	a0,151d0 <_free_r+0xbc>
   15152:	ff043303          	ld	t1,-16(s0)
   15156:	00883803          	ld	a6,8(a6)
   1515a:	6565                	lui	a0,0x19
   1515c:	40670733          	sub	a4,a4,t1
   15160:	01073883          	ld	a7,16(a4)
   15164:	86850513          	addi	a0,a0,-1944 # 18868 <__malloc_av_+0x10>
   15168:	979a                	add	a5,a5,t1
   1516a:	00187813          	andi	a6,a6,1
   1516e:	0ea88863          	beq	a7,a0,1525e <_free_r+0x14a>
   15172:	01873303          	ld	t1,24(a4)
   15176:	0068bc23          	sd	t1,24(a7)
   1517a:	01133823          	sd	a7,16(t1)
   1517e:	14080d63          	beqz	a6,152d8 <_free_r+0x1c4>
   15182:	0017e693          	ori	a3,a5,1
   15186:	e714                	sd	a3,8(a4)
   15188:	e21c                	sd	a5,0(a2)
   1518a:	1ff00693          	li	a3,511
   1518e:	08f6e263          	bltu	a3,a5,15212 <_free_r+0xfe>
   15192:	838d                	srli	a5,a5,0x3
   15194:	0017869b          	addiw	a3,a5,1
   15198:	0016969b          	slliw	a3,a3,0x1
   1519c:	068e                	slli	a3,a3,0x3
   1519e:	0085b803          	ld	a6,8(a1)
   151a2:	96ae                	add	a3,a3,a1
   151a4:	6288                	ld	a0,0(a3)
   151a6:	4027d61b          	sraiw	a2,a5,0x2
   151aa:	4785                	li	a5,1
   151ac:	00c797b3          	sll	a5,a5,a2
   151b0:	0107e7b3          	or	a5,a5,a6
   151b4:	ff068613          	addi	a2,a3,-16
   151b8:	ef10                	sd	a2,24(a4)
   151ba:	eb08                	sd	a0,16(a4)
   151bc:	e59c                	sd	a5,8(a1)
   151be:	e298                	sd	a4,0(a3)
   151c0:	ed18                	sd	a4,24(a0)
   151c2:	6442                	ld	s0,16(sp)
   151c4:	60e2                	ld	ra,24(sp)
   151c6:	8526                	mv	a0,s1
   151c8:	64a2                	ld	s1,8(sp)
   151ca:	6105                	addi	sp,sp,32
   151cc:	c70ff06f          	j	1463c <__malloc_unlock>
   151d0:	00883503          	ld	a0,8(a6)
   151d4:	8905                	andi	a0,a0,1
   151d6:	e50d                	bnez	a0,15200 <_free_r+0xec>
   151d8:	6565                	lui	a0,0x19
   151da:	97b6                	add	a5,a5,a3
   151dc:	86850513          	addi	a0,a0,-1944 # 18868 <__malloc_av_+0x10>
   151e0:	6a14                	ld	a3,16(a2)
   151e2:	0017e893          	ori	a7,a5,1
   151e6:	00f70833          	add	a6,a4,a5
   151ea:	10a68163          	beq	a3,a0,152ec <_free_r+0x1d8>
   151ee:	6e10                	ld	a2,24(a2)
   151f0:	ee90                	sd	a2,24(a3)
   151f2:	ea14                	sd	a3,16(a2)
   151f4:	01173423          	sd	a7,8(a4)
   151f8:	00f83023          	sd	a5,0(a6)
   151fc:	b779                	j	1518a <_free_r+0x76>
   151fe:	8082                	ret
   15200:	0017e693          	ori	a3,a5,1
   15204:	fed43c23          	sd	a3,-8(s0)
   15208:	e21c                	sd	a5,0(a2)
   1520a:	1ff00693          	li	a3,511
   1520e:	f8f6f2e3          	bgeu	a3,a5,15192 <_free_r+0x7e>
   15212:	0097d693          	srli	a3,a5,0x9
   15216:	4611                	li	a2,4
   15218:	08d66f63          	bltu	a2,a3,152b6 <_free_r+0x1a2>
   1521c:	0067d693          	srli	a3,a5,0x6
   15220:	0396851b          	addiw	a0,a3,57
   15224:	0015151b          	slliw	a0,a0,0x1
   15228:	0386861b          	addiw	a2,a3,56
   1522c:	050e                	slli	a0,a0,0x3
   1522e:	952e                	add	a0,a0,a1
   15230:	6114                	ld	a3,0(a0)
   15232:	1541                	addi	a0,a0,-16
   15234:	0cd50563          	beq	a0,a3,152fe <_free_r+0x1ea>
   15238:	6690                	ld	a2,8(a3)
   1523a:	9a71                	andi	a2,a2,-4
   1523c:	00c7f563          	bgeu	a5,a2,15246 <_free_r+0x132>
   15240:	6a94                	ld	a3,16(a3)
   15242:	fed51be3          	bne	a0,a3,15238 <_free_r+0x124>
   15246:	6e88                	ld	a0,24(a3)
   15248:	ef08                	sd	a0,24(a4)
   1524a:	eb14                	sd	a3,16(a4)
   1524c:	6442                	ld	s0,16(sp)
   1524e:	e918                	sd	a4,16(a0)
   15250:	60e2                	ld	ra,24(sp)
   15252:	8526                	mv	a0,s1
   15254:	64a2                	ld	s1,8(sp)
   15256:	ee98                	sd	a4,24(a3)
   15258:	6105                	addi	sp,sp,32
   1525a:	be2ff06f          	j	1463c <__malloc_unlock>
   1525e:	0e081c63          	bnez	a6,15356 <_free_r+0x242>
   15262:	6e0c                	ld	a1,24(a2)
   15264:	6a10                	ld	a2,16(a2)
   15266:	97b6                	add	a5,a5,a3
   15268:	6442                	ld	s0,16(sp)
   1526a:	ee0c                	sd	a1,24(a2)
   1526c:	e990                	sd	a2,16(a1)
   1526e:	0017e693          	ori	a3,a5,1
   15272:	60e2                	ld	ra,24(sp)
   15274:	e714                	sd	a3,8(a4)
   15276:	8526                	mv	a0,s1
   15278:	973e                	add	a4,a4,a5
   1527a:	64a2                	ld	s1,8(sp)
   1527c:	e31c                	sd	a5,0(a4)
   1527e:	6105                	addi	sp,sp,32
   15280:	bbcff06f          	j	1463c <__malloc_unlock>
   15284:	8905                	andi	a0,a0,1
   15286:	97b6                	add	a5,a5,a3
   15288:	e909                	bnez	a0,1529a <_free_r+0x186>
   1528a:	ff043503          	ld	a0,-16(s0)
   1528e:	8f09                	sub	a4,a4,a0
   15290:	6f14                	ld	a3,24(a4)
   15292:	6b10                	ld	a2,16(a4)
   15294:	97aa                	add	a5,a5,a0
   15296:	ee14                	sd	a3,24(a2)
   15298:	ea90                	sd	a2,16(a3)
   1529a:	0017e613          	ori	a2,a5,1
   1529e:	7701b683          	ld	a3,1904(gp) # 190a0 <__malloc_trim_threshold>
   152a2:	e710                	sd	a2,8(a4)
   152a4:	e998                	sd	a4,16(a1)
   152a6:	f0d7eee3          	bltu	a5,a3,151c2 <_free_r+0xae>
   152aa:	7881b583          	ld	a1,1928(gp) # 190b8 <__malloc_top_pad>
   152ae:	8526                	mv	a0,s1
   152b0:	d95ff0ef          	jal	ra,15044 <_malloc_trim_r>
   152b4:	b739                	j	151c2 <_free_r+0xae>
   152b6:	4651                	li	a2,20
   152b8:	02d67263          	bgeu	a2,a3,152dc <_free_r+0x1c8>
   152bc:	05400613          	li	a2,84
   152c0:	04d66a63          	bltu	a2,a3,15314 <_free_r+0x200>
   152c4:	00c7d693          	srli	a3,a5,0xc
   152c8:	06f6851b          	addiw	a0,a3,111
   152cc:	0015151b          	slliw	a0,a0,0x1
   152d0:	06e6861b          	addiw	a2,a3,110
   152d4:	050e                	slli	a0,a0,0x3
   152d6:	bfa1                	j	1522e <_free_r+0x11a>
   152d8:	97b6                	add	a5,a5,a3
   152da:	b719                	j	151e0 <_free_r+0xcc>
   152dc:	05c6851b          	addiw	a0,a3,92
   152e0:	0015151b          	slliw	a0,a0,0x1
   152e4:	05b6861b          	addiw	a2,a3,91
   152e8:	050e                	slli	a0,a0,0x3
   152ea:	b791                	j	1522e <_free_r+0x11a>
   152ec:	f598                	sd	a4,40(a1)
   152ee:	f198                	sd	a4,32(a1)
   152f0:	ef08                	sd	a0,24(a4)
   152f2:	eb08                	sd	a0,16(a4)
   152f4:	01173423          	sd	a7,8(a4)
   152f8:	00f83023          	sd	a5,0(a6)
   152fc:	b5d9                	j	151c2 <_free_r+0xae>
   152fe:	0085b803          	ld	a6,8(a1)
   15302:	4026561b          	sraiw	a2,a2,0x2
   15306:	4785                	li	a5,1
   15308:	00c79633          	sll	a2,a5,a2
   1530c:	01066633          	or	a2,a2,a6
   15310:	e590                	sd	a2,8(a1)
   15312:	bf1d                	j	15248 <_free_r+0x134>
   15314:	15400613          	li	a2,340
   15318:	00d66c63          	bltu	a2,a3,15330 <_free_r+0x21c>
   1531c:	00f7d693          	srli	a3,a5,0xf
   15320:	0786851b          	addiw	a0,a3,120
   15324:	0015151b          	slliw	a0,a0,0x1
   15328:	0776861b          	addiw	a2,a3,119
   1532c:	050e                	slli	a0,a0,0x3
   1532e:	b701                	j	1522e <_free_r+0x11a>
   15330:	55400613          	li	a2,1364
   15334:	00d66c63          	bltu	a2,a3,1534c <_free_r+0x238>
   15338:	0127d693          	srli	a3,a5,0x12
   1533c:	07d6851b          	addiw	a0,a3,125
   15340:	0015151b          	slliw	a0,a0,0x1
   15344:	07c6861b          	addiw	a2,a3,124
   15348:	050e                	slli	a0,a0,0x3
   1534a:	b5d5                	j	1522e <_free_r+0x11a>
   1534c:	7f000513          	li	a0,2032
   15350:	07e00613          	li	a2,126
   15354:	bde9                	j	1522e <_free_r+0x11a>
   15356:	0017e693          	ori	a3,a5,1
   1535a:	e714                	sd	a3,8(a4)
   1535c:	e21c                	sd	a5,0(a2)
   1535e:	b595                	j	151c2 <_free_r+0xae>

0000000000015360 <_lseek_r>:
   15360:	1101                	addi	sp,sp,-32
   15362:	872e                	mv	a4,a1
   15364:	e822                	sd	s0,16(sp)
   15366:	e426                	sd	s1,8(sp)
   15368:	85b2                	mv	a1,a2
   1536a:	842a                	mv	s0,a0
   1536c:	8636                	mv	a2,a3
   1536e:	853a                	mv	a0,a4
   15370:	ec06                	sd	ra,24(sp)
   15372:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   15376:	42e000ef          	jal	ra,157a4 <_lseek>
   1537a:	57fd                	li	a5,-1
   1537c:	00f50763          	beq	a0,a5,1538a <_lseek_r+0x2a>
   15380:	60e2                	ld	ra,24(sp)
   15382:	6442                	ld	s0,16(sp)
   15384:	64a2                	ld	s1,8(sp)
   15386:	6105                	addi	sp,sp,32
   15388:	8082                	ret
   1538a:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   1538e:	dbed                	beqz	a5,15380 <_lseek_r+0x20>
   15390:	60e2                	ld	ra,24(sp)
   15392:	c01c                	sw	a5,0(s0)
   15394:	6442                	ld	s0,16(sp)
   15396:	64a2                	ld	s1,8(sp)
   15398:	6105                	addi	sp,sp,32
   1539a:	8082                	ret

000000000001539c <__smakebuf_r>:
   1539c:	0105d783          	lhu	a5,16(a1)
   153a0:	7135                	addi	sp,sp,-160
   153a2:	e922                	sd	s0,144(sp)
   153a4:	ed06                	sd	ra,152(sp)
   153a6:	e526                	sd	s1,136(sp)
   153a8:	e14a                	sd	s2,128(sp)
   153aa:	fcce                	sd	s3,120(sp)
   153ac:	f8d2                	sd	s4,112(sp)
   153ae:	0027f713          	andi	a4,a5,2
   153b2:	842e                	mv	s0,a1
   153b4:	cf19                	beqz	a4,153d2 <__smakebuf_r+0x36>
   153b6:	07758793          	addi	a5,a1,119
   153ba:	e19c                	sd	a5,0(a1)
   153bc:	ed9c                	sd	a5,24(a1)
   153be:	4785                	li	a5,1
   153c0:	d19c                	sw	a5,32(a1)
   153c2:	60ea                	ld	ra,152(sp)
   153c4:	644a                	ld	s0,144(sp)
   153c6:	64aa                	ld	s1,136(sp)
   153c8:	690a                	ld	s2,128(sp)
   153ca:	79e6                	ld	s3,120(sp)
   153cc:	7a46                	ld	s4,112(sp)
   153ce:	610d                	addi	sp,sp,160
   153d0:	8082                	ret
   153d2:	01259583          	lh	a1,18(a1)
   153d6:	84aa                	mv	s1,a0
   153d8:	0605c863          	bltz	a1,15448 <__smakebuf_r+0xac>
   153dc:	0030                	addi	a2,sp,8
   153de:	2a2000ef          	jal	ra,15680 <_fstat_r>
   153e2:	06054163          	bltz	a0,15444 <__smakebuf_r+0xa8>
   153e6:	4932                	lw	s2,12(sp)
   153e8:	67bd                	lui	a5,0xf
   153ea:	40000a13          	li	s4,1024
   153ee:	00f97933          	and	s2,s2,a5
   153f2:	6789                	lui	a5,0x2
   153f4:	40f90933          	sub	s2,s2,a5
   153f8:	6785                	lui	a5,0x1
   153fa:	00193913          	seqz	s2,s2
   153fe:	80078993          	addi	s3,a5,-2048 # 800 <register_fini-0xf8b0>
   15402:	85d2                	mv	a1,s4
   15404:	8526                	mv	a0,s1
   15406:	9cffe0ef          	jal	ra,13dd4 <_malloc_r>
   1540a:	01041783          	lh	a5,16(s0)
   1540e:	c939                	beqz	a0,15464 <__smakebuf_r+0xc8>
   15410:	674d                	lui	a4,0x13
   15412:	6ea70713          	addi	a4,a4,1770 # 136ea <_cleanup_r>
   15416:	ecb8                	sd	a4,88(s1)
   15418:	0807e793          	ori	a5,a5,128
   1541c:	00f41823          	sh	a5,16(s0)
   15420:	e008                	sd	a0,0(s0)
   15422:	ec08                	sd	a0,24(s0)
   15424:	03442023          	sw	s4,32(s0)
   15428:	06091163          	bnez	s2,1548a <__smakebuf_r+0xee>
   1542c:	0137e7b3          	or	a5,a5,s3
   15430:	60ea                	ld	ra,152(sp)
   15432:	00f41823          	sh	a5,16(s0)
   15436:	644a                	ld	s0,144(sp)
   15438:	64aa                	ld	s1,136(sp)
   1543a:	690a                	ld	s2,128(sp)
   1543c:	79e6                	ld	s3,120(sp)
   1543e:	7a46                	ld	s4,112(sp)
   15440:	610d                	addi	sp,sp,160
   15442:	8082                	ret
   15444:	01045783          	lhu	a5,16(s0)
   15448:	0807f793          	andi	a5,a5,128
   1544c:	4901                	li	s2,0
   1544e:	cb95                	beqz	a5,15482 <__smakebuf_r+0xe6>
   15450:	04000a13          	li	s4,64
   15454:	85d2                	mv	a1,s4
   15456:	8526                	mv	a0,s1
   15458:	97dfe0ef          	jal	ra,13dd4 <_malloc_r>
   1545c:	01041783          	lh	a5,16(s0)
   15460:	4981                	li	s3,0
   15462:	f55d                	bnez	a0,15410 <__smakebuf_r+0x74>
   15464:	2007f713          	andi	a4,a5,512
   15468:	ff29                	bnez	a4,153c2 <__smakebuf_r+0x26>
   1546a:	9bf1                	andi	a5,a5,-4
   1546c:	0027e793          	ori	a5,a5,2
   15470:	07740713          	addi	a4,s0,119
   15474:	00f41823          	sh	a5,16(s0)
   15478:	4785                	li	a5,1
   1547a:	e018                	sd	a4,0(s0)
   1547c:	ec18                	sd	a4,24(s0)
   1547e:	d01c                	sw	a5,32(s0)
   15480:	b789                	j	153c2 <__smakebuf_r+0x26>
   15482:	40000a13          	li	s4,1024
   15486:	4981                	li	s3,0
   15488:	bfad                	j	15402 <__smakebuf_r+0x66>
   1548a:	01241583          	lh	a1,18(s0)
   1548e:	8526                	mv	a0,s1
   15490:	22a000ef          	jal	ra,156ba <_isatty_r>
   15494:	e501                	bnez	a0,1549c <__smakebuf_r+0x100>
   15496:	01041783          	lh	a5,16(s0)
   1549a:	bf49                	j	1542c <__smakebuf_r+0x90>
   1549c:	01045783          	lhu	a5,16(s0)
   154a0:	9bf1                	andi	a5,a5,-4
   154a2:	0017e793          	ori	a5,a5,1
   154a6:	0107979b          	slliw	a5,a5,0x10
   154aa:	4107d79b          	sraiw	a5,a5,0x10
   154ae:	bfbd                	j	1542c <__smakebuf_r+0x90>

00000000000154b0 <__swhatbuf_r>:
   154b0:	7175                	addi	sp,sp,-144
   154b2:	e122                	sd	s0,128(sp)
   154b4:	842e                	mv	s0,a1
   154b6:	01259583          	lh	a1,18(a1)
   154ba:	fca6                	sd	s1,120(sp)
   154bc:	f8ca                	sd	s2,112(sp)
   154be:	e506                	sd	ra,136(sp)
   154c0:	84b2                	mv	s1,a2
   154c2:	8936                	mv	s2,a3
   154c4:	0205cc63          	bltz	a1,154fc <__swhatbuf_r+0x4c>
   154c8:	0030                	addi	a2,sp,8
   154ca:	1b6000ef          	jal	ra,15680 <_fstat_r>
   154ce:	02054763          	bltz	a0,154fc <__swhatbuf_r+0x4c>
   154d2:	47b2                	lw	a5,12(sp)
   154d4:	673d                	lui	a4,0xf
   154d6:	60aa                	ld	ra,136(sp)
   154d8:	8ff9                	and	a5,a5,a4
   154da:	6709                	lui	a4,0x2
   154dc:	8f99                	sub	a5,a5,a4
   154de:	640a                	ld	s0,128(sp)
   154e0:	0017b793          	seqz	a5,a5
   154e4:	00f92023          	sw	a5,0(s2)
   154e8:	40000793          	li	a5,1024
   154ec:	e09c                	sd	a5,0(s1)
   154ee:	6505                	lui	a0,0x1
   154f0:	74e6                	ld	s1,120(sp)
   154f2:	7946                	ld	s2,112(sp)
   154f4:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   154f8:	6149                	addi	sp,sp,144
   154fa:	8082                	ret
   154fc:	01041783          	lh	a5,16(s0)
   15500:	00092023          	sw	zero,0(s2)
   15504:	0807f793          	andi	a5,a5,128
   15508:	cb99                	beqz	a5,1551e <__swhatbuf_r+0x6e>
   1550a:	60aa                	ld	ra,136(sp)
   1550c:	640a                	ld	s0,128(sp)
   1550e:	04000793          	li	a5,64
   15512:	e09c                	sd	a5,0(s1)
   15514:	7946                	ld	s2,112(sp)
   15516:	74e6                	ld	s1,120(sp)
   15518:	4501                	li	a0,0
   1551a:	6149                	addi	sp,sp,144
   1551c:	8082                	ret
   1551e:	60aa                	ld	ra,136(sp)
   15520:	640a                	ld	s0,128(sp)
   15522:	40000793          	li	a5,1024
   15526:	e09c                	sd	a5,0(s1)
   15528:	7946                	ld	s2,112(sp)
   1552a:	74e6                	ld	s1,120(sp)
   1552c:	4501                	li	a0,0
   1552e:	6149                	addi	sp,sp,144
   15530:	8082                	ret

0000000000015532 <_read_r>:
   15532:	1101                	addi	sp,sp,-32
   15534:	872e                	mv	a4,a1
   15536:	e822                	sd	s0,16(sp)
   15538:	e426                	sd	s1,8(sp)
   1553a:	85b2                	mv	a1,a2
   1553c:	842a                	mv	s0,a0
   1553e:	8636                	mv	a2,a3
   15540:	853a                	mv	a0,a4
   15542:	ec06                	sd	ra,24(sp)
   15544:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   15548:	288000ef          	jal	ra,157d0 <_read>
   1554c:	57fd                	li	a5,-1
   1554e:	00f50763          	beq	a0,a5,1555c <_read_r+0x2a>
   15552:	60e2                	ld	ra,24(sp)
   15554:	6442                	ld	s0,16(sp)
   15556:	64a2                	ld	s1,8(sp)
   15558:	6105                	addi	sp,sp,32
   1555a:	8082                	ret
   1555c:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   15560:	dbed                	beqz	a5,15552 <_read_r+0x20>
   15562:	60e2                	ld	ra,24(sp)
   15564:	c01c                	sw	a5,0(s0)
   15566:	6442                	ld	s0,16(sp)
   15568:	64a2                	ld	s1,8(sp)
   1556a:	6105                	addi	sp,sp,32
   1556c:	8082                	ret

000000000001556e <cleanup_glue>:
   1556e:	7179                	addi	sp,sp,-48
   15570:	e84a                	sd	s2,16(sp)
   15572:	0005b903          	ld	s2,0(a1)
   15576:	f022                	sd	s0,32(sp)
   15578:	ec26                	sd	s1,24(sp)
   1557a:	f406                	sd	ra,40(sp)
   1557c:	e44e                	sd	s3,8(sp)
   1557e:	e052                	sd	s4,0(sp)
   15580:	842e                	mv	s0,a1
   15582:	84aa                	mv	s1,a0
   15584:	02090b63          	beqz	s2,155ba <cleanup_glue+0x4c>
   15588:	00093983          	ld	s3,0(s2)
   1558c:	02098363          	beqz	s3,155b2 <cleanup_glue+0x44>
   15590:	0009ba03          	ld	s4,0(s3)
   15594:	000a0b63          	beqz	s4,155aa <cleanup_glue+0x3c>
   15598:	000a3583          	ld	a1,0(s4)
   1559c:	c199                	beqz	a1,155a2 <cleanup_glue+0x34>
   1559e:	fd1ff0ef          	jal	ra,1556e <cleanup_glue>
   155a2:	85d2                	mv	a1,s4
   155a4:	8526                	mv	a0,s1
   155a6:	b6fff0ef          	jal	ra,15114 <_free_r>
   155aa:	85ce                	mv	a1,s3
   155ac:	8526                	mv	a0,s1
   155ae:	b67ff0ef          	jal	ra,15114 <_free_r>
   155b2:	85ca                	mv	a1,s2
   155b4:	8526                	mv	a0,s1
   155b6:	b5fff0ef          	jal	ra,15114 <_free_r>
   155ba:	85a2                	mv	a1,s0
   155bc:	7402                	ld	s0,32(sp)
   155be:	70a2                	ld	ra,40(sp)
   155c0:	6942                	ld	s2,16(sp)
   155c2:	69a2                	ld	s3,8(sp)
   155c4:	6a02                	ld	s4,0(sp)
   155c6:	8526                	mv	a0,s1
   155c8:	64e2                	ld	s1,24(sp)
   155ca:	6145                	addi	sp,sp,48
   155cc:	b49ff06f          	j	15114 <_free_r>

00000000000155d0 <_reclaim_reent>:
   155d0:	7601b783          	ld	a5,1888(gp) # 19090 <_impure_ptr>
   155d4:	0aa78563          	beq	a5,a0,1567e <_reclaim_reent+0xae>
   155d8:	7d2c                	ld	a1,120(a0)
   155da:	7179                	addi	sp,sp,-48
   155dc:	ec26                	sd	s1,24(sp)
   155de:	f406                	sd	ra,40(sp)
   155e0:	f022                	sd	s0,32(sp)
   155e2:	e84a                	sd	s2,16(sp)
   155e4:	e44e                	sd	s3,8(sp)
   155e6:	84aa                	mv	s1,a0
   155e8:	c58d                	beqz	a1,15612 <_reclaim_reent+0x42>
   155ea:	4901                	li	s2,0
   155ec:	20000993          	li	s3,512
   155f0:	012587b3          	add	a5,a1,s2
   155f4:	6380                	ld	s0,0(a5)
   155f6:	c801                	beqz	s0,15606 <_reclaim_reent+0x36>
   155f8:	85a2                	mv	a1,s0
   155fa:	6000                	ld	s0,0(s0)
   155fc:	8526                	mv	a0,s1
   155fe:	b17ff0ef          	jal	ra,15114 <_free_r>
   15602:	f87d                	bnez	s0,155f8 <_reclaim_reent+0x28>
   15604:	7cac                	ld	a1,120(s1)
   15606:	0921                	addi	s2,s2,8
   15608:	ff3914e3          	bne	s2,s3,155f0 <_reclaim_reent+0x20>
   1560c:	8526                	mv	a0,s1
   1560e:	b07ff0ef          	jal	ra,15114 <_free_r>
   15612:	70ac                	ld	a1,96(s1)
   15614:	c581                	beqz	a1,1561c <_reclaim_reent+0x4c>
   15616:	8526                	mv	a0,s1
   15618:	afdff0ef          	jal	ra,15114 <_free_r>
   1561c:	1f84b403          	ld	s0,504(s1)
   15620:	cc01                	beqz	s0,15638 <_reclaim_reent+0x68>
   15622:	20048913          	addi	s2,s1,512
   15626:	01240963          	beq	s0,s2,15638 <_reclaim_reent+0x68>
   1562a:	85a2                	mv	a1,s0
   1562c:	6000                	ld	s0,0(s0)
   1562e:	8526                	mv	a0,s1
   15630:	ae5ff0ef          	jal	ra,15114 <_free_r>
   15634:	fe891be3          	bne	s2,s0,1562a <_reclaim_reent+0x5a>
   15638:	64cc                	ld	a1,136(s1)
   1563a:	c581                	beqz	a1,15642 <_reclaim_reent+0x72>
   1563c:	8526                	mv	a0,s1
   1563e:	ad7ff0ef          	jal	ra,15114 <_free_r>
   15642:	48bc                	lw	a5,80(s1)
   15644:	c795                	beqz	a5,15670 <_reclaim_reent+0xa0>
   15646:	6cbc                	ld	a5,88(s1)
   15648:	8526                	mv	a0,s1
   1564a:	9782                	jalr	a5
   1564c:	5204b403          	ld	s0,1312(s1)
   15650:	c005                	beqz	s0,15670 <_reclaim_reent+0xa0>
   15652:	600c                	ld	a1,0(s0)
   15654:	c581                	beqz	a1,1565c <_reclaim_reent+0x8c>
   15656:	8526                	mv	a0,s1
   15658:	f17ff0ef          	jal	ra,1556e <cleanup_glue>
   1565c:	85a2                	mv	a1,s0
   1565e:	7402                	ld	s0,32(sp)
   15660:	70a2                	ld	ra,40(sp)
   15662:	6942                	ld	s2,16(sp)
   15664:	69a2                	ld	s3,8(sp)
   15666:	8526                	mv	a0,s1
   15668:	64e2                	ld	s1,24(sp)
   1566a:	6145                	addi	sp,sp,48
   1566c:	aa9ff06f          	j	15114 <_free_r>
   15670:	70a2                	ld	ra,40(sp)
   15672:	7402                	ld	s0,32(sp)
   15674:	64e2                	ld	s1,24(sp)
   15676:	6942                	ld	s2,16(sp)
   15678:	69a2                	ld	s3,8(sp)
   1567a:	6145                	addi	sp,sp,48
   1567c:	8082                	ret
   1567e:	8082                	ret

0000000000015680 <_fstat_r>:
   15680:	1101                	addi	sp,sp,-32
   15682:	872e                	mv	a4,a1
   15684:	e822                	sd	s0,16(sp)
   15686:	e426                	sd	s1,8(sp)
   15688:	842a                	mv	s0,a0
   1568a:	85b2                	mv	a1,a2
   1568c:	853a                	mv	a0,a4
   1568e:	ec06                	sd	ra,24(sp)
   15690:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   15694:	0aa000ef          	jal	ra,1573e <_fstat>
   15698:	57fd                	li	a5,-1
   1569a:	00f50763          	beq	a0,a5,156a8 <_fstat_r+0x28>
   1569e:	60e2                	ld	ra,24(sp)
   156a0:	6442                	ld	s0,16(sp)
   156a2:	64a2                	ld	s1,8(sp)
   156a4:	6105                	addi	sp,sp,32
   156a6:	8082                	ret
   156a8:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   156ac:	dbed                	beqz	a5,1569e <_fstat_r+0x1e>
   156ae:	60e2                	ld	ra,24(sp)
   156b0:	c01c                	sw	a5,0(s0)
   156b2:	6442                	ld	s0,16(sp)
   156b4:	64a2                	ld	s1,8(sp)
   156b6:	6105                	addi	sp,sp,32
   156b8:	8082                	ret

00000000000156ba <_isatty_r>:
   156ba:	1101                	addi	sp,sp,-32
   156bc:	e822                	sd	s0,16(sp)
   156be:	e426                	sd	s1,8(sp)
   156c0:	842a                	mv	s0,a0
   156c2:	852e                	mv	a0,a1
   156c4:	ec06                	sd	ra,24(sp)
   156c6:	7801a823          	sw	zero,1936(gp) # 190c0 <errno>
   156ca:	0b4000ef          	jal	ra,1577e <_isatty>
   156ce:	57fd                	li	a5,-1
   156d0:	00f50763          	beq	a0,a5,156de <_isatty_r+0x24>
   156d4:	60e2                	ld	ra,24(sp)
   156d6:	6442                	ld	s0,16(sp)
   156d8:	64a2                	ld	s1,8(sp)
   156da:	6105                	addi	sp,sp,32
   156dc:	8082                	ret
   156de:	7901a783          	lw	a5,1936(gp) # 190c0 <errno>
   156e2:	dbed                	beqz	a5,156d4 <_isatty_r+0x1a>
   156e4:	60e2                	ld	ra,24(sp)
   156e6:	c01c                	sw	a5,0(s0)
   156e8:	6442                	ld	s0,16(sp)
   156ea:	64a2                	ld	s1,8(sp)
   156ec:	6105                	addi	sp,sp,32
   156ee:	8082                	ret

00000000000156f0 <_close>:
   156f0:	1141                	addi	sp,sp,-16
   156f2:	e406                	sd	ra,8(sp)
   156f4:	e022                	sd	s0,0(sp)
   156f6:	03900893          	li	a7,57
   156fa:	00000073          	ecall
   156fe:	842a                	mv	s0,a0
   15700:	00054763          	bltz	a0,1570e <_close+0x1e>
   15704:	2501                	sext.w	a0,a0
   15706:	60a2                	ld	ra,8(sp)
   15708:	6402                	ld	s0,0(sp)
   1570a:	0141                	addi	sp,sp,16
   1570c:	8082                	ret
   1570e:	1c8000ef          	jal	ra,158d6 <__errno>
   15712:	4080043b          	negw	s0,s0
   15716:	c100                	sw	s0,0(a0)
   15718:	557d                	li	a0,-1
   1571a:	b7f5                	j	15706 <_close+0x16>

000000000001571c <_exit>:
   1571c:	05d00893          	li	a7,93
   15720:	00000073          	ecall
   15724:	00054363          	bltz	a0,1572a <_exit+0xe>
   15728:	a001                	j	15728 <_exit+0xc>
   1572a:	1141                	addi	sp,sp,-16
   1572c:	e022                	sd	s0,0(sp)
   1572e:	842a                	mv	s0,a0
   15730:	e406                	sd	ra,8(sp)
   15732:	4080043b          	negw	s0,s0
   15736:	1a0000ef          	jal	ra,158d6 <__errno>
   1573a:	c100                	sw	s0,0(a0)
   1573c:	a001                	j	1573c <_exit+0x20>

000000000001573e <_fstat>:
   1573e:	7135                	addi	sp,sp,-160
   15740:	e526                	sd	s1,136(sp)
   15742:	ed06                	sd	ra,152(sp)
   15744:	84ae                	mv	s1,a1
   15746:	e922                	sd	s0,144(sp)
   15748:	05000893          	li	a7,80
   1574c:	858a                	mv	a1,sp
   1574e:	00000073          	ecall
   15752:	842a                	mv	s0,a0
   15754:	00054e63          	bltz	a0,15770 <_fstat+0x32>
   15758:	0005041b          	sext.w	s0,a0
   1575c:	8526                	mv	a0,s1
   1575e:	858a                	mv	a1,sp
   15760:	11c000ef          	jal	ra,1587c <_conv_stat>
   15764:	60ea                	ld	ra,152(sp)
   15766:	8522                	mv	a0,s0
   15768:	644a                	ld	s0,144(sp)
   1576a:	64aa                	ld	s1,136(sp)
   1576c:	610d                	addi	sp,sp,160
   1576e:	8082                	ret
   15770:	4080043b          	negw	s0,s0
   15774:	162000ef          	jal	ra,158d6 <__errno>
   15778:	c100                	sw	s0,0(a0)
   1577a:	547d                	li	s0,-1
   1577c:	b7c5                	j	1575c <_fstat+0x1e>

000000000001577e <_isatty>:
   1577e:	7119                	addi	sp,sp,-128
   15780:	002c                	addi	a1,sp,8
   15782:	fc86                	sd	ra,120(sp)
   15784:	fbbff0ef          	jal	ra,1573e <_fstat>
   15788:	57fd                	li	a5,-1
   1578a:	00f50963          	beq	a0,a5,1579c <_isatty+0x1e>
   1578e:	4532                	lw	a0,12(sp)
   15790:	70e6                	ld	ra,120(sp)
   15792:	40d5551b          	sraiw	a0,a0,0xd
   15796:	8905                	andi	a0,a0,1
   15798:	6109                	addi	sp,sp,128
   1579a:	8082                	ret
   1579c:	70e6                	ld	ra,120(sp)
   1579e:	4501                	li	a0,0
   157a0:	6109                	addi	sp,sp,128
   157a2:	8082                	ret

00000000000157a4 <_lseek>:
   157a4:	1141                	addi	sp,sp,-16
   157a6:	e406                	sd	ra,8(sp)
   157a8:	e022                	sd	s0,0(sp)
   157aa:	03e00893          	li	a7,62
   157ae:	00000073          	ecall
   157b2:	842a                	mv	s0,a0
   157b4:	00054763          	bltz	a0,157c2 <_lseek+0x1e>
   157b8:	60a2                	ld	ra,8(sp)
   157ba:	8522                	mv	a0,s0
   157bc:	6402                	ld	s0,0(sp)
   157be:	0141                	addi	sp,sp,16
   157c0:	8082                	ret
   157c2:	4080043b          	negw	s0,s0
   157c6:	110000ef          	jal	ra,158d6 <__errno>
   157ca:	c100                	sw	s0,0(a0)
   157cc:	547d                	li	s0,-1
   157ce:	b7ed                	j	157b8 <_lseek+0x14>

00000000000157d0 <_read>:
   157d0:	1141                	addi	sp,sp,-16
   157d2:	e406                	sd	ra,8(sp)
   157d4:	e022                	sd	s0,0(sp)
   157d6:	03f00893          	li	a7,63
   157da:	00000073          	ecall
   157de:	842a                	mv	s0,a0
   157e0:	00054763          	bltz	a0,157ee <_read+0x1e>
   157e4:	60a2                	ld	ra,8(sp)
   157e6:	8522                	mv	a0,s0
   157e8:	6402                	ld	s0,0(sp)
   157ea:	0141                	addi	sp,sp,16
   157ec:	8082                	ret
   157ee:	4080043b          	negw	s0,s0
   157f2:	0e4000ef          	jal	ra,158d6 <__errno>
   157f6:	c100                	sw	s0,0(a0)
   157f8:	547d                	li	s0,-1
   157fa:	b7ed                	j	157e4 <_read+0x14>

00000000000157fc <_sbrk>:
   157fc:	7981b703          	ld	a4,1944(gp) # 190c8 <heap_end.0>
   15800:	1141                	addi	sp,sp,-16
   15802:	e406                	sd	ra,8(sp)
   15804:	87aa                	mv	a5,a0
   15806:	ef01                	bnez	a4,1581e <_sbrk+0x22>
   15808:	0d600893          	li	a7,214
   1580c:	4501                	li	a0,0
   1580e:	00000073          	ecall
   15812:	567d                	li	a2,-1
   15814:	872a                	mv	a4,a0
   15816:	02c50563          	beq	a0,a2,15840 <_sbrk+0x44>
   1581a:	78a1bc23          	sd	a0,1944(gp) # 190c8 <heap_end.0>
   1581e:	0d600893          	li	a7,214
   15822:	00e78533          	add	a0,a5,a4
   15826:	00000073          	ecall
   1582a:	7981b703          	ld	a4,1944(gp) # 190c8 <heap_end.0>
   1582e:	97ba                	add	a5,a5,a4
   15830:	00f51863          	bne	a0,a5,15840 <_sbrk+0x44>
   15834:	60a2                	ld	ra,8(sp)
   15836:	78a1bc23          	sd	a0,1944(gp) # 190c8 <heap_end.0>
   1583a:	853a                	mv	a0,a4
   1583c:	0141                	addi	sp,sp,16
   1583e:	8082                	ret
   15840:	096000ef          	jal	ra,158d6 <__errno>
   15844:	60a2                	ld	ra,8(sp)
   15846:	47b1                	li	a5,12
   15848:	c11c                	sw	a5,0(a0)
   1584a:	557d                	li	a0,-1
   1584c:	0141                	addi	sp,sp,16
   1584e:	8082                	ret

0000000000015850 <_write>:
   15850:	1141                	addi	sp,sp,-16
   15852:	e406                	sd	ra,8(sp)
   15854:	e022                	sd	s0,0(sp)
   15856:	04000893          	li	a7,64
   1585a:	00000073          	ecall
   1585e:	842a                	mv	s0,a0
   15860:	00054763          	bltz	a0,1586e <_write+0x1e>
   15864:	60a2                	ld	ra,8(sp)
   15866:	8522                	mv	a0,s0
   15868:	6402                	ld	s0,0(sp)
   1586a:	0141                	addi	sp,sp,16
   1586c:	8082                	ret
   1586e:	4080043b          	negw	s0,s0
   15872:	064000ef          	jal	ra,158d6 <__errno>
   15876:	c100                	sw	s0,0(a0)
   15878:	547d                	li	s0,-1
   1587a:	b7ed                	j	15864 <_write+0x14>

000000000001587c <_conv_stat>:
   1587c:	0005b383          	ld	t2,0(a1)
   15880:	0085b283          	ld	t0,8(a1)
   15884:	0105af83          	lw	t6,16(a1)
   15888:	0145af03          	lw	t5,20(a1)
   1588c:	0185ae83          	lw	t4,24(a1)
   15890:	01c5ae03          	lw	t3,28(a1)
   15894:	0205b303          	ld	t1,32(a1)
   15898:	0305b883          	ld	a7,48(a1)
   1589c:	0405b803          	ld	a6,64(a1)
   158a0:	5d90                	lw	a2,56(a1)
   158a2:	65b4                	ld	a3,72(a1)
   158a4:	6db8                	ld	a4,88(a1)
   158a6:	75bc                	ld	a5,104(a1)
   158a8:	00751023          	sh	t2,0(a0)
   158ac:	00551123          	sh	t0,2(a0)
   158b0:	01f52223          	sw	t6,4(a0)
   158b4:	01e51423          	sh	t5,8(a0)
   158b8:	01d51523          	sh	t4,10(a0)
   158bc:	01c51623          	sh	t3,12(a0)
   158c0:	00651723          	sh	t1,14(a0)
   158c4:	01153823          	sd	a7,16(a0)
   158c8:	05053823          	sd	a6,80(a0)
   158cc:	e530                	sd	a2,72(a0)
   158ce:	ed14                	sd	a3,24(a0)
   158d0:	f518                	sd	a4,40(a0)
   158d2:	fd1c                	sd	a5,56(a0)
   158d4:	8082                	ret

00000000000158d6 <__errno>:
   158d6:	7601b503          	ld	a0,1888(gp) # 19090 <_impure_ptr>
   158da:	8082                	ret
