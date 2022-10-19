
func:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c789                	beqz	a5,100be <register_fini+0xe>
   100b6:	6541                	lui	a0,0x10
   100b8:	7a250513          	addi	a0,a0,1954 # 107a2 <__libc_fini_array>
   100bc:	a999                	j	10512 <atexit>
   100be:	8082                	ret

00000000000100c0 <_start>:
   100c0:	00004197          	auipc	gp,0x4
   100c4:	eb018193          	addi	gp,gp,-336 # 13f70 <__global_pointer$>
   100c8:	77818513          	addi	a0,gp,1912 # 146e8 <__malloc_max_total_mem>
   100cc:	00004617          	auipc	a2,0x4
   100d0:	6a460613          	addi	a2,a2,1700 # 14770 <__BSS_END__>
   100d4:	8e09                	sub	a2,a2,a0
   100d6:	4581                	li	a1,0
   100d8:	1b8000ef          	jal	ra,10290 <memset>
   100dc:	00000517          	auipc	a0,0x0
   100e0:	43650513          	addi	a0,a0,1078 # 10512 <atexit>
   100e4:	c519                	beqz	a0,100f2 <_start+0x32>
   100e6:	00000517          	auipc	a0,0x0
   100ea:	6bc50513          	addi	a0,a0,1724 # 107a2 <__libc_fini_array>
   100ee:	424000ef          	jal	ra,10512 <atexit>
   100f2:	134000ef          	jal	ra,10226 <__libc_init_array>
   100f6:	4502                	lw	a0,0(sp)
   100f8:	002c                	addi	a1,sp,8
   100fa:	4601                	li	a2,0
   100fc:	0c8000ef          	jal	ra,101c4 <main>
   10100:	a221                	j	10208 <exit>

0000000000010102 <__do_global_dtors_aux>:
   10102:	7a01c703          	lbu	a4,1952(gp) # 14710 <completed.1>
   10106:	e715                	bnez	a4,10132 <__do_global_dtors_aux+0x30>
   10108:	1141                	addi	sp,sp,-16
   1010a:	e022                	sd	s0,0(sp)
   1010c:	843e                	mv	s0,a5
   1010e:	e406                	sd	ra,8(sp)
   10110:	00000793          	li	a5,0
   10114:	cb81                	beqz	a5,10124 <__do_global_dtors_aux+0x22>
   10116:	654d                	lui	a0,0x13
   10118:	73450513          	addi	a0,a0,1844 # 13734 <__FRAME_END__>
   1011c:	00000097          	auipc	ra,0x0
   10120:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10124:	4785                	li	a5,1
   10126:	60a2                	ld	ra,8(sp)
   10128:	7af18023          	sb	a5,1952(gp) # 14710 <completed.1>
   1012c:	6402                	ld	s0,0(sp)
   1012e:	0141                	addi	sp,sp,16
   10130:	8082                	ret
   10132:	8082                	ret

0000000000010134 <frame_dummy>:
   10134:	00000793          	li	a5,0
   10138:	cb91                	beqz	a5,1014c <frame_dummy+0x18>
   1013a:	654d                	lui	a0,0x13
   1013c:	7a818593          	addi	a1,gp,1960 # 14718 <object.0>
   10140:	73450513          	addi	a0,a0,1844 # 13734 <__FRAME_END__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1014c:	8082                	ret
	...

0000000000010150 <foo>:
   10150:	fe010113          	addi	sp,sp,-32
   10154:	00113c23          	sd	ra,24(sp)
   10158:	00813823          	sd	s0,16(sp)
   1015c:	02010413          	addi	s0,sp,32
   10160:	00050793          	mv	a5,a0
   10164:	fef42623          	sw	a5,-20(s0)
   10168:	000127b7          	lui	a5,0x12
   1016c:	71878513          	addi	a0,a5,1816 # 12718 <__errno+0xc>
   10170:	248000ef          	jal	ra,103b8 <puts>
   10174:	fec42783          	lw	a5,-20(s0)
   10178:	0027979b          	slliw	a5,a5,0x2
   1017c:	0007879b          	sext.w	a5,a5
   10180:	00078513          	mv	a0,a5
   10184:	01813083          	ld	ra,24(sp)
   10188:	01013403          	ld	s0,16(sp)
   1018c:	02010113          	addi	sp,sp,32
   10190:	00008067          	ret

0000000000010194 <bar>:
   10194:	ff010113          	addi	sp,sp,-16
   10198:	00113423          	sd	ra,8(sp)
   1019c:	00813023          	sd	s0,0(sp)
   101a0:	01010413          	addi	s0,sp,16
   101a4:	000127b7          	lui	a5,0x12
   101a8:	72078513          	addi	a0,a5,1824 # 12720 <__errno+0x14>
   101ac:	20c000ef          	jal	ra,103b8 <puts>
   101b0:	00000013          	nop
   101b4:	00813083          	ld	ra,8(sp)
   101b8:	00013403          	ld	s0,0(sp)
   101bc:	01010113          	addi	sp,sp,16
   101c0:	00008067          	ret

00000000000101c4 <main>:
   101c4:	ff010113          	addi	sp,sp,-16
   101c8:	00113423          	sd	ra,8(sp)
   101cc:	00813023          	sd	s0,0(sp)
   101d0:	01010413          	addi	s0,sp,16
   101d4:	00100513          	li	a0,1
   101d8:	f79ff0ef          	jal	ra,10150 <foo>
   101dc:	00050793          	mv	a5,a0
   101e0:	00078713          	mv	a4,a5
   101e4:	00400793          	li	a5,4
   101e8:	00f71463          	bne	a4,a5,101f0 <main+0x2c>
   101ec:	fa9ff0ef          	jal	ra,10194 <bar>
   101f0:	00000793          	li	a5,0
   101f4:	00078513          	mv	a0,a5
   101f8:	00813083          	ld	ra,8(sp)
   101fc:	00013403          	ld	s0,0(sp)
   10200:	01010113          	addi	sp,sp,16
   10204:	00008067          	ret

0000000000010208 <exit>:
   10208:	1141                	addi	sp,sp,-16
   1020a:	4581                	li	a1,0
   1020c:	e022                	sd	s0,0(sp)
   1020e:	e406                	sd	ra,8(sp)
   10210:	842a                	mv	s0,a0
   10212:	23e000ef          	jal	ra,10450 <__call_exitprocs>
   10216:	7501b503          	ld	a0,1872(gp) # 146c0 <_global_impure_ptr>
   1021a:	6d3c                	ld	a5,88(a0)
   1021c:	c391                	beqz	a5,10220 <exit+0x18>
   1021e:	9782                	jalr	a5
   10220:	8522                	mv	a0,s0
   10222:	330020ef          	jal	ra,12552 <_exit>

0000000000010226 <__libc_init_array>:
   10226:	1101                	addi	sp,sp,-32
   10228:	e822                	sd	s0,16(sp)
   1022a:	e04a                	sd	s2,0(sp)
   1022c:	644d                	lui	s0,0x13
   1022e:	694d                	lui	s2,0x13
   10230:	73840793          	addi	a5,s0,1848 # 13738 <__init_array_start>
   10234:	73890913          	addi	s2,s2,1848 # 13738 <__init_array_start>
   10238:	40f90933          	sub	s2,s2,a5
   1023c:	ec06                	sd	ra,24(sp)
   1023e:	e426                	sd	s1,8(sp)
   10240:	40395913          	srai	s2,s2,0x3
   10244:	00090b63          	beqz	s2,1025a <__libc_init_array+0x34>
   10248:	73840413          	addi	s0,s0,1848
   1024c:	4481                	li	s1,0
   1024e:	601c                	ld	a5,0(s0)
   10250:	0485                	addi	s1,s1,1
   10252:	0421                	addi	s0,s0,8
   10254:	9782                	jalr	a5
   10256:	fe991ce3          	bne	s2,s1,1024e <__libc_init_array+0x28>
   1025a:	644d                	lui	s0,0x13
   1025c:	694d                	lui	s2,0x13
   1025e:	73840793          	addi	a5,s0,1848 # 13738 <__init_array_start>
   10262:	74890913          	addi	s2,s2,1864 # 13748 <__do_global_dtors_aux_fini_array_entry>
   10266:	40f90933          	sub	s2,s2,a5
   1026a:	40395913          	srai	s2,s2,0x3
   1026e:	00090b63          	beqz	s2,10284 <__libc_init_array+0x5e>
   10272:	73840413          	addi	s0,s0,1848
   10276:	4481                	li	s1,0
   10278:	601c                	ld	a5,0(s0)
   1027a:	0485                	addi	s1,s1,1
   1027c:	0421                	addi	s0,s0,8
   1027e:	9782                	jalr	a5
   10280:	fe991ce3          	bne	s2,s1,10278 <__libc_init_array+0x52>
   10284:	60e2                	ld	ra,24(sp)
   10286:	6442                	ld	s0,16(sp)
   10288:	64a2                	ld	s1,8(sp)
   1028a:	6902                	ld	s2,0(sp)
   1028c:	6105                	addi	sp,sp,32
   1028e:	8082                	ret

0000000000010290 <memset>:
   10290:	433d                	li	t1,15
   10292:	872a                	mv	a4,a0
   10294:	02c37163          	bgeu	t1,a2,102b6 <memset+0x26>
   10298:	00f77793          	andi	a5,a4,15
   1029c:	e3c1                	bnez	a5,1031c <memset+0x8c>
   1029e:	e1bd                	bnez	a1,10304 <memset+0x74>
   102a0:	ff067693          	andi	a3,a2,-16
   102a4:	8a3d                	andi	a2,a2,15
   102a6:	96ba                	add	a3,a3,a4
   102a8:	e30c                	sd	a1,0(a4)
   102aa:	e70c                	sd	a1,8(a4)
   102ac:	0741                	addi	a4,a4,16
   102ae:	fed76de3          	bltu	a4,a3,102a8 <memset+0x18>
   102b2:	e211                	bnez	a2,102b6 <memset+0x26>
   102b4:	8082                	ret
   102b6:	40c306b3          	sub	a3,t1,a2
   102ba:	068a                	slli	a3,a3,0x2
   102bc:	00000297          	auipc	t0,0x0
   102c0:	9696                	add	a3,a3,t0
   102c2:	00a68067          	jr	10(a3)
   102c6:	00b70723          	sb	a1,14(a4)
   102ca:	00b706a3          	sb	a1,13(a4)
   102ce:	00b70623          	sb	a1,12(a4)
   102d2:	00b705a3          	sb	a1,11(a4)
   102d6:	00b70523          	sb	a1,10(a4)
   102da:	00b704a3          	sb	a1,9(a4)
   102de:	00b70423          	sb	a1,8(a4)
   102e2:	00b703a3          	sb	a1,7(a4)
   102e6:	00b70323          	sb	a1,6(a4)
   102ea:	00b702a3          	sb	a1,5(a4)
   102ee:	00b70223          	sb	a1,4(a4)
   102f2:	00b701a3          	sb	a1,3(a4)
   102f6:	00b70123          	sb	a1,2(a4)
   102fa:	00b700a3          	sb	a1,1(a4)
   102fe:	00b70023          	sb	a1,0(a4)
   10302:	8082                	ret
   10304:	0ff5f593          	zext.b	a1,a1
   10308:	00859693          	slli	a3,a1,0x8
   1030c:	8dd5                	or	a1,a1,a3
   1030e:	01059693          	slli	a3,a1,0x10
   10312:	8dd5                	or	a1,a1,a3
   10314:	02059693          	slli	a3,a1,0x20
   10318:	8dd5                	or	a1,a1,a3
   1031a:	b759                	j	102a0 <memset+0x10>
   1031c:	00279693          	slli	a3,a5,0x2
   10320:	00000297          	auipc	t0,0x0
   10324:	9696                	add	a3,a3,t0
   10326:	8286                	mv	t0,ra
   10328:	fa2680e7          	jalr	-94(a3)
   1032c:	8096                	mv	ra,t0
   1032e:	17c1                	addi	a5,a5,-16
   10330:	8f1d                	sub	a4,a4,a5
   10332:	963e                	add	a2,a2,a5
   10334:	f8c371e3          	bgeu	t1,a2,102b6 <memset+0x26>
   10338:	b79d                	j	1029e <memset+0xe>

000000000001033a <_puts_r>:
   1033a:	7159                	addi	sp,sp,-112
   1033c:	f0a2                	sd	s0,96(sp)
   1033e:	842a                	mv	s0,a0
   10340:	852e                	mv	a0,a1
   10342:	eca6                	sd	s1,88(sp)
   10344:	f486                	sd	ra,104(sp)
   10346:	84ae                	mv	s1,a1
   10348:	078000ef          	jal	ra,103c0 <strlen>
   1034c:	67c9                	lui	a5,0x12
   1034e:	73078793          	addi	a5,a5,1840 # 12730 <__errno+0x24>
   10352:	e0be                	sd	a5,64(sp)
   10354:	4785                	li	a5,1
   10356:	e4be                	sd	a5,72(sp)
   10358:	4838                	lw	a4,80(s0)
   1035a:	181c                	addi	a5,sp,48
   1035c:	00150693          	addi	a3,a0,1
   10360:	ec3e                	sd	a5,24(sp)
   10362:	4789                	li	a5,2
   10364:	f826                	sd	s1,48(sp)
   10366:	fc2a                	sd	a0,56(sp)
   10368:	f436                	sd	a3,40(sp)
   1036a:	d03e                	sw	a5,32(sp)
   1036c:	680c                	ld	a1,16(s0)
   1036e:	cf0d                	beqz	a4,103a8 <_puts_r+0x6e>
   10370:	01059783          	lh	a5,16(a1)
   10374:	03279713          	slli	a4,a5,0x32
   10378:	00074d63          	bltz	a4,10392 <_puts_r+0x58>
   1037c:	0ac5a703          	lw	a4,172(a1)
   10380:	6689                	lui	a3,0x2
   10382:	8fd5                	or	a5,a5,a3
   10384:	76f9                	lui	a3,0xffffe
   10386:	16fd                	addi	a3,a3,-1
   10388:	8f75                	and	a4,a4,a3
   1038a:	00f59823          	sh	a5,16(a1)
   1038e:	0ae5a623          	sw	a4,172(a1)
   10392:	0830                	addi	a2,sp,24
   10394:	8522                	mv	a0,s0
   10396:	440000ef          	jal	ra,107d6 <__sfvwrite_r>
   1039a:	ed09                	bnez	a0,103b4 <_puts_r+0x7a>
   1039c:	4529                	li	a0,10
   1039e:	70a6                	ld	ra,104(sp)
   103a0:	7406                	ld	s0,96(sp)
   103a2:	64e6                	ld	s1,88(sp)
   103a4:	6165                	addi	sp,sp,112
   103a6:	8082                	ret
   103a8:	8522                	mv	a0,s0
   103aa:	e42e                	sd	a1,8(sp)
   103ac:	3ce000ef          	jal	ra,1077a <__sinit>
   103b0:	65a2                	ld	a1,8(sp)
   103b2:	bf7d                	j	10370 <_puts_r+0x36>
   103b4:	557d                	li	a0,-1
   103b6:	b7e5                	j	1039e <_puts_r+0x64>

00000000000103b8 <puts>:
   103b8:	85aa                	mv	a1,a0
   103ba:	7601b503          	ld	a0,1888(gp) # 146d0 <_impure_ptr>
   103be:	bfb5                	j	1033a <_puts_r>

00000000000103c0 <strlen>:
   103c0:	00757793          	andi	a5,a0,7
   103c4:	872a                	mv	a4,a0
   103c6:	eba9                	bnez	a5,10418 <strlen+0x58>
   103c8:	7381b683          	ld	a3,1848(gp) # 146a8 <__SDATA_BEGIN__>
   103cc:	55fd                	li	a1,-1
   103ce:	6310                	ld	a2,0(a4)
   103d0:	0721                	addi	a4,a4,8
   103d2:	00d677b3          	and	a5,a2,a3
   103d6:	97b6                	add	a5,a5,a3
   103d8:	8fd1                	or	a5,a5,a2
   103da:	8fd5                	or	a5,a5,a3
   103dc:	feb789e3          	beq	a5,a1,103ce <strlen+0xe>
   103e0:	ff874683          	lbu	a3,-8(a4)
   103e4:	40a707b3          	sub	a5,a4,a0
   103e8:	c6a9                	beqz	a3,10432 <strlen+0x72>
   103ea:	ff974683          	lbu	a3,-7(a4)
   103ee:	ce9d                	beqz	a3,1042c <strlen+0x6c>
   103f0:	ffa74683          	lbu	a3,-6(a4)
   103f4:	c6a9                	beqz	a3,1043e <strlen+0x7e>
   103f6:	ffb74683          	lbu	a3,-5(a4)
   103fa:	ce9d                	beqz	a3,10438 <strlen+0x78>
   103fc:	ffc74683          	lbu	a3,-4(a4)
   10400:	ffd74603          	lbu	a2,-3(a4)
   10404:	ffe74503          	lbu	a0,-2(a4)
   10408:	ce95                	beqz	a3,10444 <strlen+0x84>
   1040a:	c221                	beqz	a2,1044a <strlen+0x8a>
   1040c:	00a03533          	snez	a0,a0
   10410:	953e                	add	a0,a0,a5
   10412:	1579                	addi	a0,a0,-2
   10414:	8082                	ret
   10416:	dacd                	beqz	a3,103c8 <strlen+0x8>
   10418:	00074783          	lbu	a5,0(a4)
   1041c:	0705                	addi	a4,a4,1
   1041e:	00777693          	andi	a3,a4,7
   10422:	fbf5                	bnez	a5,10416 <strlen+0x56>
   10424:	8f09                	sub	a4,a4,a0
   10426:	fff70513          	addi	a0,a4,-1
   1042a:	8082                	ret
   1042c:	ff978513          	addi	a0,a5,-7
   10430:	8082                	ret
   10432:	ff878513          	addi	a0,a5,-8
   10436:	8082                	ret
   10438:	ffb78513          	addi	a0,a5,-5
   1043c:	8082                	ret
   1043e:	ffa78513          	addi	a0,a5,-6
   10442:	8082                	ret
   10444:	ffc78513          	addi	a0,a5,-4
   10448:	8082                	ret
   1044a:	ffd78513          	addi	a0,a5,-3
   1044e:	8082                	ret

0000000000010450 <__call_exitprocs>:
   10450:	715d                	addi	sp,sp,-80
   10452:	f052                	sd	s4,32(sp)
   10454:	7501ba03          	ld	s4,1872(gp) # 146c0 <_global_impure_ptr>
   10458:	f84a                	sd	s2,48(sp)
   1045a:	e486                	sd	ra,72(sp)
   1045c:	1f8a3903          	ld	s2,504(s4)
   10460:	e0a2                	sd	s0,64(sp)
   10462:	fc26                	sd	s1,56(sp)
   10464:	f44e                	sd	s3,40(sp)
   10466:	ec56                	sd	s5,24(sp)
   10468:	e85a                	sd	s6,16(sp)
   1046a:	e45e                	sd	s7,8(sp)
   1046c:	e062                	sd	s8,0(sp)
   1046e:	02090863          	beqz	s2,1049e <__call_exitprocs+0x4e>
   10472:	8b2a                	mv	s6,a0
   10474:	8bae                	mv	s7,a1
   10476:	4a85                	li	s5,1
   10478:	59fd                	li	s3,-1
   1047a:	00892483          	lw	s1,8(s2)
   1047e:	fff4841b          	addiw	s0,s1,-1
   10482:	00044e63          	bltz	s0,1049e <__call_exitprocs+0x4e>
   10486:	048e                	slli	s1,s1,0x3
   10488:	94ca                	add	s1,s1,s2
   1048a:	020b8663          	beqz	s7,104b6 <__call_exitprocs+0x66>
   1048e:	2084b783          	ld	a5,520(s1)
   10492:	03778263          	beq	a5,s7,104b6 <__call_exitprocs+0x66>
   10496:	347d                	addiw	s0,s0,-1
   10498:	14e1                	addi	s1,s1,-8
   1049a:	ff3418e3          	bne	s0,s3,1048a <__call_exitprocs+0x3a>
   1049e:	60a6                	ld	ra,72(sp)
   104a0:	6406                	ld	s0,64(sp)
   104a2:	74e2                	ld	s1,56(sp)
   104a4:	7942                	ld	s2,48(sp)
   104a6:	79a2                	ld	s3,40(sp)
   104a8:	7a02                	ld	s4,32(sp)
   104aa:	6ae2                	ld	s5,24(sp)
   104ac:	6b42                	ld	s6,16(sp)
   104ae:	6ba2                	ld	s7,8(sp)
   104b0:	6c02                	ld	s8,0(sp)
   104b2:	6161                	addi	sp,sp,80
   104b4:	8082                	ret
   104b6:	00892783          	lw	a5,8(s2)
   104ba:	6498                	ld	a4,8(s1)
   104bc:	37fd                	addiw	a5,a5,-1
   104be:	04878463          	beq	a5,s0,10506 <__call_exitprocs+0xb6>
   104c2:	0004b423          	sd	zero,8(s1)
   104c6:	db61                	beqz	a4,10496 <__call_exitprocs+0x46>
   104c8:	31092783          	lw	a5,784(s2)
   104cc:	008a96bb          	sllw	a3,s5,s0
   104d0:	00892c03          	lw	s8,8(s2)
   104d4:	8ff5                	and	a5,a5,a3
   104d6:	2781                	sext.w	a5,a5
   104d8:	ef89                	bnez	a5,104f2 <__call_exitprocs+0xa2>
   104da:	9702                	jalr	a4
   104dc:	00892703          	lw	a4,8(s2)
   104e0:	1f8a3783          	ld	a5,504(s4)
   104e4:	01871463          	bne	a4,s8,104ec <__call_exitprocs+0x9c>
   104e8:	fb2787e3          	beq	a5,s2,10496 <__call_exitprocs+0x46>
   104ec:	dbcd                	beqz	a5,1049e <__call_exitprocs+0x4e>
   104ee:	893e                	mv	s2,a5
   104f0:	b769                	j	1047a <__call_exitprocs+0x2a>
   104f2:	31492783          	lw	a5,788(s2)
   104f6:	1084b583          	ld	a1,264(s1)
   104fa:	8ff5                	and	a5,a5,a3
   104fc:	2781                	sext.w	a5,a5
   104fe:	e799                	bnez	a5,1050c <__call_exitprocs+0xbc>
   10500:	855a                	mv	a0,s6
   10502:	9702                	jalr	a4
   10504:	bfe1                	j	104dc <__call_exitprocs+0x8c>
   10506:	00892423          	sw	s0,8(s2)
   1050a:	bf75                	j	104c6 <__call_exitprocs+0x76>
   1050c:	852e                	mv	a0,a1
   1050e:	9702                	jalr	a4
   10510:	b7f1                	j	104dc <__call_exitprocs+0x8c>

0000000000010512 <atexit>:
   10512:	85aa                	mv	a1,a0
   10514:	4681                	li	a3,0
   10516:	4601                	li	a2,0
   10518:	4501                	li	a0,0
   1051a:	5a20106f          	j	11abc <__register_exitproc>

000000000001051e <__fp_lock>:
   1051e:	4501                	li	a0,0
   10520:	8082                	ret

0000000000010522 <_cleanup_r>:
   10522:	65c9                	lui	a1,0x12
   10524:	be858593          	addi	a1,a1,-1048 # 11be8 <_fclose_r>
   10528:	ada9                	j	10b82 <_fwalk_reent>

000000000001052a <__fp_unlock>:
   1052a:	4501                	li	a0,0
   1052c:	8082                	ret

000000000001052e <__sinit.part.0>:
   1052e:	7139                	addi	sp,sp,-64
   10530:	67c1                	lui	a5,0x10
   10532:	fc06                	sd	ra,56(sp)
   10534:	f822                	sd	s0,48(sp)
   10536:	f426                	sd	s1,40(sp)
   10538:	f04a                	sd	s2,32(sp)
   1053a:	ec4e                	sd	s3,24(sp)
   1053c:	e852                	sd	s4,16(sp)
   1053e:	e456                	sd	s5,8(sp)
   10540:	e05a                	sd	s6,0(sp)
   10542:	6500                	ld	s0,8(a0)
   10544:	52278793          	addi	a5,a5,1314 # 10522 <_cleanup_r>
   10548:	ed3c                	sd	a5,88(a0)
   1054a:	53850713          	addi	a4,a0,1336
   1054e:	478d                	li	a5,3
   10550:	52e53823          	sd	a4,1328(a0)
   10554:	52f52423          	sw	a5,1320(a0)
   10558:	52053023          	sd	zero,1312(a0)
   1055c:	4791                	li	a5,4
   1055e:	892a                	mv	s2,a0
   10560:	c81c                	sw	a5,16(s0)
   10562:	4621                	li	a2,8
   10564:	4581                	li	a1,0
   10566:	0a042623          	sw	zero,172(s0)
   1056a:	00043023          	sd	zero,0(s0)
   1056e:	00043423          	sd	zero,8(s0)
   10572:	00043c23          	sd	zero,24(s0)
   10576:	02042023          	sw	zero,32(s0)
   1057a:	02042423          	sw	zero,40(s0)
   1057e:	0a440513          	addi	a0,s0,164
   10582:	d0fff0ef          	jal	ra,10290 <memset>
   10586:	6b49                	lui	s6,0x12
   10588:	01093483          	ld	s1,16(s2)
   1058c:	6ac9                	lui	s5,0x12
   1058e:	6a49                	lui	s4,0x12
   10590:	69c9                	lui	s3,0x12
   10592:	8b2b0b13          	addi	s6,s6,-1870 # 118b2 <__sread>
   10596:	8eea8a93          	addi	s5,s5,-1810 # 118ee <__swrite>
   1059a:	940a0a13          	addi	s4,s4,-1728 # 11940 <__sseek>
   1059e:	98298993          	addi	s3,s3,-1662 # 11982 <__sclose>
   105a2:	67c1                	lui	a5,0x10
   105a4:	03643c23          	sd	s6,56(s0)
   105a8:	05543023          	sd	s5,64(s0)
   105ac:	05443423          	sd	s4,72(s0)
   105b0:	05343823          	sd	s3,80(s0)
   105b4:	f800                	sd	s0,48(s0)
   105b6:	07a5                	addi	a5,a5,9
   105b8:	c89c                	sw	a5,16(s1)
   105ba:	4621                	li	a2,8
   105bc:	4581                	li	a1,0
   105be:	0a04a623          	sw	zero,172(s1)
   105c2:	0004b023          	sd	zero,0(s1)
   105c6:	0004b423          	sd	zero,8(s1)
   105ca:	0004bc23          	sd	zero,24(s1)
   105ce:	0204a023          	sw	zero,32(s1)
   105d2:	0204a423          	sw	zero,40(s1)
   105d6:	0a448513          	addi	a0,s1,164
   105da:	cb7ff0ef          	jal	ra,10290 <memset>
   105de:	01893403          	ld	s0,24(s2)
   105e2:	000207b7          	lui	a5,0x20
   105e6:	0364bc23          	sd	s6,56(s1)
   105ea:	0554b023          	sd	s5,64(s1)
   105ee:	0544b423          	sd	s4,72(s1)
   105f2:	0534b823          	sd	s3,80(s1)
   105f6:	f884                	sd	s1,48(s1)
   105f8:	07c9                	addi	a5,a5,18
   105fa:	c81c                	sw	a5,16(s0)
   105fc:	0a042623          	sw	zero,172(s0)
   10600:	00043023          	sd	zero,0(s0)
   10604:	00043423          	sd	zero,8(s0)
   10608:	00043c23          	sd	zero,24(s0)
   1060c:	02042023          	sw	zero,32(s0)
   10610:	02042423          	sw	zero,40(s0)
   10614:	0a440513          	addi	a0,s0,164
   10618:	4621                	li	a2,8
   1061a:	4581                	li	a1,0
   1061c:	c75ff0ef          	jal	ra,10290 <memset>
   10620:	70e2                	ld	ra,56(sp)
   10622:	03643c23          	sd	s6,56(s0)
   10626:	05543023          	sd	s5,64(s0)
   1062a:	05443423          	sd	s4,72(s0)
   1062e:	05343823          	sd	s3,80(s0)
   10632:	f800                	sd	s0,48(s0)
   10634:	7442                	ld	s0,48(sp)
   10636:	4785                	li	a5,1
   10638:	04f92823          	sw	a5,80(s2)
   1063c:	74a2                	ld	s1,40(sp)
   1063e:	7902                	ld	s2,32(sp)
   10640:	69e2                	ld	s3,24(sp)
   10642:	6a42                	ld	s4,16(sp)
   10644:	6aa2                	ld	s5,8(sp)
   10646:	6b02                	ld	s6,0(sp)
   10648:	6121                	addi	sp,sp,64
   1064a:	8082                	ret

000000000001064c <__sfmoreglue>:
   1064c:	1101                	addi	sp,sp,-32
   1064e:	e426                	sd	s1,8(sp)
   10650:	0b000613          	li	a2,176
   10654:	fff5849b          	addiw	s1,a1,-1
   10658:	02c484b3          	mul	s1,s1,a2
   1065c:	e04a                	sd	s2,0(sp)
   1065e:	892e                	mv	s2,a1
   10660:	e822                	sd	s0,16(sp)
   10662:	ec06                	sd	ra,24(sp)
   10664:	0c848593          	addi	a1,s1,200
   10668:	5a4000ef          	jal	ra,10c0c <_malloc_r>
   1066c:	842a                	mv	s0,a0
   1066e:	cd01                	beqz	a0,10686 <__sfmoreglue+0x3a>
   10670:	0561                	addi	a0,a0,24
   10672:	00043023          	sd	zero,0(s0)
   10676:	01242423          	sw	s2,8(s0)
   1067a:	e808                	sd	a0,16(s0)
   1067c:	0b048613          	addi	a2,s1,176
   10680:	4581                	li	a1,0
   10682:	c0fff0ef          	jal	ra,10290 <memset>
   10686:	60e2                	ld	ra,24(sp)
   10688:	8522                	mv	a0,s0
   1068a:	6442                	ld	s0,16(sp)
   1068c:	64a2                	ld	s1,8(sp)
   1068e:	6902                	ld	s2,0(sp)
   10690:	6105                	addi	sp,sp,32
   10692:	8082                	ret

0000000000010694 <__sfp>:
   10694:	7179                	addi	sp,sp,-48
   10696:	ec26                	sd	s1,24(sp)
   10698:	7501b483          	ld	s1,1872(gp) # 146c0 <_global_impure_ptr>
   1069c:	e84a                	sd	s2,16(sp)
   1069e:	f406                	sd	ra,40(sp)
   106a0:	48bc                	lw	a5,80(s1)
   106a2:	f022                	sd	s0,32(sp)
   106a4:	e44e                	sd	s3,8(sp)
   106a6:	e052                	sd	s4,0(sp)
   106a8:	892a                	mv	s2,a0
   106aa:	c3d9                	beqz	a5,10730 <__sfp+0x9c>
   106ac:	52048493          	addi	s1,s1,1312
   106b0:	0b000993          	li	s3,176
   106b4:	4a11                	li	s4,4
   106b6:	449c                	lw	a5,8(s1)
   106b8:	6880                	ld	s0,16(s1)
   106ba:	06f05763          	blez	a5,10728 <__sfp+0x94>
   106be:	37fd                	addiw	a5,a5,-1
   106c0:	1782                	slli	a5,a5,0x20
   106c2:	9381                	srli	a5,a5,0x20
   106c4:	0785                	addi	a5,a5,1
   106c6:	033787b3          	mul	a5,a5,s3
   106ca:	97a2                	add	a5,a5,s0
   106cc:	a029                	j	106d6 <__sfp+0x42>
   106ce:	0b040413          	addi	s0,s0,176
   106d2:	04f40b63          	beq	s0,a5,10728 <__sfp+0x94>
   106d6:	01041703          	lh	a4,16(s0)
   106da:	fb75                	bnez	a4,106ce <__sfp+0x3a>
   106dc:	77c1                	lui	a5,0xffff0
   106de:	0785                	addi	a5,a5,1
   106e0:	0a042623          	sw	zero,172(s0)
   106e4:	00043023          	sd	zero,0(s0)
   106e8:	00043423          	sd	zero,8(s0)
   106ec:	c81c                	sw	a5,16(s0)
   106ee:	00043c23          	sd	zero,24(s0)
   106f2:	02042023          	sw	zero,32(s0)
   106f6:	02042423          	sw	zero,40(s0)
   106fa:	4621                	li	a2,8
   106fc:	4581                	li	a1,0
   106fe:	0a440513          	addi	a0,s0,164
   10702:	b8fff0ef          	jal	ra,10290 <memset>
   10706:	04043c23          	sd	zero,88(s0)
   1070a:	06042023          	sw	zero,96(s0)
   1070e:	06043c23          	sd	zero,120(s0)
   10712:	08042023          	sw	zero,128(s0)
   10716:	70a2                	ld	ra,40(sp)
   10718:	8522                	mv	a0,s0
   1071a:	7402                	ld	s0,32(sp)
   1071c:	64e2                	ld	s1,24(sp)
   1071e:	6942                	ld	s2,16(sp)
   10720:	69a2                	ld	s3,8(sp)
   10722:	6a02                	ld	s4,0(sp)
   10724:	6145                	addi	sp,sp,48
   10726:	8082                	ret
   10728:	6080                	ld	s0,0(s1)
   1072a:	c419                	beqz	s0,10738 <__sfp+0xa4>
   1072c:	84a2                	mv	s1,s0
   1072e:	b761                	j	106b6 <__sfp+0x22>
   10730:	8526                	mv	a0,s1
   10732:	dfdff0ef          	jal	ra,1052e <__sinit.part.0>
   10736:	bf9d                	j	106ac <__sfp+0x18>
   10738:	2d800593          	li	a1,728
   1073c:	854a                	mv	a0,s2
   1073e:	4ce000ef          	jal	ra,10c0c <_malloc_r>
   10742:	842a                	mv	s0,a0
   10744:	cd19                	beqz	a0,10762 <__sfp+0xce>
   10746:	0561                	addi	a0,a0,24
   10748:	00043023          	sd	zero,0(s0)
   1074c:	01442423          	sw	s4,8(s0)
   10750:	e808                	sd	a0,16(s0)
   10752:	2c000613          	li	a2,704
   10756:	4581                	li	a1,0
   10758:	b39ff0ef          	jal	ra,10290 <memset>
   1075c:	e080                	sd	s0,0(s1)
   1075e:	84a2                	mv	s1,s0
   10760:	bf99                	j	106b6 <__sfp+0x22>
   10762:	0004b023          	sd	zero,0(s1)
   10766:	47b1                	li	a5,12
   10768:	00f92023          	sw	a5,0(s2)
   1076c:	b76d                	j	10716 <__sfp+0x82>

000000000001076e <_cleanup>:
   1076e:	7501b503          	ld	a0,1872(gp) # 146c0 <_global_impure_ptr>
   10772:	65c9                	lui	a1,0x12
   10774:	be858593          	addi	a1,a1,-1048 # 11be8 <_fclose_r>
   10778:	a129                	j	10b82 <_fwalk_reent>

000000000001077a <__sinit>:
   1077a:	493c                	lw	a5,80(a0)
   1077c:	c391                	beqz	a5,10780 <__sinit+0x6>
   1077e:	8082                	ret
   10780:	b37d                	j	1052e <__sinit.part.0>

0000000000010782 <__sfp_lock_acquire>:
   10782:	8082                	ret

0000000000010784 <__sfp_lock_release>:
   10784:	8082                	ret

0000000000010786 <__sinit_lock_acquire>:
   10786:	8082                	ret

0000000000010788 <__sinit_lock_release>:
   10788:	8082                	ret

000000000001078a <__fp_lock_all>:
   1078a:	7601b503          	ld	a0,1888(gp) # 146d0 <_impure_ptr>
   1078e:	65c1                	lui	a1,0x10
   10790:	51e58593          	addi	a1,a1,1310 # 1051e <__fp_lock>
   10794:	a6b5                	j	10b00 <_fwalk>

0000000000010796 <__fp_unlock_all>:
   10796:	7601b503          	ld	a0,1888(gp) # 146d0 <_impure_ptr>
   1079a:	65c1                	lui	a1,0x10
   1079c:	52a58593          	addi	a1,a1,1322 # 1052a <__fp_unlock>
   107a0:	a685                	j	10b00 <_fwalk>

00000000000107a2 <__libc_fini_array>:
   107a2:	1101                	addi	sp,sp,-32
   107a4:	e822                	sd	s0,16(sp)
   107a6:	67cd                	lui	a5,0x13
   107a8:	644d                	lui	s0,0x13
   107aa:	74840413          	addi	s0,s0,1864 # 13748 <__do_global_dtors_aux_fini_array_entry>
   107ae:	75078793          	addi	a5,a5,1872 # 13750 <impure_data>
   107b2:	8f81                	sub	a5,a5,s0
   107b4:	e426                	sd	s1,8(sp)
   107b6:	ec06                	sd	ra,24(sp)
   107b8:	4037d493          	srai	s1,a5,0x3
   107bc:	c881                	beqz	s1,107cc <__libc_fini_array+0x2a>
   107be:	17e1                	addi	a5,a5,-8
   107c0:	943e                	add	s0,s0,a5
   107c2:	601c                	ld	a5,0(s0)
   107c4:	14fd                	addi	s1,s1,-1
   107c6:	1461                	addi	s0,s0,-8
   107c8:	9782                	jalr	a5
   107ca:	fce5                	bnez	s1,107c2 <__libc_fini_array+0x20>
   107cc:	60e2                	ld	ra,24(sp)
   107ce:	6442                	ld	s0,16(sp)
   107d0:	64a2                	ld	s1,8(sp)
   107d2:	6105                	addi	sp,sp,32
   107d4:	8082                	ret

00000000000107d6 <__sfvwrite_r>:
   107d6:	6a1c                	ld	a5,16(a2)
   107d8:	1a078c63          	beqz	a5,10990 <__sfvwrite_r+0x1ba>
   107dc:	0105d783          	lhu	a5,16(a1)
   107e0:	711d                	addi	sp,sp,-96
   107e2:	e8a2                	sd	s0,80(sp)
   107e4:	f852                	sd	s4,48(sp)
   107e6:	f456                	sd	s5,40(sp)
   107e8:	ec86                	sd	ra,88(sp)
   107ea:	e4a6                	sd	s1,72(sp)
   107ec:	e0ca                	sd	s2,64(sp)
   107ee:	fc4e                	sd	s3,56(sp)
   107f0:	f05a                	sd	s6,32(sp)
   107f2:	ec5e                	sd	s7,24(sp)
   107f4:	e862                	sd	s8,16(sp)
   107f6:	e466                	sd	s9,8(sp)
   107f8:	e06a                	sd	s10,0(sp)
   107fa:	0087f713          	andi	a4,a5,8
   107fe:	8a32                	mv	s4,a2
   10800:	8aaa                	mv	s5,a0
   10802:	842e                	mv	s0,a1
   10804:	c325                	beqz	a4,10864 <__sfvwrite_r+0x8e>
   10806:	6d98                	ld	a4,24(a1)
   10808:	cf31                	beqz	a4,10864 <__sfvwrite_r+0x8e>
   1080a:	0027f713          	andi	a4,a5,2
   1080e:	000a3903          	ld	s2,0(s4)
   10812:	c735                	beqz	a4,1087e <__sfvwrite_r+0xa8>
   10814:	603c                	ld	a5,64(s0)
   10816:	780c                	ld	a1,48(s0)
   10818:	80000b37          	lui	s6,0x80000
   1081c:	4981                	li	s3,0
   1081e:	4481                	li	s1,0
   10820:	c00b4b13          	xori	s6,s6,-1024
   10824:	864e                	mv	a2,s3
   10826:	8556                	mv	a0,s5
   10828:	c885                	beqz	s1,10858 <__sfvwrite_r+0x82>
   1082a:	86a6                	mv	a3,s1
   1082c:	009b7363          	bgeu	s6,s1,10832 <__sfvwrite_r+0x5c>
   10830:	86da                	mv	a3,s6
   10832:	2681                	sext.w	a3,a3
   10834:	9782                	jalr	a5
   10836:	14a05563          	blez	a0,10980 <__sfvwrite_r+0x1aa>
   1083a:	010a3783          	ld	a5,16(s4)
   1083e:	99aa                	add	s3,s3,a0
   10840:	8c89                	sub	s1,s1,a0
   10842:	40a78533          	sub	a0,a5,a0
   10846:	00aa3823          	sd	a0,16(s4)
   1084a:	10050763          	beqz	a0,10958 <__sfvwrite_r+0x182>
   1084e:	603c                	ld	a5,64(s0)
   10850:	780c                	ld	a1,48(s0)
   10852:	864e                	mv	a2,s3
   10854:	8556                	mv	a0,s5
   10856:	f8f1                	bnez	s1,1082a <__sfvwrite_r+0x54>
   10858:	00093983          	ld	s3,0(s2)
   1085c:	00893483          	ld	s1,8(s2)
   10860:	0941                	addi	s2,s2,16
   10862:	b7c9                	j	10824 <__sfvwrite_r+0x4e>
   10864:	85a2                	mv	a1,s0
   10866:	8556                	mv	a0,s5
   10868:	15c010ef          	jal	ra,119c4 <__swsetup_r>
   1086c:	28051863          	bnez	a0,10afc <__sfvwrite_r+0x326>
   10870:	01045783          	lhu	a5,16(s0)
   10874:	000a3903          	ld	s2,0(s4)
   10878:	0027f713          	andi	a4,a5,2
   1087c:	ff41                	bnez	a4,10814 <__sfvwrite_r+0x3e>
   1087e:	0017f713          	andi	a4,a5,1
   10882:	eb35                	bnez	a4,108f6 <__sfvwrite_r+0x120>
   10884:	4444                	lw	s1,12(s0)
   10886:	6008                	ld	a0,0(s0)
   10888:	80000b37          	lui	s6,0x80000
   1088c:	ffeb4b93          	xori	s7,s6,-2
   10890:	4c01                	li	s8,0
   10892:	4981                	li	s3,0
   10894:	fffb4b13          	not	s6,s6
   10898:	8ca6                	mv	s9,s1
   1089a:	04098863          	beqz	s3,108ea <__sfvwrite_r+0x114>
   1089e:	2007f713          	andi	a4,a5,512
   108a2:	12070a63          	beqz	a4,109d6 <__sfvwrite_r+0x200>
   108a6:	8d26                	mv	s10,s1
   108a8:	1899f763          	bgeu	s3,s1,10a36 <__sfvwrite_r+0x260>
   108ac:	8cce                	mv	s9,s3
   108ae:	8d4e                	mv	s10,s3
   108b0:	866a                	mv	a2,s10
   108b2:	85e2                	mv	a1,s8
   108b4:	2e9000ef          	jal	ra,1139c <memmove>
   108b8:	4458                	lw	a4,12(s0)
   108ba:	601c                	ld	a5,0(s0)
   108bc:	84ce                	mv	s1,s3
   108be:	41970cbb          	subw	s9,a4,s9
   108c2:	97ea                	add	a5,a5,s10
   108c4:	01942623          	sw	s9,12(s0)
   108c8:	e01c                	sd	a5,0(s0)
   108ca:	4981                	li	s3,0
   108cc:	010a3603          	ld	a2,16(s4)
   108d0:	9c26                	add	s8,s8,s1
   108d2:	409604b3          	sub	s1,a2,s1
   108d6:	009a3823          	sd	s1,16(s4)
   108da:	ccbd                	beqz	s1,10958 <__sfvwrite_r+0x182>
   108dc:	4444                	lw	s1,12(s0)
   108de:	6008                	ld	a0,0(s0)
   108e0:	01045783          	lhu	a5,16(s0)
   108e4:	8ca6                	mv	s9,s1
   108e6:	fa099ce3          	bnez	s3,1089e <__sfvwrite_r+0xc8>
   108ea:	00093c03          	ld	s8,0(s2)
   108ee:	00893983          	ld	s3,8(s2)
   108f2:	0941                	addi	s2,s2,16
   108f4:	b755                	j	10898 <__sfvwrite_r+0xc2>
   108f6:	4981                	li	s3,0
   108f8:	4501                	li	a0,0
   108fa:	4c81                	li	s9,0
   108fc:	4c01                	li	s8,0
   108fe:	080c0b63          	beqz	s8,10994 <__sfvwrite_r+0x1be>
   10902:	c145                	beqz	a0,109a2 <__sfvwrite_r+0x1cc>
   10904:	8bce                	mv	s7,s3
   10906:	013c7363          	bgeu	s8,s3,1090c <__sfvwrite_r+0x136>
   1090a:	8be2                	mv	s7,s8
   1090c:	6008                	ld	a0,0(s0)
   1090e:	6c1c                	ld	a5,24(s0)
   10910:	5014                	lw	a3,32(s0)
   10912:	84de                	mv	s1,s7
   10914:	00a7f763          	bgeu	a5,a0,10922 <__sfvwrite_r+0x14c>
   10918:	445c                	lw	a5,12(s0)
   1091a:	00d78b3b          	addw	s6,a5,a3
   1091e:	097b4d63          	blt	s6,s7,109b8 <__sfvwrite_r+0x1e2>
   10922:	18dbc463          	blt	s7,a3,10aaa <__sfvwrite_r+0x2d4>
   10926:	603c                	ld	a5,64(s0)
   10928:	780c                	ld	a1,48(s0)
   1092a:	8666                	mv	a2,s9
   1092c:	8556                	mv	a0,s5
   1092e:	9782                	jalr	a5
   10930:	84aa                	mv	s1,a0
   10932:	04a05763          	blez	a0,10980 <__sfvwrite_r+0x1aa>
   10936:	0005079b          	sext.w	a5,a0
   1093a:	40f989bb          	subw	s3,s3,a5
   1093e:	4505                	li	a0,1
   10940:	02098b63          	beqz	s3,10976 <__sfvwrite_r+0x1a0>
   10944:	010a3783          	ld	a5,16(s4)
   10948:	9ca6                	add	s9,s9,s1
   1094a:	409c0c33          	sub	s8,s8,s1
   1094e:	409784b3          	sub	s1,a5,s1
   10952:	009a3823          	sd	s1,16(s4)
   10956:	f4c5                	bnez	s1,108fe <__sfvwrite_r+0x128>
   10958:	4501                	li	a0,0
   1095a:	60e6                	ld	ra,88(sp)
   1095c:	6446                	ld	s0,80(sp)
   1095e:	64a6                	ld	s1,72(sp)
   10960:	6906                	ld	s2,64(sp)
   10962:	79e2                	ld	s3,56(sp)
   10964:	7a42                	ld	s4,48(sp)
   10966:	7aa2                	ld	s5,40(sp)
   10968:	7b02                	ld	s6,32(sp)
   1096a:	6be2                	ld	s7,24(sp)
   1096c:	6c42                	ld	s8,16(sp)
   1096e:	6ca2                	ld	s9,8(sp)
   10970:	6d02                	ld	s10,0(sp)
   10972:	6125                	addi	sp,sp,96
   10974:	8082                	ret
   10976:	85a2                	mv	a1,s0
   10978:	8556                	mv	a0,s5
   1097a:	480010ef          	jal	ra,11dfa <_fflush_r>
   1097e:	d179                	beqz	a0,10944 <__sfvwrite_r+0x16e>
   10980:	01041783          	lh	a5,16(s0)
   10984:	0407e793          	ori	a5,a5,64
   10988:	00f41823          	sh	a5,16(s0)
   1098c:	557d                	li	a0,-1
   1098e:	b7f1                	j	1095a <__sfvwrite_r+0x184>
   10990:	4501                	li	a0,0
   10992:	8082                	ret
   10994:	00893c03          	ld	s8,8(s2)
   10998:	00093c83          	ld	s9,0(s2)
   1099c:	0941                	addi	s2,s2,16
   1099e:	fe0c0be3          	beqz	s8,10994 <__sfvwrite_r+0x1be>
   109a2:	8662                	mv	a2,s8
   109a4:	45a9                	li	a1,10
   109a6:	8566                	mv	a0,s9
   109a8:	07f000ef          	jal	ra,11226 <memchr>
   109ac:	12050f63          	beqz	a0,10aea <__sfvwrite_r+0x314>
   109b0:	0505                	addi	a0,a0,1
   109b2:	419509bb          	subw	s3,a0,s9
   109b6:	b7b9                	j	10904 <__sfvwrite_r+0x12e>
   109b8:	85e6                	mv	a1,s9
   109ba:	865a                	mv	a2,s6
   109bc:	1e1000ef          	jal	ra,1139c <memmove>
   109c0:	601c                	ld	a5,0(s0)
   109c2:	85a2                	mv	a1,s0
   109c4:	8556                	mv	a0,s5
   109c6:	97da                	add	a5,a5,s6
   109c8:	e01c                	sd	a5,0(s0)
   109ca:	430010ef          	jal	ra,11dfa <_fflush_r>
   109ce:	f94d                	bnez	a0,10980 <__sfvwrite_r+0x1aa>
   109d0:	87da                	mv	a5,s6
   109d2:	84da                	mv	s1,s6
   109d4:	b79d                	j	1093a <__sfvwrite_r+0x164>
   109d6:	6c1c                	ld	a5,24(s0)
   109d8:	02a7e863          	bltu	a5,a0,10a08 <__sfvwrite_r+0x232>
   109dc:	501c                	lw	a5,32(s0)
   109de:	02f9e563          	bltu	s3,a5,10a08 <__sfvwrite_r+0x232>
   109e2:	86ce                	mv	a3,s3
   109e4:	013bf363          	bgeu	s7,s3,109ea <__sfvwrite_r+0x214>
   109e8:	86da                	mv	a3,s6
   109ea:	02f6c6bb          	divw	a3,a3,a5
   109ee:	6038                	ld	a4,64(s0)
   109f0:	780c                	ld	a1,48(s0)
   109f2:	8662                	mv	a2,s8
   109f4:	8556                	mv	a0,s5
   109f6:	02f686bb          	mulw	a3,a3,a5
   109fa:	9702                	jalr	a4
   109fc:	84aa                	mv	s1,a0
   109fe:	f8a051e3          	blez	a0,10980 <__sfvwrite_r+0x1aa>
   10a02:	409989b3          	sub	s3,s3,s1
   10a06:	b5d9                	j	108cc <__sfvwrite_r+0xf6>
   10a08:	0099f363          	bgeu	s3,s1,10a0e <__sfvwrite_r+0x238>
   10a0c:	84ce                	mv	s1,s3
   10a0e:	8626                	mv	a2,s1
   10a10:	85e2                	mv	a1,s8
   10a12:	18b000ef          	jal	ra,1139c <memmove>
   10a16:	445c                	lw	a5,12(s0)
   10a18:	6018                	ld	a4,0(s0)
   10a1a:	409786bb          	subw	a3,a5,s1
   10a1e:	9726                	add	a4,a4,s1
   10a20:	c454                	sw	a3,12(s0)
   10a22:	e018                	sd	a4,0(s0)
   10a24:	fef9                	bnez	a3,10a02 <__sfvwrite_r+0x22c>
   10a26:	85a2                	mv	a1,s0
   10a28:	8556                	mv	a0,s5
   10a2a:	3d0010ef          	jal	ra,11dfa <_fflush_r>
   10a2e:	f929                	bnez	a0,10980 <__sfvwrite_r+0x1aa>
   10a30:	409989b3          	sub	s3,s3,s1
   10a34:	bd61                	j	108cc <__sfvwrite_r+0xf6>
   10a36:	4807f713          	andi	a4,a5,1152
   10a3a:	e6070be3          	beqz	a4,108b0 <__sfvwrite_r+0xda>
   10a3e:	5004                	lw	s1,32(s0)
   10a40:	6c0c                	ld	a1,24(s0)
   10a42:	00198713          	addi	a4,s3,1
   10a46:	0014969b          	slliw	a3,s1,0x1
   10a4a:	9ea5                	addw	a3,a3,s1
   10a4c:	8d0d                	sub	a0,a0,a1
   10a4e:	01f6d49b          	srliw	s1,a3,0x1f
   10a52:	00050d1b          	sext.w	s10,a0
   10a56:	9cb5                	addw	s1,s1,a3
   10a58:	4014d49b          	sraiw	s1,s1,0x1
   10a5c:	976a                	add	a4,a4,s10
   10a5e:	00e4f563          	bgeu	s1,a4,10a68 <__sfvwrite_r+0x292>
   10a62:	0019849b          	addiw	s1,s3,1
   10a66:	9ca9                	addw	s1,s1,a0
   10a68:	4007f793          	andi	a5,a5,1024
   10a6c:	cfa9                	beqz	a5,10ac6 <__sfvwrite_r+0x2f0>
   10a6e:	85a6                	mv	a1,s1
   10a70:	8556                	mv	a0,s5
   10a72:	19a000ef          	jal	ra,10c0c <_malloc_r>
   10a76:	8caa                	mv	s9,a0
   10a78:	cd25                	beqz	a0,10af0 <__sfvwrite_r+0x31a>
   10a7a:	6c0c                	ld	a1,24(s0)
   10a7c:	866a                	mv	a2,s10
   10a7e:	037000ef          	jal	ra,112b4 <memcpy>
   10a82:	01045783          	lhu	a5,16(s0)
   10a86:	b7f7f793          	andi	a5,a5,-1153
   10a8a:	0807e793          	ori	a5,a5,128
   10a8e:	00f41823          	sh	a5,16(s0)
   10a92:	01ac8533          	add	a0,s9,s10
   10a96:	41a487bb          	subw	a5,s1,s10
   10a9a:	01943c23          	sd	s9,24(s0)
   10a9e:	e008                	sd	a0,0(s0)
   10aa0:	d004                	sw	s1,32(s0)
   10aa2:	8cce                	mv	s9,s3
   10aa4:	c45c                	sw	a5,12(s0)
   10aa6:	8d4e                	mv	s10,s3
   10aa8:	b521                	j	108b0 <__sfvwrite_r+0xda>
   10aaa:	865e                	mv	a2,s7
   10aac:	85e6                	mv	a1,s9
   10aae:	0ef000ef          	jal	ra,1139c <memmove>
   10ab2:	4454                	lw	a3,12(s0)
   10ab4:	6018                	ld	a4,0(s0)
   10ab6:	000b879b          	sext.w	a5,s7
   10aba:	417686bb          	subw	a3,a3,s7
   10abe:	975e                	add	a4,a4,s7
   10ac0:	c454                	sw	a3,12(s0)
   10ac2:	e018                	sd	a4,0(s0)
   10ac4:	bd9d                	j	1093a <__sfvwrite_r+0x164>
   10ac6:	8626                	mv	a2,s1
   10ac8:	8556                	mv	a0,s5
   10aca:	1ad000ef          	jal	ra,11476 <_realloc_r>
   10ace:	8caa                	mv	s9,a0
   10ad0:	f169                	bnez	a0,10a92 <__sfvwrite_r+0x2bc>
   10ad2:	6c0c                	ld	a1,24(s0)
   10ad4:	8556                	mv	a0,s5
   10ad6:	476010ef          	jal	ra,11f4c <_free_r>
   10ada:	01041783          	lh	a5,16(s0)
   10ade:	4731                	li	a4,12
   10ae0:	00eaa023          	sw	a4,0(s5)
   10ae4:	f7f7f793          	andi	a5,a5,-129
   10ae8:	bd71                	j	10984 <__sfvwrite_r+0x1ae>
   10aea:	001c099b          	addiw	s3,s8,1
   10aee:	bd19                	j	10904 <__sfvwrite_r+0x12e>
   10af0:	4731                	li	a4,12
   10af2:	01041783          	lh	a5,16(s0)
   10af6:	00eaa023          	sw	a4,0(s5)
   10afa:	b569                	j	10984 <__sfvwrite_r+0x1ae>
   10afc:	557d                	li	a0,-1
   10afe:	bdb1                	j	1095a <__sfvwrite_r+0x184>

0000000000010b00 <_fwalk>:
   10b00:	715d                	addi	sp,sp,-80
   10b02:	f84a                	sd	s2,48(sp)
   10b04:	f44e                	sd	s3,40(sp)
   10b06:	f052                	sd	s4,32(sp)
   10b08:	ec56                	sd	s5,24(sp)
   10b0a:	e85a                	sd	s6,16(sp)
   10b0c:	e45e                	sd	s7,8(sp)
   10b0e:	e486                	sd	ra,72(sp)
   10b10:	e0a2                	sd	s0,64(sp)
   10b12:	fc26                	sd	s1,56(sp)
   10b14:	8a2e                	mv	s4,a1
   10b16:	52050913          	addi	s2,a0,1312
   10b1a:	4b01                	li	s6,0
   10b1c:	0b000a93          	li	s5,176
   10b20:	4b85                	li	s7,1
   10b22:	59fd                	li	s3,-1
   10b24:	00892783          	lw	a5,8(s2)
   10b28:	01093403          	ld	s0,16(s2)
   10b2c:	02f05b63          	blez	a5,10b62 <_fwalk+0x62>
   10b30:	fff7849b          	addiw	s1,a5,-1
   10b34:	1482                	slli	s1,s1,0x20
   10b36:	9081                	srli	s1,s1,0x20
   10b38:	0485                	addi	s1,s1,1
   10b3a:	035484b3          	mul	s1,s1,s5
   10b3e:	94a2                	add	s1,s1,s0
   10b40:	01045783          	lhu	a5,16(s0)
   10b44:	00fbfb63          	bgeu	s7,a5,10b5a <_fwalk+0x5a>
   10b48:	01241783          	lh	a5,18(s0)
   10b4c:	8522                	mv	a0,s0
   10b4e:	01378663          	beq	a5,s3,10b5a <_fwalk+0x5a>
   10b52:	9a02                	jalr	s4
   10b54:	01656b33          	or	s6,a0,s6
   10b58:	2b01                	sext.w	s6,s6
   10b5a:	0b040413          	addi	s0,s0,176
   10b5e:	fe8491e3          	bne	s1,s0,10b40 <_fwalk+0x40>
   10b62:	00093903          	ld	s2,0(s2)
   10b66:	fa091fe3          	bnez	s2,10b24 <_fwalk+0x24>
   10b6a:	60a6                	ld	ra,72(sp)
   10b6c:	6406                	ld	s0,64(sp)
   10b6e:	74e2                	ld	s1,56(sp)
   10b70:	7942                	ld	s2,48(sp)
   10b72:	79a2                	ld	s3,40(sp)
   10b74:	7a02                	ld	s4,32(sp)
   10b76:	6ae2                	ld	s5,24(sp)
   10b78:	6ba2                	ld	s7,8(sp)
   10b7a:	855a                	mv	a0,s6
   10b7c:	6b42                	ld	s6,16(sp)
   10b7e:	6161                	addi	sp,sp,80
   10b80:	8082                	ret

0000000000010b82 <_fwalk_reent>:
   10b82:	715d                	addi	sp,sp,-80
   10b84:	f84a                	sd	s2,48(sp)
   10b86:	f44e                	sd	s3,40(sp)
   10b88:	f052                	sd	s4,32(sp)
   10b8a:	ec56                	sd	s5,24(sp)
   10b8c:	e85a                	sd	s6,16(sp)
   10b8e:	e45e                	sd	s7,8(sp)
   10b90:	e062                	sd	s8,0(sp)
   10b92:	e486                	sd	ra,72(sp)
   10b94:	e0a2                	sd	s0,64(sp)
   10b96:	fc26                	sd	s1,56(sp)
   10b98:	8c2a                	mv	s8,a0
   10b9a:	8a2e                	mv	s4,a1
   10b9c:	52050913          	addi	s2,a0,1312
   10ba0:	4b01                	li	s6,0
   10ba2:	0b000a93          	li	s5,176
   10ba6:	4b85                	li	s7,1
   10ba8:	59fd                	li	s3,-1
   10baa:	00892783          	lw	a5,8(s2)
   10bae:	01093403          	ld	s0,16(s2)
   10bb2:	02f05c63          	blez	a5,10bea <_fwalk_reent+0x68>
   10bb6:	fff7849b          	addiw	s1,a5,-1
   10bba:	1482                	slli	s1,s1,0x20
   10bbc:	9081                	srli	s1,s1,0x20
   10bbe:	0485                	addi	s1,s1,1
   10bc0:	035484b3          	mul	s1,s1,s5
   10bc4:	94a2                	add	s1,s1,s0
   10bc6:	01045783          	lhu	a5,16(s0)
   10bca:	00fbfc63          	bgeu	s7,a5,10be2 <_fwalk_reent+0x60>
   10bce:	01241783          	lh	a5,18(s0)
   10bd2:	85a2                	mv	a1,s0
   10bd4:	8562                	mv	a0,s8
   10bd6:	01378663          	beq	a5,s3,10be2 <_fwalk_reent+0x60>
   10bda:	9a02                	jalr	s4
   10bdc:	01656b33          	or	s6,a0,s6
   10be0:	2b01                	sext.w	s6,s6
   10be2:	0b040413          	addi	s0,s0,176
   10be6:	fe8490e3          	bne	s1,s0,10bc6 <_fwalk_reent+0x44>
   10bea:	00093903          	ld	s2,0(s2)
   10bee:	fa091ee3          	bnez	s2,10baa <_fwalk_reent+0x28>
   10bf2:	60a6                	ld	ra,72(sp)
   10bf4:	6406                	ld	s0,64(sp)
   10bf6:	74e2                	ld	s1,56(sp)
   10bf8:	7942                	ld	s2,48(sp)
   10bfa:	79a2                	ld	s3,40(sp)
   10bfc:	7a02                	ld	s4,32(sp)
   10bfe:	6ae2                	ld	s5,24(sp)
   10c00:	6ba2                	ld	s7,8(sp)
   10c02:	6c02                	ld	s8,0(sp)
   10c04:	855a                	mv	a0,s6
   10c06:	6b42                	ld	s6,16(sp)
   10c08:	6161                	addi	sp,sp,80
   10c0a:	8082                	ret

0000000000010c0c <_malloc_r>:
   10c0c:	711d                	addi	sp,sp,-96
   10c0e:	e4a6                	sd	s1,72(sp)
   10c10:	e0ca                	sd	s2,64(sp)
   10c12:	ec86                	sd	ra,88(sp)
   10c14:	e8a2                	sd	s0,80(sp)
   10c16:	fc4e                	sd	s3,56(sp)
   10c18:	f852                	sd	s4,48(sp)
   10c1a:	f456                	sd	s5,40(sp)
   10c1c:	f05a                	sd	s6,32(sp)
   10c1e:	ec5e                	sd	s7,24(sp)
   10c20:	e862                	sd	s8,16(sp)
   10c22:	e466                	sd	s9,8(sp)
   10c24:	01758493          	addi	s1,a1,23
   10c28:	02e00793          	li	a5,46
   10c2c:	892a                	mv	s2,a0
   10c2e:	0497e763          	bltu	a5,s1,10c7c <_malloc_r+0x70>
   10c32:	02000793          	li	a5,32
   10c36:	1eb7e163          	bltu	a5,a1,10e18 <_malloc_r+0x20c>
   10c3a:	039000ef          	jal	ra,11472 <__malloc_lock>
   10c3e:	02000493          	li	s1,32
   10c42:	05000793          	li	a5,80
   10c46:	4611                	li	a2,4
   10c48:	69d1                	lui	s3,0x14
   10c4a:	e9898993          	addi	s3,s3,-360 # 13e98 <__malloc_av_>
   10c4e:	97ce                	add	a5,a5,s3
   10c50:	6780                	ld	s0,8(a5)
   10c52:	ff078713          	addi	a4,a5,-16
   10c56:	1ee40263          	beq	s0,a4,10e3a <_malloc_r+0x22e>
   10c5a:	641c                	ld	a5,8(s0)
   10c5c:	6c14                	ld	a3,24(s0)
   10c5e:	6810                	ld	a2,16(s0)
   10c60:	9bf1                	andi	a5,a5,-4
   10c62:	97a2                	add	a5,a5,s0
   10c64:	6798                	ld	a4,8(a5)
   10c66:	ee14                	sd	a3,24(a2)
   10c68:	ea90                	sd	a2,16(a3)
   10c6a:	00176713          	ori	a4,a4,1
   10c6e:	854a                	mv	a0,s2
   10c70:	e798                	sd	a4,8(a5)
   10c72:	003000ef          	jal	ra,11474 <__malloc_unlock>
   10c76:	01040513          	addi	a0,s0,16
   10c7a:	a25d                	j	10e20 <_malloc_r+0x214>
   10c7c:	800007b7          	lui	a5,0x80000
   10c80:	98c1                	andi	s1,s1,-16
   10c82:	fff7c793          	not	a5,a5
   10c86:	1897e963          	bltu	a5,s1,10e18 <_malloc_r+0x20c>
   10c8a:	18b4e763          	bltu	s1,a1,10e18 <_malloc_r+0x20c>
   10c8e:	7e4000ef          	jal	ra,11472 <__malloc_lock>
   10c92:	1f700793          	li	a5,503
   10c96:	3a97f063          	bgeu	a5,s1,11036 <_malloc_r+0x42a>
   10c9a:	0094d793          	srli	a5,s1,0x9
   10c9e:	26078c63          	beqz	a5,10f16 <_malloc_r+0x30a>
   10ca2:	4711                	li	a4,4
   10ca4:	30f76063          	bltu	a4,a5,10fa4 <_malloc_r+0x398>
   10ca8:	0064d793          	srli	a5,s1,0x6
   10cac:	0397861b          	addiw	a2,a5,57
   10cb0:	0016169b          	slliw	a3,a2,0x1
   10cb4:	0387851b          	addiw	a0,a5,56
   10cb8:	068e                	slli	a3,a3,0x3
   10cba:	69d1                	lui	s3,0x14
   10cbc:	e9898993          	addi	s3,s3,-360 # 13e98 <__malloc_av_>
   10cc0:	96ce                	add	a3,a3,s3
   10cc2:	6680                	ld	s0,8(a3)
   10cc4:	16c1                	addi	a3,a3,-16
   10cc6:	16868e63          	beq	a3,s0,10e42 <_malloc_r+0x236>
   10cca:	45fd                	li	a1,31
   10ccc:	a031                	j	10cd8 <_malloc_r+0xcc>
   10cce:	28075563          	bgez	a4,10f58 <_malloc_r+0x34c>
   10cd2:	6c00                	ld	s0,24(s0)
   10cd4:	16868763          	beq	a3,s0,10e42 <_malloc_r+0x236>
   10cd8:	641c                	ld	a5,8(s0)
   10cda:	9bf1                	andi	a5,a5,-4
   10cdc:	40978733          	sub	a4,a5,s1
   10ce0:	fee5d7e3          	bge	a1,a4,10cce <_malloc_r+0xc2>
   10ce4:	0209b403          	ld	s0,32(s3)
   10ce8:	6851                	lui	a6,0x14
   10cea:	ea880813          	addi	a6,a6,-344 # 13ea8 <__malloc_av_+0x10>
   10cee:	862a                	mv	a2,a0
   10cf0:	17041063          	bne	s0,a6,10e50 <_malloc_r+0x244>
   10cf4:	0089b783          	ld	a5,8(s3)
   10cf8:	4026571b          	sraiw	a4,a2,0x2
   10cfc:	4585                	li	a1,1
   10cfe:	00e595b3          	sll	a1,a1,a4
   10d02:	1ab7f763          	bgeu	a5,a1,10eb0 <_malloc_r+0x2a4>
   10d06:	0109b403          	ld	s0,16(s3)
   10d0a:	00843a03          	ld	s4,8(s0)
   10d0e:	ffca7a93          	andi	s5,s4,-4
   10d12:	009ae763          	bltu	s5,s1,10d20 <_malloc_r+0x114>
   10d16:	409a87b3          	sub	a5,s5,s1
   10d1a:	477d                	li	a4,31
   10d1c:	20f74f63          	blt	a4,a5,10f3a <_malloc_r+0x32e>
   10d20:	7881ba03          	ld	s4,1928(gp) # 146f8 <__malloc_top_pad>
   10d24:	7681b703          	ld	a4,1896(gp) # 146d8 <__malloc_sbrk_base>
   10d28:	57fd                	li	a5,-1
   10d2a:	01540c33          	add	s8,s0,s5
   10d2e:	9a26                	add	s4,s4,s1
   10d30:	3af70163          	beq	a4,a5,110d2 <_malloc_r+0x4c6>
   10d34:	6785                	lui	a5,0x1
   10d36:	07fd                	addi	a5,a5,31
   10d38:	9a3e                	add	s4,s4,a5
   10d3a:	77fd                	lui	a5,0xfffff
   10d3c:	00fa7a33          	and	s4,s4,a5
   10d40:	85d2                	mv	a1,s4
   10d42:	854a                	mv	a0,s2
   10d44:	339000ef          	jal	ra,1187c <_sbrk_r>
   10d48:	57fd                	li	a5,-1
   10d4a:	8b2a                	mv	s6,a0
   10d4c:	30f50a63          	beq	a0,a5,11060 <_malloc_r+0x454>
   10d50:	31856663          	bltu	a0,s8,1105c <_malloc_r+0x450>
   10d54:	7d818b93          	addi	s7,gp,2008 # 14748 <__malloc_current_mallinfo>
   10d58:	000ba703          	lw	a4,0(s7)
   10d5c:	014707bb          	addw	a5,a4,s4
   10d60:	00fba023          	sw	a5,0(s7)
   10d64:	86be                	mv	a3,a5
   10d66:	3eac0f63          	beq	s8,a0,11164 <_malloc_r+0x558>
   10d6a:	7681b703          	ld	a4,1896(gp) # 146d8 <__malloc_sbrk_base>
   10d6e:	57fd                	li	a5,-1
   10d70:	40f70663          	beq	a4,a5,1117c <_malloc_r+0x570>
   10d74:	418b07b3          	sub	a5,s6,s8
   10d78:	9fb5                	addw	a5,a5,a3
   10d7a:	00fba023          	sw	a5,0(s7)
   10d7e:	00fb7c13          	andi	s8,s6,15
   10d82:	360c0663          	beqz	s8,110ee <_malloc_r+0x4e2>
   10d86:	6705                	lui	a4,0x1
   10d88:	418b0b33          	sub	s6,s6,s8
   10d8c:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   10d90:	0b41                	addi	s6,s6,16
   10d92:	418787b3          	sub	a5,a5,s8
   10d96:	014b0cb3          	add	s9,s6,s4
   10d9a:	41978a33          	sub	s4,a5,s9
   10d9e:	177d                	addi	a4,a4,-1
   10da0:	00ea7a33          	and	s4,s4,a4
   10da4:	85d2                	mv	a1,s4
   10da6:	854a                	mv	a0,s2
   10da8:	2d5000ef          	jal	ra,1187c <_sbrk_r>
   10dac:	57fd                	li	a5,-1
   10dae:	40f50c63          	beq	a0,a5,111c6 <_malloc_r+0x5ba>
   10db2:	41650533          	sub	a0,a0,s6
   10db6:	000a071b          	sext.w	a4,s4
   10dba:	9a2a                	add	s4,s4,a0
   10dbc:	000ba783          	lw	a5,0(s7)
   10dc0:	0169b823          	sd	s6,16(s3)
   10dc4:	001a6a13          	ori	s4,s4,1
   10dc8:	9fb9                	addw	a5,a5,a4
   10dca:	00fba023          	sw	a5,0(s7)
   10dce:	014b3423          	sd	s4,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffeb898>
   10dd2:	3b340863          	beq	s0,s3,11182 <_malloc_r+0x576>
   10dd6:	467d                	li	a2,31
   10dd8:	3b567763          	bgeu	a2,s5,11186 <_malloc_r+0x57a>
   10ddc:	6414                	ld	a3,8(s0)
   10dde:	fe8a8713          	addi	a4,s5,-24
   10de2:	9b41                	andi	a4,a4,-16
   10de4:	8a85                	andi	a3,a3,1
   10de6:	8ed9                	or	a3,a3,a4
   10de8:	e414                	sd	a3,8(s0)
   10dea:	45a5                	li	a1,9
   10dec:	00e406b3          	add	a3,s0,a4
   10df0:	e68c                	sd	a1,8(a3)
   10df2:	ea8c                	sd	a1,16(a3)
   10df4:	3ee66063          	bltu	a2,a4,111d4 <_malloc_r+0x5c8>
   10df8:	008b3a03          	ld	s4,8(s6)
   10dfc:	845a                	mv	s0,s6
   10dfe:	7801b683          	ld	a3,1920(gp) # 146f0 <__malloc_max_sbrked_mem>
   10e02:	00f6f463          	bgeu	a3,a5,10e0a <_malloc_r+0x1fe>
   10e06:	78f1b023          	sd	a5,1920(gp) # 146f0 <__malloc_max_sbrked_mem>
   10e0a:	7781b683          	ld	a3,1912(gp) # 146e8 <__malloc_max_total_mem>
   10e0e:	24f6fd63          	bgeu	a3,a5,11068 <_malloc_r+0x45c>
   10e12:	76f1bc23          	sd	a5,1912(gp) # 146e8 <__malloc_max_total_mem>
   10e16:	ac89                	j	11068 <_malloc_r+0x45c>
   10e18:	47b1                	li	a5,12
   10e1a:	00f92023          	sw	a5,0(s2)
   10e1e:	4501                	li	a0,0
   10e20:	60e6                	ld	ra,88(sp)
   10e22:	6446                	ld	s0,80(sp)
   10e24:	64a6                	ld	s1,72(sp)
   10e26:	6906                	ld	s2,64(sp)
   10e28:	79e2                	ld	s3,56(sp)
   10e2a:	7a42                	ld	s4,48(sp)
   10e2c:	7aa2                	ld	s5,40(sp)
   10e2e:	7b02                	ld	s6,32(sp)
   10e30:	6be2                	ld	s7,24(sp)
   10e32:	6c42                	ld	s8,16(sp)
   10e34:	6ca2                	ld	s9,8(sp)
   10e36:	6125                	addi	sp,sp,96
   10e38:	8082                	ret
   10e3a:	6f80                	ld	s0,24(a5)
   10e3c:	2609                	addiw	a2,a2,2
   10e3e:	e0879ee3          	bne	a5,s0,10c5a <_malloc_r+0x4e>
   10e42:	0209b403          	ld	s0,32(s3)
   10e46:	6851                	lui	a6,0x14
   10e48:	ea880813          	addi	a6,a6,-344 # 13ea8 <__malloc_av_+0x10>
   10e4c:	eb0404e3          	beq	s0,a6,10cf4 <_malloc_r+0xe8>
   10e50:	641c                	ld	a5,8(s0)
   10e52:	46fd                	li	a3,31
   10e54:	9bf1                	andi	a5,a5,-4
   10e56:	40978733          	sub	a4,a5,s1
   10e5a:	1ae6c763          	blt	a3,a4,11008 <_malloc_r+0x3fc>
   10e5e:	0309b423          	sd	a6,40(s3)
   10e62:	0309b023          	sd	a6,32(s3)
   10e66:	0a075f63          	bgez	a4,10f24 <_malloc_r+0x318>
   10e6a:	1ff00713          	li	a4,511
   10e6e:	0ef76863          	bltu	a4,a5,10f5e <_malloc_r+0x352>
   10e72:	838d                	srli	a5,a5,0x3
   10e74:	0017871b          	addiw	a4,a5,1
   10e78:	0017171b          	slliw	a4,a4,0x1
   10e7c:	070e                	slli	a4,a4,0x3
   10e7e:	0089b503          	ld	a0,8(s3)
   10e82:	974e                	add	a4,a4,s3
   10e84:	630c                	ld	a1,0(a4)
   10e86:	4027d69b          	sraiw	a3,a5,0x2
   10e8a:	4785                	li	a5,1
   10e8c:	00d797b3          	sll	a5,a5,a3
   10e90:	8fc9                	or	a5,a5,a0
   10e92:	ff070693          	addi	a3,a4,-16
   10e96:	ec14                	sd	a3,24(s0)
   10e98:	e80c                	sd	a1,16(s0)
   10e9a:	00f9b423          	sd	a5,8(s3)
   10e9e:	e300                	sd	s0,0(a4)
   10ea0:	ed80                	sd	s0,24(a1)
   10ea2:	4026571b          	sraiw	a4,a2,0x2
   10ea6:	4585                	li	a1,1
   10ea8:	00e595b3          	sll	a1,a1,a4
   10eac:	e4b7ede3          	bltu	a5,a1,10d06 <_malloc_r+0xfa>
   10eb0:	00f5f733          	and	a4,a1,a5
   10eb4:	ef01                	bnez	a4,10ecc <_malloc_r+0x2c0>
   10eb6:	0586                	slli	a1,a1,0x1
   10eb8:	9a71                	andi	a2,a2,-4
   10eba:	00f5f733          	and	a4,a1,a5
   10ebe:	2611                	addiw	a2,a2,4
   10ec0:	e711                	bnez	a4,10ecc <_malloc_r+0x2c0>
   10ec2:	0586                	slli	a1,a1,0x1
   10ec4:	00f5f733          	and	a4,a1,a5
   10ec8:	2611                	addiw	a2,a2,4
   10eca:	df65                	beqz	a4,10ec2 <_malloc_r+0x2b6>
   10ecc:	48fd                	li	a7,31
   10ece:	0016031b          	addiw	t1,a2,1
   10ed2:	0013131b          	slliw	t1,t1,0x1
   10ed6:	030e                	slli	t1,t1,0x3
   10ed8:	1341                	addi	t1,t1,-16
   10eda:	934e                	add	t1,t1,s3
   10edc:	851a                	mv	a0,t1
   10ede:	6d1c                	ld	a5,24(a0)
   10ee0:	8e32                	mv	t3,a2
   10ee2:	0ef50263          	beq	a0,a5,10fc6 <_malloc_r+0x3ba>
   10ee6:	6798                	ld	a4,8(a5)
   10ee8:	843e                	mv	s0,a5
   10eea:	6f9c                	ld	a5,24(a5)
   10eec:	9b71                	andi	a4,a4,-4
   10eee:	409706b3          	sub	a3,a4,s1
   10ef2:	0ed8c163          	blt	a7,a3,10fd4 <_malloc_r+0x3c8>
   10ef6:	fe06c6e3          	bltz	a3,10ee2 <_malloc_r+0x2d6>
   10efa:	9722                	add	a4,a4,s0
   10efc:	6714                	ld	a3,8(a4)
   10efe:	6810                	ld	a2,16(s0)
   10f00:	854a                	mv	a0,s2
   10f02:	0016e693          	ori	a3,a3,1
   10f06:	e714                	sd	a3,8(a4)
   10f08:	ee1c                	sd	a5,24(a2)
   10f0a:	eb90                	sd	a2,16(a5)
   10f0c:	568000ef          	jal	ra,11474 <__malloc_unlock>
   10f10:	01040513          	addi	a0,s0,16
   10f14:	b731                	j	10e20 <_malloc_r+0x214>
   10f16:	40000693          	li	a3,1024
   10f1a:	04000613          	li	a2,64
   10f1e:	03f00513          	li	a0,63
   10f22:	bb61                	j	10cba <_malloc_r+0xae>
   10f24:	97a2                	add	a5,a5,s0
   10f26:	6798                	ld	a4,8(a5)
   10f28:	854a                	mv	a0,s2
   10f2a:	00176713          	ori	a4,a4,1
   10f2e:	e798                	sd	a4,8(a5)
   10f30:	544000ef          	jal	ra,11474 <__malloc_unlock>
   10f34:	01040513          	addi	a0,s0,16
   10f38:	b5e5                	j	10e20 <_malloc_r+0x214>
   10f3a:	0014e713          	ori	a4,s1,1
   10f3e:	e418                	sd	a4,8(s0)
   10f40:	94a2                	add	s1,s1,s0
   10f42:	0099b823          	sd	s1,16(s3)
   10f46:	0017e793          	ori	a5,a5,1
   10f4a:	854a                	mv	a0,s2
   10f4c:	e49c                	sd	a5,8(s1)
   10f4e:	526000ef          	jal	ra,11474 <__malloc_unlock>
   10f52:	01040513          	addi	a0,s0,16
   10f56:	b5e9                	j	10e20 <_malloc_r+0x214>
   10f58:	6c14                	ld	a3,24(s0)
   10f5a:	6810                	ld	a2,16(s0)
   10f5c:	b319                	j	10c62 <_malloc_r+0x56>
   10f5e:	0097d713          	srli	a4,a5,0x9
   10f62:	4691                	li	a3,4
   10f64:	0ee6f263          	bgeu	a3,a4,11048 <_malloc_r+0x43c>
   10f68:	46d1                	li	a3,20
   10f6a:	1ae6e863          	bltu	a3,a4,1111a <_malloc_r+0x50e>
   10f6e:	05c7059b          	addiw	a1,a4,92
   10f72:	0015959b          	slliw	a1,a1,0x1
   10f76:	05b7069b          	addiw	a3,a4,91
   10f7a:	058e                	slli	a1,a1,0x3
   10f7c:	95ce                	add	a1,a1,s3
   10f7e:	6198                	ld	a4,0(a1)
   10f80:	15c1                	addi	a1,a1,-16
   10f82:	14e58b63          	beq	a1,a4,110d8 <_malloc_r+0x4cc>
   10f86:	6714                	ld	a3,8(a4)
   10f88:	9af1                	andi	a3,a3,-4
   10f8a:	00d7f563          	bgeu	a5,a3,10f94 <_malloc_r+0x388>
   10f8e:	6b18                	ld	a4,16(a4)
   10f90:	fee59be3          	bne	a1,a4,10f86 <_malloc_r+0x37a>
   10f94:	6f0c                	ld	a1,24(a4)
   10f96:	0089b783          	ld	a5,8(s3)
   10f9a:	ec0c                	sd	a1,24(s0)
   10f9c:	e818                	sd	a4,16(s0)
   10f9e:	e980                	sd	s0,16(a1)
   10fa0:	ef00                	sd	s0,24(a4)
   10fa2:	b701                	j	10ea2 <_malloc_r+0x296>
   10fa4:	4751                	li	a4,20
   10fa6:	0cf77f63          	bgeu	a4,a5,11084 <_malloc_r+0x478>
   10faa:	05400713          	li	a4,84
   10fae:	18f76463          	bltu	a4,a5,11136 <_malloc_r+0x52a>
   10fb2:	00c4d793          	srli	a5,s1,0xc
   10fb6:	06f7861b          	addiw	a2,a5,111
   10fba:	0016169b          	slliw	a3,a2,0x1
   10fbe:	06e7851b          	addiw	a0,a5,110
   10fc2:	068e                	slli	a3,a3,0x3
   10fc4:	b9dd                	j	10cba <_malloc_r+0xae>
   10fc6:	2e05                	addiw	t3,t3,1
   10fc8:	003e7793          	andi	a5,t3,3
   10fcc:	0541                	addi	a0,a0,16
   10fce:	cbe1                	beqz	a5,1109e <_malloc_r+0x492>
   10fd0:	6d1c                	ld	a5,24(a0)
   10fd2:	bf01                	j	10ee2 <_malloc_r+0x2d6>
   10fd4:	6810                	ld	a2,16(s0)
   10fd6:	0014e593          	ori	a1,s1,1
   10fda:	e40c                	sd	a1,8(s0)
   10fdc:	ee1c                	sd	a5,24(a2)
   10fde:	eb90                	sd	a2,16(a5)
   10fe0:	94a2                	add	s1,s1,s0
   10fe2:	0299b423          	sd	s1,40(s3)
   10fe6:	0299b023          	sd	s1,32(s3)
   10fea:	0016e793          	ori	a5,a3,1
   10fee:	0104bc23          	sd	a6,24(s1)
   10ff2:	0104b823          	sd	a6,16(s1)
   10ff6:	e49c                	sd	a5,8(s1)
   10ff8:	9722                	add	a4,a4,s0
   10ffa:	854a                	mv	a0,s2
   10ffc:	e314                	sd	a3,0(a4)
   10ffe:	476000ef          	jal	ra,11474 <__malloc_unlock>
   11002:	01040513          	addi	a0,s0,16
   11006:	bd29                	j	10e20 <_malloc_r+0x214>
   11008:	0014e693          	ori	a3,s1,1
   1100c:	e414                	sd	a3,8(s0)
   1100e:	94a2                	add	s1,s1,s0
   11010:	0299b423          	sd	s1,40(s3)
   11014:	0299b023          	sd	s1,32(s3)
   11018:	00176693          	ori	a3,a4,1
   1101c:	0104bc23          	sd	a6,24(s1)
   11020:	0104b823          	sd	a6,16(s1)
   11024:	e494                	sd	a3,8(s1)
   11026:	97a2                	add	a5,a5,s0
   11028:	854a                	mv	a0,s2
   1102a:	e398                	sd	a4,0(a5)
   1102c:	448000ef          	jal	ra,11474 <__malloc_unlock>
   11030:	01040513          	addi	a0,s0,16
   11034:	b3f5                	j	10e20 <_malloc_r+0x214>
   11036:	0034d613          	srli	a2,s1,0x3
   1103a:	0016079b          	addiw	a5,a2,1
   1103e:	0017979b          	slliw	a5,a5,0x1
   11042:	2601                	sext.w	a2,a2
   11044:	078e                	slli	a5,a5,0x3
   11046:	b109                	j	10c48 <_malloc_r+0x3c>
   11048:	0067d713          	srli	a4,a5,0x6
   1104c:	0397059b          	addiw	a1,a4,57
   11050:	0015959b          	slliw	a1,a1,0x1
   11054:	0387069b          	addiw	a3,a4,56
   11058:	058e                	slli	a1,a1,0x3
   1105a:	b70d                	j	10f7c <_malloc_r+0x370>
   1105c:	0f340b63          	beq	s0,s3,11152 <_malloc_r+0x546>
   11060:	0109b403          	ld	s0,16(s3)
   11064:	00843a03          	ld	s4,8(s0)
   11068:	ffca7a13          	andi	s4,s4,-4
   1106c:	409a07b3          	sub	a5,s4,s1
   11070:	009a6563          	bltu	s4,s1,1107a <_malloc_r+0x46e>
   11074:	477d                	li	a4,31
   11076:	ecf742e3          	blt	a4,a5,10f3a <_malloc_r+0x32e>
   1107a:	854a                	mv	a0,s2
   1107c:	3f8000ef          	jal	ra,11474 <__malloc_unlock>
   11080:	4501                	li	a0,0
   11082:	bb79                	j	10e20 <_malloc_r+0x214>
   11084:	05c7861b          	addiw	a2,a5,92
   11088:	0016169b          	slliw	a3,a2,0x1
   1108c:	05b7851b          	addiw	a0,a5,91
   11090:	068e                	slli	a3,a3,0x3
   11092:	b125                	j	10cba <_malloc_r+0xae>
   11094:	01033783          	ld	a5,16(t1) # 10154 <foo+0x4>
   11098:	367d                	addiw	a2,a2,-1
   1109a:	18679363          	bne	a5,t1,11220 <_malloc_r+0x614>
   1109e:	00367793          	andi	a5,a2,3
   110a2:	1341                	addi	t1,t1,-16
   110a4:	fbe5                	bnez	a5,11094 <_malloc_r+0x488>
   110a6:	0089b703          	ld	a4,8(s3)
   110aa:	fff5c793          	not	a5,a1
   110ae:	8ff9                	and	a5,a5,a4
   110b0:	00f9b423          	sd	a5,8(s3)
   110b4:	0586                	slli	a1,a1,0x1
   110b6:	c4b7e8e3          	bltu	a5,a1,10d06 <_malloc_r+0xfa>
   110ba:	c40586e3          	beqz	a1,10d06 <_malloc_r+0xfa>
   110be:	00f5f733          	and	a4,a1,a5
   110c2:	e711                	bnez	a4,110ce <_malloc_r+0x4c2>
   110c4:	0586                	slli	a1,a1,0x1
   110c6:	00f5f733          	and	a4,a1,a5
   110ca:	2e11                	addiw	t3,t3,4
   110cc:	df65                	beqz	a4,110c4 <_malloc_r+0x4b8>
   110ce:	8672                	mv	a2,t3
   110d0:	bbfd                	j	10ece <_malloc_r+0x2c2>
   110d2:	020a0a13          	addi	s4,s4,32
   110d6:	b1ad                	j	10d40 <_malloc_r+0x134>
   110d8:	0089b503          	ld	a0,8(s3)
   110dc:	4026d69b          	sraiw	a3,a3,0x2
   110e0:	4785                	li	a5,1
   110e2:	00d797b3          	sll	a5,a5,a3
   110e6:	8fc9                	or	a5,a5,a0
   110e8:	00f9b423          	sd	a5,8(s3)
   110ec:	b57d                	j	10f9a <_malloc_r+0x38e>
   110ee:	014b0c33          	add	s8,s6,s4
   110f2:	41800c33          	neg	s8,s8
   110f6:	1c52                	slli	s8,s8,0x34
   110f8:	034c5c13          	srli	s8,s8,0x34
   110fc:	85e2                	mv	a1,s8
   110fe:	854a                	mv	a0,s2
   11100:	77c000ef          	jal	ra,1187c <_sbrk_r>
   11104:	57fd                	li	a5,-1
   11106:	4701                	li	a4,0
   11108:	caf50ae3          	beq	a0,a5,10dbc <_malloc_r+0x1b0>
   1110c:	41650533          	sub	a0,a0,s6
   11110:	000c071b          	sext.w	a4,s8
   11114:	01850a33          	add	s4,a0,s8
   11118:	b155                	j	10dbc <_malloc_r+0x1b0>
   1111a:	05400693          	li	a3,84
   1111e:	06e6e863          	bltu	a3,a4,1118e <_malloc_r+0x582>
   11122:	00c7d713          	srli	a4,a5,0xc
   11126:	06f7059b          	addiw	a1,a4,111
   1112a:	0015959b          	slliw	a1,a1,0x1
   1112e:	06e7069b          	addiw	a3,a4,110
   11132:	058e                	slli	a1,a1,0x3
   11134:	b5a1                	j	10f7c <_malloc_r+0x370>
   11136:	15400713          	li	a4,340
   1113a:	06f76863          	bltu	a4,a5,111aa <_malloc_r+0x59e>
   1113e:	00f4d793          	srli	a5,s1,0xf
   11142:	0787861b          	addiw	a2,a5,120
   11146:	0016169b          	slliw	a3,a2,0x1
   1114a:	0777851b          	addiw	a0,a5,119
   1114e:	068e                	slli	a3,a3,0x3
   11150:	b6ad                	j	10cba <_malloc_r+0xae>
   11152:	7d818b93          	addi	s7,gp,2008 # 14748 <__malloc_current_mallinfo>
   11156:	000ba783          	lw	a5,0(s7)
   1115a:	014786bb          	addw	a3,a5,s4
   1115e:	00dba023          	sw	a3,0(s7)
   11162:	b121                	j	10d6a <_malloc_r+0x15e>
   11164:	034c1713          	slli	a4,s8,0x34
   11168:	c00711e3          	bnez	a4,10d6a <_malloc_r+0x15e>
   1116c:	0109b403          	ld	s0,16(s3)
   11170:	9a56                	add	s4,s4,s5
   11172:	001a6a13          	ori	s4,s4,1
   11176:	01443423          	sd	s4,8(s0)
   1117a:	b151                	j	10dfe <_malloc_r+0x1f2>
   1117c:	7761b423          	sd	s6,1896(gp) # 146d8 <__malloc_sbrk_base>
   11180:	befd                	j	10d7e <_malloc_r+0x172>
   11182:	845a                	mv	s0,s6
   11184:	b9ad                	j	10dfe <_malloc_r+0x1f2>
   11186:	4785                	li	a5,1
   11188:	00fb3423          	sd	a5,8(s6)
   1118c:	b5fd                	j	1107a <_malloc_r+0x46e>
   1118e:	15400693          	li	a3,340
   11192:	04e6ed63          	bltu	a3,a4,111ec <_malloc_r+0x5e0>
   11196:	00f7d713          	srli	a4,a5,0xf
   1119a:	0787059b          	addiw	a1,a4,120
   1119e:	0015959b          	slliw	a1,a1,0x1
   111a2:	0777069b          	addiw	a3,a4,119
   111a6:	058e                	slli	a1,a1,0x3
   111a8:	bbd1                	j	10f7c <_malloc_r+0x370>
   111aa:	55400713          	li	a4,1364
   111ae:	04f76d63          	bltu	a4,a5,11208 <_malloc_r+0x5fc>
   111b2:	0124d793          	srli	a5,s1,0x12
   111b6:	07d7861b          	addiw	a2,a5,125
   111ba:	0016169b          	slliw	a3,a2,0x1
   111be:	07c7851b          	addiw	a0,a5,124
   111c2:	068e                	slli	a3,a3,0x3
   111c4:	bcdd                	j	10cba <_malloc_r+0xae>
   111c6:	1c41                	addi	s8,s8,-16
   111c8:	018c8a33          	add	s4,s9,s8
   111cc:	416a0a33          	sub	s4,s4,s6
   111d0:	4701                	li	a4,0
   111d2:	b6ed                	j	10dbc <_malloc_r+0x1b0>
   111d4:	01040593          	addi	a1,s0,16
   111d8:	854a                	mv	a0,s2
   111da:	573000ef          	jal	ra,11f4c <_free_r>
   111de:	0109b403          	ld	s0,16(s3)
   111e2:	000ba783          	lw	a5,0(s7)
   111e6:	00843a03          	ld	s4,8(s0)
   111ea:	b911                	j	10dfe <_malloc_r+0x1f2>
   111ec:	55400693          	li	a3,1364
   111f0:	02e6e363          	bltu	a3,a4,11216 <_malloc_r+0x60a>
   111f4:	0127d713          	srli	a4,a5,0x12
   111f8:	07d7059b          	addiw	a1,a4,125
   111fc:	0015959b          	slliw	a1,a1,0x1
   11200:	07c7069b          	addiw	a3,a4,124
   11204:	058e                	slli	a1,a1,0x3
   11206:	bb9d                	j	10f7c <_malloc_r+0x370>
   11208:	7f000693          	li	a3,2032
   1120c:	07f00613          	li	a2,127
   11210:	07e00513          	li	a0,126
   11214:	b45d                	j	10cba <_malloc_r+0xae>
   11216:	7f000593          	li	a1,2032
   1121a:	07e00693          	li	a3,126
   1121e:	bbb9                	j	10f7c <_malloc_r+0x370>
   11220:	0089b783          	ld	a5,8(s3)
   11224:	bd41                	j	110b4 <_malloc_r+0x4a8>

0000000000011226 <memchr>:
   11226:	00757793          	andi	a5,a0,7
   1122a:	0ff5f693          	zext.b	a3,a1
   1122e:	c395                	beqz	a5,11252 <memchr+0x2c>
   11230:	fff60793          	addi	a5,a2,-1
   11234:	c605                	beqz	a2,1125c <memchr+0x36>
   11236:	567d                	li	a2,-1
   11238:	a801                	j	11248 <memchr+0x22>
   1123a:	0505                	addi	a0,a0,1
   1123c:	00757713          	andi	a4,a0,7
   11240:	cb11                	beqz	a4,11254 <memchr+0x2e>
   11242:	17fd                	addi	a5,a5,-1
   11244:	00c78c63          	beq	a5,a2,1125c <memchr+0x36>
   11248:	00054703          	lbu	a4,0(a0)
   1124c:	fed717e3          	bne	a4,a3,1123a <memchr+0x14>
   11250:	8082                	ret
   11252:	87b2                	mv	a5,a2
   11254:	471d                	li	a4,7
   11256:	00f76f63          	bltu	a4,a5,11274 <memchr+0x4e>
   1125a:	e399                	bnez	a5,11260 <memchr+0x3a>
   1125c:	4501                	li	a0,0
   1125e:	8082                	ret
   11260:	97aa                	add	a5,a5,a0
   11262:	a021                	j	1126a <memchr+0x44>
   11264:	0505                	addi	a0,a0,1
   11266:	fea78be3          	beq	a5,a0,1125c <memchr+0x36>
   1126a:	00054703          	lbu	a4,0(a0)
   1126e:	fed71be3          	bne	a4,a3,11264 <memchr+0x3e>
   11272:	8082                	ret
   11274:	0ff5f593          	zext.b	a1,a1
   11278:	00859713          	slli	a4,a1,0x8
   1127c:	8dd9                	or	a1,a1,a4
   1127e:	01059713          	slli	a4,a1,0x10
   11282:	7401b883          	ld	a7,1856(gp) # 146b0 <__SDATA_BEGIN__+0x8>
   11286:	8f4d                	or	a4,a4,a1
   11288:	7481b803          	ld	a6,1864(gp) # 146b8 <__SDATA_BEGIN__+0x10>
   1128c:	02071593          	slli	a1,a4,0x20
   11290:	8dd9                	or	a1,a1,a4
   11292:	431d                	li	t1,7
   11294:	6118                	ld	a4,0(a0)
   11296:	8f2d                	xor	a4,a4,a1
   11298:	01170633          	add	a2,a4,a7
   1129c:	fff74713          	not	a4,a4
   112a0:	8f71                	and	a4,a4,a2
   112a2:	01077733          	and	a4,a4,a6
   112a6:	ff4d                	bnez	a4,11260 <memchr+0x3a>
   112a8:	17e1                	addi	a5,a5,-8
   112aa:	0521                	addi	a0,a0,8
   112ac:	fef364e3          	bltu	t1,a5,11294 <memchr+0x6e>
   112b0:	fbc5                	bnez	a5,11260 <memchr+0x3a>
   112b2:	b76d                	j	1125c <memchr+0x36>

00000000000112b4 <memcpy>:
   112b4:	00a5c7b3          	xor	a5,a1,a0
   112b8:	8b9d                	andi	a5,a5,7
   112ba:	00c508b3          	add	a7,a0,a2
   112be:	eba1                	bnez	a5,1130e <memcpy+0x5a>
   112c0:	479d                	li	a5,7
   112c2:	04c7f663          	bgeu	a5,a2,1130e <memcpy+0x5a>
   112c6:	00757793          	andi	a5,a0,7
   112ca:	872a                	mv	a4,a0
   112cc:	e7cd                	bnez	a5,11376 <memcpy+0xc2>
   112ce:	ff88f613          	andi	a2,a7,-8
   112d2:	40e606b3          	sub	a3,a2,a4
   112d6:	04000793          	li	a5,64
   112da:	04000293          	li	t0,64
   112de:	04d7c463          	blt	a5,a3,11326 <memcpy+0x72>
   112e2:	86ae                	mv	a3,a1
   112e4:	87ba                	mv	a5,a4
   112e6:	02c77163          	bgeu	a4,a2,11308 <memcpy+0x54>
   112ea:	0006b803          	ld	a6,0(a3) # ffffffffffffe000 <__BSS_END__+0xfffffffffffe9890>
   112ee:	07a1                	addi	a5,a5,8
   112f0:	06a1                	addi	a3,a3,8
   112f2:	ff07bc23          	sd	a6,-8(a5) # ffffffffffffeff8 <__BSS_END__+0xfffffffffffea888>
   112f6:	fec7eae3          	bltu	a5,a2,112ea <memcpy+0x36>
   112fa:	fff60793          	addi	a5,a2,-1
   112fe:	8f99                	sub	a5,a5,a4
   11300:	9be1                	andi	a5,a5,-8
   11302:	07a1                	addi	a5,a5,8
   11304:	973e                	add	a4,a4,a5
   11306:	95be                	add	a1,a1,a5
   11308:	01176663          	bltu	a4,a7,11314 <memcpy+0x60>
   1130c:	8082                	ret
   1130e:	872a                	mv	a4,a0
   11310:	ff157ee3          	bgeu	a0,a7,1130c <memcpy+0x58>
   11314:	0005c783          	lbu	a5,0(a1)
   11318:	0705                	addi	a4,a4,1
   1131a:	0585                	addi	a1,a1,1
   1131c:	fef70fa3          	sb	a5,-1(a4)
   11320:	ff176ae3          	bltu	a4,a7,11314 <memcpy+0x60>
   11324:	8082                	ret
   11326:	6594                	ld	a3,8(a1)
   11328:	7d9c                	ld	a5,56(a1)
   1132a:	0005bf83          	ld	t6,0(a1)
   1132e:	0105bf03          	ld	t5,16(a1)
   11332:	0185be83          	ld	t4,24(a1)
   11336:	0205be03          	ld	t3,32(a1)
   1133a:	0285b303          	ld	t1,40(a1)
   1133e:	0305b803          	ld	a6,48(a1)
   11342:	e714                	sd	a3,8(a4)
   11344:	61b4                	ld	a3,64(a1)
   11346:	01f73023          	sd	t6,0(a4)
   1134a:	01e73823          	sd	t5,16(a4)
   1134e:	01d73c23          	sd	t4,24(a4)
   11352:	03c73023          	sd	t3,32(a4)
   11356:	02673423          	sd	t1,40(a4)
   1135a:	03073823          	sd	a6,48(a4)
   1135e:	ff1c                	sd	a5,56(a4)
   11360:	04870713          	addi	a4,a4,72
   11364:	40e607b3          	sub	a5,a2,a4
   11368:	fed73c23          	sd	a3,-8(a4)
   1136c:	04858593          	addi	a1,a1,72
   11370:	faf2cbe3          	blt	t0,a5,11326 <memcpy+0x72>
   11374:	b7bd                	j	112e2 <memcpy+0x2e>
   11376:	0005c683          	lbu	a3,0(a1)
   1137a:	0705                	addi	a4,a4,1
   1137c:	00777793          	andi	a5,a4,7
   11380:	fed70fa3          	sb	a3,-1(a4)
   11384:	0585                	addi	a1,a1,1
   11386:	d7a1                	beqz	a5,112ce <memcpy+0x1a>
   11388:	0005c683          	lbu	a3,0(a1)
   1138c:	0705                	addi	a4,a4,1
   1138e:	00777793          	andi	a5,a4,7
   11392:	fed70fa3          	sb	a3,-1(a4)
   11396:	0585                	addi	a1,a1,1
   11398:	fff9                	bnez	a5,11376 <memcpy+0xc2>
   1139a:	bf15                	j	112ce <memcpy+0x1a>

000000000001139c <memmove>:
   1139c:	02a5f263          	bgeu	a1,a0,113c0 <memmove+0x24>
   113a0:	00c587b3          	add	a5,a1,a2
   113a4:	00f57e63          	bgeu	a0,a5,113c0 <memmove+0x24>
   113a8:	00c50733          	add	a4,a0,a2
   113ac:	ca5d                	beqz	a2,11462 <memmove+0xc6>
   113ae:	fff7c683          	lbu	a3,-1(a5)
   113b2:	17fd                	addi	a5,a5,-1
   113b4:	177d                	addi	a4,a4,-1
   113b6:	00d70023          	sb	a3,0(a4)
   113ba:	fef59ae3          	bne	a1,a5,113ae <memmove+0x12>
   113be:	8082                	ret
   113c0:	47fd                	li	a5,31
   113c2:	02c7e163          	bltu	a5,a2,113e4 <memmove+0x48>
   113c6:	87aa                	mv	a5,a0
   113c8:	fff60693          	addi	a3,a2,-1
   113cc:	c245                	beqz	a2,1146c <memmove+0xd0>
   113ce:	0685                	addi	a3,a3,1
   113d0:	96be                	add	a3,a3,a5
   113d2:	0005c703          	lbu	a4,0(a1)
   113d6:	0785                	addi	a5,a5,1
   113d8:	0585                	addi	a1,a1,1
   113da:	fee78fa3          	sb	a4,-1(a5)
   113de:	fed79ae3          	bne	a5,a3,113d2 <memmove+0x36>
   113e2:	8082                	ret
   113e4:	00a5e7b3          	or	a5,a1,a0
   113e8:	8b9d                	andi	a5,a5,7
   113ea:	efad                	bnez	a5,11464 <memmove+0xc8>
   113ec:	fe060893          	addi	a7,a2,-32
   113f0:	fe08f893          	andi	a7,a7,-32
   113f4:	02088893          	addi	a7,a7,32
   113f8:	01150833          	add	a6,a0,a7
   113fc:	872e                	mv	a4,a1
   113fe:	87aa                	mv	a5,a0
   11400:	6314                	ld	a3,0(a4)
   11402:	02070713          	addi	a4,a4,32
   11406:	02078793          	addi	a5,a5,32
   1140a:	fed7b023          	sd	a3,-32(a5)
   1140e:	fe873683          	ld	a3,-24(a4)
   11412:	fed7b423          	sd	a3,-24(a5)
   11416:	ff073683          	ld	a3,-16(a4)
   1141a:	fed7b823          	sd	a3,-16(a5)
   1141e:	ff873683          	ld	a3,-8(a4)
   11422:	fed7bc23          	sd	a3,-8(a5)
   11426:	fcf81de3          	bne	a6,a5,11400 <memmove+0x64>
   1142a:	01867713          	andi	a4,a2,24
   1142e:	95c6                	add	a1,a1,a7
   11430:	01f67813          	andi	a6,a2,31
   11434:	cf0d                	beqz	a4,1146e <memmove+0xd2>
   11436:	872e                	mv	a4,a1
   11438:	88be                	mv	a7,a5
   1143a:	4e1d                	li	t3,7
   1143c:	00073303          	ld	t1,0(a4)
   11440:	0721                	addi	a4,a4,8
   11442:	40e806b3          	sub	a3,a6,a4
   11446:	0068b023          	sd	t1,0(a7)
   1144a:	96ae                	add	a3,a3,a1
   1144c:	08a1                	addi	a7,a7,8
   1144e:	fede67e3          	bltu	t3,a3,1143c <memmove+0xa0>
   11452:	ff880713          	addi	a4,a6,-8
   11456:	9b61                	andi	a4,a4,-8
   11458:	0721                	addi	a4,a4,8
   1145a:	8a1d                	andi	a2,a2,7
   1145c:	97ba                	add	a5,a5,a4
   1145e:	95ba                	add	a1,a1,a4
   11460:	b7a5                	j	113c8 <memmove+0x2c>
   11462:	8082                	ret
   11464:	fff60693          	addi	a3,a2,-1
   11468:	87aa                	mv	a5,a0
   1146a:	b795                	j	113ce <memmove+0x32>
   1146c:	8082                	ret
   1146e:	8642                	mv	a2,a6
   11470:	bfa1                	j	113c8 <memmove+0x2c>

0000000000011472 <__malloc_lock>:
   11472:	8082                	ret

0000000000011474 <__malloc_unlock>:
   11474:	8082                	ret

0000000000011476 <_realloc_r>:
   11476:	715d                	addi	sp,sp,-80
   11478:	f84a                	sd	s2,48(sp)
   1147a:	e486                	sd	ra,72(sp)
   1147c:	e0a2                	sd	s0,64(sp)
   1147e:	fc26                	sd	s1,56(sp)
   11480:	f44e                	sd	s3,40(sp)
   11482:	f052                	sd	s4,32(sp)
   11484:	ec56                	sd	s5,24(sp)
   11486:	e85a                	sd	s6,16(sp)
   11488:	e45e                	sd	s7,8(sp)
   1148a:	e062                	sd	s8,0(sp)
   1148c:	8932                	mv	s2,a2
   1148e:	14058c63          	beqz	a1,115e6 <_realloc_r+0x170>
   11492:	842e                	mv	s0,a1
   11494:	8aaa                	mv	s5,a0
   11496:	fddff0ef          	jal	ra,11472 <__malloc_lock>
   1149a:	ff843703          	ld	a4,-8(s0)
   1149e:	01790493          	addi	s1,s2,23
   114a2:	02e00793          	li	a5,46
   114a6:	ff040b13          	addi	s6,s0,-16
   114aa:	ffc77a13          	andi	s4,a4,-4
   114ae:	0a97fd63          	bgeu	a5,s1,11568 <_realloc_r+0xf2>
   114b2:	800007b7          	lui	a5,0x80000
   114b6:	98c1                	andi	s1,s1,-16
   114b8:	fff7c793          	not	a5,a5
   114bc:	0a97ea63          	bltu	a5,s1,11570 <_realloc_r+0xfa>
   114c0:	0b24e863          	bltu	s1,s2,11570 <_realloc_r+0xfa>
   114c4:	014b09b3          	add	s3,s6,s4
   114c8:	0c9a5e63          	bge	s4,s1,115a4 <_realloc_r+0x12e>
   114cc:	67d1                	lui	a5,0x14
   114ce:	e9878b93          	addi	s7,a5,-360 # 13e98 <__malloc_av_>
   114d2:	010bb683          	ld	a3,16(s7)
   114d6:	0089b783          	ld	a5,8(s3)
   114da:	15368763          	beq	a3,s3,11628 <_realloc_r+0x1b2>
   114de:	ffe7f693          	andi	a3,a5,-2
   114e2:	96ce                	add	a3,a3,s3
   114e4:	6694                	ld	a3,8(a3)
   114e6:	8a85                	andi	a3,a3,1
   114e8:	e6ed                	bnez	a3,115d2 <_realloc_r+0x15c>
   114ea:	9bf1                	andi	a5,a5,-4
   114ec:	00fa06b3          	add	a3,s4,a5
   114f0:	0a96d163          	bge	a3,s1,11592 <_realloc_r+0x11c>
   114f4:	8b05                	andi	a4,a4,1
   114f6:	e30d                	bnez	a4,11518 <_realloc_r+0xa2>
   114f8:	ff043c03          	ld	s8,-16(s0)
   114fc:	418b0c33          	sub	s8,s6,s8
   11500:	008c3703          	ld	a4,8(s8)
   11504:	9b71                	andi	a4,a4,-4
   11506:	97ba                	add	a5,a5,a4
   11508:	01478bb3          	add	s7,a5,s4
   1150c:	269bd463          	bge	s7,s1,11774 <_realloc_r+0x2fe>
   11510:	00ea0bb3          	add	s7,s4,a4
   11514:	209bd063          	bge	s7,s1,11714 <_realloc_r+0x29e>
   11518:	85ca                	mv	a1,s2
   1151a:	8556                	mv	a0,s5
   1151c:	ef0ff0ef          	jal	ra,10c0c <_malloc_r>
   11520:	892a                	mv	s2,a0
   11522:	cd1d                	beqz	a0,11560 <_realloc_r+0xea>
   11524:	ff843783          	ld	a5,-8(s0)
   11528:	ff050713          	addi	a4,a0,-16
   1152c:	9bf9                	andi	a5,a5,-2
   1152e:	97da                	add	a5,a5,s6
   11530:	1ce78b63          	beq	a5,a4,11706 <_realloc_r+0x290>
   11534:	ff8a0613          	addi	a2,s4,-8
   11538:	04800793          	li	a5,72
   1153c:	22c7e863          	bltu	a5,a2,1176c <_realloc_r+0x2f6>
   11540:	02700713          	li	a4,39
   11544:	6014                	ld	a3,0(s0)
   11546:	18c76063          	bltu	a4,a2,116c6 <_realloc_r+0x250>
   1154a:	87aa                	mv	a5,a0
   1154c:	8722                	mv	a4,s0
   1154e:	e394                	sd	a3,0(a5)
   11550:	6714                	ld	a3,8(a4)
   11552:	e794                	sd	a3,8(a5)
   11554:	6b18                	ld	a4,16(a4)
   11556:	eb98                	sd	a4,16(a5)
   11558:	85a2                	mv	a1,s0
   1155a:	8556                	mv	a0,s5
   1155c:	1f1000ef          	jal	ra,11f4c <_free_r>
   11560:	8556                	mv	a0,s5
   11562:	f13ff0ef          	jal	ra,11474 <__malloc_unlock>
   11566:	a809                	j	11578 <_realloc_r+0x102>
   11568:	02000493          	li	s1,32
   1156c:	f524fce3          	bgeu	s1,s2,114c4 <_realloc_r+0x4e>
   11570:	47b1                	li	a5,12
   11572:	00faa023          	sw	a5,0(s5)
   11576:	4901                	li	s2,0
   11578:	60a6                	ld	ra,72(sp)
   1157a:	6406                	ld	s0,64(sp)
   1157c:	74e2                	ld	s1,56(sp)
   1157e:	79a2                	ld	s3,40(sp)
   11580:	7a02                	ld	s4,32(sp)
   11582:	6ae2                	ld	s5,24(sp)
   11584:	6b42                	ld	s6,16(sp)
   11586:	6ba2                	ld	s7,8(sp)
   11588:	6c02                	ld	s8,0(sp)
   1158a:	854a                	mv	a0,s2
   1158c:	7942                	ld	s2,48(sp)
   1158e:	6161                	addi	sp,sp,80
   11590:	8082                	ret
   11592:	0189b783          	ld	a5,24(s3)
   11596:	0109b703          	ld	a4,16(s3)
   1159a:	8a36                	mv	s4,a3
   1159c:	00db09b3          	add	s3,s6,a3
   115a0:	ef1c                	sd	a5,24(a4)
   115a2:	eb98                	sd	a4,16(a5)
   115a4:	008b3783          	ld	a5,8(s6)
   115a8:	409a0733          	sub	a4,s4,s1
   115ac:	46fd                	li	a3,31
   115ae:	8b85                	andi	a5,a5,1
   115b0:	04e6e963          	bltu	a3,a4,11602 <_realloc_r+0x18c>
   115b4:	00fa67b3          	or	a5,s4,a5
   115b8:	00fb3423          	sd	a5,8(s6)
   115bc:	0089b783          	ld	a5,8(s3)
   115c0:	0017e793          	ori	a5,a5,1
   115c4:	00f9b423          	sd	a5,8(s3)
   115c8:	8556                	mv	a0,s5
   115ca:	eabff0ef          	jal	ra,11474 <__malloc_unlock>
   115ce:	8922                	mv	s2,s0
   115d0:	b765                	j	11578 <_realloc_r+0x102>
   115d2:	8b05                	andi	a4,a4,1
   115d4:	f331                	bnez	a4,11518 <_realloc_r+0xa2>
   115d6:	ff043c03          	ld	s8,-16(s0)
   115da:	418b0c33          	sub	s8,s6,s8
   115de:	008c3703          	ld	a4,8(s8)
   115e2:	9b71                	andi	a4,a4,-4
   115e4:	b735                	j	11510 <_realloc_r+0x9a>
   115e6:	6406                	ld	s0,64(sp)
   115e8:	60a6                	ld	ra,72(sp)
   115ea:	74e2                	ld	s1,56(sp)
   115ec:	7942                	ld	s2,48(sp)
   115ee:	79a2                	ld	s3,40(sp)
   115f0:	7a02                	ld	s4,32(sp)
   115f2:	6ae2                	ld	s5,24(sp)
   115f4:	6b42                	ld	s6,16(sp)
   115f6:	6ba2                	ld	s7,8(sp)
   115f8:	6c02                	ld	s8,0(sp)
   115fa:	85b2                	mv	a1,a2
   115fc:	6161                	addi	sp,sp,80
   115fe:	e0eff06f          	j	10c0c <_malloc_r>
   11602:	8fc5                	or	a5,a5,s1
   11604:	00fb3423          	sd	a5,8(s6)
   11608:	009b05b3          	add	a1,s6,s1
   1160c:	00176713          	ori	a4,a4,1
   11610:	e598                	sd	a4,8(a1)
   11612:	0089b783          	ld	a5,8(s3)
   11616:	05c1                	addi	a1,a1,16
   11618:	8556                	mv	a0,s5
   1161a:	0017e793          	ori	a5,a5,1
   1161e:	00f9b423          	sd	a5,8(s3)
   11622:	12b000ef          	jal	ra,11f4c <_free_r>
   11626:	b74d                	j	115c8 <_realloc_r+0x152>
   11628:	9bf1                	andi	a5,a5,-4
   1162a:	00fa06b3          	add	a3,s4,a5
   1162e:	02048613          	addi	a2,s1,32
   11632:	0ac6d763          	bge	a3,a2,116e0 <_realloc_r+0x26a>
   11636:	8b05                	andi	a4,a4,1
   11638:	ee0710e3          	bnez	a4,11518 <_realloc_r+0xa2>
   1163c:	ff043c03          	ld	s8,-16(s0)
   11640:	418b0c33          	sub	s8,s6,s8
   11644:	008c3703          	ld	a4,8(s8)
   11648:	9b71                	andi	a4,a4,-4
   1164a:	97ba                	add	a5,a5,a4
   1164c:	014789b3          	add	s3,a5,s4
   11650:	ecc9c0e3          	blt	s3,a2,11510 <_realloc_r+0x9a>
   11654:	018c3783          	ld	a5,24(s8)
   11658:	010c3703          	ld	a4,16(s8)
   1165c:	ff8a0613          	addi	a2,s4,-8
   11660:	04800693          	li	a3,72
   11664:	ef1c                	sd	a5,24(a4)
   11666:	eb98                	sd	a4,16(a5)
   11668:	010c0913          	addi	s2,s8,16
   1166c:	1cc6ea63          	bltu	a3,a2,11840 <_realloc_r+0x3ca>
   11670:	02700593          	li	a1,39
   11674:	6018                	ld	a4,0(s0)
   11676:	87ca                	mv	a5,s2
   11678:	00c5ff63          	bgeu	a1,a2,11696 <_realloc_r+0x220>
   1167c:	00ec3823          	sd	a4,16(s8)
   11680:	6418                	ld	a4,8(s0)
   11682:	03700793          	li	a5,55
   11686:	00ec3c23          	sd	a4,24(s8)
   1168a:	1cc7e063          	bltu	a5,a2,1184a <_realloc_r+0x3d4>
   1168e:	6818                	ld	a4,16(s0)
   11690:	020c0793          	addi	a5,s8,32
   11694:	0441                	addi	s0,s0,16
   11696:	e398                	sd	a4,0(a5)
   11698:	6418                	ld	a4,8(s0)
   1169a:	e798                	sd	a4,8(a5)
   1169c:	6818                	ld	a4,16(s0)
   1169e:	eb98                	sd	a4,16(a5)
   116a0:	009c0733          	add	a4,s8,s1
   116a4:	409989b3          	sub	s3,s3,s1
   116a8:	00ebb823          	sd	a4,16(s7)
   116ac:	0019e793          	ori	a5,s3,1
   116b0:	e71c                	sd	a5,8(a4)
   116b2:	008c3783          	ld	a5,8(s8)
   116b6:	8556                	mv	a0,s5
   116b8:	8b85                	andi	a5,a5,1
   116ba:	8cdd                	or	s1,s1,a5
   116bc:	009c3423          	sd	s1,8(s8)
   116c0:	db5ff0ef          	jal	ra,11474 <__malloc_unlock>
   116c4:	bd55                	j	11578 <_realloc_r+0x102>
   116c6:	e114                	sd	a3,0(a0)
   116c8:	6414                	ld	a3,8(s0)
   116ca:	03700713          	li	a4,55
   116ce:	e514                	sd	a3,8(a0)
   116d0:	10c76f63          	bltu	a4,a2,117ee <_realloc_r+0x378>
   116d4:	6814                	ld	a3,16(s0)
   116d6:	01040713          	addi	a4,s0,16
   116da:	01050793          	addi	a5,a0,16
   116de:	bd85                	j	1154e <_realloc_r+0xd8>
   116e0:	9b26                	add	s6,s6,s1
   116e2:	8e85                	sub	a3,a3,s1
   116e4:	016bb823          	sd	s6,16(s7)
   116e8:	0016e793          	ori	a5,a3,1
   116ec:	00fb3423          	sd	a5,8(s6)
   116f0:	ff843783          	ld	a5,-8(s0)
   116f4:	8556                	mv	a0,s5
   116f6:	8922                	mv	s2,s0
   116f8:	8b85                	andi	a5,a5,1
   116fa:	8cdd                	or	s1,s1,a5
   116fc:	fe943c23          	sd	s1,-8(s0)
   11700:	d75ff0ef          	jal	ra,11474 <__malloc_unlock>
   11704:	bd95                	j	11578 <_realloc_r+0x102>
   11706:	ff853783          	ld	a5,-8(a0)
   1170a:	9bf1                	andi	a5,a5,-4
   1170c:	9a3e                	add	s4,s4,a5
   1170e:	014b09b3          	add	s3,s6,s4
   11712:	bd49                	j	115a4 <_realloc_r+0x12e>
   11714:	018c3783          	ld	a5,24(s8)
   11718:	010c3703          	ld	a4,16(s8)
   1171c:	ff8a0613          	addi	a2,s4,-8
   11720:	04800693          	li	a3,72
   11724:	ef1c                	sd	a5,24(a4)
   11726:	eb98                	sd	a4,16(a5)
   11728:	010c0913          	addi	s2,s8,16
   1172c:	017c09b3          	add	s3,s8,s7
   11730:	0ac6e763          	bltu	a3,a2,117de <_realloc_r+0x368>
   11734:	02700593          	li	a1,39
   11738:	6018                	ld	a4,0(s0)
   1173a:	87ca                	mv	a5,s2
   1173c:	00c5ff63          	bgeu	a1,a2,1175a <_realloc_r+0x2e4>
   11740:	00ec3823          	sd	a4,16(s8)
   11744:	6418                	ld	a4,8(s0)
   11746:	03700793          	li	a5,55
   1174a:	00ec3c23          	sd	a4,24(s8)
   1174e:	0ac7ec63          	bltu	a5,a2,11806 <_realloc_r+0x390>
   11752:	6818                	ld	a4,16(s0)
   11754:	020c0793          	addi	a5,s8,32
   11758:	0441                	addi	s0,s0,16
   1175a:	e398                	sd	a4,0(a5)
   1175c:	6418                	ld	a4,8(s0)
   1175e:	8a5e                	mv	s4,s7
   11760:	8b62                	mv	s6,s8
   11762:	e798                	sd	a4,8(a5)
   11764:	6818                	ld	a4,16(s0)
   11766:	844a                	mv	s0,s2
   11768:	eb98                	sd	a4,16(a5)
   1176a:	bd2d                	j	115a4 <_realloc_r+0x12e>
   1176c:	85a2                	mv	a1,s0
   1176e:	c2fff0ef          	jal	ra,1139c <memmove>
   11772:	b3dd                	j	11558 <_realloc_r+0xe2>
   11774:	0189b783          	ld	a5,24(s3)
   11778:	0109b703          	ld	a4,16(s3)
   1177c:	ff8a0613          	addi	a2,s4,-8
   11780:	04800693          	li	a3,72
   11784:	ef1c                	sd	a5,24(a4)
   11786:	eb98                	sd	a4,16(a5)
   11788:	010c3703          	ld	a4,16(s8)
   1178c:	018c3783          	ld	a5,24(s8)
   11790:	010c0913          	addi	s2,s8,16
   11794:	017c09b3          	add	s3,s8,s7
   11798:	ef1c                	sd	a5,24(a4)
   1179a:	eb98                	sd	a4,16(a5)
   1179c:	04c6e163          	bltu	a3,a2,117de <_realloc_r+0x368>
   117a0:	02700693          	li	a3,39
   117a4:	6018                	ld	a4,0(s0)
   117a6:	87ca                	mv	a5,s2
   117a8:	fac6f9e3          	bgeu	a3,a2,1175a <_realloc_r+0x2e4>
   117ac:	00ec3823          	sd	a4,16(s8)
   117b0:	6418                	ld	a4,8(s0)
   117b2:	03700793          	li	a5,55
   117b6:	00ec3c23          	sd	a4,24(s8)
   117ba:	6818                	ld	a4,16(s0)
   117bc:	f8c7fce3          	bgeu	a5,a2,11754 <_realloc_r+0x2de>
   117c0:	02ec3023          	sd	a4,32(s8)
   117c4:	6c18                	ld	a4,24(s0)
   117c6:	04800793          	li	a5,72
   117ca:	02ec3423          	sd	a4,40(s8)
   117ce:	7018                	ld	a4,32(s0)
   117d0:	04f60463          	beq	a2,a5,11818 <_realloc_r+0x3a2>
   117d4:	030c0793          	addi	a5,s8,48
   117d8:	02040413          	addi	s0,s0,32
   117dc:	bfbd                	j	1175a <_realloc_r+0x2e4>
   117de:	85a2                	mv	a1,s0
   117e0:	854a                	mv	a0,s2
   117e2:	bbbff0ef          	jal	ra,1139c <memmove>
   117e6:	844a                	mv	s0,s2
   117e8:	8a5e                	mv	s4,s7
   117ea:	8b62                	mv	s6,s8
   117ec:	bb65                	j	115a4 <_realloc_r+0x12e>
   117ee:	6818                	ld	a4,16(s0)
   117f0:	e918                	sd	a4,16(a0)
   117f2:	6c18                	ld	a4,24(s0)
   117f4:	ed18                	sd	a4,24(a0)
   117f6:	7014                	ld	a3,32(s0)
   117f8:	02f60b63          	beq	a2,a5,1182e <_realloc_r+0x3b8>
   117fc:	02040713          	addi	a4,s0,32
   11800:	02050793          	addi	a5,a0,32
   11804:	b3a9                	j	1154e <_realloc_r+0xd8>
   11806:	681c                	ld	a5,16(s0)
   11808:	02fc3023          	sd	a5,32(s8)
   1180c:	6c1c                	ld	a5,24(s0)
   1180e:	02fc3423          	sd	a5,40(s8)
   11812:	7018                	ld	a4,32(s0)
   11814:	fcd610e3          	bne	a2,a3,117d4 <_realloc_r+0x35e>
   11818:	02ec3823          	sd	a4,48(s8)
   1181c:	7418                	ld	a4,40(s0)
   1181e:	040c0793          	addi	a5,s8,64
   11822:	03040413          	addi	s0,s0,48
   11826:	02ec3c23          	sd	a4,56(s8)
   1182a:	6018                	ld	a4,0(s0)
   1182c:	b73d                	j	1175a <_realloc_r+0x2e4>
   1182e:	f114                	sd	a3,32(a0)
   11830:	7414                	ld	a3,40(s0)
   11832:	03040713          	addi	a4,s0,48
   11836:	03050793          	addi	a5,a0,48
   1183a:	f514                	sd	a3,40(a0)
   1183c:	7814                	ld	a3,48(s0)
   1183e:	bb01                	j	1154e <_realloc_r+0xd8>
   11840:	85a2                	mv	a1,s0
   11842:	854a                	mv	a0,s2
   11844:	b59ff0ef          	jal	ra,1139c <memmove>
   11848:	bda1                	j	116a0 <_realloc_r+0x22a>
   1184a:	681c                	ld	a5,16(s0)
   1184c:	02fc3023          	sd	a5,32(s8)
   11850:	6c1c                	ld	a5,24(s0)
   11852:	02fc3423          	sd	a5,40(s8)
   11856:	7018                	ld	a4,32(s0)
   11858:	00d60763          	beq	a2,a3,11866 <_realloc_r+0x3f0>
   1185c:	030c0793          	addi	a5,s8,48
   11860:	02040413          	addi	s0,s0,32
   11864:	bd0d                	j	11696 <_realloc_r+0x220>
   11866:	02ec3823          	sd	a4,48(s8)
   1186a:	7418                	ld	a4,40(s0)
   1186c:	040c0793          	addi	a5,s8,64
   11870:	03040413          	addi	s0,s0,48
   11874:	02ec3c23          	sd	a4,56(s8)
   11878:	6018                	ld	a4,0(s0)
   1187a:	bd31                	j	11696 <_realloc_r+0x220>

000000000001187c <_sbrk_r>:
   1187c:	1101                	addi	sp,sp,-32
   1187e:	e822                	sd	s0,16(sp)
   11880:	e426                	sd	s1,8(sp)
   11882:	842a                	mv	s0,a0
   11884:	852e                	mv	a0,a1
   11886:	ec06                	sd	ra,24(sp)
   11888:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   1188c:	5a7000ef          	jal	ra,12632 <_sbrk>
   11890:	57fd                	li	a5,-1
   11892:	00f50763          	beq	a0,a5,118a0 <_sbrk_r+0x24>
   11896:	60e2                	ld	ra,24(sp)
   11898:	6442                	ld	s0,16(sp)
   1189a:	64a2                	ld	s1,8(sp)
   1189c:	6105                	addi	sp,sp,32
   1189e:	8082                	ret
   118a0:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   118a4:	dbed                	beqz	a5,11896 <_sbrk_r+0x1a>
   118a6:	60e2                	ld	ra,24(sp)
   118a8:	c01c                	sw	a5,0(s0)
   118aa:	6442                	ld	s0,16(sp)
   118ac:	64a2                	ld	s1,8(sp)
   118ae:	6105                	addi	sp,sp,32
   118b0:	8082                	ret

00000000000118b2 <__sread>:
   118b2:	1141                	addi	sp,sp,-16
   118b4:	e022                	sd	s0,0(sp)
   118b6:	842e                	mv	s0,a1
   118b8:	01259583          	lh	a1,18(a1)
   118bc:	e406                	sd	ra,8(sp)
   118be:	2ad000ef          	jal	ra,1236a <_read_r>
   118c2:	00054963          	bltz	a0,118d4 <__sread+0x22>
   118c6:	685c                	ld	a5,144(s0)
   118c8:	60a2                	ld	ra,8(sp)
   118ca:	97aa                	add	a5,a5,a0
   118cc:	e85c                	sd	a5,144(s0)
   118ce:	6402                	ld	s0,0(sp)
   118d0:	0141                	addi	sp,sp,16
   118d2:	8082                	ret
   118d4:	01045783          	lhu	a5,16(s0)
   118d8:	777d                	lui	a4,0xfffff
   118da:	177d                	addi	a4,a4,-1
   118dc:	8ff9                	and	a5,a5,a4
   118de:	60a2                	ld	ra,8(sp)
   118e0:	00f41823          	sh	a5,16(s0)
   118e4:	6402                	ld	s0,0(sp)
   118e6:	0141                	addi	sp,sp,16
   118e8:	8082                	ret

00000000000118ea <__seofread>:
   118ea:	4501                	li	a0,0
   118ec:	8082                	ret

00000000000118ee <__swrite>:
   118ee:	01059783          	lh	a5,16(a1)
   118f2:	7179                	addi	sp,sp,-48
   118f4:	f022                	sd	s0,32(sp)
   118f6:	ec26                	sd	s1,24(sp)
   118f8:	e84a                	sd	s2,16(sp)
   118fa:	e44e                	sd	s3,8(sp)
   118fc:	f406                	sd	ra,40(sp)
   118fe:	1007f713          	andi	a4,a5,256
   11902:	842e                	mv	s0,a1
   11904:	84aa                	mv	s1,a0
   11906:	01259583          	lh	a1,18(a1)
   1190a:	8932                	mv	s2,a2
   1190c:	89b6                	mv	s3,a3
   1190e:	e305                	bnez	a4,1192e <__swrite+0x40>
   11910:	777d                	lui	a4,0xfffff
   11912:	177d                	addi	a4,a4,-1
   11914:	8ff9                	and	a5,a5,a4
   11916:	00f41823          	sh	a5,16(s0)
   1191a:	7402                	ld	s0,32(sp)
   1191c:	70a2                	ld	ra,40(sp)
   1191e:	86ce                	mv	a3,s3
   11920:	864a                	mv	a2,s2
   11922:	69a2                	ld	s3,8(sp)
   11924:	6942                	ld	s2,16(sp)
   11926:	8526                	mv	a0,s1
   11928:	64e2                	ld	s1,24(sp)
   1192a:	6145                	addi	sp,sp,48
   1192c:	a8b1                	j	11988 <_write_r>
   1192e:	4689                	li	a3,2
   11930:	4601                	li	a2,0
   11932:	067000ef          	jal	ra,12198 <_lseek_r>
   11936:	01041783          	lh	a5,16(s0)
   1193a:	01241583          	lh	a1,18(s0)
   1193e:	bfc9                	j	11910 <__swrite+0x22>

0000000000011940 <__sseek>:
   11940:	1141                	addi	sp,sp,-16
   11942:	e022                	sd	s0,0(sp)
   11944:	842e                	mv	s0,a1
   11946:	01259583          	lh	a1,18(a1)
   1194a:	e406                	sd	ra,8(sp)
   1194c:	04d000ef          	jal	ra,12198 <_lseek_r>
   11950:	57fd                	li	a5,-1
   11952:	00f50d63          	beq	a0,a5,1196c <__sseek+0x2c>
   11956:	01045783          	lhu	a5,16(s0)
   1195a:	6705                	lui	a4,0x1
   1195c:	60a2                	ld	ra,8(sp)
   1195e:	8fd9                	or	a5,a5,a4
   11960:	e848                	sd	a0,144(s0)
   11962:	00f41823          	sh	a5,16(s0)
   11966:	6402                	ld	s0,0(sp)
   11968:	0141                	addi	sp,sp,16
   1196a:	8082                	ret
   1196c:	01045783          	lhu	a5,16(s0)
   11970:	777d                	lui	a4,0xfffff
   11972:	177d                	addi	a4,a4,-1
   11974:	8ff9                	and	a5,a5,a4
   11976:	60a2                	ld	ra,8(sp)
   11978:	00f41823          	sh	a5,16(s0)
   1197c:	6402                	ld	s0,0(sp)
   1197e:	0141                	addi	sp,sp,16
   11980:	8082                	ret

0000000000011982 <__sclose>:
   11982:	01259583          	lh	a1,18(a1)
   11986:	a275                	j	11b32 <_close_r>

0000000000011988 <_write_r>:
   11988:	1101                	addi	sp,sp,-32
   1198a:	872e                	mv	a4,a1
   1198c:	e822                	sd	s0,16(sp)
   1198e:	e426                	sd	s1,8(sp)
   11990:	85b2                	mv	a1,a2
   11992:	842a                	mv	s0,a0
   11994:	8636                	mv	a2,a3
   11996:	853a                	mv	a0,a4
   11998:	ec06                	sd	ra,24(sp)
   1199a:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   1199e:	4e9000ef          	jal	ra,12686 <_write>
   119a2:	57fd                	li	a5,-1
   119a4:	00f50763          	beq	a0,a5,119b2 <_write_r+0x2a>
   119a8:	60e2                	ld	ra,24(sp)
   119aa:	6442                	ld	s0,16(sp)
   119ac:	64a2                	ld	s1,8(sp)
   119ae:	6105                	addi	sp,sp,32
   119b0:	8082                	ret
   119b2:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   119b6:	dbed                	beqz	a5,119a8 <_write_r+0x20>
   119b8:	60e2                	ld	ra,24(sp)
   119ba:	c01c                	sw	a5,0(s0)
   119bc:	6442                	ld	s0,16(sp)
   119be:	64a2                	ld	s1,8(sp)
   119c0:	6105                	addi	sp,sp,32
   119c2:	8082                	ret

00000000000119c4 <__swsetup_r>:
   119c4:	7601b783          	ld	a5,1888(gp) # 146d0 <_impure_ptr>
   119c8:	1101                	addi	sp,sp,-32
   119ca:	e822                	sd	s0,16(sp)
   119cc:	e426                	sd	s1,8(sp)
   119ce:	ec06                	sd	ra,24(sp)
   119d0:	84aa                	mv	s1,a0
   119d2:	842e                	mv	s0,a1
   119d4:	c399                	beqz	a5,119da <__swsetup_r+0x16>
   119d6:	4bb8                	lw	a4,80(a5)
   119d8:	cf21                	beqz	a4,11a30 <__swsetup_r+0x6c>
   119da:	01041703          	lh	a4,16(s0)
   119de:	03071793          	slli	a5,a4,0x30
   119e2:	00877693          	andi	a3,a4,8
   119e6:	93c1                	srli	a5,a5,0x30
   119e8:	ceb9                	beqz	a3,11a46 <__swsetup_r+0x82>
   119ea:	6c14                	ld	a3,24(s0)
   119ec:	cabd                	beqz	a3,11a62 <__swsetup_r+0x9e>
   119ee:	0017f613          	andi	a2,a5,1
   119f2:	ce11                	beqz	a2,11a0e <__swsetup_r+0x4a>
   119f4:	5010                	lw	a2,32(s0)
   119f6:	00042623          	sw	zero,12(s0)
   119fa:	4501                	li	a0,0
   119fc:	40c0063b          	negw	a2,a2
   11a00:	d410                	sw	a2,40(s0)
   11a02:	ce91                	beqz	a3,11a1e <__swsetup_r+0x5a>
   11a04:	60e2                	ld	ra,24(sp)
   11a06:	6442                	ld	s0,16(sp)
   11a08:	64a2                	ld	s1,8(sp)
   11a0a:	6105                	addi	sp,sp,32
   11a0c:	8082                	ret
   11a0e:	0027f613          	andi	a2,a5,2
   11a12:	4581                	li	a1,0
   11a14:	e211                	bnez	a2,11a18 <__swsetup_r+0x54>
   11a16:	500c                	lw	a1,32(s0)
   11a18:	c44c                	sw	a1,12(s0)
   11a1a:	4501                	li	a0,0
   11a1c:	f6e5                	bnez	a3,11a04 <__swsetup_r+0x40>
   11a1e:	0807f793          	andi	a5,a5,128
   11a22:	d3ed                	beqz	a5,11a04 <__swsetup_r+0x40>
   11a24:	04076713          	ori	a4,a4,64
   11a28:	00e41823          	sh	a4,16(s0)
   11a2c:	557d                	li	a0,-1
   11a2e:	bfd9                	j	11a04 <__swsetup_r+0x40>
   11a30:	853e                	mv	a0,a5
   11a32:	d49fe0ef          	jal	ra,1077a <__sinit>
   11a36:	01041703          	lh	a4,16(s0)
   11a3a:	03071793          	slli	a5,a4,0x30
   11a3e:	00877693          	andi	a3,a4,8
   11a42:	93c1                	srli	a5,a5,0x30
   11a44:	f2dd                	bnez	a3,119ea <__swsetup_r+0x26>
   11a46:	0107f693          	andi	a3,a5,16
   11a4a:	c2ad                	beqz	a3,11aac <__swsetup_r+0xe8>
   11a4c:	8b91                	andi	a5,a5,4
   11a4e:	eb9d                	bnez	a5,11a84 <__swsetup_r+0xc0>
   11a50:	6c14                	ld	a3,24(s0)
   11a52:	00876713          	ori	a4,a4,8
   11a56:	03071793          	slli	a5,a4,0x30
   11a5a:	00e41823          	sh	a4,16(s0)
   11a5e:	93c1                	srli	a5,a5,0x30
   11a60:	f6d9                	bnez	a3,119ee <__swsetup_r+0x2a>
   11a62:	2807f613          	andi	a2,a5,640
   11a66:	20000593          	li	a1,512
   11a6a:	f8b602e3          	beq	a2,a1,119ee <__swsetup_r+0x2a>
   11a6e:	85a2                	mv	a1,s0
   11a70:	8526                	mv	a0,s1
   11a72:	762000ef          	jal	ra,121d4 <__smakebuf_r>
   11a76:	01041703          	lh	a4,16(s0)
   11a7a:	6c14                	ld	a3,24(s0)
   11a7c:	03071793          	slli	a5,a4,0x30
   11a80:	93c1                	srli	a5,a5,0x30
   11a82:	b7b5                	j	119ee <__swsetup_r+0x2a>
   11a84:	6c2c                	ld	a1,88(s0)
   11a86:	cd81                	beqz	a1,11a9e <__swsetup_r+0xda>
   11a88:	07440793          	addi	a5,s0,116
   11a8c:	00f58763          	beq	a1,a5,11a9a <__swsetup_r+0xd6>
   11a90:	8526                	mv	a0,s1
   11a92:	4ba000ef          	jal	ra,11f4c <_free_r>
   11a96:	01041703          	lh	a4,16(s0)
   11a9a:	04043c23          	sd	zero,88(s0)
   11a9e:	6c14                	ld	a3,24(s0)
   11aa0:	fdb77713          	andi	a4,a4,-37
   11aa4:	00042423          	sw	zero,8(s0)
   11aa8:	e014                	sd	a3,0(s0)
   11aaa:	b765                	j	11a52 <__swsetup_r+0x8e>
   11aac:	47a5                	li	a5,9
   11aae:	c09c                	sw	a5,0(s1)
   11ab0:	04076713          	ori	a4,a4,64
   11ab4:	00e41823          	sh	a4,16(s0)
   11ab8:	557d                	li	a0,-1
   11aba:	b7a9                	j	11a04 <__swsetup_r+0x40>

0000000000011abc <__register_exitproc>:
   11abc:	7501b703          	ld	a4,1872(gp) # 146c0 <_global_impure_ptr>
   11ac0:	1f873783          	ld	a5,504(a4) # fffffffffffff1f8 <__BSS_END__+0xfffffffffffeaa88>
   11ac4:	c3b1                	beqz	a5,11b08 <__register_exitproc+0x4c>
   11ac6:	4798                	lw	a4,8(a5)
   11ac8:	487d                	li	a6,31
   11aca:	06e84263          	blt	a6,a4,11b2e <__register_exitproc+0x72>
   11ace:	c505                	beqz	a0,11af6 <__register_exitproc+0x3a>
   11ad0:	00371813          	slli	a6,a4,0x3
   11ad4:	983e                	add	a6,a6,a5
   11ad6:	10c83823          	sd	a2,272(a6)
   11ada:	3107a883          	lw	a7,784(a5)
   11ade:	4605                	li	a2,1
   11ae0:	00e6163b          	sllw	a2,a2,a4
   11ae4:	00c8e8b3          	or	a7,a7,a2
   11ae8:	3117a823          	sw	a7,784(a5)
   11aec:	20d83823          	sd	a3,528(a6)
   11af0:	4689                	li	a3,2
   11af2:	02d50063          	beq	a0,a3,11b12 <__register_exitproc+0x56>
   11af6:	00270693          	addi	a3,a4,2
   11afa:	068e                	slli	a3,a3,0x3
   11afc:	2705                	addiw	a4,a4,1
   11afe:	c798                	sw	a4,8(a5)
   11b00:	97b6                	add	a5,a5,a3
   11b02:	e38c                	sd	a1,0(a5)
   11b04:	4501                	li	a0,0
   11b06:	8082                	ret
   11b08:	20070793          	addi	a5,a4,512
   11b0c:	1ef73c23          	sd	a5,504(a4)
   11b10:	bf5d                	j	11ac6 <__register_exitproc+0xa>
   11b12:	3147a683          	lw	a3,788(a5)
   11b16:	4501                	li	a0,0
   11b18:	8e55                	or	a2,a2,a3
   11b1a:	00270693          	addi	a3,a4,2
   11b1e:	068e                	slli	a3,a3,0x3
   11b20:	2705                	addiw	a4,a4,1
   11b22:	30c7aa23          	sw	a2,788(a5)
   11b26:	c798                	sw	a4,8(a5)
   11b28:	97b6                	add	a5,a5,a3
   11b2a:	e38c                	sd	a1,0(a5)
   11b2c:	8082                	ret
   11b2e:	557d                	li	a0,-1
   11b30:	8082                	ret

0000000000011b32 <_close_r>:
   11b32:	1101                	addi	sp,sp,-32
   11b34:	e822                	sd	s0,16(sp)
   11b36:	e426                	sd	s1,8(sp)
   11b38:	842a                	mv	s0,a0
   11b3a:	852e                	mv	a0,a1
   11b3c:	ec06                	sd	ra,24(sp)
   11b3e:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   11b42:	1e5000ef          	jal	ra,12526 <_close>
   11b46:	57fd                	li	a5,-1
   11b48:	00f50763          	beq	a0,a5,11b56 <_close_r+0x24>
   11b4c:	60e2                	ld	ra,24(sp)
   11b4e:	6442                	ld	s0,16(sp)
   11b50:	64a2                	ld	s1,8(sp)
   11b52:	6105                	addi	sp,sp,32
   11b54:	8082                	ret
   11b56:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   11b5a:	dbed                	beqz	a5,11b4c <_close_r+0x1a>
   11b5c:	60e2                	ld	ra,24(sp)
   11b5e:	c01c                	sw	a5,0(s0)
   11b60:	6442                	ld	s0,16(sp)
   11b62:	64a2                	ld	s1,8(sp)
   11b64:	6105                	addi	sp,sp,32
   11b66:	8082                	ret

0000000000011b68 <_fclose_r.part.0>:
   11b68:	1101                	addi	sp,sp,-32
   11b6a:	e822                	sd	s0,16(sp)
   11b6c:	e426                	sd	s1,8(sp)
   11b6e:	e04a                	sd	s2,0(sp)
   11b70:	842e                	mv	s0,a1
   11b72:	ec06                	sd	ra,24(sp)
   11b74:	84aa                	mv	s1,a0
   11b76:	0f2000ef          	jal	ra,11c68 <__sflush_r>
   11b7a:	683c                	ld	a5,80(s0)
   11b7c:	892a                	mv	s2,a0
   11b7e:	c791                	beqz	a5,11b8a <_fclose_r.part.0+0x22>
   11b80:	780c                	ld	a1,48(s0)
   11b82:	8526                	mv	a0,s1
   11b84:	9782                	jalr	a5
   11b86:	04054663          	bltz	a0,11bd2 <_fclose_r.part.0+0x6a>
   11b8a:	01045783          	lhu	a5,16(s0)
   11b8e:	0807f793          	andi	a5,a5,128
   11b92:	e7b1                	bnez	a5,11bde <_fclose_r.part.0+0x76>
   11b94:	6c2c                	ld	a1,88(s0)
   11b96:	c991                	beqz	a1,11baa <_fclose_r.part.0+0x42>
   11b98:	07440793          	addi	a5,s0,116
   11b9c:	00f58563          	beq	a1,a5,11ba6 <_fclose_r.part.0+0x3e>
   11ba0:	8526                	mv	a0,s1
   11ba2:	3aa000ef          	jal	ra,11f4c <_free_r>
   11ba6:	04043c23          	sd	zero,88(s0)
   11baa:	7c2c                	ld	a1,120(s0)
   11bac:	c591                	beqz	a1,11bb8 <_fclose_r.part.0+0x50>
   11bae:	8526                	mv	a0,s1
   11bb0:	39c000ef          	jal	ra,11f4c <_free_r>
   11bb4:	06043c23          	sd	zero,120(s0)
   11bb8:	bcbfe0ef          	jal	ra,10782 <__sfp_lock_acquire>
   11bbc:	00041823          	sh	zero,16(s0)
   11bc0:	bc5fe0ef          	jal	ra,10784 <__sfp_lock_release>
   11bc4:	60e2                	ld	ra,24(sp)
   11bc6:	6442                	ld	s0,16(sp)
   11bc8:	64a2                	ld	s1,8(sp)
   11bca:	854a                	mv	a0,s2
   11bcc:	6902                	ld	s2,0(sp)
   11bce:	6105                	addi	sp,sp,32
   11bd0:	8082                	ret
   11bd2:	01045783          	lhu	a5,16(s0)
   11bd6:	597d                	li	s2,-1
   11bd8:	0807f793          	andi	a5,a5,128
   11bdc:	dfc5                	beqz	a5,11b94 <_fclose_r.part.0+0x2c>
   11bde:	6c0c                	ld	a1,24(s0)
   11be0:	8526                	mv	a0,s1
   11be2:	36a000ef          	jal	ra,11f4c <_free_r>
   11be6:	b77d                	j	11b94 <_fclose_r.part.0+0x2c>

0000000000011be8 <_fclose_r>:
   11be8:	cd8d                	beqz	a1,11c22 <_fclose_r+0x3a>
   11bea:	1101                	addi	sp,sp,-32
   11bec:	e822                	sd	s0,16(sp)
   11bee:	ec06                	sd	ra,24(sp)
   11bf0:	842a                	mv	s0,a0
   11bf2:	c119                	beqz	a0,11bf8 <_fclose_r+0x10>
   11bf4:	493c                	lw	a5,80(a0)
   11bf6:	cf91                	beqz	a5,11c12 <_fclose_r+0x2a>
   11bf8:	01059783          	lh	a5,16(a1)
   11bfc:	e791                	bnez	a5,11c08 <_fclose_r+0x20>
   11bfe:	60e2                	ld	ra,24(sp)
   11c00:	6442                	ld	s0,16(sp)
   11c02:	4501                	li	a0,0
   11c04:	6105                	addi	sp,sp,32
   11c06:	8082                	ret
   11c08:	8522                	mv	a0,s0
   11c0a:	6442                	ld	s0,16(sp)
   11c0c:	60e2                	ld	ra,24(sp)
   11c0e:	6105                	addi	sp,sp,32
   11c10:	bfa1                	j	11b68 <_fclose_r.part.0>
   11c12:	e42e                	sd	a1,8(sp)
   11c14:	b67fe0ef          	jal	ra,1077a <__sinit>
   11c18:	65a2                	ld	a1,8(sp)
   11c1a:	01059783          	lh	a5,16(a1)
   11c1e:	d3e5                	beqz	a5,11bfe <_fclose_r+0x16>
   11c20:	b7e5                	j	11c08 <_fclose_r+0x20>
   11c22:	4501                	li	a0,0
   11c24:	8082                	ret

0000000000011c26 <fclose>:
   11c26:	cd1d                	beqz	a0,11c64 <fclose+0x3e>
   11c28:	1101                	addi	sp,sp,-32
   11c2a:	e822                	sd	s0,16(sp)
   11c2c:	842a                	mv	s0,a0
   11c2e:	7601b503          	ld	a0,1888(gp) # 146d0 <_impure_ptr>
   11c32:	ec06                	sd	ra,24(sp)
   11c34:	c119                	beqz	a0,11c3a <fclose+0x14>
   11c36:	493c                	lw	a5,80(a0)
   11c38:	cf91                	beqz	a5,11c54 <fclose+0x2e>
   11c3a:	01041783          	lh	a5,16(s0)
   11c3e:	e791                	bnez	a5,11c4a <fclose+0x24>
   11c40:	60e2                	ld	ra,24(sp)
   11c42:	6442                	ld	s0,16(sp)
   11c44:	4501                	li	a0,0
   11c46:	6105                	addi	sp,sp,32
   11c48:	8082                	ret
   11c4a:	85a2                	mv	a1,s0
   11c4c:	6442                	ld	s0,16(sp)
   11c4e:	60e2                	ld	ra,24(sp)
   11c50:	6105                	addi	sp,sp,32
   11c52:	bf19                	j	11b68 <_fclose_r.part.0>
   11c54:	e42a                	sd	a0,8(sp)
   11c56:	b25fe0ef          	jal	ra,1077a <__sinit>
   11c5a:	01041783          	lh	a5,16(s0)
   11c5e:	6522                	ld	a0,8(sp)
   11c60:	d3e5                	beqz	a5,11c40 <fclose+0x1a>
   11c62:	b7e5                	j	11c4a <fclose+0x24>
   11c64:	4501                	li	a0,0
   11c66:	8082                	ret

0000000000011c68 <__sflush_r>:
   11c68:	01059783          	lh	a5,16(a1)
   11c6c:	7179                	addi	sp,sp,-48
   11c6e:	f022                	sd	s0,32(sp)
   11c70:	e44e                	sd	s3,8(sp)
   11c72:	f406                	sd	ra,40(sp)
   11c74:	ec26                	sd	s1,24(sp)
   11c76:	e84a                	sd	s2,16(sp)
   11c78:	0087f693          	andi	a3,a5,8
   11c7c:	842e                	mv	s0,a1
   11c7e:	89aa                	mv	s3,a0
   11c80:	ead5                	bnez	a3,11d34 <__sflush_r+0xcc>
   11c82:	6705                	lui	a4,0x1
   11c84:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   11c88:	4594                	lw	a3,8(a1)
   11c8a:	8fd9                	or	a5,a5,a4
   11c8c:	00f59823          	sh	a5,16(a1)
   11c90:	10d05063          	blez	a3,11d90 <__sflush_r+0x128>
   11c94:	6438                	ld	a4,72(s0)
   11c96:	c759                	beqz	a4,11d24 <__sflush_r+0xbc>
   11c98:	17c2                	slli	a5,a5,0x30
   11c9a:	93c1                	srli	a5,a5,0x30
   11c9c:	6685                	lui	a3,0x1
   11c9e:	0009a483          	lw	s1,0(s3)
   11ca2:	8efd                	and	a3,a3,a5
   11ca4:	0009a023          	sw	zero,0(s3)
   11ca8:	780c                	ld	a1,48(s0)
   11caa:	e6fd                	bnez	a3,11d98 <__sflush_r+0x130>
   11cac:	4601                	li	a2,0
   11cae:	4685                	li	a3,1
   11cb0:	854e                	mv	a0,s3
   11cb2:	9702                	jalr	a4
   11cb4:	57fd                	li	a5,-1
   11cb6:	862a                	mv	a2,a0
   11cb8:	10f50763          	beq	a0,a5,11dc6 <__sflush_r+0x15e>
   11cbc:	01045783          	lhu	a5,16(s0)
   11cc0:	6438                	ld	a4,72(s0)
   11cc2:	780c                	ld	a1,48(s0)
   11cc4:	8b91                	andi	a5,a5,4
   11cc6:	c799                	beqz	a5,11cd4 <__sflush_r+0x6c>
   11cc8:	4414                	lw	a3,8(s0)
   11cca:	6c3c                	ld	a5,88(s0)
   11ccc:	8e15                	sub	a2,a2,a3
   11cce:	c399                	beqz	a5,11cd4 <__sflush_r+0x6c>
   11cd0:	583c                	lw	a5,112(s0)
   11cd2:	8e1d                	sub	a2,a2,a5
   11cd4:	4681                	li	a3,0
   11cd6:	854e                	mv	a0,s3
   11cd8:	9702                	jalr	a4
   11cda:	57fd                	li	a5,-1
   11cdc:	0cf51063          	bne	a0,a5,11d9c <__sflush_r+0x134>
   11ce0:	0009a703          	lw	a4,0(s3)
   11ce4:	01041783          	lh	a5,16(s0)
   11ce8:	cf6d                	beqz	a4,11de2 <__sflush_r+0x17a>
   11cea:	46f5                	li	a3,29
   11cec:	00d70563          	beq	a4,a3,11cf6 <__sflush_r+0x8e>
   11cf0:	46d9                	li	a3,22
   11cf2:	0ed71e63          	bne	a4,a3,11dee <__sflush_r+0x186>
   11cf6:	6c14                	ld	a3,24(s0)
   11cf8:	777d                	lui	a4,0xfffff
   11cfa:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb08f>
   11cfe:	8ff9                	and	a5,a5,a4
   11d00:	00f41823          	sh	a5,16(s0)
   11d04:	00042423          	sw	zero,8(s0)
   11d08:	e014                	sd	a3,0(s0)
   11d0a:	6c2c                	ld	a1,88(s0)
   11d0c:	0099a023          	sw	s1,0(s3)
   11d10:	c991                	beqz	a1,11d24 <__sflush_r+0xbc>
   11d12:	07440793          	addi	a5,s0,116
   11d16:	00f58563          	beq	a1,a5,11d20 <__sflush_r+0xb8>
   11d1a:	854e                	mv	a0,s3
   11d1c:	230000ef          	jal	ra,11f4c <_free_r>
   11d20:	04043c23          	sd	zero,88(s0)
   11d24:	4501                	li	a0,0
   11d26:	70a2                	ld	ra,40(sp)
   11d28:	7402                	ld	s0,32(sp)
   11d2a:	64e2                	ld	s1,24(sp)
   11d2c:	6942                	ld	s2,16(sp)
   11d2e:	69a2                	ld	s3,8(sp)
   11d30:	6145                	addi	sp,sp,48
   11d32:	8082                	ret
   11d34:	0185b903          	ld	s2,24(a1)
   11d38:	fe0906e3          	beqz	s2,11d24 <__sflush_r+0xbc>
   11d3c:	6184                	ld	s1,0(a1)
   11d3e:	03079713          	slli	a4,a5,0x30
   11d42:	9341                	srli	a4,a4,0x30
   11d44:	8b0d                	andi	a4,a4,3
   11d46:	0125b023          	sd	s2,0(a1)
   11d4a:	412484bb          	subw	s1,s1,s2
   11d4e:	4781                	li	a5,0
   11d50:	e311                	bnez	a4,11d54 <__sflush_r+0xec>
   11d52:	519c                	lw	a5,32(a1)
   11d54:	c45c                	sw	a5,12(s0)
   11d56:	00904663          	bgtz	s1,11d62 <__sflush_r+0xfa>
   11d5a:	b7e9                	j	11d24 <__sflush_r+0xbc>
   11d5c:	992a                	add	s2,s2,a0
   11d5e:	fc9053e3          	blez	s1,11d24 <__sflush_r+0xbc>
   11d62:	603c                	ld	a5,64(s0)
   11d64:	780c                	ld	a1,48(s0)
   11d66:	86a6                	mv	a3,s1
   11d68:	864a                	mv	a2,s2
   11d6a:	854e                	mv	a0,s3
   11d6c:	9782                	jalr	a5
   11d6e:	9c89                	subw	s1,s1,a0
   11d70:	fea046e3          	bgtz	a0,11d5c <__sflush_r+0xf4>
   11d74:	01045783          	lhu	a5,16(s0)
   11d78:	70a2                	ld	ra,40(sp)
   11d7a:	64e2                	ld	s1,24(sp)
   11d7c:	0407e793          	ori	a5,a5,64
   11d80:	00f41823          	sh	a5,16(s0)
   11d84:	7402                	ld	s0,32(sp)
   11d86:	6942                	ld	s2,16(sp)
   11d88:	69a2                	ld	s3,8(sp)
   11d8a:	557d                	li	a0,-1
   11d8c:	6145                	addi	sp,sp,48
   11d8e:	8082                	ret
   11d90:	59b8                	lw	a4,112(a1)
   11d92:	f0e041e3          	bgtz	a4,11c94 <__sflush_r+0x2c>
   11d96:	b779                	j	11d24 <__sflush_r+0xbc>
   11d98:	6850                	ld	a2,144(s0)
   11d9a:	b72d                	j	11cc4 <__sflush_r+0x5c>
   11d9c:	01045783          	lhu	a5,16(s0)
   11da0:	777d                	lui	a4,0xfffff
   11da2:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb08f>
   11da6:	8ff9                	and	a5,a5,a4
   11da8:	6c14                	ld	a3,24(s0)
   11daa:	0107979b          	slliw	a5,a5,0x10
   11dae:	4107d79b          	sraiw	a5,a5,0x10
   11db2:	6705                	lui	a4,0x1
   11db4:	00f41823          	sh	a5,16(s0)
   11db8:	00042423          	sw	zero,8(s0)
   11dbc:	e014                	sd	a3,0(s0)
   11dbe:	8ff9                	and	a5,a5,a4
   11dc0:	d7a9                	beqz	a5,11d0a <__sflush_r+0xa2>
   11dc2:	e848                	sd	a0,144(s0)
   11dc4:	b799                	j	11d0a <__sflush_r+0xa2>
   11dc6:	0009a783          	lw	a5,0(s3)
   11dca:	ee0789e3          	beqz	a5,11cbc <__sflush_r+0x54>
   11dce:	4775                	li	a4,29
   11dd0:	00e78563          	beq	a5,a4,11dda <__sflush_r+0x172>
   11dd4:	4759                	li	a4,22
   11dd6:	f8e79fe3          	bne	a5,a4,11d74 <__sflush_r+0x10c>
   11dda:	0099a023          	sw	s1,0(s3)
   11dde:	4501                	li	a0,0
   11de0:	b799                	j	11d26 <__sflush_r+0xbe>
   11de2:	777d                	lui	a4,0xfffff
   11de4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb08f>
   11de8:	6c14                	ld	a3,24(s0)
   11dea:	8ff9                	and	a5,a5,a4
   11dec:	b7d9                	j	11db2 <__sflush_r+0x14a>
   11dee:	0407e793          	ori	a5,a5,64
   11df2:	00f41823          	sh	a5,16(s0)
   11df6:	557d                	li	a0,-1
   11df8:	b73d                	j	11d26 <__sflush_r+0xbe>

0000000000011dfa <_fflush_r>:
   11dfa:	1101                	addi	sp,sp,-32
   11dfc:	e822                	sd	s0,16(sp)
   11dfe:	ec06                	sd	ra,24(sp)
   11e00:	842a                	mv	s0,a0
   11e02:	c119                	beqz	a0,11e08 <_fflush_r+0xe>
   11e04:	493c                	lw	a5,80(a0)
   11e06:	cb89                	beqz	a5,11e18 <_fflush_r+0x1e>
   11e08:	01059783          	lh	a5,16(a1)
   11e0c:	ef89                	bnez	a5,11e26 <_fflush_r+0x2c>
   11e0e:	60e2                	ld	ra,24(sp)
   11e10:	6442                	ld	s0,16(sp)
   11e12:	4501                	li	a0,0
   11e14:	6105                	addi	sp,sp,32
   11e16:	8082                	ret
   11e18:	e42e                	sd	a1,8(sp)
   11e1a:	961fe0ef          	jal	ra,1077a <__sinit>
   11e1e:	65a2                	ld	a1,8(sp)
   11e20:	01059783          	lh	a5,16(a1)
   11e24:	d7ed                	beqz	a5,11e0e <_fflush_r+0x14>
   11e26:	8522                	mv	a0,s0
   11e28:	6442                	ld	s0,16(sp)
   11e2a:	60e2                	ld	ra,24(sp)
   11e2c:	6105                	addi	sp,sp,32
   11e2e:	bd2d                	j	11c68 <__sflush_r>

0000000000011e30 <fflush>:
   11e30:	cd1d                	beqz	a0,11e6e <fflush+0x3e>
   11e32:	1101                	addi	sp,sp,-32
   11e34:	e822                	sd	s0,16(sp)
   11e36:	842a                	mv	s0,a0
   11e38:	7601b503          	ld	a0,1888(gp) # 146d0 <_impure_ptr>
   11e3c:	ec06                	sd	ra,24(sp)
   11e3e:	c119                	beqz	a0,11e44 <fflush+0x14>
   11e40:	493c                	lw	a5,80(a0)
   11e42:	cf91                	beqz	a5,11e5e <fflush+0x2e>
   11e44:	01041783          	lh	a5,16(s0)
   11e48:	e791                	bnez	a5,11e54 <fflush+0x24>
   11e4a:	60e2                	ld	ra,24(sp)
   11e4c:	6442                	ld	s0,16(sp)
   11e4e:	4501                	li	a0,0
   11e50:	6105                	addi	sp,sp,32
   11e52:	8082                	ret
   11e54:	85a2                	mv	a1,s0
   11e56:	6442                	ld	s0,16(sp)
   11e58:	60e2                	ld	ra,24(sp)
   11e5a:	6105                	addi	sp,sp,32
   11e5c:	b531                	j	11c68 <__sflush_r>
   11e5e:	e42a                	sd	a0,8(sp)
   11e60:	91bfe0ef          	jal	ra,1077a <__sinit>
   11e64:	01041783          	lh	a5,16(s0)
   11e68:	6522                	ld	a0,8(sp)
   11e6a:	d3e5                	beqz	a5,11e4a <fflush+0x1a>
   11e6c:	b7e5                	j	11e54 <fflush+0x24>
   11e6e:	7501b503          	ld	a0,1872(gp) # 146c0 <_global_impure_ptr>
   11e72:	65c9                	lui	a1,0x12
   11e74:	dfa58593          	addi	a1,a1,-518 # 11dfa <_fflush_r>
   11e78:	d0bfe06f          	j	10b82 <_fwalk_reent>

0000000000011e7c <_malloc_trim_r>:
   11e7c:	7179                	addi	sp,sp,-48
   11e7e:	e44e                	sd	s3,8(sp)
   11e80:	69d1                	lui	s3,0x14
   11e82:	f022                	sd	s0,32(sp)
   11e84:	ec26                	sd	s1,24(sp)
   11e86:	e84a                	sd	s2,16(sp)
   11e88:	e052                	sd	s4,0(sp)
   11e8a:	f406                	sd	ra,40(sp)
   11e8c:	8a2e                	mv	s4,a1
   11e8e:	892a                	mv	s2,a0
   11e90:	e9898993          	addi	s3,s3,-360 # 13e98 <__malloc_av_>
   11e94:	ddeff0ef          	jal	ra,11472 <__malloc_lock>
   11e98:	0109b703          	ld	a4,16(s3)
   11e9c:	6785                	lui	a5,0x1
   11e9e:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   11ea2:	6704                	ld	s1,8(a4)
   11ea4:	41440433          	sub	s0,s0,s4
   11ea8:	98f1                	andi	s1,s1,-4
   11eaa:	9426                	add	s0,s0,s1
   11eac:	8031                	srli	s0,s0,0xc
   11eae:	147d                	addi	s0,s0,-1
   11eb0:	0432                	slli	s0,s0,0xc
   11eb2:	00f44b63          	blt	s0,a5,11ec8 <_malloc_trim_r+0x4c>
   11eb6:	4581                	li	a1,0
   11eb8:	854a                	mv	a0,s2
   11eba:	9c3ff0ef          	jal	ra,1187c <_sbrk_r>
   11ebe:	0109b783          	ld	a5,16(s3)
   11ec2:	97a6                	add	a5,a5,s1
   11ec4:	00f50e63          	beq	a0,a5,11ee0 <_malloc_trim_r+0x64>
   11ec8:	854a                	mv	a0,s2
   11eca:	daaff0ef          	jal	ra,11474 <__malloc_unlock>
   11ece:	70a2                	ld	ra,40(sp)
   11ed0:	7402                	ld	s0,32(sp)
   11ed2:	64e2                	ld	s1,24(sp)
   11ed4:	6942                	ld	s2,16(sp)
   11ed6:	69a2                	ld	s3,8(sp)
   11ed8:	6a02                	ld	s4,0(sp)
   11eda:	4501                	li	a0,0
   11edc:	6145                	addi	sp,sp,48
   11ede:	8082                	ret
   11ee0:	408005b3          	neg	a1,s0
   11ee4:	854a                	mv	a0,s2
   11ee6:	997ff0ef          	jal	ra,1187c <_sbrk_r>
   11eea:	57fd                	li	a5,-1
   11eec:	02f50b63          	beq	a0,a5,11f22 <_malloc_trim_r+0xa6>
   11ef0:	67d1                	lui	a5,0x14
   11ef2:	74878793          	addi	a5,a5,1864 # 14748 <__malloc_current_mallinfo>
   11ef6:	4398                	lw	a4,0(a5)
   11ef8:	0109b683          	ld	a3,16(s3)
   11efc:	8c81                	sub	s1,s1,s0
   11efe:	0014e493          	ori	s1,s1,1
   11f02:	4087043b          	subw	s0,a4,s0
   11f06:	854a                	mv	a0,s2
   11f08:	e684                	sd	s1,8(a3)
   11f0a:	c380                	sw	s0,0(a5)
   11f0c:	d68ff0ef          	jal	ra,11474 <__malloc_unlock>
   11f10:	70a2                	ld	ra,40(sp)
   11f12:	7402                	ld	s0,32(sp)
   11f14:	64e2                	ld	s1,24(sp)
   11f16:	6942                	ld	s2,16(sp)
   11f18:	69a2                	ld	s3,8(sp)
   11f1a:	6a02                	ld	s4,0(sp)
   11f1c:	4505                	li	a0,1
   11f1e:	6145                	addi	sp,sp,48
   11f20:	8082                	ret
   11f22:	4581                	li	a1,0
   11f24:	854a                	mv	a0,s2
   11f26:	957ff0ef          	jal	ra,1187c <_sbrk_r>
   11f2a:	0109b703          	ld	a4,16(s3)
   11f2e:	46fd                	li	a3,31
   11f30:	40e507b3          	sub	a5,a0,a4
   11f34:	f8f6dae3          	bge	a3,a5,11ec8 <_malloc_trim_r+0x4c>
   11f38:	7681b683          	ld	a3,1896(gp) # 146d8 <__malloc_sbrk_base>
   11f3c:	0017e793          	ori	a5,a5,1
   11f40:	e71c                	sd	a5,8(a4)
   11f42:	8d15                	sub	a0,a0,a3
   11f44:	66d1                	lui	a3,0x14
   11f46:	74a6a423          	sw	a0,1864(a3) # 14748 <__malloc_current_mallinfo>
   11f4a:	bfbd                	j	11ec8 <_malloc_trim_r+0x4c>

0000000000011f4c <_free_r>:
   11f4c:	c5ed                	beqz	a1,12036 <_free_r+0xea>
   11f4e:	1101                	addi	sp,sp,-32
   11f50:	e822                	sd	s0,16(sp)
   11f52:	e426                	sd	s1,8(sp)
   11f54:	842e                	mv	s0,a1
   11f56:	84aa                	mv	s1,a0
   11f58:	ec06                	sd	ra,24(sp)
   11f5a:	d18ff0ef          	jal	ra,11472 <__malloc_lock>
   11f5e:	ff843503          	ld	a0,-8(s0)
   11f62:	ff040713          	addi	a4,s0,-16
   11f66:	65d1                	lui	a1,0x14
   11f68:	ffe57793          	andi	a5,a0,-2
   11f6c:	00f70633          	add	a2,a4,a5
   11f70:	e9858593          	addi	a1,a1,-360 # 13e98 <__malloc_av_>
   11f74:	6614                	ld	a3,8(a2)
   11f76:	0105b803          	ld	a6,16(a1)
   11f7a:	9af1                	andi	a3,a3,-4
   11f7c:	14c80063          	beq	a6,a2,120bc <_free_r+0x170>
   11f80:	e614                	sd	a3,8(a2)
   11f82:	8905                	andi	a0,a0,1
   11f84:	00d60833          	add	a6,a2,a3
   11f88:	e141                	bnez	a0,12008 <_free_r+0xbc>
   11f8a:	ff043303          	ld	t1,-16(s0)
   11f8e:	00883803          	ld	a6,8(a6)
   11f92:	6551                	lui	a0,0x14
   11f94:	40670733          	sub	a4,a4,t1
   11f98:	01073883          	ld	a7,16(a4)
   11f9c:	ea850513          	addi	a0,a0,-344 # 13ea8 <__malloc_av_+0x10>
   11fa0:	979a                	add	a5,a5,t1
   11fa2:	00187813          	andi	a6,a6,1
   11fa6:	0ea88863          	beq	a7,a0,12096 <_free_r+0x14a>
   11faa:	01873303          	ld	t1,24(a4)
   11fae:	0068bc23          	sd	t1,24(a7)
   11fb2:	01133823          	sd	a7,16(t1)
   11fb6:	14080d63          	beqz	a6,12110 <_free_r+0x1c4>
   11fba:	0017e693          	ori	a3,a5,1
   11fbe:	e714                	sd	a3,8(a4)
   11fc0:	e21c                	sd	a5,0(a2)
   11fc2:	1ff00693          	li	a3,511
   11fc6:	08f6e263          	bltu	a3,a5,1204a <_free_r+0xfe>
   11fca:	838d                	srli	a5,a5,0x3
   11fcc:	0017869b          	addiw	a3,a5,1
   11fd0:	0016969b          	slliw	a3,a3,0x1
   11fd4:	068e                	slli	a3,a3,0x3
   11fd6:	0085b803          	ld	a6,8(a1)
   11fda:	96ae                	add	a3,a3,a1
   11fdc:	6288                	ld	a0,0(a3)
   11fde:	4027d61b          	sraiw	a2,a5,0x2
   11fe2:	4785                	li	a5,1
   11fe4:	00c797b3          	sll	a5,a5,a2
   11fe8:	0107e7b3          	or	a5,a5,a6
   11fec:	ff068613          	addi	a2,a3,-16
   11ff0:	ef10                	sd	a2,24(a4)
   11ff2:	eb08                	sd	a0,16(a4)
   11ff4:	e59c                	sd	a5,8(a1)
   11ff6:	e298                	sd	a4,0(a3)
   11ff8:	ed18                	sd	a4,24(a0)
   11ffa:	6442                	ld	s0,16(sp)
   11ffc:	60e2                	ld	ra,24(sp)
   11ffe:	8526                	mv	a0,s1
   12000:	64a2                	ld	s1,8(sp)
   12002:	6105                	addi	sp,sp,32
   12004:	c70ff06f          	j	11474 <__malloc_unlock>
   12008:	00883503          	ld	a0,8(a6)
   1200c:	8905                	andi	a0,a0,1
   1200e:	e50d                	bnez	a0,12038 <_free_r+0xec>
   12010:	6551                	lui	a0,0x14
   12012:	97b6                	add	a5,a5,a3
   12014:	ea850513          	addi	a0,a0,-344 # 13ea8 <__malloc_av_+0x10>
   12018:	6a14                	ld	a3,16(a2)
   1201a:	0017e893          	ori	a7,a5,1
   1201e:	00f70833          	add	a6,a4,a5
   12022:	10a68163          	beq	a3,a0,12124 <_free_r+0x1d8>
   12026:	6e10                	ld	a2,24(a2)
   12028:	ee90                	sd	a2,24(a3)
   1202a:	ea14                	sd	a3,16(a2)
   1202c:	01173423          	sd	a7,8(a4)
   12030:	00f83023          	sd	a5,0(a6)
   12034:	b779                	j	11fc2 <_free_r+0x76>
   12036:	8082                	ret
   12038:	0017e693          	ori	a3,a5,1
   1203c:	fed43c23          	sd	a3,-8(s0)
   12040:	e21c                	sd	a5,0(a2)
   12042:	1ff00693          	li	a3,511
   12046:	f8f6f2e3          	bgeu	a3,a5,11fca <_free_r+0x7e>
   1204a:	0097d693          	srli	a3,a5,0x9
   1204e:	4611                	li	a2,4
   12050:	08d66f63          	bltu	a2,a3,120ee <_free_r+0x1a2>
   12054:	0067d693          	srli	a3,a5,0x6
   12058:	0396851b          	addiw	a0,a3,57
   1205c:	0015151b          	slliw	a0,a0,0x1
   12060:	0386861b          	addiw	a2,a3,56
   12064:	050e                	slli	a0,a0,0x3
   12066:	952e                	add	a0,a0,a1
   12068:	6114                	ld	a3,0(a0)
   1206a:	1541                	addi	a0,a0,-16
   1206c:	0cd50563          	beq	a0,a3,12136 <_free_r+0x1ea>
   12070:	6690                	ld	a2,8(a3)
   12072:	9a71                	andi	a2,a2,-4
   12074:	00c7f563          	bgeu	a5,a2,1207e <_free_r+0x132>
   12078:	6a94                	ld	a3,16(a3)
   1207a:	fed51be3          	bne	a0,a3,12070 <_free_r+0x124>
   1207e:	6e88                	ld	a0,24(a3)
   12080:	ef08                	sd	a0,24(a4)
   12082:	eb14                	sd	a3,16(a4)
   12084:	6442                	ld	s0,16(sp)
   12086:	e918                	sd	a4,16(a0)
   12088:	60e2                	ld	ra,24(sp)
   1208a:	8526                	mv	a0,s1
   1208c:	64a2                	ld	s1,8(sp)
   1208e:	ee98                	sd	a4,24(a3)
   12090:	6105                	addi	sp,sp,32
   12092:	be2ff06f          	j	11474 <__malloc_unlock>
   12096:	0e081c63          	bnez	a6,1218e <_free_r+0x242>
   1209a:	6e0c                	ld	a1,24(a2)
   1209c:	6a10                	ld	a2,16(a2)
   1209e:	97b6                	add	a5,a5,a3
   120a0:	6442                	ld	s0,16(sp)
   120a2:	ee0c                	sd	a1,24(a2)
   120a4:	e990                	sd	a2,16(a1)
   120a6:	0017e693          	ori	a3,a5,1
   120aa:	60e2                	ld	ra,24(sp)
   120ac:	e714                	sd	a3,8(a4)
   120ae:	8526                	mv	a0,s1
   120b0:	973e                	add	a4,a4,a5
   120b2:	64a2                	ld	s1,8(sp)
   120b4:	e31c                	sd	a5,0(a4)
   120b6:	6105                	addi	sp,sp,32
   120b8:	bbcff06f          	j	11474 <__malloc_unlock>
   120bc:	8905                	andi	a0,a0,1
   120be:	97b6                	add	a5,a5,a3
   120c0:	e909                	bnez	a0,120d2 <_free_r+0x186>
   120c2:	ff043503          	ld	a0,-16(s0)
   120c6:	8f09                	sub	a4,a4,a0
   120c8:	6f14                	ld	a3,24(a4)
   120ca:	6b10                	ld	a2,16(a4)
   120cc:	97aa                	add	a5,a5,a0
   120ce:	ee14                	sd	a3,24(a2)
   120d0:	ea90                	sd	a2,16(a3)
   120d2:	0017e613          	ori	a2,a5,1
   120d6:	7701b683          	ld	a3,1904(gp) # 146e0 <__malloc_trim_threshold>
   120da:	e710                	sd	a2,8(a4)
   120dc:	e998                	sd	a4,16(a1)
   120de:	f0d7eee3          	bltu	a5,a3,11ffa <_free_r+0xae>
   120e2:	7881b583          	ld	a1,1928(gp) # 146f8 <__malloc_top_pad>
   120e6:	8526                	mv	a0,s1
   120e8:	d95ff0ef          	jal	ra,11e7c <_malloc_trim_r>
   120ec:	b739                	j	11ffa <_free_r+0xae>
   120ee:	4651                	li	a2,20
   120f0:	02d67263          	bgeu	a2,a3,12114 <_free_r+0x1c8>
   120f4:	05400613          	li	a2,84
   120f8:	04d66a63          	bltu	a2,a3,1214c <_free_r+0x200>
   120fc:	00c7d693          	srli	a3,a5,0xc
   12100:	06f6851b          	addiw	a0,a3,111
   12104:	0015151b          	slliw	a0,a0,0x1
   12108:	06e6861b          	addiw	a2,a3,110
   1210c:	050e                	slli	a0,a0,0x3
   1210e:	bfa1                	j	12066 <_free_r+0x11a>
   12110:	97b6                	add	a5,a5,a3
   12112:	b719                	j	12018 <_free_r+0xcc>
   12114:	05c6851b          	addiw	a0,a3,92
   12118:	0015151b          	slliw	a0,a0,0x1
   1211c:	05b6861b          	addiw	a2,a3,91
   12120:	050e                	slli	a0,a0,0x3
   12122:	b791                	j	12066 <_free_r+0x11a>
   12124:	f598                	sd	a4,40(a1)
   12126:	f198                	sd	a4,32(a1)
   12128:	ef08                	sd	a0,24(a4)
   1212a:	eb08                	sd	a0,16(a4)
   1212c:	01173423          	sd	a7,8(a4)
   12130:	00f83023          	sd	a5,0(a6)
   12134:	b5d9                	j	11ffa <_free_r+0xae>
   12136:	0085b803          	ld	a6,8(a1)
   1213a:	4026561b          	sraiw	a2,a2,0x2
   1213e:	4785                	li	a5,1
   12140:	00c79633          	sll	a2,a5,a2
   12144:	01066633          	or	a2,a2,a6
   12148:	e590                	sd	a2,8(a1)
   1214a:	bf1d                	j	12080 <_free_r+0x134>
   1214c:	15400613          	li	a2,340
   12150:	00d66c63          	bltu	a2,a3,12168 <_free_r+0x21c>
   12154:	00f7d693          	srli	a3,a5,0xf
   12158:	0786851b          	addiw	a0,a3,120
   1215c:	0015151b          	slliw	a0,a0,0x1
   12160:	0776861b          	addiw	a2,a3,119
   12164:	050e                	slli	a0,a0,0x3
   12166:	b701                	j	12066 <_free_r+0x11a>
   12168:	55400613          	li	a2,1364
   1216c:	00d66c63          	bltu	a2,a3,12184 <_free_r+0x238>
   12170:	0127d693          	srli	a3,a5,0x12
   12174:	07d6851b          	addiw	a0,a3,125
   12178:	0015151b          	slliw	a0,a0,0x1
   1217c:	07c6861b          	addiw	a2,a3,124
   12180:	050e                	slli	a0,a0,0x3
   12182:	b5d5                	j	12066 <_free_r+0x11a>
   12184:	7f000513          	li	a0,2032
   12188:	07e00613          	li	a2,126
   1218c:	bde9                	j	12066 <_free_r+0x11a>
   1218e:	0017e693          	ori	a3,a5,1
   12192:	e714                	sd	a3,8(a4)
   12194:	e21c                	sd	a5,0(a2)
   12196:	b595                	j	11ffa <_free_r+0xae>

0000000000012198 <_lseek_r>:
   12198:	1101                	addi	sp,sp,-32
   1219a:	872e                	mv	a4,a1
   1219c:	e822                	sd	s0,16(sp)
   1219e:	e426                	sd	s1,8(sp)
   121a0:	85b2                	mv	a1,a2
   121a2:	842a                	mv	s0,a0
   121a4:	8636                	mv	a2,a3
   121a6:	853a                	mv	a0,a4
   121a8:	ec06                	sd	ra,24(sp)
   121aa:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   121ae:	42c000ef          	jal	ra,125da <_lseek>
   121b2:	57fd                	li	a5,-1
   121b4:	00f50763          	beq	a0,a5,121c2 <_lseek_r+0x2a>
   121b8:	60e2                	ld	ra,24(sp)
   121ba:	6442                	ld	s0,16(sp)
   121bc:	64a2                	ld	s1,8(sp)
   121be:	6105                	addi	sp,sp,32
   121c0:	8082                	ret
   121c2:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   121c6:	dbed                	beqz	a5,121b8 <_lseek_r+0x20>
   121c8:	60e2                	ld	ra,24(sp)
   121ca:	c01c                	sw	a5,0(s0)
   121cc:	6442                	ld	s0,16(sp)
   121ce:	64a2                	ld	s1,8(sp)
   121d0:	6105                	addi	sp,sp,32
   121d2:	8082                	ret

00000000000121d4 <__smakebuf_r>:
   121d4:	0105d783          	lhu	a5,16(a1)
   121d8:	7135                	addi	sp,sp,-160
   121da:	e922                	sd	s0,144(sp)
   121dc:	ed06                	sd	ra,152(sp)
   121de:	e526                	sd	s1,136(sp)
   121e0:	e14a                	sd	s2,128(sp)
   121e2:	fcce                	sd	s3,120(sp)
   121e4:	f8d2                	sd	s4,112(sp)
   121e6:	0027f713          	andi	a4,a5,2
   121ea:	842e                	mv	s0,a1
   121ec:	cf19                	beqz	a4,1220a <__smakebuf_r+0x36>
   121ee:	07758793          	addi	a5,a1,119
   121f2:	e19c                	sd	a5,0(a1)
   121f4:	ed9c                	sd	a5,24(a1)
   121f6:	4785                	li	a5,1
   121f8:	d19c                	sw	a5,32(a1)
   121fa:	60ea                	ld	ra,152(sp)
   121fc:	644a                	ld	s0,144(sp)
   121fe:	64aa                	ld	s1,136(sp)
   12200:	690a                	ld	s2,128(sp)
   12202:	79e6                	ld	s3,120(sp)
   12204:	7a46                	ld	s4,112(sp)
   12206:	610d                	addi	sp,sp,160
   12208:	8082                	ret
   1220a:	01259583          	lh	a1,18(a1)
   1220e:	84aa                	mv	s1,a0
   12210:	0605c863          	bltz	a1,12280 <__smakebuf_r+0xac>
   12214:	0030                	addi	a2,sp,8
   12216:	2a0000ef          	jal	ra,124b6 <_fstat_r>
   1221a:	06054163          	bltz	a0,1227c <__smakebuf_r+0xa8>
   1221e:	4932                	lw	s2,12(sp)
   12220:	67bd                	lui	a5,0xf
   12222:	40000a13          	li	s4,1024
   12226:	00f97933          	and	s2,s2,a5
   1222a:	6789                	lui	a5,0x2
   1222c:	40f90933          	sub	s2,s2,a5
   12230:	6785                	lui	a5,0x1
   12232:	00193913          	seqz	s2,s2
   12236:	80078993          	addi	s3,a5,-2048 # 800 <register_fini-0xf8b0>
   1223a:	85d2                	mv	a1,s4
   1223c:	8526                	mv	a0,s1
   1223e:	9cffe0ef          	jal	ra,10c0c <_malloc_r>
   12242:	01041783          	lh	a5,16(s0)
   12246:	c939                	beqz	a0,1229c <__smakebuf_r+0xc8>
   12248:	6741                	lui	a4,0x10
   1224a:	52270713          	addi	a4,a4,1314 # 10522 <_cleanup_r>
   1224e:	ecb8                	sd	a4,88(s1)
   12250:	0807e793          	ori	a5,a5,128
   12254:	00f41823          	sh	a5,16(s0)
   12258:	e008                	sd	a0,0(s0)
   1225a:	ec08                	sd	a0,24(s0)
   1225c:	03442023          	sw	s4,32(s0)
   12260:	06091163          	bnez	s2,122c2 <__smakebuf_r+0xee>
   12264:	0137e7b3          	or	a5,a5,s3
   12268:	60ea                	ld	ra,152(sp)
   1226a:	00f41823          	sh	a5,16(s0)
   1226e:	644a                	ld	s0,144(sp)
   12270:	64aa                	ld	s1,136(sp)
   12272:	690a                	ld	s2,128(sp)
   12274:	79e6                	ld	s3,120(sp)
   12276:	7a46                	ld	s4,112(sp)
   12278:	610d                	addi	sp,sp,160
   1227a:	8082                	ret
   1227c:	01045783          	lhu	a5,16(s0)
   12280:	0807f793          	andi	a5,a5,128
   12284:	4901                	li	s2,0
   12286:	cb95                	beqz	a5,122ba <__smakebuf_r+0xe6>
   12288:	04000a13          	li	s4,64
   1228c:	85d2                	mv	a1,s4
   1228e:	8526                	mv	a0,s1
   12290:	97dfe0ef          	jal	ra,10c0c <_malloc_r>
   12294:	01041783          	lh	a5,16(s0)
   12298:	4981                	li	s3,0
   1229a:	f55d                	bnez	a0,12248 <__smakebuf_r+0x74>
   1229c:	2007f713          	andi	a4,a5,512
   122a0:	ff29                	bnez	a4,121fa <__smakebuf_r+0x26>
   122a2:	9bf1                	andi	a5,a5,-4
   122a4:	0027e793          	ori	a5,a5,2
   122a8:	07740713          	addi	a4,s0,119
   122ac:	00f41823          	sh	a5,16(s0)
   122b0:	4785                	li	a5,1
   122b2:	e018                	sd	a4,0(s0)
   122b4:	ec18                	sd	a4,24(s0)
   122b6:	d01c                	sw	a5,32(s0)
   122b8:	b789                	j	121fa <__smakebuf_r+0x26>
   122ba:	40000a13          	li	s4,1024
   122be:	4981                	li	s3,0
   122c0:	bfad                	j	1223a <__smakebuf_r+0x66>
   122c2:	01241583          	lh	a1,18(s0)
   122c6:	8526                	mv	a0,s1
   122c8:	228000ef          	jal	ra,124f0 <_isatty_r>
   122cc:	e501                	bnez	a0,122d4 <__smakebuf_r+0x100>
   122ce:	01041783          	lh	a5,16(s0)
   122d2:	bf49                	j	12264 <__smakebuf_r+0x90>
   122d4:	01045783          	lhu	a5,16(s0)
   122d8:	9bf1                	andi	a5,a5,-4
   122da:	0017e793          	ori	a5,a5,1
   122de:	0107979b          	slliw	a5,a5,0x10
   122e2:	4107d79b          	sraiw	a5,a5,0x10
   122e6:	bfbd                	j	12264 <__smakebuf_r+0x90>

00000000000122e8 <__swhatbuf_r>:
   122e8:	7175                	addi	sp,sp,-144
   122ea:	e122                	sd	s0,128(sp)
   122ec:	842e                	mv	s0,a1
   122ee:	01259583          	lh	a1,18(a1)
   122f2:	fca6                	sd	s1,120(sp)
   122f4:	f8ca                	sd	s2,112(sp)
   122f6:	e506                	sd	ra,136(sp)
   122f8:	84b2                	mv	s1,a2
   122fa:	8936                	mv	s2,a3
   122fc:	0205cc63          	bltz	a1,12334 <__swhatbuf_r+0x4c>
   12300:	0030                	addi	a2,sp,8
   12302:	1b4000ef          	jal	ra,124b6 <_fstat_r>
   12306:	02054763          	bltz	a0,12334 <__swhatbuf_r+0x4c>
   1230a:	47b2                	lw	a5,12(sp)
   1230c:	673d                	lui	a4,0xf
   1230e:	60aa                	ld	ra,136(sp)
   12310:	8ff9                	and	a5,a5,a4
   12312:	6709                	lui	a4,0x2
   12314:	8f99                	sub	a5,a5,a4
   12316:	640a                	ld	s0,128(sp)
   12318:	0017b793          	seqz	a5,a5
   1231c:	00f92023          	sw	a5,0(s2)
   12320:	40000793          	li	a5,1024
   12324:	e09c                	sd	a5,0(s1)
   12326:	6505                	lui	a0,0x1
   12328:	74e6                	ld	s1,120(sp)
   1232a:	7946                	ld	s2,112(sp)
   1232c:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   12330:	6149                	addi	sp,sp,144
   12332:	8082                	ret
   12334:	01041783          	lh	a5,16(s0)
   12338:	00092023          	sw	zero,0(s2)
   1233c:	0807f793          	andi	a5,a5,128
   12340:	cb99                	beqz	a5,12356 <__swhatbuf_r+0x6e>
   12342:	60aa                	ld	ra,136(sp)
   12344:	640a                	ld	s0,128(sp)
   12346:	04000793          	li	a5,64
   1234a:	e09c                	sd	a5,0(s1)
   1234c:	7946                	ld	s2,112(sp)
   1234e:	74e6                	ld	s1,120(sp)
   12350:	4501                	li	a0,0
   12352:	6149                	addi	sp,sp,144
   12354:	8082                	ret
   12356:	60aa                	ld	ra,136(sp)
   12358:	640a                	ld	s0,128(sp)
   1235a:	40000793          	li	a5,1024
   1235e:	e09c                	sd	a5,0(s1)
   12360:	7946                	ld	s2,112(sp)
   12362:	74e6                	ld	s1,120(sp)
   12364:	4501                	li	a0,0
   12366:	6149                	addi	sp,sp,144
   12368:	8082                	ret

000000000001236a <_read_r>:
   1236a:	1101                	addi	sp,sp,-32
   1236c:	872e                	mv	a4,a1
   1236e:	e822                	sd	s0,16(sp)
   12370:	e426                	sd	s1,8(sp)
   12372:	85b2                	mv	a1,a2
   12374:	842a                	mv	s0,a0
   12376:	8636                	mv	a2,a3
   12378:	853a                	mv	a0,a4
   1237a:	ec06                	sd	ra,24(sp)
   1237c:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   12380:	286000ef          	jal	ra,12606 <_read>
   12384:	57fd                	li	a5,-1
   12386:	00f50763          	beq	a0,a5,12394 <_read_r+0x2a>
   1238a:	60e2                	ld	ra,24(sp)
   1238c:	6442                	ld	s0,16(sp)
   1238e:	64a2                	ld	s1,8(sp)
   12390:	6105                	addi	sp,sp,32
   12392:	8082                	ret
   12394:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   12398:	dbed                	beqz	a5,1238a <_read_r+0x20>
   1239a:	60e2                	ld	ra,24(sp)
   1239c:	c01c                	sw	a5,0(s0)
   1239e:	6442                	ld	s0,16(sp)
   123a0:	64a2                	ld	s1,8(sp)
   123a2:	6105                	addi	sp,sp,32
   123a4:	8082                	ret

00000000000123a6 <cleanup_glue>:
   123a6:	7179                	addi	sp,sp,-48
   123a8:	e84a                	sd	s2,16(sp)
   123aa:	0005b903          	ld	s2,0(a1)
   123ae:	f022                	sd	s0,32(sp)
   123b0:	ec26                	sd	s1,24(sp)
   123b2:	f406                	sd	ra,40(sp)
   123b4:	e44e                	sd	s3,8(sp)
   123b6:	e052                	sd	s4,0(sp)
   123b8:	842e                	mv	s0,a1
   123ba:	84aa                	mv	s1,a0
   123bc:	02090b63          	beqz	s2,123f2 <cleanup_glue+0x4c>
   123c0:	00093983          	ld	s3,0(s2)
   123c4:	02098363          	beqz	s3,123ea <cleanup_glue+0x44>
   123c8:	0009ba03          	ld	s4,0(s3)
   123cc:	000a0b63          	beqz	s4,123e2 <cleanup_glue+0x3c>
   123d0:	000a3583          	ld	a1,0(s4)
   123d4:	c199                	beqz	a1,123da <cleanup_glue+0x34>
   123d6:	fd1ff0ef          	jal	ra,123a6 <cleanup_glue>
   123da:	85d2                	mv	a1,s4
   123dc:	8526                	mv	a0,s1
   123de:	b6fff0ef          	jal	ra,11f4c <_free_r>
   123e2:	85ce                	mv	a1,s3
   123e4:	8526                	mv	a0,s1
   123e6:	b67ff0ef          	jal	ra,11f4c <_free_r>
   123ea:	85ca                	mv	a1,s2
   123ec:	8526                	mv	a0,s1
   123ee:	b5fff0ef          	jal	ra,11f4c <_free_r>
   123f2:	85a2                	mv	a1,s0
   123f4:	7402                	ld	s0,32(sp)
   123f6:	70a2                	ld	ra,40(sp)
   123f8:	6942                	ld	s2,16(sp)
   123fa:	69a2                	ld	s3,8(sp)
   123fc:	6a02                	ld	s4,0(sp)
   123fe:	8526                	mv	a0,s1
   12400:	64e2                	ld	s1,24(sp)
   12402:	6145                	addi	sp,sp,48
   12404:	b6a1                	j	11f4c <_free_r>

0000000000012406 <_reclaim_reent>:
   12406:	7601b783          	ld	a5,1888(gp) # 146d0 <_impure_ptr>
   1240a:	0aa78563          	beq	a5,a0,124b4 <_reclaim_reent+0xae>
   1240e:	7d2c                	ld	a1,120(a0)
   12410:	7179                	addi	sp,sp,-48
   12412:	ec26                	sd	s1,24(sp)
   12414:	f406                	sd	ra,40(sp)
   12416:	f022                	sd	s0,32(sp)
   12418:	e84a                	sd	s2,16(sp)
   1241a:	e44e                	sd	s3,8(sp)
   1241c:	84aa                	mv	s1,a0
   1241e:	c58d                	beqz	a1,12448 <_reclaim_reent+0x42>
   12420:	4901                	li	s2,0
   12422:	20000993          	li	s3,512
   12426:	012587b3          	add	a5,a1,s2
   1242a:	6380                	ld	s0,0(a5)
   1242c:	c801                	beqz	s0,1243c <_reclaim_reent+0x36>
   1242e:	85a2                	mv	a1,s0
   12430:	6000                	ld	s0,0(s0)
   12432:	8526                	mv	a0,s1
   12434:	b19ff0ef          	jal	ra,11f4c <_free_r>
   12438:	f87d                	bnez	s0,1242e <_reclaim_reent+0x28>
   1243a:	7cac                	ld	a1,120(s1)
   1243c:	0921                	addi	s2,s2,8
   1243e:	ff3914e3          	bne	s2,s3,12426 <_reclaim_reent+0x20>
   12442:	8526                	mv	a0,s1
   12444:	b09ff0ef          	jal	ra,11f4c <_free_r>
   12448:	70ac                	ld	a1,96(s1)
   1244a:	c581                	beqz	a1,12452 <_reclaim_reent+0x4c>
   1244c:	8526                	mv	a0,s1
   1244e:	affff0ef          	jal	ra,11f4c <_free_r>
   12452:	1f84b403          	ld	s0,504(s1)
   12456:	cc01                	beqz	s0,1246e <_reclaim_reent+0x68>
   12458:	20048913          	addi	s2,s1,512
   1245c:	01240963          	beq	s0,s2,1246e <_reclaim_reent+0x68>
   12460:	85a2                	mv	a1,s0
   12462:	6000                	ld	s0,0(s0)
   12464:	8526                	mv	a0,s1
   12466:	ae7ff0ef          	jal	ra,11f4c <_free_r>
   1246a:	fe891be3          	bne	s2,s0,12460 <_reclaim_reent+0x5a>
   1246e:	64cc                	ld	a1,136(s1)
   12470:	c581                	beqz	a1,12478 <_reclaim_reent+0x72>
   12472:	8526                	mv	a0,s1
   12474:	ad9ff0ef          	jal	ra,11f4c <_free_r>
   12478:	48bc                	lw	a5,80(s1)
   1247a:	c795                	beqz	a5,124a6 <_reclaim_reent+0xa0>
   1247c:	6cbc                	ld	a5,88(s1)
   1247e:	8526                	mv	a0,s1
   12480:	9782                	jalr	a5
   12482:	5204b403          	ld	s0,1312(s1)
   12486:	c005                	beqz	s0,124a6 <_reclaim_reent+0xa0>
   12488:	600c                	ld	a1,0(s0)
   1248a:	c581                	beqz	a1,12492 <_reclaim_reent+0x8c>
   1248c:	8526                	mv	a0,s1
   1248e:	f19ff0ef          	jal	ra,123a6 <cleanup_glue>
   12492:	85a2                	mv	a1,s0
   12494:	7402                	ld	s0,32(sp)
   12496:	70a2                	ld	ra,40(sp)
   12498:	6942                	ld	s2,16(sp)
   1249a:	69a2                	ld	s3,8(sp)
   1249c:	8526                	mv	a0,s1
   1249e:	64e2                	ld	s1,24(sp)
   124a0:	6145                	addi	sp,sp,48
   124a2:	aabff06f          	j	11f4c <_free_r>
   124a6:	70a2                	ld	ra,40(sp)
   124a8:	7402                	ld	s0,32(sp)
   124aa:	64e2                	ld	s1,24(sp)
   124ac:	6942                	ld	s2,16(sp)
   124ae:	69a2                	ld	s3,8(sp)
   124b0:	6145                	addi	sp,sp,48
   124b2:	8082                	ret
   124b4:	8082                	ret

00000000000124b6 <_fstat_r>:
   124b6:	1101                	addi	sp,sp,-32
   124b8:	872e                	mv	a4,a1
   124ba:	e822                	sd	s0,16(sp)
   124bc:	e426                	sd	s1,8(sp)
   124be:	842a                	mv	s0,a0
   124c0:	85b2                	mv	a1,a2
   124c2:	853a                	mv	a0,a4
   124c4:	ec06                	sd	ra,24(sp)
   124c6:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   124ca:	0aa000ef          	jal	ra,12574 <_fstat>
   124ce:	57fd                	li	a5,-1
   124d0:	00f50763          	beq	a0,a5,124de <_fstat_r+0x28>
   124d4:	60e2                	ld	ra,24(sp)
   124d6:	6442                	ld	s0,16(sp)
   124d8:	64a2                	ld	s1,8(sp)
   124da:	6105                	addi	sp,sp,32
   124dc:	8082                	ret
   124de:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   124e2:	dbed                	beqz	a5,124d4 <_fstat_r+0x1e>
   124e4:	60e2                	ld	ra,24(sp)
   124e6:	c01c                	sw	a5,0(s0)
   124e8:	6442                	ld	s0,16(sp)
   124ea:	64a2                	ld	s1,8(sp)
   124ec:	6105                	addi	sp,sp,32
   124ee:	8082                	ret

00000000000124f0 <_isatty_r>:
   124f0:	1101                	addi	sp,sp,-32
   124f2:	e822                	sd	s0,16(sp)
   124f4:	e426                	sd	s1,8(sp)
   124f6:	842a                	mv	s0,a0
   124f8:	852e                	mv	a0,a1
   124fa:	ec06                	sd	ra,24(sp)
   124fc:	7801a823          	sw	zero,1936(gp) # 14700 <errno>
   12500:	0b4000ef          	jal	ra,125b4 <_isatty>
   12504:	57fd                	li	a5,-1
   12506:	00f50763          	beq	a0,a5,12514 <_isatty_r+0x24>
   1250a:	60e2                	ld	ra,24(sp)
   1250c:	6442                	ld	s0,16(sp)
   1250e:	64a2                	ld	s1,8(sp)
   12510:	6105                	addi	sp,sp,32
   12512:	8082                	ret
   12514:	7901a783          	lw	a5,1936(gp) # 14700 <errno>
   12518:	dbed                	beqz	a5,1250a <_isatty_r+0x1a>
   1251a:	60e2                	ld	ra,24(sp)
   1251c:	c01c                	sw	a5,0(s0)
   1251e:	6442                	ld	s0,16(sp)
   12520:	64a2                	ld	s1,8(sp)
   12522:	6105                	addi	sp,sp,32
   12524:	8082                	ret

0000000000012526 <_close>:
   12526:	1141                	addi	sp,sp,-16
   12528:	e406                	sd	ra,8(sp)
   1252a:	e022                	sd	s0,0(sp)
   1252c:	03900893          	li	a7,57
   12530:	00000073          	ecall
   12534:	842a                	mv	s0,a0
   12536:	00054763          	bltz	a0,12544 <_close+0x1e>
   1253a:	2501                	sext.w	a0,a0
   1253c:	60a2                	ld	ra,8(sp)
   1253e:	6402                	ld	s0,0(sp)
   12540:	0141                	addi	sp,sp,16
   12542:	8082                	ret
   12544:	1c8000ef          	jal	ra,1270c <__errno>
   12548:	4080043b          	negw	s0,s0
   1254c:	c100                	sw	s0,0(a0)
   1254e:	557d                	li	a0,-1
   12550:	b7f5                	j	1253c <_close+0x16>

0000000000012552 <_exit>:
   12552:	05d00893          	li	a7,93
   12556:	00000073          	ecall
   1255a:	00054363          	bltz	a0,12560 <_exit+0xe>
   1255e:	a001                	j	1255e <_exit+0xc>
   12560:	1141                	addi	sp,sp,-16
   12562:	e022                	sd	s0,0(sp)
   12564:	842a                	mv	s0,a0
   12566:	e406                	sd	ra,8(sp)
   12568:	4080043b          	negw	s0,s0
   1256c:	1a0000ef          	jal	ra,1270c <__errno>
   12570:	c100                	sw	s0,0(a0)
   12572:	a001                	j	12572 <_exit+0x20>

0000000000012574 <_fstat>:
   12574:	7135                	addi	sp,sp,-160
   12576:	e526                	sd	s1,136(sp)
   12578:	ed06                	sd	ra,152(sp)
   1257a:	84ae                	mv	s1,a1
   1257c:	e922                	sd	s0,144(sp)
   1257e:	05000893          	li	a7,80
   12582:	858a                	mv	a1,sp
   12584:	00000073          	ecall
   12588:	842a                	mv	s0,a0
   1258a:	00054e63          	bltz	a0,125a6 <_fstat+0x32>
   1258e:	0005041b          	sext.w	s0,a0
   12592:	8526                	mv	a0,s1
   12594:	858a                	mv	a1,sp
   12596:	11c000ef          	jal	ra,126b2 <_conv_stat>
   1259a:	60ea                	ld	ra,152(sp)
   1259c:	8522                	mv	a0,s0
   1259e:	644a                	ld	s0,144(sp)
   125a0:	64aa                	ld	s1,136(sp)
   125a2:	610d                	addi	sp,sp,160
   125a4:	8082                	ret
   125a6:	4080043b          	negw	s0,s0
   125aa:	162000ef          	jal	ra,1270c <__errno>
   125ae:	c100                	sw	s0,0(a0)
   125b0:	547d                	li	s0,-1
   125b2:	b7c5                	j	12592 <_fstat+0x1e>

00000000000125b4 <_isatty>:
   125b4:	7119                	addi	sp,sp,-128
   125b6:	002c                	addi	a1,sp,8
   125b8:	fc86                	sd	ra,120(sp)
   125ba:	fbbff0ef          	jal	ra,12574 <_fstat>
   125be:	57fd                	li	a5,-1
   125c0:	00f50963          	beq	a0,a5,125d2 <_isatty+0x1e>
   125c4:	4532                	lw	a0,12(sp)
   125c6:	70e6                	ld	ra,120(sp)
   125c8:	40d5551b          	sraiw	a0,a0,0xd
   125cc:	8905                	andi	a0,a0,1
   125ce:	6109                	addi	sp,sp,128
   125d0:	8082                	ret
   125d2:	70e6                	ld	ra,120(sp)
   125d4:	4501                	li	a0,0
   125d6:	6109                	addi	sp,sp,128
   125d8:	8082                	ret

00000000000125da <_lseek>:
   125da:	1141                	addi	sp,sp,-16
   125dc:	e406                	sd	ra,8(sp)
   125de:	e022                	sd	s0,0(sp)
   125e0:	03e00893          	li	a7,62
   125e4:	00000073          	ecall
   125e8:	842a                	mv	s0,a0
   125ea:	00054763          	bltz	a0,125f8 <_lseek+0x1e>
   125ee:	60a2                	ld	ra,8(sp)
   125f0:	8522                	mv	a0,s0
   125f2:	6402                	ld	s0,0(sp)
   125f4:	0141                	addi	sp,sp,16
   125f6:	8082                	ret
   125f8:	4080043b          	negw	s0,s0
   125fc:	110000ef          	jal	ra,1270c <__errno>
   12600:	c100                	sw	s0,0(a0)
   12602:	547d                	li	s0,-1
   12604:	b7ed                	j	125ee <_lseek+0x14>

0000000000012606 <_read>:
   12606:	1141                	addi	sp,sp,-16
   12608:	e406                	sd	ra,8(sp)
   1260a:	e022                	sd	s0,0(sp)
   1260c:	03f00893          	li	a7,63
   12610:	00000073          	ecall
   12614:	842a                	mv	s0,a0
   12616:	00054763          	bltz	a0,12624 <_read+0x1e>
   1261a:	60a2                	ld	ra,8(sp)
   1261c:	8522                	mv	a0,s0
   1261e:	6402                	ld	s0,0(sp)
   12620:	0141                	addi	sp,sp,16
   12622:	8082                	ret
   12624:	4080043b          	negw	s0,s0
   12628:	0e4000ef          	jal	ra,1270c <__errno>
   1262c:	c100                	sw	s0,0(a0)
   1262e:	547d                	li	s0,-1
   12630:	b7ed                	j	1261a <_read+0x14>

0000000000012632 <_sbrk>:
   12632:	7981b703          	ld	a4,1944(gp) # 14708 <heap_end.0>
   12636:	1141                	addi	sp,sp,-16
   12638:	e406                	sd	ra,8(sp)
   1263a:	87aa                	mv	a5,a0
   1263c:	ef01                	bnez	a4,12654 <_sbrk+0x22>
   1263e:	0d600893          	li	a7,214
   12642:	4501                	li	a0,0
   12644:	00000073          	ecall
   12648:	567d                	li	a2,-1
   1264a:	872a                	mv	a4,a0
   1264c:	02c50563          	beq	a0,a2,12676 <_sbrk+0x44>
   12650:	78a1bc23          	sd	a0,1944(gp) # 14708 <heap_end.0>
   12654:	0d600893          	li	a7,214
   12658:	00e78533          	add	a0,a5,a4
   1265c:	00000073          	ecall
   12660:	7981b703          	ld	a4,1944(gp) # 14708 <heap_end.0>
   12664:	97ba                	add	a5,a5,a4
   12666:	00f51863          	bne	a0,a5,12676 <_sbrk+0x44>
   1266a:	60a2                	ld	ra,8(sp)
   1266c:	78a1bc23          	sd	a0,1944(gp) # 14708 <heap_end.0>
   12670:	853a                	mv	a0,a4
   12672:	0141                	addi	sp,sp,16
   12674:	8082                	ret
   12676:	096000ef          	jal	ra,1270c <__errno>
   1267a:	60a2                	ld	ra,8(sp)
   1267c:	47b1                	li	a5,12
   1267e:	c11c                	sw	a5,0(a0)
   12680:	557d                	li	a0,-1
   12682:	0141                	addi	sp,sp,16
   12684:	8082                	ret

0000000000012686 <_write>:
   12686:	1141                	addi	sp,sp,-16
   12688:	e406                	sd	ra,8(sp)
   1268a:	e022                	sd	s0,0(sp)
   1268c:	04000893          	li	a7,64
   12690:	00000073          	ecall
   12694:	842a                	mv	s0,a0
   12696:	00054763          	bltz	a0,126a4 <_write+0x1e>
   1269a:	60a2                	ld	ra,8(sp)
   1269c:	8522                	mv	a0,s0
   1269e:	6402                	ld	s0,0(sp)
   126a0:	0141                	addi	sp,sp,16
   126a2:	8082                	ret
   126a4:	4080043b          	negw	s0,s0
   126a8:	064000ef          	jal	ra,1270c <__errno>
   126ac:	c100                	sw	s0,0(a0)
   126ae:	547d                	li	s0,-1
   126b0:	b7ed                	j	1269a <_write+0x14>

00000000000126b2 <_conv_stat>:
   126b2:	0005b383          	ld	t2,0(a1)
   126b6:	0085b283          	ld	t0,8(a1)
   126ba:	0105af83          	lw	t6,16(a1)
   126be:	0145af03          	lw	t5,20(a1)
   126c2:	0185ae83          	lw	t4,24(a1)
   126c6:	01c5ae03          	lw	t3,28(a1)
   126ca:	0205b303          	ld	t1,32(a1)
   126ce:	0305b883          	ld	a7,48(a1)
   126d2:	0405b803          	ld	a6,64(a1)
   126d6:	5d90                	lw	a2,56(a1)
   126d8:	65b4                	ld	a3,72(a1)
   126da:	6db8                	ld	a4,88(a1)
   126dc:	75bc                	ld	a5,104(a1)
   126de:	00751023          	sh	t2,0(a0)
   126e2:	00551123          	sh	t0,2(a0)
   126e6:	01f52223          	sw	t6,4(a0)
   126ea:	01e51423          	sh	t5,8(a0)
   126ee:	01d51523          	sh	t4,10(a0)
   126f2:	01c51623          	sh	t3,12(a0)
   126f6:	00651723          	sh	t1,14(a0)
   126fa:	01153823          	sd	a7,16(a0)
   126fe:	05053823          	sd	a6,80(a0)
   12702:	e530                	sd	a2,72(a0)
   12704:	ed14                	sd	a3,24(a0)
   12706:	f518                	sd	a4,40(a0)
   12708:	fd1c                	sd	a5,56(a0)
   1270a:	8082                	ret

000000000001270c <__errno>:
   1270c:	7601b503          	ld	a0,1888(gp) # 146d0 <_impure_ptr>
   12710:	8082                	ret
