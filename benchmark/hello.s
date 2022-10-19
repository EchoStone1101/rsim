
hello:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c789                	beqz	a5,100be <register_fini+0xe>
   100b6:	6541                	lui	a0,0x10
   100b8:	71e50513          	addi	a0,a0,1822 # 1071e <__libc_fini_array>
   100bc:	aec9                	j	1048e <atexit>
   100be:	8082                	ret

00000000000100c0 <_start>:
   100c0:	00004197          	auipc	gp,0x4
   100c4:	e2018193          	addi	gp,gp,-480 # 13ee0 <__global_pointer$>
   100c8:	77818513          	addi	a0,gp,1912 # 14658 <__malloc_max_total_mem>
   100cc:	00004617          	auipc	a2,0x4
   100d0:	61460613          	addi	a2,a2,1556 # 146e0 <__BSS_END__>
   100d4:	8e09                	sub	a2,a2,a0
   100d6:	4581                	li	a1,0
   100d8:	134000ef          	jal	ra,1020c <memset>
   100dc:	00000517          	auipc	a0,0x0
   100e0:	3b250513          	addi	a0,a0,946 # 1048e <atexit>
   100e4:	c519                	beqz	a0,100f2 <_start+0x32>
   100e6:	00000517          	auipc	a0,0x0
   100ea:	63850513          	addi	a0,a0,1592 # 1071e <__libc_fini_array>
   100ee:	3a0000ef          	jal	ra,1048e <atexit>
   100f2:	0b0000ef          	jal	ra,101a2 <__libc_init_array>
   100f6:	4502                	lw	a0,0(sp)
   100f8:	002c                	addi	a1,sp,8
   100fa:	4601                	li	a2,0
   100fc:	054000ef          	jal	ra,10150 <main>
   10100:	a051                	j	10184 <exit>

0000000000010102 <__do_global_dtors_aux>:
   10102:	7a01c703          	lbu	a4,1952(gp) # 14680 <completed.1>
   10106:	e715                	bnez	a4,10132 <__do_global_dtors_aux+0x30>
   10108:	1141                	addi	sp,sp,-16
   1010a:	e022                	sd	s0,0(sp)
   1010c:	843e                	mv	s0,a5
   1010e:	e406                	sd	ra,8(sp)
   10110:	00000793          	li	a5,0
   10114:	cb81                	beqz	a5,10124 <__do_global_dtors_aux+0x22>
   10116:	654d                	lui	a0,0x13
   10118:	6a450513          	addi	a0,a0,1700 # 136a4 <__FRAME_END__>
   1011c:	00000097          	auipc	ra,0x0
   10120:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10124:	4785                	li	a5,1
   10126:	60a2                	ld	ra,8(sp)
   10128:	7af18023          	sb	a5,1952(gp) # 14680 <completed.1>
   1012c:	6402                	ld	s0,0(sp)
   1012e:	0141                	addi	sp,sp,16
   10130:	8082                	ret
   10132:	8082                	ret

0000000000010134 <frame_dummy>:
   10134:	00000793          	li	a5,0
   10138:	cb91                	beqz	a5,1014c <frame_dummy+0x18>
   1013a:	654d                	lui	a0,0x13
   1013c:	7a818593          	addi	a1,gp,1960 # 14688 <object.0>
   10140:	6a450513          	addi	a0,a0,1700 # 136a4 <__FRAME_END__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1014c:	8082                	ret
	...

0000000000010150 <main>:
   10150:	ff010113          	addi	sp,sp,-16
   10154:	00113423          	sd	ra,8(sp)
   10158:	00813023          	sd	s0,0(sp)
   1015c:	01010413          	addi	s0,sp,16
   10160:	000127b7          	lui	a5,0x12
   10164:	69078513          	addi	a0,a5,1680 # 12690 <__errno+0xa>
   10168:	1cc000ef          	jal	ra,10334 <puts>
   1016c:	00000793          	li	a5,0
   10170:	00078513          	mv	a0,a5
   10174:	00813083          	ld	ra,8(sp)
   10178:	00013403          	ld	s0,0(sp)
   1017c:	01010113          	addi	sp,sp,16
   10180:	00008067          	ret

0000000000010184 <exit>:
   10184:	1141                	addi	sp,sp,-16
   10186:	4581                	li	a1,0
   10188:	e022                	sd	s0,0(sp)
   1018a:	e406                	sd	ra,8(sp)
   1018c:	842a                	mv	s0,a0
   1018e:	23e000ef          	jal	ra,103cc <__call_exitprocs>
   10192:	7501b503          	ld	a0,1872(gp) # 14630 <_global_impure_ptr>
   10196:	6d3c                	ld	a5,88(a0)
   10198:	c391                	beqz	a5,1019c <exit+0x18>
   1019a:	9782                	jalr	a5
   1019c:	8522                	mv	a0,s0
   1019e:	32e020ef          	jal	ra,124cc <_exit>

00000000000101a2 <__libc_init_array>:
   101a2:	1101                	addi	sp,sp,-32
   101a4:	e822                	sd	s0,16(sp)
   101a6:	e04a                	sd	s2,0(sp)
   101a8:	644d                	lui	s0,0x13
   101aa:	694d                	lui	s2,0x13
   101ac:	6a840793          	addi	a5,s0,1704 # 136a8 <__init_array_start>
   101b0:	6a890913          	addi	s2,s2,1704 # 136a8 <__init_array_start>
   101b4:	40f90933          	sub	s2,s2,a5
   101b8:	ec06                	sd	ra,24(sp)
   101ba:	e426                	sd	s1,8(sp)
   101bc:	40395913          	srai	s2,s2,0x3
   101c0:	00090b63          	beqz	s2,101d6 <__libc_init_array+0x34>
   101c4:	6a840413          	addi	s0,s0,1704
   101c8:	4481                	li	s1,0
   101ca:	601c                	ld	a5,0(s0)
   101cc:	0485                	addi	s1,s1,1
   101ce:	0421                	addi	s0,s0,8
   101d0:	9782                	jalr	a5
   101d2:	fe991ce3          	bne	s2,s1,101ca <__libc_init_array+0x28>
   101d6:	644d                	lui	s0,0x13
   101d8:	694d                	lui	s2,0x13
   101da:	6a840793          	addi	a5,s0,1704 # 136a8 <__init_array_start>
   101de:	6b890913          	addi	s2,s2,1720 # 136b8 <__do_global_dtors_aux_fini_array_entry>
   101e2:	40f90933          	sub	s2,s2,a5
   101e6:	40395913          	srai	s2,s2,0x3
   101ea:	00090b63          	beqz	s2,10200 <__libc_init_array+0x5e>
   101ee:	6a840413          	addi	s0,s0,1704
   101f2:	4481                	li	s1,0
   101f4:	601c                	ld	a5,0(s0)
   101f6:	0485                	addi	s1,s1,1
   101f8:	0421                	addi	s0,s0,8
   101fa:	9782                	jalr	a5
   101fc:	fe991ce3          	bne	s2,s1,101f4 <__libc_init_array+0x52>
   10200:	60e2                	ld	ra,24(sp)
   10202:	6442                	ld	s0,16(sp)
   10204:	64a2                	ld	s1,8(sp)
   10206:	6902                	ld	s2,0(sp)
   10208:	6105                	addi	sp,sp,32
   1020a:	8082                	ret

000000000001020c <memset>:
   1020c:	433d                	li	t1,15
   1020e:	872a                	mv	a4,a0
   10210:	02c37163          	bgeu	t1,a2,10232 <memset+0x26>
   10214:	00f77793          	andi	a5,a4,15
   10218:	e3c1                	bnez	a5,10298 <memset+0x8c>
   1021a:	e1bd                	bnez	a1,10280 <memset+0x74>
   1021c:	ff067693          	andi	a3,a2,-16
   10220:	8a3d                	andi	a2,a2,15
   10222:	96ba                	add	a3,a3,a4
   10224:	e30c                	sd	a1,0(a4)
   10226:	e70c                	sd	a1,8(a4)
   10228:	0741                	addi	a4,a4,16
   1022a:	fed76de3          	bltu	a4,a3,10224 <memset+0x18>
   1022e:	e211                	bnez	a2,10232 <memset+0x26>
   10230:	8082                	ret
   10232:	40c306b3          	sub	a3,t1,a2
   10236:	068a                	slli	a3,a3,0x2
   10238:	00000297          	auipc	t0,0x0
   1023c:	9696                	add	a3,a3,t0
   1023e:	00a68067          	jr	10(a3)
   10242:	00b70723          	sb	a1,14(a4)
   10246:	00b706a3          	sb	a1,13(a4)
   1024a:	00b70623          	sb	a1,12(a4)
   1024e:	00b705a3          	sb	a1,11(a4)
   10252:	00b70523          	sb	a1,10(a4)
   10256:	00b704a3          	sb	a1,9(a4)
   1025a:	00b70423          	sb	a1,8(a4)
   1025e:	00b703a3          	sb	a1,7(a4)
   10262:	00b70323          	sb	a1,6(a4)
   10266:	00b702a3          	sb	a1,5(a4)
   1026a:	00b70223          	sb	a1,4(a4)
   1026e:	00b701a3          	sb	a1,3(a4)
   10272:	00b70123          	sb	a1,2(a4)
   10276:	00b700a3          	sb	a1,1(a4)
   1027a:	00b70023          	sb	a1,0(a4)
   1027e:	8082                	ret
   10280:	0ff5f593          	zext.b	a1,a1
   10284:	00859693          	slli	a3,a1,0x8
   10288:	8dd5                	or	a1,a1,a3
   1028a:	01059693          	slli	a3,a1,0x10
   1028e:	8dd5                	or	a1,a1,a3
   10290:	02059693          	slli	a3,a1,0x20
   10294:	8dd5                	or	a1,a1,a3
   10296:	b759                	j	1021c <memset+0x10>
   10298:	00279693          	slli	a3,a5,0x2
   1029c:	00000297          	auipc	t0,0x0
   102a0:	9696                	add	a3,a3,t0
   102a2:	8286                	mv	t0,ra
   102a4:	fa2680e7          	jalr	-94(a3)
   102a8:	8096                	mv	ra,t0
   102aa:	17c1                	addi	a5,a5,-16
   102ac:	8f1d                	sub	a4,a4,a5
   102ae:	963e                	add	a2,a2,a5
   102b0:	f8c371e3          	bgeu	t1,a2,10232 <memset+0x26>
   102b4:	b79d                	j	1021a <memset+0xe>

00000000000102b6 <_puts_r>:
   102b6:	7159                	addi	sp,sp,-112
   102b8:	f0a2                	sd	s0,96(sp)
   102ba:	842a                	mv	s0,a0
   102bc:	852e                	mv	a0,a1
   102be:	eca6                	sd	s1,88(sp)
   102c0:	f486                	sd	ra,104(sp)
   102c2:	84ae                	mv	s1,a1
   102c4:	078000ef          	jal	ra,1033c <strlen>
   102c8:	67c9                	lui	a5,0x12
   102ca:	6a078793          	addi	a5,a5,1696 # 126a0 <__errno+0x1a>
   102ce:	e0be                	sd	a5,64(sp)
   102d0:	4785                	li	a5,1
   102d2:	e4be                	sd	a5,72(sp)
   102d4:	4838                	lw	a4,80(s0)
   102d6:	181c                	addi	a5,sp,48
   102d8:	00150693          	addi	a3,a0,1
   102dc:	ec3e                	sd	a5,24(sp)
   102de:	4789                	li	a5,2
   102e0:	f826                	sd	s1,48(sp)
   102e2:	fc2a                	sd	a0,56(sp)
   102e4:	f436                	sd	a3,40(sp)
   102e6:	d03e                	sw	a5,32(sp)
   102e8:	680c                	ld	a1,16(s0)
   102ea:	cf0d                	beqz	a4,10324 <_puts_r+0x6e>
   102ec:	01059783          	lh	a5,16(a1)
   102f0:	03279713          	slli	a4,a5,0x32
   102f4:	00074d63          	bltz	a4,1030e <_puts_r+0x58>
   102f8:	0ac5a703          	lw	a4,172(a1)
   102fc:	6689                	lui	a3,0x2
   102fe:	8fd5                	or	a5,a5,a3
   10300:	76f9                	lui	a3,0xffffe
   10302:	16fd                	addi	a3,a3,-1
   10304:	8f75                	and	a4,a4,a3
   10306:	00f59823          	sh	a5,16(a1)
   1030a:	0ae5a623          	sw	a4,172(a1)
   1030e:	0830                	addi	a2,sp,24
   10310:	8522                	mv	a0,s0
   10312:	440000ef          	jal	ra,10752 <__sfvwrite_r>
   10316:	ed09                	bnez	a0,10330 <_puts_r+0x7a>
   10318:	4529                	li	a0,10
   1031a:	70a6                	ld	ra,104(sp)
   1031c:	7406                	ld	s0,96(sp)
   1031e:	64e6                	ld	s1,88(sp)
   10320:	6165                	addi	sp,sp,112
   10322:	8082                	ret
   10324:	8522                	mv	a0,s0
   10326:	e42e                	sd	a1,8(sp)
   10328:	3ce000ef          	jal	ra,106f6 <__sinit>
   1032c:	65a2                	ld	a1,8(sp)
   1032e:	bf7d                	j	102ec <_puts_r+0x36>
   10330:	557d                	li	a0,-1
   10332:	b7e5                	j	1031a <_puts_r+0x64>

0000000000010334 <puts>:
   10334:	85aa                	mv	a1,a0
   10336:	7601b503          	ld	a0,1888(gp) # 14640 <_impure_ptr>
   1033a:	bfb5                	j	102b6 <_puts_r>

000000000001033c <strlen>:
   1033c:	00757793          	andi	a5,a0,7
   10340:	872a                	mv	a4,a0
   10342:	eba9                	bnez	a5,10394 <strlen+0x58>
   10344:	7381b683          	ld	a3,1848(gp) # 14618 <__SDATA_BEGIN__>
   10348:	55fd                	li	a1,-1
   1034a:	6310                	ld	a2,0(a4)
   1034c:	0721                	addi	a4,a4,8
   1034e:	00d677b3          	and	a5,a2,a3
   10352:	97b6                	add	a5,a5,a3
   10354:	8fd1                	or	a5,a5,a2
   10356:	8fd5                	or	a5,a5,a3
   10358:	feb789e3          	beq	a5,a1,1034a <strlen+0xe>
   1035c:	ff874683          	lbu	a3,-8(a4)
   10360:	40a707b3          	sub	a5,a4,a0
   10364:	c6a9                	beqz	a3,103ae <strlen+0x72>
   10366:	ff974683          	lbu	a3,-7(a4)
   1036a:	ce9d                	beqz	a3,103a8 <strlen+0x6c>
   1036c:	ffa74683          	lbu	a3,-6(a4)
   10370:	c6a9                	beqz	a3,103ba <strlen+0x7e>
   10372:	ffb74683          	lbu	a3,-5(a4)
   10376:	ce9d                	beqz	a3,103b4 <strlen+0x78>
   10378:	ffc74683          	lbu	a3,-4(a4)
   1037c:	ffd74603          	lbu	a2,-3(a4)
   10380:	ffe74503          	lbu	a0,-2(a4)
   10384:	ce95                	beqz	a3,103c0 <strlen+0x84>
   10386:	c221                	beqz	a2,103c6 <strlen+0x8a>
   10388:	00a03533          	snez	a0,a0
   1038c:	953e                	add	a0,a0,a5
   1038e:	1579                	addi	a0,a0,-2
   10390:	8082                	ret
   10392:	dacd                	beqz	a3,10344 <strlen+0x8>
   10394:	00074783          	lbu	a5,0(a4)
   10398:	0705                	addi	a4,a4,1
   1039a:	00777693          	andi	a3,a4,7
   1039e:	fbf5                	bnez	a5,10392 <strlen+0x56>
   103a0:	8f09                	sub	a4,a4,a0
   103a2:	fff70513          	addi	a0,a4,-1
   103a6:	8082                	ret
   103a8:	ff978513          	addi	a0,a5,-7
   103ac:	8082                	ret
   103ae:	ff878513          	addi	a0,a5,-8
   103b2:	8082                	ret
   103b4:	ffb78513          	addi	a0,a5,-5
   103b8:	8082                	ret
   103ba:	ffa78513          	addi	a0,a5,-6
   103be:	8082                	ret
   103c0:	ffc78513          	addi	a0,a5,-4
   103c4:	8082                	ret
   103c6:	ffd78513          	addi	a0,a5,-3
   103ca:	8082                	ret

00000000000103cc <__call_exitprocs>:
   103cc:	715d                	addi	sp,sp,-80
   103ce:	f052                	sd	s4,32(sp)
   103d0:	7501ba03          	ld	s4,1872(gp) # 14630 <_global_impure_ptr>
   103d4:	f84a                	sd	s2,48(sp)
   103d6:	e486                	sd	ra,72(sp)
   103d8:	1f8a3903          	ld	s2,504(s4)
   103dc:	e0a2                	sd	s0,64(sp)
   103de:	fc26                	sd	s1,56(sp)
   103e0:	f44e                	sd	s3,40(sp)
   103e2:	ec56                	sd	s5,24(sp)
   103e4:	e85a                	sd	s6,16(sp)
   103e6:	e45e                	sd	s7,8(sp)
   103e8:	e062                	sd	s8,0(sp)
   103ea:	02090863          	beqz	s2,1041a <__call_exitprocs+0x4e>
   103ee:	8b2a                	mv	s6,a0
   103f0:	8bae                	mv	s7,a1
   103f2:	4a85                	li	s5,1
   103f4:	59fd                	li	s3,-1
   103f6:	00892483          	lw	s1,8(s2)
   103fa:	fff4841b          	addiw	s0,s1,-1
   103fe:	00044e63          	bltz	s0,1041a <__call_exitprocs+0x4e>
   10402:	048e                	slli	s1,s1,0x3
   10404:	94ca                	add	s1,s1,s2
   10406:	020b8663          	beqz	s7,10432 <__call_exitprocs+0x66>
   1040a:	2084b783          	ld	a5,520(s1)
   1040e:	03778263          	beq	a5,s7,10432 <__call_exitprocs+0x66>
   10412:	347d                	addiw	s0,s0,-1
   10414:	14e1                	addi	s1,s1,-8
   10416:	ff3418e3          	bne	s0,s3,10406 <__call_exitprocs+0x3a>
   1041a:	60a6                	ld	ra,72(sp)
   1041c:	6406                	ld	s0,64(sp)
   1041e:	74e2                	ld	s1,56(sp)
   10420:	7942                	ld	s2,48(sp)
   10422:	79a2                	ld	s3,40(sp)
   10424:	7a02                	ld	s4,32(sp)
   10426:	6ae2                	ld	s5,24(sp)
   10428:	6b42                	ld	s6,16(sp)
   1042a:	6ba2                	ld	s7,8(sp)
   1042c:	6c02                	ld	s8,0(sp)
   1042e:	6161                	addi	sp,sp,80
   10430:	8082                	ret
   10432:	00892783          	lw	a5,8(s2)
   10436:	6498                	ld	a4,8(s1)
   10438:	37fd                	addiw	a5,a5,-1
   1043a:	04878463          	beq	a5,s0,10482 <__call_exitprocs+0xb6>
   1043e:	0004b423          	sd	zero,8(s1)
   10442:	db61                	beqz	a4,10412 <__call_exitprocs+0x46>
   10444:	31092783          	lw	a5,784(s2)
   10448:	008a96bb          	sllw	a3,s5,s0
   1044c:	00892c03          	lw	s8,8(s2)
   10450:	8ff5                	and	a5,a5,a3
   10452:	2781                	sext.w	a5,a5
   10454:	ef89                	bnez	a5,1046e <__call_exitprocs+0xa2>
   10456:	9702                	jalr	a4
   10458:	00892703          	lw	a4,8(s2)
   1045c:	1f8a3783          	ld	a5,504(s4)
   10460:	01871463          	bne	a4,s8,10468 <__call_exitprocs+0x9c>
   10464:	fb2787e3          	beq	a5,s2,10412 <__call_exitprocs+0x46>
   10468:	dbcd                	beqz	a5,1041a <__call_exitprocs+0x4e>
   1046a:	893e                	mv	s2,a5
   1046c:	b769                	j	103f6 <__call_exitprocs+0x2a>
   1046e:	31492783          	lw	a5,788(s2)
   10472:	1084b583          	ld	a1,264(s1)
   10476:	8ff5                	and	a5,a5,a3
   10478:	2781                	sext.w	a5,a5
   1047a:	e799                	bnez	a5,10488 <__call_exitprocs+0xbc>
   1047c:	855a                	mv	a0,s6
   1047e:	9702                	jalr	a4
   10480:	bfe1                	j	10458 <__call_exitprocs+0x8c>
   10482:	00892423          	sw	s0,8(s2)
   10486:	bf75                	j	10442 <__call_exitprocs+0x76>
   10488:	852e                	mv	a0,a1
   1048a:	9702                	jalr	a4
   1048c:	b7f1                	j	10458 <__call_exitprocs+0x8c>

000000000001048e <atexit>:
   1048e:	85aa                	mv	a1,a0
   10490:	4681                	li	a3,0
   10492:	4601                	li	a2,0
   10494:	4501                	li	a0,0
   10496:	5a20106f          	j	11a38 <__register_exitproc>

000000000001049a <__fp_lock>:
   1049a:	4501                	li	a0,0
   1049c:	8082                	ret

000000000001049e <_cleanup_r>:
   1049e:	65c9                	lui	a1,0x12
   104a0:	b6458593          	addi	a1,a1,-1180 # 11b64 <_fclose_r>
   104a4:	ada9                	j	10afe <_fwalk_reent>

00000000000104a6 <__fp_unlock>:
   104a6:	4501                	li	a0,0
   104a8:	8082                	ret

00000000000104aa <__sinit.part.0>:
   104aa:	7139                	addi	sp,sp,-64
   104ac:	67c1                	lui	a5,0x10
   104ae:	fc06                	sd	ra,56(sp)
   104b0:	f822                	sd	s0,48(sp)
   104b2:	f426                	sd	s1,40(sp)
   104b4:	f04a                	sd	s2,32(sp)
   104b6:	ec4e                	sd	s3,24(sp)
   104b8:	e852                	sd	s4,16(sp)
   104ba:	e456                	sd	s5,8(sp)
   104bc:	e05a                	sd	s6,0(sp)
   104be:	6500                	ld	s0,8(a0)
   104c0:	49e78793          	addi	a5,a5,1182 # 1049e <_cleanup_r>
   104c4:	ed3c                	sd	a5,88(a0)
   104c6:	53850713          	addi	a4,a0,1336
   104ca:	478d                	li	a5,3
   104cc:	52e53823          	sd	a4,1328(a0)
   104d0:	52f52423          	sw	a5,1320(a0)
   104d4:	52053023          	sd	zero,1312(a0)
   104d8:	4791                	li	a5,4
   104da:	892a                	mv	s2,a0
   104dc:	c81c                	sw	a5,16(s0)
   104de:	4621                	li	a2,8
   104e0:	4581                	li	a1,0
   104e2:	0a042623          	sw	zero,172(s0)
   104e6:	00043023          	sd	zero,0(s0)
   104ea:	00043423          	sd	zero,8(s0)
   104ee:	00043c23          	sd	zero,24(s0)
   104f2:	02042023          	sw	zero,32(s0)
   104f6:	02042423          	sw	zero,40(s0)
   104fa:	0a440513          	addi	a0,s0,164
   104fe:	d0fff0ef          	jal	ra,1020c <memset>
   10502:	6b49                	lui	s6,0x12
   10504:	01093483          	ld	s1,16(s2)
   10508:	6ac9                	lui	s5,0x12
   1050a:	6a49                	lui	s4,0x12
   1050c:	69c9                	lui	s3,0x12
   1050e:	82eb0b13          	addi	s6,s6,-2002 # 1182e <__sread>
   10512:	86aa8a93          	addi	s5,s5,-1942 # 1186a <__swrite>
   10516:	8bca0a13          	addi	s4,s4,-1860 # 118bc <__sseek>
   1051a:	8fe98993          	addi	s3,s3,-1794 # 118fe <__sclose>
   1051e:	67c1                	lui	a5,0x10
   10520:	03643c23          	sd	s6,56(s0)
   10524:	05543023          	sd	s5,64(s0)
   10528:	05443423          	sd	s4,72(s0)
   1052c:	05343823          	sd	s3,80(s0)
   10530:	f800                	sd	s0,48(s0)
   10532:	07a5                	addi	a5,a5,9
   10534:	c89c                	sw	a5,16(s1)
   10536:	4621                	li	a2,8
   10538:	4581                	li	a1,0
   1053a:	0a04a623          	sw	zero,172(s1)
   1053e:	0004b023          	sd	zero,0(s1)
   10542:	0004b423          	sd	zero,8(s1)
   10546:	0004bc23          	sd	zero,24(s1)
   1054a:	0204a023          	sw	zero,32(s1)
   1054e:	0204a423          	sw	zero,40(s1)
   10552:	0a448513          	addi	a0,s1,164
   10556:	cb7ff0ef          	jal	ra,1020c <memset>
   1055a:	01893403          	ld	s0,24(s2)
   1055e:	000207b7          	lui	a5,0x20
   10562:	0364bc23          	sd	s6,56(s1)
   10566:	0554b023          	sd	s5,64(s1)
   1056a:	0544b423          	sd	s4,72(s1)
   1056e:	0534b823          	sd	s3,80(s1)
   10572:	f884                	sd	s1,48(s1)
   10574:	07c9                	addi	a5,a5,18
   10576:	c81c                	sw	a5,16(s0)
   10578:	0a042623          	sw	zero,172(s0)
   1057c:	00043023          	sd	zero,0(s0)
   10580:	00043423          	sd	zero,8(s0)
   10584:	00043c23          	sd	zero,24(s0)
   10588:	02042023          	sw	zero,32(s0)
   1058c:	02042423          	sw	zero,40(s0)
   10590:	0a440513          	addi	a0,s0,164
   10594:	4621                	li	a2,8
   10596:	4581                	li	a1,0
   10598:	c75ff0ef          	jal	ra,1020c <memset>
   1059c:	70e2                	ld	ra,56(sp)
   1059e:	03643c23          	sd	s6,56(s0)
   105a2:	05543023          	sd	s5,64(s0)
   105a6:	05443423          	sd	s4,72(s0)
   105aa:	05343823          	sd	s3,80(s0)
   105ae:	f800                	sd	s0,48(s0)
   105b0:	7442                	ld	s0,48(sp)
   105b2:	4785                	li	a5,1
   105b4:	04f92823          	sw	a5,80(s2)
   105b8:	74a2                	ld	s1,40(sp)
   105ba:	7902                	ld	s2,32(sp)
   105bc:	69e2                	ld	s3,24(sp)
   105be:	6a42                	ld	s4,16(sp)
   105c0:	6aa2                	ld	s5,8(sp)
   105c2:	6b02                	ld	s6,0(sp)
   105c4:	6121                	addi	sp,sp,64
   105c6:	8082                	ret

00000000000105c8 <__sfmoreglue>:
   105c8:	1101                	addi	sp,sp,-32
   105ca:	e426                	sd	s1,8(sp)
   105cc:	0b000613          	li	a2,176
   105d0:	fff5849b          	addiw	s1,a1,-1
   105d4:	02c484b3          	mul	s1,s1,a2
   105d8:	e04a                	sd	s2,0(sp)
   105da:	892e                	mv	s2,a1
   105dc:	e822                	sd	s0,16(sp)
   105de:	ec06                	sd	ra,24(sp)
   105e0:	0c848593          	addi	a1,s1,200
   105e4:	5a4000ef          	jal	ra,10b88 <_malloc_r>
   105e8:	842a                	mv	s0,a0
   105ea:	cd01                	beqz	a0,10602 <__sfmoreglue+0x3a>
   105ec:	0561                	addi	a0,a0,24
   105ee:	00043023          	sd	zero,0(s0)
   105f2:	01242423          	sw	s2,8(s0)
   105f6:	e808                	sd	a0,16(s0)
   105f8:	0b048613          	addi	a2,s1,176
   105fc:	4581                	li	a1,0
   105fe:	c0fff0ef          	jal	ra,1020c <memset>
   10602:	60e2                	ld	ra,24(sp)
   10604:	8522                	mv	a0,s0
   10606:	6442                	ld	s0,16(sp)
   10608:	64a2                	ld	s1,8(sp)
   1060a:	6902                	ld	s2,0(sp)
   1060c:	6105                	addi	sp,sp,32
   1060e:	8082                	ret

0000000000010610 <__sfp>:
   10610:	7179                	addi	sp,sp,-48
   10612:	ec26                	sd	s1,24(sp)
   10614:	7501b483          	ld	s1,1872(gp) # 14630 <_global_impure_ptr>
   10618:	e84a                	sd	s2,16(sp)
   1061a:	f406                	sd	ra,40(sp)
   1061c:	48bc                	lw	a5,80(s1)
   1061e:	f022                	sd	s0,32(sp)
   10620:	e44e                	sd	s3,8(sp)
   10622:	e052                	sd	s4,0(sp)
   10624:	892a                	mv	s2,a0
   10626:	c3d9                	beqz	a5,106ac <__sfp+0x9c>
   10628:	52048493          	addi	s1,s1,1312
   1062c:	0b000993          	li	s3,176
   10630:	4a11                	li	s4,4
   10632:	449c                	lw	a5,8(s1)
   10634:	6880                	ld	s0,16(s1)
   10636:	06f05763          	blez	a5,106a4 <__sfp+0x94>
   1063a:	37fd                	addiw	a5,a5,-1
   1063c:	1782                	slli	a5,a5,0x20
   1063e:	9381                	srli	a5,a5,0x20
   10640:	0785                	addi	a5,a5,1
   10642:	033787b3          	mul	a5,a5,s3
   10646:	97a2                	add	a5,a5,s0
   10648:	a029                	j	10652 <__sfp+0x42>
   1064a:	0b040413          	addi	s0,s0,176
   1064e:	04f40b63          	beq	s0,a5,106a4 <__sfp+0x94>
   10652:	01041703          	lh	a4,16(s0)
   10656:	fb75                	bnez	a4,1064a <__sfp+0x3a>
   10658:	77c1                	lui	a5,0xffff0
   1065a:	0785                	addi	a5,a5,1
   1065c:	0a042623          	sw	zero,172(s0)
   10660:	00043023          	sd	zero,0(s0)
   10664:	00043423          	sd	zero,8(s0)
   10668:	c81c                	sw	a5,16(s0)
   1066a:	00043c23          	sd	zero,24(s0)
   1066e:	02042023          	sw	zero,32(s0)
   10672:	02042423          	sw	zero,40(s0)
   10676:	4621                	li	a2,8
   10678:	4581                	li	a1,0
   1067a:	0a440513          	addi	a0,s0,164
   1067e:	b8fff0ef          	jal	ra,1020c <memset>
   10682:	04043c23          	sd	zero,88(s0)
   10686:	06042023          	sw	zero,96(s0)
   1068a:	06043c23          	sd	zero,120(s0)
   1068e:	08042023          	sw	zero,128(s0)
   10692:	70a2                	ld	ra,40(sp)
   10694:	8522                	mv	a0,s0
   10696:	7402                	ld	s0,32(sp)
   10698:	64e2                	ld	s1,24(sp)
   1069a:	6942                	ld	s2,16(sp)
   1069c:	69a2                	ld	s3,8(sp)
   1069e:	6a02                	ld	s4,0(sp)
   106a0:	6145                	addi	sp,sp,48
   106a2:	8082                	ret
   106a4:	6080                	ld	s0,0(s1)
   106a6:	c419                	beqz	s0,106b4 <__sfp+0xa4>
   106a8:	84a2                	mv	s1,s0
   106aa:	b761                	j	10632 <__sfp+0x22>
   106ac:	8526                	mv	a0,s1
   106ae:	dfdff0ef          	jal	ra,104aa <__sinit.part.0>
   106b2:	bf9d                	j	10628 <__sfp+0x18>
   106b4:	2d800593          	li	a1,728
   106b8:	854a                	mv	a0,s2
   106ba:	4ce000ef          	jal	ra,10b88 <_malloc_r>
   106be:	842a                	mv	s0,a0
   106c0:	cd19                	beqz	a0,106de <__sfp+0xce>
   106c2:	0561                	addi	a0,a0,24
   106c4:	00043023          	sd	zero,0(s0)
   106c8:	01442423          	sw	s4,8(s0)
   106cc:	e808                	sd	a0,16(s0)
   106ce:	2c000613          	li	a2,704
   106d2:	4581                	li	a1,0
   106d4:	b39ff0ef          	jal	ra,1020c <memset>
   106d8:	e080                	sd	s0,0(s1)
   106da:	84a2                	mv	s1,s0
   106dc:	bf99                	j	10632 <__sfp+0x22>
   106de:	0004b023          	sd	zero,0(s1)
   106e2:	47b1                	li	a5,12
   106e4:	00f92023          	sw	a5,0(s2)
   106e8:	b76d                	j	10692 <__sfp+0x82>

00000000000106ea <_cleanup>:
   106ea:	7501b503          	ld	a0,1872(gp) # 14630 <_global_impure_ptr>
   106ee:	65c9                	lui	a1,0x12
   106f0:	b6458593          	addi	a1,a1,-1180 # 11b64 <_fclose_r>
   106f4:	a129                	j	10afe <_fwalk_reent>

00000000000106f6 <__sinit>:
   106f6:	493c                	lw	a5,80(a0)
   106f8:	c391                	beqz	a5,106fc <__sinit+0x6>
   106fa:	8082                	ret
   106fc:	b37d                	j	104aa <__sinit.part.0>

00000000000106fe <__sfp_lock_acquire>:
   106fe:	8082                	ret

0000000000010700 <__sfp_lock_release>:
   10700:	8082                	ret

0000000000010702 <__sinit_lock_acquire>:
   10702:	8082                	ret

0000000000010704 <__sinit_lock_release>:
   10704:	8082                	ret

0000000000010706 <__fp_lock_all>:
   10706:	7601b503          	ld	a0,1888(gp) # 14640 <_impure_ptr>
   1070a:	65c1                	lui	a1,0x10
   1070c:	49a58593          	addi	a1,a1,1178 # 1049a <__fp_lock>
   10710:	a6b5                	j	10a7c <_fwalk>

0000000000010712 <__fp_unlock_all>:
   10712:	7601b503          	ld	a0,1888(gp) # 14640 <_impure_ptr>
   10716:	65c1                	lui	a1,0x10
   10718:	4a658593          	addi	a1,a1,1190 # 104a6 <__fp_unlock>
   1071c:	a685                	j	10a7c <_fwalk>

000000000001071e <__libc_fini_array>:
   1071e:	1101                	addi	sp,sp,-32
   10720:	e822                	sd	s0,16(sp)
   10722:	67cd                	lui	a5,0x13
   10724:	644d                	lui	s0,0x13
   10726:	6b840413          	addi	s0,s0,1720 # 136b8 <__do_global_dtors_aux_fini_array_entry>
   1072a:	6c078793          	addi	a5,a5,1728 # 136c0 <impure_data>
   1072e:	8f81                	sub	a5,a5,s0
   10730:	e426                	sd	s1,8(sp)
   10732:	ec06                	sd	ra,24(sp)
   10734:	4037d493          	srai	s1,a5,0x3
   10738:	c881                	beqz	s1,10748 <__libc_fini_array+0x2a>
   1073a:	17e1                	addi	a5,a5,-8
   1073c:	943e                	add	s0,s0,a5
   1073e:	601c                	ld	a5,0(s0)
   10740:	14fd                	addi	s1,s1,-1
   10742:	1461                	addi	s0,s0,-8
   10744:	9782                	jalr	a5
   10746:	fce5                	bnez	s1,1073e <__libc_fini_array+0x20>
   10748:	60e2                	ld	ra,24(sp)
   1074a:	6442                	ld	s0,16(sp)
   1074c:	64a2                	ld	s1,8(sp)
   1074e:	6105                	addi	sp,sp,32
   10750:	8082                	ret

0000000000010752 <__sfvwrite_r>:
   10752:	6a1c                	ld	a5,16(a2)
   10754:	1a078c63          	beqz	a5,1090c <__sfvwrite_r+0x1ba>
   10758:	0105d783          	lhu	a5,16(a1)
   1075c:	711d                	addi	sp,sp,-96
   1075e:	e8a2                	sd	s0,80(sp)
   10760:	f852                	sd	s4,48(sp)
   10762:	f456                	sd	s5,40(sp)
   10764:	ec86                	sd	ra,88(sp)
   10766:	e4a6                	sd	s1,72(sp)
   10768:	e0ca                	sd	s2,64(sp)
   1076a:	fc4e                	sd	s3,56(sp)
   1076c:	f05a                	sd	s6,32(sp)
   1076e:	ec5e                	sd	s7,24(sp)
   10770:	e862                	sd	s8,16(sp)
   10772:	e466                	sd	s9,8(sp)
   10774:	e06a                	sd	s10,0(sp)
   10776:	0087f713          	andi	a4,a5,8
   1077a:	8a32                	mv	s4,a2
   1077c:	8aaa                	mv	s5,a0
   1077e:	842e                	mv	s0,a1
   10780:	c325                	beqz	a4,107e0 <__sfvwrite_r+0x8e>
   10782:	6d98                	ld	a4,24(a1)
   10784:	cf31                	beqz	a4,107e0 <__sfvwrite_r+0x8e>
   10786:	0027f713          	andi	a4,a5,2
   1078a:	000a3903          	ld	s2,0(s4)
   1078e:	c735                	beqz	a4,107fa <__sfvwrite_r+0xa8>
   10790:	603c                	ld	a5,64(s0)
   10792:	780c                	ld	a1,48(s0)
   10794:	80000b37          	lui	s6,0x80000
   10798:	4981                	li	s3,0
   1079a:	4481                	li	s1,0
   1079c:	c00b4b13          	xori	s6,s6,-1024
   107a0:	864e                	mv	a2,s3
   107a2:	8556                	mv	a0,s5
   107a4:	c885                	beqz	s1,107d4 <__sfvwrite_r+0x82>
   107a6:	86a6                	mv	a3,s1
   107a8:	009b7363          	bgeu	s6,s1,107ae <__sfvwrite_r+0x5c>
   107ac:	86da                	mv	a3,s6
   107ae:	2681                	sext.w	a3,a3
   107b0:	9782                	jalr	a5
   107b2:	14a05563          	blez	a0,108fc <__sfvwrite_r+0x1aa>
   107b6:	010a3783          	ld	a5,16(s4)
   107ba:	99aa                	add	s3,s3,a0
   107bc:	8c89                	sub	s1,s1,a0
   107be:	40a78533          	sub	a0,a5,a0
   107c2:	00aa3823          	sd	a0,16(s4)
   107c6:	10050763          	beqz	a0,108d4 <__sfvwrite_r+0x182>
   107ca:	603c                	ld	a5,64(s0)
   107cc:	780c                	ld	a1,48(s0)
   107ce:	864e                	mv	a2,s3
   107d0:	8556                	mv	a0,s5
   107d2:	f8f1                	bnez	s1,107a6 <__sfvwrite_r+0x54>
   107d4:	00093983          	ld	s3,0(s2)
   107d8:	00893483          	ld	s1,8(s2)
   107dc:	0941                	addi	s2,s2,16
   107de:	b7c9                	j	107a0 <__sfvwrite_r+0x4e>
   107e0:	85a2                	mv	a1,s0
   107e2:	8556                	mv	a0,s5
   107e4:	15c010ef          	jal	ra,11940 <__swsetup_r>
   107e8:	28051863          	bnez	a0,10a78 <__sfvwrite_r+0x326>
   107ec:	01045783          	lhu	a5,16(s0)
   107f0:	000a3903          	ld	s2,0(s4)
   107f4:	0027f713          	andi	a4,a5,2
   107f8:	ff41                	bnez	a4,10790 <__sfvwrite_r+0x3e>
   107fa:	0017f713          	andi	a4,a5,1
   107fe:	eb35                	bnez	a4,10872 <__sfvwrite_r+0x120>
   10800:	4444                	lw	s1,12(s0)
   10802:	6008                	ld	a0,0(s0)
   10804:	80000b37          	lui	s6,0x80000
   10808:	ffeb4b93          	xori	s7,s6,-2
   1080c:	4c01                	li	s8,0
   1080e:	4981                	li	s3,0
   10810:	fffb4b13          	not	s6,s6
   10814:	8ca6                	mv	s9,s1
   10816:	04098863          	beqz	s3,10866 <__sfvwrite_r+0x114>
   1081a:	2007f713          	andi	a4,a5,512
   1081e:	12070a63          	beqz	a4,10952 <__sfvwrite_r+0x200>
   10822:	8d26                	mv	s10,s1
   10824:	1899f763          	bgeu	s3,s1,109b2 <__sfvwrite_r+0x260>
   10828:	8cce                	mv	s9,s3
   1082a:	8d4e                	mv	s10,s3
   1082c:	866a                	mv	a2,s10
   1082e:	85e2                	mv	a1,s8
   10830:	2e9000ef          	jal	ra,11318 <memmove>
   10834:	4458                	lw	a4,12(s0)
   10836:	601c                	ld	a5,0(s0)
   10838:	84ce                	mv	s1,s3
   1083a:	41970cbb          	subw	s9,a4,s9
   1083e:	97ea                	add	a5,a5,s10
   10840:	01942623          	sw	s9,12(s0)
   10844:	e01c                	sd	a5,0(s0)
   10846:	4981                	li	s3,0
   10848:	010a3603          	ld	a2,16(s4)
   1084c:	9c26                	add	s8,s8,s1
   1084e:	409604b3          	sub	s1,a2,s1
   10852:	009a3823          	sd	s1,16(s4)
   10856:	ccbd                	beqz	s1,108d4 <__sfvwrite_r+0x182>
   10858:	4444                	lw	s1,12(s0)
   1085a:	6008                	ld	a0,0(s0)
   1085c:	01045783          	lhu	a5,16(s0)
   10860:	8ca6                	mv	s9,s1
   10862:	fa099ce3          	bnez	s3,1081a <__sfvwrite_r+0xc8>
   10866:	00093c03          	ld	s8,0(s2)
   1086a:	00893983          	ld	s3,8(s2)
   1086e:	0941                	addi	s2,s2,16
   10870:	b755                	j	10814 <__sfvwrite_r+0xc2>
   10872:	4981                	li	s3,0
   10874:	4501                	li	a0,0
   10876:	4c81                	li	s9,0
   10878:	4c01                	li	s8,0
   1087a:	080c0b63          	beqz	s8,10910 <__sfvwrite_r+0x1be>
   1087e:	c145                	beqz	a0,1091e <__sfvwrite_r+0x1cc>
   10880:	8bce                	mv	s7,s3
   10882:	013c7363          	bgeu	s8,s3,10888 <__sfvwrite_r+0x136>
   10886:	8be2                	mv	s7,s8
   10888:	6008                	ld	a0,0(s0)
   1088a:	6c1c                	ld	a5,24(s0)
   1088c:	5014                	lw	a3,32(s0)
   1088e:	84de                	mv	s1,s7
   10890:	00a7f763          	bgeu	a5,a0,1089e <__sfvwrite_r+0x14c>
   10894:	445c                	lw	a5,12(s0)
   10896:	00d78b3b          	addw	s6,a5,a3
   1089a:	097b4d63          	blt	s6,s7,10934 <__sfvwrite_r+0x1e2>
   1089e:	18dbc463          	blt	s7,a3,10a26 <__sfvwrite_r+0x2d4>
   108a2:	603c                	ld	a5,64(s0)
   108a4:	780c                	ld	a1,48(s0)
   108a6:	8666                	mv	a2,s9
   108a8:	8556                	mv	a0,s5
   108aa:	9782                	jalr	a5
   108ac:	84aa                	mv	s1,a0
   108ae:	04a05763          	blez	a0,108fc <__sfvwrite_r+0x1aa>
   108b2:	0005079b          	sext.w	a5,a0
   108b6:	40f989bb          	subw	s3,s3,a5
   108ba:	4505                	li	a0,1
   108bc:	02098b63          	beqz	s3,108f2 <__sfvwrite_r+0x1a0>
   108c0:	010a3783          	ld	a5,16(s4)
   108c4:	9ca6                	add	s9,s9,s1
   108c6:	409c0c33          	sub	s8,s8,s1
   108ca:	409784b3          	sub	s1,a5,s1
   108ce:	009a3823          	sd	s1,16(s4)
   108d2:	f4c5                	bnez	s1,1087a <__sfvwrite_r+0x128>
   108d4:	4501                	li	a0,0
   108d6:	60e6                	ld	ra,88(sp)
   108d8:	6446                	ld	s0,80(sp)
   108da:	64a6                	ld	s1,72(sp)
   108dc:	6906                	ld	s2,64(sp)
   108de:	79e2                	ld	s3,56(sp)
   108e0:	7a42                	ld	s4,48(sp)
   108e2:	7aa2                	ld	s5,40(sp)
   108e4:	7b02                	ld	s6,32(sp)
   108e6:	6be2                	ld	s7,24(sp)
   108e8:	6c42                	ld	s8,16(sp)
   108ea:	6ca2                	ld	s9,8(sp)
   108ec:	6d02                	ld	s10,0(sp)
   108ee:	6125                	addi	sp,sp,96
   108f0:	8082                	ret
   108f2:	85a2                	mv	a1,s0
   108f4:	8556                	mv	a0,s5
   108f6:	480010ef          	jal	ra,11d76 <_fflush_r>
   108fa:	d179                	beqz	a0,108c0 <__sfvwrite_r+0x16e>
   108fc:	01041783          	lh	a5,16(s0)
   10900:	0407e793          	ori	a5,a5,64
   10904:	00f41823          	sh	a5,16(s0)
   10908:	557d                	li	a0,-1
   1090a:	b7f1                	j	108d6 <__sfvwrite_r+0x184>
   1090c:	4501                	li	a0,0
   1090e:	8082                	ret
   10910:	00893c03          	ld	s8,8(s2)
   10914:	00093c83          	ld	s9,0(s2)
   10918:	0941                	addi	s2,s2,16
   1091a:	fe0c0be3          	beqz	s8,10910 <__sfvwrite_r+0x1be>
   1091e:	8662                	mv	a2,s8
   10920:	45a9                	li	a1,10
   10922:	8566                	mv	a0,s9
   10924:	07f000ef          	jal	ra,111a2 <memchr>
   10928:	12050f63          	beqz	a0,10a66 <__sfvwrite_r+0x314>
   1092c:	0505                	addi	a0,a0,1
   1092e:	419509bb          	subw	s3,a0,s9
   10932:	b7b9                	j	10880 <__sfvwrite_r+0x12e>
   10934:	85e6                	mv	a1,s9
   10936:	865a                	mv	a2,s6
   10938:	1e1000ef          	jal	ra,11318 <memmove>
   1093c:	601c                	ld	a5,0(s0)
   1093e:	85a2                	mv	a1,s0
   10940:	8556                	mv	a0,s5
   10942:	97da                	add	a5,a5,s6
   10944:	e01c                	sd	a5,0(s0)
   10946:	430010ef          	jal	ra,11d76 <_fflush_r>
   1094a:	f94d                	bnez	a0,108fc <__sfvwrite_r+0x1aa>
   1094c:	87da                	mv	a5,s6
   1094e:	84da                	mv	s1,s6
   10950:	b79d                	j	108b6 <__sfvwrite_r+0x164>
   10952:	6c1c                	ld	a5,24(s0)
   10954:	02a7e863          	bltu	a5,a0,10984 <__sfvwrite_r+0x232>
   10958:	501c                	lw	a5,32(s0)
   1095a:	02f9e563          	bltu	s3,a5,10984 <__sfvwrite_r+0x232>
   1095e:	86ce                	mv	a3,s3
   10960:	013bf363          	bgeu	s7,s3,10966 <__sfvwrite_r+0x214>
   10964:	86da                	mv	a3,s6
   10966:	02f6c6bb          	divw	a3,a3,a5
   1096a:	6038                	ld	a4,64(s0)
   1096c:	780c                	ld	a1,48(s0)
   1096e:	8662                	mv	a2,s8
   10970:	8556                	mv	a0,s5
   10972:	02f686bb          	mulw	a3,a3,a5
   10976:	9702                	jalr	a4
   10978:	84aa                	mv	s1,a0
   1097a:	f8a051e3          	blez	a0,108fc <__sfvwrite_r+0x1aa>
   1097e:	409989b3          	sub	s3,s3,s1
   10982:	b5d9                	j	10848 <__sfvwrite_r+0xf6>
   10984:	0099f363          	bgeu	s3,s1,1098a <__sfvwrite_r+0x238>
   10988:	84ce                	mv	s1,s3
   1098a:	8626                	mv	a2,s1
   1098c:	85e2                	mv	a1,s8
   1098e:	18b000ef          	jal	ra,11318 <memmove>
   10992:	445c                	lw	a5,12(s0)
   10994:	6018                	ld	a4,0(s0)
   10996:	409786bb          	subw	a3,a5,s1
   1099a:	9726                	add	a4,a4,s1
   1099c:	c454                	sw	a3,12(s0)
   1099e:	e018                	sd	a4,0(s0)
   109a0:	fef9                	bnez	a3,1097e <__sfvwrite_r+0x22c>
   109a2:	85a2                	mv	a1,s0
   109a4:	8556                	mv	a0,s5
   109a6:	3d0010ef          	jal	ra,11d76 <_fflush_r>
   109aa:	f929                	bnez	a0,108fc <__sfvwrite_r+0x1aa>
   109ac:	409989b3          	sub	s3,s3,s1
   109b0:	bd61                	j	10848 <__sfvwrite_r+0xf6>
   109b2:	4807f713          	andi	a4,a5,1152
   109b6:	e6070be3          	beqz	a4,1082c <__sfvwrite_r+0xda>
   109ba:	5004                	lw	s1,32(s0)
   109bc:	6c0c                	ld	a1,24(s0)
   109be:	00198713          	addi	a4,s3,1
   109c2:	0014969b          	slliw	a3,s1,0x1
   109c6:	9ea5                	addw	a3,a3,s1
   109c8:	8d0d                	sub	a0,a0,a1
   109ca:	01f6d49b          	srliw	s1,a3,0x1f
   109ce:	00050d1b          	sext.w	s10,a0
   109d2:	9cb5                	addw	s1,s1,a3
   109d4:	4014d49b          	sraiw	s1,s1,0x1
   109d8:	976a                	add	a4,a4,s10
   109da:	00e4f563          	bgeu	s1,a4,109e4 <__sfvwrite_r+0x292>
   109de:	0019849b          	addiw	s1,s3,1
   109e2:	9ca9                	addw	s1,s1,a0
   109e4:	4007f793          	andi	a5,a5,1024
   109e8:	cfa9                	beqz	a5,10a42 <__sfvwrite_r+0x2f0>
   109ea:	85a6                	mv	a1,s1
   109ec:	8556                	mv	a0,s5
   109ee:	19a000ef          	jal	ra,10b88 <_malloc_r>
   109f2:	8caa                	mv	s9,a0
   109f4:	cd25                	beqz	a0,10a6c <__sfvwrite_r+0x31a>
   109f6:	6c0c                	ld	a1,24(s0)
   109f8:	866a                	mv	a2,s10
   109fa:	037000ef          	jal	ra,11230 <memcpy>
   109fe:	01045783          	lhu	a5,16(s0)
   10a02:	b7f7f793          	andi	a5,a5,-1153
   10a06:	0807e793          	ori	a5,a5,128
   10a0a:	00f41823          	sh	a5,16(s0)
   10a0e:	01ac8533          	add	a0,s9,s10
   10a12:	41a487bb          	subw	a5,s1,s10
   10a16:	01943c23          	sd	s9,24(s0)
   10a1a:	e008                	sd	a0,0(s0)
   10a1c:	d004                	sw	s1,32(s0)
   10a1e:	8cce                	mv	s9,s3
   10a20:	c45c                	sw	a5,12(s0)
   10a22:	8d4e                	mv	s10,s3
   10a24:	b521                	j	1082c <__sfvwrite_r+0xda>
   10a26:	865e                	mv	a2,s7
   10a28:	85e6                	mv	a1,s9
   10a2a:	0ef000ef          	jal	ra,11318 <memmove>
   10a2e:	4454                	lw	a3,12(s0)
   10a30:	6018                	ld	a4,0(s0)
   10a32:	000b879b          	sext.w	a5,s7
   10a36:	417686bb          	subw	a3,a3,s7
   10a3a:	975e                	add	a4,a4,s7
   10a3c:	c454                	sw	a3,12(s0)
   10a3e:	e018                	sd	a4,0(s0)
   10a40:	bd9d                	j	108b6 <__sfvwrite_r+0x164>
   10a42:	8626                	mv	a2,s1
   10a44:	8556                	mv	a0,s5
   10a46:	1ad000ef          	jal	ra,113f2 <_realloc_r>
   10a4a:	8caa                	mv	s9,a0
   10a4c:	f169                	bnez	a0,10a0e <__sfvwrite_r+0x2bc>
   10a4e:	6c0c                	ld	a1,24(s0)
   10a50:	8556                	mv	a0,s5
   10a52:	476010ef          	jal	ra,11ec8 <_free_r>
   10a56:	01041783          	lh	a5,16(s0)
   10a5a:	4731                	li	a4,12
   10a5c:	00eaa023          	sw	a4,0(s5)
   10a60:	f7f7f793          	andi	a5,a5,-129
   10a64:	bd71                	j	10900 <__sfvwrite_r+0x1ae>
   10a66:	001c099b          	addiw	s3,s8,1
   10a6a:	bd19                	j	10880 <__sfvwrite_r+0x12e>
   10a6c:	4731                	li	a4,12
   10a6e:	01041783          	lh	a5,16(s0)
   10a72:	00eaa023          	sw	a4,0(s5)
   10a76:	b569                	j	10900 <__sfvwrite_r+0x1ae>
   10a78:	557d                	li	a0,-1
   10a7a:	bdb1                	j	108d6 <__sfvwrite_r+0x184>

0000000000010a7c <_fwalk>:
   10a7c:	715d                	addi	sp,sp,-80
   10a7e:	f84a                	sd	s2,48(sp)
   10a80:	f44e                	sd	s3,40(sp)
   10a82:	f052                	sd	s4,32(sp)
   10a84:	ec56                	sd	s5,24(sp)
   10a86:	e85a                	sd	s6,16(sp)
   10a88:	e45e                	sd	s7,8(sp)
   10a8a:	e486                	sd	ra,72(sp)
   10a8c:	e0a2                	sd	s0,64(sp)
   10a8e:	fc26                	sd	s1,56(sp)
   10a90:	8a2e                	mv	s4,a1
   10a92:	52050913          	addi	s2,a0,1312
   10a96:	4b01                	li	s6,0
   10a98:	0b000a93          	li	s5,176
   10a9c:	4b85                	li	s7,1
   10a9e:	59fd                	li	s3,-1
   10aa0:	00892783          	lw	a5,8(s2)
   10aa4:	01093403          	ld	s0,16(s2)
   10aa8:	02f05b63          	blez	a5,10ade <_fwalk+0x62>
   10aac:	fff7849b          	addiw	s1,a5,-1
   10ab0:	1482                	slli	s1,s1,0x20
   10ab2:	9081                	srli	s1,s1,0x20
   10ab4:	0485                	addi	s1,s1,1
   10ab6:	035484b3          	mul	s1,s1,s5
   10aba:	94a2                	add	s1,s1,s0
   10abc:	01045783          	lhu	a5,16(s0)
   10ac0:	00fbfb63          	bgeu	s7,a5,10ad6 <_fwalk+0x5a>
   10ac4:	01241783          	lh	a5,18(s0)
   10ac8:	8522                	mv	a0,s0
   10aca:	01378663          	beq	a5,s3,10ad6 <_fwalk+0x5a>
   10ace:	9a02                	jalr	s4
   10ad0:	01656b33          	or	s6,a0,s6
   10ad4:	2b01                	sext.w	s6,s6
   10ad6:	0b040413          	addi	s0,s0,176
   10ada:	fe8491e3          	bne	s1,s0,10abc <_fwalk+0x40>
   10ade:	00093903          	ld	s2,0(s2)
   10ae2:	fa091fe3          	bnez	s2,10aa0 <_fwalk+0x24>
   10ae6:	60a6                	ld	ra,72(sp)
   10ae8:	6406                	ld	s0,64(sp)
   10aea:	74e2                	ld	s1,56(sp)
   10aec:	7942                	ld	s2,48(sp)
   10aee:	79a2                	ld	s3,40(sp)
   10af0:	7a02                	ld	s4,32(sp)
   10af2:	6ae2                	ld	s5,24(sp)
   10af4:	6ba2                	ld	s7,8(sp)
   10af6:	855a                	mv	a0,s6
   10af8:	6b42                	ld	s6,16(sp)
   10afa:	6161                	addi	sp,sp,80
   10afc:	8082                	ret

0000000000010afe <_fwalk_reent>:
   10afe:	715d                	addi	sp,sp,-80
   10b00:	f84a                	sd	s2,48(sp)
   10b02:	f44e                	sd	s3,40(sp)
   10b04:	f052                	sd	s4,32(sp)
   10b06:	ec56                	sd	s5,24(sp)
   10b08:	e85a                	sd	s6,16(sp)
   10b0a:	e45e                	sd	s7,8(sp)
   10b0c:	e062                	sd	s8,0(sp)
   10b0e:	e486                	sd	ra,72(sp)
   10b10:	e0a2                	sd	s0,64(sp)
   10b12:	fc26                	sd	s1,56(sp)
   10b14:	8c2a                	mv	s8,a0
   10b16:	8a2e                	mv	s4,a1
   10b18:	52050913          	addi	s2,a0,1312
   10b1c:	4b01                	li	s6,0
   10b1e:	0b000a93          	li	s5,176
   10b22:	4b85                	li	s7,1
   10b24:	59fd                	li	s3,-1
   10b26:	00892783          	lw	a5,8(s2)
   10b2a:	01093403          	ld	s0,16(s2)
   10b2e:	02f05c63          	blez	a5,10b66 <_fwalk_reent+0x68>
   10b32:	fff7849b          	addiw	s1,a5,-1
   10b36:	1482                	slli	s1,s1,0x20
   10b38:	9081                	srli	s1,s1,0x20
   10b3a:	0485                	addi	s1,s1,1
   10b3c:	035484b3          	mul	s1,s1,s5
   10b40:	94a2                	add	s1,s1,s0
   10b42:	01045783          	lhu	a5,16(s0)
   10b46:	00fbfc63          	bgeu	s7,a5,10b5e <_fwalk_reent+0x60>
   10b4a:	01241783          	lh	a5,18(s0)
   10b4e:	85a2                	mv	a1,s0
   10b50:	8562                	mv	a0,s8
   10b52:	01378663          	beq	a5,s3,10b5e <_fwalk_reent+0x60>
   10b56:	9a02                	jalr	s4
   10b58:	01656b33          	or	s6,a0,s6
   10b5c:	2b01                	sext.w	s6,s6
   10b5e:	0b040413          	addi	s0,s0,176
   10b62:	fe8490e3          	bne	s1,s0,10b42 <_fwalk_reent+0x44>
   10b66:	00093903          	ld	s2,0(s2)
   10b6a:	fa091ee3          	bnez	s2,10b26 <_fwalk_reent+0x28>
   10b6e:	60a6                	ld	ra,72(sp)
   10b70:	6406                	ld	s0,64(sp)
   10b72:	74e2                	ld	s1,56(sp)
   10b74:	7942                	ld	s2,48(sp)
   10b76:	79a2                	ld	s3,40(sp)
   10b78:	7a02                	ld	s4,32(sp)
   10b7a:	6ae2                	ld	s5,24(sp)
   10b7c:	6ba2                	ld	s7,8(sp)
   10b7e:	6c02                	ld	s8,0(sp)
   10b80:	855a                	mv	a0,s6
   10b82:	6b42                	ld	s6,16(sp)
   10b84:	6161                	addi	sp,sp,80
   10b86:	8082                	ret

0000000000010b88 <_malloc_r>:
   10b88:	711d                	addi	sp,sp,-96
   10b8a:	e4a6                	sd	s1,72(sp)
   10b8c:	e0ca                	sd	s2,64(sp)
   10b8e:	ec86                	sd	ra,88(sp)
   10b90:	e8a2                	sd	s0,80(sp)
   10b92:	fc4e                	sd	s3,56(sp)
   10b94:	f852                	sd	s4,48(sp)
   10b96:	f456                	sd	s5,40(sp)
   10b98:	f05a                	sd	s6,32(sp)
   10b9a:	ec5e                	sd	s7,24(sp)
   10b9c:	e862                	sd	s8,16(sp)
   10b9e:	e466                	sd	s9,8(sp)
   10ba0:	01758493          	addi	s1,a1,23
   10ba4:	02e00793          	li	a5,46
   10ba8:	892a                	mv	s2,a0
   10baa:	0497e763          	bltu	a5,s1,10bf8 <_malloc_r+0x70>
   10bae:	02000793          	li	a5,32
   10bb2:	1eb7e163          	bltu	a5,a1,10d94 <_malloc_r+0x20c>
   10bb6:	039000ef          	jal	ra,113ee <__malloc_lock>
   10bba:	02000493          	li	s1,32
   10bbe:	05000793          	li	a5,80
   10bc2:	4611                	li	a2,4
   10bc4:	69d1                	lui	s3,0x14
   10bc6:	e0898993          	addi	s3,s3,-504 # 13e08 <__malloc_av_>
   10bca:	97ce                	add	a5,a5,s3
   10bcc:	6780                	ld	s0,8(a5)
   10bce:	ff078713          	addi	a4,a5,-16
   10bd2:	1ee40263          	beq	s0,a4,10db6 <_malloc_r+0x22e>
   10bd6:	641c                	ld	a5,8(s0)
   10bd8:	6c14                	ld	a3,24(s0)
   10bda:	6810                	ld	a2,16(s0)
   10bdc:	9bf1                	andi	a5,a5,-4
   10bde:	97a2                	add	a5,a5,s0
   10be0:	6798                	ld	a4,8(a5)
   10be2:	ee14                	sd	a3,24(a2)
   10be4:	ea90                	sd	a2,16(a3)
   10be6:	00176713          	ori	a4,a4,1
   10bea:	854a                	mv	a0,s2
   10bec:	e798                	sd	a4,8(a5)
   10bee:	003000ef          	jal	ra,113f0 <__malloc_unlock>
   10bf2:	01040513          	addi	a0,s0,16
   10bf6:	a25d                	j	10d9c <_malloc_r+0x214>
   10bf8:	800007b7          	lui	a5,0x80000
   10bfc:	98c1                	andi	s1,s1,-16
   10bfe:	fff7c793          	not	a5,a5
   10c02:	1897e963          	bltu	a5,s1,10d94 <_malloc_r+0x20c>
   10c06:	18b4e763          	bltu	s1,a1,10d94 <_malloc_r+0x20c>
   10c0a:	7e4000ef          	jal	ra,113ee <__malloc_lock>
   10c0e:	1f700793          	li	a5,503
   10c12:	3a97f063          	bgeu	a5,s1,10fb2 <_malloc_r+0x42a>
   10c16:	0094d793          	srli	a5,s1,0x9
   10c1a:	26078c63          	beqz	a5,10e92 <_malloc_r+0x30a>
   10c1e:	4711                	li	a4,4
   10c20:	30f76063          	bltu	a4,a5,10f20 <_malloc_r+0x398>
   10c24:	0064d793          	srli	a5,s1,0x6
   10c28:	0397861b          	addiw	a2,a5,57
   10c2c:	0016169b          	slliw	a3,a2,0x1
   10c30:	0387851b          	addiw	a0,a5,56
   10c34:	068e                	slli	a3,a3,0x3
   10c36:	69d1                	lui	s3,0x14
   10c38:	e0898993          	addi	s3,s3,-504 # 13e08 <__malloc_av_>
   10c3c:	96ce                	add	a3,a3,s3
   10c3e:	6680                	ld	s0,8(a3)
   10c40:	16c1                	addi	a3,a3,-16
   10c42:	16868e63          	beq	a3,s0,10dbe <_malloc_r+0x236>
   10c46:	45fd                	li	a1,31
   10c48:	a031                	j	10c54 <_malloc_r+0xcc>
   10c4a:	28075563          	bgez	a4,10ed4 <_malloc_r+0x34c>
   10c4e:	6c00                	ld	s0,24(s0)
   10c50:	16868763          	beq	a3,s0,10dbe <_malloc_r+0x236>
   10c54:	641c                	ld	a5,8(s0)
   10c56:	9bf1                	andi	a5,a5,-4
   10c58:	40978733          	sub	a4,a5,s1
   10c5c:	fee5d7e3          	bge	a1,a4,10c4a <_malloc_r+0xc2>
   10c60:	0209b403          	ld	s0,32(s3)
   10c64:	6851                	lui	a6,0x14
   10c66:	e1880813          	addi	a6,a6,-488 # 13e18 <__malloc_av_+0x10>
   10c6a:	862a                	mv	a2,a0
   10c6c:	17041063          	bne	s0,a6,10dcc <_malloc_r+0x244>
   10c70:	0089b783          	ld	a5,8(s3)
   10c74:	4026571b          	sraiw	a4,a2,0x2
   10c78:	4585                	li	a1,1
   10c7a:	00e595b3          	sll	a1,a1,a4
   10c7e:	1ab7f763          	bgeu	a5,a1,10e2c <_malloc_r+0x2a4>
   10c82:	0109b403          	ld	s0,16(s3)
   10c86:	00843a03          	ld	s4,8(s0)
   10c8a:	ffca7a93          	andi	s5,s4,-4
   10c8e:	009ae763          	bltu	s5,s1,10c9c <_malloc_r+0x114>
   10c92:	409a87b3          	sub	a5,s5,s1
   10c96:	477d                	li	a4,31
   10c98:	20f74f63          	blt	a4,a5,10eb6 <_malloc_r+0x32e>
   10c9c:	7881ba03          	ld	s4,1928(gp) # 14668 <__malloc_top_pad>
   10ca0:	7681b703          	ld	a4,1896(gp) # 14648 <__malloc_sbrk_base>
   10ca4:	57fd                	li	a5,-1
   10ca6:	01540c33          	add	s8,s0,s5
   10caa:	9a26                	add	s4,s4,s1
   10cac:	3af70163          	beq	a4,a5,1104e <_malloc_r+0x4c6>
   10cb0:	6785                	lui	a5,0x1
   10cb2:	07fd                	addi	a5,a5,31
   10cb4:	9a3e                	add	s4,s4,a5
   10cb6:	77fd                	lui	a5,0xfffff
   10cb8:	00fa7a33          	and	s4,s4,a5
   10cbc:	85d2                	mv	a1,s4
   10cbe:	854a                	mv	a0,s2
   10cc0:	339000ef          	jal	ra,117f8 <_sbrk_r>
   10cc4:	57fd                	li	a5,-1
   10cc6:	8b2a                	mv	s6,a0
   10cc8:	30f50a63          	beq	a0,a5,10fdc <_malloc_r+0x454>
   10ccc:	31856663          	bltu	a0,s8,10fd8 <_malloc_r+0x450>
   10cd0:	7d818b93          	addi	s7,gp,2008 # 146b8 <__malloc_current_mallinfo>
   10cd4:	000ba703          	lw	a4,0(s7)
   10cd8:	014707bb          	addw	a5,a4,s4
   10cdc:	00fba023          	sw	a5,0(s7)
   10ce0:	86be                	mv	a3,a5
   10ce2:	3eac0f63          	beq	s8,a0,110e0 <_malloc_r+0x558>
   10ce6:	7681b703          	ld	a4,1896(gp) # 14648 <__malloc_sbrk_base>
   10cea:	57fd                	li	a5,-1
   10cec:	40f70663          	beq	a4,a5,110f8 <_malloc_r+0x570>
   10cf0:	418b07b3          	sub	a5,s6,s8
   10cf4:	9fb5                	addw	a5,a5,a3
   10cf6:	00fba023          	sw	a5,0(s7)
   10cfa:	00fb7c13          	andi	s8,s6,15
   10cfe:	360c0663          	beqz	s8,1106a <_malloc_r+0x4e2>
   10d02:	6705                	lui	a4,0x1
   10d04:	418b0b33          	sub	s6,s6,s8
   10d08:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   10d0c:	0b41                	addi	s6,s6,16
   10d0e:	418787b3          	sub	a5,a5,s8
   10d12:	014b0cb3          	add	s9,s6,s4
   10d16:	41978a33          	sub	s4,a5,s9
   10d1a:	177d                	addi	a4,a4,-1
   10d1c:	00ea7a33          	and	s4,s4,a4
   10d20:	85d2                	mv	a1,s4
   10d22:	854a                	mv	a0,s2
   10d24:	2d5000ef          	jal	ra,117f8 <_sbrk_r>
   10d28:	57fd                	li	a5,-1
   10d2a:	40f50c63          	beq	a0,a5,11142 <_malloc_r+0x5ba>
   10d2e:	41650533          	sub	a0,a0,s6
   10d32:	000a071b          	sext.w	a4,s4
   10d36:	9a2a                	add	s4,s4,a0
   10d38:	000ba783          	lw	a5,0(s7)
   10d3c:	0169b823          	sd	s6,16(s3)
   10d40:	001a6a13          	ori	s4,s4,1
   10d44:	9fb9                	addw	a5,a5,a4
   10d46:	00fba023          	sw	a5,0(s7)
   10d4a:	014b3423          	sd	s4,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffeb928>
   10d4e:	3b340863          	beq	s0,s3,110fe <_malloc_r+0x576>
   10d52:	467d                	li	a2,31
   10d54:	3b567763          	bgeu	a2,s5,11102 <_malloc_r+0x57a>
   10d58:	6414                	ld	a3,8(s0)
   10d5a:	fe8a8713          	addi	a4,s5,-24
   10d5e:	9b41                	andi	a4,a4,-16
   10d60:	8a85                	andi	a3,a3,1
   10d62:	8ed9                	or	a3,a3,a4
   10d64:	e414                	sd	a3,8(s0)
   10d66:	45a5                	li	a1,9
   10d68:	00e406b3          	add	a3,s0,a4
   10d6c:	e68c                	sd	a1,8(a3)
   10d6e:	ea8c                	sd	a1,16(a3)
   10d70:	3ee66063          	bltu	a2,a4,11150 <_malloc_r+0x5c8>
   10d74:	008b3a03          	ld	s4,8(s6)
   10d78:	845a                	mv	s0,s6
   10d7a:	7801b683          	ld	a3,1920(gp) # 14660 <__malloc_max_sbrked_mem>
   10d7e:	00f6f463          	bgeu	a3,a5,10d86 <_malloc_r+0x1fe>
   10d82:	78f1b023          	sd	a5,1920(gp) # 14660 <__malloc_max_sbrked_mem>
   10d86:	7781b683          	ld	a3,1912(gp) # 14658 <__malloc_max_total_mem>
   10d8a:	24f6fd63          	bgeu	a3,a5,10fe4 <_malloc_r+0x45c>
   10d8e:	76f1bc23          	sd	a5,1912(gp) # 14658 <__malloc_max_total_mem>
   10d92:	ac89                	j	10fe4 <_malloc_r+0x45c>
   10d94:	47b1                	li	a5,12
   10d96:	00f92023          	sw	a5,0(s2)
   10d9a:	4501                	li	a0,0
   10d9c:	60e6                	ld	ra,88(sp)
   10d9e:	6446                	ld	s0,80(sp)
   10da0:	64a6                	ld	s1,72(sp)
   10da2:	6906                	ld	s2,64(sp)
   10da4:	79e2                	ld	s3,56(sp)
   10da6:	7a42                	ld	s4,48(sp)
   10da8:	7aa2                	ld	s5,40(sp)
   10daa:	7b02                	ld	s6,32(sp)
   10dac:	6be2                	ld	s7,24(sp)
   10dae:	6c42                	ld	s8,16(sp)
   10db0:	6ca2                	ld	s9,8(sp)
   10db2:	6125                	addi	sp,sp,96
   10db4:	8082                	ret
   10db6:	6f80                	ld	s0,24(a5)
   10db8:	2609                	addiw	a2,a2,2
   10dba:	e0879ee3          	bne	a5,s0,10bd6 <_malloc_r+0x4e>
   10dbe:	0209b403          	ld	s0,32(s3)
   10dc2:	6851                	lui	a6,0x14
   10dc4:	e1880813          	addi	a6,a6,-488 # 13e18 <__malloc_av_+0x10>
   10dc8:	eb0404e3          	beq	s0,a6,10c70 <_malloc_r+0xe8>
   10dcc:	641c                	ld	a5,8(s0)
   10dce:	46fd                	li	a3,31
   10dd0:	9bf1                	andi	a5,a5,-4
   10dd2:	40978733          	sub	a4,a5,s1
   10dd6:	1ae6c763          	blt	a3,a4,10f84 <_malloc_r+0x3fc>
   10dda:	0309b423          	sd	a6,40(s3)
   10dde:	0309b023          	sd	a6,32(s3)
   10de2:	0a075f63          	bgez	a4,10ea0 <_malloc_r+0x318>
   10de6:	1ff00713          	li	a4,511
   10dea:	0ef76863          	bltu	a4,a5,10eda <_malloc_r+0x352>
   10dee:	838d                	srli	a5,a5,0x3
   10df0:	0017871b          	addiw	a4,a5,1
   10df4:	0017171b          	slliw	a4,a4,0x1
   10df8:	070e                	slli	a4,a4,0x3
   10dfa:	0089b503          	ld	a0,8(s3)
   10dfe:	974e                	add	a4,a4,s3
   10e00:	630c                	ld	a1,0(a4)
   10e02:	4027d69b          	sraiw	a3,a5,0x2
   10e06:	4785                	li	a5,1
   10e08:	00d797b3          	sll	a5,a5,a3
   10e0c:	8fc9                	or	a5,a5,a0
   10e0e:	ff070693          	addi	a3,a4,-16
   10e12:	ec14                	sd	a3,24(s0)
   10e14:	e80c                	sd	a1,16(s0)
   10e16:	00f9b423          	sd	a5,8(s3)
   10e1a:	e300                	sd	s0,0(a4)
   10e1c:	ed80                	sd	s0,24(a1)
   10e1e:	4026571b          	sraiw	a4,a2,0x2
   10e22:	4585                	li	a1,1
   10e24:	00e595b3          	sll	a1,a1,a4
   10e28:	e4b7ede3          	bltu	a5,a1,10c82 <_malloc_r+0xfa>
   10e2c:	00f5f733          	and	a4,a1,a5
   10e30:	ef01                	bnez	a4,10e48 <_malloc_r+0x2c0>
   10e32:	0586                	slli	a1,a1,0x1
   10e34:	9a71                	andi	a2,a2,-4
   10e36:	00f5f733          	and	a4,a1,a5
   10e3a:	2611                	addiw	a2,a2,4
   10e3c:	e711                	bnez	a4,10e48 <_malloc_r+0x2c0>
   10e3e:	0586                	slli	a1,a1,0x1
   10e40:	00f5f733          	and	a4,a1,a5
   10e44:	2611                	addiw	a2,a2,4
   10e46:	df65                	beqz	a4,10e3e <_malloc_r+0x2b6>
   10e48:	48fd                	li	a7,31
   10e4a:	0016031b          	addiw	t1,a2,1
   10e4e:	0013131b          	slliw	t1,t1,0x1
   10e52:	030e                	slli	t1,t1,0x3
   10e54:	1341                	addi	t1,t1,-16
   10e56:	934e                	add	t1,t1,s3
   10e58:	851a                	mv	a0,t1
   10e5a:	6d1c                	ld	a5,24(a0)
   10e5c:	8e32                	mv	t3,a2
   10e5e:	0ef50263          	beq	a0,a5,10f42 <_malloc_r+0x3ba>
   10e62:	6798                	ld	a4,8(a5)
   10e64:	843e                	mv	s0,a5
   10e66:	6f9c                	ld	a5,24(a5)
   10e68:	9b71                	andi	a4,a4,-4
   10e6a:	409706b3          	sub	a3,a4,s1
   10e6e:	0ed8c163          	blt	a7,a3,10f50 <_malloc_r+0x3c8>
   10e72:	fe06c6e3          	bltz	a3,10e5e <_malloc_r+0x2d6>
   10e76:	9722                	add	a4,a4,s0
   10e78:	6714                	ld	a3,8(a4)
   10e7a:	6810                	ld	a2,16(s0)
   10e7c:	854a                	mv	a0,s2
   10e7e:	0016e693          	ori	a3,a3,1
   10e82:	e714                	sd	a3,8(a4)
   10e84:	ee1c                	sd	a5,24(a2)
   10e86:	eb90                	sd	a2,16(a5)
   10e88:	568000ef          	jal	ra,113f0 <__malloc_unlock>
   10e8c:	01040513          	addi	a0,s0,16
   10e90:	b731                	j	10d9c <_malloc_r+0x214>
   10e92:	40000693          	li	a3,1024
   10e96:	04000613          	li	a2,64
   10e9a:	03f00513          	li	a0,63
   10e9e:	bb61                	j	10c36 <_malloc_r+0xae>
   10ea0:	97a2                	add	a5,a5,s0
   10ea2:	6798                	ld	a4,8(a5)
   10ea4:	854a                	mv	a0,s2
   10ea6:	00176713          	ori	a4,a4,1
   10eaa:	e798                	sd	a4,8(a5)
   10eac:	544000ef          	jal	ra,113f0 <__malloc_unlock>
   10eb0:	01040513          	addi	a0,s0,16
   10eb4:	b5e5                	j	10d9c <_malloc_r+0x214>
   10eb6:	0014e713          	ori	a4,s1,1
   10eba:	e418                	sd	a4,8(s0)
   10ebc:	94a2                	add	s1,s1,s0
   10ebe:	0099b823          	sd	s1,16(s3)
   10ec2:	0017e793          	ori	a5,a5,1
   10ec6:	854a                	mv	a0,s2
   10ec8:	e49c                	sd	a5,8(s1)
   10eca:	526000ef          	jal	ra,113f0 <__malloc_unlock>
   10ece:	01040513          	addi	a0,s0,16
   10ed2:	b5e9                	j	10d9c <_malloc_r+0x214>
   10ed4:	6c14                	ld	a3,24(s0)
   10ed6:	6810                	ld	a2,16(s0)
   10ed8:	b319                	j	10bde <_malloc_r+0x56>
   10eda:	0097d713          	srli	a4,a5,0x9
   10ede:	4691                	li	a3,4
   10ee0:	0ee6f263          	bgeu	a3,a4,10fc4 <_malloc_r+0x43c>
   10ee4:	46d1                	li	a3,20
   10ee6:	1ae6e863          	bltu	a3,a4,11096 <_malloc_r+0x50e>
   10eea:	05c7059b          	addiw	a1,a4,92
   10eee:	0015959b          	slliw	a1,a1,0x1
   10ef2:	05b7069b          	addiw	a3,a4,91
   10ef6:	058e                	slli	a1,a1,0x3
   10ef8:	95ce                	add	a1,a1,s3
   10efa:	6198                	ld	a4,0(a1)
   10efc:	15c1                	addi	a1,a1,-16
   10efe:	14e58b63          	beq	a1,a4,11054 <_malloc_r+0x4cc>
   10f02:	6714                	ld	a3,8(a4)
   10f04:	9af1                	andi	a3,a3,-4
   10f06:	00d7f563          	bgeu	a5,a3,10f10 <_malloc_r+0x388>
   10f0a:	6b18                	ld	a4,16(a4)
   10f0c:	fee59be3          	bne	a1,a4,10f02 <_malloc_r+0x37a>
   10f10:	6f0c                	ld	a1,24(a4)
   10f12:	0089b783          	ld	a5,8(s3)
   10f16:	ec0c                	sd	a1,24(s0)
   10f18:	e818                	sd	a4,16(s0)
   10f1a:	e980                	sd	s0,16(a1)
   10f1c:	ef00                	sd	s0,24(a4)
   10f1e:	b701                	j	10e1e <_malloc_r+0x296>
   10f20:	4751                	li	a4,20
   10f22:	0cf77f63          	bgeu	a4,a5,11000 <_malloc_r+0x478>
   10f26:	05400713          	li	a4,84
   10f2a:	18f76463          	bltu	a4,a5,110b2 <_malloc_r+0x52a>
   10f2e:	00c4d793          	srli	a5,s1,0xc
   10f32:	06f7861b          	addiw	a2,a5,111
   10f36:	0016169b          	slliw	a3,a2,0x1
   10f3a:	06e7851b          	addiw	a0,a5,110
   10f3e:	068e                	slli	a3,a3,0x3
   10f40:	b9dd                	j	10c36 <_malloc_r+0xae>
   10f42:	2e05                	addiw	t3,t3,1
   10f44:	003e7793          	andi	a5,t3,3
   10f48:	0541                	addi	a0,a0,16
   10f4a:	cbe1                	beqz	a5,1101a <_malloc_r+0x492>
   10f4c:	6d1c                	ld	a5,24(a0)
   10f4e:	bf01                	j	10e5e <_malloc_r+0x2d6>
   10f50:	6810                	ld	a2,16(s0)
   10f52:	0014e593          	ori	a1,s1,1
   10f56:	e40c                	sd	a1,8(s0)
   10f58:	ee1c                	sd	a5,24(a2)
   10f5a:	eb90                	sd	a2,16(a5)
   10f5c:	94a2                	add	s1,s1,s0
   10f5e:	0299b423          	sd	s1,40(s3)
   10f62:	0299b023          	sd	s1,32(s3)
   10f66:	0016e793          	ori	a5,a3,1
   10f6a:	0104bc23          	sd	a6,24(s1)
   10f6e:	0104b823          	sd	a6,16(s1)
   10f72:	e49c                	sd	a5,8(s1)
   10f74:	9722                	add	a4,a4,s0
   10f76:	854a                	mv	a0,s2
   10f78:	e314                	sd	a3,0(a4)
   10f7a:	476000ef          	jal	ra,113f0 <__malloc_unlock>
   10f7e:	01040513          	addi	a0,s0,16
   10f82:	bd29                	j	10d9c <_malloc_r+0x214>
   10f84:	0014e693          	ori	a3,s1,1
   10f88:	e414                	sd	a3,8(s0)
   10f8a:	94a2                	add	s1,s1,s0
   10f8c:	0299b423          	sd	s1,40(s3)
   10f90:	0299b023          	sd	s1,32(s3)
   10f94:	00176693          	ori	a3,a4,1
   10f98:	0104bc23          	sd	a6,24(s1)
   10f9c:	0104b823          	sd	a6,16(s1)
   10fa0:	e494                	sd	a3,8(s1)
   10fa2:	97a2                	add	a5,a5,s0
   10fa4:	854a                	mv	a0,s2
   10fa6:	e398                	sd	a4,0(a5)
   10fa8:	448000ef          	jal	ra,113f0 <__malloc_unlock>
   10fac:	01040513          	addi	a0,s0,16
   10fb0:	b3f5                	j	10d9c <_malloc_r+0x214>
   10fb2:	0034d613          	srli	a2,s1,0x3
   10fb6:	0016079b          	addiw	a5,a2,1
   10fba:	0017979b          	slliw	a5,a5,0x1
   10fbe:	2601                	sext.w	a2,a2
   10fc0:	078e                	slli	a5,a5,0x3
   10fc2:	b109                	j	10bc4 <_malloc_r+0x3c>
   10fc4:	0067d713          	srli	a4,a5,0x6
   10fc8:	0397059b          	addiw	a1,a4,57
   10fcc:	0015959b          	slliw	a1,a1,0x1
   10fd0:	0387069b          	addiw	a3,a4,56
   10fd4:	058e                	slli	a1,a1,0x3
   10fd6:	b70d                	j	10ef8 <_malloc_r+0x370>
   10fd8:	0f340b63          	beq	s0,s3,110ce <_malloc_r+0x546>
   10fdc:	0109b403          	ld	s0,16(s3)
   10fe0:	00843a03          	ld	s4,8(s0)
   10fe4:	ffca7a13          	andi	s4,s4,-4
   10fe8:	409a07b3          	sub	a5,s4,s1
   10fec:	009a6563          	bltu	s4,s1,10ff6 <_malloc_r+0x46e>
   10ff0:	477d                	li	a4,31
   10ff2:	ecf742e3          	blt	a4,a5,10eb6 <_malloc_r+0x32e>
   10ff6:	854a                	mv	a0,s2
   10ff8:	3f8000ef          	jal	ra,113f0 <__malloc_unlock>
   10ffc:	4501                	li	a0,0
   10ffe:	bb79                	j	10d9c <_malloc_r+0x214>
   11000:	05c7861b          	addiw	a2,a5,92
   11004:	0016169b          	slliw	a3,a2,0x1
   11008:	05b7851b          	addiw	a0,a5,91
   1100c:	068e                	slli	a3,a3,0x3
   1100e:	b125                	j	10c36 <_malloc_r+0xae>
   11010:	01033783          	ld	a5,16(t1) # 10154 <main+0x4>
   11014:	367d                	addiw	a2,a2,-1
   11016:	18679363          	bne	a5,t1,1119c <_malloc_r+0x614>
   1101a:	00367793          	andi	a5,a2,3
   1101e:	1341                	addi	t1,t1,-16
   11020:	fbe5                	bnez	a5,11010 <_malloc_r+0x488>
   11022:	0089b703          	ld	a4,8(s3)
   11026:	fff5c793          	not	a5,a1
   1102a:	8ff9                	and	a5,a5,a4
   1102c:	00f9b423          	sd	a5,8(s3)
   11030:	0586                	slli	a1,a1,0x1
   11032:	c4b7e8e3          	bltu	a5,a1,10c82 <_malloc_r+0xfa>
   11036:	c40586e3          	beqz	a1,10c82 <_malloc_r+0xfa>
   1103a:	00f5f733          	and	a4,a1,a5
   1103e:	e711                	bnez	a4,1104a <_malloc_r+0x4c2>
   11040:	0586                	slli	a1,a1,0x1
   11042:	00f5f733          	and	a4,a1,a5
   11046:	2e11                	addiw	t3,t3,4
   11048:	df65                	beqz	a4,11040 <_malloc_r+0x4b8>
   1104a:	8672                	mv	a2,t3
   1104c:	bbfd                	j	10e4a <_malloc_r+0x2c2>
   1104e:	020a0a13          	addi	s4,s4,32
   11052:	b1ad                	j	10cbc <_malloc_r+0x134>
   11054:	0089b503          	ld	a0,8(s3)
   11058:	4026d69b          	sraiw	a3,a3,0x2
   1105c:	4785                	li	a5,1
   1105e:	00d797b3          	sll	a5,a5,a3
   11062:	8fc9                	or	a5,a5,a0
   11064:	00f9b423          	sd	a5,8(s3)
   11068:	b57d                	j	10f16 <_malloc_r+0x38e>
   1106a:	014b0c33          	add	s8,s6,s4
   1106e:	41800c33          	neg	s8,s8
   11072:	1c52                	slli	s8,s8,0x34
   11074:	034c5c13          	srli	s8,s8,0x34
   11078:	85e2                	mv	a1,s8
   1107a:	854a                	mv	a0,s2
   1107c:	77c000ef          	jal	ra,117f8 <_sbrk_r>
   11080:	57fd                	li	a5,-1
   11082:	4701                	li	a4,0
   11084:	caf50ae3          	beq	a0,a5,10d38 <_malloc_r+0x1b0>
   11088:	41650533          	sub	a0,a0,s6
   1108c:	000c071b          	sext.w	a4,s8
   11090:	01850a33          	add	s4,a0,s8
   11094:	b155                	j	10d38 <_malloc_r+0x1b0>
   11096:	05400693          	li	a3,84
   1109a:	06e6e863          	bltu	a3,a4,1110a <_malloc_r+0x582>
   1109e:	00c7d713          	srli	a4,a5,0xc
   110a2:	06f7059b          	addiw	a1,a4,111
   110a6:	0015959b          	slliw	a1,a1,0x1
   110aa:	06e7069b          	addiw	a3,a4,110
   110ae:	058e                	slli	a1,a1,0x3
   110b0:	b5a1                	j	10ef8 <_malloc_r+0x370>
   110b2:	15400713          	li	a4,340
   110b6:	06f76863          	bltu	a4,a5,11126 <_malloc_r+0x59e>
   110ba:	00f4d793          	srli	a5,s1,0xf
   110be:	0787861b          	addiw	a2,a5,120
   110c2:	0016169b          	slliw	a3,a2,0x1
   110c6:	0777851b          	addiw	a0,a5,119
   110ca:	068e                	slli	a3,a3,0x3
   110cc:	b6ad                	j	10c36 <_malloc_r+0xae>
   110ce:	7d818b93          	addi	s7,gp,2008 # 146b8 <__malloc_current_mallinfo>
   110d2:	000ba783          	lw	a5,0(s7)
   110d6:	014786bb          	addw	a3,a5,s4
   110da:	00dba023          	sw	a3,0(s7)
   110de:	b121                	j	10ce6 <_malloc_r+0x15e>
   110e0:	034c1713          	slli	a4,s8,0x34
   110e4:	c00711e3          	bnez	a4,10ce6 <_malloc_r+0x15e>
   110e8:	0109b403          	ld	s0,16(s3)
   110ec:	9a56                	add	s4,s4,s5
   110ee:	001a6a13          	ori	s4,s4,1
   110f2:	01443423          	sd	s4,8(s0)
   110f6:	b151                	j	10d7a <_malloc_r+0x1f2>
   110f8:	7761b423          	sd	s6,1896(gp) # 14648 <__malloc_sbrk_base>
   110fc:	befd                	j	10cfa <_malloc_r+0x172>
   110fe:	845a                	mv	s0,s6
   11100:	b9ad                	j	10d7a <_malloc_r+0x1f2>
   11102:	4785                	li	a5,1
   11104:	00fb3423          	sd	a5,8(s6)
   11108:	b5fd                	j	10ff6 <_malloc_r+0x46e>
   1110a:	15400693          	li	a3,340
   1110e:	04e6ed63          	bltu	a3,a4,11168 <_malloc_r+0x5e0>
   11112:	00f7d713          	srli	a4,a5,0xf
   11116:	0787059b          	addiw	a1,a4,120
   1111a:	0015959b          	slliw	a1,a1,0x1
   1111e:	0777069b          	addiw	a3,a4,119
   11122:	058e                	slli	a1,a1,0x3
   11124:	bbd1                	j	10ef8 <_malloc_r+0x370>
   11126:	55400713          	li	a4,1364
   1112a:	04f76d63          	bltu	a4,a5,11184 <_malloc_r+0x5fc>
   1112e:	0124d793          	srli	a5,s1,0x12
   11132:	07d7861b          	addiw	a2,a5,125
   11136:	0016169b          	slliw	a3,a2,0x1
   1113a:	07c7851b          	addiw	a0,a5,124
   1113e:	068e                	slli	a3,a3,0x3
   11140:	bcdd                	j	10c36 <_malloc_r+0xae>
   11142:	1c41                	addi	s8,s8,-16
   11144:	018c8a33          	add	s4,s9,s8
   11148:	416a0a33          	sub	s4,s4,s6
   1114c:	4701                	li	a4,0
   1114e:	b6ed                	j	10d38 <_malloc_r+0x1b0>
   11150:	01040593          	addi	a1,s0,16
   11154:	854a                	mv	a0,s2
   11156:	573000ef          	jal	ra,11ec8 <_free_r>
   1115a:	0109b403          	ld	s0,16(s3)
   1115e:	000ba783          	lw	a5,0(s7)
   11162:	00843a03          	ld	s4,8(s0)
   11166:	b911                	j	10d7a <_malloc_r+0x1f2>
   11168:	55400693          	li	a3,1364
   1116c:	02e6e363          	bltu	a3,a4,11192 <_malloc_r+0x60a>
   11170:	0127d713          	srli	a4,a5,0x12
   11174:	07d7059b          	addiw	a1,a4,125
   11178:	0015959b          	slliw	a1,a1,0x1
   1117c:	07c7069b          	addiw	a3,a4,124
   11180:	058e                	slli	a1,a1,0x3
   11182:	bb9d                	j	10ef8 <_malloc_r+0x370>
   11184:	7f000693          	li	a3,2032
   11188:	07f00613          	li	a2,127
   1118c:	07e00513          	li	a0,126
   11190:	b45d                	j	10c36 <_malloc_r+0xae>
   11192:	7f000593          	li	a1,2032
   11196:	07e00693          	li	a3,126
   1119a:	bbb9                	j	10ef8 <_malloc_r+0x370>
   1119c:	0089b783          	ld	a5,8(s3)
   111a0:	bd41                	j	11030 <_malloc_r+0x4a8>

00000000000111a2 <memchr>:
   111a2:	00757793          	andi	a5,a0,7
   111a6:	0ff5f693          	zext.b	a3,a1
   111aa:	c395                	beqz	a5,111ce <memchr+0x2c>
   111ac:	fff60793          	addi	a5,a2,-1
   111b0:	c605                	beqz	a2,111d8 <memchr+0x36>
   111b2:	567d                	li	a2,-1
   111b4:	a801                	j	111c4 <memchr+0x22>
   111b6:	0505                	addi	a0,a0,1
   111b8:	00757713          	andi	a4,a0,7
   111bc:	cb11                	beqz	a4,111d0 <memchr+0x2e>
   111be:	17fd                	addi	a5,a5,-1
   111c0:	00c78c63          	beq	a5,a2,111d8 <memchr+0x36>
   111c4:	00054703          	lbu	a4,0(a0)
   111c8:	fed717e3          	bne	a4,a3,111b6 <memchr+0x14>
   111cc:	8082                	ret
   111ce:	87b2                	mv	a5,a2
   111d0:	471d                	li	a4,7
   111d2:	00f76f63          	bltu	a4,a5,111f0 <memchr+0x4e>
   111d6:	e399                	bnez	a5,111dc <memchr+0x3a>
   111d8:	4501                	li	a0,0
   111da:	8082                	ret
   111dc:	97aa                	add	a5,a5,a0
   111de:	a021                	j	111e6 <memchr+0x44>
   111e0:	0505                	addi	a0,a0,1
   111e2:	fea78be3          	beq	a5,a0,111d8 <memchr+0x36>
   111e6:	00054703          	lbu	a4,0(a0)
   111ea:	fed71be3          	bne	a4,a3,111e0 <memchr+0x3e>
   111ee:	8082                	ret
   111f0:	0ff5f593          	zext.b	a1,a1
   111f4:	00859713          	slli	a4,a1,0x8
   111f8:	8dd9                	or	a1,a1,a4
   111fa:	01059713          	slli	a4,a1,0x10
   111fe:	7401b883          	ld	a7,1856(gp) # 14620 <__SDATA_BEGIN__+0x8>
   11202:	8f4d                	or	a4,a4,a1
   11204:	7481b803          	ld	a6,1864(gp) # 14628 <__SDATA_BEGIN__+0x10>
   11208:	02071593          	slli	a1,a4,0x20
   1120c:	8dd9                	or	a1,a1,a4
   1120e:	431d                	li	t1,7
   11210:	6118                	ld	a4,0(a0)
   11212:	8f2d                	xor	a4,a4,a1
   11214:	01170633          	add	a2,a4,a7
   11218:	fff74713          	not	a4,a4
   1121c:	8f71                	and	a4,a4,a2
   1121e:	01077733          	and	a4,a4,a6
   11222:	ff4d                	bnez	a4,111dc <memchr+0x3a>
   11224:	17e1                	addi	a5,a5,-8
   11226:	0521                	addi	a0,a0,8
   11228:	fef364e3          	bltu	t1,a5,11210 <memchr+0x6e>
   1122c:	fbc5                	bnez	a5,111dc <memchr+0x3a>
   1122e:	b76d                	j	111d8 <memchr+0x36>

0000000000011230 <memcpy>:
   11230:	00a5c7b3          	xor	a5,a1,a0
   11234:	8b9d                	andi	a5,a5,7
   11236:	00c508b3          	add	a7,a0,a2
   1123a:	eba1                	bnez	a5,1128a <memcpy+0x5a>
   1123c:	479d                	li	a5,7
   1123e:	04c7f663          	bgeu	a5,a2,1128a <memcpy+0x5a>
   11242:	00757793          	andi	a5,a0,7
   11246:	872a                	mv	a4,a0
   11248:	e7cd                	bnez	a5,112f2 <memcpy+0xc2>
   1124a:	ff88f613          	andi	a2,a7,-8
   1124e:	40e606b3          	sub	a3,a2,a4
   11252:	04000793          	li	a5,64
   11256:	04000293          	li	t0,64
   1125a:	04d7c463          	blt	a5,a3,112a2 <memcpy+0x72>
   1125e:	86ae                	mv	a3,a1
   11260:	87ba                	mv	a5,a4
   11262:	02c77163          	bgeu	a4,a2,11284 <memcpy+0x54>
   11266:	0006b803          	ld	a6,0(a3) # ffffffffffffe000 <__BSS_END__+0xfffffffffffe9920>
   1126a:	07a1                	addi	a5,a5,8
   1126c:	06a1                	addi	a3,a3,8
   1126e:	ff07bc23          	sd	a6,-8(a5) # ffffffffffffeff8 <__BSS_END__+0xfffffffffffea918>
   11272:	fec7eae3          	bltu	a5,a2,11266 <memcpy+0x36>
   11276:	fff60793          	addi	a5,a2,-1
   1127a:	8f99                	sub	a5,a5,a4
   1127c:	9be1                	andi	a5,a5,-8
   1127e:	07a1                	addi	a5,a5,8
   11280:	973e                	add	a4,a4,a5
   11282:	95be                	add	a1,a1,a5
   11284:	01176663          	bltu	a4,a7,11290 <memcpy+0x60>
   11288:	8082                	ret
   1128a:	872a                	mv	a4,a0
   1128c:	ff157ee3          	bgeu	a0,a7,11288 <memcpy+0x58>
   11290:	0005c783          	lbu	a5,0(a1)
   11294:	0705                	addi	a4,a4,1
   11296:	0585                	addi	a1,a1,1
   11298:	fef70fa3          	sb	a5,-1(a4)
   1129c:	ff176ae3          	bltu	a4,a7,11290 <memcpy+0x60>
   112a0:	8082                	ret
   112a2:	6594                	ld	a3,8(a1)
   112a4:	7d9c                	ld	a5,56(a1)
   112a6:	0005bf83          	ld	t6,0(a1)
   112aa:	0105bf03          	ld	t5,16(a1)
   112ae:	0185be83          	ld	t4,24(a1)
   112b2:	0205be03          	ld	t3,32(a1)
   112b6:	0285b303          	ld	t1,40(a1)
   112ba:	0305b803          	ld	a6,48(a1)
   112be:	e714                	sd	a3,8(a4)
   112c0:	61b4                	ld	a3,64(a1)
   112c2:	01f73023          	sd	t6,0(a4)
   112c6:	01e73823          	sd	t5,16(a4)
   112ca:	01d73c23          	sd	t4,24(a4)
   112ce:	03c73023          	sd	t3,32(a4)
   112d2:	02673423          	sd	t1,40(a4)
   112d6:	03073823          	sd	a6,48(a4)
   112da:	ff1c                	sd	a5,56(a4)
   112dc:	04870713          	addi	a4,a4,72
   112e0:	40e607b3          	sub	a5,a2,a4
   112e4:	fed73c23          	sd	a3,-8(a4)
   112e8:	04858593          	addi	a1,a1,72
   112ec:	faf2cbe3          	blt	t0,a5,112a2 <memcpy+0x72>
   112f0:	b7bd                	j	1125e <memcpy+0x2e>
   112f2:	0005c683          	lbu	a3,0(a1)
   112f6:	0705                	addi	a4,a4,1
   112f8:	00777793          	andi	a5,a4,7
   112fc:	fed70fa3          	sb	a3,-1(a4)
   11300:	0585                	addi	a1,a1,1
   11302:	d7a1                	beqz	a5,1124a <memcpy+0x1a>
   11304:	0005c683          	lbu	a3,0(a1)
   11308:	0705                	addi	a4,a4,1
   1130a:	00777793          	andi	a5,a4,7
   1130e:	fed70fa3          	sb	a3,-1(a4)
   11312:	0585                	addi	a1,a1,1
   11314:	fff9                	bnez	a5,112f2 <memcpy+0xc2>
   11316:	bf15                	j	1124a <memcpy+0x1a>

0000000000011318 <memmove>:
   11318:	02a5f263          	bgeu	a1,a0,1133c <memmove+0x24>
   1131c:	00c587b3          	add	a5,a1,a2
   11320:	00f57e63          	bgeu	a0,a5,1133c <memmove+0x24>
   11324:	00c50733          	add	a4,a0,a2
   11328:	ca5d                	beqz	a2,113de <memmove+0xc6>
   1132a:	fff7c683          	lbu	a3,-1(a5)
   1132e:	17fd                	addi	a5,a5,-1
   11330:	177d                	addi	a4,a4,-1
   11332:	00d70023          	sb	a3,0(a4)
   11336:	fef59ae3          	bne	a1,a5,1132a <memmove+0x12>
   1133a:	8082                	ret
   1133c:	47fd                	li	a5,31
   1133e:	02c7e163          	bltu	a5,a2,11360 <memmove+0x48>
   11342:	87aa                	mv	a5,a0
   11344:	fff60693          	addi	a3,a2,-1
   11348:	c245                	beqz	a2,113e8 <memmove+0xd0>
   1134a:	0685                	addi	a3,a3,1
   1134c:	96be                	add	a3,a3,a5
   1134e:	0005c703          	lbu	a4,0(a1)
   11352:	0785                	addi	a5,a5,1
   11354:	0585                	addi	a1,a1,1
   11356:	fee78fa3          	sb	a4,-1(a5)
   1135a:	fed79ae3          	bne	a5,a3,1134e <memmove+0x36>
   1135e:	8082                	ret
   11360:	00a5e7b3          	or	a5,a1,a0
   11364:	8b9d                	andi	a5,a5,7
   11366:	efad                	bnez	a5,113e0 <memmove+0xc8>
   11368:	fe060893          	addi	a7,a2,-32
   1136c:	fe08f893          	andi	a7,a7,-32
   11370:	02088893          	addi	a7,a7,32
   11374:	01150833          	add	a6,a0,a7
   11378:	872e                	mv	a4,a1
   1137a:	87aa                	mv	a5,a0
   1137c:	6314                	ld	a3,0(a4)
   1137e:	02070713          	addi	a4,a4,32
   11382:	02078793          	addi	a5,a5,32
   11386:	fed7b023          	sd	a3,-32(a5)
   1138a:	fe873683          	ld	a3,-24(a4)
   1138e:	fed7b423          	sd	a3,-24(a5)
   11392:	ff073683          	ld	a3,-16(a4)
   11396:	fed7b823          	sd	a3,-16(a5)
   1139a:	ff873683          	ld	a3,-8(a4)
   1139e:	fed7bc23          	sd	a3,-8(a5)
   113a2:	fcf81de3          	bne	a6,a5,1137c <memmove+0x64>
   113a6:	01867713          	andi	a4,a2,24
   113aa:	95c6                	add	a1,a1,a7
   113ac:	01f67813          	andi	a6,a2,31
   113b0:	cf0d                	beqz	a4,113ea <memmove+0xd2>
   113b2:	872e                	mv	a4,a1
   113b4:	88be                	mv	a7,a5
   113b6:	4e1d                	li	t3,7
   113b8:	00073303          	ld	t1,0(a4)
   113bc:	0721                	addi	a4,a4,8
   113be:	40e806b3          	sub	a3,a6,a4
   113c2:	0068b023          	sd	t1,0(a7)
   113c6:	96ae                	add	a3,a3,a1
   113c8:	08a1                	addi	a7,a7,8
   113ca:	fede67e3          	bltu	t3,a3,113b8 <memmove+0xa0>
   113ce:	ff880713          	addi	a4,a6,-8
   113d2:	9b61                	andi	a4,a4,-8
   113d4:	0721                	addi	a4,a4,8
   113d6:	8a1d                	andi	a2,a2,7
   113d8:	97ba                	add	a5,a5,a4
   113da:	95ba                	add	a1,a1,a4
   113dc:	b7a5                	j	11344 <memmove+0x2c>
   113de:	8082                	ret
   113e0:	fff60693          	addi	a3,a2,-1
   113e4:	87aa                	mv	a5,a0
   113e6:	b795                	j	1134a <memmove+0x32>
   113e8:	8082                	ret
   113ea:	8642                	mv	a2,a6
   113ec:	bfa1                	j	11344 <memmove+0x2c>

00000000000113ee <__malloc_lock>:
   113ee:	8082                	ret

00000000000113f0 <__malloc_unlock>:
   113f0:	8082                	ret

00000000000113f2 <_realloc_r>:
   113f2:	715d                	addi	sp,sp,-80
   113f4:	f84a                	sd	s2,48(sp)
   113f6:	e486                	sd	ra,72(sp)
   113f8:	e0a2                	sd	s0,64(sp)
   113fa:	fc26                	sd	s1,56(sp)
   113fc:	f44e                	sd	s3,40(sp)
   113fe:	f052                	sd	s4,32(sp)
   11400:	ec56                	sd	s5,24(sp)
   11402:	e85a                	sd	s6,16(sp)
   11404:	e45e                	sd	s7,8(sp)
   11406:	e062                	sd	s8,0(sp)
   11408:	8932                	mv	s2,a2
   1140a:	14058c63          	beqz	a1,11562 <_realloc_r+0x170>
   1140e:	842e                	mv	s0,a1
   11410:	8aaa                	mv	s5,a0
   11412:	fddff0ef          	jal	ra,113ee <__malloc_lock>
   11416:	ff843703          	ld	a4,-8(s0)
   1141a:	01790493          	addi	s1,s2,23
   1141e:	02e00793          	li	a5,46
   11422:	ff040b13          	addi	s6,s0,-16
   11426:	ffc77a13          	andi	s4,a4,-4
   1142a:	0a97fd63          	bgeu	a5,s1,114e4 <_realloc_r+0xf2>
   1142e:	800007b7          	lui	a5,0x80000
   11432:	98c1                	andi	s1,s1,-16
   11434:	fff7c793          	not	a5,a5
   11438:	0a97ea63          	bltu	a5,s1,114ec <_realloc_r+0xfa>
   1143c:	0b24e863          	bltu	s1,s2,114ec <_realloc_r+0xfa>
   11440:	014b09b3          	add	s3,s6,s4
   11444:	0c9a5e63          	bge	s4,s1,11520 <_realloc_r+0x12e>
   11448:	67d1                	lui	a5,0x14
   1144a:	e0878b93          	addi	s7,a5,-504 # 13e08 <__malloc_av_>
   1144e:	010bb683          	ld	a3,16(s7)
   11452:	0089b783          	ld	a5,8(s3)
   11456:	15368763          	beq	a3,s3,115a4 <_realloc_r+0x1b2>
   1145a:	ffe7f693          	andi	a3,a5,-2
   1145e:	96ce                	add	a3,a3,s3
   11460:	6694                	ld	a3,8(a3)
   11462:	8a85                	andi	a3,a3,1
   11464:	e6ed                	bnez	a3,1154e <_realloc_r+0x15c>
   11466:	9bf1                	andi	a5,a5,-4
   11468:	00fa06b3          	add	a3,s4,a5
   1146c:	0a96d163          	bge	a3,s1,1150e <_realloc_r+0x11c>
   11470:	8b05                	andi	a4,a4,1
   11472:	e30d                	bnez	a4,11494 <_realloc_r+0xa2>
   11474:	ff043c03          	ld	s8,-16(s0)
   11478:	418b0c33          	sub	s8,s6,s8
   1147c:	008c3703          	ld	a4,8(s8)
   11480:	9b71                	andi	a4,a4,-4
   11482:	97ba                	add	a5,a5,a4
   11484:	01478bb3          	add	s7,a5,s4
   11488:	269bd463          	bge	s7,s1,116f0 <_realloc_r+0x2fe>
   1148c:	00ea0bb3          	add	s7,s4,a4
   11490:	209bd063          	bge	s7,s1,11690 <_realloc_r+0x29e>
   11494:	85ca                	mv	a1,s2
   11496:	8556                	mv	a0,s5
   11498:	ef0ff0ef          	jal	ra,10b88 <_malloc_r>
   1149c:	892a                	mv	s2,a0
   1149e:	cd1d                	beqz	a0,114dc <_realloc_r+0xea>
   114a0:	ff843783          	ld	a5,-8(s0)
   114a4:	ff050713          	addi	a4,a0,-16
   114a8:	9bf9                	andi	a5,a5,-2
   114aa:	97da                	add	a5,a5,s6
   114ac:	1ce78b63          	beq	a5,a4,11682 <_realloc_r+0x290>
   114b0:	ff8a0613          	addi	a2,s4,-8
   114b4:	04800793          	li	a5,72
   114b8:	22c7e863          	bltu	a5,a2,116e8 <_realloc_r+0x2f6>
   114bc:	02700713          	li	a4,39
   114c0:	6014                	ld	a3,0(s0)
   114c2:	18c76063          	bltu	a4,a2,11642 <_realloc_r+0x250>
   114c6:	87aa                	mv	a5,a0
   114c8:	8722                	mv	a4,s0
   114ca:	e394                	sd	a3,0(a5)
   114cc:	6714                	ld	a3,8(a4)
   114ce:	e794                	sd	a3,8(a5)
   114d0:	6b18                	ld	a4,16(a4)
   114d2:	eb98                	sd	a4,16(a5)
   114d4:	85a2                	mv	a1,s0
   114d6:	8556                	mv	a0,s5
   114d8:	1f1000ef          	jal	ra,11ec8 <_free_r>
   114dc:	8556                	mv	a0,s5
   114de:	f13ff0ef          	jal	ra,113f0 <__malloc_unlock>
   114e2:	a809                	j	114f4 <_realloc_r+0x102>
   114e4:	02000493          	li	s1,32
   114e8:	f524fce3          	bgeu	s1,s2,11440 <_realloc_r+0x4e>
   114ec:	47b1                	li	a5,12
   114ee:	00faa023          	sw	a5,0(s5)
   114f2:	4901                	li	s2,0
   114f4:	60a6                	ld	ra,72(sp)
   114f6:	6406                	ld	s0,64(sp)
   114f8:	74e2                	ld	s1,56(sp)
   114fa:	79a2                	ld	s3,40(sp)
   114fc:	7a02                	ld	s4,32(sp)
   114fe:	6ae2                	ld	s5,24(sp)
   11500:	6b42                	ld	s6,16(sp)
   11502:	6ba2                	ld	s7,8(sp)
   11504:	6c02                	ld	s8,0(sp)
   11506:	854a                	mv	a0,s2
   11508:	7942                	ld	s2,48(sp)
   1150a:	6161                	addi	sp,sp,80
   1150c:	8082                	ret
   1150e:	0189b783          	ld	a5,24(s3)
   11512:	0109b703          	ld	a4,16(s3)
   11516:	8a36                	mv	s4,a3
   11518:	00db09b3          	add	s3,s6,a3
   1151c:	ef1c                	sd	a5,24(a4)
   1151e:	eb98                	sd	a4,16(a5)
   11520:	008b3783          	ld	a5,8(s6)
   11524:	409a0733          	sub	a4,s4,s1
   11528:	46fd                	li	a3,31
   1152a:	8b85                	andi	a5,a5,1
   1152c:	04e6e963          	bltu	a3,a4,1157e <_realloc_r+0x18c>
   11530:	00fa67b3          	or	a5,s4,a5
   11534:	00fb3423          	sd	a5,8(s6)
   11538:	0089b783          	ld	a5,8(s3)
   1153c:	0017e793          	ori	a5,a5,1
   11540:	00f9b423          	sd	a5,8(s3)
   11544:	8556                	mv	a0,s5
   11546:	eabff0ef          	jal	ra,113f0 <__malloc_unlock>
   1154a:	8922                	mv	s2,s0
   1154c:	b765                	j	114f4 <_realloc_r+0x102>
   1154e:	8b05                	andi	a4,a4,1
   11550:	f331                	bnez	a4,11494 <_realloc_r+0xa2>
   11552:	ff043c03          	ld	s8,-16(s0)
   11556:	418b0c33          	sub	s8,s6,s8
   1155a:	008c3703          	ld	a4,8(s8)
   1155e:	9b71                	andi	a4,a4,-4
   11560:	b735                	j	1148c <_realloc_r+0x9a>
   11562:	6406                	ld	s0,64(sp)
   11564:	60a6                	ld	ra,72(sp)
   11566:	74e2                	ld	s1,56(sp)
   11568:	7942                	ld	s2,48(sp)
   1156a:	79a2                	ld	s3,40(sp)
   1156c:	7a02                	ld	s4,32(sp)
   1156e:	6ae2                	ld	s5,24(sp)
   11570:	6b42                	ld	s6,16(sp)
   11572:	6ba2                	ld	s7,8(sp)
   11574:	6c02                	ld	s8,0(sp)
   11576:	85b2                	mv	a1,a2
   11578:	6161                	addi	sp,sp,80
   1157a:	e0eff06f          	j	10b88 <_malloc_r>
   1157e:	8fc5                	or	a5,a5,s1
   11580:	00fb3423          	sd	a5,8(s6)
   11584:	009b05b3          	add	a1,s6,s1
   11588:	00176713          	ori	a4,a4,1
   1158c:	e598                	sd	a4,8(a1)
   1158e:	0089b783          	ld	a5,8(s3)
   11592:	05c1                	addi	a1,a1,16
   11594:	8556                	mv	a0,s5
   11596:	0017e793          	ori	a5,a5,1
   1159a:	00f9b423          	sd	a5,8(s3)
   1159e:	12b000ef          	jal	ra,11ec8 <_free_r>
   115a2:	b74d                	j	11544 <_realloc_r+0x152>
   115a4:	9bf1                	andi	a5,a5,-4
   115a6:	00fa06b3          	add	a3,s4,a5
   115aa:	02048613          	addi	a2,s1,32
   115ae:	0ac6d763          	bge	a3,a2,1165c <_realloc_r+0x26a>
   115b2:	8b05                	andi	a4,a4,1
   115b4:	ee0710e3          	bnez	a4,11494 <_realloc_r+0xa2>
   115b8:	ff043c03          	ld	s8,-16(s0)
   115bc:	418b0c33          	sub	s8,s6,s8
   115c0:	008c3703          	ld	a4,8(s8)
   115c4:	9b71                	andi	a4,a4,-4
   115c6:	97ba                	add	a5,a5,a4
   115c8:	014789b3          	add	s3,a5,s4
   115cc:	ecc9c0e3          	blt	s3,a2,1148c <_realloc_r+0x9a>
   115d0:	018c3783          	ld	a5,24(s8)
   115d4:	010c3703          	ld	a4,16(s8)
   115d8:	ff8a0613          	addi	a2,s4,-8
   115dc:	04800693          	li	a3,72
   115e0:	ef1c                	sd	a5,24(a4)
   115e2:	eb98                	sd	a4,16(a5)
   115e4:	010c0913          	addi	s2,s8,16
   115e8:	1cc6ea63          	bltu	a3,a2,117bc <_realloc_r+0x3ca>
   115ec:	02700593          	li	a1,39
   115f0:	6018                	ld	a4,0(s0)
   115f2:	87ca                	mv	a5,s2
   115f4:	00c5ff63          	bgeu	a1,a2,11612 <_realloc_r+0x220>
   115f8:	00ec3823          	sd	a4,16(s8)
   115fc:	6418                	ld	a4,8(s0)
   115fe:	03700793          	li	a5,55
   11602:	00ec3c23          	sd	a4,24(s8)
   11606:	1cc7e063          	bltu	a5,a2,117c6 <_realloc_r+0x3d4>
   1160a:	6818                	ld	a4,16(s0)
   1160c:	020c0793          	addi	a5,s8,32
   11610:	0441                	addi	s0,s0,16
   11612:	e398                	sd	a4,0(a5)
   11614:	6418                	ld	a4,8(s0)
   11616:	e798                	sd	a4,8(a5)
   11618:	6818                	ld	a4,16(s0)
   1161a:	eb98                	sd	a4,16(a5)
   1161c:	009c0733          	add	a4,s8,s1
   11620:	409989b3          	sub	s3,s3,s1
   11624:	00ebb823          	sd	a4,16(s7)
   11628:	0019e793          	ori	a5,s3,1
   1162c:	e71c                	sd	a5,8(a4)
   1162e:	008c3783          	ld	a5,8(s8)
   11632:	8556                	mv	a0,s5
   11634:	8b85                	andi	a5,a5,1
   11636:	8cdd                	or	s1,s1,a5
   11638:	009c3423          	sd	s1,8(s8)
   1163c:	db5ff0ef          	jal	ra,113f0 <__malloc_unlock>
   11640:	bd55                	j	114f4 <_realloc_r+0x102>
   11642:	e114                	sd	a3,0(a0)
   11644:	6414                	ld	a3,8(s0)
   11646:	03700713          	li	a4,55
   1164a:	e514                	sd	a3,8(a0)
   1164c:	10c76f63          	bltu	a4,a2,1176a <_realloc_r+0x378>
   11650:	6814                	ld	a3,16(s0)
   11652:	01040713          	addi	a4,s0,16
   11656:	01050793          	addi	a5,a0,16
   1165a:	bd85                	j	114ca <_realloc_r+0xd8>
   1165c:	9b26                	add	s6,s6,s1
   1165e:	8e85                	sub	a3,a3,s1
   11660:	016bb823          	sd	s6,16(s7)
   11664:	0016e793          	ori	a5,a3,1
   11668:	00fb3423          	sd	a5,8(s6)
   1166c:	ff843783          	ld	a5,-8(s0)
   11670:	8556                	mv	a0,s5
   11672:	8922                	mv	s2,s0
   11674:	8b85                	andi	a5,a5,1
   11676:	8cdd                	or	s1,s1,a5
   11678:	fe943c23          	sd	s1,-8(s0)
   1167c:	d75ff0ef          	jal	ra,113f0 <__malloc_unlock>
   11680:	bd95                	j	114f4 <_realloc_r+0x102>
   11682:	ff853783          	ld	a5,-8(a0)
   11686:	9bf1                	andi	a5,a5,-4
   11688:	9a3e                	add	s4,s4,a5
   1168a:	014b09b3          	add	s3,s6,s4
   1168e:	bd49                	j	11520 <_realloc_r+0x12e>
   11690:	018c3783          	ld	a5,24(s8)
   11694:	010c3703          	ld	a4,16(s8)
   11698:	ff8a0613          	addi	a2,s4,-8
   1169c:	04800693          	li	a3,72
   116a0:	ef1c                	sd	a5,24(a4)
   116a2:	eb98                	sd	a4,16(a5)
   116a4:	010c0913          	addi	s2,s8,16
   116a8:	017c09b3          	add	s3,s8,s7
   116ac:	0ac6e763          	bltu	a3,a2,1175a <_realloc_r+0x368>
   116b0:	02700593          	li	a1,39
   116b4:	6018                	ld	a4,0(s0)
   116b6:	87ca                	mv	a5,s2
   116b8:	00c5ff63          	bgeu	a1,a2,116d6 <_realloc_r+0x2e4>
   116bc:	00ec3823          	sd	a4,16(s8)
   116c0:	6418                	ld	a4,8(s0)
   116c2:	03700793          	li	a5,55
   116c6:	00ec3c23          	sd	a4,24(s8)
   116ca:	0ac7ec63          	bltu	a5,a2,11782 <_realloc_r+0x390>
   116ce:	6818                	ld	a4,16(s0)
   116d0:	020c0793          	addi	a5,s8,32
   116d4:	0441                	addi	s0,s0,16
   116d6:	e398                	sd	a4,0(a5)
   116d8:	6418                	ld	a4,8(s0)
   116da:	8a5e                	mv	s4,s7
   116dc:	8b62                	mv	s6,s8
   116de:	e798                	sd	a4,8(a5)
   116e0:	6818                	ld	a4,16(s0)
   116e2:	844a                	mv	s0,s2
   116e4:	eb98                	sd	a4,16(a5)
   116e6:	bd2d                	j	11520 <_realloc_r+0x12e>
   116e8:	85a2                	mv	a1,s0
   116ea:	c2fff0ef          	jal	ra,11318 <memmove>
   116ee:	b3dd                	j	114d4 <_realloc_r+0xe2>
   116f0:	0189b783          	ld	a5,24(s3)
   116f4:	0109b703          	ld	a4,16(s3)
   116f8:	ff8a0613          	addi	a2,s4,-8
   116fc:	04800693          	li	a3,72
   11700:	ef1c                	sd	a5,24(a4)
   11702:	eb98                	sd	a4,16(a5)
   11704:	010c3703          	ld	a4,16(s8)
   11708:	018c3783          	ld	a5,24(s8)
   1170c:	010c0913          	addi	s2,s8,16
   11710:	017c09b3          	add	s3,s8,s7
   11714:	ef1c                	sd	a5,24(a4)
   11716:	eb98                	sd	a4,16(a5)
   11718:	04c6e163          	bltu	a3,a2,1175a <_realloc_r+0x368>
   1171c:	02700693          	li	a3,39
   11720:	6018                	ld	a4,0(s0)
   11722:	87ca                	mv	a5,s2
   11724:	fac6f9e3          	bgeu	a3,a2,116d6 <_realloc_r+0x2e4>
   11728:	00ec3823          	sd	a4,16(s8)
   1172c:	6418                	ld	a4,8(s0)
   1172e:	03700793          	li	a5,55
   11732:	00ec3c23          	sd	a4,24(s8)
   11736:	6818                	ld	a4,16(s0)
   11738:	f8c7fce3          	bgeu	a5,a2,116d0 <_realloc_r+0x2de>
   1173c:	02ec3023          	sd	a4,32(s8)
   11740:	6c18                	ld	a4,24(s0)
   11742:	04800793          	li	a5,72
   11746:	02ec3423          	sd	a4,40(s8)
   1174a:	7018                	ld	a4,32(s0)
   1174c:	04f60463          	beq	a2,a5,11794 <_realloc_r+0x3a2>
   11750:	030c0793          	addi	a5,s8,48
   11754:	02040413          	addi	s0,s0,32
   11758:	bfbd                	j	116d6 <_realloc_r+0x2e4>
   1175a:	85a2                	mv	a1,s0
   1175c:	854a                	mv	a0,s2
   1175e:	bbbff0ef          	jal	ra,11318 <memmove>
   11762:	844a                	mv	s0,s2
   11764:	8a5e                	mv	s4,s7
   11766:	8b62                	mv	s6,s8
   11768:	bb65                	j	11520 <_realloc_r+0x12e>
   1176a:	6818                	ld	a4,16(s0)
   1176c:	e918                	sd	a4,16(a0)
   1176e:	6c18                	ld	a4,24(s0)
   11770:	ed18                	sd	a4,24(a0)
   11772:	7014                	ld	a3,32(s0)
   11774:	02f60b63          	beq	a2,a5,117aa <_realloc_r+0x3b8>
   11778:	02040713          	addi	a4,s0,32
   1177c:	02050793          	addi	a5,a0,32
   11780:	b3a9                	j	114ca <_realloc_r+0xd8>
   11782:	681c                	ld	a5,16(s0)
   11784:	02fc3023          	sd	a5,32(s8)
   11788:	6c1c                	ld	a5,24(s0)
   1178a:	02fc3423          	sd	a5,40(s8)
   1178e:	7018                	ld	a4,32(s0)
   11790:	fcd610e3          	bne	a2,a3,11750 <_realloc_r+0x35e>
   11794:	02ec3823          	sd	a4,48(s8)
   11798:	7418                	ld	a4,40(s0)
   1179a:	040c0793          	addi	a5,s8,64
   1179e:	03040413          	addi	s0,s0,48
   117a2:	02ec3c23          	sd	a4,56(s8)
   117a6:	6018                	ld	a4,0(s0)
   117a8:	b73d                	j	116d6 <_realloc_r+0x2e4>
   117aa:	f114                	sd	a3,32(a0)
   117ac:	7414                	ld	a3,40(s0)
   117ae:	03040713          	addi	a4,s0,48
   117b2:	03050793          	addi	a5,a0,48
   117b6:	f514                	sd	a3,40(a0)
   117b8:	7814                	ld	a3,48(s0)
   117ba:	bb01                	j	114ca <_realloc_r+0xd8>
   117bc:	85a2                	mv	a1,s0
   117be:	854a                	mv	a0,s2
   117c0:	b59ff0ef          	jal	ra,11318 <memmove>
   117c4:	bda1                	j	1161c <_realloc_r+0x22a>
   117c6:	681c                	ld	a5,16(s0)
   117c8:	02fc3023          	sd	a5,32(s8)
   117cc:	6c1c                	ld	a5,24(s0)
   117ce:	02fc3423          	sd	a5,40(s8)
   117d2:	7018                	ld	a4,32(s0)
   117d4:	00d60763          	beq	a2,a3,117e2 <_realloc_r+0x3f0>
   117d8:	030c0793          	addi	a5,s8,48
   117dc:	02040413          	addi	s0,s0,32
   117e0:	bd0d                	j	11612 <_realloc_r+0x220>
   117e2:	02ec3823          	sd	a4,48(s8)
   117e6:	7418                	ld	a4,40(s0)
   117e8:	040c0793          	addi	a5,s8,64
   117ec:	03040413          	addi	s0,s0,48
   117f0:	02ec3c23          	sd	a4,56(s8)
   117f4:	6018                	ld	a4,0(s0)
   117f6:	bd31                	j	11612 <_realloc_r+0x220>

00000000000117f8 <_sbrk_r>:
   117f8:	1101                	addi	sp,sp,-32
   117fa:	e822                	sd	s0,16(sp)
   117fc:	e426                	sd	s1,8(sp)
   117fe:	842a                	mv	s0,a0
   11800:	852e                	mv	a0,a1
   11802:	ec06                	sd	ra,24(sp)
   11804:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   11808:	5a5000ef          	jal	ra,125ac <_sbrk>
   1180c:	57fd                	li	a5,-1
   1180e:	00f50763          	beq	a0,a5,1181c <_sbrk_r+0x24>
   11812:	60e2                	ld	ra,24(sp)
   11814:	6442                	ld	s0,16(sp)
   11816:	64a2                	ld	s1,8(sp)
   11818:	6105                	addi	sp,sp,32
   1181a:	8082                	ret
   1181c:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   11820:	dbed                	beqz	a5,11812 <_sbrk_r+0x1a>
   11822:	60e2                	ld	ra,24(sp)
   11824:	c01c                	sw	a5,0(s0)
   11826:	6442                	ld	s0,16(sp)
   11828:	64a2                	ld	s1,8(sp)
   1182a:	6105                	addi	sp,sp,32
   1182c:	8082                	ret

000000000001182e <__sread>:
   1182e:	1141                	addi	sp,sp,-16
   11830:	e022                	sd	s0,0(sp)
   11832:	842e                	mv	s0,a1
   11834:	01259583          	lh	a1,18(a1)
   11838:	e406                	sd	ra,8(sp)
   1183a:	2ad000ef          	jal	ra,122e6 <_read_r>
   1183e:	00054963          	bltz	a0,11850 <__sread+0x22>
   11842:	685c                	ld	a5,144(s0)
   11844:	60a2                	ld	ra,8(sp)
   11846:	97aa                	add	a5,a5,a0
   11848:	e85c                	sd	a5,144(s0)
   1184a:	6402                	ld	s0,0(sp)
   1184c:	0141                	addi	sp,sp,16
   1184e:	8082                	ret
   11850:	01045783          	lhu	a5,16(s0)
   11854:	777d                	lui	a4,0xfffff
   11856:	177d                	addi	a4,a4,-1
   11858:	8ff9                	and	a5,a5,a4
   1185a:	60a2                	ld	ra,8(sp)
   1185c:	00f41823          	sh	a5,16(s0)
   11860:	6402                	ld	s0,0(sp)
   11862:	0141                	addi	sp,sp,16
   11864:	8082                	ret

0000000000011866 <__seofread>:
   11866:	4501                	li	a0,0
   11868:	8082                	ret

000000000001186a <__swrite>:
   1186a:	01059783          	lh	a5,16(a1)
   1186e:	7179                	addi	sp,sp,-48
   11870:	f022                	sd	s0,32(sp)
   11872:	ec26                	sd	s1,24(sp)
   11874:	e84a                	sd	s2,16(sp)
   11876:	e44e                	sd	s3,8(sp)
   11878:	f406                	sd	ra,40(sp)
   1187a:	1007f713          	andi	a4,a5,256
   1187e:	842e                	mv	s0,a1
   11880:	84aa                	mv	s1,a0
   11882:	01259583          	lh	a1,18(a1)
   11886:	8932                	mv	s2,a2
   11888:	89b6                	mv	s3,a3
   1188a:	e305                	bnez	a4,118aa <__swrite+0x40>
   1188c:	777d                	lui	a4,0xfffff
   1188e:	177d                	addi	a4,a4,-1
   11890:	8ff9                	and	a5,a5,a4
   11892:	00f41823          	sh	a5,16(s0)
   11896:	7402                	ld	s0,32(sp)
   11898:	70a2                	ld	ra,40(sp)
   1189a:	86ce                	mv	a3,s3
   1189c:	864a                	mv	a2,s2
   1189e:	69a2                	ld	s3,8(sp)
   118a0:	6942                	ld	s2,16(sp)
   118a2:	8526                	mv	a0,s1
   118a4:	64e2                	ld	s1,24(sp)
   118a6:	6145                	addi	sp,sp,48
   118a8:	a8b1                	j	11904 <_write_r>
   118aa:	4689                	li	a3,2
   118ac:	4601                	li	a2,0
   118ae:	067000ef          	jal	ra,12114 <_lseek_r>
   118b2:	01041783          	lh	a5,16(s0)
   118b6:	01241583          	lh	a1,18(s0)
   118ba:	bfc9                	j	1188c <__swrite+0x22>

00000000000118bc <__sseek>:
   118bc:	1141                	addi	sp,sp,-16
   118be:	e022                	sd	s0,0(sp)
   118c0:	842e                	mv	s0,a1
   118c2:	01259583          	lh	a1,18(a1)
   118c6:	e406                	sd	ra,8(sp)
   118c8:	04d000ef          	jal	ra,12114 <_lseek_r>
   118cc:	57fd                	li	a5,-1
   118ce:	00f50d63          	beq	a0,a5,118e8 <__sseek+0x2c>
   118d2:	01045783          	lhu	a5,16(s0)
   118d6:	6705                	lui	a4,0x1
   118d8:	60a2                	ld	ra,8(sp)
   118da:	8fd9                	or	a5,a5,a4
   118dc:	e848                	sd	a0,144(s0)
   118de:	00f41823          	sh	a5,16(s0)
   118e2:	6402                	ld	s0,0(sp)
   118e4:	0141                	addi	sp,sp,16
   118e6:	8082                	ret
   118e8:	01045783          	lhu	a5,16(s0)
   118ec:	777d                	lui	a4,0xfffff
   118ee:	177d                	addi	a4,a4,-1
   118f0:	8ff9                	and	a5,a5,a4
   118f2:	60a2                	ld	ra,8(sp)
   118f4:	00f41823          	sh	a5,16(s0)
   118f8:	6402                	ld	s0,0(sp)
   118fa:	0141                	addi	sp,sp,16
   118fc:	8082                	ret

00000000000118fe <__sclose>:
   118fe:	01259583          	lh	a1,18(a1)
   11902:	a275                	j	11aae <_close_r>

0000000000011904 <_write_r>:
   11904:	1101                	addi	sp,sp,-32
   11906:	872e                	mv	a4,a1
   11908:	e822                	sd	s0,16(sp)
   1190a:	e426                	sd	s1,8(sp)
   1190c:	85b2                	mv	a1,a2
   1190e:	842a                	mv	s0,a0
   11910:	8636                	mv	a2,a3
   11912:	853a                	mv	a0,a4
   11914:	ec06                	sd	ra,24(sp)
   11916:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   1191a:	4e7000ef          	jal	ra,12600 <_write>
   1191e:	57fd                	li	a5,-1
   11920:	00f50763          	beq	a0,a5,1192e <_write_r+0x2a>
   11924:	60e2                	ld	ra,24(sp)
   11926:	6442                	ld	s0,16(sp)
   11928:	64a2                	ld	s1,8(sp)
   1192a:	6105                	addi	sp,sp,32
   1192c:	8082                	ret
   1192e:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   11932:	dbed                	beqz	a5,11924 <_write_r+0x20>
   11934:	60e2                	ld	ra,24(sp)
   11936:	c01c                	sw	a5,0(s0)
   11938:	6442                	ld	s0,16(sp)
   1193a:	64a2                	ld	s1,8(sp)
   1193c:	6105                	addi	sp,sp,32
   1193e:	8082                	ret

0000000000011940 <__swsetup_r>:
   11940:	7601b783          	ld	a5,1888(gp) # 14640 <_impure_ptr>
   11944:	1101                	addi	sp,sp,-32
   11946:	e822                	sd	s0,16(sp)
   11948:	e426                	sd	s1,8(sp)
   1194a:	ec06                	sd	ra,24(sp)
   1194c:	84aa                	mv	s1,a0
   1194e:	842e                	mv	s0,a1
   11950:	c399                	beqz	a5,11956 <__swsetup_r+0x16>
   11952:	4bb8                	lw	a4,80(a5)
   11954:	cf21                	beqz	a4,119ac <__swsetup_r+0x6c>
   11956:	01041703          	lh	a4,16(s0)
   1195a:	03071793          	slli	a5,a4,0x30
   1195e:	00877693          	andi	a3,a4,8
   11962:	93c1                	srli	a5,a5,0x30
   11964:	ceb9                	beqz	a3,119c2 <__swsetup_r+0x82>
   11966:	6c14                	ld	a3,24(s0)
   11968:	cabd                	beqz	a3,119de <__swsetup_r+0x9e>
   1196a:	0017f613          	andi	a2,a5,1
   1196e:	ce11                	beqz	a2,1198a <__swsetup_r+0x4a>
   11970:	5010                	lw	a2,32(s0)
   11972:	00042623          	sw	zero,12(s0)
   11976:	4501                	li	a0,0
   11978:	40c0063b          	negw	a2,a2
   1197c:	d410                	sw	a2,40(s0)
   1197e:	ce91                	beqz	a3,1199a <__swsetup_r+0x5a>
   11980:	60e2                	ld	ra,24(sp)
   11982:	6442                	ld	s0,16(sp)
   11984:	64a2                	ld	s1,8(sp)
   11986:	6105                	addi	sp,sp,32
   11988:	8082                	ret
   1198a:	0027f613          	andi	a2,a5,2
   1198e:	4581                	li	a1,0
   11990:	e211                	bnez	a2,11994 <__swsetup_r+0x54>
   11992:	500c                	lw	a1,32(s0)
   11994:	c44c                	sw	a1,12(s0)
   11996:	4501                	li	a0,0
   11998:	f6e5                	bnez	a3,11980 <__swsetup_r+0x40>
   1199a:	0807f793          	andi	a5,a5,128
   1199e:	d3ed                	beqz	a5,11980 <__swsetup_r+0x40>
   119a0:	04076713          	ori	a4,a4,64
   119a4:	00e41823          	sh	a4,16(s0)
   119a8:	557d                	li	a0,-1
   119aa:	bfd9                	j	11980 <__swsetup_r+0x40>
   119ac:	853e                	mv	a0,a5
   119ae:	d49fe0ef          	jal	ra,106f6 <__sinit>
   119b2:	01041703          	lh	a4,16(s0)
   119b6:	03071793          	slli	a5,a4,0x30
   119ba:	00877693          	andi	a3,a4,8
   119be:	93c1                	srli	a5,a5,0x30
   119c0:	f2dd                	bnez	a3,11966 <__swsetup_r+0x26>
   119c2:	0107f693          	andi	a3,a5,16
   119c6:	c2ad                	beqz	a3,11a28 <__swsetup_r+0xe8>
   119c8:	8b91                	andi	a5,a5,4
   119ca:	eb9d                	bnez	a5,11a00 <__swsetup_r+0xc0>
   119cc:	6c14                	ld	a3,24(s0)
   119ce:	00876713          	ori	a4,a4,8
   119d2:	03071793          	slli	a5,a4,0x30
   119d6:	00e41823          	sh	a4,16(s0)
   119da:	93c1                	srli	a5,a5,0x30
   119dc:	f6d9                	bnez	a3,1196a <__swsetup_r+0x2a>
   119de:	2807f613          	andi	a2,a5,640
   119e2:	20000593          	li	a1,512
   119e6:	f8b602e3          	beq	a2,a1,1196a <__swsetup_r+0x2a>
   119ea:	85a2                	mv	a1,s0
   119ec:	8526                	mv	a0,s1
   119ee:	762000ef          	jal	ra,12150 <__smakebuf_r>
   119f2:	01041703          	lh	a4,16(s0)
   119f6:	6c14                	ld	a3,24(s0)
   119f8:	03071793          	slli	a5,a4,0x30
   119fc:	93c1                	srli	a5,a5,0x30
   119fe:	b7b5                	j	1196a <__swsetup_r+0x2a>
   11a00:	6c2c                	ld	a1,88(s0)
   11a02:	cd81                	beqz	a1,11a1a <__swsetup_r+0xda>
   11a04:	07440793          	addi	a5,s0,116
   11a08:	00f58763          	beq	a1,a5,11a16 <__swsetup_r+0xd6>
   11a0c:	8526                	mv	a0,s1
   11a0e:	4ba000ef          	jal	ra,11ec8 <_free_r>
   11a12:	01041703          	lh	a4,16(s0)
   11a16:	04043c23          	sd	zero,88(s0)
   11a1a:	6c14                	ld	a3,24(s0)
   11a1c:	fdb77713          	andi	a4,a4,-37
   11a20:	00042423          	sw	zero,8(s0)
   11a24:	e014                	sd	a3,0(s0)
   11a26:	b765                	j	119ce <__swsetup_r+0x8e>
   11a28:	47a5                	li	a5,9
   11a2a:	c09c                	sw	a5,0(s1)
   11a2c:	04076713          	ori	a4,a4,64
   11a30:	00e41823          	sh	a4,16(s0)
   11a34:	557d                	li	a0,-1
   11a36:	b7a9                	j	11980 <__swsetup_r+0x40>

0000000000011a38 <__register_exitproc>:
   11a38:	7501b703          	ld	a4,1872(gp) # 14630 <_global_impure_ptr>
   11a3c:	1f873783          	ld	a5,504(a4) # fffffffffffff1f8 <__BSS_END__+0xfffffffffffeab18>
   11a40:	c3b1                	beqz	a5,11a84 <__register_exitproc+0x4c>
   11a42:	4798                	lw	a4,8(a5)
   11a44:	487d                	li	a6,31
   11a46:	06e84263          	blt	a6,a4,11aaa <__register_exitproc+0x72>
   11a4a:	c505                	beqz	a0,11a72 <__register_exitproc+0x3a>
   11a4c:	00371813          	slli	a6,a4,0x3
   11a50:	983e                	add	a6,a6,a5
   11a52:	10c83823          	sd	a2,272(a6)
   11a56:	3107a883          	lw	a7,784(a5)
   11a5a:	4605                	li	a2,1
   11a5c:	00e6163b          	sllw	a2,a2,a4
   11a60:	00c8e8b3          	or	a7,a7,a2
   11a64:	3117a823          	sw	a7,784(a5)
   11a68:	20d83823          	sd	a3,528(a6)
   11a6c:	4689                	li	a3,2
   11a6e:	02d50063          	beq	a0,a3,11a8e <__register_exitproc+0x56>
   11a72:	00270693          	addi	a3,a4,2
   11a76:	068e                	slli	a3,a3,0x3
   11a78:	2705                	addiw	a4,a4,1
   11a7a:	c798                	sw	a4,8(a5)
   11a7c:	97b6                	add	a5,a5,a3
   11a7e:	e38c                	sd	a1,0(a5)
   11a80:	4501                	li	a0,0
   11a82:	8082                	ret
   11a84:	20070793          	addi	a5,a4,512
   11a88:	1ef73c23          	sd	a5,504(a4)
   11a8c:	bf5d                	j	11a42 <__register_exitproc+0xa>
   11a8e:	3147a683          	lw	a3,788(a5)
   11a92:	4501                	li	a0,0
   11a94:	8e55                	or	a2,a2,a3
   11a96:	00270693          	addi	a3,a4,2
   11a9a:	068e                	slli	a3,a3,0x3
   11a9c:	2705                	addiw	a4,a4,1
   11a9e:	30c7aa23          	sw	a2,788(a5)
   11aa2:	c798                	sw	a4,8(a5)
   11aa4:	97b6                	add	a5,a5,a3
   11aa6:	e38c                	sd	a1,0(a5)
   11aa8:	8082                	ret
   11aaa:	557d                	li	a0,-1
   11aac:	8082                	ret

0000000000011aae <_close_r>:
   11aae:	1101                	addi	sp,sp,-32
   11ab0:	e822                	sd	s0,16(sp)
   11ab2:	e426                	sd	s1,8(sp)
   11ab4:	842a                	mv	s0,a0
   11ab6:	852e                	mv	a0,a1
   11ab8:	ec06                	sd	ra,24(sp)
   11aba:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   11abe:	1e3000ef          	jal	ra,124a0 <_close>
   11ac2:	57fd                	li	a5,-1
   11ac4:	00f50763          	beq	a0,a5,11ad2 <_close_r+0x24>
   11ac8:	60e2                	ld	ra,24(sp)
   11aca:	6442                	ld	s0,16(sp)
   11acc:	64a2                	ld	s1,8(sp)
   11ace:	6105                	addi	sp,sp,32
   11ad0:	8082                	ret
   11ad2:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   11ad6:	dbed                	beqz	a5,11ac8 <_close_r+0x1a>
   11ad8:	60e2                	ld	ra,24(sp)
   11ada:	c01c                	sw	a5,0(s0)
   11adc:	6442                	ld	s0,16(sp)
   11ade:	64a2                	ld	s1,8(sp)
   11ae0:	6105                	addi	sp,sp,32
   11ae2:	8082                	ret

0000000000011ae4 <_fclose_r.part.0>:
   11ae4:	1101                	addi	sp,sp,-32
   11ae6:	e822                	sd	s0,16(sp)
   11ae8:	e426                	sd	s1,8(sp)
   11aea:	e04a                	sd	s2,0(sp)
   11aec:	842e                	mv	s0,a1
   11aee:	ec06                	sd	ra,24(sp)
   11af0:	84aa                	mv	s1,a0
   11af2:	0f2000ef          	jal	ra,11be4 <__sflush_r>
   11af6:	683c                	ld	a5,80(s0)
   11af8:	892a                	mv	s2,a0
   11afa:	c791                	beqz	a5,11b06 <_fclose_r.part.0+0x22>
   11afc:	780c                	ld	a1,48(s0)
   11afe:	8526                	mv	a0,s1
   11b00:	9782                	jalr	a5
   11b02:	04054663          	bltz	a0,11b4e <_fclose_r.part.0+0x6a>
   11b06:	01045783          	lhu	a5,16(s0)
   11b0a:	0807f793          	andi	a5,a5,128
   11b0e:	e7b1                	bnez	a5,11b5a <_fclose_r.part.0+0x76>
   11b10:	6c2c                	ld	a1,88(s0)
   11b12:	c991                	beqz	a1,11b26 <_fclose_r.part.0+0x42>
   11b14:	07440793          	addi	a5,s0,116
   11b18:	00f58563          	beq	a1,a5,11b22 <_fclose_r.part.0+0x3e>
   11b1c:	8526                	mv	a0,s1
   11b1e:	3aa000ef          	jal	ra,11ec8 <_free_r>
   11b22:	04043c23          	sd	zero,88(s0)
   11b26:	7c2c                	ld	a1,120(s0)
   11b28:	c591                	beqz	a1,11b34 <_fclose_r.part.0+0x50>
   11b2a:	8526                	mv	a0,s1
   11b2c:	39c000ef          	jal	ra,11ec8 <_free_r>
   11b30:	06043c23          	sd	zero,120(s0)
   11b34:	bcbfe0ef          	jal	ra,106fe <__sfp_lock_acquire>
   11b38:	00041823          	sh	zero,16(s0)
   11b3c:	bc5fe0ef          	jal	ra,10700 <__sfp_lock_release>
   11b40:	60e2                	ld	ra,24(sp)
   11b42:	6442                	ld	s0,16(sp)
   11b44:	64a2                	ld	s1,8(sp)
   11b46:	854a                	mv	a0,s2
   11b48:	6902                	ld	s2,0(sp)
   11b4a:	6105                	addi	sp,sp,32
   11b4c:	8082                	ret
   11b4e:	01045783          	lhu	a5,16(s0)
   11b52:	597d                	li	s2,-1
   11b54:	0807f793          	andi	a5,a5,128
   11b58:	dfc5                	beqz	a5,11b10 <_fclose_r.part.0+0x2c>
   11b5a:	6c0c                	ld	a1,24(s0)
   11b5c:	8526                	mv	a0,s1
   11b5e:	36a000ef          	jal	ra,11ec8 <_free_r>
   11b62:	b77d                	j	11b10 <_fclose_r.part.0+0x2c>

0000000000011b64 <_fclose_r>:
   11b64:	cd8d                	beqz	a1,11b9e <_fclose_r+0x3a>
   11b66:	1101                	addi	sp,sp,-32
   11b68:	e822                	sd	s0,16(sp)
   11b6a:	ec06                	sd	ra,24(sp)
   11b6c:	842a                	mv	s0,a0
   11b6e:	c119                	beqz	a0,11b74 <_fclose_r+0x10>
   11b70:	493c                	lw	a5,80(a0)
   11b72:	cf91                	beqz	a5,11b8e <_fclose_r+0x2a>
   11b74:	01059783          	lh	a5,16(a1)
   11b78:	e791                	bnez	a5,11b84 <_fclose_r+0x20>
   11b7a:	60e2                	ld	ra,24(sp)
   11b7c:	6442                	ld	s0,16(sp)
   11b7e:	4501                	li	a0,0
   11b80:	6105                	addi	sp,sp,32
   11b82:	8082                	ret
   11b84:	8522                	mv	a0,s0
   11b86:	6442                	ld	s0,16(sp)
   11b88:	60e2                	ld	ra,24(sp)
   11b8a:	6105                	addi	sp,sp,32
   11b8c:	bfa1                	j	11ae4 <_fclose_r.part.0>
   11b8e:	e42e                	sd	a1,8(sp)
   11b90:	b67fe0ef          	jal	ra,106f6 <__sinit>
   11b94:	65a2                	ld	a1,8(sp)
   11b96:	01059783          	lh	a5,16(a1)
   11b9a:	d3e5                	beqz	a5,11b7a <_fclose_r+0x16>
   11b9c:	b7e5                	j	11b84 <_fclose_r+0x20>
   11b9e:	4501                	li	a0,0
   11ba0:	8082                	ret

0000000000011ba2 <fclose>:
   11ba2:	cd1d                	beqz	a0,11be0 <fclose+0x3e>
   11ba4:	1101                	addi	sp,sp,-32
   11ba6:	e822                	sd	s0,16(sp)
   11ba8:	842a                	mv	s0,a0
   11baa:	7601b503          	ld	a0,1888(gp) # 14640 <_impure_ptr>
   11bae:	ec06                	sd	ra,24(sp)
   11bb0:	c119                	beqz	a0,11bb6 <fclose+0x14>
   11bb2:	493c                	lw	a5,80(a0)
   11bb4:	cf91                	beqz	a5,11bd0 <fclose+0x2e>
   11bb6:	01041783          	lh	a5,16(s0)
   11bba:	e791                	bnez	a5,11bc6 <fclose+0x24>
   11bbc:	60e2                	ld	ra,24(sp)
   11bbe:	6442                	ld	s0,16(sp)
   11bc0:	4501                	li	a0,0
   11bc2:	6105                	addi	sp,sp,32
   11bc4:	8082                	ret
   11bc6:	85a2                	mv	a1,s0
   11bc8:	6442                	ld	s0,16(sp)
   11bca:	60e2                	ld	ra,24(sp)
   11bcc:	6105                	addi	sp,sp,32
   11bce:	bf19                	j	11ae4 <_fclose_r.part.0>
   11bd0:	e42a                	sd	a0,8(sp)
   11bd2:	b25fe0ef          	jal	ra,106f6 <__sinit>
   11bd6:	01041783          	lh	a5,16(s0)
   11bda:	6522                	ld	a0,8(sp)
   11bdc:	d3e5                	beqz	a5,11bbc <fclose+0x1a>
   11bde:	b7e5                	j	11bc6 <fclose+0x24>
   11be0:	4501                	li	a0,0
   11be2:	8082                	ret

0000000000011be4 <__sflush_r>:
   11be4:	01059783          	lh	a5,16(a1)
   11be8:	7179                	addi	sp,sp,-48
   11bea:	f022                	sd	s0,32(sp)
   11bec:	e44e                	sd	s3,8(sp)
   11bee:	f406                	sd	ra,40(sp)
   11bf0:	ec26                	sd	s1,24(sp)
   11bf2:	e84a                	sd	s2,16(sp)
   11bf4:	0087f693          	andi	a3,a5,8
   11bf8:	842e                	mv	s0,a1
   11bfa:	89aa                	mv	s3,a0
   11bfc:	ead5                	bnez	a3,11cb0 <__sflush_r+0xcc>
   11bfe:	6705                	lui	a4,0x1
   11c00:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   11c04:	4594                	lw	a3,8(a1)
   11c06:	8fd9                	or	a5,a5,a4
   11c08:	00f59823          	sh	a5,16(a1)
   11c0c:	10d05063          	blez	a3,11d0c <__sflush_r+0x128>
   11c10:	6438                	ld	a4,72(s0)
   11c12:	c759                	beqz	a4,11ca0 <__sflush_r+0xbc>
   11c14:	17c2                	slli	a5,a5,0x30
   11c16:	93c1                	srli	a5,a5,0x30
   11c18:	6685                	lui	a3,0x1
   11c1a:	0009a483          	lw	s1,0(s3)
   11c1e:	8efd                	and	a3,a3,a5
   11c20:	0009a023          	sw	zero,0(s3)
   11c24:	780c                	ld	a1,48(s0)
   11c26:	e6fd                	bnez	a3,11d14 <__sflush_r+0x130>
   11c28:	4601                	li	a2,0
   11c2a:	4685                	li	a3,1
   11c2c:	854e                	mv	a0,s3
   11c2e:	9702                	jalr	a4
   11c30:	57fd                	li	a5,-1
   11c32:	862a                	mv	a2,a0
   11c34:	10f50763          	beq	a0,a5,11d42 <__sflush_r+0x15e>
   11c38:	01045783          	lhu	a5,16(s0)
   11c3c:	6438                	ld	a4,72(s0)
   11c3e:	780c                	ld	a1,48(s0)
   11c40:	8b91                	andi	a5,a5,4
   11c42:	c799                	beqz	a5,11c50 <__sflush_r+0x6c>
   11c44:	4414                	lw	a3,8(s0)
   11c46:	6c3c                	ld	a5,88(s0)
   11c48:	8e15                	sub	a2,a2,a3
   11c4a:	c399                	beqz	a5,11c50 <__sflush_r+0x6c>
   11c4c:	583c                	lw	a5,112(s0)
   11c4e:	8e1d                	sub	a2,a2,a5
   11c50:	4681                	li	a3,0
   11c52:	854e                	mv	a0,s3
   11c54:	9702                	jalr	a4
   11c56:	57fd                	li	a5,-1
   11c58:	0cf51063          	bne	a0,a5,11d18 <__sflush_r+0x134>
   11c5c:	0009a703          	lw	a4,0(s3)
   11c60:	01041783          	lh	a5,16(s0)
   11c64:	cf6d                	beqz	a4,11d5e <__sflush_r+0x17a>
   11c66:	46f5                	li	a3,29
   11c68:	00d70563          	beq	a4,a3,11c72 <__sflush_r+0x8e>
   11c6c:	46d9                	li	a3,22
   11c6e:	0ed71e63          	bne	a4,a3,11d6a <__sflush_r+0x186>
   11c72:	6c14                	ld	a3,24(s0)
   11c74:	777d                	lui	a4,0xfffff
   11c76:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb11f>
   11c7a:	8ff9                	and	a5,a5,a4
   11c7c:	00f41823          	sh	a5,16(s0)
   11c80:	00042423          	sw	zero,8(s0)
   11c84:	e014                	sd	a3,0(s0)
   11c86:	6c2c                	ld	a1,88(s0)
   11c88:	0099a023          	sw	s1,0(s3)
   11c8c:	c991                	beqz	a1,11ca0 <__sflush_r+0xbc>
   11c8e:	07440793          	addi	a5,s0,116
   11c92:	00f58563          	beq	a1,a5,11c9c <__sflush_r+0xb8>
   11c96:	854e                	mv	a0,s3
   11c98:	230000ef          	jal	ra,11ec8 <_free_r>
   11c9c:	04043c23          	sd	zero,88(s0)
   11ca0:	4501                	li	a0,0
   11ca2:	70a2                	ld	ra,40(sp)
   11ca4:	7402                	ld	s0,32(sp)
   11ca6:	64e2                	ld	s1,24(sp)
   11ca8:	6942                	ld	s2,16(sp)
   11caa:	69a2                	ld	s3,8(sp)
   11cac:	6145                	addi	sp,sp,48
   11cae:	8082                	ret
   11cb0:	0185b903          	ld	s2,24(a1)
   11cb4:	fe0906e3          	beqz	s2,11ca0 <__sflush_r+0xbc>
   11cb8:	6184                	ld	s1,0(a1)
   11cba:	03079713          	slli	a4,a5,0x30
   11cbe:	9341                	srli	a4,a4,0x30
   11cc0:	8b0d                	andi	a4,a4,3
   11cc2:	0125b023          	sd	s2,0(a1)
   11cc6:	412484bb          	subw	s1,s1,s2
   11cca:	4781                	li	a5,0
   11ccc:	e311                	bnez	a4,11cd0 <__sflush_r+0xec>
   11cce:	519c                	lw	a5,32(a1)
   11cd0:	c45c                	sw	a5,12(s0)
   11cd2:	00904663          	bgtz	s1,11cde <__sflush_r+0xfa>
   11cd6:	b7e9                	j	11ca0 <__sflush_r+0xbc>
   11cd8:	992a                	add	s2,s2,a0
   11cda:	fc9053e3          	blez	s1,11ca0 <__sflush_r+0xbc>
   11cde:	603c                	ld	a5,64(s0)
   11ce0:	780c                	ld	a1,48(s0)
   11ce2:	86a6                	mv	a3,s1
   11ce4:	864a                	mv	a2,s2
   11ce6:	854e                	mv	a0,s3
   11ce8:	9782                	jalr	a5
   11cea:	9c89                	subw	s1,s1,a0
   11cec:	fea046e3          	bgtz	a0,11cd8 <__sflush_r+0xf4>
   11cf0:	01045783          	lhu	a5,16(s0)
   11cf4:	70a2                	ld	ra,40(sp)
   11cf6:	64e2                	ld	s1,24(sp)
   11cf8:	0407e793          	ori	a5,a5,64
   11cfc:	00f41823          	sh	a5,16(s0)
   11d00:	7402                	ld	s0,32(sp)
   11d02:	6942                	ld	s2,16(sp)
   11d04:	69a2                	ld	s3,8(sp)
   11d06:	557d                	li	a0,-1
   11d08:	6145                	addi	sp,sp,48
   11d0a:	8082                	ret
   11d0c:	59b8                	lw	a4,112(a1)
   11d0e:	f0e041e3          	bgtz	a4,11c10 <__sflush_r+0x2c>
   11d12:	b779                	j	11ca0 <__sflush_r+0xbc>
   11d14:	6850                	ld	a2,144(s0)
   11d16:	b72d                	j	11c40 <__sflush_r+0x5c>
   11d18:	01045783          	lhu	a5,16(s0)
   11d1c:	777d                	lui	a4,0xfffff
   11d1e:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb11f>
   11d22:	8ff9                	and	a5,a5,a4
   11d24:	6c14                	ld	a3,24(s0)
   11d26:	0107979b          	slliw	a5,a5,0x10
   11d2a:	4107d79b          	sraiw	a5,a5,0x10
   11d2e:	6705                	lui	a4,0x1
   11d30:	00f41823          	sh	a5,16(s0)
   11d34:	00042423          	sw	zero,8(s0)
   11d38:	e014                	sd	a3,0(s0)
   11d3a:	8ff9                	and	a5,a5,a4
   11d3c:	d7a9                	beqz	a5,11c86 <__sflush_r+0xa2>
   11d3e:	e848                	sd	a0,144(s0)
   11d40:	b799                	j	11c86 <__sflush_r+0xa2>
   11d42:	0009a783          	lw	a5,0(s3)
   11d46:	ee0789e3          	beqz	a5,11c38 <__sflush_r+0x54>
   11d4a:	4775                	li	a4,29
   11d4c:	00e78563          	beq	a5,a4,11d56 <__sflush_r+0x172>
   11d50:	4759                	li	a4,22
   11d52:	f8e79fe3          	bne	a5,a4,11cf0 <__sflush_r+0x10c>
   11d56:	0099a023          	sw	s1,0(s3)
   11d5a:	4501                	li	a0,0
   11d5c:	b799                	j	11ca2 <__sflush_r+0xbe>
   11d5e:	777d                	lui	a4,0xfffff
   11d60:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb11f>
   11d64:	6c14                	ld	a3,24(s0)
   11d66:	8ff9                	and	a5,a5,a4
   11d68:	b7d9                	j	11d2e <__sflush_r+0x14a>
   11d6a:	0407e793          	ori	a5,a5,64
   11d6e:	00f41823          	sh	a5,16(s0)
   11d72:	557d                	li	a0,-1
   11d74:	b73d                	j	11ca2 <__sflush_r+0xbe>

0000000000011d76 <_fflush_r>:
   11d76:	1101                	addi	sp,sp,-32
   11d78:	e822                	sd	s0,16(sp)
   11d7a:	ec06                	sd	ra,24(sp)
   11d7c:	842a                	mv	s0,a0
   11d7e:	c119                	beqz	a0,11d84 <_fflush_r+0xe>
   11d80:	493c                	lw	a5,80(a0)
   11d82:	cb89                	beqz	a5,11d94 <_fflush_r+0x1e>
   11d84:	01059783          	lh	a5,16(a1)
   11d88:	ef89                	bnez	a5,11da2 <_fflush_r+0x2c>
   11d8a:	60e2                	ld	ra,24(sp)
   11d8c:	6442                	ld	s0,16(sp)
   11d8e:	4501                	li	a0,0
   11d90:	6105                	addi	sp,sp,32
   11d92:	8082                	ret
   11d94:	e42e                	sd	a1,8(sp)
   11d96:	961fe0ef          	jal	ra,106f6 <__sinit>
   11d9a:	65a2                	ld	a1,8(sp)
   11d9c:	01059783          	lh	a5,16(a1)
   11da0:	d7ed                	beqz	a5,11d8a <_fflush_r+0x14>
   11da2:	8522                	mv	a0,s0
   11da4:	6442                	ld	s0,16(sp)
   11da6:	60e2                	ld	ra,24(sp)
   11da8:	6105                	addi	sp,sp,32
   11daa:	bd2d                	j	11be4 <__sflush_r>

0000000000011dac <fflush>:
   11dac:	cd1d                	beqz	a0,11dea <fflush+0x3e>
   11dae:	1101                	addi	sp,sp,-32
   11db0:	e822                	sd	s0,16(sp)
   11db2:	842a                	mv	s0,a0
   11db4:	7601b503          	ld	a0,1888(gp) # 14640 <_impure_ptr>
   11db8:	ec06                	sd	ra,24(sp)
   11dba:	c119                	beqz	a0,11dc0 <fflush+0x14>
   11dbc:	493c                	lw	a5,80(a0)
   11dbe:	cf91                	beqz	a5,11dda <fflush+0x2e>
   11dc0:	01041783          	lh	a5,16(s0)
   11dc4:	e791                	bnez	a5,11dd0 <fflush+0x24>
   11dc6:	60e2                	ld	ra,24(sp)
   11dc8:	6442                	ld	s0,16(sp)
   11dca:	4501                	li	a0,0
   11dcc:	6105                	addi	sp,sp,32
   11dce:	8082                	ret
   11dd0:	85a2                	mv	a1,s0
   11dd2:	6442                	ld	s0,16(sp)
   11dd4:	60e2                	ld	ra,24(sp)
   11dd6:	6105                	addi	sp,sp,32
   11dd8:	b531                	j	11be4 <__sflush_r>
   11dda:	e42a                	sd	a0,8(sp)
   11ddc:	91bfe0ef          	jal	ra,106f6 <__sinit>
   11de0:	01041783          	lh	a5,16(s0)
   11de4:	6522                	ld	a0,8(sp)
   11de6:	d3e5                	beqz	a5,11dc6 <fflush+0x1a>
   11de8:	b7e5                	j	11dd0 <fflush+0x24>
   11dea:	7501b503          	ld	a0,1872(gp) # 14630 <_global_impure_ptr>
   11dee:	65c9                	lui	a1,0x12
   11df0:	d7658593          	addi	a1,a1,-650 # 11d76 <_fflush_r>
   11df4:	d0bfe06f          	j	10afe <_fwalk_reent>

0000000000011df8 <_malloc_trim_r>:
   11df8:	7179                	addi	sp,sp,-48
   11dfa:	e44e                	sd	s3,8(sp)
   11dfc:	69d1                	lui	s3,0x14
   11dfe:	f022                	sd	s0,32(sp)
   11e00:	ec26                	sd	s1,24(sp)
   11e02:	e84a                	sd	s2,16(sp)
   11e04:	e052                	sd	s4,0(sp)
   11e06:	f406                	sd	ra,40(sp)
   11e08:	8a2e                	mv	s4,a1
   11e0a:	892a                	mv	s2,a0
   11e0c:	e0898993          	addi	s3,s3,-504 # 13e08 <__malloc_av_>
   11e10:	ddeff0ef          	jal	ra,113ee <__malloc_lock>
   11e14:	0109b703          	ld	a4,16(s3)
   11e18:	6785                	lui	a5,0x1
   11e1a:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   11e1e:	6704                	ld	s1,8(a4)
   11e20:	41440433          	sub	s0,s0,s4
   11e24:	98f1                	andi	s1,s1,-4
   11e26:	9426                	add	s0,s0,s1
   11e28:	8031                	srli	s0,s0,0xc
   11e2a:	147d                	addi	s0,s0,-1
   11e2c:	0432                	slli	s0,s0,0xc
   11e2e:	00f44b63          	blt	s0,a5,11e44 <_malloc_trim_r+0x4c>
   11e32:	4581                	li	a1,0
   11e34:	854a                	mv	a0,s2
   11e36:	9c3ff0ef          	jal	ra,117f8 <_sbrk_r>
   11e3a:	0109b783          	ld	a5,16(s3)
   11e3e:	97a6                	add	a5,a5,s1
   11e40:	00f50e63          	beq	a0,a5,11e5c <_malloc_trim_r+0x64>
   11e44:	854a                	mv	a0,s2
   11e46:	daaff0ef          	jal	ra,113f0 <__malloc_unlock>
   11e4a:	70a2                	ld	ra,40(sp)
   11e4c:	7402                	ld	s0,32(sp)
   11e4e:	64e2                	ld	s1,24(sp)
   11e50:	6942                	ld	s2,16(sp)
   11e52:	69a2                	ld	s3,8(sp)
   11e54:	6a02                	ld	s4,0(sp)
   11e56:	4501                	li	a0,0
   11e58:	6145                	addi	sp,sp,48
   11e5a:	8082                	ret
   11e5c:	408005b3          	neg	a1,s0
   11e60:	854a                	mv	a0,s2
   11e62:	997ff0ef          	jal	ra,117f8 <_sbrk_r>
   11e66:	57fd                	li	a5,-1
   11e68:	02f50b63          	beq	a0,a5,11e9e <_malloc_trim_r+0xa6>
   11e6c:	67d1                	lui	a5,0x14
   11e6e:	6b878793          	addi	a5,a5,1720 # 146b8 <__malloc_current_mallinfo>
   11e72:	4398                	lw	a4,0(a5)
   11e74:	0109b683          	ld	a3,16(s3)
   11e78:	8c81                	sub	s1,s1,s0
   11e7a:	0014e493          	ori	s1,s1,1
   11e7e:	4087043b          	subw	s0,a4,s0
   11e82:	854a                	mv	a0,s2
   11e84:	e684                	sd	s1,8(a3)
   11e86:	c380                	sw	s0,0(a5)
   11e88:	d68ff0ef          	jal	ra,113f0 <__malloc_unlock>
   11e8c:	70a2                	ld	ra,40(sp)
   11e8e:	7402                	ld	s0,32(sp)
   11e90:	64e2                	ld	s1,24(sp)
   11e92:	6942                	ld	s2,16(sp)
   11e94:	69a2                	ld	s3,8(sp)
   11e96:	6a02                	ld	s4,0(sp)
   11e98:	4505                	li	a0,1
   11e9a:	6145                	addi	sp,sp,48
   11e9c:	8082                	ret
   11e9e:	4581                	li	a1,0
   11ea0:	854a                	mv	a0,s2
   11ea2:	957ff0ef          	jal	ra,117f8 <_sbrk_r>
   11ea6:	0109b703          	ld	a4,16(s3)
   11eaa:	46fd                	li	a3,31
   11eac:	40e507b3          	sub	a5,a0,a4
   11eb0:	f8f6dae3          	bge	a3,a5,11e44 <_malloc_trim_r+0x4c>
   11eb4:	7681b683          	ld	a3,1896(gp) # 14648 <__malloc_sbrk_base>
   11eb8:	0017e793          	ori	a5,a5,1
   11ebc:	e71c                	sd	a5,8(a4)
   11ebe:	8d15                	sub	a0,a0,a3
   11ec0:	66d1                	lui	a3,0x14
   11ec2:	6aa6ac23          	sw	a0,1720(a3) # 146b8 <__malloc_current_mallinfo>
   11ec6:	bfbd                	j	11e44 <_malloc_trim_r+0x4c>

0000000000011ec8 <_free_r>:
   11ec8:	c5ed                	beqz	a1,11fb2 <_free_r+0xea>
   11eca:	1101                	addi	sp,sp,-32
   11ecc:	e822                	sd	s0,16(sp)
   11ece:	e426                	sd	s1,8(sp)
   11ed0:	842e                	mv	s0,a1
   11ed2:	84aa                	mv	s1,a0
   11ed4:	ec06                	sd	ra,24(sp)
   11ed6:	d18ff0ef          	jal	ra,113ee <__malloc_lock>
   11eda:	ff843503          	ld	a0,-8(s0)
   11ede:	ff040713          	addi	a4,s0,-16
   11ee2:	65d1                	lui	a1,0x14
   11ee4:	ffe57793          	andi	a5,a0,-2
   11ee8:	00f70633          	add	a2,a4,a5
   11eec:	e0858593          	addi	a1,a1,-504 # 13e08 <__malloc_av_>
   11ef0:	6614                	ld	a3,8(a2)
   11ef2:	0105b803          	ld	a6,16(a1)
   11ef6:	9af1                	andi	a3,a3,-4
   11ef8:	14c80063          	beq	a6,a2,12038 <_free_r+0x170>
   11efc:	e614                	sd	a3,8(a2)
   11efe:	8905                	andi	a0,a0,1
   11f00:	00d60833          	add	a6,a2,a3
   11f04:	e141                	bnez	a0,11f84 <_free_r+0xbc>
   11f06:	ff043303          	ld	t1,-16(s0)
   11f0a:	00883803          	ld	a6,8(a6)
   11f0e:	6551                	lui	a0,0x14
   11f10:	40670733          	sub	a4,a4,t1
   11f14:	01073883          	ld	a7,16(a4)
   11f18:	e1850513          	addi	a0,a0,-488 # 13e18 <__malloc_av_+0x10>
   11f1c:	979a                	add	a5,a5,t1
   11f1e:	00187813          	andi	a6,a6,1
   11f22:	0ea88863          	beq	a7,a0,12012 <_free_r+0x14a>
   11f26:	01873303          	ld	t1,24(a4)
   11f2a:	0068bc23          	sd	t1,24(a7)
   11f2e:	01133823          	sd	a7,16(t1)
   11f32:	14080d63          	beqz	a6,1208c <_free_r+0x1c4>
   11f36:	0017e693          	ori	a3,a5,1
   11f3a:	e714                	sd	a3,8(a4)
   11f3c:	e21c                	sd	a5,0(a2)
   11f3e:	1ff00693          	li	a3,511
   11f42:	08f6e263          	bltu	a3,a5,11fc6 <_free_r+0xfe>
   11f46:	838d                	srli	a5,a5,0x3
   11f48:	0017869b          	addiw	a3,a5,1
   11f4c:	0016969b          	slliw	a3,a3,0x1
   11f50:	068e                	slli	a3,a3,0x3
   11f52:	0085b803          	ld	a6,8(a1)
   11f56:	96ae                	add	a3,a3,a1
   11f58:	6288                	ld	a0,0(a3)
   11f5a:	4027d61b          	sraiw	a2,a5,0x2
   11f5e:	4785                	li	a5,1
   11f60:	00c797b3          	sll	a5,a5,a2
   11f64:	0107e7b3          	or	a5,a5,a6
   11f68:	ff068613          	addi	a2,a3,-16
   11f6c:	ef10                	sd	a2,24(a4)
   11f6e:	eb08                	sd	a0,16(a4)
   11f70:	e59c                	sd	a5,8(a1)
   11f72:	e298                	sd	a4,0(a3)
   11f74:	ed18                	sd	a4,24(a0)
   11f76:	6442                	ld	s0,16(sp)
   11f78:	60e2                	ld	ra,24(sp)
   11f7a:	8526                	mv	a0,s1
   11f7c:	64a2                	ld	s1,8(sp)
   11f7e:	6105                	addi	sp,sp,32
   11f80:	c70ff06f          	j	113f0 <__malloc_unlock>
   11f84:	00883503          	ld	a0,8(a6)
   11f88:	8905                	andi	a0,a0,1
   11f8a:	e50d                	bnez	a0,11fb4 <_free_r+0xec>
   11f8c:	6551                	lui	a0,0x14
   11f8e:	97b6                	add	a5,a5,a3
   11f90:	e1850513          	addi	a0,a0,-488 # 13e18 <__malloc_av_+0x10>
   11f94:	6a14                	ld	a3,16(a2)
   11f96:	0017e893          	ori	a7,a5,1
   11f9a:	00f70833          	add	a6,a4,a5
   11f9e:	10a68163          	beq	a3,a0,120a0 <_free_r+0x1d8>
   11fa2:	6e10                	ld	a2,24(a2)
   11fa4:	ee90                	sd	a2,24(a3)
   11fa6:	ea14                	sd	a3,16(a2)
   11fa8:	01173423          	sd	a7,8(a4)
   11fac:	00f83023          	sd	a5,0(a6)
   11fb0:	b779                	j	11f3e <_free_r+0x76>
   11fb2:	8082                	ret
   11fb4:	0017e693          	ori	a3,a5,1
   11fb8:	fed43c23          	sd	a3,-8(s0)
   11fbc:	e21c                	sd	a5,0(a2)
   11fbe:	1ff00693          	li	a3,511
   11fc2:	f8f6f2e3          	bgeu	a3,a5,11f46 <_free_r+0x7e>
   11fc6:	0097d693          	srli	a3,a5,0x9
   11fca:	4611                	li	a2,4
   11fcc:	08d66f63          	bltu	a2,a3,1206a <_free_r+0x1a2>
   11fd0:	0067d693          	srli	a3,a5,0x6
   11fd4:	0396851b          	addiw	a0,a3,57
   11fd8:	0015151b          	slliw	a0,a0,0x1
   11fdc:	0386861b          	addiw	a2,a3,56
   11fe0:	050e                	slli	a0,a0,0x3
   11fe2:	952e                	add	a0,a0,a1
   11fe4:	6114                	ld	a3,0(a0)
   11fe6:	1541                	addi	a0,a0,-16
   11fe8:	0cd50563          	beq	a0,a3,120b2 <_free_r+0x1ea>
   11fec:	6690                	ld	a2,8(a3)
   11fee:	9a71                	andi	a2,a2,-4
   11ff0:	00c7f563          	bgeu	a5,a2,11ffa <_free_r+0x132>
   11ff4:	6a94                	ld	a3,16(a3)
   11ff6:	fed51be3          	bne	a0,a3,11fec <_free_r+0x124>
   11ffa:	6e88                	ld	a0,24(a3)
   11ffc:	ef08                	sd	a0,24(a4)
   11ffe:	eb14                	sd	a3,16(a4)
   12000:	6442                	ld	s0,16(sp)
   12002:	e918                	sd	a4,16(a0)
   12004:	60e2                	ld	ra,24(sp)
   12006:	8526                	mv	a0,s1
   12008:	64a2                	ld	s1,8(sp)
   1200a:	ee98                	sd	a4,24(a3)
   1200c:	6105                	addi	sp,sp,32
   1200e:	be2ff06f          	j	113f0 <__malloc_unlock>
   12012:	0e081c63          	bnez	a6,1210a <_free_r+0x242>
   12016:	6e0c                	ld	a1,24(a2)
   12018:	6a10                	ld	a2,16(a2)
   1201a:	97b6                	add	a5,a5,a3
   1201c:	6442                	ld	s0,16(sp)
   1201e:	ee0c                	sd	a1,24(a2)
   12020:	e990                	sd	a2,16(a1)
   12022:	0017e693          	ori	a3,a5,1
   12026:	60e2                	ld	ra,24(sp)
   12028:	e714                	sd	a3,8(a4)
   1202a:	8526                	mv	a0,s1
   1202c:	973e                	add	a4,a4,a5
   1202e:	64a2                	ld	s1,8(sp)
   12030:	e31c                	sd	a5,0(a4)
   12032:	6105                	addi	sp,sp,32
   12034:	bbcff06f          	j	113f0 <__malloc_unlock>
   12038:	8905                	andi	a0,a0,1
   1203a:	97b6                	add	a5,a5,a3
   1203c:	e909                	bnez	a0,1204e <_free_r+0x186>
   1203e:	ff043503          	ld	a0,-16(s0)
   12042:	8f09                	sub	a4,a4,a0
   12044:	6f14                	ld	a3,24(a4)
   12046:	6b10                	ld	a2,16(a4)
   12048:	97aa                	add	a5,a5,a0
   1204a:	ee14                	sd	a3,24(a2)
   1204c:	ea90                	sd	a2,16(a3)
   1204e:	0017e613          	ori	a2,a5,1
   12052:	7701b683          	ld	a3,1904(gp) # 14650 <__malloc_trim_threshold>
   12056:	e710                	sd	a2,8(a4)
   12058:	e998                	sd	a4,16(a1)
   1205a:	f0d7eee3          	bltu	a5,a3,11f76 <_free_r+0xae>
   1205e:	7881b583          	ld	a1,1928(gp) # 14668 <__malloc_top_pad>
   12062:	8526                	mv	a0,s1
   12064:	d95ff0ef          	jal	ra,11df8 <_malloc_trim_r>
   12068:	b739                	j	11f76 <_free_r+0xae>
   1206a:	4651                	li	a2,20
   1206c:	02d67263          	bgeu	a2,a3,12090 <_free_r+0x1c8>
   12070:	05400613          	li	a2,84
   12074:	04d66a63          	bltu	a2,a3,120c8 <_free_r+0x200>
   12078:	00c7d693          	srli	a3,a5,0xc
   1207c:	06f6851b          	addiw	a0,a3,111
   12080:	0015151b          	slliw	a0,a0,0x1
   12084:	06e6861b          	addiw	a2,a3,110
   12088:	050e                	slli	a0,a0,0x3
   1208a:	bfa1                	j	11fe2 <_free_r+0x11a>
   1208c:	97b6                	add	a5,a5,a3
   1208e:	b719                	j	11f94 <_free_r+0xcc>
   12090:	05c6851b          	addiw	a0,a3,92
   12094:	0015151b          	slliw	a0,a0,0x1
   12098:	05b6861b          	addiw	a2,a3,91
   1209c:	050e                	slli	a0,a0,0x3
   1209e:	b791                	j	11fe2 <_free_r+0x11a>
   120a0:	f598                	sd	a4,40(a1)
   120a2:	f198                	sd	a4,32(a1)
   120a4:	ef08                	sd	a0,24(a4)
   120a6:	eb08                	sd	a0,16(a4)
   120a8:	01173423          	sd	a7,8(a4)
   120ac:	00f83023          	sd	a5,0(a6)
   120b0:	b5d9                	j	11f76 <_free_r+0xae>
   120b2:	0085b803          	ld	a6,8(a1)
   120b6:	4026561b          	sraiw	a2,a2,0x2
   120ba:	4785                	li	a5,1
   120bc:	00c79633          	sll	a2,a5,a2
   120c0:	01066633          	or	a2,a2,a6
   120c4:	e590                	sd	a2,8(a1)
   120c6:	bf1d                	j	11ffc <_free_r+0x134>
   120c8:	15400613          	li	a2,340
   120cc:	00d66c63          	bltu	a2,a3,120e4 <_free_r+0x21c>
   120d0:	00f7d693          	srli	a3,a5,0xf
   120d4:	0786851b          	addiw	a0,a3,120
   120d8:	0015151b          	slliw	a0,a0,0x1
   120dc:	0776861b          	addiw	a2,a3,119
   120e0:	050e                	slli	a0,a0,0x3
   120e2:	b701                	j	11fe2 <_free_r+0x11a>
   120e4:	55400613          	li	a2,1364
   120e8:	00d66c63          	bltu	a2,a3,12100 <_free_r+0x238>
   120ec:	0127d693          	srli	a3,a5,0x12
   120f0:	07d6851b          	addiw	a0,a3,125
   120f4:	0015151b          	slliw	a0,a0,0x1
   120f8:	07c6861b          	addiw	a2,a3,124
   120fc:	050e                	slli	a0,a0,0x3
   120fe:	b5d5                	j	11fe2 <_free_r+0x11a>
   12100:	7f000513          	li	a0,2032
   12104:	07e00613          	li	a2,126
   12108:	bde9                	j	11fe2 <_free_r+0x11a>
   1210a:	0017e693          	ori	a3,a5,1
   1210e:	e714                	sd	a3,8(a4)
   12110:	e21c                	sd	a5,0(a2)
   12112:	b595                	j	11f76 <_free_r+0xae>

0000000000012114 <_lseek_r>:
   12114:	1101                	addi	sp,sp,-32
   12116:	872e                	mv	a4,a1
   12118:	e822                	sd	s0,16(sp)
   1211a:	e426                	sd	s1,8(sp)
   1211c:	85b2                	mv	a1,a2
   1211e:	842a                	mv	s0,a0
   12120:	8636                	mv	a2,a3
   12122:	853a                	mv	a0,a4
   12124:	ec06                	sd	ra,24(sp)
   12126:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   1212a:	42a000ef          	jal	ra,12554 <_lseek>
   1212e:	57fd                	li	a5,-1
   12130:	00f50763          	beq	a0,a5,1213e <_lseek_r+0x2a>
   12134:	60e2                	ld	ra,24(sp)
   12136:	6442                	ld	s0,16(sp)
   12138:	64a2                	ld	s1,8(sp)
   1213a:	6105                	addi	sp,sp,32
   1213c:	8082                	ret
   1213e:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   12142:	dbed                	beqz	a5,12134 <_lseek_r+0x20>
   12144:	60e2                	ld	ra,24(sp)
   12146:	c01c                	sw	a5,0(s0)
   12148:	6442                	ld	s0,16(sp)
   1214a:	64a2                	ld	s1,8(sp)
   1214c:	6105                	addi	sp,sp,32
   1214e:	8082                	ret

0000000000012150 <__smakebuf_r>:
   12150:	0105d783          	lhu	a5,16(a1)
   12154:	7135                	addi	sp,sp,-160
   12156:	e922                	sd	s0,144(sp)
   12158:	ed06                	sd	ra,152(sp)
   1215a:	e526                	sd	s1,136(sp)
   1215c:	e14a                	sd	s2,128(sp)
   1215e:	fcce                	sd	s3,120(sp)
   12160:	f8d2                	sd	s4,112(sp)
   12162:	0027f713          	andi	a4,a5,2
   12166:	842e                	mv	s0,a1
   12168:	cf19                	beqz	a4,12186 <__smakebuf_r+0x36>
   1216a:	07758793          	addi	a5,a1,119
   1216e:	e19c                	sd	a5,0(a1)
   12170:	ed9c                	sd	a5,24(a1)
   12172:	4785                	li	a5,1
   12174:	d19c                	sw	a5,32(a1)
   12176:	60ea                	ld	ra,152(sp)
   12178:	644a                	ld	s0,144(sp)
   1217a:	64aa                	ld	s1,136(sp)
   1217c:	690a                	ld	s2,128(sp)
   1217e:	79e6                	ld	s3,120(sp)
   12180:	7a46                	ld	s4,112(sp)
   12182:	610d                	addi	sp,sp,160
   12184:	8082                	ret
   12186:	01259583          	lh	a1,18(a1)
   1218a:	84aa                	mv	s1,a0
   1218c:	0605c863          	bltz	a1,121fc <__smakebuf_r+0xac>
   12190:	0030                	addi	a2,sp,8
   12192:	29e000ef          	jal	ra,12430 <_fstat_r>
   12196:	06054163          	bltz	a0,121f8 <__smakebuf_r+0xa8>
   1219a:	4932                	lw	s2,12(sp)
   1219c:	67bd                	lui	a5,0xf
   1219e:	40000a13          	li	s4,1024
   121a2:	00f97933          	and	s2,s2,a5
   121a6:	6789                	lui	a5,0x2
   121a8:	40f90933          	sub	s2,s2,a5
   121ac:	6785                	lui	a5,0x1
   121ae:	00193913          	seqz	s2,s2
   121b2:	80078993          	addi	s3,a5,-2048 # 800 <register_fini-0xf8b0>
   121b6:	85d2                	mv	a1,s4
   121b8:	8526                	mv	a0,s1
   121ba:	9cffe0ef          	jal	ra,10b88 <_malloc_r>
   121be:	01041783          	lh	a5,16(s0)
   121c2:	c939                	beqz	a0,12218 <__smakebuf_r+0xc8>
   121c4:	6741                	lui	a4,0x10
   121c6:	49e70713          	addi	a4,a4,1182 # 1049e <_cleanup_r>
   121ca:	ecb8                	sd	a4,88(s1)
   121cc:	0807e793          	ori	a5,a5,128
   121d0:	00f41823          	sh	a5,16(s0)
   121d4:	e008                	sd	a0,0(s0)
   121d6:	ec08                	sd	a0,24(s0)
   121d8:	03442023          	sw	s4,32(s0)
   121dc:	06091163          	bnez	s2,1223e <__smakebuf_r+0xee>
   121e0:	0137e7b3          	or	a5,a5,s3
   121e4:	60ea                	ld	ra,152(sp)
   121e6:	00f41823          	sh	a5,16(s0)
   121ea:	644a                	ld	s0,144(sp)
   121ec:	64aa                	ld	s1,136(sp)
   121ee:	690a                	ld	s2,128(sp)
   121f0:	79e6                	ld	s3,120(sp)
   121f2:	7a46                	ld	s4,112(sp)
   121f4:	610d                	addi	sp,sp,160
   121f6:	8082                	ret
   121f8:	01045783          	lhu	a5,16(s0)
   121fc:	0807f793          	andi	a5,a5,128
   12200:	4901                	li	s2,0
   12202:	cb95                	beqz	a5,12236 <__smakebuf_r+0xe6>
   12204:	04000a13          	li	s4,64
   12208:	85d2                	mv	a1,s4
   1220a:	8526                	mv	a0,s1
   1220c:	97dfe0ef          	jal	ra,10b88 <_malloc_r>
   12210:	01041783          	lh	a5,16(s0)
   12214:	4981                	li	s3,0
   12216:	f55d                	bnez	a0,121c4 <__smakebuf_r+0x74>
   12218:	2007f713          	andi	a4,a5,512
   1221c:	ff29                	bnez	a4,12176 <__smakebuf_r+0x26>
   1221e:	9bf1                	andi	a5,a5,-4
   12220:	0027e793          	ori	a5,a5,2
   12224:	07740713          	addi	a4,s0,119
   12228:	00f41823          	sh	a5,16(s0)
   1222c:	4785                	li	a5,1
   1222e:	e018                	sd	a4,0(s0)
   12230:	ec18                	sd	a4,24(s0)
   12232:	d01c                	sw	a5,32(s0)
   12234:	b789                	j	12176 <__smakebuf_r+0x26>
   12236:	40000a13          	li	s4,1024
   1223a:	4981                	li	s3,0
   1223c:	bfad                	j	121b6 <__smakebuf_r+0x66>
   1223e:	01241583          	lh	a1,18(s0)
   12242:	8526                	mv	a0,s1
   12244:	226000ef          	jal	ra,1246a <_isatty_r>
   12248:	e501                	bnez	a0,12250 <__smakebuf_r+0x100>
   1224a:	01041783          	lh	a5,16(s0)
   1224e:	bf49                	j	121e0 <__smakebuf_r+0x90>
   12250:	01045783          	lhu	a5,16(s0)
   12254:	9bf1                	andi	a5,a5,-4
   12256:	0017e793          	ori	a5,a5,1
   1225a:	0107979b          	slliw	a5,a5,0x10
   1225e:	4107d79b          	sraiw	a5,a5,0x10
   12262:	bfbd                	j	121e0 <__smakebuf_r+0x90>

0000000000012264 <__swhatbuf_r>:
   12264:	7175                	addi	sp,sp,-144
   12266:	e122                	sd	s0,128(sp)
   12268:	842e                	mv	s0,a1
   1226a:	01259583          	lh	a1,18(a1)
   1226e:	fca6                	sd	s1,120(sp)
   12270:	f8ca                	sd	s2,112(sp)
   12272:	e506                	sd	ra,136(sp)
   12274:	84b2                	mv	s1,a2
   12276:	8936                	mv	s2,a3
   12278:	0205cc63          	bltz	a1,122b0 <__swhatbuf_r+0x4c>
   1227c:	0030                	addi	a2,sp,8
   1227e:	1b2000ef          	jal	ra,12430 <_fstat_r>
   12282:	02054763          	bltz	a0,122b0 <__swhatbuf_r+0x4c>
   12286:	47b2                	lw	a5,12(sp)
   12288:	673d                	lui	a4,0xf
   1228a:	60aa                	ld	ra,136(sp)
   1228c:	8ff9                	and	a5,a5,a4
   1228e:	6709                	lui	a4,0x2
   12290:	8f99                	sub	a5,a5,a4
   12292:	640a                	ld	s0,128(sp)
   12294:	0017b793          	seqz	a5,a5
   12298:	00f92023          	sw	a5,0(s2)
   1229c:	40000793          	li	a5,1024
   122a0:	e09c                	sd	a5,0(s1)
   122a2:	6505                	lui	a0,0x1
   122a4:	74e6                	ld	s1,120(sp)
   122a6:	7946                	ld	s2,112(sp)
   122a8:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   122ac:	6149                	addi	sp,sp,144
   122ae:	8082                	ret
   122b0:	01041783          	lh	a5,16(s0)
   122b4:	00092023          	sw	zero,0(s2)
   122b8:	0807f793          	andi	a5,a5,128
   122bc:	cb99                	beqz	a5,122d2 <__swhatbuf_r+0x6e>
   122be:	60aa                	ld	ra,136(sp)
   122c0:	640a                	ld	s0,128(sp)
   122c2:	04000793          	li	a5,64
   122c6:	e09c                	sd	a5,0(s1)
   122c8:	7946                	ld	s2,112(sp)
   122ca:	74e6                	ld	s1,120(sp)
   122cc:	4501                	li	a0,0
   122ce:	6149                	addi	sp,sp,144
   122d0:	8082                	ret
   122d2:	60aa                	ld	ra,136(sp)
   122d4:	640a                	ld	s0,128(sp)
   122d6:	40000793          	li	a5,1024
   122da:	e09c                	sd	a5,0(s1)
   122dc:	7946                	ld	s2,112(sp)
   122de:	74e6                	ld	s1,120(sp)
   122e0:	4501                	li	a0,0
   122e2:	6149                	addi	sp,sp,144
   122e4:	8082                	ret

00000000000122e6 <_read_r>:
   122e6:	1101                	addi	sp,sp,-32
   122e8:	872e                	mv	a4,a1
   122ea:	e822                	sd	s0,16(sp)
   122ec:	e426                	sd	s1,8(sp)
   122ee:	85b2                	mv	a1,a2
   122f0:	842a                	mv	s0,a0
   122f2:	8636                	mv	a2,a3
   122f4:	853a                	mv	a0,a4
   122f6:	ec06                	sd	ra,24(sp)
   122f8:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   122fc:	284000ef          	jal	ra,12580 <_read>
   12300:	57fd                	li	a5,-1
   12302:	00f50763          	beq	a0,a5,12310 <_read_r+0x2a>
   12306:	60e2                	ld	ra,24(sp)
   12308:	6442                	ld	s0,16(sp)
   1230a:	64a2                	ld	s1,8(sp)
   1230c:	6105                	addi	sp,sp,32
   1230e:	8082                	ret
   12310:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   12314:	dbed                	beqz	a5,12306 <_read_r+0x20>
   12316:	60e2                	ld	ra,24(sp)
   12318:	c01c                	sw	a5,0(s0)
   1231a:	6442                	ld	s0,16(sp)
   1231c:	64a2                	ld	s1,8(sp)
   1231e:	6105                	addi	sp,sp,32
   12320:	8082                	ret

0000000000012322 <cleanup_glue>:
   12322:	7179                	addi	sp,sp,-48
   12324:	e84a                	sd	s2,16(sp)
   12326:	0005b903          	ld	s2,0(a1)
   1232a:	f022                	sd	s0,32(sp)
   1232c:	ec26                	sd	s1,24(sp)
   1232e:	f406                	sd	ra,40(sp)
   12330:	e44e                	sd	s3,8(sp)
   12332:	e052                	sd	s4,0(sp)
   12334:	842e                	mv	s0,a1
   12336:	84aa                	mv	s1,a0
   12338:	02090b63          	beqz	s2,1236e <cleanup_glue+0x4c>
   1233c:	00093983          	ld	s3,0(s2)
   12340:	02098363          	beqz	s3,12366 <cleanup_glue+0x44>
   12344:	0009ba03          	ld	s4,0(s3)
   12348:	000a0b63          	beqz	s4,1235e <cleanup_glue+0x3c>
   1234c:	000a3583          	ld	a1,0(s4)
   12350:	c199                	beqz	a1,12356 <cleanup_glue+0x34>
   12352:	fd1ff0ef          	jal	ra,12322 <cleanup_glue>
   12356:	85d2                	mv	a1,s4
   12358:	8526                	mv	a0,s1
   1235a:	b6fff0ef          	jal	ra,11ec8 <_free_r>
   1235e:	85ce                	mv	a1,s3
   12360:	8526                	mv	a0,s1
   12362:	b67ff0ef          	jal	ra,11ec8 <_free_r>
   12366:	85ca                	mv	a1,s2
   12368:	8526                	mv	a0,s1
   1236a:	b5fff0ef          	jal	ra,11ec8 <_free_r>
   1236e:	85a2                	mv	a1,s0
   12370:	7402                	ld	s0,32(sp)
   12372:	70a2                	ld	ra,40(sp)
   12374:	6942                	ld	s2,16(sp)
   12376:	69a2                	ld	s3,8(sp)
   12378:	6a02                	ld	s4,0(sp)
   1237a:	8526                	mv	a0,s1
   1237c:	64e2                	ld	s1,24(sp)
   1237e:	6145                	addi	sp,sp,48
   12380:	b6a1                	j	11ec8 <_free_r>

0000000000012382 <_reclaim_reent>:
   12382:	7601b783          	ld	a5,1888(gp) # 14640 <_impure_ptr>
   12386:	0aa78463          	beq	a5,a0,1242e <_reclaim_reent+0xac>
   1238a:	7d2c                	ld	a1,120(a0)
   1238c:	7179                	addi	sp,sp,-48
   1238e:	ec26                	sd	s1,24(sp)
   12390:	f406                	sd	ra,40(sp)
   12392:	f022                	sd	s0,32(sp)
   12394:	e84a                	sd	s2,16(sp)
   12396:	e44e                	sd	s3,8(sp)
   12398:	84aa                	mv	s1,a0
   1239a:	c58d                	beqz	a1,123c4 <_reclaim_reent+0x42>
   1239c:	4901                	li	s2,0
   1239e:	20000993          	li	s3,512
   123a2:	012587b3          	add	a5,a1,s2
   123a6:	6380                	ld	s0,0(a5)
   123a8:	c801                	beqz	s0,123b8 <_reclaim_reent+0x36>
   123aa:	85a2                	mv	a1,s0
   123ac:	6000                	ld	s0,0(s0)
   123ae:	8526                	mv	a0,s1
   123b0:	b19ff0ef          	jal	ra,11ec8 <_free_r>
   123b4:	f87d                	bnez	s0,123aa <_reclaim_reent+0x28>
   123b6:	7cac                	ld	a1,120(s1)
   123b8:	0921                	addi	s2,s2,8
   123ba:	ff3914e3          	bne	s2,s3,123a2 <_reclaim_reent+0x20>
   123be:	8526                	mv	a0,s1
   123c0:	b09ff0ef          	jal	ra,11ec8 <_free_r>
   123c4:	70ac                	ld	a1,96(s1)
   123c6:	c581                	beqz	a1,123ce <_reclaim_reent+0x4c>
   123c8:	8526                	mv	a0,s1
   123ca:	affff0ef          	jal	ra,11ec8 <_free_r>
   123ce:	1f84b403          	ld	s0,504(s1)
   123d2:	cc01                	beqz	s0,123ea <_reclaim_reent+0x68>
   123d4:	20048913          	addi	s2,s1,512
   123d8:	01240963          	beq	s0,s2,123ea <_reclaim_reent+0x68>
   123dc:	85a2                	mv	a1,s0
   123de:	6000                	ld	s0,0(s0)
   123e0:	8526                	mv	a0,s1
   123e2:	ae7ff0ef          	jal	ra,11ec8 <_free_r>
   123e6:	fe891be3          	bne	s2,s0,123dc <_reclaim_reent+0x5a>
   123ea:	64cc                	ld	a1,136(s1)
   123ec:	c581                	beqz	a1,123f4 <_reclaim_reent+0x72>
   123ee:	8526                	mv	a0,s1
   123f0:	ad9ff0ef          	jal	ra,11ec8 <_free_r>
   123f4:	48bc                	lw	a5,80(s1)
   123f6:	c78d                	beqz	a5,12420 <_reclaim_reent+0x9e>
   123f8:	6cbc                	ld	a5,88(s1)
   123fa:	8526                	mv	a0,s1
   123fc:	9782                	jalr	a5
   123fe:	5204b403          	ld	s0,1312(s1)
   12402:	cc19                	beqz	s0,12420 <_reclaim_reent+0x9e>
   12404:	600c                	ld	a1,0(s0)
   12406:	c581                	beqz	a1,1240e <_reclaim_reent+0x8c>
   12408:	8526                	mv	a0,s1
   1240a:	f19ff0ef          	jal	ra,12322 <cleanup_glue>
   1240e:	85a2                	mv	a1,s0
   12410:	7402                	ld	s0,32(sp)
   12412:	70a2                	ld	ra,40(sp)
   12414:	6942                	ld	s2,16(sp)
   12416:	69a2                	ld	s3,8(sp)
   12418:	8526                	mv	a0,s1
   1241a:	64e2                	ld	s1,24(sp)
   1241c:	6145                	addi	sp,sp,48
   1241e:	b46d                	j	11ec8 <_free_r>
   12420:	70a2                	ld	ra,40(sp)
   12422:	7402                	ld	s0,32(sp)
   12424:	64e2                	ld	s1,24(sp)
   12426:	6942                	ld	s2,16(sp)
   12428:	69a2                	ld	s3,8(sp)
   1242a:	6145                	addi	sp,sp,48
   1242c:	8082                	ret
   1242e:	8082                	ret

0000000000012430 <_fstat_r>:
   12430:	1101                	addi	sp,sp,-32
   12432:	872e                	mv	a4,a1
   12434:	e822                	sd	s0,16(sp)
   12436:	e426                	sd	s1,8(sp)
   12438:	842a                	mv	s0,a0
   1243a:	85b2                	mv	a1,a2
   1243c:	853a                	mv	a0,a4
   1243e:	ec06                	sd	ra,24(sp)
   12440:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   12444:	0aa000ef          	jal	ra,124ee <_fstat>
   12448:	57fd                	li	a5,-1
   1244a:	00f50763          	beq	a0,a5,12458 <_fstat_r+0x28>
   1244e:	60e2                	ld	ra,24(sp)
   12450:	6442                	ld	s0,16(sp)
   12452:	64a2                	ld	s1,8(sp)
   12454:	6105                	addi	sp,sp,32
   12456:	8082                	ret
   12458:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   1245c:	dbed                	beqz	a5,1244e <_fstat_r+0x1e>
   1245e:	60e2                	ld	ra,24(sp)
   12460:	c01c                	sw	a5,0(s0)
   12462:	6442                	ld	s0,16(sp)
   12464:	64a2                	ld	s1,8(sp)
   12466:	6105                	addi	sp,sp,32
   12468:	8082                	ret

000000000001246a <_isatty_r>:
   1246a:	1101                	addi	sp,sp,-32
   1246c:	e822                	sd	s0,16(sp)
   1246e:	e426                	sd	s1,8(sp)
   12470:	842a                	mv	s0,a0
   12472:	852e                	mv	a0,a1
   12474:	ec06                	sd	ra,24(sp)
   12476:	7801a823          	sw	zero,1936(gp) # 14670 <errno>
   1247a:	0b4000ef          	jal	ra,1252e <_isatty>
   1247e:	57fd                	li	a5,-1
   12480:	00f50763          	beq	a0,a5,1248e <_isatty_r+0x24>
   12484:	60e2                	ld	ra,24(sp)
   12486:	6442                	ld	s0,16(sp)
   12488:	64a2                	ld	s1,8(sp)
   1248a:	6105                	addi	sp,sp,32
   1248c:	8082                	ret
   1248e:	7901a783          	lw	a5,1936(gp) # 14670 <errno>
   12492:	dbed                	beqz	a5,12484 <_isatty_r+0x1a>
   12494:	60e2                	ld	ra,24(sp)
   12496:	c01c                	sw	a5,0(s0)
   12498:	6442                	ld	s0,16(sp)
   1249a:	64a2                	ld	s1,8(sp)
   1249c:	6105                	addi	sp,sp,32
   1249e:	8082                	ret

00000000000124a0 <_close>:
   124a0:	1141                	addi	sp,sp,-16
   124a2:	e406                	sd	ra,8(sp)
   124a4:	e022                	sd	s0,0(sp)
   124a6:	03900893          	li	a7,57
   124aa:	00000073          	ecall
   124ae:	842a                	mv	s0,a0
   124b0:	00054763          	bltz	a0,124be <_close+0x1e>
   124b4:	2501                	sext.w	a0,a0
   124b6:	60a2                	ld	ra,8(sp)
   124b8:	6402                	ld	s0,0(sp)
   124ba:	0141                	addi	sp,sp,16
   124bc:	8082                	ret
   124be:	1c8000ef          	jal	ra,12686 <__errno>
   124c2:	4080043b          	negw	s0,s0
   124c6:	c100                	sw	s0,0(a0)
   124c8:	557d                	li	a0,-1
   124ca:	b7f5                	j	124b6 <_close+0x16>

00000000000124cc <_exit>:
   124cc:	05d00893          	li	a7,93
   124d0:	00000073          	ecall
   124d4:	00054363          	bltz	a0,124da <_exit+0xe>
   124d8:	a001                	j	124d8 <_exit+0xc>
   124da:	1141                	addi	sp,sp,-16
   124dc:	e022                	sd	s0,0(sp)
   124de:	842a                	mv	s0,a0
   124e0:	e406                	sd	ra,8(sp)
   124e2:	4080043b          	negw	s0,s0
   124e6:	1a0000ef          	jal	ra,12686 <__errno>
   124ea:	c100                	sw	s0,0(a0)
   124ec:	a001                	j	124ec <_exit+0x20>

00000000000124ee <_fstat>:
   124ee:	7135                	addi	sp,sp,-160
   124f0:	e526                	sd	s1,136(sp)
   124f2:	ed06                	sd	ra,152(sp)
   124f4:	84ae                	mv	s1,a1
   124f6:	e922                	sd	s0,144(sp)
   124f8:	05000893          	li	a7,80
   124fc:	858a                	mv	a1,sp
   124fe:	00000073          	ecall
   12502:	842a                	mv	s0,a0
   12504:	00054e63          	bltz	a0,12520 <_fstat+0x32>
   12508:	0005041b          	sext.w	s0,a0
   1250c:	8526                	mv	a0,s1
   1250e:	858a                	mv	a1,sp
   12510:	11c000ef          	jal	ra,1262c <_conv_stat>
   12514:	60ea                	ld	ra,152(sp)
   12516:	8522                	mv	a0,s0
   12518:	644a                	ld	s0,144(sp)
   1251a:	64aa                	ld	s1,136(sp)
   1251c:	610d                	addi	sp,sp,160
   1251e:	8082                	ret
   12520:	4080043b          	negw	s0,s0
   12524:	162000ef          	jal	ra,12686 <__errno>
   12528:	c100                	sw	s0,0(a0)
   1252a:	547d                	li	s0,-1
   1252c:	b7c5                	j	1250c <_fstat+0x1e>

000000000001252e <_isatty>:
   1252e:	7119                	addi	sp,sp,-128
   12530:	002c                	addi	a1,sp,8
   12532:	fc86                	sd	ra,120(sp)
   12534:	fbbff0ef          	jal	ra,124ee <_fstat>
   12538:	57fd                	li	a5,-1
   1253a:	00f50963          	beq	a0,a5,1254c <_isatty+0x1e>
   1253e:	4532                	lw	a0,12(sp)
   12540:	70e6                	ld	ra,120(sp)
   12542:	40d5551b          	sraiw	a0,a0,0xd
   12546:	8905                	andi	a0,a0,1
   12548:	6109                	addi	sp,sp,128
   1254a:	8082                	ret
   1254c:	70e6                	ld	ra,120(sp)
   1254e:	4501                	li	a0,0
   12550:	6109                	addi	sp,sp,128
   12552:	8082                	ret

0000000000012554 <_lseek>:
   12554:	1141                	addi	sp,sp,-16
   12556:	e406                	sd	ra,8(sp)
   12558:	e022                	sd	s0,0(sp)
   1255a:	03e00893          	li	a7,62
   1255e:	00000073          	ecall
   12562:	842a                	mv	s0,a0
   12564:	00054763          	bltz	a0,12572 <_lseek+0x1e>
   12568:	60a2                	ld	ra,8(sp)
   1256a:	8522                	mv	a0,s0
   1256c:	6402                	ld	s0,0(sp)
   1256e:	0141                	addi	sp,sp,16
   12570:	8082                	ret
   12572:	4080043b          	negw	s0,s0
   12576:	110000ef          	jal	ra,12686 <__errno>
   1257a:	c100                	sw	s0,0(a0)
   1257c:	547d                	li	s0,-1
   1257e:	b7ed                	j	12568 <_lseek+0x14>

0000000000012580 <_read>:
   12580:	1141                	addi	sp,sp,-16
   12582:	e406                	sd	ra,8(sp)
   12584:	e022                	sd	s0,0(sp)
   12586:	03f00893          	li	a7,63
   1258a:	00000073          	ecall
   1258e:	842a                	mv	s0,a0
   12590:	00054763          	bltz	a0,1259e <_read+0x1e>
   12594:	60a2                	ld	ra,8(sp)
   12596:	8522                	mv	a0,s0
   12598:	6402                	ld	s0,0(sp)
   1259a:	0141                	addi	sp,sp,16
   1259c:	8082                	ret
   1259e:	4080043b          	negw	s0,s0
   125a2:	0e4000ef          	jal	ra,12686 <__errno>
   125a6:	c100                	sw	s0,0(a0)
   125a8:	547d                	li	s0,-1
   125aa:	b7ed                	j	12594 <_read+0x14>

00000000000125ac <_sbrk>:
   125ac:	7981b703          	ld	a4,1944(gp) # 14678 <heap_end.0>
   125b0:	1141                	addi	sp,sp,-16
   125b2:	e406                	sd	ra,8(sp)
   125b4:	87aa                	mv	a5,a0
   125b6:	ef01                	bnez	a4,125ce <_sbrk+0x22>
   125b8:	0d600893          	li	a7,214
   125bc:	4501                	li	a0,0
   125be:	00000073          	ecall
   125c2:	567d                	li	a2,-1
   125c4:	872a                	mv	a4,a0
   125c6:	02c50563          	beq	a0,a2,125f0 <_sbrk+0x44>
   125ca:	78a1bc23          	sd	a0,1944(gp) # 14678 <heap_end.0>
   125ce:	0d600893          	li	a7,214
   125d2:	00e78533          	add	a0,a5,a4
   125d6:	00000073          	ecall
   125da:	7981b703          	ld	a4,1944(gp) # 14678 <heap_end.0>
   125de:	97ba                	add	a5,a5,a4
   125e0:	00f51863          	bne	a0,a5,125f0 <_sbrk+0x44>
   125e4:	60a2                	ld	ra,8(sp)
   125e6:	78a1bc23          	sd	a0,1944(gp) # 14678 <heap_end.0>
   125ea:	853a                	mv	a0,a4
   125ec:	0141                	addi	sp,sp,16
   125ee:	8082                	ret
   125f0:	096000ef          	jal	ra,12686 <__errno>
   125f4:	60a2                	ld	ra,8(sp)
   125f6:	47b1                	li	a5,12
   125f8:	c11c                	sw	a5,0(a0)
   125fa:	557d                	li	a0,-1
   125fc:	0141                	addi	sp,sp,16
   125fe:	8082                	ret

0000000000012600 <_write>:
   12600:	1141                	addi	sp,sp,-16
   12602:	e406                	sd	ra,8(sp)
   12604:	e022                	sd	s0,0(sp)
   12606:	04000893          	li	a7,64
   1260a:	00000073          	ecall
   1260e:	842a                	mv	s0,a0
   12610:	00054763          	bltz	a0,1261e <_write+0x1e>
   12614:	60a2                	ld	ra,8(sp)
   12616:	8522                	mv	a0,s0
   12618:	6402                	ld	s0,0(sp)
   1261a:	0141                	addi	sp,sp,16
   1261c:	8082                	ret
   1261e:	4080043b          	negw	s0,s0
   12622:	064000ef          	jal	ra,12686 <__errno>
   12626:	c100                	sw	s0,0(a0)
   12628:	547d                	li	s0,-1
   1262a:	b7ed                	j	12614 <_write+0x14>

000000000001262c <_conv_stat>:
   1262c:	0005b383          	ld	t2,0(a1)
   12630:	0085b283          	ld	t0,8(a1)
   12634:	0105af83          	lw	t6,16(a1)
   12638:	0145af03          	lw	t5,20(a1)
   1263c:	0185ae83          	lw	t4,24(a1)
   12640:	01c5ae03          	lw	t3,28(a1)
   12644:	0205b303          	ld	t1,32(a1)
   12648:	0305b883          	ld	a7,48(a1)
   1264c:	0405b803          	ld	a6,64(a1)
   12650:	5d90                	lw	a2,56(a1)
   12652:	65b4                	ld	a3,72(a1)
   12654:	6db8                	ld	a4,88(a1)
   12656:	75bc                	ld	a5,104(a1)
   12658:	00751023          	sh	t2,0(a0)
   1265c:	00551123          	sh	t0,2(a0)
   12660:	01f52223          	sw	t6,4(a0)
   12664:	01e51423          	sh	t5,8(a0)
   12668:	01d51523          	sh	t4,10(a0)
   1266c:	01c51623          	sh	t3,12(a0)
   12670:	00651723          	sh	t1,14(a0)
   12674:	01153823          	sd	a7,16(a0)
   12678:	05053823          	sd	a6,80(a0)
   1267c:	e530                	sd	a2,72(a0)
   1267e:	ed14                	sd	a3,24(a0)
   12680:	f518                	sd	a4,40(a0)
   12682:	fd1c                	sd	a5,56(a0)
   12684:	8082                	ret

0000000000012686 <__errno>:
   12686:	7601b503          	ld	a0,1888(gp) # 14640 <_impure_ptr>
   1268a:	8082                	ret
