
ecall:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c789                	beqz	a5,100be <register_fini+0xe>
   100b6:	6541                	lui	a0,0x10
   100b8:	76a50513          	addi	a0,a0,1898 # 1076a <__libc_fini_array>
   100bc:	a939                	j	104da <atexit>
   100be:	8082                	ret

00000000000100c0 <_start>:
   100c0:	00004197          	auipc	gp,0x4
   100c4:	e7018193          	addi	gp,gp,-400 # 13f30 <__global_pointer$>
   100c8:	77818513          	addi	a0,gp,1912 # 146a8 <__malloc_max_total_mem>
   100cc:	00004617          	auipc	a2,0x4
   100d0:	66460613          	addi	a2,a2,1636 # 14730 <__BSS_END__>
   100d4:	8e09                	sub	a2,a2,a0
   100d6:	4581                	li	a1,0
   100d8:	180000ef          	jal	ra,10258 <memset>
   100dc:	00000517          	auipc	a0,0x0
   100e0:	3fe50513          	addi	a0,a0,1022 # 104da <atexit>
   100e4:	c519                	beqz	a0,100f2 <_start+0x32>
   100e6:	00000517          	auipc	a0,0x0
   100ea:	68450513          	addi	a0,a0,1668 # 1076a <__libc_fini_array>
   100ee:	3ec000ef          	jal	ra,104da <atexit>
   100f2:	0fc000ef          	jal	ra,101ee <__libc_init_array>
   100f6:	4502                	lw	a0,0(sp)
   100f8:	002c                	addi	a1,sp,8
   100fa:	4601                	li	a2,0
   100fc:	080000ef          	jal	ra,1017c <main>
   10100:	a8c1                	j	101d0 <exit>

0000000000010102 <__do_global_dtors_aux>:
   10102:	7a01c703          	lbu	a4,1952(gp) # 146d0 <completed.1>
   10106:	e715                	bnez	a4,10132 <__do_global_dtors_aux+0x30>
   10108:	1141                	addi	sp,sp,-16
   1010a:	e022                	sd	s0,0(sp)
   1010c:	843e                	mv	s0,a5
   1010e:	e406                	sd	ra,8(sp)
   10110:	00000793          	li	a5,0
   10114:	cb81                	beqz	a5,10124 <__do_global_dtors_aux+0x22>
   10116:	654d                	lui	a0,0x13
   10118:	6f450513          	addi	a0,a0,1780 # 136f4 <__FRAME_END__>
   1011c:	00000097          	auipc	ra,0x0
   10120:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10124:	4785                	li	a5,1
   10126:	60a2                	ld	ra,8(sp)
   10128:	7af18023          	sb	a5,1952(gp) # 146d0 <completed.1>
   1012c:	6402                	ld	s0,0(sp)
   1012e:	0141                	addi	sp,sp,16
   10130:	8082                	ret
   10132:	8082                	ret

0000000000010134 <frame_dummy>:
   10134:	00000793          	li	a5,0
   10138:	cb91                	beqz	a5,1014c <frame_dummy+0x18>
   1013a:	654d                	lui	a0,0x13
   1013c:	7a818593          	addi	a1,gp,1960 # 146d8 <object.0>
   10140:	6f450513          	addi	a0,a0,1780 # 136f4 <__FRAME_END__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1014c:	8082                	ret
	...

0000000000010150 <ecall>:
   10150:	fe010113          	addi	sp,sp,-32
   10154:	00813c23          	sd	s0,24(sp)
   10158:	02010413          	addi	s0,sp,32
   1015c:	00050793          	mv	a5,a0
   10160:	feb43023          	sd	a1,-32(s0)
   10164:	fef42623          	sw	a5,-20(s0)
   10168:	00000073          	ecall
   1016c:	00000013          	nop
   10170:	01813403          	ld	s0,24(sp)
   10174:	02010113          	addi	sp,sp,32
   10178:	00008067          	ret

000000000001017c <main>:
   1017c:	ff010113          	addi	sp,sp,-16
   10180:	00113423          	sd	ra,8(sp)
   10184:	00813023          	sd	s0,0(sp)
   10188:	01010413          	addi	s0,sp,16
   1018c:	37ab77b7          	lui	a5,0x37ab7
   10190:	00279793          	slli	a5,a5,0x2
   10194:	eef78593          	addi	a1,a5,-273 # 37ab6eef <__BSS_END__+0x37aa27bf>
   10198:	00100513          	li	a0,1
   1019c:	fb5ff0ef          	jal	ra,10150 <ecall>
   101a0:	00000593          	li	a1,0
   101a4:	00a00513          	li	a0,10
   101a8:	fa9ff0ef          	jal	ra,10150 <ecall>
   101ac:	000127b7          	lui	a5,0x12
   101b0:	6d878513          	addi	a0,a5,1752 # 126d8 <__errno+0x6>
   101b4:	1cc000ef          	jal	ra,10380 <puts>
   101b8:	00000793          	li	a5,0
   101bc:	00078513          	mv	a0,a5
   101c0:	00813083          	ld	ra,8(sp)
   101c4:	00013403          	ld	s0,0(sp)
   101c8:	01010113          	addi	sp,sp,16
   101cc:	00008067          	ret

00000000000101d0 <exit>:
   101d0:	1141                	addi	sp,sp,-16
   101d2:	4581                	li	a1,0
   101d4:	e022                	sd	s0,0(sp)
   101d6:	e406                	sd	ra,8(sp)
   101d8:	842a                	mv	s0,a0
   101da:	23e000ef          	jal	ra,10418 <__call_exitprocs>
   101de:	7501b503          	ld	a0,1872(gp) # 14680 <_global_impure_ptr>
   101e2:	6d3c                	ld	a5,88(a0)
   101e4:	c391                	beqz	a5,101e8 <exit+0x18>
   101e6:	9782                	jalr	a5
   101e8:	8522                	mv	a0,s0
   101ea:	32e020ef          	jal	ra,12518 <_exit>

00000000000101ee <__libc_init_array>:
   101ee:	1101                	addi	sp,sp,-32
   101f0:	e822                	sd	s0,16(sp)
   101f2:	e04a                	sd	s2,0(sp)
   101f4:	644d                	lui	s0,0x13
   101f6:	694d                	lui	s2,0x13
   101f8:	6f840793          	addi	a5,s0,1784 # 136f8 <__init_array_start>
   101fc:	6f890913          	addi	s2,s2,1784 # 136f8 <__init_array_start>
   10200:	40f90933          	sub	s2,s2,a5
   10204:	ec06                	sd	ra,24(sp)
   10206:	e426                	sd	s1,8(sp)
   10208:	40395913          	srai	s2,s2,0x3
   1020c:	00090b63          	beqz	s2,10222 <__libc_init_array+0x34>
   10210:	6f840413          	addi	s0,s0,1784
   10214:	4481                	li	s1,0
   10216:	601c                	ld	a5,0(s0)
   10218:	0485                	addi	s1,s1,1
   1021a:	0421                	addi	s0,s0,8
   1021c:	9782                	jalr	a5
   1021e:	fe991ce3          	bne	s2,s1,10216 <__libc_init_array+0x28>
   10222:	644d                	lui	s0,0x13
   10224:	694d                	lui	s2,0x13
   10226:	6f840793          	addi	a5,s0,1784 # 136f8 <__init_array_start>
   1022a:	70890913          	addi	s2,s2,1800 # 13708 <__do_global_dtors_aux_fini_array_entry>
   1022e:	40f90933          	sub	s2,s2,a5
   10232:	40395913          	srai	s2,s2,0x3
   10236:	00090b63          	beqz	s2,1024c <__libc_init_array+0x5e>
   1023a:	6f840413          	addi	s0,s0,1784
   1023e:	4481                	li	s1,0
   10240:	601c                	ld	a5,0(s0)
   10242:	0485                	addi	s1,s1,1
   10244:	0421                	addi	s0,s0,8
   10246:	9782                	jalr	a5
   10248:	fe991ce3          	bne	s2,s1,10240 <__libc_init_array+0x52>
   1024c:	60e2                	ld	ra,24(sp)
   1024e:	6442                	ld	s0,16(sp)
   10250:	64a2                	ld	s1,8(sp)
   10252:	6902                	ld	s2,0(sp)
   10254:	6105                	addi	sp,sp,32
   10256:	8082                	ret

0000000000010258 <memset>:
   10258:	433d                	li	t1,15
   1025a:	872a                	mv	a4,a0
   1025c:	02c37163          	bgeu	t1,a2,1027e <memset+0x26>
   10260:	00f77793          	andi	a5,a4,15
   10264:	e3c1                	bnez	a5,102e4 <memset+0x8c>
   10266:	e1bd                	bnez	a1,102cc <memset+0x74>
   10268:	ff067693          	andi	a3,a2,-16
   1026c:	8a3d                	andi	a2,a2,15
   1026e:	96ba                	add	a3,a3,a4
   10270:	e30c                	sd	a1,0(a4)
   10272:	e70c                	sd	a1,8(a4)
   10274:	0741                	addi	a4,a4,16
   10276:	fed76de3          	bltu	a4,a3,10270 <memset+0x18>
   1027a:	e211                	bnez	a2,1027e <memset+0x26>
   1027c:	8082                	ret
   1027e:	40c306b3          	sub	a3,t1,a2
   10282:	068a                	slli	a3,a3,0x2
   10284:	00000297          	auipc	t0,0x0
   10288:	9696                	add	a3,a3,t0
   1028a:	00a68067          	jr	10(a3)
   1028e:	00b70723          	sb	a1,14(a4)
   10292:	00b706a3          	sb	a1,13(a4)
   10296:	00b70623          	sb	a1,12(a4)
   1029a:	00b705a3          	sb	a1,11(a4)
   1029e:	00b70523          	sb	a1,10(a4)
   102a2:	00b704a3          	sb	a1,9(a4)
   102a6:	00b70423          	sb	a1,8(a4)
   102aa:	00b703a3          	sb	a1,7(a4)
   102ae:	00b70323          	sb	a1,6(a4)
   102b2:	00b702a3          	sb	a1,5(a4)
   102b6:	00b70223          	sb	a1,4(a4)
   102ba:	00b701a3          	sb	a1,3(a4)
   102be:	00b70123          	sb	a1,2(a4)
   102c2:	00b700a3          	sb	a1,1(a4)
   102c6:	00b70023          	sb	a1,0(a4)
   102ca:	8082                	ret
   102cc:	0ff5f593          	zext.b	a1,a1
   102d0:	00859693          	slli	a3,a1,0x8
   102d4:	8dd5                	or	a1,a1,a3
   102d6:	01059693          	slli	a3,a1,0x10
   102da:	8dd5                	or	a1,a1,a3
   102dc:	02059693          	slli	a3,a1,0x20
   102e0:	8dd5                	or	a1,a1,a3
   102e2:	b759                	j	10268 <memset+0x10>
   102e4:	00279693          	slli	a3,a5,0x2
   102e8:	00000297          	auipc	t0,0x0
   102ec:	9696                	add	a3,a3,t0
   102ee:	8286                	mv	t0,ra
   102f0:	fa2680e7          	jalr	-94(a3)
   102f4:	8096                	mv	ra,t0
   102f6:	17c1                	addi	a5,a5,-16
   102f8:	8f1d                	sub	a4,a4,a5
   102fa:	963e                	add	a2,a2,a5
   102fc:	f8c371e3          	bgeu	t1,a2,1027e <memset+0x26>
   10300:	b79d                	j	10266 <memset+0xe>

0000000000010302 <_puts_r>:
   10302:	7159                	addi	sp,sp,-112
   10304:	f0a2                	sd	s0,96(sp)
   10306:	842a                	mv	s0,a0
   10308:	852e                	mv	a0,a1
   1030a:	eca6                	sd	s1,88(sp)
   1030c:	f486                	sd	ra,104(sp)
   1030e:	84ae                	mv	s1,a1
   10310:	078000ef          	jal	ra,10388 <strlen>
   10314:	67c9                	lui	a5,0x12
   10316:	6f078793          	addi	a5,a5,1776 # 126f0 <__errno+0x1e>
   1031a:	e0be                	sd	a5,64(sp)
   1031c:	4785                	li	a5,1
   1031e:	e4be                	sd	a5,72(sp)
   10320:	4838                	lw	a4,80(s0)
   10322:	181c                	addi	a5,sp,48
   10324:	00150693          	addi	a3,a0,1
   10328:	ec3e                	sd	a5,24(sp)
   1032a:	4789                	li	a5,2
   1032c:	f826                	sd	s1,48(sp)
   1032e:	fc2a                	sd	a0,56(sp)
   10330:	f436                	sd	a3,40(sp)
   10332:	d03e                	sw	a5,32(sp)
   10334:	680c                	ld	a1,16(s0)
   10336:	cf0d                	beqz	a4,10370 <_puts_r+0x6e>
   10338:	01059783          	lh	a5,16(a1)
   1033c:	03279713          	slli	a4,a5,0x32
   10340:	00074d63          	bltz	a4,1035a <_puts_r+0x58>
   10344:	0ac5a703          	lw	a4,172(a1)
   10348:	6689                	lui	a3,0x2
   1034a:	8fd5                	or	a5,a5,a3
   1034c:	76f9                	lui	a3,0xffffe
   1034e:	16fd                	addi	a3,a3,-1
   10350:	8f75                	and	a4,a4,a3
   10352:	00f59823          	sh	a5,16(a1)
   10356:	0ae5a623          	sw	a4,172(a1)
   1035a:	0830                	addi	a2,sp,24
   1035c:	8522                	mv	a0,s0
   1035e:	440000ef          	jal	ra,1079e <__sfvwrite_r>
   10362:	ed09                	bnez	a0,1037c <_puts_r+0x7a>
   10364:	4529                	li	a0,10
   10366:	70a6                	ld	ra,104(sp)
   10368:	7406                	ld	s0,96(sp)
   1036a:	64e6                	ld	s1,88(sp)
   1036c:	6165                	addi	sp,sp,112
   1036e:	8082                	ret
   10370:	8522                	mv	a0,s0
   10372:	e42e                	sd	a1,8(sp)
   10374:	3ce000ef          	jal	ra,10742 <__sinit>
   10378:	65a2                	ld	a1,8(sp)
   1037a:	bf7d                	j	10338 <_puts_r+0x36>
   1037c:	557d                	li	a0,-1
   1037e:	b7e5                	j	10366 <_puts_r+0x64>

0000000000010380 <puts>:
   10380:	85aa                	mv	a1,a0
   10382:	7601b503          	ld	a0,1888(gp) # 14690 <_impure_ptr>
   10386:	bfb5                	j	10302 <_puts_r>

0000000000010388 <strlen>:
   10388:	00757793          	andi	a5,a0,7
   1038c:	872a                	mv	a4,a0
   1038e:	eba9                	bnez	a5,103e0 <strlen+0x58>
   10390:	7381b683          	ld	a3,1848(gp) # 14668 <__SDATA_BEGIN__>
   10394:	55fd                	li	a1,-1
   10396:	6310                	ld	a2,0(a4)
   10398:	0721                	addi	a4,a4,8
   1039a:	00d677b3          	and	a5,a2,a3
   1039e:	97b6                	add	a5,a5,a3
   103a0:	8fd1                	or	a5,a5,a2
   103a2:	8fd5                	or	a5,a5,a3
   103a4:	feb789e3          	beq	a5,a1,10396 <strlen+0xe>
   103a8:	ff874683          	lbu	a3,-8(a4)
   103ac:	40a707b3          	sub	a5,a4,a0
   103b0:	c6a9                	beqz	a3,103fa <strlen+0x72>
   103b2:	ff974683          	lbu	a3,-7(a4)
   103b6:	ce9d                	beqz	a3,103f4 <strlen+0x6c>
   103b8:	ffa74683          	lbu	a3,-6(a4)
   103bc:	c6a9                	beqz	a3,10406 <strlen+0x7e>
   103be:	ffb74683          	lbu	a3,-5(a4)
   103c2:	ce9d                	beqz	a3,10400 <strlen+0x78>
   103c4:	ffc74683          	lbu	a3,-4(a4)
   103c8:	ffd74603          	lbu	a2,-3(a4)
   103cc:	ffe74503          	lbu	a0,-2(a4)
   103d0:	ce95                	beqz	a3,1040c <strlen+0x84>
   103d2:	c221                	beqz	a2,10412 <strlen+0x8a>
   103d4:	00a03533          	snez	a0,a0
   103d8:	953e                	add	a0,a0,a5
   103da:	1579                	addi	a0,a0,-2
   103dc:	8082                	ret
   103de:	dacd                	beqz	a3,10390 <strlen+0x8>
   103e0:	00074783          	lbu	a5,0(a4)
   103e4:	0705                	addi	a4,a4,1
   103e6:	00777693          	andi	a3,a4,7
   103ea:	fbf5                	bnez	a5,103de <strlen+0x56>
   103ec:	8f09                	sub	a4,a4,a0
   103ee:	fff70513          	addi	a0,a4,-1
   103f2:	8082                	ret
   103f4:	ff978513          	addi	a0,a5,-7
   103f8:	8082                	ret
   103fa:	ff878513          	addi	a0,a5,-8
   103fe:	8082                	ret
   10400:	ffb78513          	addi	a0,a5,-5
   10404:	8082                	ret
   10406:	ffa78513          	addi	a0,a5,-6
   1040a:	8082                	ret
   1040c:	ffc78513          	addi	a0,a5,-4
   10410:	8082                	ret
   10412:	ffd78513          	addi	a0,a5,-3
   10416:	8082                	ret

0000000000010418 <__call_exitprocs>:
   10418:	715d                	addi	sp,sp,-80
   1041a:	f052                	sd	s4,32(sp)
   1041c:	7501ba03          	ld	s4,1872(gp) # 14680 <_global_impure_ptr>
   10420:	f84a                	sd	s2,48(sp)
   10422:	e486                	sd	ra,72(sp)
   10424:	1f8a3903          	ld	s2,504(s4)
   10428:	e0a2                	sd	s0,64(sp)
   1042a:	fc26                	sd	s1,56(sp)
   1042c:	f44e                	sd	s3,40(sp)
   1042e:	ec56                	sd	s5,24(sp)
   10430:	e85a                	sd	s6,16(sp)
   10432:	e45e                	sd	s7,8(sp)
   10434:	e062                	sd	s8,0(sp)
   10436:	02090863          	beqz	s2,10466 <__call_exitprocs+0x4e>
   1043a:	8b2a                	mv	s6,a0
   1043c:	8bae                	mv	s7,a1
   1043e:	4a85                	li	s5,1
   10440:	59fd                	li	s3,-1
   10442:	00892483          	lw	s1,8(s2)
   10446:	fff4841b          	addiw	s0,s1,-1
   1044a:	00044e63          	bltz	s0,10466 <__call_exitprocs+0x4e>
   1044e:	048e                	slli	s1,s1,0x3
   10450:	94ca                	add	s1,s1,s2
   10452:	020b8663          	beqz	s7,1047e <__call_exitprocs+0x66>
   10456:	2084b783          	ld	a5,520(s1)
   1045a:	03778263          	beq	a5,s7,1047e <__call_exitprocs+0x66>
   1045e:	347d                	addiw	s0,s0,-1
   10460:	14e1                	addi	s1,s1,-8
   10462:	ff3418e3          	bne	s0,s3,10452 <__call_exitprocs+0x3a>
   10466:	60a6                	ld	ra,72(sp)
   10468:	6406                	ld	s0,64(sp)
   1046a:	74e2                	ld	s1,56(sp)
   1046c:	7942                	ld	s2,48(sp)
   1046e:	79a2                	ld	s3,40(sp)
   10470:	7a02                	ld	s4,32(sp)
   10472:	6ae2                	ld	s5,24(sp)
   10474:	6b42                	ld	s6,16(sp)
   10476:	6ba2                	ld	s7,8(sp)
   10478:	6c02                	ld	s8,0(sp)
   1047a:	6161                	addi	sp,sp,80
   1047c:	8082                	ret
   1047e:	00892783          	lw	a5,8(s2)
   10482:	6498                	ld	a4,8(s1)
   10484:	37fd                	addiw	a5,a5,-1
   10486:	04878463          	beq	a5,s0,104ce <__call_exitprocs+0xb6>
   1048a:	0004b423          	sd	zero,8(s1)
   1048e:	db61                	beqz	a4,1045e <__call_exitprocs+0x46>
   10490:	31092783          	lw	a5,784(s2)
   10494:	008a96bb          	sllw	a3,s5,s0
   10498:	00892c03          	lw	s8,8(s2)
   1049c:	8ff5                	and	a5,a5,a3
   1049e:	2781                	sext.w	a5,a5
   104a0:	ef89                	bnez	a5,104ba <__call_exitprocs+0xa2>
   104a2:	9702                	jalr	a4
   104a4:	00892703          	lw	a4,8(s2)
   104a8:	1f8a3783          	ld	a5,504(s4)
   104ac:	01871463          	bne	a4,s8,104b4 <__call_exitprocs+0x9c>
   104b0:	fb2787e3          	beq	a5,s2,1045e <__call_exitprocs+0x46>
   104b4:	dbcd                	beqz	a5,10466 <__call_exitprocs+0x4e>
   104b6:	893e                	mv	s2,a5
   104b8:	b769                	j	10442 <__call_exitprocs+0x2a>
   104ba:	31492783          	lw	a5,788(s2)
   104be:	1084b583          	ld	a1,264(s1)
   104c2:	8ff5                	and	a5,a5,a3
   104c4:	2781                	sext.w	a5,a5
   104c6:	e799                	bnez	a5,104d4 <__call_exitprocs+0xbc>
   104c8:	855a                	mv	a0,s6
   104ca:	9702                	jalr	a4
   104cc:	bfe1                	j	104a4 <__call_exitprocs+0x8c>
   104ce:	00892423          	sw	s0,8(s2)
   104d2:	bf75                	j	1048e <__call_exitprocs+0x76>
   104d4:	852e                	mv	a0,a1
   104d6:	9702                	jalr	a4
   104d8:	b7f1                	j	104a4 <__call_exitprocs+0x8c>

00000000000104da <atexit>:
   104da:	85aa                	mv	a1,a0
   104dc:	4681                	li	a3,0
   104de:	4601                	li	a2,0
   104e0:	4501                	li	a0,0
   104e2:	5a20106f          	j	11a84 <__register_exitproc>

00000000000104e6 <__fp_lock>:
   104e6:	4501                	li	a0,0
   104e8:	8082                	ret

00000000000104ea <_cleanup_r>:
   104ea:	65c9                	lui	a1,0x12
   104ec:	bb058593          	addi	a1,a1,-1104 # 11bb0 <_fclose_r>
   104f0:	ada9                	j	10b4a <_fwalk_reent>

00000000000104f2 <__fp_unlock>:
   104f2:	4501                	li	a0,0
   104f4:	8082                	ret

00000000000104f6 <__sinit.part.0>:
   104f6:	7139                	addi	sp,sp,-64
   104f8:	67c1                	lui	a5,0x10
   104fa:	fc06                	sd	ra,56(sp)
   104fc:	f822                	sd	s0,48(sp)
   104fe:	f426                	sd	s1,40(sp)
   10500:	f04a                	sd	s2,32(sp)
   10502:	ec4e                	sd	s3,24(sp)
   10504:	e852                	sd	s4,16(sp)
   10506:	e456                	sd	s5,8(sp)
   10508:	e05a                	sd	s6,0(sp)
   1050a:	6500                	ld	s0,8(a0)
   1050c:	4ea78793          	addi	a5,a5,1258 # 104ea <_cleanup_r>
   10510:	ed3c                	sd	a5,88(a0)
   10512:	53850713          	addi	a4,a0,1336
   10516:	478d                	li	a5,3
   10518:	52e53823          	sd	a4,1328(a0)
   1051c:	52f52423          	sw	a5,1320(a0)
   10520:	52053023          	sd	zero,1312(a0)
   10524:	4791                	li	a5,4
   10526:	892a                	mv	s2,a0
   10528:	c81c                	sw	a5,16(s0)
   1052a:	4621                	li	a2,8
   1052c:	4581                	li	a1,0
   1052e:	0a042623          	sw	zero,172(s0)
   10532:	00043023          	sd	zero,0(s0)
   10536:	00043423          	sd	zero,8(s0)
   1053a:	00043c23          	sd	zero,24(s0)
   1053e:	02042023          	sw	zero,32(s0)
   10542:	02042423          	sw	zero,40(s0)
   10546:	0a440513          	addi	a0,s0,164
   1054a:	d0fff0ef          	jal	ra,10258 <memset>
   1054e:	6b49                	lui	s6,0x12
   10550:	01093483          	ld	s1,16(s2)
   10554:	6ac9                	lui	s5,0x12
   10556:	6a49                	lui	s4,0x12
   10558:	69c9                	lui	s3,0x12
   1055a:	87ab0b13          	addi	s6,s6,-1926 # 1187a <__sread>
   1055e:	8b6a8a93          	addi	s5,s5,-1866 # 118b6 <__swrite>
   10562:	908a0a13          	addi	s4,s4,-1784 # 11908 <__sseek>
   10566:	94a98993          	addi	s3,s3,-1718 # 1194a <__sclose>
   1056a:	67c1                	lui	a5,0x10
   1056c:	03643c23          	sd	s6,56(s0)
   10570:	05543023          	sd	s5,64(s0)
   10574:	05443423          	sd	s4,72(s0)
   10578:	05343823          	sd	s3,80(s0)
   1057c:	f800                	sd	s0,48(s0)
   1057e:	07a5                	addi	a5,a5,9
   10580:	c89c                	sw	a5,16(s1)
   10582:	4621                	li	a2,8
   10584:	4581                	li	a1,0
   10586:	0a04a623          	sw	zero,172(s1)
   1058a:	0004b023          	sd	zero,0(s1)
   1058e:	0004b423          	sd	zero,8(s1)
   10592:	0004bc23          	sd	zero,24(s1)
   10596:	0204a023          	sw	zero,32(s1)
   1059a:	0204a423          	sw	zero,40(s1)
   1059e:	0a448513          	addi	a0,s1,164
   105a2:	cb7ff0ef          	jal	ra,10258 <memset>
   105a6:	01893403          	ld	s0,24(s2)
   105aa:	000207b7          	lui	a5,0x20
   105ae:	0364bc23          	sd	s6,56(s1)
   105b2:	0554b023          	sd	s5,64(s1)
   105b6:	0544b423          	sd	s4,72(s1)
   105ba:	0534b823          	sd	s3,80(s1)
   105be:	f884                	sd	s1,48(s1)
   105c0:	07c9                	addi	a5,a5,18
   105c2:	c81c                	sw	a5,16(s0)
   105c4:	0a042623          	sw	zero,172(s0)
   105c8:	00043023          	sd	zero,0(s0)
   105cc:	00043423          	sd	zero,8(s0)
   105d0:	00043c23          	sd	zero,24(s0)
   105d4:	02042023          	sw	zero,32(s0)
   105d8:	02042423          	sw	zero,40(s0)
   105dc:	0a440513          	addi	a0,s0,164
   105e0:	4621                	li	a2,8
   105e2:	4581                	li	a1,0
   105e4:	c75ff0ef          	jal	ra,10258 <memset>
   105e8:	70e2                	ld	ra,56(sp)
   105ea:	03643c23          	sd	s6,56(s0)
   105ee:	05543023          	sd	s5,64(s0)
   105f2:	05443423          	sd	s4,72(s0)
   105f6:	05343823          	sd	s3,80(s0)
   105fa:	f800                	sd	s0,48(s0)
   105fc:	7442                	ld	s0,48(sp)
   105fe:	4785                	li	a5,1
   10600:	04f92823          	sw	a5,80(s2)
   10604:	74a2                	ld	s1,40(sp)
   10606:	7902                	ld	s2,32(sp)
   10608:	69e2                	ld	s3,24(sp)
   1060a:	6a42                	ld	s4,16(sp)
   1060c:	6aa2                	ld	s5,8(sp)
   1060e:	6b02                	ld	s6,0(sp)
   10610:	6121                	addi	sp,sp,64
   10612:	8082                	ret

0000000000010614 <__sfmoreglue>:
   10614:	1101                	addi	sp,sp,-32
   10616:	e426                	sd	s1,8(sp)
   10618:	0b000613          	li	a2,176
   1061c:	fff5849b          	addiw	s1,a1,-1
   10620:	02c484b3          	mul	s1,s1,a2
   10624:	e04a                	sd	s2,0(sp)
   10626:	892e                	mv	s2,a1
   10628:	e822                	sd	s0,16(sp)
   1062a:	ec06                	sd	ra,24(sp)
   1062c:	0c848593          	addi	a1,s1,200
   10630:	5a4000ef          	jal	ra,10bd4 <_malloc_r>
   10634:	842a                	mv	s0,a0
   10636:	cd01                	beqz	a0,1064e <__sfmoreglue+0x3a>
   10638:	0561                	addi	a0,a0,24
   1063a:	00043023          	sd	zero,0(s0)
   1063e:	01242423          	sw	s2,8(s0)
   10642:	e808                	sd	a0,16(s0)
   10644:	0b048613          	addi	a2,s1,176
   10648:	4581                	li	a1,0
   1064a:	c0fff0ef          	jal	ra,10258 <memset>
   1064e:	60e2                	ld	ra,24(sp)
   10650:	8522                	mv	a0,s0
   10652:	6442                	ld	s0,16(sp)
   10654:	64a2                	ld	s1,8(sp)
   10656:	6902                	ld	s2,0(sp)
   10658:	6105                	addi	sp,sp,32
   1065a:	8082                	ret

000000000001065c <__sfp>:
   1065c:	7179                	addi	sp,sp,-48
   1065e:	ec26                	sd	s1,24(sp)
   10660:	7501b483          	ld	s1,1872(gp) # 14680 <_global_impure_ptr>
   10664:	e84a                	sd	s2,16(sp)
   10666:	f406                	sd	ra,40(sp)
   10668:	48bc                	lw	a5,80(s1)
   1066a:	f022                	sd	s0,32(sp)
   1066c:	e44e                	sd	s3,8(sp)
   1066e:	e052                	sd	s4,0(sp)
   10670:	892a                	mv	s2,a0
   10672:	c3d9                	beqz	a5,106f8 <__sfp+0x9c>
   10674:	52048493          	addi	s1,s1,1312
   10678:	0b000993          	li	s3,176
   1067c:	4a11                	li	s4,4
   1067e:	449c                	lw	a5,8(s1)
   10680:	6880                	ld	s0,16(s1)
   10682:	06f05763          	blez	a5,106f0 <__sfp+0x94>
   10686:	37fd                	addiw	a5,a5,-1
   10688:	1782                	slli	a5,a5,0x20
   1068a:	9381                	srli	a5,a5,0x20
   1068c:	0785                	addi	a5,a5,1
   1068e:	033787b3          	mul	a5,a5,s3
   10692:	97a2                	add	a5,a5,s0
   10694:	a029                	j	1069e <__sfp+0x42>
   10696:	0b040413          	addi	s0,s0,176
   1069a:	04f40b63          	beq	s0,a5,106f0 <__sfp+0x94>
   1069e:	01041703          	lh	a4,16(s0)
   106a2:	fb75                	bnez	a4,10696 <__sfp+0x3a>
   106a4:	77c1                	lui	a5,0xffff0
   106a6:	0785                	addi	a5,a5,1
   106a8:	0a042623          	sw	zero,172(s0)
   106ac:	00043023          	sd	zero,0(s0)
   106b0:	00043423          	sd	zero,8(s0)
   106b4:	c81c                	sw	a5,16(s0)
   106b6:	00043c23          	sd	zero,24(s0)
   106ba:	02042023          	sw	zero,32(s0)
   106be:	02042423          	sw	zero,40(s0)
   106c2:	4621                	li	a2,8
   106c4:	4581                	li	a1,0
   106c6:	0a440513          	addi	a0,s0,164
   106ca:	b8fff0ef          	jal	ra,10258 <memset>
   106ce:	04043c23          	sd	zero,88(s0)
   106d2:	06042023          	sw	zero,96(s0)
   106d6:	06043c23          	sd	zero,120(s0)
   106da:	08042023          	sw	zero,128(s0)
   106de:	70a2                	ld	ra,40(sp)
   106e0:	8522                	mv	a0,s0
   106e2:	7402                	ld	s0,32(sp)
   106e4:	64e2                	ld	s1,24(sp)
   106e6:	6942                	ld	s2,16(sp)
   106e8:	69a2                	ld	s3,8(sp)
   106ea:	6a02                	ld	s4,0(sp)
   106ec:	6145                	addi	sp,sp,48
   106ee:	8082                	ret
   106f0:	6080                	ld	s0,0(s1)
   106f2:	c419                	beqz	s0,10700 <__sfp+0xa4>
   106f4:	84a2                	mv	s1,s0
   106f6:	b761                	j	1067e <__sfp+0x22>
   106f8:	8526                	mv	a0,s1
   106fa:	dfdff0ef          	jal	ra,104f6 <__sinit.part.0>
   106fe:	bf9d                	j	10674 <__sfp+0x18>
   10700:	2d800593          	li	a1,728
   10704:	854a                	mv	a0,s2
   10706:	4ce000ef          	jal	ra,10bd4 <_malloc_r>
   1070a:	842a                	mv	s0,a0
   1070c:	cd19                	beqz	a0,1072a <__sfp+0xce>
   1070e:	0561                	addi	a0,a0,24
   10710:	00043023          	sd	zero,0(s0)
   10714:	01442423          	sw	s4,8(s0)
   10718:	e808                	sd	a0,16(s0)
   1071a:	2c000613          	li	a2,704
   1071e:	4581                	li	a1,0
   10720:	b39ff0ef          	jal	ra,10258 <memset>
   10724:	e080                	sd	s0,0(s1)
   10726:	84a2                	mv	s1,s0
   10728:	bf99                	j	1067e <__sfp+0x22>
   1072a:	0004b023          	sd	zero,0(s1)
   1072e:	47b1                	li	a5,12
   10730:	00f92023          	sw	a5,0(s2)
   10734:	b76d                	j	106de <__sfp+0x82>

0000000000010736 <_cleanup>:
   10736:	7501b503          	ld	a0,1872(gp) # 14680 <_global_impure_ptr>
   1073a:	65c9                	lui	a1,0x12
   1073c:	bb058593          	addi	a1,a1,-1104 # 11bb0 <_fclose_r>
   10740:	a129                	j	10b4a <_fwalk_reent>

0000000000010742 <__sinit>:
   10742:	493c                	lw	a5,80(a0)
   10744:	c391                	beqz	a5,10748 <__sinit+0x6>
   10746:	8082                	ret
   10748:	b37d                	j	104f6 <__sinit.part.0>

000000000001074a <__sfp_lock_acquire>:
   1074a:	8082                	ret

000000000001074c <__sfp_lock_release>:
   1074c:	8082                	ret

000000000001074e <__sinit_lock_acquire>:
   1074e:	8082                	ret

0000000000010750 <__sinit_lock_release>:
   10750:	8082                	ret

0000000000010752 <__fp_lock_all>:
   10752:	7601b503          	ld	a0,1888(gp) # 14690 <_impure_ptr>
   10756:	65c1                	lui	a1,0x10
   10758:	4e658593          	addi	a1,a1,1254 # 104e6 <__fp_lock>
   1075c:	a6b5                	j	10ac8 <_fwalk>

000000000001075e <__fp_unlock_all>:
   1075e:	7601b503          	ld	a0,1888(gp) # 14690 <_impure_ptr>
   10762:	65c1                	lui	a1,0x10
   10764:	4f258593          	addi	a1,a1,1266 # 104f2 <__fp_unlock>
   10768:	a685                	j	10ac8 <_fwalk>

000000000001076a <__libc_fini_array>:
   1076a:	1101                	addi	sp,sp,-32
   1076c:	e822                	sd	s0,16(sp)
   1076e:	67cd                	lui	a5,0x13
   10770:	644d                	lui	s0,0x13
   10772:	70840413          	addi	s0,s0,1800 # 13708 <__do_global_dtors_aux_fini_array_entry>
   10776:	71078793          	addi	a5,a5,1808 # 13710 <impure_data>
   1077a:	8f81                	sub	a5,a5,s0
   1077c:	e426                	sd	s1,8(sp)
   1077e:	ec06                	sd	ra,24(sp)
   10780:	4037d493          	srai	s1,a5,0x3
   10784:	c881                	beqz	s1,10794 <__libc_fini_array+0x2a>
   10786:	17e1                	addi	a5,a5,-8
   10788:	943e                	add	s0,s0,a5
   1078a:	601c                	ld	a5,0(s0)
   1078c:	14fd                	addi	s1,s1,-1
   1078e:	1461                	addi	s0,s0,-8
   10790:	9782                	jalr	a5
   10792:	fce5                	bnez	s1,1078a <__libc_fini_array+0x20>
   10794:	60e2                	ld	ra,24(sp)
   10796:	6442                	ld	s0,16(sp)
   10798:	64a2                	ld	s1,8(sp)
   1079a:	6105                	addi	sp,sp,32
   1079c:	8082                	ret

000000000001079e <__sfvwrite_r>:
   1079e:	6a1c                	ld	a5,16(a2)
   107a0:	1a078c63          	beqz	a5,10958 <__sfvwrite_r+0x1ba>
   107a4:	0105d783          	lhu	a5,16(a1)
   107a8:	711d                	addi	sp,sp,-96
   107aa:	e8a2                	sd	s0,80(sp)
   107ac:	f852                	sd	s4,48(sp)
   107ae:	f456                	sd	s5,40(sp)
   107b0:	ec86                	sd	ra,88(sp)
   107b2:	e4a6                	sd	s1,72(sp)
   107b4:	e0ca                	sd	s2,64(sp)
   107b6:	fc4e                	sd	s3,56(sp)
   107b8:	f05a                	sd	s6,32(sp)
   107ba:	ec5e                	sd	s7,24(sp)
   107bc:	e862                	sd	s8,16(sp)
   107be:	e466                	sd	s9,8(sp)
   107c0:	e06a                	sd	s10,0(sp)
   107c2:	0087f713          	andi	a4,a5,8
   107c6:	8a32                	mv	s4,a2
   107c8:	8aaa                	mv	s5,a0
   107ca:	842e                	mv	s0,a1
   107cc:	c325                	beqz	a4,1082c <__sfvwrite_r+0x8e>
   107ce:	6d98                	ld	a4,24(a1)
   107d0:	cf31                	beqz	a4,1082c <__sfvwrite_r+0x8e>
   107d2:	0027f713          	andi	a4,a5,2
   107d6:	000a3903          	ld	s2,0(s4)
   107da:	c735                	beqz	a4,10846 <__sfvwrite_r+0xa8>
   107dc:	603c                	ld	a5,64(s0)
   107de:	780c                	ld	a1,48(s0)
   107e0:	80000b37          	lui	s6,0x80000
   107e4:	4981                	li	s3,0
   107e6:	4481                	li	s1,0
   107e8:	c00b4b13          	xori	s6,s6,-1024
   107ec:	864e                	mv	a2,s3
   107ee:	8556                	mv	a0,s5
   107f0:	c885                	beqz	s1,10820 <__sfvwrite_r+0x82>
   107f2:	86a6                	mv	a3,s1
   107f4:	009b7363          	bgeu	s6,s1,107fa <__sfvwrite_r+0x5c>
   107f8:	86da                	mv	a3,s6
   107fa:	2681                	sext.w	a3,a3
   107fc:	9782                	jalr	a5
   107fe:	14a05563          	blez	a0,10948 <__sfvwrite_r+0x1aa>
   10802:	010a3783          	ld	a5,16(s4)
   10806:	99aa                	add	s3,s3,a0
   10808:	8c89                	sub	s1,s1,a0
   1080a:	40a78533          	sub	a0,a5,a0
   1080e:	00aa3823          	sd	a0,16(s4)
   10812:	10050763          	beqz	a0,10920 <__sfvwrite_r+0x182>
   10816:	603c                	ld	a5,64(s0)
   10818:	780c                	ld	a1,48(s0)
   1081a:	864e                	mv	a2,s3
   1081c:	8556                	mv	a0,s5
   1081e:	f8f1                	bnez	s1,107f2 <__sfvwrite_r+0x54>
   10820:	00093983          	ld	s3,0(s2)
   10824:	00893483          	ld	s1,8(s2)
   10828:	0941                	addi	s2,s2,16
   1082a:	b7c9                	j	107ec <__sfvwrite_r+0x4e>
   1082c:	85a2                	mv	a1,s0
   1082e:	8556                	mv	a0,s5
   10830:	15c010ef          	jal	ra,1198c <__swsetup_r>
   10834:	28051863          	bnez	a0,10ac4 <__sfvwrite_r+0x326>
   10838:	01045783          	lhu	a5,16(s0)
   1083c:	000a3903          	ld	s2,0(s4)
   10840:	0027f713          	andi	a4,a5,2
   10844:	ff41                	bnez	a4,107dc <__sfvwrite_r+0x3e>
   10846:	0017f713          	andi	a4,a5,1
   1084a:	eb35                	bnez	a4,108be <__sfvwrite_r+0x120>
   1084c:	4444                	lw	s1,12(s0)
   1084e:	6008                	ld	a0,0(s0)
   10850:	80000b37          	lui	s6,0x80000
   10854:	ffeb4b93          	xori	s7,s6,-2
   10858:	4c01                	li	s8,0
   1085a:	4981                	li	s3,0
   1085c:	fffb4b13          	not	s6,s6
   10860:	8ca6                	mv	s9,s1
   10862:	04098863          	beqz	s3,108b2 <__sfvwrite_r+0x114>
   10866:	2007f713          	andi	a4,a5,512
   1086a:	12070a63          	beqz	a4,1099e <__sfvwrite_r+0x200>
   1086e:	8d26                	mv	s10,s1
   10870:	1899f763          	bgeu	s3,s1,109fe <__sfvwrite_r+0x260>
   10874:	8cce                	mv	s9,s3
   10876:	8d4e                	mv	s10,s3
   10878:	866a                	mv	a2,s10
   1087a:	85e2                	mv	a1,s8
   1087c:	2e9000ef          	jal	ra,11364 <memmove>
   10880:	4458                	lw	a4,12(s0)
   10882:	601c                	ld	a5,0(s0)
   10884:	84ce                	mv	s1,s3
   10886:	41970cbb          	subw	s9,a4,s9
   1088a:	97ea                	add	a5,a5,s10
   1088c:	01942623          	sw	s9,12(s0)
   10890:	e01c                	sd	a5,0(s0)
   10892:	4981                	li	s3,0
   10894:	010a3603          	ld	a2,16(s4)
   10898:	9c26                	add	s8,s8,s1
   1089a:	409604b3          	sub	s1,a2,s1
   1089e:	009a3823          	sd	s1,16(s4)
   108a2:	ccbd                	beqz	s1,10920 <__sfvwrite_r+0x182>
   108a4:	4444                	lw	s1,12(s0)
   108a6:	6008                	ld	a0,0(s0)
   108a8:	01045783          	lhu	a5,16(s0)
   108ac:	8ca6                	mv	s9,s1
   108ae:	fa099ce3          	bnez	s3,10866 <__sfvwrite_r+0xc8>
   108b2:	00093c03          	ld	s8,0(s2)
   108b6:	00893983          	ld	s3,8(s2)
   108ba:	0941                	addi	s2,s2,16
   108bc:	b755                	j	10860 <__sfvwrite_r+0xc2>
   108be:	4981                	li	s3,0
   108c0:	4501                	li	a0,0
   108c2:	4c81                	li	s9,0
   108c4:	4c01                	li	s8,0
   108c6:	080c0b63          	beqz	s8,1095c <__sfvwrite_r+0x1be>
   108ca:	c145                	beqz	a0,1096a <__sfvwrite_r+0x1cc>
   108cc:	8bce                	mv	s7,s3
   108ce:	013c7363          	bgeu	s8,s3,108d4 <__sfvwrite_r+0x136>
   108d2:	8be2                	mv	s7,s8
   108d4:	6008                	ld	a0,0(s0)
   108d6:	6c1c                	ld	a5,24(s0)
   108d8:	5014                	lw	a3,32(s0)
   108da:	84de                	mv	s1,s7
   108dc:	00a7f763          	bgeu	a5,a0,108ea <__sfvwrite_r+0x14c>
   108e0:	445c                	lw	a5,12(s0)
   108e2:	00d78b3b          	addw	s6,a5,a3
   108e6:	097b4d63          	blt	s6,s7,10980 <__sfvwrite_r+0x1e2>
   108ea:	18dbc463          	blt	s7,a3,10a72 <__sfvwrite_r+0x2d4>
   108ee:	603c                	ld	a5,64(s0)
   108f0:	780c                	ld	a1,48(s0)
   108f2:	8666                	mv	a2,s9
   108f4:	8556                	mv	a0,s5
   108f6:	9782                	jalr	a5
   108f8:	84aa                	mv	s1,a0
   108fa:	04a05763          	blez	a0,10948 <__sfvwrite_r+0x1aa>
   108fe:	0005079b          	sext.w	a5,a0
   10902:	40f989bb          	subw	s3,s3,a5
   10906:	4505                	li	a0,1
   10908:	02098b63          	beqz	s3,1093e <__sfvwrite_r+0x1a0>
   1090c:	010a3783          	ld	a5,16(s4)
   10910:	9ca6                	add	s9,s9,s1
   10912:	409c0c33          	sub	s8,s8,s1
   10916:	409784b3          	sub	s1,a5,s1
   1091a:	009a3823          	sd	s1,16(s4)
   1091e:	f4c5                	bnez	s1,108c6 <__sfvwrite_r+0x128>
   10920:	4501                	li	a0,0
   10922:	60e6                	ld	ra,88(sp)
   10924:	6446                	ld	s0,80(sp)
   10926:	64a6                	ld	s1,72(sp)
   10928:	6906                	ld	s2,64(sp)
   1092a:	79e2                	ld	s3,56(sp)
   1092c:	7a42                	ld	s4,48(sp)
   1092e:	7aa2                	ld	s5,40(sp)
   10930:	7b02                	ld	s6,32(sp)
   10932:	6be2                	ld	s7,24(sp)
   10934:	6c42                	ld	s8,16(sp)
   10936:	6ca2                	ld	s9,8(sp)
   10938:	6d02                	ld	s10,0(sp)
   1093a:	6125                	addi	sp,sp,96
   1093c:	8082                	ret
   1093e:	85a2                	mv	a1,s0
   10940:	8556                	mv	a0,s5
   10942:	480010ef          	jal	ra,11dc2 <_fflush_r>
   10946:	d179                	beqz	a0,1090c <__sfvwrite_r+0x16e>
   10948:	01041783          	lh	a5,16(s0)
   1094c:	0407e793          	ori	a5,a5,64
   10950:	00f41823          	sh	a5,16(s0)
   10954:	557d                	li	a0,-1
   10956:	b7f1                	j	10922 <__sfvwrite_r+0x184>
   10958:	4501                	li	a0,0
   1095a:	8082                	ret
   1095c:	00893c03          	ld	s8,8(s2)
   10960:	00093c83          	ld	s9,0(s2)
   10964:	0941                	addi	s2,s2,16
   10966:	fe0c0be3          	beqz	s8,1095c <__sfvwrite_r+0x1be>
   1096a:	8662                	mv	a2,s8
   1096c:	45a9                	li	a1,10
   1096e:	8566                	mv	a0,s9
   10970:	07f000ef          	jal	ra,111ee <memchr>
   10974:	12050f63          	beqz	a0,10ab2 <__sfvwrite_r+0x314>
   10978:	0505                	addi	a0,a0,1
   1097a:	419509bb          	subw	s3,a0,s9
   1097e:	b7b9                	j	108cc <__sfvwrite_r+0x12e>
   10980:	85e6                	mv	a1,s9
   10982:	865a                	mv	a2,s6
   10984:	1e1000ef          	jal	ra,11364 <memmove>
   10988:	601c                	ld	a5,0(s0)
   1098a:	85a2                	mv	a1,s0
   1098c:	8556                	mv	a0,s5
   1098e:	97da                	add	a5,a5,s6
   10990:	e01c                	sd	a5,0(s0)
   10992:	430010ef          	jal	ra,11dc2 <_fflush_r>
   10996:	f94d                	bnez	a0,10948 <__sfvwrite_r+0x1aa>
   10998:	87da                	mv	a5,s6
   1099a:	84da                	mv	s1,s6
   1099c:	b79d                	j	10902 <__sfvwrite_r+0x164>
   1099e:	6c1c                	ld	a5,24(s0)
   109a0:	02a7e863          	bltu	a5,a0,109d0 <__sfvwrite_r+0x232>
   109a4:	501c                	lw	a5,32(s0)
   109a6:	02f9e563          	bltu	s3,a5,109d0 <__sfvwrite_r+0x232>
   109aa:	86ce                	mv	a3,s3
   109ac:	013bf363          	bgeu	s7,s3,109b2 <__sfvwrite_r+0x214>
   109b0:	86da                	mv	a3,s6
   109b2:	02f6c6bb          	divw	a3,a3,a5
   109b6:	6038                	ld	a4,64(s0)
   109b8:	780c                	ld	a1,48(s0)
   109ba:	8662                	mv	a2,s8
   109bc:	8556                	mv	a0,s5
   109be:	02f686bb          	mulw	a3,a3,a5
   109c2:	9702                	jalr	a4
   109c4:	84aa                	mv	s1,a0
   109c6:	f8a051e3          	blez	a0,10948 <__sfvwrite_r+0x1aa>
   109ca:	409989b3          	sub	s3,s3,s1
   109ce:	b5d9                	j	10894 <__sfvwrite_r+0xf6>
   109d0:	0099f363          	bgeu	s3,s1,109d6 <__sfvwrite_r+0x238>
   109d4:	84ce                	mv	s1,s3
   109d6:	8626                	mv	a2,s1
   109d8:	85e2                	mv	a1,s8
   109da:	18b000ef          	jal	ra,11364 <memmove>
   109de:	445c                	lw	a5,12(s0)
   109e0:	6018                	ld	a4,0(s0)
   109e2:	409786bb          	subw	a3,a5,s1
   109e6:	9726                	add	a4,a4,s1
   109e8:	c454                	sw	a3,12(s0)
   109ea:	e018                	sd	a4,0(s0)
   109ec:	fef9                	bnez	a3,109ca <__sfvwrite_r+0x22c>
   109ee:	85a2                	mv	a1,s0
   109f0:	8556                	mv	a0,s5
   109f2:	3d0010ef          	jal	ra,11dc2 <_fflush_r>
   109f6:	f929                	bnez	a0,10948 <__sfvwrite_r+0x1aa>
   109f8:	409989b3          	sub	s3,s3,s1
   109fc:	bd61                	j	10894 <__sfvwrite_r+0xf6>
   109fe:	4807f713          	andi	a4,a5,1152
   10a02:	e6070be3          	beqz	a4,10878 <__sfvwrite_r+0xda>
   10a06:	5004                	lw	s1,32(s0)
   10a08:	6c0c                	ld	a1,24(s0)
   10a0a:	00198713          	addi	a4,s3,1
   10a0e:	0014969b          	slliw	a3,s1,0x1
   10a12:	9ea5                	addw	a3,a3,s1
   10a14:	8d0d                	sub	a0,a0,a1
   10a16:	01f6d49b          	srliw	s1,a3,0x1f
   10a1a:	00050d1b          	sext.w	s10,a0
   10a1e:	9cb5                	addw	s1,s1,a3
   10a20:	4014d49b          	sraiw	s1,s1,0x1
   10a24:	976a                	add	a4,a4,s10
   10a26:	00e4f563          	bgeu	s1,a4,10a30 <__sfvwrite_r+0x292>
   10a2a:	0019849b          	addiw	s1,s3,1
   10a2e:	9ca9                	addw	s1,s1,a0
   10a30:	4007f793          	andi	a5,a5,1024
   10a34:	cfa9                	beqz	a5,10a8e <__sfvwrite_r+0x2f0>
   10a36:	85a6                	mv	a1,s1
   10a38:	8556                	mv	a0,s5
   10a3a:	19a000ef          	jal	ra,10bd4 <_malloc_r>
   10a3e:	8caa                	mv	s9,a0
   10a40:	cd25                	beqz	a0,10ab8 <__sfvwrite_r+0x31a>
   10a42:	6c0c                	ld	a1,24(s0)
   10a44:	866a                	mv	a2,s10
   10a46:	037000ef          	jal	ra,1127c <memcpy>
   10a4a:	01045783          	lhu	a5,16(s0)
   10a4e:	b7f7f793          	andi	a5,a5,-1153
   10a52:	0807e793          	ori	a5,a5,128
   10a56:	00f41823          	sh	a5,16(s0)
   10a5a:	01ac8533          	add	a0,s9,s10
   10a5e:	41a487bb          	subw	a5,s1,s10
   10a62:	01943c23          	sd	s9,24(s0)
   10a66:	e008                	sd	a0,0(s0)
   10a68:	d004                	sw	s1,32(s0)
   10a6a:	8cce                	mv	s9,s3
   10a6c:	c45c                	sw	a5,12(s0)
   10a6e:	8d4e                	mv	s10,s3
   10a70:	b521                	j	10878 <__sfvwrite_r+0xda>
   10a72:	865e                	mv	a2,s7
   10a74:	85e6                	mv	a1,s9
   10a76:	0ef000ef          	jal	ra,11364 <memmove>
   10a7a:	4454                	lw	a3,12(s0)
   10a7c:	6018                	ld	a4,0(s0)
   10a7e:	000b879b          	sext.w	a5,s7
   10a82:	417686bb          	subw	a3,a3,s7
   10a86:	975e                	add	a4,a4,s7
   10a88:	c454                	sw	a3,12(s0)
   10a8a:	e018                	sd	a4,0(s0)
   10a8c:	bd9d                	j	10902 <__sfvwrite_r+0x164>
   10a8e:	8626                	mv	a2,s1
   10a90:	8556                	mv	a0,s5
   10a92:	1ad000ef          	jal	ra,1143e <_realloc_r>
   10a96:	8caa                	mv	s9,a0
   10a98:	f169                	bnez	a0,10a5a <__sfvwrite_r+0x2bc>
   10a9a:	6c0c                	ld	a1,24(s0)
   10a9c:	8556                	mv	a0,s5
   10a9e:	476010ef          	jal	ra,11f14 <_free_r>
   10aa2:	01041783          	lh	a5,16(s0)
   10aa6:	4731                	li	a4,12
   10aa8:	00eaa023          	sw	a4,0(s5)
   10aac:	f7f7f793          	andi	a5,a5,-129
   10ab0:	bd71                	j	1094c <__sfvwrite_r+0x1ae>
   10ab2:	001c099b          	addiw	s3,s8,1
   10ab6:	bd19                	j	108cc <__sfvwrite_r+0x12e>
   10ab8:	4731                	li	a4,12
   10aba:	01041783          	lh	a5,16(s0)
   10abe:	00eaa023          	sw	a4,0(s5)
   10ac2:	b569                	j	1094c <__sfvwrite_r+0x1ae>
   10ac4:	557d                	li	a0,-1
   10ac6:	bdb1                	j	10922 <__sfvwrite_r+0x184>

0000000000010ac8 <_fwalk>:
   10ac8:	715d                	addi	sp,sp,-80
   10aca:	f84a                	sd	s2,48(sp)
   10acc:	f44e                	sd	s3,40(sp)
   10ace:	f052                	sd	s4,32(sp)
   10ad0:	ec56                	sd	s5,24(sp)
   10ad2:	e85a                	sd	s6,16(sp)
   10ad4:	e45e                	sd	s7,8(sp)
   10ad6:	e486                	sd	ra,72(sp)
   10ad8:	e0a2                	sd	s0,64(sp)
   10ada:	fc26                	sd	s1,56(sp)
   10adc:	8a2e                	mv	s4,a1
   10ade:	52050913          	addi	s2,a0,1312
   10ae2:	4b01                	li	s6,0
   10ae4:	0b000a93          	li	s5,176
   10ae8:	4b85                	li	s7,1
   10aea:	59fd                	li	s3,-1
   10aec:	00892783          	lw	a5,8(s2)
   10af0:	01093403          	ld	s0,16(s2)
   10af4:	02f05b63          	blez	a5,10b2a <_fwalk+0x62>
   10af8:	fff7849b          	addiw	s1,a5,-1
   10afc:	1482                	slli	s1,s1,0x20
   10afe:	9081                	srli	s1,s1,0x20
   10b00:	0485                	addi	s1,s1,1
   10b02:	035484b3          	mul	s1,s1,s5
   10b06:	94a2                	add	s1,s1,s0
   10b08:	01045783          	lhu	a5,16(s0)
   10b0c:	00fbfb63          	bgeu	s7,a5,10b22 <_fwalk+0x5a>
   10b10:	01241783          	lh	a5,18(s0)
   10b14:	8522                	mv	a0,s0
   10b16:	01378663          	beq	a5,s3,10b22 <_fwalk+0x5a>
   10b1a:	9a02                	jalr	s4
   10b1c:	01656b33          	or	s6,a0,s6
   10b20:	2b01                	sext.w	s6,s6
   10b22:	0b040413          	addi	s0,s0,176
   10b26:	fe8491e3          	bne	s1,s0,10b08 <_fwalk+0x40>
   10b2a:	00093903          	ld	s2,0(s2)
   10b2e:	fa091fe3          	bnez	s2,10aec <_fwalk+0x24>
   10b32:	60a6                	ld	ra,72(sp)
   10b34:	6406                	ld	s0,64(sp)
   10b36:	74e2                	ld	s1,56(sp)
   10b38:	7942                	ld	s2,48(sp)
   10b3a:	79a2                	ld	s3,40(sp)
   10b3c:	7a02                	ld	s4,32(sp)
   10b3e:	6ae2                	ld	s5,24(sp)
   10b40:	6ba2                	ld	s7,8(sp)
   10b42:	855a                	mv	a0,s6
   10b44:	6b42                	ld	s6,16(sp)
   10b46:	6161                	addi	sp,sp,80
   10b48:	8082                	ret

0000000000010b4a <_fwalk_reent>:
   10b4a:	715d                	addi	sp,sp,-80
   10b4c:	f84a                	sd	s2,48(sp)
   10b4e:	f44e                	sd	s3,40(sp)
   10b50:	f052                	sd	s4,32(sp)
   10b52:	ec56                	sd	s5,24(sp)
   10b54:	e85a                	sd	s6,16(sp)
   10b56:	e45e                	sd	s7,8(sp)
   10b58:	e062                	sd	s8,0(sp)
   10b5a:	e486                	sd	ra,72(sp)
   10b5c:	e0a2                	sd	s0,64(sp)
   10b5e:	fc26                	sd	s1,56(sp)
   10b60:	8c2a                	mv	s8,a0
   10b62:	8a2e                	mv	s4,a1
   10b64:	52050913          	addi	s2,a0,1312
   10b68:	4b01                	li	s6,0
   10b6a:	0b000a93          	li	s5,176
   10b6e:	4b85                	li	s7,1
   10b70:	59fd                	li	s3,-1
   10b72:	00892783          	lw	a5,8(s2)
   10b76:	01093403          	ld	s0,16(s2)
   10b7a:	02f05c63          	blez	a5,10bb2 <_fwalk_reent+0x68>
   10b7e:	fff7849b          	addiw	s1,a5,-1
   10b82:	1482                	slli	s1,s1,0x20
   10b84:	9081                	srli	s1,s1,0x20
   10b86:	0485                	addi	s1,s1,1
   10b88:	035484b3          	mul	s1,s1,s5
   10b8c:	94a2                	add	s1,s1,s0
   10b8e:	01045783          	lhu	a5,16(s0)
   10b92:	00fbfc63          	bgeu	s7,a5,10baa <_fwalk_reent+0x60>
   10b96:	01241783          	lh	a5,18(s0)
   10b9a:	85a2                	mv	a1,s0
   10b9c:	8562                	mv	a0,s8
   10b9e:	01378663          	beq	a5,s3,10baa <_fwalk_reent+0x60>
   10ba2:	9a02                	jalr	s4
   10ba4:	01656b33          	or	s6,a0,s6
   10ba8:	2b01                	sext.w	s6,s6
   10baa:	0b040413          	addi	s0,s0,176
   10bae:	fe8490e3          	bne	s1,s0,10b8e <_fwalk_reent+0x44>
   10bb2:	00093903          	ld	s2,0(s2)
   10bb6:	fa091ee3          	bnez	s2,10b72 <_fwalk_reent+0x28>
   10bba:	60a6                	ld	ra,72(sp)
   10bbc:	6406                	ld	s0,64(sp)
   10bbe:	74e2                	ld	s1,56(sp)
   10bc0:	7942                	ld	s2,48(sp)
   10bc2:	79a2                	ld	s3,40(sp)
   10bc4:	7a02                	ld	s4,32(sp)
   10bc6:	6ae2                	ld	s5,24(sp)
   10bc8:	6ba2                	ld	s7,8(sp)
   10bca:	6c02                	ld	s8,0(sp)
   10bcc:	855a                	mv	a0,s6
   10bce:	6b42                	ld	s6,16(sp)
   10bd0:	6161                	addi	sp,sp,80
   10bd2:	8082                	ret

0000000000010bd4 <_malloc_r>:
   10bd4:	711d                	addi	sp,sp,-96
   10bd6:	e4a6                	sd	s1,72(sp)
   10bd8:	e0ca                	sd	s2,64(sp)
   10bda:	ec86                	sd	ra,88(sp)
   10bdc:	e8a2                	sd	s0,80(sp)
   10bde:	fc4e                	sd	s3,56(sp)
   10be0:	f852                	sd	s4,48(sp)
   10be2:	f456                	sd	s5,40(sp)
   10be4:	f05a                	sd	s6,32(sp)
   10be6:	ec5e                	sd	s7,24(sp)
   10be8:	e862                	sd	s8,16(sp)
   10bea:	e466                	sd	s9,8(sp)
   10bec:	01758493          	addi	s1,a1,23
   10bf0:	02e00793          	li	a5,46
   10bf4:	892a                	mv	s2,a0
   10bf6:	0497e763          	bltu	a5,s1,10c44 <_malloc_r+0x70>
   10bfa:	02000793          	li	a5,32
   10bfe:	1eb7e163          	bltu	a5,a1,10de0 <_malloc_r+0x20c>
   10c02:	039000ef          	jal	ra,1143a <__malloc_lock>
   10c06:	02000493          	li	s1,32
   10c0a:	05000793          	li	a5,80
   10c0e:	4611                	li	a2,4
   10c10:	69d1                	lui	s3,0x14
   10c12:	e5898993          	addi	s3,s3,-424 # 13e58 <__malloc_av_>
   10c16:	97ce                	add	a5,a5,s3
   10c18:	6780                	ld	s0,8(a5)
   10c1a:	ff078713          	addi	a4,a5,-16
   10c1e:	1ee40263          	beq	s0,a4,10e02 <_malloc_r+0x22e>
   10c22:	641c                	ld	a5,8(s0)
   10c24:	6c14                	ld	a3,24(s0)
   10c26:	6810                	ld	a2,16(s0)
   10c28:	9bf1                	andi	a5,a5,-4
   10c2a:	97a2                	add	a5,a5,s0
   10c2c:	6798                	ld	a4,8(a5)
   10c2e:	ee14                	sd	a3,24(a2)
   10c30:	ea90                	sd	a2,16(a3)
   10c32:	00176713          	ori	a4,a4,1
   10c36:	854a                	mv	a0,s2
   10c38:	e798                	sd	a4,8(a5)
   10c3a:	003000ef          	jal	ra,1143c <__malloc_unlock>
   10c3e:	01040513          	addi	a0,s0,16
   10c42:	a25d                	j	10de8 <_malloc_r+0x214>
   10c44:	800007b7          	lui	a5,0x80000
   10c48:	98c1                	andi	s1,s1,-16
   10c4a:	fff7c793          	not	a5,a5
   10c4e:	1897e963          	bltu	a5,s1,10de0 <_malloc_r+0x20c>
   10c52:	18b4e763          	bltu	s1,a1,10de0 <_malloc_r+0x20c>
   10c56:	7e4000ef          	jal	ra,1143a <__malloc_lock>
   10c5a:	1f700793          	li	a5,503
   10c5e:	3a97f063          	bgeu	a5,s1,10ffe <_malloc_r+0x42a>
   10c62:	0094d793          	srli	a5,s1,0x9
   10c66:	26078c63          	beqz	a5,10ede <_malloc_r+0x30a>
   10c6a:	4711                	li	a4,4
   10c6c:	30f76063          	bltu	a4,a5,10f6c <_malloc_r+0x398>
   10c70:	0064d793          	srli	a5,s1,0x6
   10c74:	0397861b          	addiw	a2,a5,57
   10c78:	0016169b          	slliw	a3,a2,0x1
   10c7c:	0387851b          	addiw	a0,a5,56
   10c80:	068e                	slli	a3,a3,0x3
   10c82:	69d1                	lui	s3,0x14
   10c84:	e5898993          	addi	s3,s3,-424 # 13e58 <__malloc_av_>
   10c88:	96ce                	add	a3,a3,s3
   10c8a:	6680                	ld	s0,8(a3)
   10c8c:	16c1                	addi	a3,a3,-16
   10c8e:	16868e63          	beq	a3,s0,10e0a <_malloc_r+0x236>
   10c92:	45fd                	li	a1,31
   10c94:	a031                	j	10ca0 <_malloc_r+0xcc>
   10c96:	28075563          	bgez	a4,10f20 <_malloc_r+0x34c>
   10c9a:	6c00                	ld	s0,24(s0)
   10c9c:	16868763          	beq	a3,s0,10e0a <_malloc_r+0x236>
   10ca0:	641c                	ld	a5,8(s0)
   10ca2:	9bf1                	andi	a5,a5,-4
   10ca4:	40978733          	sub	a4,a5,s1
   10ca8:	fee5d7e3          	bge	a1,a4,10c96 <_malloc_r+0xc2>
   10cac:	0209b403          	ld	s0,32(s3)
   10cb0:	6851                	lui	a6,0x14
   10cb2:	e6880813          	addi	a6,a6,-408 # 13e68 <__malloc_av_+0x10>
   10cb6:	862a                	mv	a2,a0
   10cb8:	17041063          	bne	s0,a6,10e18 <_malloc_r+0x244>
   10cbc:	0089b783          	ld	a5,8(s3)
   10cc0:	4026571b          	sraiw	a4,a2,0x2
   10cc4:	4585                	li	a1,1
   10cc6:	00e595b3          	sll	a1,a1,a4
   10cca:	1ab7f763          	bgeu	a5,a1,10e78 <_malloc_r+0x2a4>
   10cce:	0109b403          	ld	s0,16(s3)
   10cd2:	00843a03          	ld	s4,8(s0)
   10cd6:	ffca7a93          	andi	s5,s4,-4
   10cda:	009ae763          	bltu	s5,s1,10ce8 <_malloc_r+0x114>
   10cde:	409a87b3          	sub	a5,s5,s1
   10ce2:	477d                	li	a4,31
   10ce4:	20f74f63          	blt	a4,a5,10f02 <_malloc_r+0x32e>
   10ce8:	7881ba03          	ld	s4,1928(gp) # 146b8 <__malloc_top_pad>
   10cec:	7681b703          	ld	a4,1896(gp) # 14698 <__malloc_sbrk_base>
   10cf0:	57fd                	li	a5,-1
   10cf2:	01540c33          	add	s8,s0,s5
   10cf6:	9a26                	add	s4,s4,s1
   10cf8:	3af70163          	beq	a4,a5,1109a <_malloc_r+0x4c6>
   10cfc:	6785                	lui	a5,0x1
   10cfe:	07fd                	addi	a5,a5,31
   10d00:	9a3e                	add	s4,s4,a5
   10d02:	77fd                	lui	a5,0xfffff
   10d04:	00fa7a33          	and	s4,s4,a5
   10d08:	85d2                	mv	a1,s4
   10d0a:	854a                	mv	a0,s2
   10d0c:	339000ef          	jal	ra,11844 <_sbrk_r>
   10d10:	57fd                	li	a5,-1
   10d12:	8b2a                	mv	s6,a0
   10d14:	30f50a63          	beq	a0,a5,11028 <_malloc_r+0x454>
   10d18:	31856663          	bltu	a0,s8,11024 <_malloc_r+0x450>
   10d1c:	7d818b93          	addi	s7,gp,2008 # 14708 <__malloc_current_mallinfo>
   10d20:	000ba703          	lw	a4,0(s7)
   10d24:	014707bb          	addw	a5,a4,s4
   10d28:	00fba023          	sw	a5,0(s7)
   10d2c:	86be                	mv	a3,a5
   10d2e:	3eac0f63          	beq	s8,a0,1112c <_malloc_r+0x558>
   10d32:	7681b703          	ld	a4,1896(gp) # 14698 <__malloc_sbrk_base>
   10d36:	57fd                	li	a5,-1
   10d38:	40f70663          	beq	a4,a5,11144 <_malloc_r+0x570>
   10d3c:	418b07b3          	sub	a5,s6,s8
   10d40:	9fb5                	addw	a5,a5,a3
   10d42:	00fba023          	sw	a5,0(s7)
   10d46:	00fb7c13          	andi	s8,s6,15
   10d4a:	360c0663          	beqz	s8,110b6 <_malloc_r+0x4e2>
   10d4e:	6705                	lui	a4,0x1
   10d50:	418b0b33          	sub	s6,s6,s8
   10d54:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   10d58:	0b41                	addi	s6,s6,16
   10d5a:	418787b3          	sub	a5,a5,s8
   10d5e:	014b0cb3          	add	s9,s6,s4
   10d62:	41978a33          	sub	s4,a5,s9
   10d66:	177d                	addi	a4,a4,-1
   10d68:	00ea7a33          	and	s4,s4,a4
   10d6c:	85d2                	mv	a1,s4
   10d6e:	854a                	mv	a0,s2
   10d70:	2d5000ef          	jal	ra,11844 <_sbrk_r>
   10d74:	57fd                	li	a5,-1
   10d76:	40f50c63          	beq	a0,a5,1118e <_malloc_r+0x5ba>
   10d7a:	41650533          	sub	a0,a0,s6
   10d7e:	000a071b          	sext.w	a4,s4
   10d82:	9a2a                	add	s4,s4,a0
   10d84:	000ba783          	lw	a5,0(s7)
   10d88:	0169b823          	sd	s6,16(s3)
   10d8c:	001a6a13          	ori	s4,s4,1
   10d90:	9fb9                	addw	a5,a5,a4
   10d92:	00fba023          	sw	a5,0(s7)
   10d96:	014b3423          	sd	s4,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffeb8d8>
   10d9a:	3b340863          	beq	s0,s3,1114a <_malloc_r+0x576>
   10d9e:	467d                	li	a2,31
   10da0:	3b567763          	bgeu	a2,s5,1114e <_malloc_r+0x57a>
   10da4:	6414                	ld	a3,8(s0)
   10da6:	fe8a8713          	addi	a4,s5,-24
   10daa:	9b41                	andi	a4,a4,-16
   10dac:	8a85                	andi	a3,a3,1
   10dae:	8ed9                	or	a3,a3,a4
   10db0:	e414                	sd	a3,8(s0)
   10db2:	45a5                	li	a1,9
   10db4:	00e406b3          	add	a3,s0,a4
   10db8:	e68c                	sd	a1,8(a3)
   10dba:	ea8c                	sd	a1,16(a3)
   10dbc:	3ee66063          	bltu	a2,a4,1119c <_malloc_r+0x5c8>
   10dc0:	008b3a03          	ld	s4,8(s6)
   10dc4:	845a                	mv	s0,s6
   10dc6:	7801b683          	ld	a3,1920(gp) # 146b0 <__malloc_max_sbrked_mem>
   10dca:	00f6f463          	bgeu	a3,a5,10dd2 <_malloc_r+0x1fe>
   10dce:	78f1b023          	sd	a5,1920(gp) # 146b0 <__malloc_max_sbrked_mem>
   10dd2:	7781b683          	ld	a3,1912(gp) # 146a8 <__malloc_max_total_mem>
   10dd6:	24f6fd63          	bgeu	a3,a5,11030 <_malloc_r+0x45c>
   10dda:	76f1bc23          	sd	a5,1912(gp) # 146a8 <__malloc_max_total_mem>
   10dde:	ac89                	j	11030 <_malloc_r+0x45c>
   10de0:	47b1                	li	a5,12
   10de2:	00f92023          	sw	a5,0(s2)
   10de6:	4501                	li	a0,0
   10de8:	60e6                	ld	ra,88(sp)
   10dea:	6446                	ld	s0,80(sp)
   10dec:	64a6                	ld	s1,72(sp)
   10dee:	6906                	ld	s2,64(sp)
   10df0:	79e2                	ld	s3,56(sp)
   10df2:	7a42                	ld	s4,48(sp)
   10df4:	7aa2                	ld	s5,40(sp)
   10df6:	7b02                	ld	s6,32(sp)
   10df8:	6be2                	ld	s7,24(sp)
   10dfa:	6c42                	ld	s8,16(sp)
   10dfc:	6ca2                	ld	s9,8(sp)
   10dfe:	6125                	addi	sp,sp,96
   10e00:	8082                	ret
   10e02:	6f80                	ld	s0,24(a5)
   10e04:	2609                	addiw	a2,a2,2
   10e06:	e0879ee3          	bne	a5,s0,10c22 <_malloc_r+0x4e>
   10e0a:	0209b403          	ld	s0,32(s3)
   10e0e:	6851                	lui	a6,0x14
   10e10:	e6880813          	addi	a6,a6,-408 # 13e68 <__malloc_av_+0x10>
   10e14:	eb0404e3          	beq	s0,a6,10cbc <_malloc_r+0xe8>
   10e18:	641c                	ld	a5,8(s0)
   10e1a:	46fd                	li	a3,31
   10e1c:	9bf1                	andi	a5,a5,-4
   10e1e:	40978733          	sub	a4,a5,s1
   10e22:	1ae6c763          	blt	a3,a4,10fd0 <_malloc_r+0x3fc>
   10e26:	0309b423          	sd	a6,40(s3)
   10e2a:	0309b023          	sd	a6,32(s3)
   10e2e:	0a075f63          	bgez	a4,10eec <_malloc_r+0x318>
   10e32:	1ff00713          	li	a4,511
   10e36:	0ef76863          	bltu	a4,a5,10f26 <_malloc_r+0x352>
   10e3a:	838d                	srli	a5,a5,0x3
   10e3c:	0017871b          	addiw	a4,a5,1
   10e40:	0017171b          	slliw	a4,a4,0x1
   10e44:	070e                	slli	a4,a4,0x3
   10e46:	0089b503          	ld	a0,8(s3)
   10e4a:	974e                	add	a4,a4,s3
   10e4c:	630c                	ld	a1,0(a4)
   10e4e:	4027d69b          	sraiw	a3,a5,0x2
   10e52:	4785                	li	a5,1
   10e54:	00d797b3          	sll	a5,a5,a3
   10e58:	8fc9                	or	a5,a5,a0
   10e5a:	ff070693          	addi	a3,a4,-16
   10e5e:	ec14                	sd	a3,24(s0)
   10e60:	e80c                	sd	a1,16(s0)
   10e62:	00f9b423          	sd	a5,8(s3)
   10e66:	e300                	sd	s0,0(a4)
   10e68:	ed80                	sd	s0,24(a1)
   10e6a:	4026571b          	sraiw	a4,a2,0x2
   10e6e:	4585                	li	a1,1
   10e70:	00e595b3          	sll	a1,a1,a4
   10e74:	e4b7ede3          	bltu	a5,a1,10cce <_malloc_r+0xfa>
   10e78:	00f5f733          	and	a4,a1,a5
   10e7c:	ef01                	bnez	a4,10e94 <_malloc_r+0x2c0>
   10e7e:	0586                	slli	a1,a1,0x1
   10e80:	9a71                	andi	a2,a2,-4
   10e82:	00f5f733          	and	a4,a1,a5
   10e86:	2611                	addiw	a2,a2,4
   10e88:	e711                	bnez	a4,10e94 <_malloc_r+0x2c0>
   10e8a:	0586                	slli	a1,a1,0x1
   10e8c:	00f5f733          	and	a4,a1,a5
   10e90:	2611                	addiw	a2,a2,4
   10e92:	df65                	beqz	a4,10e8a <_malloc_r+0x2b6>
   10e94:	48fd                	li	a7,31
   10e96:	0016031b          	addiw	t1,a2,1
   10e9a:	0013131b          	slliw	t1,t1,0x1
   10e9e:	030e                	slli	t1,t1,0x3
   10ea0:	1341                	addi	t1,t1,-16
   10ea2:	934e                	add	t1,t1,s3
   10ea4:	851a                	mv	a0,t1
   10ea6:	6d1c                	ld	a5,24(a0)
   10ea8:	8e32                	mv	t3,a2
   10eaa:	0ef50263          	beq	a0,a5,10f8e <_malloc_r+0x3ba>
   10eae:	6798                	ld	a4,8(a5)
   10eb0:	843e                	mv	s0,a5
   10eb2:	6f9c                	ld	a5,24(a5)
   10eb4:	9b71                	andi	a4,a4,-4
   10eb6:	409706b3          	sub	a3,a4,s1
   10eba:	0ed8c163          	blt	a7,a3,10f9c <_malloc_r+0x3c8>
   10ebe:	fe06c6e3          	bltz	a3,10eaa <_malloc_r+0x2d6>
   10ec2:	9722                	add	a4,a4,s0
   10ec4:	6714                	ld	a3,8(a4)
   10ec6:	6810                	ld	a2,16(s0)
   10ec8:	854a                	mv	a0,s2
   10eca:	0016e693          	ori	a3,a3,1
   10ece:	e714                	sd	a3,8(a4)
   10ed0:	ee1c                	sd	a5,24(a2)
   10ed2:	eb90                	sd	a2,16(a5)
   10ed4:	568000ef          	jal	ra,1143c <__malloc_unlock>
   10ed8:	01040513          	addi	a0,s0,16
   10edc:	b731                	j	10de8 <_malloc_r+0x214>
   10ede:	40000693          	li	a3,1024
   10ee2:	04000613          	li	a2,64
   10ee6:	03f00513          	li	a0,63
   10eea:	bb61                	j	10c82 <_malloc_r+0xae>
   10eec:	97a2                	add	a5,a5,s0
   10eee:	6798                	ld	a4,8(a5)
   10ef0:	854a                	mv	a0,s2
   10ef2:	00176713          	ori	a4,a4,1
   10ef6:	e798                	sd	a4,8(a5)
   10ef8:	544000ef          	jal	ra,1143c <__malloc_unlock>
   10efc:	01040513          	addi	a0,s0,16
   10f00:	b5e5                	j	10de8 <_malloc_r+0x214>
   10f02:	0014e713          	ori	a4,s1,1
   10f06:	e418                	sd	a4,8(s0)
   10f08:	94a2                	add	s1,s1,s0
   10f0a:	0099b823          	sd	s1,16(s3)
   10f0e:	0017e793          	ori	a5,a5,1
   10f12:	854a                	mv	a0,s2
   10f14:	e49c                	sd	a5,8(s1)
   10f16:	526000ef          	jal	ra,1143c <__malloc_unlock>
   10f1a:	01040513          	addi	a0,s0,16
   10f1e:	b5e9                	j	10de8 <_malloc_r+0x214>
   10f20:	6c14                	ld	a3,24(s0)
   10f22:	6810                	ld	a2,16(s0)
   10f24:	b319                	j	10c2a <_malloc_r+0x56>
   10f26:	0097d713          	srli	a4,a5,0x9
   10f2a:	4691                	li	a3,4
   10f2c:	0ee6f263          	bgeu	a3,a4,11010 <_malloc_r+0x43c>
   10f30:	46d1                	li	a3,20
   10f32:	1ae6e863          	bltu	a3,a4,110e2 <_malloc_r+0x50e>
   10f36:	05c7059b          	addiw	a1,a4,92
   10f3a:	0015959b          	slliw	a1,a1,0x1
   10f3e:	05b7069b          	addiw	a3,a4,91
   10f42:	058e                	slli	a1,a1,0x3
   10f44:	95ce                	add	a1,a1,s3
   10f46:	6198                	ld	a4,0(a1)
   10f48:	15c1                	addi	a1,a1,-16
   10f4a:	14e58b63          	beq	a1,a4,110a0 <_malloc_r+0x4cc>
   10f4e:	6714                	ld	a3,8(a4)
   10f50:	9af1                	andi	a3,a3,-4
   10f52:	00d7f563          	bgeu	a5,a3,10f5c <_malloc_r+0x388>
   10f56:	6b18                	ld	a4,16(a4)
   10f58:	fee59be3          	bne	a1,a4,10f4e <_malloc_r+0x37a>
   10f5c:	6f0c                	ld	a1,24(a4)
   10f5e:	0089b783          	ld	a5,8(s3)
   10f62:	ec0c                	sd	a1,24(s0)
   10f64:	e818                	sd	a4,16(s0)
   10f66:	e980                	sd	s0,16(a1)
   10f68:	ef00                	sd	s0,24(a4)
   10f6a:	b701                	j	10e6a <_malloc_r+0x296>
   10f6c:	4751                	li	a4,20
   10f6e:	0cf77f63          	bgeu	a4,a5,1104c <_malloc_r+0x478>
   10f72:	05400713          	li	a4,84
   10f76:	18f76463          	bltu	a4,a5,110fe <_malloc_r+0x52a>
   10f7a:	00c4d793          	srli	a5,s1,0xc
   10f7e:	06f7861b          	addiw	a2,a5,111
   10f82:	0016169b          	slliw	a3,a2,0x1
   10f86:	06e7851b          	addiw	a0,a5,110
   10f8a:	068e                	slli	a3,a3,0x3
   10f8c:	b9dd                	j	10c82 <_malloc_r+0xae>
   10f8e:	2e05                	addiw	t3,t3,1
   10f90:	003e7793          	andi	a5,t3,3
   10f94:	0541                	addi	a0,a0,16
   10f96:	cbe1                	beqz	a5,11066 <_malloc_r+0x492>
   10f98:	6d1c                	ld	a5,24(a0)
   10f9a:	bf01                	j	10eaa <_malloc_r+0x2d6>
   10f9c:	6810                	ld	a2,16(s0)
   10f9e:	0014e593          	ori	a1,s1,1
   10fa2:	e40c                	sd	a1,8(s0)
   10fa4:	ee1c                	sd	a5,24(a2)
   10fa6:	eb90                	sd	a2,16(a5)
   10fa8:	94a2                	add	s1,s1,s0
   10faa:	0299b423          	sd	s1,40(s3)
   10fae:	0299b023          	sd	s1,32(s3)
   10fb2:	0016e793          	ori	a5,a3,1
   10fb6:	0104bc23          	sd	a6,24(s1)
   10fba:	0104b823          	sd	a6,16(s1)
   10fbe:	e49c                	sd	a5,8(s1)
   10fc0:	9722                	add	a4,a4,s0
   10fc2:	854a                	mv	a0,s2
   10fc4:	e314                	sd	a3,0(a4)
   10fc6:	476000ef          	jal	ra,1143c <__malloc_unlock>
   10fca:	01040513          	addi	a0,s0,16
   10fce:	bd29                	j	10de8 <_malloc_r+0x214>
   10fd0:	0014e693          	ori	a3,s1,1
   10fd4:	e414                	sd	a3,8(s0)
   10fd6:	94a2                	add	s1,s1,s0
   10fd8:	0299b423          	sd	s1,40(s3)
   10fdc:	0299b023          	sd	s1,32(s3)
   10fe0:	00176693          	ori	a3,a4,1
   10fe4:	0104bc23          	sd	a6,24(s1)
   10fe8:	0104b823          	sd	a6,16(s1)
   10fec:	e494                	sd	a3,8(s1)
   10fee:	97a2                	add	a5,a5,s0
   10ff0:	854a                	mv	a0,s2
   10ff2:	e398                	sd	a4,0(a5)
   10ff4:	448000ef          	jal	ra,1143c <__malloc_unlock>
   10ff8:	01040513          	addi	a0,s0,16
   10ffc:	b3f5                	j	10de8 <_malloc_r+0x214>
   10ffe:	0034d613          	srli	a2,s1,0x3
   11002:	0016079b          	addiw	a5,a2,1
   11006:	0017979b          	slliw	a5,a5,0x1
   1100a:	2601                	sext.w	a2,a2
   1100c:	078e                	slli	a5,a5,0x3
   1100e:	b109                	j	10c10 <_malloc_r+0x3c>
   11010:	0067d713          	srli	a4,a5,0x6
   11014:	0397059b          	addiw	a1,a4,57
   11018:	0015959b          	slliw	a1,a1,0x1
   1101c:	0387069b          	addiw	a3,a4,56
   11020:	058e                	slli	a1,a1,0x3
   11022:	b70d                	j	10f44 <_malloc_r+0x370>
   11024:	0f340b63          	beq	s0,s3,1111a <_malloc_r+0x546>
   11028:	0109b403          	ld	s0,16(s3)
   1102c:	00843a03          	ld	s4,8(s0)
   11030:	ffca7a13          	andi	s4,s4,-4
   11034:	409a07b3          	sub	a5,s4,s1
   11038:	009a6563          	bltu	s4,s1,11042 <_malloc_r+0x46e>
   1103c:	477d                	li	a4,31
   1103e:	ecf742e3          	blt	a4,a5,10f02 <_malloc_r+0x32e>
   11042:	854a                	mv	a0,s2
   11044:	3f8000ef          	jal	ra,1143c <__malloc_unlock>
   11048:	4501                	li	a0,0
   1104a:	bb79                	j	10de8 <_malloc_r+0x214>
   1104c:	05c7861b          	addiw	a2,a5,92
   11050:	0016169b          	slliw	a3,a2,0x1
   11054:	05b7851b          	addiw	a0,a5,91
   11058:	068e                	slli	a3,a3,0x3
   1105a:	b125                	j	10c82 <_malloc_r+0xae>
   1105c:	01033783          	ld	a5,16(t1) # 10154 <ecall+0x4>
   11060:	367d                	addiw	a2,a2,-1
   11062:	18679363          	bne	a5,t1,111e8 <_malloc_r+0x614>
   11066:	00367793          	andi	a5,a2,3
   1106a:	1341                	addi	t1,t1,-16
   1106c:	fbe5                	bnez	a5,1105c <_malloc_r+0x488>
   1106e:	0089b703          	ld	a4,8(s3)
   11072:	fff5c793          	not	a5,a1
   11076:	8ff9                	and	a5,a5,a4
   11078:	00f9b423          	sd	a5,8(s3)
   1107c:	0586                	slli	a1,a1,0x1
   1107e:	c4b7e8e3          	bltu	a5,a1,10cce <_malloc_r+0xfa>
   11082:	c40586e3          	beqz	a1,10cce <_malloc_r+0xfa>
   11086:	00f5f733          	and	a4,a1,a5
   1108a:	e711                	bnez	a4,11096 <_malloc_r+0x4c2>
   1108c:	0586                	slli	a1,a1,0x1
   1108e:	00f5f733          	and	a4,a1,a5
   11092:	2e11                	addiw	t3,t3,4
   11094:	df65                	beqz	a4,1108c <_malloc_r+0x4b8>
   11096:	8672                	mv	a2,t3
   11098:	bbfd                	j	10e96 <_malloc_r+0x2c2>
   1109a:	020a0a13          	addi	s4,s4,32
   1109e:	b1ad                	j	10d08 <_malloc_r+0x134>
   110a0:	0089b503          	ld	a0,8(s3)
   110a4:	4026d69b          	sraiw	a3,a3,0x2
   110a8:	4785                	li	a5,1
   110aa:	00d797b3          	sll	a5,a5,a3
   110ae:	8fc9                	or	a5,a5,a0
   110b0:	00f9b423          	sd	a5,8(s3)
   110b4:	b57d                	j	10f62 <_malloc_r+0x38e>
   110b6:	014b0c33          	add	s8,s6,s4
   110ba:	41800c33          	neg	s8,s8
   110be:	1c52                	slli	s8,s8,0x34
   110c0:	034c5c13          	srli	s8,s8,0x34
   110c4:	85e2                	mv	a1,s8
   110c6:	854a                	mv	a0,s2
   110c8:	77c000ef          	jal	ra,11844 <_sbrk_r>
   110cc:	57fd                	li	a5,-1
   110ce:	4701                	li	a4,0
   110d0:	caf50ae3          	beq	a0,a5,10d84 <_malloc_r+0x1b0>
   110d4:	41650533          	sub	a0,a0,s6
   110d8:	000c071b          	sext.w	a4,s8
   110dc:	01850a33          	add	s4,a0,s8
   110e0:	b155                	j	10d84 <_malloc_r+0x1b0>
   110e2:	05400693          	li	a3,84
   110e6:	06e6e863          	bltu	a3,a4,11156 <_malloc_r+0x582>
   110ea:	00c7d713          	srli	a4,a5,0xc
   110ee:	06f7059b          	addiw	a1,a4,111
   110f2:	0015959b          	slliw	a1,a1,0x1
   110f6:	06e7069b          	addiw	a3,a4,110
   110fa:	058e                	slli	a1,a1,0x3
   110fc:	b5a1                	j	10f44 <_malloc_r+0x370>
   110fe:	15400713          	li	a4,340
   11102:	06f76863          	bltu	a4,a5,11172 <_malloc_r+0x59e>
   11106:	00f4d793          	srli	a5,s1,0xf
   1110a:	0787861b          	addiw	a2,a5,120
   1110e:	0016169b          	slliw	a3,a2,0x1
   11112:	0777851b          	addiw	a0,a5,119
   11116:	068e                	slli	a3,a3,0x3
   11118:	b6ad                	j	10c82 <_malloc_r+0xae>
   1111a:	7d818b93          	addi	s7,gp,2008 # 14708 <__malloc_current_mallinfo>
   1111e:	000ba783          	lw	a5,0(s7)
   11122:	014786bb          	addw	a3,a5,s4
   11126:	00dba023          	sw	a3,0(s7)
   1112a:	b121                	j	10d32 <_malloc_r+0x15e>
   1112c:	034c1713          	slli	a4,s8,0x34
   11130:	c00711e3          	bnez	a4,10d32 <_malloc_r+0x15e>
   11134:	0109b403          	ld	s0,16(s3)
   11138:	9a56                	add	s4,s4,s5
   1113a:	001a6a13          	ori	s4,s4,1
   1113e:	01443423          	sd	s4,8(s0)
   11142:	b151                	j	10dc6 <_malloc_r+0x1f2>
   11144:	7761b423          	sd	s6,1896(gp) # 14698 <__malloc_sbrk_base>
   11148:	befd                	j	10d46 <_malloc_r+0x172>
   1114a:	845a                	mv	s0,s6
   1114c:	b9ad                	j	10dc6 <_malloc_r+0x1f2>
   1114e:	4785                	li	a5,1
   11150:	00fb3423          	sd	a5,8(s6)
   11154:	b5fd                	j	11042 <_malloc_r+0x46e>
   11156:	15400693          	li	a3,340
   1115a:	04e6ed63          	bltu	a3,a4,111b4 <_malloc_r+0x5e0>
   1115e:	00f7d713          	srli	a4,a5,0xf
   11162:	0787059b          	addiw	a1,a4,120
   11166:	0015959b          	slliw	a1,a1,0x1
   1116a:	0777069b          	addiw	a3,a4,119
   1116e:	058e                	slli	a1,a1,0x3
   11170:	bbd1                	j	10f44 <_malloc_r+0x370>
   11172:	55400713          	li	a4,1364
   11176:	04f76d63          	bltu	a4,a5,111d0 <_malloc_r+0x5fc>
   1117a:	0124d793          	srli	a5,s1,0x12
   1117e:	07d7861b          	addiw	a2,a5,125
   11182:	0016169b          	slliw	a3,a2,0x1
   11186:	07c7851b          	addiw	a0,a5,124
   1118a:	068e                	slli	a3,a3,0x3
   1118c:	bcdd                	j	10c82 <_malloc_r+0xae>
   1118e:	1c41                	addi	s8,s8,-16
   11190:	018c8a33          	add	s4,s9,s8
   11194:	416a0a33          	sub	s4,s4,s6
   11198:	4701                	li	a4,0
   1119a:	b6ed                	j	10d84 <_malloc_r+0x1b0>
   1119c:	01040593          	addi	a1,s0,16
   111a0:	854a                	mv	a0,s2
   111a2:	573000ef          	jal	ra,11f14 <_free_r>
   111a6:	0109b403          	ld	s0,16(s3)
   111aa:	000ba783          	lw	a5,0(s7)
   111ae:	00843a03          	ld	s4,8(s0)
   111b2:	b911                	j	10dc6 <_malloc_r+0x1f2>
   111b4:	55400693          	li	a3,1364
   111b8:	02e6e363          	bltu	a3,a4,111de <_malloc_r+0x60a>
   111bc:	0127d713          	srli	a4,a5,0x12
   111c0:	07d7059b          	addiw	a1,a4,125
   111c4:	0015959b          	slliw	a1,a1,0x1
   111c8:	07c7069b          	addiw	a3,a4,124
   111cc:	058e                	slli	a1,a1,0x3
   111ce:	bb9d                	j	10f44 <_malloc_r+0x370>
   111d0:	7f000693          	li	a3,2032
   111d4:	07f00613          	li	a2,127
   111d8:	07e00513          	li	a0,126
   111dc:	b45d                	j	10c82 <_malloc_r+0xae>
   111de:	7f000593          	li	a1,2032
   111e2:	07e00693          	li	a3,126
   111e6:	bbb9                	j	10f44 <_malloc_r+0x370>
   111e8:	0089b783          	ld	a5,8(s3)
   111ec:	bd41                	j	1107c <_malloc_r+0x4a8>

00000000000111ee <memchr>:
   111ee:	00757793          	andi	a5,a0,7
   111f2:	0ff5f693          	zext.b	a3,a1
   111f6:	c395                	beqz	a5,1121a <memchr+0x2c>
   111f8:	fff60793          	addi	a5,a2,-1
   111fc:	c605                	beqz	a2,11224 <memchr+0x36>
   111fe:	567d                	li	a2,-1
   11200:	a801                	j	11210 <memchr+0x22>
   11202:	0505                	addi	a0,a0,1
   11204:	00757713          	andi	a4,a0,7
   11208:	cb11                	beqz	a4,1121c <memchr+0x2e>
   1120a:	17fd                	addi	a5,a5,-1
   1120c:	00c78c63          	beq	a5,a2,11224 <memchr+0x36>
   11210:	00054703          	lbu	a4,0(a0)
   11214:	fed717e3          	bne	a4,a3,11202 <memchr+0x14>
   11218:	8082                	ret
   1121a:	87b2                	mv	a5,a2
   1121c:	471d                	li	a4,7
   1121e:	00f76f63          	bltu	a4,a5,1123c <memchr+0x4e>
   11222:	e399                	bnez	a5,11228 <memchr+0x3a>
   11224:	4501                	li	a0,0
   11226:	8082                	ret
   11228:	97aa                	add	a5,a5,a0
   1122a:	a021                	j	11232 <memchr+0x44>
   1122c:	0505                	addi	a0,a0,1
   1122e:	fea78be3          	beq	a5,a0,11224 <memchr+0x36>
   11232:	00054703          	lbu	a4,0(a0)
   11236:	fed71be3          	bne	a4,a3,1122c <memchr+0x3e>
   1123a:	8082                	ret
   1123c:	0ff5f593          	zext.b	a1,a1
   11240:	00859713          	slli	a4,a1,0x8
   11244:	8dd9                	or	a1,a1,a4
   11246:	01059713          	slli	a4,a1,0x10
   1124a:	7401b883          	ld	a7,1856(gp) # 14670 <__SDATA_BEGIN__+0x8>
   1124e:	8f4d                	or	a4,a4,a1
   11250:	7481b803          	ld	a6,1864(gp) # 14678 <__SDATA_BEGIN__+0x10>
   11254:	02071593          	slli	a1,a4,0x20
   11258:	8dd9                	or	a1,a1,a4
   1125a:	431d                	li	t1,7
   1125c:	6118                	ld	a4,0(a0)
   1125e:	8f2d                	xor	a4,a4,a1
   11260:	01170633          	add	a2,a4,a7
   11264:	fff74713          	not	a4,a4
   11268:	8f71                	and	a4,a4,a2
   1126a:	01077733          	and	a4,a4,a6
   1126e:	ff4d                	bnez	a4,11228 <memchr+0x3a>
   11270:	17e1                	addi	a5,a5,-8
   11272:	0521                	addi	a0,a0,8
   11274:	fef364e3          	bltu	t1,a5,1125c <memchr+0x6e>
   11278:	fbc5                	bnez	a5,11228 <memchr+0x3a>
   1127a:	b76d                	j	11224 <memchr+0x36>

000000000001127c <memcpy>:
   1127c:	00a5c7b3          	xor	a5,a1,a0
   11280:	8b9d                	andi	a5,a5,7
   11282:	00c508b3          	add	a7,a0,a2
   11286:	eba1                	bnez	a5,112d6 <memcpy+0x5a>
   11288:	479d                	li	a5,7
   1128a:	04c7f663          	bgeu	a5,a2,112d6 <memcpy+0x5a>
   1128e:	00757793          	andi	a5,a0,7
   11292:	872a                	mv	a4,a0
   11294:	e7cd                	bnez	a5,1133e <memcpy+0xc2>
   11296:	ff88f613          	andi	a2,a7,-8
   1129a:	40e606b3          	sub	a3,a2,a4
   1129e:	04000793          	li	a5,64
   112a2:	04000293          	li	t0,64
   112a6:	04d7c463          	blt	a5,a3,112ee <memcpy+0x72>
   112aa:	86ae                	mv	a3,a1
   112ac:	87ba                	mv	a5,a4
   112ae:	02c77163          	bgeu	a4,a2,112d0 <memcpy+0x54>
   112b2:	0006b803          	ld	a6,0(a3) # ffffffffffffe000 <__BSS_END__+0xfffffffffffe98d0>
   112b6:	07a1                	addi	a5,a5,8
   112b8:	06a1                	addi	a3,a3,8
   112ba:	ff07bc23          	sd	a6,-8(a5) # ffffffffffffeff8 <__BSS_END__+0xfffffffffffea8c8>
   112be:	fec7eae3          	bltu	a5,a2,112b2 <memcpy+0x36>
   112c2:	fff60793          	addi	a5,a2,-1
   112c6:	8f99                	sub	a5,a5,a4
   112c8:	9be1                	andi	a5,a5,-8
   112ca:	07a1                	addi	a5,a5,8
   112cc:	973e                	add	a4,a4,a5
   112ce:	95be                	add	a1,a1,a5
   112d0:	01176663          	bltu	a4,a7,112dc <memcpy+0x60>
   112d4:	8082                	ret
   112d6:	872a                	mv	a4,a0
   112d8:	ff157ee3          	bgeu	a0,a7,112d4 <memcpy+0x58>
   112dc:	0005c783          	lbu	a5,0(a1)
   112e0:	0705                	addi	a4,a4,1
   112e2:	0585                	addi	a1,a1,1
   112e4:	fef70fa3          	sb	a5,-1(a4)
   112e8:	ff176ae3          	bltu	a4,a7,112dc <memcpy+0x60>
   112ec:	8082                	ret
   112ee:	6594                	ld	a3,8(a1)
   112f0:	7d9c                	ld	a5,56(a1)
   112f2:	0005bf83          	ld	t6,0(a1)
   112f6:	0105bf03          	ld	t5,16(a1)
   112fa:	0185be83          	ld	t4,24(a1)
   112fe:	0205be03          	ld	t3,32(a1)
   11302:	0285b303          	ld	t1,40(a1)
   11306:	0305b803          	ld	a6,48(a1)
   1130a:	e714                	sd	a3,8(a4)
   1130c:	61b4                	ld	a3,64(a1)
   1130e:	01f73023          	sd	t6,0(a4)
   11312:	01e73823          	sd	t5,16(a4)
   11316:	01d73c23          	sd	t4,24(a4)
   1131a:	03c73023          	sd	t3,32(a4)
   1131e:	02673423          	sd	t1,40(a4)
   11322:	03073823          	sd	a6,48(a4)
   11326:	ff1c                	sd	a5,56(a4)
   11328:	04870713          	addi	a4,a4,72
   1132c:	40e607b3          	sub	a5,a2,a4
   11330:	fed73c23          	sd	a3,-8(a4)
   11334:	04858593          	addi	a1,a1,72
   11338:	faf2cbe3          	blt	t0,a5,112ee <memcpy+0x72>
   1133c:	b7bd                	j	112aa <memcpy+0x2e>
   1133e:	0005c683          	lbu	a3,0(a1)
   11342:	0705                	addi	a4,a4,1
   11344:	00777793          	andi	a5,a4,7
   11348:	fed70fa3          	sb	a3,-1(a4)
   1134c:	0585                	addi	a1,a1,1
   1134e:	d7a1                	beqz	a5,11296 <memcpy+0x1a>
   11350:	0005c683          	lbu	a3,0(a1)
   11354:	0705                	addi	a4,a4,1
   11356:	00777793          	andi	a5,a4,7
   1135a:	fed70fa3          	sb	a3,-1(a4)
   1135e:	0585                	addi	a1,a1,1
   11360:	fff9                	bnez	a5,1133e <memcpy+0xc2>
   11362:	bf15                	j	11296 <memcpy+0x1a>

0000000000011364 <memmove>:
   11364:	02a5f263          	bgeu	a1,a0,11388 <memmove+0x24>
   11368:	00c587b3          	add	a5,a1,a2
   1136c:	00f57e63          	bgeu	a0,a5,11388 <memmove+0x24>
   11370:	00c50733          	add	a4,a0,a2
   11374:	ca5d                	beqz	a2,1142a <memmove+0xc6>
   11376:	fff7c683          	lbu	a3,-1(a5)
   1137a:	17fd                	addi	a5,a5,-1
   1137c:	177d                	addi	a4,a4,-1
   1137e:	00d70023          	sb	a3,0(a4)
   11382:	fef59ae3          	bne	a1,a5,11376 <memmove+0x12>
   11386:	8082                	ret
   11388:	47fd                	li	a5,31
   1138a:	02c7e163          	bltu	a5,a2,113ac <memmove+0x48>
   1138e:	87aa                	mv	a5,a0
   11390:	fff60693          	addi	a3,a2,-1
   11394:	c245                	beqz	a2,11434 <memmove+0xd0>
   11396:	0685                	addi	a3,a3,1
   11398:	96be                	add	a3,a3,a5
   1139a:	0005c703          	lbu	a4,0(a1)
   1139e:	0785                	addi	a5,a5,1
   113a0:	0585                	addi	a1,a1,1
   113a2:	fee78fa3          	sb	a4,-1(a5)
   113a6:	fed79ae3          	bne	a5,a3,1139a <memmove+0x36>
   113aa:	8082                	ret
   113ac:	00a5e7b3          	or	a5,a1,a0
   113b0:	8b9d                	andi	a5,a5,7
   113b2:	efad                	bnez	a5,1142c <memmove+0xc8>
   113b4:	fe060893          	addi	a7,a2,-32
   113b8:	fe08f893          	andi	a7,a7,-32
   113bc:	02088893          	addi	a7,a7,32
   113c0:	01150833          	add	a6,a0,a7
   113c4:	872e                	mv	a4,a1
   113c6:	87aa                	mv	a5,a0
   113c8:	6314                	ld	a3,0(a4)
   113ca:	02070713          	addi	a4,a4,32
   113ce:	02078793          	addi	a5,a5,32
   113d2:	fed7b023          	sd	a3,-32(a5)
   113d6:	fe873683          	ld	a3,-24(a4)
   113da:	fed7b423          	sd	a3,-24(a5)
   113de:	ff073683          	ld	a3,-16(a4)
   113e2:	fed7b823          	sd	a3,-16(a5)
   113e6:	ff873683          	ld	a3,-8(a4)
   113ea:	fed7bc23          	sd	a3,-8(a5)
   113ee:	fcf81de3          	bne	a6,a5,113c8 <memmove+0x64>
   113f2:	01867713          	andi	a4,a2,24
   113f6:	95c6                	add	a1,a1,a7
   113f8:	01f67813          	andi	a6,a2,31
   113fc:	cf0d                	beqz	a4,11436 <memmove+0xd2>
   113fe:	872e                	mv	a4,a1
   11400:	88be                	mv	a7,a5
   11402:	4e1d                	li	t3,7
   11404:	00073303          	ld	t1,0(a4)
   11408:	0721                	addi	a4,a4,8
   1140a:	40e806b3          	sub	a3,a6,a4
   1140e:	0068b023          	sd	t1,0(a7)
   11412:	96ae                	add	a3,a3,a1
   11414:	08a1                	addi	a7,a7,8
   11416:	fede67e3          	bltu	t3,a3,11404 <memmove+0xa0>
   1141a:	ff880713          	addi	a4,a6,-8
   1141e:	9b61                	andi	a4,a4,-8
   11420:	0721                	addi	a4,a4,8
   11422:	8a1d                	andi	a2,a2,7
   11424:	97ba                	add	a5,a5,a4
   11426:	95ba                	add	a1,a1,a4
   11428:	b7a5                	j	11390 <memmove+0x2c>
   1142a:	8082                	ret
   1142c:	fff60693          	addi	a3,a2,-1
   11430:	87aa                	mv	a5,a0
   11432:	b795                	j	11396 <memmove+0x32>
   11434:	8082                	ret
   11436:	8642                	mv	a2,a6
   11438:	bfa1                	j	11390 <memmove+0x2c>

000000000001143a <__malloc_lock>:
   1143a:	8082                	ret

000000000001143c <__malloc_unlock>:
   1143c:	8082                	ret

000000000001143e <_realloc_r>:
   1143e:	715d                	addi	sp,sp,-80
   11440:	f84a                	sd	s2,48(sp)
   11442:	e486                	sd	ra,72(sp)
   11444:	e0a2                	sd	s0,64(sp)
   11446:	fc26                	sd	s1,56(sp)
   11448:	f44e                	sd	s3,40(sp)
   1144a:	f052                	sd	s4,32(sp)
   1144c:	ec56                	sd	s5,24(sp)
   1144e:	e85a                	sd	s6,16(sp)
   11450:	e45e                	sd	s7,8(sp)
   11452:	e062                	sd	s8,0(sp)
   11454:	8932                	mv	s2,a2
   11456:	14058c63          	beqz	a1,115ae <_realloc_r+0x170>
   1145a:	842e                	mv	s0,a1
   1145c:	8aaa                	mv	s5,a0
   1145e:	fddff0ef          	jal	ra,1143a <__malloc_lock>
   11462:	ff843703          	ld	a4,-8(s0)
   11466:	01790493          	addi	s1,s2,23
   1146a:	02e00793          	li	a5,46
   1146e:	ff040b13          	addi	s6,s0,-16
   11472:	ffc77a13          	andi	s4,a4,-4
   11476:	0a97fd63          	bgeu	a5,s1,11530 <_realloc_r+0xf2>
   1147a:	800007b7          	lui	a5,0x80000
   1147e:	98c1                	andi	s1,s1,-16
   11480:	fff7c793          	not	a5,a5
   11484:	0a97ea63          	bltu	a5,s1,11538 <_realloc_r+0xfa>
   11488:	0b24e863          	bltu	s1,s2,11538 <_realloc_r+0xfa>
   1148c:	014b09b3          	add	s3,s6,s4
   11490:	0c9a5e63          	bge	s4,s1,1156c <_realloc_r+0x12e>
   11494:	67d1                	lui	a5,0x14
   11496:	e5878b93          	addi	s7,a5,-424 # 13e58 <__malloc_av_>
   1149a:	010bb683          	ld	a3,16(s7)
   1149e:	0089b783          	ld	a5,8(s3)
   114a2:	15368763          	beq	a3,s3,115f0 <_realloc_r+0x1b2>
   114a6:	ffe7f693          	andi	a3,a5,-2
   114aa:	96ce                	add	a3,a3,s3
   114ac:	6694                	ld	a3,8(a3)
   114ae:	8a85                	andi	a3,a3,1
   114b0:	e6ed                	bnez	a3,1159a <_realloc_r+0x15c>
   114b2:	9bf1                	andi	a5,a5,-4
   114b4:	00fa06b3          	add	a3,s4,a5
   114b8:	0a96d163          	bge	a3,s1,1155a <_realloc_r+0x11c>
   114bc:	8b05                	andi	a4,a4,1
   114be:	e30d                	bnez	a4,114e0 <_realloc_r+0xa2>
   114c0:	ff043c03          	ld	s8,-16(s0)
   114c4:	418b0c33          	sub	s8,s6,s8
   114c8:	008c3703          	ld	a4,8(s8)
   114cc:	9b71                	andi	a4,a4,-4
   114ce:	97ba                	add	a5,a5,a4
   114d0:	01478bb3          	add	s7,a5,s4
   114d4:	269bd463          	bge	s7,s1,1173c <_realloc_r+0x2fe>
   114d8:	00ea0bb3          	add	s7,s4,a4
   114dc:	209bd063          	bge	s7,s1,116dc <_realloc_r+0x29e>
   114e0:	85ca                	mv	a1,s2
   114e2:	8556                	mv	a0,s5
   114e4:	ef0ff0ef          	jal	ra,10bd4 <_malloc_r>
   114e8:	892a                	mv	s2,a0
   114ea:	cd1d                	beqz	a0,11528 <_realloc_r+0xea>
   114ec:	ff843783          	ld	a5,-8(s0)
   114f0:	ff050713          	addi	a4,a0,-16
   114f4:	9bf9                	andi	a5,a5,-2
   114f6:	97da                	add	a5,a5,s6
   114f8:	1ce78b63          	beq	a5,a4,116ce <_realloc_r+0x290>
   114fc:	ff8a0613          	addi	a2,s4,-8
   11500:	04800793          	li	a5,72
   11504:	22c7e863          	bltu	a5,a2,11734 <_realloc_r+0x2f6>
   11508:	02700713          	li	a4,39
   1150c:	6014                	ld	a3,0(s0)
   1150e:	18c76063          	bltu	a4,a2,1168e <_realloc_r+0x250>
   11512:	87aa                	mv	a5,a0
   11514:	8722                	mv	a4,s0
   11516:	e394                	sd	a3,0(a5)
   11518:	6714                	ld	a3,8(a4)
   1151a:	e794                	sd	a3,8(a5)
   1151c:	6b18                	ld	a4,16(a4)
   1151e:	eb98                	sd	a4,16(a5)
   11520:	85a2                	mv	a1,s0
   11522:	8556                	mv	a0,s5
   11524:	1f1000ef          	jal	ra,11f14 <_free_r>
   11528:	8556                	mv	a0,s5
   1152a:	f13ff0ef          	jal	ra,1143c <__malloc_unlock>
   1152e:	a809                	j	11540 <_realloc_r+0x102>
   11530:	02000493          	li	s1,32
   11534:	f524fce3          	bgeu	s1,s2,1148c <_realloc_r+0x4e>
   11538:	47b1                	li	a5,12
   1153a:	00faa023          	sw	a5,0(s5)
   1153e:	4901                	li	s2,0
   11540:	60a6                	ld	ra,72(sp)
   11542:	6406                	ld	s0,64(sp)
   11544:	74e2                	ld	s1,56(sp)
   11546:	79a2                	ld	s3,40(sp)
   11548:	7a02                	ld	s4,32(sp)
   1154a:	6ae2                	ld	s5,24(sp)
   1154c:	6b42                	ld	s6,16(sp)
   1154e:	6ba2                	ld	s7,8(sp)
   11550:	6c02                	ld	s8,0(sp)
   11552:	854a                	mv	a0,s2
   11554:	7942                	ld	s2,48(sp)
   11556:	6161                	addi	sp,sp,80
   11558:	8082                	ret
   1155a:	0189b783          	ld	a5,24(s3)
   1155e:	0109b703          	ld	a4,16(s3)
   11562:	8a36                	mv	s4,a3
   11564:	00db09b3          	add	s3,s6,a3
   11568:	ef1c                	sd	a5,24(a4)
   1156a:	eb98                	sd	a4,16(a5)
   1156c:	008b3783          	ld	a5,8(s6)
   11570:	409a0733          	sub	a4,s4,s1
   11574:	46fd                	li	a3,31
   11576:	8b85                	andi	a5,a5,1
   11578:	04e6e963          	bltu	a3,a4,115ca <_realloc_r+0x18c>
   1157c:	00fa67b3          	or	a5,s4,a5
   11580:	00fb3423          	sd	a5,8(s6)
   11584:	0089b783          	ld	a5,8(s3)
   11588:	0017e793          	ori	a5,a5,1
   1158c:	00f9b423          	sd	a5,8(s3)
   11590:	8556                	mv	a0,s5
   11592:	eabff0ef          	jal	ra,1143c <__malloc_unlock>
   11596:	8922                	mv	s2,s0
   11598:	b765                	j	11540 <_realloc_r+0x102>
   1159a:	8b05                	andi	a4,a4,1
   1159c:	f331                	bnez	a4,114e0 <_realloc_r+0xa2>
   1159e:	ff043c03          	ld	s8,-16(s0)
   115a2:	418b0c33          	sub	s8,s6,s8
   115a6:	008c3703          	ld	a4,8(s8)
   115aa:	9b71                	andi	a4,a4,-4
   115ac:	b735                	j	114d8 <_realloc_r+0x9a>
   115ae:	6406                	ld	s0,64(sp)
   115b0:	60a6                	ld	ra,72(sp)
   115b2:	74e2                	ld	s1,56(sp)
   115b4:	7942                	ld	s2,48(sp)
   115b6:	79a2                	ld	s3,40(sp)
   115b8:	7a02                	ld	s4,32(sp)
   115ba:	6ae2                	ld	s5,24(sp)
   115bc:	6b42                	ld	s6,16(sp)
   115be:	6ba2                	ld	s7,8(sp)
   115c0:	6c02                	ld	s8,0(sp)
   115c2:	85b2                	mv	a1,a2
   115c4:	6161                	addi	sp,sp,80
   115c6:	e0eff06f          	j	10bd4 <_malloc_r>
   115ca:	8fc5                	or	a5,a5,s1
   115cc:	00fb3423          	sd	a5,8(s6)
   115d0:	009b05b3          	add	a1,s6,s1
   115d4:	00176713          	ori	a4,a4,1
   115d8:	e598                	sd	a4,8(a1)
   115da:	0089b783          	ld	a5,8(s3)
   115de:	05c1                	addi	a1,a1,16
   115e0:	8556                	mv	a0,s5
   115e2:	0017e793          	ori	a5,a5,1
   115e6:	00f9b423          	sd	a5,8(s3)
   115ea:	12b000ef          	jal	ra,11f14 <_free_r>
   115ee:	b74d                	j	11590 <_realloc_r+0x152>
   115f0:	9bf1                	andi	a5,a5,-4
   115f2:	00fa06b3          	add	a3,s4,a5
   115f6:	02048613          	addi	a2,s1,32
   115fa:	0ac6d763          	bge	a3,a2,116a8 <_realloc_r+0x26a>
   115fe:	8b05                	andi	a4,a4,1
   11600:	ee0710e3          	bnez	a4,114e0 <_realloc_r+0xa2>
   11604:	ff043c03          	ld	s8,-16(s0)
   11608:	418b0c33          	sub	s8,s6,s8
   1160c:	008c3703          	ld	a4,8(s8)
   11610:	9b71                	andi	a4,a4,-4
   11612:	97ba                	add	a5,a5,a4
   11614:	014789b3          	add	s3,a5,s4
   11618:	ecc9c0e3          	blt	s3,a2,114d8 <_realloc_r+0x9a>
   1161c:	018c3783          	ld	a5,24(s8)
   11620:	010c3703          	ld	a4,16(s8)
   11624:	ff8a0613          	addi	a2,s4,-8
   11628:	04800693          	li	a3,72
   1162c:	ef1c                	sd	a5,24(a4)
   1162e:	eb98                	sd	a4,16(a5)
   11630:	010c0913          	addi	s2,s8,16
   11634:	1cc6ea63          	bltu	a3,a2,11808 <_realloc_r+0x3ca>
   11638:	02700593          	li	a1,39
   1163c:	6018                	ld	a4,0(s0)
   1163e:	87ca                	mv	a5,s2
   11640:	00c5ff63          	bgeu	a1,a2,1165e <_realloc_r+0x220>
   11644:	00ec3823          	sd	a4,16(s8)
   11648:	6418                	ld	a4,8(s0)
   1164a:	03700793          	li	a5,55
   1164e:	00ec3c23          	sd	a4,24(s8)
   11652:	1cc7e063          	bltu	a5,a2,11812 <_realloc_r+0x3d4>
   11656:	6818                	ld	a4,16(s0)
   11658:	020c0793          	addi	a5,s8,32
   1165c:	0441                	addi	s0,s0,16
   1165e:	e398                	sd	a4,0(a5)
   11660:	6418                	ld	a4,8(s0)
   11662:	e798                	sd	a4,8(a5)
   11664:	6818                	ld	a4,16(s0)
   11666:	eb98                	sd	a4,16(a5)
   11668:	009c0733          	add	a4,s8,s1
   1166c:	409989b3          	sub	s3,s3,s1
   11670:	00ebb823          	sd	a4,16(s7)
   11674:	0019e793          	ori	a5,s3,1
   11678:	e71c                	sd	a5,8(a4)
   1167a:	008c3783          	ld	a5,8(s8)
   1167e:	8556                	mv	a0,s5
   11680:	8b85                	andi	a5,a5,1
   11682:	8cdd                	or	s1,s1,a5
   11684:	009c3423          	sd	s1,8(s8)
   11688:	db5ff0ef          	jal	ra,1143c <__malloc_unlock>
   1168c:	bd55                	j	11540 <_realloc_r+0x102>
   1168e:	e114                	sd	a3,0(a0)
   11690:	6414                	ld	a3,8(s0)
   11692:	03700713          	li	a4,55
   11696:	e514                	sd	a3,8(a0)
   11698:	10c76f63          	bltu	a4,a2,117b6 <_realloc_r+0x378>
   1169c:	6814                	ld	a3,16(s0)
   1169e:	01040713          	addi	a4,s0,16
   116a2:	01050793          	addi	a5,a0,16
   116a6:	bd85                	j	11516 <_realloc_r+0xd8>
   116a8:	9b26                	add	s6,s6,s1
   116aa:	8e85                	sub	a3,a3,s1
   116ac:	016bb823          	sd	s6,16(s7)
   116b0:	0016e793          	ori	a5,a3,1
   116b4:	00fb3423          	sd	a5,8(s6)
   116b8:	ff843783          	ld	a5,-8(s0)
   116bc:	8556                	mv	a0,s5
   116be:	8922                	mv	s2,s0
   116c0:	8b85                	andi	a5,a5,1
   116c2:	8cdd                	or	s1,s1,a5
   116c4:	fe943c23          	sd	s1,-8(s0)
   116c8:	d75ff0ef          	jal	ra,1143c <__malloc_unlock>
   116cc:	bd95                	j	11540 <_realloc_r+0x102>
   116ce:	ff853783          	ld	a5,-8(a0)
   116d2:	9bf1                	andi	a5,a5,-4
   116d4:	9a3e                	add	s4,s4,a5
   116d6:	014b09b3          	add	s3,s6,s4
   116da:	bd49                	j	1156c <_realloc_r+0x12e>
   116dc:	018c3783          	ld	a5,24(s8)
   116e0:	010c3703          	ld	a4,16(s8)
   116e4:	ff8a0613          	addi	a2,s4,-8
   116e8:	04800693          	li	a3,72
   116ec:	ef1c                	sd	a5,24(a4)
   116ee:	eb98                	sd	a4,16(a5)
   116f0:	010c0913          	addi	s2,s8,16
   116f4:	017c09b3          	add	s3,s8,s7
   116f8:	0ac6e763          	bltu	a3,a2,117a6 <_realloc_r+0x368>
   116fc:	02700593          	li	a1,39
   11700:	6018                	ld	a4,0(s0)
   11702:	87ca                	mv	a5,s2
   11704:	00c5ff63          	bgeu	a1,a2,11722 <_realloc_r+0x2e4>
   11708:	00ec3823          	sd	a4,16(s8)
   1170c:	6418                	ld	a4,8(s0)
   1170e:	03700793          	li	a5,55
   11712:	00ec3c23          	sd	a4,24(s8)
   11716:	0ac7ec63          	bltu	a5,a2,117ce <_realloc_r+0x390>
   1171a:	6818                	ld	a4,16(s0)
   1171c:	020c0793          	addi	a5,s8,32
   11720:	0441                	addi	s0,s0,16
   11722:	e398                	sd	a4,0(a5)
   11724:	6418                	ld	a4,8(s0)
   11726:	8a5e                	mv	s4,s7
   11728:	8b62                	mv	s6,s8
   1172a:	e798                	sd	a4,8(a5)
   1172c:	6818                	ld	a4,16(s0)
   1172e:	844a                	mv	s0,s2
   11730:	eb98                	sd	a4,16(a5)
   11732:	bd2d                	j	1156c <_realloc_r+0x12e>
   11734:	85a2                	mv	a1,s0
   11736:	c2fff0ef          	jal	ra,11364 <memmove>
   1173a:	b3dd                	j	11520 <_realloc_r+0xe2>
   1173c:	0189b783          	ld	a5,24(s3)
   11740:	0109b703          	ld	a4,16(s3)
   11744:	ff8a0613          	addi	a2,s4,-8
   11748:	04800693          	li	a3,72
   1174c:	ef1c                	sd	a5,24(a4)
   1174e:	eb98                	sd	a4,16(a5)
   11750:	010c3703          	ld	a4,16(s8)
   11754:	018c3783          	ld	a5,24(s8)
   11758:	010c0913          	addi	s2,s8,16
   1175c:	017c09b3          	add	s3,s8,s7
   11760:	ef1c                	sd	a5,24(a4)
   11762:	eb98                	sd	a4,16(a5)
   11764:	04c6e163          	bltu	a3,a2,117a6 <_realloc_r+0x368>
   11768:	02700693          	li	a3,39
   1176c:	6018                	ld	a4,0(s0)
   1176e:	87ca                	mv	a5,s2
   11770:	fac6f9e3          	bgeu	a3,a2,11722 <_realloc_r+0x2e4>
   11774:	00ec3823          	sd	a4,16(s8)
   11778:	6418                	ld	a4,8(s0)
   1177a:	03700793          	li	a5,55
   1177e:	00ec3c23          	sd	a4,24(s8)
   11782:	6818                	ld	a4,16(s0)
   11784:	f8c7fce3          	bgeu	a5,a2,1171c <_realloc_r+0x2de>
   11788:	02ec3023          	sd	a4,32(s8)
   1178c:	6c18                	ld	a4,24(s0)
   1178e:	04800793          	li	a5,72
   11792:	02ec3423          	sd	a4,40(s8)
   11796:	7018                	ld	a4,32(s0)
   11798:	04f60463          	beq	a2,a5,117e0 <_realloc_r+0x3a2>
   1179c:	030c0793          	addi	a5,s8,48
   117a0:	02040413          	addi	s0,s0,32
   117a4:	bfbd                	j	11722 <_realloc_r+0x2e4>
   117a6:	85a2                	mv	a1,s0
   117a8:	854a                	mv	a0,s2
   117aa:	bbbff0ef          	jal	ra,11364 <memmove>
   117ae:	844a                	mv	s0,s2
   117b0:	8a5e                	mv	s4,s7
   117b2:	8b62                	mv	s6,s8
   117b4:	bb65                	j	1156c <_realloc_r+0x12e>
   117b6:	6818                	ld	a4,16(s0)
   117b8:	e918                	sd	a4,16(a0)
   117ba:	6c18                	ld	a4,24(s0)
   117bc:	ed18                	sd	a4,24(a0)
   117be:	7014                	ld	a3,32(s0)
   117c0:	02f60b63          	beq	a2,a5,117f6 <_realloc_r+0x3b8>
   117c4:	02040713          	addi	a4,s0,32
   117c8:	02050793          	addi	a5,a0,32
   117cc:	b3a9                	j	11516 <_realloc_r+0xd8>
   117ce:	681c                	ld	a5,16(s0)
   117d0:	02fc3023          	sd	a5,32(s8)
   117d4:	6c1c                	ld	a5,24(s0)
   117d6:	02fc3423          	sd	a5,40(s8)
   117da:	7018                	ld	a4,32(s0)
   117dc:	fcd610e3          	bne	a2,a3,1179c <_realloc_r+0x35e>
   117e0:	02ec3823          	sd	a4,48(s8)
   117e4:	7418                	ld	a4,40(s0)
   117e6:	040c0793          	addi	a5,s8,64
   117ea:	03040413          	addi	s0,s0,48
   117ee:	02ec3c23          	sd	a4,56(s8)
   117f2:	6018                	ld	a4,0(s0)
   117f4:	b73d                	j	11722 <_realloc_r+0x2e4>
   117f6:	f114                	sd	a3,32(a0)
   117f8:	7414                	ld	a3,40(s0)
   117fa:	03040713          	addi	a4,s0,48
   117fe:	03050793          	addi	a5,a0,48
   11802:	f514                	sd	a3,40(a0)
   11804:	7814                	ld	a3,48(s0)
   11806:	bb01                	j	11516 <_realloc_r+0xd8>
   11808:	85a2                	mv	a1,s0
   1180a:	854a                	mv	a0,s2
   1180c:	b59ff0ef          	jal	ra,11364 <memmove>
   11810:	bda1                	j	11668 <_realloc_r+0x22a>
   11812:	681c                	ld	a5,16(s0)
   11814:	02fc3023          	sd	a5,32(s8)
   11818:	6c1c                	ld	a5,24(s0)
   1181a:	02fc3423          	sd	a5,40(s8)
   1181e:	7018                	ld	a4,32(s0)
   11820:	00d60763          	beq	a2,a3,1182e <_realloc_r+0x3f0>
   11824:	030c0793          	addi	a5,s8,48
   11828:	02040413          	addi	s0,s0,32
   1182c:	bd0d                	j	1165e <_realloc_r+0x220>
   1182e:	02ec3823          	sd	a4,48(s8)
   11832:	7418                	ld	a4,40(s0)
   11834:	040c0793          	addi	a5,s8,64
   11838:	03040413          	addi	s0,s0,48
   1183c:	02ec3c23          	sd	a4,56(s8)
   11840:	6018                	ld	a4,0(s0)
   11842:	bd31                	j	1165e <_realloc_r+0x220>

0000000000011844 <_sbrk_r>:
   11844:	1101                	addi	sp,sp,-32
   11846:	e822                	sd	s0,16(sp)
   11848:	e426                	sd	s1,8(sp)
   1184a:	842a                	mv	s0,a0
   1184c:	852e                	mv	a0,a1
   1184e:	ec06                	sd	ra,24(sp)
   11850:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   11854:	5a5000ef          	jal	ra,125f8 <_sbrk>
   11858:	57fd                	li	a5,-1
   1185a:	00f50763          	beq	a0,a5,11868 <_sbrk_r+0x24>
   1185e:	60e2                	ld	ra,24(sp)
   11860:	6442                	ld	s0,16(sp)
   11862:	64a2                	ld	s1,8(sp)
   11864:	6105                	addi	sp,sp,32
   11866:	8082                	ret
   11868:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   1186c:	dbed                	beqz	a5,1185e <_sbrk_r+0x1a>
   1186e:	60e2                	ld	ra,24(sp)
   11870:	c01c                	sw	a5,0(s0)
   11872:	6442                	ld	s0,16(sp)
   11874:	64a2                	ld	s1,8(sp)
   11876:	6105                	addi	sp,sp,32
   11878:	8082                	ret

000000000001187a <__sread>:
   1187a:	1141                	addi	sp,sp,-16
   1187c:	e022                	sd	s0,0(sp)
   1187e:	842e                	mv	s0,a1
   11880:	01259583          	lh	a1,18(a1)
   11884:	e406                	sd	ra,8(sp)
   11886:	2ad000ef          	jal	ra,12332 <_read_r>
   1188a:	00054963          	bltz	a0,1189c <__sread+0x22>
   1188e:	685c                	ld	a5,144(s0)
   11890:	60a2                	ld	ra,8(sp)
   11892:	97aa                	add	a5,a5,a0
   11894:	e85c                	sd	a5,144(s0)
   11896:	6402                	ld	s0,0(sp)
   11898:	0141                	addi	sp,sp,16
   1189a:	8082                	ret
   1189c:	01045783          	lhu	a5,16(s0)
   118a0:	777d                	lui	a4,0xfffff
   118a2:	177d                	addi	a4,a4,-1
   118a4:	8ff9                	and	a5,a5,a4
   118a6:	60a2                	ld	ra,8(sp)
   118a8:	00f41823          	sh	a5,16(s0)
   118ac:	6402                	ld	s0,0(sp)
   118ae:	0141                	addi	sp,sp,16
   118b0:	8082                	ret

00000000000118b2 <__seofread>:
   118b2:	4501                	li	a0,0
   118b4:	8082                	ret

00000000000118b6 <__swrite>:
   118b6:	01059783          	lh	a5,16(a1)
   118ba:	7179                	addi	sp,sp,-48
   118bc:	f022                	sd	s0,32(sp)
   118be:	ec26                	sd	s1,24(sp)
   118c0:	e84a                	sd	s2,16(sp)
   118c2:	e44e                	sd	s3,8(sp)
   118c4:	f406                	sd	ra,40(sp)
   118c6:	1007f713          	andi	a4,a5,256
   118ca:	842e                	mv	s0,a1
   118cc:	84aa                	mv	s1,a0
   118ce:	01259583          	lh	a1,18(a1)
   118d2:	8932                	mv	s2,a2
   118d4:	89b6                	mv	s3,a3
   118d6:	e305                	bnez	a4,118f6 <__swrite+0x40>
   118d8:	777d                	lui	a4,0xfffff
   118da:	177d                	addi	a4,a4,-1
   118dc:	8ff9                	and	a5,a5,a4
   118de:	00f41823          	sh	a5,16(s0)
   118e2:	7402                	ld	s0,32(sp)
   118e4:	70a2                	ld	ra,40(sp)
   118e6:	86ce                	mv	a3,s3
   118e8:	864a                	mv	a2,s2
   118ea:	69a2                	ld	s3,8(sp)
   118ec:	6942                	ld	s2,16(sp)
   118ee:	8526                	mv	a0,s1
   118f0:	64e2                	ld	s1,24(sp)
   118f2:	6145                	addi	sp,sp,48
   118f4:	a8b1                	j	11950 <_write_r>
   118f6:	4689                	li	a3,2
   118f8:	4601                	li	a2,0
   118fa:	067000ef          	jal	ra,12160 <_lseek_r>
   118fe:	01041783          	lh	a5,16(s0)
   11902:	01241583          	lh	a1,18(s0)
   11906:	bfc9                	j	118d8 <__swrite+0x22>

0000000000011908 <__sseek>:
   11908:	1141                	addi	sp,sp,-16
   1190a:	e022                	sd	s0,0(sp)
   1190c:	842e                	mv	s0,a1
   1190e:	01259583          	lh	a1,18(a1)
   11912:	e406                	sd	ra,8(sp)
   11914:	04d000ef          	jal	ra,12160 <_lseek_r>
   11918:	57fd                	li	a5,-1
   1191a:	00f50d63          	beq	a0,a5,11934 <__sseek+0x2c>
   1191e:	01045783          	lhu	a5,16(s0)
   11922:	6705                	lui	a4,0x1
   11924:	60a2                	ld	ra,8(sp)
   11926:	8fd9                	or	a5,a5,a4
   11928:	e848                	sd	a0,144(s0)
   1192a:	00f41823          	sh	a5,16(s0)
   1192e:	6402                	ld	s0,0(sp)
   11930:	0141                	addi	sp,sp,16
   11932:	8082                	ret
   11934:	01045783          	lhu	a5,16(s0)
   11938:	777d                	lui	a4,0xfffff
   1193a:	177d                	addi	a4,a4,-1
   1193c:	8ff9                	and	a5,a5,a4
   1193e:	60a2                	ld	ra,8(sp)
   11940:	00f41823          	sh	a5,16(s0)
   11944:	6402                	ld	s0,0(sp)
   11946:	0141                	addi	sp,sp,16
   11948:	8082                	ret

000000000001194a <__sclose>:
   1194a:	01259583          	lh	a1,18(a1)
   1194e:	a275                	j	11afa <_close_r>

0000000000011950 <_write_r>:
   11950:	1101                	addi	sp,sp,-32
   11952:	872e                	mv	a4,a1
   11954:	e822                	sd	s0,16(sp)
   11956:	e426                	sd	s1,8(sp)
   11958:	85b2                	mv	a1,a2
   1195a:	842a                	mv	s0,a0
   1195c:	8636                	mv	a2,a3
   1195e:	853a                	mv	a0,a4
   11960:	ec06                	sd	ra,24(sp)
   11962:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   11966:	4e7000ef          	jal	ra,1264c <_write>
   1196a:	57fd                	li	a5,-1
   1196c:	00f50763          	beq	a0,a5,1197a <_write_r+0x2a>
   11970:	60e2                	ld	ra,24(sp)
   11972:	6442                	ld	s0,16(sp)
   11974:	64a2                	ld	s1,8(sp)
   11976:	6105                	addi	sp,sp,32
   11978:	8082                	ret
   1197a:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   1197e:	dbed                	beqz	a5,11970 <_write_r+0x20>
   11980:	60e2                	ld	ra,24(sp)
   11982:	c01c                	sw	a5,0(s0)
   11984:	6442                	ld	s0,16(sp)
   11986:	64a2                	ld	s1,8(sp)
   11988:	6105                	addi	sp,sp,32
   1198a:	8082                	ret

000000000001198c <__swsetup_r>:
   1198c:	7601b783          	ld	a5,1888(gp) # 14690 <_impure_ptr>
   11990:	1101                	addi	sp,sp,-32
   11992:	e822                	sd	s0,16(sp)
   11994:	e426                	sd	s1,8(sp)
   11996:	ec06                	sd	ra,24(sp)
   11998:	84aa                	mv	s1,a0
   1199a:	842e                	mv	s0,a1
   1199c:	c399                	beqz	a5,119a2 <__swsetup_r+0x16>
   1199e:	4bb8                	lw	a4,80(a5)
   119a0:	cf21                	beqz	a4,119f8 <__swsetup_r+0x6c>
   119a2:	01041703          	lh	a4,16(s0)
   119a6:	03071793          	slli	a5,a4,0x30
   119aa:	00877693          	andi	a3,a4,8
   119ae:	93c1                	srli	a5,a5,0x30
   119b0:	ceb9                	beqz	a3,11a0e <__swsetup_r+0x82>
   119b2:	6c14                	ld	a3,24(s0)
   119b4:	cabd                	beqz	a3,11a2a <__swsetup_r+0x9e>
   119b6:	0017f613          	andi	a2,a5,1
   119ba:	ce11                	beqz	a2,119d6 <__swsetup_r+0x4a>
   119bc:	5010                	lw	a2,32(s0)
   119be:	00042623          	sw	zero,12(s0)
   119c2:	4501                	li	a0,0
   119c4:	40c0063b          	negw	a2,a2
   119c8:	d410                	sw	a2,40(s0)
   119ca:	ce91                	beqz	a3,119e6 <__swsetup_r+0x5a>
   119cc:	60e2                	ld	ra,24(sp)
   119ce:	6442                	ld	s0,16(sp)
   119d0:	64a2                	ld	s1,8(sp)
   119d2:	6105                	addi	sp,sp,32
   119d4:	8082                	ret
   119d6:	0027f613          	andi	a2,a5,2
   119da:	4581                	li	a1,0
   119dc:	e211                	bnez	a2,119e0 <__swsetup_r+0x54>
   119de:	500c                	lw	a1,32(s0)
   119e0:	c44c                	sw	a1,12(s0)
   119e2:	4501                	li	a0,0
   119e4:	f6e5                	bnez	a3,119cc <__swsetup_r+0x40>
   119e6:	0807f793          	andi	a5,a5,128
   119ea:	d3ed                	beqz	a5,119cc <__swsetup_r+0x40>
   119ec:	04076713          	ori	a4,a4,64
   119f0:	00e41823          	sh	a4,16(s0)
   119f4:	557d                	li	a0,-1
   119f6:	bfd9                	j	119cc <__swsetup_r+0x40>
   119f8:	853e                	mv	a0,a5
   119fa:	d49fe0ef          	jal	ra,10742 <__sinit>
   119fe:	01041703          	lh	a4,16(s0)
   11a02:	03071793          	slli	a5,a4,0x30
   11a06:	00877693          	andi	a3,a4,8
   11a0a:	93c1                	srli	a5,a5,0x30
   11a0c:	f2dd                	bnez	a3,119b2 <__swsetup_r+0x26>
   11a0e:	0107f693          	andi	a3,a5,16
   11a12:	c2ad                	beqz	a3,11a74 <__swsetup_r+0xe8>
   11a14:	8b91                	andi	a5,a5,4
   11a16:	eb9d                	bnez	a5,11a4c <__swsetup_r+0xc0>
   11a18:	6c14                	ld	a3,24(s0)
   11a1a:	00876713          	ori	a4,a4,8
   11a1e:	03071793          	slli	a5,a4,0x30
   11a22:	00e41823          	sh	a4,16(s0)
   11a26:	93c1                	srli	a5,a5,0x30
   11a28:	f6d9                	bnez	a3,119b6 <__swsetup_r+0x2a>
   11a2a:	2807f613          	andi	a2,a5,640
   11a2e:	20000593          	li	a1,512
   11a32:	f8b602e3          	beq	a2,a1,119b6 <__swsetup_r+0x2a>
   11a36:	85a2                	mv	a1,s0
   11a38:	8526                	mv	a0,s1
   11a3a:	762000ef          	jal	ra,1219c <__smakebuf_r>
   11a3e:	01041703          	lh	a4,16(s0)
   11a42:	6c14                	ld	a3,24(s0)
   11a44:	03071793          	slli	a5,a4,0x30
   11a48:	93c1                	srli	a5,a5,0x30
   11a4a:	b7b5                	j	119b6 <__swsetup_r+0x2a>
   11a4c:	6c2c                	ld	a1,88(s0)
   11a4e:	cd81                	beqz	a1,11a66 <__swsetup_r+0xda>
   11a50:	07440793          	addi	a5,s0,116
   11a54:	00f58763          	beq	a1,a5,11a62 <__swsetup_r+0xd6>
   11a58:	8526                	mv	a0,s1
   11a5a:	4ba000ef          	jal	ra,11f14 <_free_r>
   11a5e:	01041703          	lh	a4,16(s0)
   11a62:	04043c23          	sd	zero,88(s0)
   11a66:	6c14                	ld	a3,24(s0)
   11a68:	fdb77713          	andi	a4,a4,-37
   11a6c:	00042423          	sw	zero,8(s0)
   11a70:	e014                	sd	a3,0(s0)
   11a72:	b765                	j	11a1a <__swsetup_r+0x8e>
   11a74:	47a5                	li	a5,9
   11a76:	c09c                	sw	a5,0(s1)
   11a78:	04076713          	ori	a4,a4,64
   11a7c:	00e41823          	sh	a4,16(s0)
   11a80:	557d                	li	a0,-1
   11a82:	b7a9                	j	119cc <__swsetup_r+0x40>

0000000000011a84 <__register_exitproc>:
   11a84:	7501b703          	ld	a4,1872(gp) # 14680 <_global_impure_ptr>
   11a88:	1f873783          	ld	a5,504(a4) # fffffffffffff1f8 <__BSS_END__+0xfffffffffffeaac8>
   11a8c:	c3b1                	beqz	a5,11ad0 <__register_exitproc+0x4c>
   11a8e:	4798                	lw	a4,8(a5)
   11a90:	487d                	li	a6,31
   11a92:	06e84263          	blt	a6,a4,11af6 <__register_exitproc+0x72>
   11a96:	c505                	beqz	a0,11abe <__register_exitproc+0x3a>
   11a98:	00371813          	slli	a6,a4,0x3
   11a9c:	983e                	add	a6,a6,a5
   11a9e:	10c83823          	sd	a2,272(a6)
   11aa2:	3107a883          	lw	a7,784(a5)
   11aa6:	4605                	li	a2,1
   11aa8:	00e6163b          	sllw	a2,a2,a4
   11aac:	00c8e8b3          	or	a7,a7,a2
   11ab0:	3117a823          	sw	a7,784(a5)
   11ab4:	20d83823          	sd	a3,528(a6)
   11ab8:	4689                	li	a3,2
   11aba:	02d50063          	beq	a0,a3,11ada <__register_exitproc+0x56>
   11abe:	00270693          	addi	a3,a4,2
   11ac2:	068e                	slli	a3,a3,0x3
   11ac4:	2705                	addiw	a4,a4,1
   11ac6:	c798                	sw	a4,8(a5)
   11ac8:	97b6                	add	a5,a5,a3
   11aca:	e38c                	sd	a1,0(a5)
   11acc:	4501                	li	a0,0
   11ace:	8082                	ret
   11ad0:	20070793          	addi	a5,a4,512
   11ad4:	1ef73c23          	sd	a5,504(a4)
   11ad8:	bf5d                	j	11a8e <__register_exitproc+0xa>
   11ada:	3147a683          	lw	a3,788(a5)
   11ade:	4501                	li	a0,0
   11ae0:	8e55                	or	a2,a2,a3
   11ae2:	00270693          	addi	a3,a4,2
   11ae6:	068e                	slli	a3,a3,0x3
   11ae8:	2705                	addiw	a4,a4,1
   11aea:	30c7aa23          	sw	a2,788(a5)
   11aee:	c798                	sw	a4,8(a5)
   11af0:	97b6                	add	a5,a5,a3
   11af2:	e38c                	sd	a1,0(a5)
   11af4:	8082                	ret
   11af6:	557d                	li	a0,-1
   11af8:	8082                	ret

0000000000011afa <_close_r>:
   11afa:	1101                	addi	sp,sp,-32
   11afc:	e822                	sd	s0,16(sp)
   11afe:	e426                	sd	s1,8(sp)
   11b00:	842a                	mv	s0,a0
   11b02:	852e                	mv	a0,a1
   11b04:	ec06                	sd	ra,24(sp)
   11b06:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   11b0a:	1e3000ef          	jal	ra,124ec <_close>
   11b0e:	57fd                	li	a5,-1
   11b10:	00f50763          	beq	a0,a5,11b1e <_close_r+0x24>
   11b14:	60e2                	ld	ra,24(sp)
   11b16:	6442                	ld	s0,16(sp)
   11b18:	64a2                	ld	s1,8(sp)
   11b1a:	6105                	addi	sp,sp,32
   11b1c:	8082                	ret
   11b1e:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   11b22:	dbed                	beqz	a5,11b14 <_close_r+0x1a>
   11b24:	60e2                	ld	ra,24(sp)
   11b26:	c01c                	sw	a5,0(s0)
   11b28:	6442                	ld	s0,16(sp)
   11b2a:	64a2                	ld	s1,8(sp)
   11b2c:	6105                	addi	sp,sp,32
   11b2e:	8082                	ret

0000000000011b30 <_fclose_r.part.0>:
   11b30:	1101                	addi	sp,sp,-32
   11b32:	e822                	sd	s0,16(sp)
   11b34:	e426                	sd	s1,8(sp)
   11b36:	e04a                	sd	s2,0(sp)
   11b38:	842e                	mv	s0,a1
   11b3a:	ec06                	sd	ra,24(sp)
   11b3c:	84aa                	mv	s1,a0
   11b3e:	0f2000ef          	jal	ra,11c30 <__sflush_r>
   11b42:	683c                	ld	a5,80(s0)
   11b44:	892a                	mv	s2,a0
   11b46:	c791                	beqz	a5,11b52 <_fclose_r.part.0+0x22>
   11b48:	780c                	ld	a1,48(s0)
   11b4a:	8526                	mv	a0,s1
   11b4c:	9782                	jalr	a5
   11b4e:	04054663          	bltz	a0,11b9a <_fclose_r.part.0+0x6a>
   11b52:	01045783          	lhu	a5,16(s0)
   11b56:	0807f793          	andi	a5,a5,128
   11b5a:	e7b1                	bnez	a5,11ba6 <_fclose_r.part.0+0x76>
   11b5c:	6c2c                	ld	a1,88(s0)
   11b5e:	c991                	beqz	a1,11b72 <_fclose_r.part.0+0x42>
   11b60:	07440793          	addi	a5,s0,116
   11b64:	00f58563          	beq	a1,a5,11b6e <_fclose_r.part.0+0x3e>
   11b68:	8526                	mv	a0,s1
   11b6a:	3aa000ef          	jal	ra,11f14 <_free_r>
   11b6e:	04043c23          	sd	zero,88(s0)
   11b72:	7c2c                	ld	a1,120(s0)
   11b74:	c591                	beqz	a1,11b80 <_fclose_r.part.0+0x50>
   11b76:	8526                	mv	a0,s1
   11b78:	39c000ef          	jal	ra,11f14 <_free_r>
   11b7c:	06043c23          	sd	zero,120(s0)
   11b80:	bcbfe0ef          	jal	ra,1074a <__sfp_lock_acquire>
   11b84:	00041823          	sh	zero,16(s0)
   11b88:	bc5fe0ef          	jal	ra,1074c <__sfp_lock_release>
   11b8c:	60e2                	ld	ra,24(sp)
   11b8e:	6442                	ld	s0,16(sp)
   11b90:	64a2                	ld	s1,8(sp)
   11b92:	854a                	mv	a0,s2
   11b94:	6902                	ld	s2,0(sp)
   11b96:	6105                	addi	sp,sp,32
   11b98:	8082                	ret
   11b9a:	01045783          	lhu	a5,16(s0)
   11b9e:	597d                	li	s2,-1
   11ba0:	0807f793          	andi	a5,a5,128
   11ba4:	dfc5                	beqz	a5,11b5c <_fclose_r.part.0+0x2c>
   11ba6:	6c0c                	ld	a1,24(s0)
   11ba8:	8526                	mv	a0,s1
   11baa:	36a000ef          	jal	ra,11f14 <_free_r>
   11bae:	b77d                	j	11b5c <_fclose_r.part.0+0x2c>

0000000000011bb0 <_fclose_r>:
   11bb0:	cd8d                	beqz	a1,11bea <_fclose_r+0x3a>
   11bb2:	1101                	addi	sp,sp,-32
   11bb4:	e822                	sd	s0,16(sp)
   11bb6:	ec06                	sd	ra,24(sp)
   11bb8:	842a                	mv	s0,a0
   11bba:	c119                	beqz	a0,11bc0 <_fclose_r+0x10>
   11bbc:	493c                	lw	a5,80(a0)
   11bbe:	cf91                	beqz	a5,11bda <_fclose_r+0x2a>
   11bc0:	01059783          	lh	a5,16(a1)
   11bc4:	e791                	bnez	a5,11bd0 <_fclose_r+0x20>
   11bc6:	60e2                	ld	ra,24(sp)
   11bc8:	6442                	ld	s0,16(sp)
   11bca:	4501                	li	a0,0
   11bcc:	6105                	addi	sp,sp,32
   11bce:	8082                	ret
   11bd0:	8522                	mv	a0,s0
   11bd2:	6442                	ld	s0,16(sp)
   11bd4:	60e2                	ld	ra,24(sp)
   11bd6:	6105                	addi	sp,sp,32
   11bd8:	bfa1                	j	11b30 <_fclose_r.part.0>
   11bda:	e42e                	sd	a1,8(sp)
   11bdc:	b67fe0ef          	jal	ra,10742 <__sinit>
   11be0:	65a2                	ld	a1,8(sp)
   11be2:	01059783          	lh	a5,16(a1)
   11be6:	d3e5                	beqz	a5,11bc6 <_fclose_r+0x16>
   11be8:	b7e5                	j	11bd0 <_fclose_r+0x20>
   11bea:	4501                	li	a0,0
   11bec:	8082                	ret

0000000000011bee <fclose>:
   11bee:	cd1d                	beqz	a0,11c2c <fclose+0x3e>
   11bf0:	1101                	addi	sp,sp,-32
   11bf2:	e822                	sd	s0,16(sp)
   11bf4:	842a                	mv	s0,a0
   11bf6:	7601b503          	ld	a0,1888(gp) # 14690 <_impure_ptr>
   11bfa:	ec06                	sd	ra,24(sp)
   11bfc:	c119                	beqz	a0,11c02 <fclose+0x14>
   11bfe:	493c                	lw	a5,80(a0)
   11c00:	cf91                	beqz	a5,11c1c <fclose+0x2e>
   11c02:	01041783          	lh	a5,16(s0)
   11c06:	e791                	bnez	a5,11c12 <fclose+0x24>
   11c08:	60e2                	ld	ra,24(sp)
   11c0a:	6442                	ld	s0,16(sp)
   11c0c:	4501                	li	a0,0
   11c0e:	6105                	addi	sp,sp,32
   11c10:	8082                	ret
   11c12:	85a2                	mv	a1,s0
   11c14:	6442                	ld	s0,16(sp)
   11c16:	60e2                	ld	ra,24(sp)
   11c18:	6105                	addi	sp,sp,32
   11c1a:	bf19                	j	11b30 <_fclose_r.part.0>
   11c1c:	e42a                	sd	a0,8(sp)
   11c1e:	b25fe0ef          	jal	ra,10742 <__sinit>
   11c22:	01041783          	lh	a5,16(s0)
   11c26:	6522                	ld	a0,8(sp)
   11c28:	d3e5                	beqz	a5,11c08 <fclose+0x1a>
   11c2a:	b7e5                	j	11c12 <fclose+0x24>
   11c2c:	4501                	li	a0,0
   11c2e:	8082                	ret

0000000000011c30 <__sflush_r>:
   11c30:	01059783          	lh	a5,16(a1)
   11c34:	7179                	addi	sp,sp,-48
   11c36:	f022                	sd	s0,32(sp)
   11c38:	e44e                	sd	s3,8(sp)
   11c3a:	f406                	sd	ra,40(sp)
   11c3c:	ec26                	sd	s1,24(sp)
   11c3e:	e84a                	sd	s2,16(sp)
   11c40:	0087f693          	andi	a3,a5,8
   11c44:	842e                	mv	s0,a1
   11c46:	89aa                	mv	s3,a0
   11c48:	ead5                	bnez	a3,11cfc <__sflush_r+0xcc>
   11c4a:	6705                	lui	a4,0x1
   11c4c:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   11c50:	4594                	lw	a3,8(a1)
   11c52:	8fd9                	or	a5,a5,a4
   11c54:	00f59823          	sh	a5,16(a1)
   11c58:	10d05063          	blez	a3,11d58 <__sflush_r+0x128>
   11c5c:	6438                	ld	a4,72(s0)
   11c5e:	c759                	beqz	a4,11cec <__sflush_r+0xbc>
   11c60:	17c2                	slli	a5,a5,0x30
   11c62:	93c1                	srli	a5,a5,0x30
   11c64:	6685                	lui	a3,0x1
   11c66:	0009a483          	lw	s1,0(s3)
   11c6a:	8efd                	and	a3,a3,a5
   11c6c:	0009a023          	sw	zero,0(s3)
   11c70:	780c                	ld	a1,48(s0)
   11c72:	e6fd                	bnez	a3,11d60 <__sflush_r+0x130>
   11c74:	4601                	li	a2,0
   11c76:	4685                	li	a3,1
   11c78:	854e                	mv	a0,s3
   11c7a:	9702                	jalr	a4
   11c7c:	57fd                	li	a5,-1
   11c7e:	862a                	mv	a2,a0
   11c80:	10f50763          	beq	a0,a5,11d8e <__sflush_r+0x15e>
   11c84:	01045783          	lhu	a5,16(s0)
   11c88:	6438                	ld	a4,72(s0)
   11c8a:	780c                	ld	a1,48(s0)
   11c8c:	8b91                	andi	a5,a5,4
   11c8e:	c799                	beqz	a5,11c9c <__sflush_r+0x6c>
   11c90:	4414                	lw	a3,8(s0)
   11c92:	6c3c                	ld	a5,88(s0)
   11c94:	8e15                	sub	a2,a2,a3
   11c96:	c399                	beqz	a5,11c9c <__sflush_r+0x6c>
   11c98:	583c                	lw	a5,112(s0)
   11c9a:	8e1d                	sub	a2,a2,a5
   11c9c:	4681                	li	a3,0
   11c9e:	854e                	mv	a0,s3
   11ca0:	9702                	jalr	a4
   11ca2:	57fd                	li	a5,-1
   11ca4:	0cf51063          	bne	a0,a5,11d64 <__sflush_r+0x134>
   11ca8:	0009a703          	lw	a4,0(s3)
   11cac:	01041783          	lh	a5,16(s0)
   11cb0:	cf6d                	beqz	a4,11daa <__sflush_r+0x17a>
   11cb2:	46f5                	li	a3,29
   11cb4:	00d70563          	beq	a4,a3,11cbe <__sflush_r+0x8e>
   11cb8:	46d9                	li	a3,22
   11cba:	0ed71e63          	bne	a4,a3,11db6 <__sflush_r+0x186>
   11cbe:	6c14                	ld	a3,24(s0)
   11cc0:	777d                	lui	a4,0xfffff
   11cc2:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb0cf>
   11cc6:	8ff9                	and	a5,a5,a4
   11cc8:	00f41823          	sh	a5,16(s0)
   11ccc:	00042423          	sw	zero,8(s0)
   11cd0:	e014                	sd	a3,0(s0)
   11cd2:	6c2c                	ld	a1,88(s0)
   11cd4:	0099a023          	sw	s1,0(s3)
   11cd8:	c991                	beqz	a1,11cec <__sflush_r+0xbc>
   11cda:	07440793          	addi	a5,s0,116
   11cde:	00f58563          	beq	a1,a5,11ce8 <__sflush_r+0xb8>
   11ce2:	854e                	mv	a0,s3
   11ce4:	230000ef          	jal	ra,11f14 <_free_r>
   11ce8:	04043c23          	sd	zero,88(s0)
   11cec:	4501                	li	a0,0
   11cee:	70a2                	ld	ra,40(sp)
   11cf0:	7402                	ld	s0,32(sp)
   11cf2:	64e2                	ld	s1,24(sp)
   11cf4:	6942                	ld	s2,16(sp)
   11cf6:	69a2                	ld	s3,8(sp)
   11cf8:	6145                	addi	sp,sp,48
   11cfa:	8082                	ret
   11cfc:	0185b903          	ld	s2,24(a1)
   11d00:	fe0906e3          	beqz	s2,11cec <__sflush_r+0xbc>
   11d04:	6184                	ld	s1,0(a1)
   11d06:	03079713          	slli	a4,a5,0x30
   11d0a:	9341                	srli	a4,a4,0x30
   11d0c:	8b0d                	andi	a4,a4,3
   11d0e:	0125b023          	sd	s2,0(a1)
   11d12:	412484bb          	subw	s1,s1,s2
   11d16:	4781                	li	a5,0
   11d18:	e311                	bnez	a4,11d1c <__sflush_r+0xec>
   11d1a:	519c                	lw	a5,32(a1)
   11d1c:	c45c                	sw	a5,12(s0)
   11d1e:	00904663          	bgtz	s1,11d2a <__sflush_r+0xfa>
   11d22:	b7e9                	j	11cec <__sflush_r+0xbc>
   11d24:	992a                	add	s2,s2,a0
   11d26:	fc9053e3          	blez	s1,11cec <__sflush_r+0xbc>
   11d2a:	603c                	ld	a5,64(s0)
   11d2c:	780c                	ld	a1,48(s0)
   11d2e:	86a6                	mv	a3,s1
   11d30:	864a                	mv	a2,s2
   11d32:	854e                	mv	a0,s3
   11d34:	9782                	jalr	a5
   11d36:	9c89                	subw	s1,s1,a0
   11d38:	fea046e3          	bgtz	a0,11d24 <__sflush_r+0xf4>
   11d3c:	01045783          	lhu	a5,16(s0)
   11d40:	70a2                	ld	ra,40(sp)
   11d42:	64e2                	ld	s1,24(sp)
   11d44:	0407e793          	ori	a5,a5,64
   11d48:	00f41823          	sh	a5,16(s0)
   11d4c:	7402                	ld	s0,32(sp)
   11d4e:	6942                	ld	s2,16(sp)
   11d50:	69a2                	ld	s3,8(sp)
   11d52:	557d                	li	a0,-1
   11d54:	6145                	addi	sp,sp,48
   11d56:	8082                	ret
   11d58:	59b8                	lw	a4,112(a1)
   11d5a:	f0e041e3          	bgtz	a4,11c5c <__sflush_r+0x2c>
   11d5e:	b779                	j	11cec <__sflush_r+0xbc>
   11d60:	6850                	ld	a2,144(s0)
   11d62:	b72d                	j	11c8c <__sflush_r+0x5c>
   11d64:	01045783          	lhu	a5,16(s0)
   11d68:	777d                	lui	a4,0xfffff
   11d6a:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb0cf>
   11d6e:	8ff9                	and	a5,a5,a4
   11d70:	6c14                	ld	a3,24(s0)
   11d72:	0107979b          	slliw	a5,a5,0x10
   11d76:	4107d79b          	sraiw	a5,a5,0x10
   11d7a:	6705                	lui	a4,0x1
   11d7c:	00f41823          	sh	a5,16(s0)
   11d80:	00042423          	sw	zero,8(s0)
   11d84:	e014                	sd	a3,0(s0)
   11d86:	8ff9                	and	a5,a5,a4
   11d88:	d7a9                	beqz	a5,11cd2 <__sflush_r+0xa2>
   11d8a:	e848                	sd	a0,144(s0)
   11d8c:	b799                	j	11cd2 <__sflush_r+0xa2>
   11d8e:	0009a783          	lw	a5,0(s3)
   11d92:	ee0789e3          	beqz	a5,11c84 <__sflush_r+0x54>
   11d96:	4775                	li	a4,29
   11d98:	00e78563          	beq	a5,a4,11da2 <__sflush_r+0x172>
   11d9c:	4759                	li	a4,22
   11d9e:	f8e79fe3          	bne	a5,a4,11d3c <__sflush_r+0x10c>
   11da2:	0099a023          	sw	s1,0(s3)
   11da6:	4501                	li	a0,0
   11da8:	b799                	j	11cee <__sflush_r+0xbe>
   11daa:	777d                	lui	a4,0xfffff
   11dac:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb0cf>
   11db0:	6c14                	ld	a3,24(s0)
   11db2:	8ff9                	and	a5,a5,a4
   11db4:	b7d9                	j	11d7a <__sflush_r+0x14a>
   11db6:	0407e793          	ori	a5,a5,64
   11dba:	00f41823          	sh	a5,16(s0)
   11dbe:	557d                	li	a0,-1
   11dc0:	b73d                	j	11cee <__sflush_r+0xbe>

0000000000011dc2 <_fflush_r>:
   11dc2:	1101                	addi	sp,sp,-32
   11dc4:	e822                	sd	s0,16(sp)
   11dc6:	ec06                	sd	ra,24(sp)
   11dc8:	842a                	mv	s0,a0
   11dca:	c119                	beqz	a0,11dd0 <_fflush_r+0xe>
   11dcc:	493c                	lw	a5,80(a0)
   11dce:	cb89                	beqz	a5,11de0 <_fflush_r+0x1e>
   11dd0:	01059783          	lh	a5,16(a1)
   11dd4:	ef89                	bnez	a5,11dee <_fflush_r+0x2c>
   11dd6:	60e2                	ld	ra,24(sp)
   11dd8:	6442                	ld	s0,16(sp)
   11dda:	4501                	li	a0,0
   11ddc:	6105                	addi	sp,sp,32
   11dde:	8082                	ret
   11de0:	e42e                	sd	a1,8(sp)
   11de2:	961fe0ef          	jal	ra,10742 <__sinit>
   11de6:	65a2                	ld	a1,8(sp)
   11de8:	01059783          	lh	a5,16(a1)
   11dec:	d7ed                	beqz	a5,11dd6 <_fflush_r+0x14>
   11dee:	8522                	mv	a0,s0
   11df0:	6442                	ld	s0,16(sp)
   11df2:	60e2                	ld	ra,24(sp)
   11df4:	6105                	addi	sp,sp,32
   11df6:	bd2d                	j	11c30 <__sflush_r>

0000000000011df8 <fflush>:
   11df8:	cd1d                	beqz	a0,11e36 <fflush+0x3e>
   11dfa:	1101                	addi	sp,sp,-32
   11dfc:	e822                	sd	s0,16(sp)
   11dfe:	842a                	mv	s0,a0
   11e00:	7601b503          	ld	a0,1888(gp) # 14690 <_impure_ptr>
   11e04:	ec06                	sd	ra,24(sp)
   11e06:	c119                	beqz	a0,11e0c <fflush+0x14>
   11e08:	493c                	lw	a5,80(a0)
   11e0a:	cf91                	beqz	a5,11e26 <fflush+0x2e>
   11e0c:	01041783          	lh	a5,16(s0)
   11e10:	e791                	bnez	a5,11e1c <fflush+0x24>
   11e12:	60e2                	ld	ra,24(sp)
   11e14:	6442                	ld	s0,16(sp)
   11e16:	4501                	li	a0,0
   11e18:	6105                	addi	sp,sp,32
   11e1a:	8082                	ret
   11e1c:	85a2                	mv	a1,s0
   11e1e:	6442                	ld	s0,16(sp)
   11e20:	60e2                	ld	ra,24(sp)
   11e22:	6105                	addi	sp,sp,32
   11e24:	b531                	j	11c30 <__sflush_r>
   11e26:	e42a                	sd	a0,8(sp)
   11e28:	91bfe0ef          	jal	ra,10742 <__sinit>
   11e2c:	01041783          	lh	a5,16(s0)
   11e30:	6522                	ld	a0,8(sp)
   11e32:	d3e5                	beqz	a5,11e12 <fflush+0x1a>
   11e34:	b7e5                	j	11e1c <fflush+0x24>
   11e36:	7501b503          	ld	a0,1872(gp) # 14680 <_global_impure_ptr>
   11e3a:	65c9                	lui	a1,0x12
   11e3c:	dc258593          	addi	a1,a1,-574 # 11dc2 <_fflush_r>
   11e40:	d0bfe06f          	j	10b4a <_fwalk_reent>

0000000000011e44 <_malloc_trim_r>:
   11e44:	7179                	addi	sp,sp,-48
   11e46:	e44e                	sd	s3,8(sp)
   11e48:	69d1                	lui	s3,0x14
   11e4a:	f022                	sd	s0,32(sp)
   11e4c:	ec26                	sd	s1,24(sp)
   11e4e:	e84a                	sd	s2,16(sp)
   11e50:	e052                	sd	s4,0(sp)
   11e52:	f406                	sd	ra,40(sp)
   11e54:	8a2e                	mv	s4,a1
   11e56:	892a                	mv	s2,a0
   11e58:	e5898993          	addi	s3,s3,-424 # 13e58 <__malloc_av_>
   11e5c:	ddeff0ef          	jal	ra,1143a <__malloc_lock>
   11e60:	0109b703          	ld	a4,16(s3)
   11e64:	6785                	lui	a5,0x1
   11e66:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   11e6a:	6704                	ld	s1,8(a4)
   11e6c:	41440433          	sub	s0,s0,s4
   11e70:	98f1                	andi	s1,s1,-4
   11e72:	9426                	add	s0,s0,s1
   11e74:	8031                	srli	s0,s0,0xc
   11e76:	147d                	addi	s0,s0,-1
   11e78:	0432                	slli	s0,s0,0xc
   11e7a:	00f44b63          	blt	s0,a5,11e90 <_malloc_trim_r+0x4c>
   11e7e:	4581                	li	a1,0
   11e80:	854a                	mv	a0,s2
   11e82:	9c3ff0ef          	jal	ra,11844 <_sbrk_r>
   11e86:	0109b783          	ld	a5,16(s3)
   11e8a:	97a6                	add	a5,a5,s1
   11e8c:	00f50e63          	beq	a0,a5,11ea8 <_malloc_trim_r+0x64>
   11e90:	854a                	mv	a0,s2
   11e92:	daaff0ef          	jal	ra,1143c <__malloc_unlock>
   11e96:	70a2                	ld	ra,40(sp)
   11e98:	7402                	ld	s0,32(sp)
   11e9a:	64e2                	ld	s1,24(sp)
   11e9c:	6942                	ld	s2,16(sp)
   11e9e:	69a2                	ld	s3,8(sp)
   11ea0:	6a02                	ld	s4,0(sp)
   11ea2:	4501                	li	a0,0
   11ea4:	6145                	addi	sp,sp,48
   11ea6:	8082                	ret
   11ea8:	408005b3          	neg	a1,s0
   11eac:	854a                	mv	a0,s2
   11eae:	997ff0ef          	jal	ra,11844 <_sbrk_r>
   11eb2:	57fd                	li	a5,-1
   11eb4:	02f50b63          	beq	a0,a5,11eea <_malloc_trim_r+0xa6>
   11eb8:	67d1                	lui	a5,0x14
   11eba:	70878793          	addi	a5,a5,1800 # 14708 <__malloc_current_mallinfo>
   11ebe:	4398                	lw	a4,0(a5)
   11ec0:	0109b683          	ld	a3,16(s3)
   11ec4:	8c81                	sub	s1,s1,s0
   11ec6:	0014e493          	ori	s1,s1,1
   11eca:	4087043b          	subw	s0,a4,s0
   11ece:	854a                	mv	a0,s2
   11ed0:	e684                	sd	s1,8(a3)
   11ed2:	c380                	sw	s0,0(a5)
   11ed4:	d68ff0ef          	jal	ra,1143c <__malloc_unlock>
   11ed8:	70a2                	ld	ra,40(sp)
   11eda:	7402                	ld	s0,32(sp)
   11edc:	64e2                	ld	s1,24(sp)
   11ede:	6942                	ld	s2,16(sp)
   11ee0:	69a2                	ld	s3,8(sp)
   11ee2:	6a02                	ld	s4,0(sp)
   11ee4:	4505                	li	a0,1
   11ee6:	6145                	addi	sp,sp,48
   11ee8:	8082                	ret
   11eea:	4581                	li	a1,0
   11eec:	854a                	mv	a0,s2
   11eee:	957ff0ef          	jal	ra,11844 <_sbrk_r>
   11ef2:	0109b703          	ld	a4,16(s3)
   11ef6:	46fd                	li	a3,31
   11ef8:	40e507b3          	sub	a5,a0,a4
   11efc:	f8f6dae3          	bge	a3,a5,11e90 <_malloc_trim_r+0x4c>
   11f00:	7681b683          	ld	a3,1896(gp) # 14698 <__malloc_sbrk_base>
   11f04:	0017e793          	ori	a5,a5,1
   11f08:	e71c                	sd	a5,8(a4)
   11f0a:	8d15                	sub	a0,a0,a3
   11f0c:	66d1                	lui	a3,0x14
   11f0e:	70a6a423          	sw	a0,1800(a3) # 14708 <__malloc_current_mallinfo>
   11f12:	bfbd                	j	11e90 <_malloc_trim_r+0x4c>

0000000000011f14 <_free_r>:
   11f14:	c5ed                	beqz	a1,11ffe <_free_r+0xea>
   11f16:	1101                	addi	sp,sp,-32
   11f18:	e822                	sd	s0,16(sp)
   11f1a:	e426                	sd	s1,8(sp)
   11f1c:	842e                	mv	s0,a1
   11f1e:	84aa                	mv	s1,a0
   11f20:	ec06                	sd	ra,24(sp)
   11f22:	d18ff0ef          	jal	ra,1143a <__malloc_lock>
   11f26:	ff843503          	ld	a0,-8(s0)
   11f2a:	ff040713          	addi	a4,s0,-16
   11f2e:	65d1                	lui	a1,0x14
   11f30:	ffe57793          	andi	a5,a0,-2
   11f34:	00f70633          	add	a2,a4,a5
   11f38:	e5858593          	addi	a1,a1,-424 # 13e58 <__malloc_av_>
   11f3c:	6614                	ld	a3,8(a2)
   11f3e:	0105b803          	ld	a6,16(a1)
   11f42:	9af1                	andi	a3,a3,-4
   11f44:	14c80063          	beq	a6,a2,12084 <_free_r+0x170>
   11f48:	e614                	sd	a3,8(a2)
   11f4a:	8905                	andi	a0,a0,1
   11f4c:	00d60833          	add	a6,a2,a3
   11f50:	e141                	bnez	a0,11fd0 <_free_r+0xbc>
   11f52:	ff043303          	ld	t1,-16(s0)
   11f56:	00883803          	ld	a6,8(a6)
   11f5a:	6551                	lui	a0,0x14
   11f5c:	40670733          	sub	a4,a4,t1
   11f60:	01073883          	ld	a7,16(a4)
   11f64:	e6850513          	addi	a0,a0,-408 # 13e68 <__malloc_av_+0x10>
   11f68:	979a                	add	a5,a5,t1
   11f6a:	00187813          	andi	a6,a6,1
   11f6e:	0ea88863          	beq	a7,a0,1205e <_free_r+0x14a>
   11f72:	01873303          	ld	t1,24(a4)
   11f76:	0068bc23          	sd	t1,24(a7)
   11f7a:	01133823          	sd	a7,16(t1)
   11f7e:	14080d63          	beqz	a6,120d8 <_free_r+0x1c4>
   11f82:	0017e693          	ori	a3,a5,1
   11f86:	e714                	sd	a3,8(a4)
   11f88:	e21c                	sd	a5,0(a2)
   11f8a:	1ff00693          	li	a3,511
   11f8e:	08f6e263          	bltu	a3,a5,12012 <_free_r+0xfe>
   11f92:	838d                	srli	a5,a5,0x3
   11f94:	0017869b          	addiw	a3,a5,1
   11f98:	0016969b          	slliw	a3,a3,0x1
   11f9c:	068e                	slli	a3,a3,0x3
   11f9e:	0085b803          	ld	a6,8(a1)
   11fa2:	96ae                	add	a3,a3,a1
   11fa4:	6288                	ld	a0,0(a3)
   11fa6:	4027d61b          	sraiw	a2,a5,0x2
   11faa:	4785                	li	a5,1
   11fac:	00c797b3          	sll	a5,a5,a2
   11fb0:	0107e7b3          	or	a5,a5,a6
   11fb4:	ff068613          	addi	a2,a3,-16
   11fb8:	ef10                	sd	a2,24(a4)
   11fba:	eb08                	sd	a0,16(a4)
   11fbc:	e59c                	sd	a5,8(a1)
   11fbe:	e298                	sd	a4,0(a3)
   11fc0:	ed18                	sd	a4,24(a0)
   11fc2:	6442                	ld	s0,16(sp)
   11fc4:	60e2                	ld	ra,24(sp)
   11fc6:	8526                	mv	a0,s1
   11fc8:	64a2                	ld	s1,8(sp)
   11fca:	6105                	addi	sp,sp,32
   11fcc:	c70ff06f          	j	1143c <__malloc_unlock>
   11fd0:	00883503          	ld	a0,8(a6)
   11fd4:	8905                	andi	a0,a0,1
   11fd6:	e50d                	bnez	a0,12000 <_free_r+0xec>
   11fd8:	6551                	lui	a0,0x14
   11fda:	97b6                	add	a5,a5,a3
   11fdc:	e6850513          	addi	a0,a0,-408 # 13e68 <__malloc_av_+0x10>
   11fe0:	6a14                	ld	a3,16(a2)
   11fe2:	0017e893          	ori	a7,a5,1
   11fe6:	00f70833          	add	a6,a4,a5
   11fea:	10a68163          	beq	a3,a0,120ec <_free_r+0x1d8>
   11fee:	6e10                	ld	a2,24(a2)
   11ff0:	ee90                	sd	a2,24(a3)
   11ff2:	ea14                	sd	a3,16(a2)
   11ff4:	01173423          	sd	a7,8(a4)
   11ff8:	00f83023          	sd	a5,0(a6)
   11ffc:	b779                	j	11f8a <_free_r+0x76>
   11ffe:	8082                	ret
   12000:	0017e693          	ori	a3,a5,1
   12004:	fed43c23          	sd	a3,-8(s0)
   12008:	e21c                	sd	a5,0(a2)
   1200a:	1ff00693          	li	a3,511
   1200e:	f8f6f2e3          	bgeu	a3,a5,11f92 <_free_r+0x7e>
   12012:	0097d693          	srli	a3,a5,0x9
   12016:	4611                	li	a2,4
   12018:	08d66f63          	bltu	a2,a3,120b6 <_free_r+0x1a2>
   1201c:	0067d693          	srli	a3,a5,0x6
   12020:	0396851b          	addiw	a0,a3,57
   12024:	0015151b          	slliw	a0,a0,0x1
   12028:	0386861b          	addiw	a2,a3,56
   1202c:	050e                	slli	a0,a0,0x3
   1202e:	952e                	add	a0,a0,a1
   12030:	6114                	ld	a3,0(a0)
   12032:	1541                	addi	a0,a0,-16
   12034:	0cd50563          	beq	a0,a3,120fe <_free_r+0x1ea>
   12038:	6690                	ld	a2,8(a3)
   1203a:	9a71                	andi	a2,a2,-4
   1203c:	00c7f563          	bgeu	a5,a2,12046 <_free_r+0x132>
   12040:	6a94                	ld	a3,16(a3)
   12042:	fed51be3          	bne	a0,a3,12038 <_free_r+0x124>
   12046:	6e88                	ld	a0,24(a3)
   12048:	ef08                	sd	a0,24(a4)
   1204a:	eb14                	sd	a3,16(a4)
   1204c:	6442                	ld	s0,16(sp)
   1204e:	e918                	sd	a4,16(a0)
   12050:	60e2                	ld	ra,24(sp)
   12052:	8526                	mv	a0,s1
   12054:	64a2                	ld	s1,8(sp)
   12056:	ee98                	sd	a4,24(a3)
   12058:	6105                	addi	sp,sp,32
   1205a:	be2ff06f          	j	1143c <__malloc_unlock>
   1205e:	0e081c63          	bnez	a6,12156 <_free_r+0x242>
   12062:	6e0c                	ld	a1,24(a2)
   12064:	6a10                	ld	a2,16(a2)
   12066:	97b6                	add	a5,a5,a3
   12068:	6442                	ld	s0,16(sp)
   1206a:	ee0c                	sd	a1,24(a2)
   1206c:	e990                	sd	a2,16(a1)
   1206e:	0017e693          	ori	a3,a5,1
   12072:	60e2                	ld	ra,24(sp)
   12074:	e714                	sd	a3,8(a4)
   12076:	8526                	mv	a0,s1
   12078:	973e                	add	a4,a4,a5
   1207a:	64a2                	ld	s1,8(sp)
   1207c:	e31c                	sd	a5,0(a4)
   1207e:	6105                	addi	sp,sp,32
   12080:	bbcff06f          	j	1143c <__malloc_unlock>
   12084:	8905                	andi	a0,a0,1
   12086:	97b6                	add	a5,a5,a3
   12088:	e909                	bnez	a0,1209a <_free_r+0x186>
   1208a:	ff043503          	ld	a0,-16(s0)
   1208e:	8f09                	sub	a4,a4,a0
   12090:	6f14                	ld	a3,24(a4)
   12092:	6b10                	ld	a2,16(a4)
   12094:	97aa                	add	a5,a5,a0
   12096:	ee14                	sd	a3,24(a2)
   12098:	ea90                	sd	a2,16(a3)
   1209a:	0017e613          	ori	a2,a5,1
   1209e:	7701b683          	ld	a3,1904(gp) # 146a0 <__malloc_trim_threshold>
   120a2:	e710                	sd	a2,8(a4)
   120a4:	e998                	sd	a4,16(a1)
   120a6:	f0d7eee3          	bltu	a5,a3,11fc2 <_free_r+0xae>
   120aa:	7881b583          	ld	a1,1928(gp) # 146b8 <__malloc_top_pad>
   120ae:	8526                	mv	a0,s1
   120b0:	d95ff0ef          	jal	ra,11e44 <_malloc_trim_r>
   120b4:	b739                	j	11fc2 <_free_r+0xae>
   120b6:	4651                	li	a2,20
   120b8:	02d67263          	bgeu	a2,a3,120dc <_free_r+0x1c8>
   120bc:	05400613          	li	a2,84
   120c0:	04d66a63          	bltu	a2,a3,12114 <_free_r+0x200>
   120c4:	00c7d693          	srli	a3,a5,0xc
   120c8:	06f6851b          	addiw	a0,a3,111
   120cc:	0015151b          	slliw	a0,a0,0x1
   120d0:	06e6861b          	addiw	a2,a3,110
   120d4:	050e                	slli	a0,a0,0x3
   120d6:	bfa1                	j	1202e <_free_r+0x11a>
   120d8:	97b6                	add	a5,a5,a3
   120da:	b719                	j	11fe0 <_free_r+0xcc>
   120dc:	05c6851b          	addiw	a0,a3,92
   120e0:	0015151b          	slliw	a0,a0,0x1
   120e4:	05b6861b          	addiw	a2,a3,91
   120e8:	050e                	slli	a0,a0,0x3
   120ea:	b791                	j	1202e <_free_r+0x11a>
   120ec:	f598                	sd	a4,40(a1)
   120ee:	f198                	sd	a4,32(a1)
   120f0:	ef08                	sd	a0,24(a4)
   120f2:	eb08                	sd	a0,16(a4)
   120f4:	01173423          	sd	a7,8(a4)
   120f8:	00f83023          	sd	a5,0(a6)
   120fc:	b5d9                	j	11fc2 <_free_r+0xae>
   120fe:	0085b803          	ld	a6,8(a1)
   12102:	4026561b          	sraiw	a2,a2,0x2
   12106:	4785                	li	a5,1
   12108:	00c79633          	sll	a2,a5,a2
   1210c:	01066633          	or	a2,a2,a6
   12110:	e590                	sd	a2,8(a1)
   12112:	bf1d                	j	12048 <_free_r+0x134>
   12114:	15400613          	li	a2,340
   12118:	00d66c63          	bltu	a2,a3,12130 <_free_r+0x21c>
   1211c:	00f7d693          	srli	a3,a5,0xf
   12120:	0786851b          	addiw	a0,a3,120
   12124:	0015151b          	slliw	a0,a0,0x1
   12128:	0776861b          	addiw	a2,a3,119
   1212c:	050e                	slli	a0,a0,0x3
   1212e:	b701                	j	1202e <_free_r+0x11a>
   12130:	55400613          	li	a2,1364
   12134:	00d66c63          	bltu	a2,a3,1214c <_free_r+0x238>
   12138:	0127d693          	srli	a3,a5,0x12
   1213c:	07d6851b          	addiw	a0,a3,125
   12140:	0015151b          	slliw	a0,a0,0x1
   12144:	07c6861b          	addiw	a2,a3,124
   12148:	050e                	slli	a0,a0,0x3
   1214a:	b5d5                	j	1202e <_free_r+0x11a>
   1214c:	7f000513          	li	a0,2032
   12150:	07e00613          	li	a2,126
   12154:	bde9                	j	1202e <_free_r+0x11a>
   12156:	0017e693          	ori	a3,a5,1
   1215a:	e714                	sd	a3,8(a4)
   1215c:	e21c                	sd	a5,0(a2)
   1215e:	b595                	j	11fc2 <_free_r+0xae>

0000000000012160 <_lseek_r>:
   12160:	1101                	addi	sp,sp,-32
   12162:	872e                	mv	a4,a1
   12164:	e822                	sd	s0,16(sp)
   12166:	e426                	sd	s1,8(sp)
   12168:	85b2                	mv	a1,a2
   1216a:	842a                	mv	s0,a0
   1216c:	8636                	mv	a2,a3
   1216e:	853a                	mv	a0,a4
   12170:	ec06                	sd	ra,24(sp)
   12172:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   12176:	42a000ef          	jal	ra,125a0 <_lseek>
   1217a:	57fd                	li	a5,-1
   1217c:	00f50763          	beq	a0,a5,1218a <_lseek_r+0x2a>
   12180:	60e2                	ld	ra,24(sp)
   12182:	6442                	ld	s0,16(sp)
   12184:	64a2                	ld	s1,8(sp)
   12186:	6105                	addi	sp,sp,32
   12188:	8082                	ret
   1218a:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   1218e:	dbed                	beqz	a5,12180 <_lseek_r+0x20>
   12190:	60e2                	ld	ra,24(sp)
   12192:	c01c                	sw	a5,0(s0)
   12194:	6442                	ld	s0,16(sp)
   12196:	64a2                	ld	s1,8(sp)
   12198:	6105                	addi	sp,sp,32
   1219a:	8082                	ret

000000000001219c <__smakebuf_r>:
   1219c:	0105d783          	lhu	a5,16(a1)
   121a0:	7135                	addi	sp,sp,-160
   121a2:	e922                	sd	s0,144(sp)
   121a4:	ed06                	sd	ra,152(sp)
   121a6:	e526                	sd	s1,136(sp)
   121a8:	e14a                	sd	s2,128(sp)
   121aa:	fcce                	sd	s3,120(sp)
   121ac:	f8d2                	sd	s4,112(sp)
   121ae:	0027f713          	andi	a4,a5,2
   121b2:	842e                	mv	s0,a1
   121b4:	cf19                	beqz	a4,121d2 <__smakebuf_r+0x36>
   121b6:	07758793          	addi	a5,a1,119
   121ba:	e19c                	sd	a5,0(a1)
   121bc:	ed9c                	sd	a5,24(a1)
   121be:	4785                	li	a5,1
   121c0:	d19c                	sw	a5,32(a1)
   121c2:	60ea                	ld	ra,152(sp)
   121c4:	644a                	ld	s0,144(sp)
   121c6:	64aa                	ld	s1,136(sp)
   121c8:	690a                	ld	s2,128(sp)
   121ca:	79e6                	ld	s3,120(sp)
   121cc:	7a46                	ld	s4,112(sp)
   121ce:	610d                	addi	sp,sp,160
   121d0:	8082                	ret
   121d2:	01259583          	lh	a1,18(a1)
   121d6:	84aa                	mv	s1,a0
   121d8:	0605c863          	bltz	a1,12248 <__smakebuf_r+0xac>
   121dc:	0030                	addi	a2,sp,8
   121de:	29e000ef          	jal	ra,1247c <_fstat_r>
   121e2:	06054163          	bltz	a0,12244 <__smakebuf_r+0xa8>
   121e6:	4932                	lw	s2,12(sp)
   121e8:	67bd                	lui	a5,0xf
   121ea:	40000a13          	li	s4,1024
   121ee:	00f97933          	and	s2,s2,a5
   121f2:	6789                	lui	a5,0x2
   121f4:	40f90933          	sub	s2,s2,a5
   121f8:	6785                	lui	a5,0x1
   121fa:	00193913          	seqz	s2,s2
   121fe:	80078993          	addi	s3,a5,-2048 # 800 <register_fini-0xf8b0>
   12202:	85d2                	mv	a1,s4
   12204:	8526                	mv	a0,s1
   12206:	9cffe0ef          	jal	ra,10bd4 <_malloc_r>
   1220a:	01041783          	lh	a5,16(s0)
   1220e:	c939                	beqz	a0,12264 <__smakebuf_r+0xc8>
   12210:	6741                	lui	a4,0x10
   12212:	4ea70713          	addi	a4,a4,1258 # 104ea <_cleanup_r>
   12216:	ecb8                	sd	a4,88(s1)
   12218:	0807e793          	ori	a5,a5,128
   1221c:	00f41823          	sh	a5,16(s0)
   12220:	e008                	sd	a0,0(s0)
   12222:	ec08                	sd	a0,24(s0)
   12224:	03442023          	sw	s4,32(s0)
   12228:	06091163          	bnez	s2,1228a <__smakebuf_r+0xee>
   1222c:	0137e7b3          	or	a5,a5,s3
   12230:	60ea                	ld	ra,152(sp)
   12232:	00f41823          	sh	a5,16(s0)
   12236:	644a                	ld	s0,144(sp)
   12238:	64aa                	ld	s1,136(sp)
   1223a:	690a                	ld	s2,128(sp)
   1223c:	79e6                	ld	s3,120(sp)
   1223e:	7a46                	ld	s4,112(sp)
   12240:	610d                	addi	sp,sp,160
   12242:	8082                	ret
   12244:	01045783          	lhu	a5,16(s0)
   12248:	0807f793          	andi	a5,a5,128
   1224c:	4901                	li	s2,0
   1224e:	cb95                	beqz	a5,12282 <__smakebuf_r+0xe6>
   12250:	04000a13          	li	s4,64
   12254:	85d2                	mv	a1,s4
   12256:	8526                	mv	a0,s1
   12258:	97dfe0ef          	jal	ra,10bd4 <_malloc_r>
   1225c:	01041783          	lh	a5,16(s0)
   12260:	4981                	li	s3,0
   12262:	f55d                	bnez	a0,12210 <__smakebuf_r+0x74>
   12264:	2007f713          	andi	a4,a5,512
   12268:	ff29                	bnez	a4,121c2 <__smakebuf_r+0x26>
   1226a:	9bf1                	andi	a5,a5,-4
   1226c:	0027e793          	ori	a5,a5,2
   12270:	07740713          	addi	a4,s0,119
   12274:	00f41823          	sh	a5,16(s0)
   12278:	4785                	li	a5,1
   1227a:	e018                	sd	a4,0(s0)
   1227c:	ec18                	sd	a4,24(s0)
   1227e:	d01c                	sw	a5,32(s0)
   12280:	b789                	j	121c2 <__smakebuf_r+0x26>
   12282:	40000a13          	li	s4,1024
   12286:	4981                	li	s3,0
   12288:	bfad                	j	12202 <__smakebuf_r+0x66>
   1228a:	01241583          	lh	a1,18(s0)
   1228e:	8526                	mv	a0,s1
   12290:	226000ef          	jal	ra,124b6 <_isatty_r>
   12294:	e501                	bnez	a0,1229c <__smakebuf_r+0x100>
   12296:	01041783          	lh	a5,16(s0)
   1229a:	bf49                	j	1222c <__smakebuf_r+0x90>
   1229c:	01045783          	lhu	a5,16(s0)
   122a0:	9bf1                	andi	a5,a5,-4
   122a2:	0017e793          	ori	a5,a5,1
   122a6:	0107979b          	slliw	a5,a5,0x10
   122aa:	4107d79b          	sraiw	a5,a5,0x10
   122ae:	bfbd                	j	1222c <__smakebuf_r+0x90>

00000000000122b0 <__swhatbuf_r>:
   122b0:	7175                	addi	sp,sp,-144
   122b2:	e122                	sd	s0,128(sp)
   122b4:	842e                	mv	s0,a1
   122b6:	01259583          	lh	a1,18(a1)
   122ba:	fca6                	sd	s1,120(sp)
   122bc:	f8ca                	sd	s2,112(sp)
   122be:	e506                	sd	ra,136(sp)
   122c0:	84b2                	mv	s1,a2
   122c2:	8936                	mv	s2,a3
   122c4:	0205cc63          	bltz	a1,122fc <__swhatbuf_r+0x4c>
   122c8:	0030                	addi	a2,sp,8
   122ca:	1b2000ef          	jal	ra,1247c <_fstat_r>
   122ce:	02054763          	bltz	a0,122fc <__swhatbuf_r+0x4c>
   122d2:	47b2                	lw	a5,12(sp)
   122d4:	673d                	lui	a4,0xf
   122d6:	60aa                	ld	ra,136(sp)
   122d8:	8ff9                	and	a5,a5,a4
   122da:	6709                	lui	a4,0x2
   122dc:	8f99                	sub	a5,a5,a4
   122de:	640a                	ld	s0,128(sp)
   122e0:	0017b793          	seqz	a5,a5
   122e4:	00f92023          	sw	a5,0(s2)
   122e8:	40000793          	li	a5,1024
   122ec:	e09c                	sd	a5,0(s1)
   122ee:	6505                	lui	a0,0x1
   122f0:	74e6                	ld	s1,120(sp)
   122f2:	7946                	ld	s2,112(sp)
   122f4:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   122f8:	6149                	addi	sp,sp,144
   122fa:	8082                	ret
   122fc:	01041783          	lh	a5,16(s0)
   12300:	00092023          	sw	zero,0(s2)
   12304:	0807f793          	andi	a5,a5,128
   12308:	cb99                	beqz	a5,1231e <__swhatbuf_r+0x6e>
   1230a:	60aa                	ld	ra,136(sp)
   1230c:	640a                	ld	s0,128(sp)
   1230e:	04000793          	li	a5,64
   12312:	e09c                	sd	a5,0(s1)
   12314:	7946                	ld	s2,112(sp)
   12316:	74e6                	ld	s1,120(sp)
   12318:	4501                	li	a0,0
   1231a:	6149                	addi	sp,sp,144
   1231c:	8082                	ret
   1231e:	60aa                	ld	ra,136(sp)
   12320:	640a                	ld	s0,128(sp)
   12322:	40000793          	li	a5,1024
   12326:	e09c                	sd	a5,0(s1)
   12328:	7946                	ld	s2,112(sp)
   1232a:	74e6                	ld	s1,120(sp)
   1232c:	4501                	li	a0,0
   1232e:	6149                	addi	sp,sp,144
   12330:	8082                	ret

0000000000012332 <_read_r>:
   12332:	1101                	addi	sp,sp,-32
   12334:	872e                	mv	a4,a1
   12336:	e822                	sd	s0,16(sp)
   12338:	e426                	sd	s1,8(sp)
   1233a:	85b2                	mv	a1,a2
   1233c:	842a                	mv	s0,a0
   1233e:	8636                	mv	a2,a3
   12340:	853a                	mv	a0,a4
   12342:	ec06                	sd	ra,24(sp)
   12344:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   12348:	284000ef          	jal	ra,125cc <_read>
   1234c:	57fd                	li	a5,-1
   1234e:	00f50763          	beq	a0,a5,1235c <_read_r+0x2a>
   12352:	60e2                	ld	ra,24(sp)
   12354:	6442                	ld	s0,16(sp)
   12356:	64a2                	ld	s1,8(sp)
   12358:	6105                	addi	sp,sp,32
   1235a:	8082                	ret
   1235c:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   12360:	dbed                	beqz	a5,12352 <_read_r+0x20>
   12362:	60e2                	ld	ra,24(sp)
   12364:	c01c                	sw	a5,0(s0)
   12366:	6442                	ld	s0,16(sp)
   12368:	64a2                	ld	s1,8(sp)
   1236a:	6105                	addi	sp,sp,32
   1236c:	8082                	ret

000000000001236e <cleanup_glue>:
   1236e:	7179                	addi	sp,sp,-48
   12370:	e84a                	sd	s2,16(sp)
   12372:	0005b903          	ld	s2,0(a1)
   12376:	f022                	sd	s0,32(sp)
   12378:	ec26                	sd	s1,24(sp)
   1237a:	f406                	sd	ra,40(sp)
   1237c:	e44e                	sd	s3,8(sp)
   1237e:	e052                	sd	s4,0(sp)
   12380:	842e                	mv	s0,a1
   12382:	84aa                	mv	s1,a0
   12384:	02090b63          	beqz	s2,123ba <cleanup_glue+0x4c>
   12388:	00093983          	ld	s3,0(s2)
   1238c:	02098363          	beqz	s3,123b2 <cleanup_glue+0x44>
   12390:	0009ba03          	ld	s4,0(s3)
   12394:	000a0b63          	beqz	s4,123aa <cleanup_glue+0x3c>
   12398:	000a3583          	ld	a1,0(s4)
   1239c:	c199                	beqz	a1,123a2 <cleanup_glue+0x34>
   1239e:	fd1ff0ef          	jal	ra,1236e <cleanup_glue>
   123a2:	85d2                	mv	a1,s4
   123a4:	8526                	mv	a0,s1
   123a6:	b6fff0ef          	jal	ra,11f14 <_free_r>
   123aa:	85ce                	mv	a1,s3
   123ac:	8526                	mv	a0,s1
   123ae:	b67ff0ef          	jal	ra,11f14 <_free_r>
   123b2:	85ca                	mv	a1,s2
   123b4:	8526                	mv	a0,s1
   123b6:	b5fff0ef          	jal	ra,11f14 <_free_r>
   123ba:	85a2                	mv	a1,s0
   123bc:	7402                	ld	s0,32(sp)
   123be:	70a2                	ld	ra,40(sp)
   123c0:	6942                	ld	s2,16(sp)
   123c2:	69a2                	ld	s3,8(sp)
   123c4:	6a02                	ld	s4,0(sp)
   123c6:	8526                	mv	a0,s1
   123c8:	64e2                	ld	s1,24(sp)
   123ca:	6145                	addi	sp,sp,48
   123cc:	b6a1                	j	11f14 <_free_r>

00000000000123ce <_reclaim_reent>:
   123ce:	7601b783          	ld	a5,1888(gp) # 14690 <_impure_ptr>
   123d2:	0aa78463          	beq	a5,a0,1247a <_reclaim_reent+0xac>
   123d6:	7d2c                	ld	a1,120(a0)
   123d8:	7179                	addi	sp,sp,-48
   123da:	ec26                	sd	s1,24(sp)
   123dc:	f406                	sd	ra,40(sp)
   123de:	f022                	sd	s0,32(sp)
   123e0:	e84a                	sd	s2,16(sp)
   123e2:	e44e                	sd	s3,8(sp)
   123e4:	84aa                	mv	s1,a0
   123e6:	c58d                	beqz	a1,12410 <_reclaim_reent+0x42>
   123e8:	4901                	li	s2,0
   123ea:	20000993          	li	s3,512
   123ee:	012587b3          	add	a5,a1,s2
   123f2:	6380                	ld	s0,0(a5)
   123f4:	c801                	beqz	s0,12404 <_reclaim_reent+0x36>
   123f6:	85a2                	mv	a1,s0
   123f8:	6000                	ld	s0,0(s0)
   123fa:	8526                	mv	a0,s1
   123fc:	b19ff0ef          	jal	ra,11f14 <_free_r>
   12400:	f87d                	bnez	s0,123f6 <_reclaim_reent+0x28>
   12402:	7cac                	ld	a1,120(s1)
   12404:	0921                	addi	s2,s2,8
   12406:	ff3914e3          	bne	s2,s3,123ee <_reclaim_reent+0x20>
   1240a:	8526                	mv	a0,s1
   1240c:	b09ff0ef          	jal	ra,11f14 <_free_r>
   12410:	70ac                	ld	a1,96(s1)
   12412:	c581                	beqz	a1,1241a <_reclaim_reent+0x4c>
   12414:	8526                	mv	a0,s1
   12416:	affff0ef          	jal	ra,11f14 <_free_r>
   1241a:	1f84b403          	ld	s0,504(s1)
   1241e:	cc01                	beqz	s0,12436 <_reclaim_reent+0x68>
   12420:	20048913          	addi	s2,s1,512
   12424:	01240963          	beq	s0,s2,12436 <_reclaim_reent+0x68>
   12428:	85a2                	mv	a1,s0
   1242a:	6000                	ld	s0,0(s0)
   1242c:	8526                	mv	a0,s1
   1242e:	ae7ff0ef          	jal	ra,11f14 <_free_r>
   12432:	fe891be3          	bne	s2,s0,12428 <_reclaim_reent+0x5a>
   12436:	64cc                	ld	a1,136(s1)
   12438:	c581                	beqz	a1,12440 <_reclaim_reent+0x72>
   1243a:	8526                	mv	a0,s1
   1243c:	ad9ff0ef          	jal	ra,11f14 <_free_r>
   12440:	48bc                	lw	a5,80(s1)
   12442:	c78d                	beqz	a5,1246c <_reclaim_reent+0x9e>
   12444:	6cbc                	ld	a5,88(s1)
   12446:	8526                	mv	a0,s1
   12448:	9782                	jalr	a5
   1244a:	5204b403          	ld	s0,1312(s1)
   1244e:	cc19                	beqz	s0,1246c <_reclaim_reent+0x9e>
   12450:	600c                	ld	a1,0(s0)
   12452:	c581                	beqz	a1,1245a <_reclaim_reent+0x8c>
   12454:	8526                	mv	a0,s1
   12456:	f19ff0ef          	jal	ra,1236e <cleanup_glue>
   1245a:	85a2                	mv	a1,s0
   1245c:	7402                	ld	s0,32(sp)
   1245e:	70a2                	ld	ra,40(sp)
   12460:	6942                	ld	s2,16(sp)
   12462:	69a2                	ld	s3,8(sp)
   12464:	8526                	mv	a0,s1
   12466:	64e2                	ld	s1,24(sp)
   12468:	6145                	addi	sp,sp,48
   1246a:	b46d                	j	11f14 <_free_r>
   1246c:	70a2                	ld	ra,40(sp)
   1246e:	7402                	ld	s0,32(sp)
   12470:	64e2                	ld	s1,24(sp)
   12472:	6942                	ld	s2,16(sp)
   12474:	69a2                	ld	s3,8(sp)
   12476:	6145                	addi	sp,sp,48
   12478:	8082                	ret
   1247a:	8082                	ret

000000000001247c <_fstat_r>:
   1247c:	1101                	addi	sp,sp,-32
   1247e:	872e                	mv	a4,a1
   12480:	e822                	sd	s0,16(sp)
   12482:	e426                	sd	s1,8(sp)
   12484:	842a                	mv	s0,a0
   12486:	85b2                	mv	a1,a2
   12488:	853a                	mv	a0,a4
   1248a:	ec06                	sd	ra,24(sp)
   1248c:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   12490:	0aa000ef          	jal	ra,1253a <_fstat>
   12494:	57fd                	li	a5,-1
   12496:	00f50763          	beq	a0,a5,124a4 <_fstat_r+0x28>
   1249a:	60e2                	ld	ra,24(sp)
   1249c:	6442                	ld	s0,16(sp)
   1249e:	64a2                	ld	s1,8(sp)
   124a0:	6105                	addi	sp,sp,32
   124a2:	8082                	ret
   124a4:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   124a8:	dbed                	beqz	a5,1249a <_fstat_r+0x1e>
   124aa:	60e2                	ld	ra,24(sp)
   124ac:	c01c                	sw	a5,0(s0)
   124ae:	6442                	ld	s0,16(sp)
   124b0:	64a2                	ld	s1,8(sp)
   124b2:	6105                	addi	sp,sp,32
   124b4:	8082                	ret

00000000000124b6 <_isatty_r>:
   124b6:	1101                	addi	sp,sp,-32
   124b8:	e822                	sd	s0,16(sp)
   124ba:	e426                	sd	s1,8(sp)
   124bc:	842a                	mv	s0,a0
   124be:	852e                	mv	a0,a1
   124c0:	ec06                	sd	ra,24(sp)
   124c2:	7801a823          	sw	zero,1936(gp) # 146c0 <errno>
   124c6:	0b4000ef          	jal	ra,1257a <_isatty>
   124ca:	57fd                	li	a5,-1
   124cc:	00f50763          	beq	a0,a5,124da <_isatty_r+0x24>
   124d0:	60e2                	ld	ra,24(sp)
   124d2:	6442                	ld	s0,16(sp)
   124d4:	64a2                	ld	s1,8(sp)
   124d6:	6105                	addi	sp,sp,32
   124d8:	8082                	ret
   124da:	7901a783          	lw	a5,1936(gp) # 146c0 <errno>
   124de:	dbed                	beqz	a5,124d0 <_isatty_r+0x1a>
   124e0:	60e2                	ld	ra,24(sp)
   124e2:	c01c                	sw	a5,0(s0)
   124e4:	6442                	ld	s0,16(sp)
   124e6:	64a2                	ld	s1,8(sp)
   124e8:	6105                	addi	sp,sp,32
   124ea:	8082                	ret

00000000000124ec <_close>:
   124ec:	1141                	addi	sp,sp,-16
   124ee:	e406                	sd	ra,8(sp)
   124f0:	e022                	sd	s0,0(sp)
   124f2:	03900893          	li	a7,57
   124f6:	00000073          	ecall
   124fa:	842a                	mv	s0,a0
   124fc:	00054763          	bltz	a0,1250a <_close+0x1e>
   12500:	2501                	sext.w	a0,a0
   12502:	60a2                	ld	ra,8(sp)
   12504:	6402                	ld	s0,0(sp)
   12506:	0141                	addi	sp,sp,16
   12508:	8082                	ret
   1250a:	1c8000ef          	jal	ra,126d2 <__errno>
   1250e:	4080043b          	negw	s0,s0
   12512:	c100                	sw	s0,0(a0)
   12514:	557d                	li	a0,-1
   12516:	b7f5                	j	12502 <_close+0x16>

0000000000012518 <_exit>:
   12518:	05d00893          	li	a7,93
   1251c:	00000073          	ecall
   12520:	00054363          	bltz	a0,12526 <_exit+0xe>
   12524:	a001                	j	12524 <_exit+0xc>
   12526:	1141                	addi	sp,sp,-16
   12528:	e022                	sd	s0,0(sp)
   1252a:	842a                	mv	s0,a0
   1252c:	e406                	sd	ra,8(sp)
   1252e:	4080043b          	negw	s0,s0
   12532:	1a0000ef          	jal	ra,126d2 <__errno>
   12536:	c100                	sw	s0,0(a0)
   12538:	a001                	j	12538 <_exit+0x20>

000000000001253a <_fstat>:
   1253a:	7135                	addi	sp,sp,-160
   1253c:	e526                	sd	s1,136(sp)
   1253e:	ed06                	sd	ra,152(sp)
   12540:	84ae                	mv	s1,a1
   12542:	e922                	sd	s0,144(sp)
   12544:	05000893          	li	a7,80
   12548:	858a                	mv	a1,sp
   1254a:	00000073          	ecall
   1254e:	842a                	mv	s0,a0
   12550:	00054e63          	bltz	a0,1256c <_fstat+0x32>
   12554:	0005041b          	sext.w	s0,a0
   12558:	8526                	mv	a0,s1
   1255a:	858a                	mv	a1,sp
   1255c:	11c000ef          	jal	ra,12678 <_conv_stat>
   12560:	60ea                	ld	ra,152(sp)
   12562:	8522                	mv	a0,s0
   12564:	644a                	ld	s0,144(sp)
   12566:	64aa                	ld	s1,136(sp)
   12568:	610d                	addi	sp,sp,160
   1256a:	8082                	ret
   1256c:	4080043b          	negw	s0,s0
   12570:	162000ef          	jal	ra,126d2 <__errno>
   12574:	c100                	sw	s0,0(a0)
   12576:	547d                	li	s0,-1
   12578:	b7c5                	j	12558 <_fstat+0x1e>

000000000001257a <_isatty>:
   1257a:	7119                	addi	sp,sp,-128
   1257c:	002c                	addi	a1,sp,8
   1257e:	fc86                	sd	ra,120(sp)
   12580:	fbbff0ef          	jal	ra,1253a <_fstat>
   12584:	57fd                	li	a5,-1
   12586:	00f50963          	beq	a0,a5,12598 <_isatty+0x1e>
   1258a:	4532                	lw	a0,12(sp)
   1258c:	70e6                	ld	ra,120(sp)
   1258e:	40d5551b          	sraiw	a0,a0,0xd
   12592:	8905                	andi	a0,a0,1
   12594:	6109                	addi	sp,sp,128
   12596:	8082                	ret
   12598:	70e6                	ld	ra,120(sp)
   1259a:	4501                	li	a0,0
   1259c:	6109                	addi	sp,sp,128
   1259e:	8082                	ret

00000000000125a0 <_lseek>:
   125a0:	1141                	addi	sp,sp,-16
   125a2:	e406                	sd	ra,8(sp)
   125a4:	e022                	sd	s0,0(sp)
   125a6:	03e00893          	li	a7,62
   125aa:	00000073          	ecall
   125ae:	842a                	mv	s0,a0
   125b0:	00054763          	bltz	a0,125be <_lseek+0x1e>
   125b4:	60a2                	ld	ra,8(sp)
   125b6:	8522                	mv	a0,s0
   125b8:	6402                	ld	s0,0(sp)
   125ba:	0141                	addi	sp,sp,16
   125bc:	8082                	ret
   125be:	4080043b          	negw	s0,s0
   125c2:	110000ef          	jal	ra,126d2 <__errno>
   125c6:	c100                	sw	s0,0(a0)
   125c8:	547d                	li	s0,-1
   125ca:	b7ed                	j	125b4 <_lseek+0x14>

00000000000125cc <_read>:
   125cc:	1141                	addi	sp,sp,-16
   125ce:	e406                	sd	ra,8(sp)
   125d0:	e022                	sd	s0,0(sp)
   125d2:	03f00893          	li	a7,63
   125d6:	00000073          	ecall
   125da:	842a                	mv	s0,a0
   125dc:	00054763          	bltz	a0,125ea <_read+0x1e>
   125e0:	60a2                	ld	ra,8(sp)
   125e2:	8522                	mv	a0,s0
   125e4:	6402                	ld	s0,0(sp)
   125e6:	0141                	addi	sp,sp,16
   125e8:	8082                	ret
   125ea:	4080043b          	negw	s0,s0
   125ee:	0e4000ef          	jal	ra,126d2 <__errno>
   125f2:	c100                	sw	s0,0(a0)
   125f4:	547d                	li	s0,-1
   125f6:	b7ed                	j	125e0 <_read+0x14>

00000000000125f8 <_sbrk>:
   125f8:	7981b703          	ld	a4,1944(gp) # 146c8 <heap_end.0>
   125fc:	1141                	addi	sp,sp,-16
   125fe:	e406                	sd	ra,8(sp)
   12600:	87aa                	mv	a5,a0
   12602:	ef01                	bnez	a4,1261a <_sbrk+0x22>
   12604:	0d600893          	li	a7,214
   12608:	4501                	li	a0,0
   1260a:	00000073          	ecall
   1260e:	567d                	li	a2,-1
   12610:	872a                	mv	a4,a0
   12612:	02c50563          	beq	a0,a2,1263c <_sbrk+0x44>
   12616:	78a1bc23          	sd	a0,1944(gp) # 146c8 <heap_end.0>
   1261a:	0d600893          	li	a7,214
   1261e:	00e78533          	add	a0,a5,a4
   12622:	00000073          	ecall
   12626:	7981b703          	ld	a4,1944(gp) # 146c8 <heap_end.0>
   1262a:	97ba                	add	a5,a5,a4
   1262c:	00f51863          	bne	a0,a5,1263c <_sbrk+0x44>
   12630:	60a2                	ld	ra,8(sp)
   12632:	78a1bc23          	sd	a0,1944(gp) # 146c8 <heap_end.0>
   12636:	853a                	mv	a0,a4
   12638:	0141                	addi	sp,sp,16
   1263a:	8082                	ret
   1263c:	096000ef          	jal	ra,126d2 <__errno>
   12640:	60a2                	ld	ra,8(sp)
   12642:	47b1                	li	a5,12
   12644:	c11c                	sw	a5,0(a0)
   12646:	557d                	li	a0,-1
   12648:	0141                	addi	sp,sp,16
   1264a:	8082                	ret

000000000001264c <_write>:
   1264c:	1141                	addi	sp,sp,-16
   1264e:	e406                	sd	ra,8(sp)
   12650:	e022                	sd	s0,0(sp)
   12652:	04000893          	li	a7,64
   12656:	00000073          	ecall
   1265a:	842a                	mv	s0,a0
   1265c:	00054763          	bltz	a0,1266a <_write+0x1e>
   12660:	60a2                	ld	ra,8(sp)
   12662:	8522                	mv	a0,s0
   12664:	6402                	ld	s0,0(sp)
   12666:	0141                	addi	sp,sp,16
   12668:	8082                	ret
   1266a:	4080043b          	negw	s0,s0
   1266e:	064000ef          	jal	ra,126d2 <__errno>
   12672:	c100                	sw	s0,0(a0)
   12674:	547d                	li	s0,-1
   12676:	b7ed                	j	12660 <_write+0x14>

0000000000012678 <_conv_stat>:
   12678:	0005b383          	ld	t2,0(a1)
   1267c:	0085b283          	ld	t0,8(a1)
   12680:	0105af83          	lw	t6,16(a1)
   12684:	0145af03          	lw	t5,20(a1)
   12688:	0185ae83          	lw	t4,24(a1)
   1268c:	01c5ae03          	lw	t3,28(a1)
   12690:	0205b303          	ld	t1,32(a1)
   12694:	0305b883          	ld	a7,48(a1)
   12698:	0405b803          	ld	a6,64(a1)
   1269c:	5d90                	lw	a2,56(a1)
   1269e:	65b4                	ld	a3,72(a1)
   126a0:	6db8                	ld	a4,88(a1)
   126a2:	75bc                	ld	a5,104(a1)
   126a4:	00751023          	sh	t2,0(a0)
   126a8:	00551123          	sh	t0,2(a0)
   126ac:	01f52223          	sw	t6,4(a0)
   126b0:	01e51423          	sh	t5,8(a0)
   126b4:	01d51523          	sh	t4,10(a0)
   126b8:	01c51623          	sh	t3,12(a0)
   126bc:	00651723          	sh	t1,14(a0)
   126c0:	01153823          	sd	a7,16(a0)
   126c4:	05053823          	sd	a6,80(a0)
   126c8:	e530                	sd	a2,72(a0)
   126ca:	ed14                	sd	a3,24(a0)
   126cc:	f518                	sd	a4,40(a0)
   126ce:	fd1c                	sd	a5,56(a0)
   126d0:	8082                	ret

00000000000126d2 <__errno>:
   126d2:	7601b503          	ld	a0,1888(gp) # 14690 <_impure_ptr>
   126d6:	8082                	ret
