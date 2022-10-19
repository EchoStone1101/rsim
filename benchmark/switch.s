
switch:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100b0 <register_fini>:
   100b0:	00000793          	li	a5,0
   100b4:	c789                	beqz	a5,100be <register_fini+0xe>
   100b6:	6545                	lui	a0,0x11
   100b8:	82650513          	addi	a0,a0,-2010 # 10826 <__libc_fini_array>
   100bc:	a9e9                	j	10596 <atexit>
   100be:	8082                	ret

00000000000100c0 <_start>:
   100c0:	00004197          	auipc	gp,0x4
   100c4:	f7018193          	addi	gp,gp,-144 # 14030 <__global_pointer$>
   100c8:	77818513          	addi	a0,gp,1912 # 147a8 <__malloc_max_total_mem>
   100cc:	00004617          	auipc	a2,0x4
   100d0:	76460613          	addi	a2,a2,1892 # 14830 <__BSS_END__>
   100d4:	8e09                	sub	a2,a2,a0
   100d6:	4581                	li	a1,0
   100d8:	23c000ef          	jal	ra,10314 <memset>
   100dc:	00000517          	auipc	a0,0x0
   100e0:	4ba50513          	addi	a0,a0,1210 # 10596 <atexit>
   100e4:	c519                	beqz	a0,100f2 <_start+0x32>
   100e6:	00000517          	auipc	a0,0x0
   100ea:	74050513          	addi	a0,a0,1856 # 10826 <__libc_fini_array>
   100ee:	4a8000ef          	jal	ra,10596 <atexit>
   100f2:	1b8000ef          	jal	ra,102aa <__libc_init_array>
   100f6:	4502                	lw	a0,0(sp)
   100f8:	002c                	addi	a1,sp,8
   100fa:	4601                	li	a2,0
   100fc:	0d4000ef          	jal	ra,101d0 <main>
   10100:	a271                	j	1028c <exit>

0000000000010102 <__do_global_dtors_aux>:
   10102:	7a01c703          	lbu	a4,1952(gp) # 147d0 <completed.1>
   10106:	e715                	bnez	a4,10132 <__do_global_dtors_aux+0x30>
   10108:	1141                	addi	sp,sp,-16
   1010a:	e022                	sd	s0,0(sp)
   1010c:	843e                	mv	s0,a5
   1010e:	e406                	sd	ra,8(sp)
   10110:	00000793          	li	a5,0
   10114:	cb81                	beqz	a5,10124 <__do_global_dtors_aux+0x22>
   10116:	654d                	lui	a0,0x13
   10118:	7f450513          	addi	a0,a0,2036 # 137f4 <__FRAME_END__>
   1011c:	00000097          	auipc	ra,0x0
   10120:	000000e7          	jalr	zero # 0 <register_fini-0x100b0>
   10124:	4785                	li	a5,1
   10126:	60a2                	ld	ra,8(sp)
   10128:	7af18023          	sb	a5,1952(gp) # 147d0 <completed.1>
   1012c:	6402                	ld	s0,0(sp)
   1012e:	0141                	addi	sp,sp,16
   10130:	8082                	ret
   10132:	8082                	ret

0000000000010134 <frame_dummy>:
   10134:	00000793          	li	a5,0
   10138:	cb91                	beqz	a5,1014c <frame_dummy+0x18>
   1013a:	654d                	lui	a0,0x13
   1013c:	7a818593          	addi	a1,gp,1960 # 147d8 <object.0>
   10140:	7f450513          	addi	a0,a0,2036 # 137f4 <__FRAME_END__>
   10144:	00000317          	auipc	t1,0x0
   10148:	00000067          	jr	zero # 0 <register_fini-0x100b0>
   1014c:	8082                	ret
	...

0000000000010150 <foo>:
   10150:	ff010113          	addi	sp,sp,-16
   10154:	00113423          	sd	ra,8(sp)
   10158:	00813023          	sd	s0,0(sp)
   1015c:	01010413          	addi	s0,sp,16
   10160:	000127b7          	lui	a5,0x12
   10164:	79878513          	addi	a0,a5,1944 # 12798 <__errno+0x8>
   10168:	2d4000ef          	jal	ra,1043c <puts>
   1016c:	00000013          	nop
   10170:	00813083          	ld	ra,8(sp)
   10174:	00013403          	ld	s0,0(sp)
   10178:	01010113          	addi	sp,sp,16
   1017c:	00008067          	ret

0000000000010180 <bar>:
   10180:	ff010113          	addi	sp,sp,-16
   10184:	00113423          	sd	ra,8(sp)
   10188:	00813023          	sd	s0,0(sp)
   1018c:	01010413          	addi	s0,sp,16
   10190:	000127b7          	lui	a5,0x12
   10194:	7a078513          	addi	a0,a5,1952 # 127a0 <__errno+0x10>
   10198:	2a4000ef          	jal	ra,1043c <puts>
   1019c:	00000013          	nop
   101a0:	00813083          	ld	ra,8(sp)
   101a4:	00013403          	ld	s0,0(sp)
   101a8:	01010113          	addi	sp,sp,16
   101ac:	00008067          	ret

00000000000101b0 <seed>:
   101b0:	ff010113          	addi	sp,sp,-16
   101b4:	00813423          	sd	s0,8(sp)
   101b8:	01010413          	addi	s0,sp,16
   101bc:	00500793          	li	a5,5
   101c0:	00078513          	mv	a0,a5
   101c4:	00813403          	ld	s0,8(sp)
   101c8:	01010113          	addi	sp,sp,16
   101cc:	00008067          	ret

00000000000101d0 <main>:
   101d0:	ff010113          	addi	sp,sp,-16
   101d4:	00113423          	sd	ra,8(sp)
   101d8:	00813023          	sd	s0,0(sp)
   101dc:	01010413          	addi	s0,sp,16
   101e0:	fd1ff0ef          	jal	ra,101b0 <seed>
   101e4:	00050793          	mv	a5,a0
   101e8:	00078713          	mv	a4,a5
   101ec:	00070693          	mv	a3,a4
   101f0:	00700793          	li	a5,7
   101f4:	08d7e063          	bltu	a5,a3,10274 <main+0xa4>
   101f8:	00271713          	slli	a4,a4,0x2
   101fc:	000127b7          	lui	a5,0x12
   10200:	7cc78793          	addi	a5,a5,1996 # 127cc <__errno+0x3c>
   10204:	00f707b3          	add	a5,a4,a5
   10208:	0007a783          	lw	a5,0(a5)
   1020c:	00078067          	jr	a5
   10210:	000127b7          	lui	a5,0x12
   10214:	7a878513          	addi	a0,a5,1960 # 127a8 <__errno+0x18>
   10218:	224000ef          	jal	ra,1043c <puts>
   1021c:	0580006f          	j	10274 <main+0xa4>
   10220:	000127b7          	lui	a5,0x12
   10224:	7b078513          	addi	a0,a5,1968 # 127b0 <__errno+0x20>
   10228:	214000ef          	jal	ra,1043c <puts>
   1022c:	0480006f          	j	10274 <main+0xa4>
   10230:	000127b7          	lui	a5,0x12
   10234:	7b878513          	addi	a0,a5,1976 # 127b8 <__errno+0x28>
   10238:	204000ef          	jal	ra,1043c <puts>
   1023c:	0380006f          	j	10274 <main+0xa4>
   10240:	000127b7          	lui	a5,0x12
   10244:	7c078513          	addi	a0,a5,1984 # 127c0 <__errno+0x30>
   10248:	1f4000ef          	jal	ra,1043c <puts>
   1024c:	0280006f          	j	10274 <main+0xa4>
   10250:	000127b7          	lui	a5,0x12
   10254:	7a878513          	addi	a0,a5,1960 # 127a8 <__errno+0x18>
   10258:	1e4000ef          	jal	ra,1043c <puts>
   1025c:	0180006f          	j	10274 <main+0xa4>
   10260:	ef1ff0ef          	jal	ra,10150 <foo>
   10264:	f1dff0ef          	jal	ra,10180 <bar>
   10268:	000127b7          	lui	a5,0x12
   1026c:	7c878513          	addi	a0,a5,1992 # 127c8 <__errno+0x38>
   10270:	1cc000ef          	jal	ra,1043c <puts>
   10274:	00000793          	li	a5,0
   10278:	00078513          	mv	a0,a5
   1027c:	00813083          	ld	ra,8(sp)
   10280:	00013403          	ld	s0,0(sp)
   10284:	01010113          	addi	sp,sp,16
   10288:	00008067          	ret

000000000001028c <exit>:
   1028c:	1141                	addi	sp,sp,-16
   1028e:	4581                	li	a1,0
   10290:	e022                	sd	s0,0(sp)
   10292:	e406                	sd	ra,8(sp)
   10294:	842a                	mv	s0,a0
   10296:	23e000ef          	jal	ra,104d4 <__call_exitprocs>
   1029a:	7501b503          	ld	a0,1872(gp) # 14780 <_global_impure_ptr>
   1029e:	6d3c                	ld	a5,88(a0)
   102a0:	c391                	beqz	a5,102a4 <exit+0x18>
   102a2:	9782                	jalr	a5
   102a4:	8522                	mv	a0,s0
   102a6:	330020ef          	jal	ra,125d6 <_exit>

00000000000102aa <__libc_init_array>:
   102aa:	1101                	addi	sp,sp,-32
   102ac:	e822                	sd	s0,16(sp)
   102ae:	e04a                	sd	s2,0(sp)
   102b0:	644d                	lui	s0,0x13
   102b2:	694d                	lui	s2,0x13
   102b4:	7f840793          	addi	a5,s0,2040 # 137f8 <__init_array_start>
   102b8:	7f890913          	addi	s2,s2,2040 # 137f8 <__init_array_start>
   102bc:	40f90933          	sub	s2,s2,a5
   102c0:	ec06                	sd	ra,24(sp)
   102c2:	e426                	sd	s1,8(sp)
   102c4:	40395913          	srai	s2,s2,0x3
   102c8:	00090b63          	beqz	s2,102de <__libc_init_array+0x34>
   102cc:	7f840413          	addi	s0,s0,2040
   102d0:	4481                	li	s1,0
   102d2:	601c                	ld	a5,0(s0)
   102d4:	0485                	addi	s1,s1,1
   102d6:	0421                	addi	s0,s0,8
   102d8:	9782                	jalr	a5
   102da:	fe991ce3          	bne	s2,s1,102d2 <__libc_init_array+0x28>
   102de:	644d                	lui	s0,0x13
   102e0:	6951                	lui	s2,0x14
   102e2:	7f840793          	addi	a5,s0,2040 # 137f8 <__init_array_start>
   102e6:	80890913          	addi	s2,s2,-2040 # 13808 <__do_global_dtors_aux_fini_array_entry>
   102ea:	40f90933          	sub	s2,s2,a5
   102ee:	40395913          	srai	s2,s2,0x3
   102f2:	00090b63          	beqz	s2,10308 <__libc_init_array+0x5e>
   102f6:	7f840413          	addi	s0,s0,2040
   102fa:	4481                	li	s1,0
   102fc:	601c                	ld	a5,0(s0)
   102fe:	0485                	addi	s1,s1,1
   10300:	0421                	addi	s0,s0,8
   10302:	9782                	jalr	a5
   10304:	fe991ce3          	bne	s2,s1,102fc <__libc_init_array+0x52>
   10308:	60e2                	ld	ra,24(sp)
   1030a:	6442                	ld	s0,16(sp)
   1030c:	64a2                	ld	s1,8(sp)
   1030e:	6902                	ld	s2,0(sp)
   10310:	6105                	addi	sp,sp,32
   10312:	8082                	ret

0000000000010314 <memset>:
   10314:	433d                	li	t1,15
   10316:	872a                	mv	a4,a0
   10318:	02c37163          	bgeu	t1,a2,1033a <memset+0x26>
   1031c:	00f77793          	andi	a5,a4,15
   10320:	e3c1                	bnez	a5,103a0 <memset+0x8c>
   10322:	e1bd                	bnez	a1,10388 <memset+0x74>
   10324:	ff067693          	andi	a3,a2,-16
   10328:	8a3d                	andi	a2,a2,15
   1032a:	96ba                	add	a3,a3,a4
   1032c:	e30c                	sd	a1,0(a4)
   1032e:	e70c                	sd	a1,8(a4)
   10330:	0741                	addi	a4,a4,16
   10332:	fed76de3          	bltu	a4,a3,1032c <memset+0x18>
   10336:	e211                	bnez	a2,1033a <memset+0x26>
   10338:	8082                	ret
   1033a:	40c306b3          	sub	a3,t1,a2
   1033e:	068a                	slli	a3,a3,0x2
   10340:	00000297          	auipc	t0,0x0
   10344:	9696                	add	a3,a3,t0
   10346:	00a68067          	jr	10(a3)
   1034a:	00b70723          	sb	a1,14(a4)
   1034e:	00b706a3          	sb	a1,13(a4)
   10352:	00b70623          	sb	a1,12(a4)
   10356:	00b705a3          	sb	a1,11(a4)
   1035a:	00b70523          	sb	a1,10(a4)
   1035e:	00b704a3          	sb	a1,9(a4)
   10362:	00b70423          	sb	a1,8(a4)
   10366:	00b703a3          	sb	a1,7(a4)
   1036a:	00b70323          	sb	a1,6(a4)
   1036e:	00b702a3          	sb	a1,5(a4)
   10372:	00b70223          	sb	a1,4(a4)
   10376:	00b701a3          	sb	a1,3(a4)
   1037a:	00b70123          	sb	a1,2(a4)
   1037e:	00b700a3          	sb	a1,1(a4)
   10382:	00b70023          	sb	a1,0(a4)
   10386:	8082                	ret
   10388:	0ff5f593          	zext.b	a1,a1
   1038c:	00859693          	slli	a3,a1,0x8
   10390:	8dd5                	or	a1,a1,a3
   10392:	01059693          	slli	a3,a1,0x10
   10396:	8dd5                	or	a1,a1,a3
   10398:	02059693          	slli	a3,a1,0x20
   1039c:	8dd5                	or	a1,a1,a3
   1039e:	b759                	j	10324 <memset+0x10>
   103a0:	00279693          	slli	a3,a5,0x2
   103a4:	00000297          	auipc	t0,0x0
   103a8:	9696                	add	a3,a3,t0
   103aa:	8286                	mv	t0,ra
   103ac:	fa2680e7          	jalr	-94(a3)
   103b0:	8096                	mv	ra,t0
   103b2:	17c1                	addi	a5,a5,-16
   103b4:	8f1d                	sub	a4,a4,a5
   103b6:	963e                	add	a2,a2,a5
   103b8:	f8c371e3          	bgeu	t1,a2,1033a <memset+0x26>
   103bc:	b79d                	j	10322 <memset+0xe>

00000000000103be <_puts_r>:
   103be:	7159                	addi	sp,sp,-112
   103c0:	f0a2                	sd	s0,96(sp)
   103c2:	842a                	mv	s0,a0
   103c4:	852e                	mv	a0,a1
   103c6:	eca6                	sd	s1,88(sp)
   103c8:	f486                	sd	ra,104(sp)
   103ca:	84ae                	mv	s1,a1
   103cc:	078000ef          	jal	ra,10444 <strlen>
   103d0:	67c9                	lui	a5,0x12
   103d2:	7f078793          	addi	a5,a5,2032 # 127f0 <__errno+0x60>
   103d6:	e0be                	sd	a5,64(sp)
   103d8:	4785                	li	a5,1
   103da:	e4be                	sd	a5,72(sp)
   103dc:	4838                	lw	a4,80(s0)
   103de:	181c                	addi	a5,sp,48
   103e0:	00150693          	addi	a3,a0,1
   103e4:	ec3e                	sd	a5,24(sp)
   103e6:	4789                	li	a5,2
   103e8:	f826                	sd	s1,48(sp)
   103ea:	fc2a                	sd	a0,56(sp)
   103ec:	f436                	sd	a3,40(sp)
   103ee:	d03e                	sw	a5,32(sp)
   103f0:	680c                	ld	a1,16(s0)
   103f2:	cf0d                	beqz	a4,1042c <_puts_r+0x6e>
   103f4:	01059783          	lh	a5,16(a1)
   103f8:	03279713          	slli	a4,a5,0x32
   103fc:	00074d63          	bltz	a4,10416 <_puts_r+0x58>
   10400:	0ac5a703          	lw	a4,172(a1)
   10404:	6689                	lui	a3,0x2
   10406:	8fd5                	or	a5,a5,a3
   10408:	76f9                	lui	a3,0xffffe
   1040a:	16fd                	addi	a3,a3,-1
   1040c:	8f75                	and	a4,a4,a3
   1040e:	00f59823          	sh	a5,16(a1)
   10412:	0ae5a623          	sw	a4,172(a1)
   10416:	0830                	addi	a2,sp,24
   10418:	8522                	mv	a0,s0
   1041a:	440000ef          	jal	ra,1085a <__sfvwrite_r>
   1041e:	ed09                	bnez	a0,10438 <_puts_r+0x7a>
   10420:	4529                	li	a0,10
   10422:	70a6                	ld	ra,104(sp)
   10424:	7406                	ld	s0,96(sp)
   10426:	64e6                	ld	s1,88(sp)
   10428:	6165                	addi	sp,sp,112
   1042a:	8082                	ret
   1042c:	8522                	mv	a0,s0
   1042e:	e42e                	sd	a1,8(sp)
   10430:	3ce000ef          	jal	ra,107fe <__sinit>
   10434:	65a2                	ld	a1,8(sp)
   10436:	bf7d                	j	103f4 <_puts_r+0x36>
   10438:	557d                	li	a0,-1
   1043a:	b7e5                	j	10422 <_puts_r+0x64>

000000000001043c <puts>:
   1043c:	85aa                	mv	a1,a0
   1043e:	7601b503          	ld	a0,1888(gp) # 14790 <_impure_ptr>
   10442:	bfb5                	j	103be <_puts_r>

0000000000010444 <strlen>:
   10444:	00757793          	andi	a5,a0,7
   10448:	872a                	mv	a4,a0
   1044a:	eba9                	bnez	a5,1049c <strlen+0x58>
   1044c:	7381b683          	ld	a3,1848(gp) # 14768 <__SDATA_BEGIN__>
   10450:	55fd                	li	a1,-1
   10452:	6310                	ld	a2,0(a4)
   10454:	0721                	addi	a4,a4,8
   10456:	00d677b3          	and	a5,a2,a3
   1045a:	97b6                	add	a5,a5,a3
   1045c:	8fd1                	or	a5,a5,a2
   1045e:	8fd5                	or	a5,a5,a3
   10460:	feb789e3          	beq	a5,a1,10452 <strlen+0xe>
   10464:	ff874683          	lbu	a3,-8(a4)
   10468:	40a707b3          	sub	a5,a4,a0
   1046c:	c6a9                	beqz	a3,104b6 <strlen+0x72>
   1046e:	ff974683          	lbu	a3,-7(a4)
   10472:	ce9d                	beqz	a3,104b0 <strlen+0x6c>
   10474:	ffa74683          	lbu	a3,-6(a4)
   10478:	c6a9                	beqz	a3,104c2 <strlen+0x7e>
   1047a:	ffb74683          	lbu	a3,-5(a4)
   1047e:	ce9d                	beqz	a3,104bc <strlen+0x78>
   10480:	ffc74683          	lbu	a3,-4(a4)
   10484:	ffd74603          	lbu	a2,-3(a4)
   10488:	ffe74503          	lbu	a0,-2(a4)
   1048c:	ce95                	beqz	a3,104c8 <strlen+0x84>
   1048e:	c221                	beqz	a2,104ce <strlen+0x8a>
   10490:	00a03533          	snez	a0,a0
   10494:	953e                	add	a0,a0,a5
   10496:	1579                	addi	a0,a0,-2
   10498:	8082                	ret
   1049a:	dacd                	beqz	a3,1044c <strlen+0x8>
   1049c:	00074783          	lbu	a5,0(a4)
   104a0:	0705                	addi	a4,a4,1
   104a2:	00777693          	andi	a3,a4,7
   104a6:	fbf5                	bnez	a5,1049a <strlen+0x56>
   104a8:	8f09                	sub	a4,a4,a0
   104aa:	fff70513          	addi	a0,a4,-1
   104ae:	8082                	ret
   104b0:	ff978513          	addi	a0,a5,-7
   104b4:	8082                	ret
   104b6:	ff878513          	addi	a0,a5,-8
   104ba:	8082                	ret
   104bc:	ffb78513          	addi	a0,a5,-5
   104c0:	8082                	ret
   104c2:	ffa78513          	addi	a0,a5,-6
   104c6:	8082                	ret
   104c8:	ffc78513          	addi	a0,a5,-4
   104cc:	8082                	ret
   104ce:	ffd78513          	addi	a0,a5,-3
   104d2:	8082                	ret

00000000000104d4 <__call_exitprocs>:
   104d4:	715d                	addi	sp,sp,-80
   104d6:	f052                	sd	s4,32(sp)
   104d8:	7501ba03          	ld	s4,1872(gp) # 14780 <_global_impure_ptr>
   104dc:	f84a                	sd	s2,48(sp)
   104de:	e486                	sd	ra,72(sp)
   104e0:	1f8a3903          	ld	s2,504(s4)
   104e4:	e0a2                	sd	s0,64(sp)
   104e6:	fc26                	sd	s1,56(sp)
   104e8:	f44e                	sd	s3,40(sp)
   104ea:	ec56                	sd	s5,24(sp)
   104ec:	e85a                	sd	s6,16(sp)
   104ee:	e45e                	sd	s7,8(sp)
   104f0:	e062                	sd	s8,0(sp)
   104f2:	02090863          	beqz	s2,10522 <__call_exitprocs+0x4e>
   104f6:	8b2a                	mv	s6,a0
   104f8:	8bae                	mv	s7,a1
   104fa:	4a85                	li	s5,1
   104fc:	59fd                	li	s3,-1
   104fe:	00892483          	lw	s1,8(s2)
   10502:	fff4841b          	addiw	s0,s1,-1
   10506:	00044e63          	bltz	s0,10522 <__call_exitprocs+0x4e>
   1050a:	048e                	slli	s1,s1,0x3
   1050c:	94ca                	add	s1,s1,s2
   1050e:	020b8663          	beqz	s7,1053a <__call_exitprocs+0x66>
   10512:	2084b783          	ld	a5,520(s1)
   10516:	03778263          	beq	a5,s7,1053a <__call_exitprocs+0x66>
   1051a:	347d                	addiw	s0,s0,-1
   1051c:	14e1                	addi	s1,s1,-8
   1051e:	ff3418e3          	bne	s0,s3,1050e <__call_exitprocs+0x3a>
   10522:	60a6                	ld	ra,72(sp)
   10524:	6406                	ld	s0,64(sp)
   10526:	74e2                	ld	s1,56(sp)
   10528:	7942                	ld	s2,48(sp)
   1052a:	79a2                	ld	s3,40(sp)
   1052c:	7a02                	ld	s4,32(sp)
   1052e:	6ae2                	ld	s5,24(sp)
   10530:	6b42                	ld	s6,16(sp)
   10532:	6ba2                	ld	s7,8(sp)
   10534:	6c02                	ld	s8,0(sp)
   10536:	6161                	addi	sp,sp,80
   10538:	8082                	ret
   1053a:	00892783          	lw	a5,8(s2)
   1053e:	6498                	ld	a4,8(s1)
   10540:	37fd                	addiw	a5,a5,-1
   10542:	04878463          	beq	a5,s0,1058a <__call_exitprocs+0xb6>
   10546:	0004b423          	sd	zero,8(s1)
   1054a:	db61                	beqz	a4,1051a <__call_exitprocs+0x46>
   1054c:	31092783          	lw	a5,784(s2)
   10550:	008a96bb          	sllw	a3,s5,s0
   10554:	00892c03          	lw	s8,8(s2)
   10558:	8ff5                	and	a5,a5,a3
   1055a:	2781                	sext.w	a5,a5
   1055c:	ef89                	bnez	a5,10576 <__call_exitprocs+0xa2>
   1055e:	9702                	jalr	a4
   10560:	00892703          	lw	a4,8(s2)
   10564:	1f8a3783          	ld	a5,504(s4)
   10568:	01871463          	bne	a4,s8,10570 <__call_exitprocs+0x9c>
   1056c:	fb2787e3          	beq	a5,s2,1051a <__call_exitprocs+0x46>
   10570:	dbcd                	beqz	a5,10522 <__call_exitprocs+0x4e>
   10572:	893e                	mv	s2,a5
   10574:	b769                	j	104fe <__call_exitprocs+0x2a>
   10576:	31492783          	lw	a5,788(s2)
   1057a:	1084b583          	ld	a1,264(s1)
   1057e:	8ff5                	and	a5,a5,a3
   10580:	2781                	sext.w	a5,a5
   10582:	e799                	bnez	a5,10590 <__call_exitprocs+0xbc>
   10584:	855a                	mv	a0,s6
   10586:	9702                	jalr	a4
   10588:	bfe1                	j	10560 <__call_exitprocs+0x8c>
   1058a:	00892423          	sw	s0,8(s2)
   1058e:	bf75                	j	1054a <__call_exitprocs+0x76>
   10590:	852e                	mv	a0,a1
   10592:	9702                	jalr	a4
   10594:	b7f1                	j	10560 <__call_exitprocs+0x8c>

0000000000010596 <atexit>:
   10596:	85aa                	mv	a1,a0
   10598:	4681                	li	a3,0
   1059a:	4601                	li	a2,0
   1059c:	4501                	li	a0,0
   1059e:	5a20106f          	j	11b40 <__register_exitproc>

00000000000105a2 <__fp_lock>:
   105a2:	4501                	li	a0,0
   105a4:	8082                	ret

00000000000105a6 <_cleanup_r>:
   105a6:	65c9                	lui	a1,0x12
   105a8:	c6c58593          	addi	a1,a1,-916 # 11c6c <_fclose_r>
   105ac:	ada9                	j	10c06 <_fwalk_reent>

00000000000105ae <__fp_unlock>:
   105ae:	4501                	li	a0,0
   105b0:	8082                	ret

00000000000105b2 <__sinit.part.0>:
   105b2:	7139                	addi	sp,sp,-64
   105b4:	67c1                	lui	a5,0x10
   105b6:	fc06                	sd	ra,56(sp)
   105b8:	f822                	sd	s0,48(sp)
   105ba:	f426                	sd	s1,40(sp)
   105bc:	f04a                	sd	s2,32(sp)
   105be:	ec4e                	sd	s3,24(sp)
   105c0:	e852                	sd	s4,16(sp)
   105c2:	e456                	sd	s5,8(sp)
   105c4:	e05a                	sd	s6,0(sp)
   105c6:	6500                	ld	s0,8(a0)
   105c8:	5a678793          	addi	a5,a5,1446 # 105a6 <_cleanup_r>
   105cc:	ed3c                	sd	a5,88(a0)
   105ce:	53850713          	addi	a4,a0,1336
   105d2:	478d                	li	a5,3
   105d4:	52e53823          	sd	a4,1328(a0)
   105d8:	52f52423          	sw	a5,1320(a0)
   105dc:	52053023          	sd	zero,1312(a0)
   105e0:	4791                	li	a5,4
   105e2:	892a                	mv	s2,a0
   105e4:	c81c                	sw	a5,16(s0)
   105e6:	4621                	li	a2,8
   105e8:	4581                	li	a1,0
   105ea:	0a042623          	sw	zero,172(s0)
   105ee:	00043023          	sd	zero,0(s0)
   105f2:	00043423          	sd	zero,8(s0)
   105f6:	00043c23          	sd	zero,24(s0)
   105fa:	02042023          	sw	zero,32(s0)
   105fe:	02042423          	sw	zero,40(s0)
   10602:	0a440513          	addi	a0,s0,164
   10606:	d0fff0ef          	jal	ra,10314 <memset>
   1060a:	6b49                	lui	s6,0x12
   1060c:	01093483          	ld	s1,16(s2)
   10610:	6ac9                	lui	s5,0x12
   10612:	6a49                	lui	s4,0x12
   10614:	69c9                	lui	s3,0x12
   10616:	936b0b13          	addi	s6,s6,-1738 # 11936 <__sread>
   1061a:	972a8a93          	addi	s5,s5,-1678 # 11972 <__swrite>
   1061e:	9c4a0a13          	addi	s4,s4,-1596 # 119c4 <__sseek>
   10622:	a0698993          	addi	s3,s3,-1530 # 11a06 <__sclose>
   10626:	67c1                	lui	a5,0x10
   10628:	03643c23          	sd	s6,56(s0)
   1062c:	05543023          	sd	s5,64(s0)
   10630:	05443423          	sd	s4,72(s0)
   10634:	05343823          	sd	s3,80(s0)
   10638:	f800                	sd	s0,48(s0)
   1063a:	07a5                	addi	a5,a5,9
   1063c:	c89c                	sw	a5,16(s1)
   1063e:	4621                	li	a2,8
   10640:	4581                	li	a1,0
   10642:	0a04a623          	sw	zero,172(s1)
   10646:	0004b023          	sd	zero,0(s1)
   1064a:	0004b423          	sd	zero,8(s1)
   1064e:	0004bc23          	sd	zero,24(s1)
   10652:	0204a023          	sw	zero,32(s1)
   10656:	0204a423          	sw	zero,40(s1)
   1065a:	0a448513          	addi	a0,s1,164
   1065e:	cb7ff0ef          	jal	ra,10314 <memset>
   10662:	01893403          	ld	s0,24(s2)
   10666:	000207b7          	lui	a5,0x20
   1066a:	0364bc23          	sd	s6,56(s1)
   1066e:	0554b023          	sd	s5,64(s1)
   10672:	0544b423          	sd	s4,72(s1)
   10676:	0534b823          	sd	s3,80(s1)
   1067a:	f884                	sd	s1,48(s1)
   1067c:	07c9                	addi	a5,a5,18
   1067e:	c81c                	sw	a5,16(s0)
   10680:	0a042623          	sw	zero,172(s0)
   10684:	00043023          	sd	zero,0(s0)
   10688:	00043423          	sd	zero,8(s0)
   1068c:	00043c23          	sd	zero,24(s0)
   10690:	02042023          	sw	zero,32(s0)
   10694:	02042423          	sw	zero,40(s0)
   10698:	0a440513          	addi	a0,s0,164
   1069c:	4621                	li	a2,8
   1069e:	4581                	li	a1,0
   106a0:	c75ff0ef          	jal	ra,10314 <memset>
   106a4:	70e2                	ld	ra,56(sp)
   106a6:	03643c23          	sd	s6,56(s0)
   106aa:	05543023          	sd	s5,64(s0)
   106ae:	05443423          	sd	s4,72(s0)
   106b2:	05343823          	sd	s3,80(s0)
   106b6:	f800                	sd	s0,48(s0)
   106b8:	7442                	ld	s0,48(sp)
   106ba:	4785                	li	a5,1
   106bc:	04f92823          	sw	a5,80(s2)
   106c0:	74a2                	ld	s1,40(sp)
   106c2:	7902                	ld	s2,32(sp)
   106c4:	69e2                	ld	s3,24(sp)
   106c6:	6a42                	ld	s4,16(sp)
   106c8:	6aa2                	ld	s5,8(sp)
   106ca:	6b02                	ld	s6,0(sp)
   106cc:	6121                	addi	sp,sp,64
   106ce:	8082                	ret

00000000000106d0 <__sfmoreglue>:
   106d0:	1101                	addi	sp,sp,-32
   106d2:	e426                	sd	s1,8(sp)
   106d4:	0b000613          	li	a2,176
   106d8:	fff5849b          	addiw	s1,a1,-1
   106dc:	02c484b3          	mul	s1,s1,a2
   106e0:	e04a                	sd	s2,0(sp)
   106e2:	892e                	mv	s2,a1
   106e4:	e822                	sd	s0,16(sp)
   106e6:	ec06                	sd	ra,24(sp)
   106e8:	0c848593          	addi	a1,s1,200
   106ec:	5a4000ef          	jal	ra,10c90 <_malloc_r>
   106f0:	842a                	mv	s0,a0
   106f2:	cd01                	beqz	a0,1070a <__sfmoreglue+0x3a>
   106f4:	0561                	addi	a0,a0,24
   106f6:	00043023          	sd	zero,0(s0)
   106fa:	01242423          	sw	s2,8(s0)
   106fe:	e808                	sd	a0,16(s0)
   10700:	0b048613          	addi	a2,s1,176
   10704:	4581                	li	a1,0
   10706:	c0fff0ef          	jal	ra,10314 <memset>
   1070a:	60e2                	ld	ra,24(sp)
   1070c:	8522                	mv	a0,s0
   1070e:	6442                	ld	s0,16(sp)
   10710:	64a2                	ld	s1,8(sp)
   10712:	6902                	ld	s2,0(sp)
   10714:	6105                	addi	sp,sp,32
   10716:	8082                	ret

0000000000010718 <__sfp>:
   10718:	7179                	addi	sp,sp,-48
   1071a:	ec26                	sd	s1,24(sp)
   1071c:	7501b483          	ld	s1,1872(gp) # 14780 <_global_impure_ptr>
   10720:	e84a                	sd	s2,16(sp)
   10722:	f406                	sd	ra,40(sp)
   10724:	48bc                	lw	a5,80(s1)
   10726:	f022                	sd	s0,32(sp)
   10728:	e44e                	sd	s3,8(sp)
   1072a:	e052                	sd	s4,0(sp)
   1072c:	892a                	mv	s2,a0
   1072e:	c3d9                	beqz	a5,107b4 <__sfp+0x9c>
   10730:	52048493          	addi	s1,s1,1312
   10734:	0b000993          	li	s3,176
   10738:	4a11                	li	s4,4
   1073a:	449c                	lw	a5,8(s1)
   1073c:	6880                	ld	s0,16(s1)
   1073e:	06f05763          	blez	a5,107ac <__sfp+0x94>
   10742:	37fd                	addiw	a5,a5,-1
   10744:	1782                	slli	a5,a5,0x20
   10746:	9381                	srli	a5,a5,0x20
   10748:	0785                	addi	a5,a5,1
   1074a:	033787b3          	mul	a5,a5,s3
   1074e:	97a2                	add	a5,a5,s0
   10750:	a029                	j	1075a <__sfp+0x42>
   10752:	0b040413          	addi	s0,s0,176
   10756:	04f40b63          	beq	s0,a5,107ac <__sfp+0x94>
   1075a:	01041703          	lh	a4,16(s0)
   1075e:	fb75                	bnez	a4,10752 <__sfp+0x3a>
   10760:	77c1                	lui	a5,0xffff0
   10762:	0785                	addi	a5,a5,1
   10764:	0a042623          	sw	zero,172(s0)
   10768:	00043023          	sd	zero,0(s0)
   1076c:	00043423          	sd	zero,8(s0)
   10770:	c81c                	sw	a5,16(s0)
   10772:	00043c23          	sd	zero,24(s0)
   10776:	02042023          	sw	zero,32(s0)
   1077a:	02042423          	sw	zero,40(s0)
   1077e:	4621                	li	a2,8
   10780:	4581                	li	a1,0
   10782:	0a440513          	addi	a0,s0,164
   10786:	b8fff0ef          	jal	ra,10314 <memset>
   1078a:	04043c23          	sd	zero,88(s0)
   1078e:	06042023          	sw	zero,96(s0)
   10792:	06043c23          	sd	zero,120(s0)
   10796:	08042023          	sw	zero,128(s0)
   1079a:	70a2                	ld	ra,40(sp)
   1079c:	8522                	mv	a0,s0
   1079e:	7402                	ld	s0,32(sp)
   107a0:	64e2                	ld	s1,24(sp)
   107a2:	6942                	ld	s2,16(sp)
   107a4:	69a2                	ld	s3,8(sp)
   107a6:	6a02                	ld	s4,0(sp)
   107a8:	6145                	addi	sp,sp,48
   107aa:	8082                	ret
   107ac:	6080                	ld	s0,0(s1)
   107ae:	c419                	beqz	s0,107bc <__sfp+0xa4>
   107b0:	84a2                	mv	s1,s0
   107b2:	b761                	j	1073a <__sfp+0x22>
   107b4:	8526                	mv	a0,s1
   107b6:	dfdff0ef          	jal	ra,105b2 <__sinit.part.0>
   107ba:	bf9d                	j	10730 <__sfp+0x18>
   107bc:	2d800593          	li	a1,728
   107c0:	854a                	mv	a0,s2
   107c2:	4ce000ef          	jal	ra,10c90 <_malloc_r>
   107c6:	842a                	mv	s0,a0
   107c8:	cd19                	beqz	a0,107e6 <__sfp+0xce>
   107ca:	0561                	addi	a0,a0,24
   107cc:	00043023          	sd	zero,0(s0)
   107d0:	01442423          	sw	s4,8(s0)
   107d4:	e808                	sd	a0,16(s0)
   107d6:	2c000613          	li	a2,704
   107da:	4581                	li	a1,0
   107dc:	b39ff0ef          	jal	ra,10314 <memset>
   107e0:	e080                	sd	s0,0(s1)
   107e2:	84a2                	mv	s1,s0
   107e4:	bf99                	j	1073a <__sfp+0x22>
   107e6:	0004b023          	sd	zero,0(s1)
   107ea:	47b1                	li	a5,12
   107ec:	00f92023          	sw	a5,0(s2)
   107f0:	b76d                	j	1079a <__sfp+0x82>

00000000000107f2 <_cleanup>:
   107f2:	7501b503          	ld	a0,1872(gp) # 14780 <_global_impure_ptr>
   107f6:	65c9                	lui	a1,0x12
   107f8:	c6c58593          	addi	a1,a1,-916 # 11c6c <_fclose_r>
   107fc:	a129                	j	10c06 <_fwalk_reent>

00000000000107fe <__sinit>:
   107fe:	493c                	lw	a5,80(a0)
   10800:	c391                	beqz	a5,10804 <__sinit+0x6>
   10802:	8082                	ret
   10804:	b37d                	j	105b2 <__sinit.part.0>

0000000000010806 <__sfp_lock_acquire>:
   10806:	8082                	ret

0000000000010808 <__sfp_lock_release>:
   10808:	8082                	ret

000000000001080a <__sinit_lock_acquire>:
   1080a:	8082                	ret

000000000001080c <__sinit_lock_release>:
   1080c:	8082                	ret

000000000001080e <__fp_lock_all>:
   1080e:	7601b503          	ld	a0,1888(gp) # 14790 <_impure_ptr>
   10812:	65c1                	lui	a1,0x10
   10814:	5a258593          	addi	a1,a1,1442 # 105a2 <__fp_lock>
   10818:	a6b5                	j	10b84 <_fwalk>

000000000001081a <__fp_unlock_all>:
   1081a:	7601b503          	ld	a0,1888(gp) # 14790 <_impure_ptr>
   1081e:	65c1                	lui	a1,0x10
   10820:	5ae58593          	addi	a1,a1,1454 # 105ae <__fp_unlock>
   10824:	a685                	j	10b84 <_fwalk>

0000000000010826 <__libc_fini_array>:
   10826:	1101                	addi	sp,sp,-32
   10828:	e822                	sd	s0,16(sp)
   1082a:	67d1                	lui	a5,0x14
   1082c:	6451                	lui	s0,0x14
   1082e:	80840413          	addi	s0,s0,-2040 # 13808 <__do_global_dtors_aux_fini_array_entry>
   10832:	81078793          	addi	a5,a5,-2032 # 13810 <impure_data>
   10836:	8f81                	sub	a5,a5,s0
   10838:	e426                	sd	s1,8(sp)
   1083a:	ec06                	sd	ra,24(sp)
   1083c:	4037d493          	srai	s1,a5,0x3
   10840:	c881                	beqz	s1,10850 <__libc_fini_array+0x2a>
   10842:	17e1                	addi	a5,a5,-8
   10844:	943e                	add	s0,s0,a5
   10846:	601c                	ld	a5,0(s0)
   10848:	14fd                	addi	s1,s1,-1
   1084a:	1461                	addi	s0,s0,-8
   1084c:	9782                	jalr	a5
   1084e:	fce5                	bnez	s1,10846 <__libc_fini_array+0x20>
   10850:	60e2                	ld	ra,24(sp)
   10852:	6442                	ld	s0,16(sp)
   10854:	64a2                	ld	s1,8(sp)
   10856:	6105                	addi	sp,sp,32
   10858:	8082                	ret

000000000001085a <__sfvwrite_r>:
   1085a:	6a1c                	ld	a5,16(a2)
   1085c:	1a078c63          	beqz	a5,10a14 <__sfvwrite_r+0x1ba>
   10860:	0105d783          	lhu	a5,16(a1)
   10864:	711d                	addi	sp,sp,-96
   10866:	e8a2                	sd	s0,80(sp)
   10868:	f852                	sd	s4,48(sp)
   1086a:	f456                	sd	s5,40(sp)
   1086c:	ec86                	sd	ra,88(sp)
   1086e:	e4a6                	sd	s1,72(sp)
   10870:	e0ca                	sd	s2,64(sp)
   10872:	fc4e                	sd	s3,56(sp)
   10874:	f05a                	sd	s6,32(sp)
   10876:	ec5e                	sd	s7,24(sp)
   10878:	e862                	sd	s8,16(sp)
   1087a:	e466                	sd	s9,8(sp)
   1087c:	e06a                	sd	s10,0(sp)
   1087e:	0087f713          	andi	a4,a5,8
   10882:	8a32                	mv	s4,a2
   10884:	8aaa                	mv	s5,a0
   10886:	842e                	mv	s0,a1
   10888:	c325                	beqz	a4,108e8 <__sfvwrite_r+0x8e>
   1088a:	6d98                	ld	a4,24(a1)
   1088c:	cf31                	beqz	a4,108e8 <__sfvwrite_r+0x8e>
   1088e:	0027f713          	andi	a4,a5,2
   10892:	000a3903          	ld	s2,0(s4)
   10896:	c735                	beqz	a4,10902 <__sfvwrite_r+0xa8>
   10898:	603c                	ld	a5,64(s0)
   1089a:	780c                	ld	a1,48(s0)
   1089c:	80000b37          	lui	s6,0x80000
   108a0:	4981                	li	s3,0
   108a2:	4481                	li	s1,0
   108a4:	c00b4b13          	xori	s6,s6,-1024
   108a8:	864e                	mv	a2,s3
   108aa:	8556                	mv	a0,s5
   108ac:	c885                	beqz	s1,108dc <__sfvwrite_r+0x82>
   108ae:	86a6                	mv	a3,s1
   108b0:	009b7363          	bgeu	s6,s1,108b6 <__sfvwrite_r+0x5c>
   108b4:	86da                	mv	a3,s6
   108b6:	2681                	sext.w	a3,a3
   108b8:	9782                	jalr	a5
   108ba:	14a05563          	blez	a0,10a04 <__sfvwrite_r+0x1aa>
   108be:	010a3783          	ld	a5,16(s4)
   108c2:	99aa                	add	s3,s3,a0
   108c4:	8c89                	sub	s1,s1,a0
   108c6:	40a78533          	sub	a0,a5,a0
   108ca:	00aa3823          	sd	a0,16(s4)
   108ce:	10050763          	beqz	a0,109dc <__sfvwrite_r+0x182>
   108d2:	603c                	ld	a5,64(s0)
   108d4:	780c                	ld	a1,48(s0)
   108d6:	864e                	mv	a2,s3
   108d8:	8556                	mv	a0,s5
   108da:	f8f1                	bnez	s1,108ae <__sfvwrite_r+0x54>
   108dc:	00093983          	ld	s3,0(s2)
   108e0:	00893483          	ld	s1,8(s2)
   108e4:	0941                	addi	s2,s2,16
   108e6:	b7c9                	j	108a8 <__sfvwrite_r+0x4e>
   108e8:	85a2                	mv	a1,s0
   108ea:	8556                	mv	a0,s5
   108ec:	15c010ef          	jal	ra,11a48 <__swsetup_r>
   108f0:	28051863          	bnez	a0,10b80 <__sfvwrite_r+0x326>
   108f4:	01045783          	lhu	a5,16(s0)
   108f8:	000a3903          	ld	s2,0(s4)
   108fc:	0027f713          	andi	a4,a5,2
   10900:	ff41                	bnez	a4,10898 <__sfvwrite_r+0x3e>
   10902:	0017f713          	andi	a4,a5,1
   10906:	eb35                	bnez	a4,1097a <__sfvwrite_r+0x120>
   10908:	4444                	lw	s1,12(s0)
   1090a:	6008                	ld	a0,0(s0)
   1090c:	80000b37          	lui	s6,0x80000
   10910:	ffeb4b93          	xori	s7,s6,-2
   10914:	4c01                	li	s8,0
   10916:	4981                	li	s3,0
   10918:	fffb4b13          	not	s6,s6
   1091c:	8ca6                	mv	s9,s1
   1091e:	04098863          	beqz	s3,1096e <__sfvwrite_r+0x114>
   10922:	2007f713          	andi	a4,a5,512
   10926:	12070a63          	beqz	a4,10a5a <__sfvwrite_r+0x200>
   1092a:	8d26                	mv	s10,s1
   1092c:	1899f763          	bgeu	s3,s1,10aba <__sfvwrite_r+0x260>
   10930:	8cce                	mv	s9,s3
   10932:	8d4e                	mv	s10,s3
   10934:	866a                	mv	a2,s10
   10936:	85e2                	mv	a1,s8
   10938:	2e9000ef          	jal	ra,11420 <memmove>
   1093c:	4458                	lw	a4,12(s0)
   1093e:	601c                	ld	a5,0(s0)
   10940:	84ce                	mv	s1,s3
   10942:	41970cbb          	subw	s9,a4,s9
   10946:	97ea                	add	a5,a5,s10
   10948:	01942623          	sw	s9,12(s0)
   1094c:	e01c                	sd	a5,0(s0)
   1094e:	4981                	li	s3,0
   10950:	010a3603          	ld	a2,16(s4)
   10954:	9c26                	add	s8,s8,s1
   10956:	409604b3          	sub	s1,a2,s1
   1095a:	009a3823          	sd	s1,16(s4)
   1095e:	ccbd                	beqz	s1,109dc <__sfvwrite_r+0x182>
   10960:	4444                	lw	s1,12(s0)
   10962:	6008                	ld	a0,0(s0)
   10964:	01045783          	lhu	a5,16(s0)
   10968:	8ca6                	mv	s9,s1
   1096a:	fa099ce3          	bnez	s3,10922 <__sfvwrite_r+0xc8>
   1096e:	00093c03          	ld	s8,0(s2)
   10972:	00893983          	ld	s3,8(s2)
   10976:	0941                	addi	s2,s2,16
   10978:	b755                	j	1091c <__sfvwrite_r+0xc2>
   1097a:	4981                	li	s3,0
   1097c:	4501                	li	a0,0
   1097e:	4c81                	li	s9,0
   10980:	4c01                	li	s8,0
   10982:	080c0b63          	beqz	s8,10a18 <__sfvwrite_r+0x1be>
   10986:	c145                	beqz	a0,10a26 <__sfvwrite_r+0x1cc>
   10988:	8bce                	mv	s7,s3
   1098a:	013c7363          	bgeu	s8,s3,10990 <__sfvwrite_r+0x136>
   1098e:	8be2                	mv	s7,s8
   10990:	6008                	ld	a0,0(s0)
   10992:	6c1c                	ld	a5,24(s0)
   10994:	5014                	lw	a3,32(s0)
   10996:	84de                	mv	s1,s7
   10998:	00a7f763          	bgeu	a5,a0,109a6 <__sfvwrite_r+0x14c>
   1099c:	445c                	lw	a5,12(s0)
   1099e:	00d78b3b          	addw	s6,a5,a3
   109a2:	097b4d63          	blt	s6,s7,10a3c <__sfvwrite_r+0x1e2>
   109a6:	18dbc463          	blt	s7,a3,10b2e <__sfvwrite_r+0x2d4>
   109aa:	603c                	ld	a5,64(s0)
   109ac:	780c                	ld	a1,48(s0)
   109ae:	8666                	mv	a2,s9
   109b0:	8556                	mv	a0,s5
   109b2:	9782                	jalr	a5
   109b4:	84aa                	mv	s1,a0
   109b6:	04a05763          	blez	a0,10a04 <__sfvwrite_r+0x1aa>
   109ba:	0005079b          	sext.w	a5,a0
   109be:	40f989bb          	subw	s3,s3,a5
   109c2:	4505                	li	a0,1
   109c4:	02098b63          	beqz	s3,109fa <__sfvwrite_r+0x1a0>
   109c8:	010a3783          	ld	a5,16(s4)
   109cc:	9ca6                	add	s9,s9,s1
   109ce:	409c0c33          	sub	s8,s8,s1
   109d2:	409784b3          	sub	s1,a5,s1
   109d6:	009a3823          	sd	s1,16(s4)
   109da:	f4c5                	bnez	s1,10982 <__sfvwrite_r+0x128>
   109dc:	4501                	li	a0,0
   109de:	60e6                	ld	ra,88(sp)
   109e0:	6446                	ld	s0,80(sp)
   109e2:	64a6                	ld	s1,72(sp)
   109e4:	6906                	ld	s2,64(sp)
   109e6:	79e2                	ld	s3,56(sp)
   109e8:	7a42                	ld	s4,48(sp)
   109ea:	7aa2                	ld	s5,40(sp)
   109ec:	7b02                	ld	s6,32(sp)
   109ee:	6be2                	ld	s7,24(sp)
   109f0:	6c42                	ld	s8,16(sp)
   109f2:	6ca2                	ld	s9,8(sp)
   109f4:	6d02                	ld	s10,0(sp)
   109f6:	6125                	addi	sp,sp,96
   109f8:	8082                	ret
   109fa:	85a2                	mv	a1,s0
   109fc:	8556                	mv	a0,s5
   109fe:	480010ef          	jal	ra,11e7e <_fflush_r>
   10a02:	d179                	beqz	a0,109c8 <__sfvwrite_r+0x16e>
   10a04:	01041783          	lh	a5,16(s0)
   10a08:	0407e793          	ori	a5,a5,64
   10a0c:	00f41823          	sh	a5,16(s0)
   10a10:	557d                	li	a0,-1
   10a12:	b7f1                	j	109de <__sfvwrite_r+0x184>
   10a14:	4501                	li	a0,0
   10a16:	8082                	ret
   10a18:	00893c03          	ld	s8,8(s2)
   10a1c:	00093c83          	ld	s9,0(s2)
   10a20:	0941                	addi	s2,s2,16
   10a22:	fe0c0be3          	beqz	s8,10a18 <__sfvwrite_r+0x1be>
   10a26:	8662                	mv	a2,s8
   10a28:	45a9                	li	a1,10
   10a2a:	8566                	mv	a0,s9
   10a2c:	07f000ef          	jal	ra,112aa <memchr>
   10a30:	12050f63          	beqz	a0,10b6e <__sfvwrite_r+0x314>
   10a34:	0505                	addi	a0,a0,1
   10a36:	419509bb          	subw	s3,a0,s9
   10a3a:	b7b9                	j	10988 <__sfvwrite_r+0x12e>
   10a3c:	85e6                	mv	a1,s9
   10a3e:	865a                	mv	a2,s6
   10a40:	1e1000ef          	jal	ra,11420 <memmove>
   10a44:	601c                	ld	a5,0(s0)
   10a46:	85a2                	mv	a1,s0
   10a48:	8556                	mv	a0,s5
   10a4a:	97da                	add	a5,a5,s6
   10a4c:	e01c                	sd	a5,0(s0)
   10a4e:	430010ef          	jal	ra,11e7e <_fflush_r>
   10a52:	f94d                	bnez	a0,10a04 <__sfvwrite_r+0x1aa>
   10a54:	87da                	mv	a5,s6
   10a56:	84da                	mv	s1,s6
   10a58:	b79d                	j	109be <__sfvwrite_r+0x164>
   10a5a:	6c1c                	ld	a5,24(s0)
   10a5c:	02a7e863          	bltu	a5,a0,10a8c <__sfvwrite_r+0x232>
   10a60:	501c                	lw	a5,32(s0)
   10a62:	02f9e563          	bltu	s3,a5,10a8c <__sfvwrite_r+0x232>
   10a66:	86ce                	mv	a3,s3
   10a68:	013bf363          	bgeu	s7,s3,10a6e <__sfvwrite_r+0x214>
   10a6c:	86da                	mv	a3,s6
   10a6e:	02f6c6bb          	divw	a3,a3,a5
   10a72:	6038                	ld	a4,64(s0)
   10a74:	780c                	ld	a1,48(s0)
   10a76:	8662                	mv	a2,s8
   10a78:	8556                	mv	a0,s5
   10a7a:	02f686bb          	mulw	a3,a3,a5
   10a7e:	9702                	jalr	a4
   10a80:	84aa                	mv	s1,a0
   10a82:	f8a051e3          	blez	a0,10a04 <__sfvwrite_r+0x1aa>
   10a86:	409989b3          	sub	s3,s3,s1
   10a8a:	b5d9                	j	10950 <__sfvwrite_r+0xf6>
   10a8c:	0099f363          	bgeu	s3,s1,10a92 <__sfvwrite_r+0x238>
   10a90:	84ce                	mv	s1,s3
   10a92:	8626                	mv	a2,s1
   10a94:	85e2                	mv	a1,s8
   10a96:	18b000ef          	jal	ra,11420 <memmove>
   10a9a:	445c                	lw	a5,12(s0)
   10a9c:	6018                	ld	a4,0(s0)
   10a9e:	409786bb          	subw	a3,a5,s1
   10aa2:	9726                	add	a4,a4,s1
   10aa4:	c454                	sw	a3,12(s0)
   10aa6:	e018                	sd	a4,0(s0)
   10aa8:	fef9                	bnez	a3,10a86 <__sfvwrite_r+0x22c>
   10aaa:	85a2                	mv	a1,s0
   10aac:	8556                	mv	a0,s5
   10aae:	3d0010ef          	jal	ra,11e7e <_fflush_r>
   10ab2:	f929                	bnez	a0,10a04 <__sfvwrite_r+0x1aa>
   10ab4:	409989b3          	sub	s3,s3,s1
   10ab8:	bd61                	j	10950 <__sfvwrite_r+0xf6>
   10aba:	4807f713          	andi	a4,a5,1152
   10abe:	e6070be3          	beqz	a4,10934 <__sfvwrite_r+0xda>
   10ac2:	5004                	lw	s1,32(s0)
   10ac4:	6c0c                	ld	a1,24(s0)
   10ac6:	00198713          	addi	a4,s3,1
   10aca:	0014969b          	slliw	a3,s1,0x1
   10ace:	9ea5                	addw	a3,a3,s1
   10ad0:	8d0d                	sub	a0,a0,a1
   10ad2:	01f6d49b          	srliw	s1,a3,0x1f
   10ad6:	00050d1b          	sext.w	s10,a0
   10ada:	9cb5                	addw	s1,s1,a3
   10adc:	4014d49b          	sraiw	s1,s1,0x1
   10ae0:	976a                	add	a4,a4,s10
   10ae2:	00e4f563          	bgeu	s1,a4,10aec <__sfvwrite_r+0x292>
   10ae6:	0019849b          	addiw	s1,s3,1
   10aea:	9ca9                	addw	s1,s1,a0
   10aec:	4007f793          	andi	a5,a5,1024
   10af0:	cfa9                	beqz	a5,10b4a <__sfvwrite_r+0x2f0>
   10af2:	85a6                	mv	a1,s1
   10af4:	8556                	mv	a0,s5
   10af6:	19a000ef          	jal	ra,10c90 <_malloc_r>
   10afa:	8caa                	mv	s9,a0
   10afc:	cd25                	beqz	a0,10b74 <__sfvwrite_r+0x31a>
   10afe:	6c0c                	ld	a1,24(s0)
   10b00:	866a                	mv	a2,s10
   10b02:	037000ef          	jal	ra,11338 <memcpy>
   10b06:	01045783          	lhu	a5,16(s0)
   10b0a:	b7f7f793          	andi	a5,a5,-1153
   10b0e:	0807e793          	ori	a5,a5,128
   10b12:	00f41823          	sh	a5,16(s0)
   10b16:	01ac8533          	add	a0,s9,s10
   10b1a:	41a487bb          	subw	a5,s1,s10
   10b1e:	01943c23          	sd	s9,24(s0)
   10b22:	e008                	sd	a0,0(s0)
   10b24:	d004                	sw	s1,32(s0)
   10b26:	8cce                	mv	s9,s3
   10b28:	c45c                	sw	a5,12(s0)
   10b2a:	8d4e                	mv	s10,s3
   10b2c:	b521                	j	10934 <__sfvwrite_r+0xda>
   10b2e:	865e                	mv	a2,s7
   10b30:	85e6                	mv	a1,s9
   10b32:	0ef000ef          	jal	ra,11420 <memmove>
   10b36:	4454                	lw	a3,12(s0)
   10b38:	6018                	ld	a4,0(s0)
   10b3a:	000b879b          	sext.w	a5,s7
   10b3e:	417686bb          	subw	a3,a3,s7
   10b42:	975e                	add	a4,a4,s7
   10b44:	c454                	sw	a3,12(s0)
   10b46:	e018                	sd	a4,0(s0)
   10b48:	bd9d                	j	109be <__sfvwrite_r+0x164>
   10b4a:	8626                	mv	a2,s1
   10b4c:	8556                	mv	a0,s5
   10b4e:	1ad000ef          	jal	ra,114fa <_realloc_r>
   10b52:	8caa                	mv	s9,a0
   10b54:	f169                	bnez	a0,10b16 <__sfvwrite_r+0x2bc>
   10b56:	6c0c                	ld	a1,24(s0)
   10b58:	8556                	mv	a0,s5
   10b5a:	476010ef          	jal	ra,11fd0 <_free_r>
   10b5e:	01041783          	lh	a5,16(s0)
   10b62:	4731                	li	a4,12
   10b64:	00eaa023          	sw	a4,0(s5)
   10b68:	f7f7f793          	andi	a5,a5,-129
   10b6c:	bd71                	j	10a08 <__sfvwrite_r+0x1ae>
   10b6e:	001c099b          	addiw	s3,s8,1
   10b72:	bd19                	j	10988 <__sfvwrite_r+0x12e>
   10b74:	4731                	li	a4,12
   10b76:	01041783          	lh	a5,16(s0)
   10b7a:	00eaa023          	sw	a4,0(s5)
   10b7e:	b569                	j	10a08 <__sfvwrite_r+0x1ae>
   10b80:	557d                	li	a0,-1
   10b82:	bdb1                	j	109de <__sfvwrite_r+0x184>

0000000000010b84 <_fwalk>:
   10b84:	715d                	addi	sp,sp,-80
   10b86:	f84a                	sd	s2,48(sp)
   10b88:	f44e                	sd	s3,40(sp)
   10b8a:	f052                	sd	s4,32(sp)
   10b8c:	ec56                	sd	s5,24(sp)
   10b8e:	e85a                	sd	s6,16(sp)
   10b90:	e45e                	sd	s7,8(sp)
   10b92:	e486                	sd	ra,72(sp)
   10b94:	e0a2                	sd	s0,64(sp)
   10b96:	fc26                	sd	s1,56(sp)
   10b98:	8a2e                	mv	s4,a1
   10b9a:	52050913          	addi	s2,a0,1312
   10b9e:	4b01                	li	s6,0
   10ba0:	0b000a93          	li	s5,176
   10ba4:	4b85                	li	s7,1
   10ba6:	59fd                	li	s3,-1
   10ba8:	00892783          	lw	a5,8(s2)
   10bac:	01093403          	ld	s0,16(s2)
   10bb0:	02f05b63          	blez	a5,10be6 <_fwalk+0x62>
   10bb4:	fff7849b          	addiw	s1,a5,-1
   10bb8:	1482                	slli	s1,s1,0x20
   10bba:	9081                	srli	s1,s1,0x20
   10bbc:	0485                	addi	s1,s1,1
   10bbe:	035484b3          	mul	s1,s1,s5
   10bc2:	94a2                	add	s1,s1,s0
   10bc4:	01045783          	lhu	a5,16(s0)
   10bc8:	00fbfb63          	bgeu	s7,a5,10bde <_fwalk+0x5a>
   10bcc:	01241783          	lh	a5,18(s0)
   10bd0:	8522                	mv	a0,s0
   10bd2:	01378663          	beq	a5,s3,10bde <_fwalk+0x5a>
   10bd6:	9a02                	jalr	s4
   10bd8:	01656b33          	or	s6,a0,s6
   10bdc:	2b01                	sext.w	s6,s6
   10bde:	0b040413          	addi	s0,s0,176
   10be2:	fe8491e3          	bne	s1,s0,10bc4 <_fwalk+0x40>
   10be6:	00093903          	ld	s2,0(s2)
   10bea:	fa091fe3          	bnez	s2,10ba8 <_fwalk+0x24>
   10bee:	60a6                	ld	ra,72(sp)
   10bf0:	6406                	ld	s0,64(sp)
   10bf2:	74e2                	ld	s1,56(sp)
   10bf4:	7942                	ld	s2,48(sp)
   10bf6:	79a2                	ld	s3,40(sp)
   10bf8:	7a02                	ld	s4,32(sp)
   10bfa:	6ae2                	ld	s5,24(sp)
   10bfc:	6ba2                	ld	s7,8(sp)
   10bfe:	855a                	mv	a0,s6
   10c00:	6b42                	ld	s6,16(sp)
   10c02:	6161                	addi	sp,sp,80
   10c04:	8082                	ret

0000000000010c06 <_fwalk_reent>:
   10c06:	715d                	addi	sp,sp,-80
   10c08:	f84a                	sd	s2,48(sp)
   10c0a:	f44e                	sd	s3,40(sp)
   10c0c:	f052                	sd	s4,32(sp)
   10c0e:	ec56                	sd	s5,24(sp)
   10c10:	e85a                	sd	s6,16(sp)
   10c12:	e45e                	sd	s7,8(sp)
   10c14:	e062                	sd	s8,0(sp)
   10c16:	e486                	sd	ra,72(sp)
   10c18:	e0a2                	sd	s0,64(sp)
   10c1a:	fc26                	sd	s1,56(sp)
   10c1c:	8c2a                	mv	s8,a0
   10c1e:	8a2e                	mv	s4,a1
   10c20:	52050913          	addi	s2,a0,1312
   10c24:	4b01                	li	s6,0
   10c26:	0b000a93          	li	s5,176
   10c2a:	4b85                	li	s7,1
   10c2c:	59fd                	li	s3,-1
   10c2e:	00892783          	lw	a5,8(s2)
   10c32:	01093403          	ld	s0,16(s2)
   10c36:	02f05c63          	blez	a5,10c6e <_fwalk_reent+0x68>
   10c3a:	fff7849b          	addiw	s1,a5,-1
   10c3e:	1482                	slli	s1,s1,0x20
   10c40:	9081                	srli	s1,s1,0x20
   10c42:	0485                	addi	s1,s1,1
   10c44:	035484b3          	mul	s1,s1,s5
   10c48:	94a2                	add	s1,s1,s0
   10c4a:	01045783          	lhu	a5,16(s0)
   10c4e:	00fbfc63          	bgeu	s7,a5,10c66 <_fwalk_reent+0x60>
   10c52:	01241783          	lh	a5,18(s0)
   10c56:	85a2                	mv	a1,s0
   10c58:	8562                	mv	a0,s8
   10c5a:	01378663          	beq	a5,s3,10c66 <_fwalk_reent+0x60>
   10c5e:	9a02                	jalr	s4
   10c60:	01656b33          	or	s6,a0,s6
   10c64:	2b01                	sext.w	s6,s6
   10c66:	0b040413          	addi	s0,s0,176
   10c6a:	fe8490e3          	bne	s1,s0,10c4a <_fwalk_reent+0x44>
   10c6e:	00093903          	ld	s2,0(s2)
   10c72:	fa091ee3          	bnez	s2,10c2e <_fwalk_reent+0x28>
   10c76:	60a6                	ld	ra,72(sp)
   10c78:	6406                	ld	s0,64(sp)
   10c7a:	74e2                	ld	s1,56(sp)
   10c7c:	7942                	ld	s2,48(sp)
   10c7e:	79a2                	ld	s3,40(sp)
   10c80:	7a02                	ld	s4,32(sp)
   10c82:	6ae2                	ld	s5,24(sp)
   10c84:	6ba2                	ld	s7,8(sp)
   10c86:	6c02                	ld	s8,0(sp)
   10c88:	855a                	mv	a0,s6
   10c8a:	6b42                	ld	s6,16(sp)
   10c8c:	6161                	addi	sp,sp,80
   10c8e:	8082                	ret

0000000000010c90 <_malloc_r>:
   10c90:	711d                	addi	sp,sp,-96
   10c92:	e4a6                	sd	s1,72(sp)
   10c94:	e0ca                	sd	s2,64(sp)
   10c96:	ec86                	sd	ra,88(sp)
   10c98:	e8a2                	sd	s0,80(sp)
   10c9a:	fc4e                	sd	s3,56(sp)
   10c9c:	f852                	sd	s4,48(sp)
   10c9e:	f456                	sd	s5,40(sp)
   10ca0:	f05a                	sd	s6,32(sp)
   10ca2:	ec5e                	sd	s7,24(sp)
   10ca4:	e862                	sd	s8,16(sp)
   10ca6:	e466                	sd	s9,8(sp)
   10ca8:	01758493          	addi	s1,a1,23
   10cac:	02e00793          	li	a5,46
   10cb0:	892a                	mv	s2,a0
   10cb2:	0497e763          	bltu	a5,s1,10d00 <_malloc_r+0x70>
   10cb6:	02000793          	li	a5,32
   10cba:	1eb7e163          	bltu	a5,a1,10e9c <_malloc_r+0x20c>
   10cbe:	039000ef          	jal	ra,114f6 <__malloc_lock>
   10cc2:	02000493          	li	s1,32
   10cc6:	05000793          	li	a5,80
   10cca:	4611                	li	a2,4
   10ccc:	69d1                	lui	s3,0x14
   10cce:	f5898993          	addi	s3,s3,-168 # 13f58 <__malloc_av_>
   10cd2:	97ce                	add	a5,a5,s3
   10cd4:	6780                	ld	s0,8(a5)
   10cd6:	ff078713          	addi	a4,a5,-16
   10cda:	1ee40263          	beq	s0,a4,10ebe <_malloc_r+0x22e>
   10cde:	641c                	ld	a5,8(s0)
   10ce0:	6c14                	ld	a3,24(s0)
   10ce2:	6810                	ld	a2,16(s0)
   10ce4:	9bf1                	andi	a5,a5,-4
   10ce6:	97a2                	add	a5,a5,s0
   10ce8:	6798                	ld	a4,8(a5)
   10cea:	ee14                	sd	a3,24(a2)
   10cec:	ea90                	sd	a2,16(a3)
   10cee:	00176713          	ori	a4,a4,1
   10cf2:	854a                	mv	a0,s2
   10cf4:	e798                	sd	a4,8(a5)
   10cf6:	003000ef          	jal	ra,114f8 <__malloc_unlock>
   10cfa:	01040513          	addi	a0,s0,16
   10cfe:	a25d                	j	10ea4 <_malloc_r+0x214>
   10d00:	800007b7          	lui	a5,0x80000
   10d04:	98c1                	andi	s1,s1,-16
   10d06:	fff7c793          	not	a5,a5
   10d0a:	1897e963          	bltu	a5,s1,10e9c <_malloc_r+0x20c>
   10d0e:	18b4e763          	bltu	s1,a1,10e9c <_malloc_r+0x20c>
   10d12:	7e4000ef          	jal	ra,114f6 <__malloc_lock>
   10d16:	1f700793          	li	a5,503
   10d1a:	3a97f063          	bgeu	a5,s1,110ba <_malloc_r+0x42a>
   10d1e:	0094d793          	srli	a5,s1,0x9
   10d22:	26078c63          	beqz	a5,10f9a <_malloc_r+0x30a>
   10d26:	4711                	li	a4,4
   10d28:	30f76063          	bltu	a4,a5,11028 <_malloc_r+0x398>
   10d2c:	0064d793          	srli	a5,s1,0x6
   10d30:	0397861b          	addiw	a2,a5,57
   10d34:	0016169b          	slliw	a3,a2,0x1
   10d38:	0387851b          	addiw	a0,a5,56
   10d3c:	068e                	slli	a3,a3,0x3
   10d3e:	69d1                	lui	s3,0x14
   10d40:	f5898993          	addi	s3,s3,-168 # 13f58 <__malloc_av_>
   10d44:	96ce                	add	a3,a3,s3
   10d46:	6680                	ld	s0,8(a3)
   10d48:	16c1                	addi	a3,a3,-16
   10d4a:	16868e63          	beq	a3,s0,10ec6 <_malloc_r+0x236>
   10d4e:	45fd                	li	a1,31
   10d50:	a031                	j	10d5c <_malloc_r+0xcc>
   10d52:	28075563          	bgez	a4,10fdc <_malloc_r+0x34c>
   10d56:	6c00                	ld	s0,24(s0)
   10d58:	16868763          	beq	a3,s0,10ec6 <_malloc_r+0x236>
   10d5c:	641c                	ld	a5,8(s0)
   10d5e:	9bf1                	andi	a5,a5,-4
   10d60:	40978733          	sub	a4,a5,s1
   10d64:	fee5d7e3          	bge	a1,a4,10d52 <_malloc_r+0xc2>
   10d68:	0209b403          	ld	s0,32(s3)
   10d6c:	6851                	lui	a6,0x14
   10d6e:	f6880813          	addi	a6,a6,-152 # 13f68 <__malloc_av_+0x10>
   10d72:	862a                	mv	a2,a0
   10d74:	17041063          	bne	s0,a6,10ed4 <_malloc_r+0x244>
   10d78:	0089b783          	ld	a5,8(s3)
   10d7c:	4026571b          	sraiw	a4,a2,0x2
   10d80:	4585                	li	a1,1
   10d82:	00e595b3          	sll	a1,a1,a4
   10d86:	1ab7f763          	bgeu	a5,a1,10f34 <_malloc_r+0x2a4>
   10d8a:	0109b403          	ld	s0,16(s3)
   10d8e:	00843a03          	ld	s4,8(s0)
   10d92:	ffca7a93          	andi	s5,s4,-4
   10d96:	009ae763          	bltu	s5,s1,10da4 <_malloc_r+0x114>
   10d9a:	409a87b3          	sub	a5,s5,s1
   10d9e:	477d                	li	a4,31
   10da0:	20f74f63          	blt	a4,a5,10fbe <_malloc_r+0x32e>
   10da4:	7881ba03          	ld	s4,1928(gp) # 147b8 <__malloc_top_pad>
   10da8:	7681b703          	ld	a4,1896(gp) # 14798 <__malloc_sbrk_base>
   10dac:	57fd                	li	a5,-1
   10dae:	01540c33          	add	s8,s0,s5
   10db2:	9a26                	add	s4,s4,s1
   10db4:	3af70163          	beq	a4,a5,11156 <_malloc_r+0x4c6>
   10db8:	6785                	lui	a5,0x1
   10dba:	07fd                	addi	a5,a5,31
   10dbc:	9a3e                	add	s4,s4,a5
   10dbe:	77fd                	lui	a5,0xfffff
   10dc0:	00fa7a33          	and	s4,s4,a5
   10dc4:	85d2                	mv	a1,s4
   10dc6:	854a                	mv	a0,s2
   10dc8:	339000ef          	jal	ra,11900 <_sbrk_r>
   10dcc:	57fd                	li	a5,-1
   10dce:	8b2a                	mv	s6,a0
   10dd0:	30f50a63          	beq	a0,a5,110e4 <_malloc_r+0x454>
   10dd4:	31856663          	bltu	a0,s8,110e0 <_malloc_r+0x450>
   10dd8:	7d818b93          	addi	s7,gp,2008 # 14808 <__malloc_current_mallinfo>
   10ddc:	000ba703          	lw	a4,0(s7)
   10de0:	014707bb          	addw	a5,a4,s4
   10de4:	00fba023          	sw	a5,0(s7)
   10de8:	86be                	mv	a3,a5
   10dea:	3eac0f63          	beq	s8,a0,111e8 <_malloc_r+0x558>
   10dee:	7681b703          	ld	a4,1896(gp) # 14798 <__malloc_sbrk_base>
   10df2:	57fd                	li	a5,-1
   10df4:	40f70663          	beq	a4,a5,11200 <_malloc_r+0x570>
   10df8:	418b07b3          	sub	a5,s6,s8
   10dfc:	9fb5                	addw	a5,a5,a3
   10dfe:	00fba023          	sw	a5,0(s7)
   10e02:	00fb7c13          	andi	s8,s6,15
   10e06:	360c0663          	beqz	s8,11172 <_malloc_r+0x4e2>
   10e0a:	6705                	lui	a4,0x1
   10e0c:	418b0b33          	sub	s6,s6,s8
   10e10:	01070793          	addi	a5,a4,16 # 1010 <register_fini-0xf0a0>
   10e14:	0b41                	addi	s6,s6,16
   10e16:	418787b3          	sub	a5,a5,s8
   10e1a:	014b0cb3          	add	s9,s6,s4
   10e1e:	41978a33          	sub	s4,a5,s9
   10e22:	177d                	addi	a4,a4,-1
   10e24:	00ea7a33          	and	s4,s4,a4
   10e28:	85d2                	mv	a1,s4
   10e2a:	854a                	mv	a0,s2
   10e2c:	2d5000ef          	jal	ra,11900 <_sbrk_r>
   10e30:	57fd                	li	a5,-1
   10e32:	40f50c63          	beq	a0,a5,1124a <_malloc_r+0x5ba>
   10e36:	41650533          	sub	a0,a0,s6
   10e3a:	000a071b          	sext.w	a4,s4
   10e3e:	9a2a                	add	s4,s4,a0
   10e40:	000ba783          	lw	a5,0(s7)
   10e44:	0169b823          	sd	s6,16(s3)
   10e48:	001a6a13          	ori	s4,s4,1
   10e4c:	9fb9                	addw	a5,a5,a4
   10e4e:	00fba023          	sw	a5,0(s7)
   10e52:	014b3423          	sd	s4,8(s6) # ffffffff80000008 <__BSS_END__+0xffffffff7ffeb7d8>
   10e56:	3b340863          	beq	s0,s3,11206 <_malloc_r+0x576>
   10e5a:	467d                	li	a2,31
   10e5c:	3b567763          	bgeu	a2,s5,1120a <_malloc_r+0x57a>
   10e60:	6414                	ld	a3,8(s0)
   10e62:	fe8a8713          	addi	a4,s5,-24
   10e66:	9b41                	andi	a4,a4,-16
   10e68:	8a85                	andi	a3,a3,1
   10e6a:	8ed9                	or	a3,a3,a4
   10e6c:	e414                	sd	a3,8(s0)
   10e6e:	45a5                	li	a1,9
   10e70:	00e406b3          	add	a3,s0,a4
   10e74:	e68c                	sd	a1,8(a3)
   10e76:	ea8c                	sd	a1,16(a3)
   10e78:	3ee66063          	bltu	a2,a4,11258 <_malloc_r+0x5c8>
   10e7c:	008b3a03          	ld	s4,8(s6)
   10e80:	845a                	mv	s0,s6
   10e82:	7801b683          	ld	a3,1920(gp) # 147b0 <__malloc_max_sbrked_mem>
   10e86:	00f6f463          	bgeu	a3,a5,10e8e <_malloc_r+0x1fe>
   10e8a:	78f1b023          	sd	a5,1920(gp) # 147b0 <__malloc_max_sbrked_mem>
   10e8e:	7781b683          	ld	a3,1912(gp) # 147a8 <__malloc_max_total_mem>
   10e92:	24f6fd63          	bgeu	a3,a5,110ec <_malloc_r+0x45c>
   10e96:	76f1bc23          	sd	a5,1912(gp) # 147a8 <__malloc_max_total_mem>
   10e9a:	ac89                	j	110ec <_malloc_r+0x45c>
   10e9c:	47b1                	li	a5,12
   10e9e:	00f92023          	sw	a5,0(s2)
   10ea2:	4501                	li	a0,0
   10ea4:	60e6                	ld	ra,88(sp)
   10ea6:	6446                	ld	s0,80(sp)
   10ea8:	64a6                	ld	s1,72(sp)
   10eaa:	6906                	ld	s2,64(sp)
   10eac:	79e2                	ld	s3,56(sp)
   10eae:	7a42                	ld	s4,48(sp)
   10eb0:	7aa2                	ld	s5,40(sp)
   10eb2:	7b02                	ld	s6,32(sp)
   10eb4:	6be2                	ld	s7,24(sp)
   10eb6:	6c42                	ld	s8,16(sp)
   10eb8:	6ca2                	ld	s9,8(sp)
   10eba:	6125                	addi	sp,sp,96
   10ebc:	8082                	ret
   10ebe:	6f80                	ld	s0,24(a5)
   10ec0:	2609                	addiw	a2,a2,2
   10ec2:	e0879ee3          	bne	a5,s0,10cde <_malloc_r+0x4e>
   10ec6:	0209b403          	ld	s0,32(s3)
   10eca:	6851                	lui	a6,0x14
   10ecc:	f6880813          	addi	a6,a6,-152 # 13f68 <__malloc_av_+0x10>
   10ed0:	eb0404e3          	beq	s0,a6,10d78 <_malloc_r+0xe8>
   10ed4:	641c                	ld	a5,8(s0)
   10ed6:	46fd                	li	a3,31
   10ed8:	9bf1                	andi	a5,a5,-4
   10eda:	40978733          	sub	a4,a5,s1
   10ede:	1ae6c763          	blt	a3,a4,1108c <_malloc_r+0x3fc>
   10ee2:	0309b423          	sd	a6,40(s3)
   10ee6:	0309b023          	sd	a6,32(s3)
   10eea:	0a075f63          	bgez	a4,10fa8 <_malloc_r+0x318>
   10eee:	1ff00713          	li	a4,511
   10ef2:	0ef76863          	bltu	a4,a5,10fe2 <_malloc_r+0x352>
   10ef6:	838d                	srli	a5,a5,0x3
   10ef8:	0017871b          	addiw	a4,a5,1
   10efc:	0017171b          	slliw	a4,a4,0x1
   10f00:	070e                	slli	a4,a4,0x3
   10f02:	0089b503          	ld	a0,8(s3)
   10f06:	974e                	add	a4,a4,s3
   10f08:	630c                	ld	a1,0(a4)
   10f0a:	4027d69b          	sraiw	a3,a5,0x2
   10f0e:	4785                	li	a5,1
   10f10:	00d797b3          	sll	a5,a5,a3
   10f14:	8fc9                	or	a5,a5,a0
   10f16:	ff070693          	addi	a3,a4,-16
   10f1a:	ec14                	sd	a3,24(s0)
   10f1c:	e80c                	sd	a1,16(s0)
   10f1e:	00f9b423          	sd	a5,8(s3)
   10f22:	e300                	sd	s0,0(a4)
   10f24:	ed80                	sd	s0,24(a1)
   10f26:	4026571b          	sraiw	a4,a2,0x2
   10f2a:	4585                	li	a1,1
   10f2c:	00e595b3          	sll	a1,a1,a4
   10f30:	e4b7ede3          	bltu	a5,a1,10d8a <_malloc_r+0xfa>
   10f34:	00f5f733          	and	a4,a1,a5
   10f38:	ef01                	bnez	a4,10f50 <_malloc_r+0x2c0>
   10f3a:	0586                	slli	a1,a1,0x1
   10f3c:	9a71                	andi	a2,a2,-4
   10f3e:	00f5f733          	and	a4,a1,a5
   10f42:	2611                	addiw	a2,a2,4
   10f44:	e711                	bnez	a4,10f50 <_malloc_r+0x2c0>
   10f46:	0586                	slli	a1,a1,0x1
   10f48:	00f5f733          	and	a4,a1,a5
   10f4c:	2611                	addiw	a2,a2,4
   10f4e:	df65                	beqz	a4,10f46 <_malloc_r+0x2b6>
   10f50:	48fd                	li	a7,31
   10f52:	0016031b          	addiw	t1,a2,1
   10f56:	0013131b          	slliw	t1,t1,0x1
   10f5a:	030e                	slli	t1,t1,0x3
   10f5c:	1341                	addi	t1,t1,-16
   10f5e:	934e                	add	t1,t1,s3
   10f60:	851a                	mv	a0,t1
   10f62:	6d1c                	ld	a5,24(a0)
   10f64:	8e32                	mv	t3,a2
   10f66:	0ef50263          	beq	a0,a5,1104a <_malloc_r+0x3ba>
   10f6a:	6798                	ld	a4,8(a5)
   10f6c:	843e                	mv	s0,a5
   10f6e:	6f9c                	ld	a5,24(a5)
   10f70:	9b71                	andi	a4,a4,-4
   10f72:	409706b3          	sub	a3,a4,s1
   10f76:	0ed8c163          	blt	a7,a3,11058 <_malloc_r+0x3c8>
   10f7a:	fe06c6e3          	bltz	a3,10f66 <_malloc_r+0x2d6>
   10f7e:	9722                	add	a4,a4,s0
   10f80:	6714                	ld	a3,8(a4)
   10f82:	6810                	ld	a2,16(s0)
   10f84:	854a                	mv	a0,s2
   10f86:	0016e693          	ori	a3,a3,1
   10f8a:	e714                	sd	a3,8(a4)
   10f8c:	ee1c                	sd	a5,24(a2)
   10f8e:	eb90                	sd	a2,16(a5)
   10f90:	568000ef          	jal	ra,114f8 <__malloc_unlock>
   10f94:	01040513          	addi	a0,s0,16
   10f98:	b731                	j	10ea4 <_malloc_r+0x214>
   10f9a:	40000693          	li	a3,1024
   10f9e:	04000613          	li	a2,64
   10fa2:	03f00513          	li	a0,63
   10fa6:	bb61                	j	10d3e <_malloc_r+0xae>
   10fa8:	97a2                	add	a5,a5,s0
   10faa:	6798                	ld	a4,8(a5)
   10fac:	854a                	mv	a0,s2
   10fae:	00176713          	ori	a4,a4,1
   10fb2:	e798                	sd	a4,8(a5)
   10fb4:	544000ef          	jal	ra,114f8 <__malloc_unlock>
   10fb8:	01040513          	addi	a0,s0,16
   10fbc:	b5e5                	j	10ea4 <_malloc_r+0x214>
   10fbe:	0014e713          	ori	a4,s1,1
   10fc2:	e418                	sd	a4,8(s0)
   10fc4:	94a2                	add	s1,s1,s0
   10fc6:	0099b823          	sd	s1,16(s3)
   10fca:	0017e793          	ori	a5,a5,1
   10fce:	854a                	mv	a0,s2
   10fd0:	e49c                	sd	a5,8(s1)
   10fd2:	526000ef          	jal	ra,114f8 <__malloc_unlock>
   10fd6:	01040513          	addi	a0,s0,16
   10fda:	b5e9                	j	10ea4 <_malloc_r+0x214>
   10fdc:	6c14                	ld	a3,24(s0)
   10fde:	6810                	ld	a2,16(s0)
   10fe0:	b319                	j	10ce6 <_malloc_r+0x56>
   10fe2:	0097d713          	srli	a4,a5,0x9
   10fe6:	4691                	li	a3,4
   10fe8:	0ee6f263          	bgeu	a3,a4,110cc <_malloc_r+0x43c>
   10fec:	46d1                	li	a3,20
   10fee:	1ae6e863          	bltu	a3,a4,1119e <_malloc_r+0x50e>
   10ff2:	05c7059b          	addiw	a1,a4,92
   10ff6:	0015959b          	slliw	a1,a1,0x1
   10ffa:	05b7069b          	addiw	a3,a4,91
   10ffe:	058e                	slli	a1,a1,0x3
   11000:	95ce                	add	a1,a1,s3
   11002:	6198                	ld	a4,0(a1)
   11004:	15c1                	addi	a1,a1,-16
   11006:	14e58b63          	beq	a1,a4,1115c <_malloc_r+0x4cc>
   1100a:	6714                	ld	a3,8(a4)
   1100c:	9af1                	andi	a3,a3,-4
   1100e:	00d7f563          	bgeu	a5,a3,11018 <_malloc_r+0x388>
   11012:	6b18                	ld	a4,16(a4)
   11014:	fee59be3          	bne	a1,a4,1100a <_malloc_r+0x37a>
   11018:	6f0c                	ld	a1,24(a4)
   1101a:	0089b783          	ld	a5,8(s3)
   1101e:	ec0c                	sd	a1,24(s0)
   11020:	e818                	sd	a4,16(s0)
   11022:	e980                	sd	s0,16(a1)
   11024:	ef00                	sd	s0,24(a4)
   11026:	b701                	j	10f26 <_malloc_r+0x296>
   11028:	4751                	li	a4,20
   1102a:	0cf77f63          	bgeu	a4,a5,11108 <_malloc_r+0x478>
   1102e:	05400713          	li	a4,84
   11032:	18f76463          	bltu	a4,a5,111ba <_malloc_r+0x52a>
   11036:	00c4d793          	srli	a5,s1,0xc
   1103a:	06f7861b          	addiw	a2,a5,111
   1103e:	0016169b          	slliw	a3,a2,0x1
   11042:	06e7851b          	addiw	a0,a5,110
   11046:	068e                	slli	a3,a3,0x3
   11048:	b9dd                	j	10d3e <_malloc_r+0xae>
   1104a:	2e05                	addiw	t3,t3,1
   1104c:	003e7793          	andi	a5,t3,3
   11050:	0541                	addi	a0,a0,16
   11052:	cbe1                	beqz	a5,11122 <_malloc_r+0x492>
   11054:	6d1c                	ld	a5,24(a0)
   11056:	bf01                	j	10f66 <_malloc_r+0x2d6>
   11058:	6810                	ld	a2,16(s0)
   1105a:	0014e593          	ori	a1,s1,1
   1105e:	e40c                	sd	a1,8(s0)
   11060:	ee1c                	sd	a5,24(a2)
   11062:	eb90                	sd	a2,16(a5)
   11064:	94a2                	add	s1,s1,s0
   11066:	0299b423          	sd	s1,40(s3)
   1106a:	0299b023          	sd	s1,32(s3)
   1106e:	0016e793          	ori	a5,a3,1
   11072:	0104bc23          	sd	a6,24(s1)
   11076:	0104b823          	sd	a6,16(s1)
   1107a:	e49c                	sd	a5,8(s1)
   1107c:	9722                	add	a4,a4,s0
   1107e:	854a                	mv	a0,s2
   11080:	e314                	sd	a3,0(a4)
   11082:	476000ef          	jal	ra,114f8 <__malloc_unlock>
   11086:	01040513          	addi	a0,s0,16
   1108a:	bd29                	j	10ea4 <_malloc_r+0x214>
   1108c:	0014e693          	ori	a3,s1,1
   11090:	e414                	sd	a3,8(s0)
   11092:	94a2                	add	s1,s1,s0
   11094:	0299b423          	sd	s1,40(s3)
   11098:	0299b023          	sd	s1,32(s3)
   1109c:	00176693          	ori	a3,a4,1
   110a0:	0104bc23          	sd	a6,24(s1)
   110a4:	0104b823          	sd	a6,16(s1)
   110a8:	e494                	sd	a3,8(s1)
   110aa:	97a2                	add	a5,a5,s0
   110ac:	854a                	mv	a0,s2
   110ae:	e398                	sd	a4,0(a5)
   110b0:	448000ef          	jal	ra,114f8 <__malloc_unlock>
   110b4:	01040513          	addi	a0,s0,16
   110b8:	b3f5                	j	10ea4 <_malloc_r+0x214>
   110ba:	0034d613          	srli	a2,s1,0x3
   110be:	0016079b          	addiw	a5,a2,1
   110c2:	0017979b          	slliw	a5,a5,0x1
   110c6:	2601                	sext.w	a2,a2
   110c8:	078e                	slli	a5,a5,0x3
   110ca:	b109                	j	10ccc <_malloc_r+0x3c>
   110cc:	0067d713          	srli	a4,a5,0x6
   110d0:	0397059b          	addiw	a1,a4,57
   110d4:	0015959b          	slliw	a1,a1,0x1
   110d8:	0387069b          	addiw	a3,a4,56
   110dc:	058e                	slli	a1,a1,0x3
   110de:	b70d                	j	11000 <_malloc_r+0x370>
   110e0:	0f340b63          	beq	s0,s3,111d6 <_malloc_r+0x546>
   110e4:	0109b403          	ld	s0,16(s3)
   110e8:	00843a03          	ld	s4,8(s0)
   110ec:	ffca7a13          	andi	s4,s4,-4
   110f0:	409a07b3          	sub	a5,s4,s1
   110f4:	009a6563          	bltu	s4,s1,110fe <_malloc_r+0x46e>
   110f8:	477d                	li	a4,31
   110fa:	ecf742e3          	blt	a4,a5,10fbe <_malloc_r+0x32e>
   110fe:	854a                	mv	a0,s2
   11100:	3f8000ef          	jal	ra,114f8 <__malloc_unlock>
   11104:	4501                	li	a0,0
   11106:	bb79                	j	10ea4 <_malloc_r+0x214>
   11108:	05c7861b          	addiw	a2,a5,92
   1110c:	0016169b          	slliw	a3,a2,0x1
   11110:	05b7851b          	addiw	a0,a5,91
   11114:	068e                	slli	a3,a3,0x3
   11116:	b125                	j	10d3e <_malloc_r+0xae>
   11118:	01033783          	ld	a5,16(t1) # 10154 <foo+0x4>
   1111c:	367d                	addiw	a2,a2,-1
   1111e:	18679363          	bne	a5,t1,112a4 <_malloc_r+0x614>
   11122:	00367793          	andi	a5,a2,3
   11126:	1341                	addi	t1,t1,-16
   11128:	fbe5                	bnez	a5,11118 <_malloc_r+0x488>
   1112a:	0089b703          	ld	a4,8(s3)
   1112e:	fff5c793          	not	a5,a1
   11132:	8ff9                	and	a5,a5,a4
   11134:	00f9b423          	sd	a5,8(s3)
   11138:	0586                	slli	a1,a1,0x1
   1113a:	c4b7e8e3          	bltu	a5,a1,10d8a <_malloc_r+0xfa>
   1113e:	c40586e3          	beqz	a1,10d8a <_malloc_r+0xfa>
   11142:	00f5f733          	and	a4,a1,a5
   11146:	e711                	bnez	a4,11152 <_malloc_r+0x4c2>
   11148:	0586                	slli	a1,a1,0x1
   1114a:	00f5f733          	and	a4,a1,a5
   1114e:	2e11                	addiw	t3,t3,4
   11150:	df65                	beqz	a4,11148 <_malloc_r+0x4b8>
   11152:	8672                	mv	a2,t3
   11154:	bbfd                	j	10f52 <_malloc_r+0x2c2>
   11156:	020a0a13          	addi	s4,s4,32
   1115a:	b1ad                	j	10dc4 <_malloc_r+0x134>
   1115c:	0089b503          	ld	a0,8(s3)
   11160:	4026d69b          	sraiw	a3,a3,0x2
   11164:	4785                	li	a5,1
   11166:	00d797b3          	sll	a5,a5,a3
   1116a:	8fc9                	or	a5,a5,a0
   1116c:	00f9b423          	sd	a5,8(s3)
   11170:	b57d                	j	1101e <_malloc_r+0x38e>
   11172:	014b0c33          	add	s8,s6,s4
   11176:	41800c33          	neg	s8,s8
   1117a:	1c52                	slli	s8,s8,0x34
   1117c:	034c5c13          	srli	s8,s8,0x34
   11180:	85e2                	mv	a1,s8
   11182:	854a                	mv	a0,s2
   11184:	77c000ef          	jal	ra,11900 <_sbrk_r>
   11188:	57fd                	li	a5,-1
   1118a:	4701                	li	a4,0
   1118c:	caf50ae3          	beq	a0,a5,10e40 <_malloc_r+0x1b0>
   11190:	41650533          	sub	a0,a0,s6
   11194:	000c071b          	sext.w	a4,s8
   11198:	01850a33          	add	s4,a0,s8
   1119c:	b155                	j	10e40 <_malloc_r+0x1b0>
   1119e:	05400693          	li	a3,84
   111a2:	06e6e863          	bltu	a3,a4,11212 <_malloc_r+0x582>
   111a6:	00c7d713          	srli	a4,a5,0xc
   111aa:	06f7059b          	addiw	a1,a4,111
   111ae:	0015959b          	slliw	a1,a1,0x1
   111b2:	06e7069b          	addiw	a3,a4,110
   111b6:	058e                	slli	a1,a1,0x3
   111b8:	b5a1                	j	11000 <_malloc_r+0x370>
   111ba:	15400713          	li	a4,340
   111be:	06f76863          	bltu	a4,a5,1122e <_malloc_r+0x59e>
   111c2:	00f4d793          	srli	a5,s1,0xf
   111c6:	0787861b          	addiw	a2,a5,120
   111ca:	0016169b          	slliw	a3,a2,0x1
   111ce:	0777851b          	addiw	a0,a5,119
   111d2:	068e                	slli	a3,a3,0x3
   111d4:	b6ad                	j	10d3e <_malloc_r+0xae>
   111d6:	7d818b93          	addi	s7,gp,2008 # 14808 <__malloc_current_mallinfo>
   111da:	000ba783          	lw	a5,0(s7)
   111de:	014786bb          	addw	a3,a5,s4
   111e2:	00dba023          	sw	a3,0(s7)
   111e6:	b121                	j	10dee <_malloc_r+0x15e>
   111e8:	034c1713          	slli	a4,s8,0x34
   111ec:	c00711e3          	bnez	a4,10dee <_malloc_r+0x15e>
   111f0:	0109b403          	ld	s0,16(s3)
   111f4:	9a56                	add	s4,s4,s5
   111f6:	001a6a13          	ori	s4,s4,1
   111fa:	01443423          	sd	s4,8(s0)
   111fe:	b151                	j	10e82 <_malloc_r+0x1f2>
   11200:	7761b423          	sd	s6,1896(gp) # 14798 <__malloc_sbrk_base>
   11204:	befd                	j	10e02 <_malloc_r+0x172>
   11206:	845a                	mv	s0,s6
   11208:	b9ad                	j	10e82 <_malloc_r+0x1f2>
   1120a:	4785                	li	a5,1
   1120c:	00fb3423          	sd	a5,8(s6)
   11210:	b5fd                	j	110fe <_malloc_r+0x46e>
   11212:	15400693          	li	a3,340
   11216:	04e6ed63          	bltu	a3,a4,11270 <_malloc_r+0x5e0>
   1121a:	00f7d713          	srli	a4,a5,0xf
   1121e:	0787059b          	addiw	a1,a4,120
   11222:	0015959b          	slliw	a1,a1,0x1
   11226:	0777069b          	addiw	a3,a4,119
   1122a:	058e                	slli	a1,a1,0x3
   1122c:	bbd1                	j	11000 <_malloc_r+0x370>
   1122e:	55400713          	li	a4,1364
   11232:	04f76d63          	bltu	a4,a5,1128c <_malloc_r+0x5fc>
   11236:	0124d793          	srli	a5,s1,0x12
   1123a:	07d7861b          	addiw	a2,a5,125
   1123e:	0016169b          	slliw	a3,a2,0x1
   11242:	07c7851b          	addiw	a0,a5,124
   11246:	068e                	slli	a3,a3,0x3
   11248:	bcdd                	j	10d3e <_malloc_r+0xae>
   1124a:	1c41                	addi	s8,s8,-16
   1124c:	018c8a33          	add	s4,s9,s8
   11250:	416a0a33          	sub	s4,s4,s6
   11254:	4701                	li	a4,0
   11256:	b6ed                	j	10e40 <_malloc_r+0x1b0>
   11258:	01040593          	addi	a1,s0,16
   1125c:	854a                	mv	a0,s2
   1125e:	573000ef          	jal	ra,11fd0 <_free_r>
   11262:	0109b403          	ld	s0,16(s3)
   11266:	000ba783          	lw	a5,0(s7)
   1126a:	00843a03          	ld	s4,8(s0)
   1126e:	b911                	j	10e82 <_malloc_r+0x1f2>
   11270:	55400693          	li	a3,1364
   11274:	02e6e363          	bltu	a3,a4,1129a <_malloc_r+0x60a>
   11278:	0127d713          	srli	a4,a5,0x12
   1127c:	07d7059b          	addiw	a1,a4,125
   11280:	0015959b          	slliw	a1,a1,0x1
   11284:	07c7069b          	addiw	a3,a4,124
   11288:	058e                	slli	a1,a1,0x3
   1128a:	bb9d                	j	11000 <_malloc_r+0x370>
   1128c:	7f000693          	li	a3,2032
   11290:	07f00613          	li	a2,127
   11294:	07e00513          	li	a0,126
   11298:	b45d                	j	10d3e <_malloc_r+0xae>
   1129a:	7f000593          	li	a1,2032
   1129e:	07e00693          	li	a3,126
   112a2:	bbb9                	j	11000 <_malloc_r+0x370>
   112a4:	0089b783          	ld	a5,8(s3)
   112a8:	bd41                	j	11138 <_malloc_r+0x4a8>

00000000000112aa <memchr>:
   112aa:	00757793          	andi	a5,a0,7
   112ae:	0ff5f693          	zext.b	a3,a1
   112b2:	c395                	beqz	a5,112d6 <memchr+0x2c>
   112b4:	fff60793          	addi	a5,a2,-1
   112b8:	c605                	beqz	a2,112e0 <memchr+0x36>
   112ba:	567d                	li	a2,-1
   112bc:	a801                	j	112cc <memchr+0x22>
   112be:	0505                	addi	a0,a0,1
   112c0:	00757713          	andi	a4,a0,7
   112c4:	cb11                	beqz	a4,112d8 <memchr+0x2e>
   112c6:	17fd                	addi	a5,a5,-1
   112c8:	00c78c63          	beq	a5,a2,112e0 <memchr+0x36>
   112cc:	00054703          	lbu	a4,0(a0)
   112d0:	fed717e3          	bne	a4,a3,112be <memchr+0x14>
   112d4:	8082                	ret
   112d6:	87b2                	mv	a5,a2
   112d8:	471d                	li	a4,7
   112da:	00f76f63          	bltu	a4,a5,112f8 <memchr+0x4e>
   112de:	e399                	bnez	a5,112e4 <memchr+0x3a>
   112e0:	4501                	li	a0,0
   112e2:	8082                	ret
   112e4:	97aa                	add	a5,a5,a0
   112e6:	a021                	j	112ee <memchr+0x44>
   112e8:	0505                	addi	a0,a0,1
   112ea:	fea78be3          	beq	a5,a0,112e0 <memchr+0x36>
   112ee:	00054703          	lbu	a4,0(a0)
   112f2:	fed71be3          	bne	a4,a3,112e8 <memchr+0x3e>
   112f6:	8082                	ret
   112f8:	0ff5f593          	zext.b	a1,a1
   112fc:	00859713          	slli	a4,a1,0x8
   11300:	8dd9                	or	a1,a1,a4
   11302:	01059713          	slli	a4,a1,0x10
   11306:	7401b883          	ld	a7,1856(gp) # 14770 <__SDATA_BEGIN__+0x8>
   1130a:	8f4d                	or	a4,a4,a1
   1130c:	7481b803          	ld	a6,1864(gp) # 14778 <__SDATA_BEGIN__+0x10>
   11310:	02071593          	slli	a1,a4,0x20
   11314:	8dd9                	or	a1,a1,a4
   11316:	431d                	li	t1,7
   11318:	6118                	ld	a4,0(a0)
   1131a:	8f2d                	xor	a4,a4,a1
   1131c:	01170633          	add	a2,a4,a7
   11320:	fff74713          	not	a4,a4
   11324:	8f71                	and	a4,a4,a2
   11326:	01077733          	and	a4,a4,a6
   1132a:	ff4d                	bnez	a4,112e4 <memchr+0x3a>
   1132c:	17e1                	addi	a5,a5,-8
   1132e:	0521                	addi	a0,a0,8
   11330:	fef364e3          	bltu	t1,a5,11318 <memchr+0x6e>
   11334:	fbc5                	bnez	a5,112e4 <memchr+0x3a>
   11336:	b76d                	j	112e0 <memchr+0x36>

0000000000011338 <memcpy>:
   11338:	00a5c7b3          	xor	a5,a1,a0
   1133c:	8b9d                	andi	a5,a5,7
   1133e:	00c508b3          	add	a7,a0,a2
   11342:	eba1                	bnez	a5,11392 <memcpy+0x5a>
   11344:	479d                	li	a5,7
   11346:	04c7f663          	bgeu	a5,a2,11392 <memcpy+0x5a>
   1134a:	00757793          	andi	a5,a0,7
   1134e:	872a                	mv	a4,a0
   11350:	e7cd                	bnez	a5,113fa <memcpy+0xc2>
   11352:	ff88f613          	andi	a2,a7,-8
   11356:	40e606b3          	sub	a3,a2,a4
   1135a:	04000793          	li	a5,64
   1135e:	04000293          	li	t0,64
   11362:	04d7c463          	blt	a5,a3,113aa <memcpy+0x72>
   11366:	86ae                	mv	a3,a1
   11368:	87ba                	mv	a5,a4
   1136a:	02c77163          	bgeu	a4,a2,1138c <memcpy+0x54>
   1136e:	0006b803          	ld	a6,0(a3) # ffffffffffffe000 <__BSS_END__+0xfffffffffffe97d0>
   11372:	07a1                	addi	a5,a5,8
   11374:	06a1                	addi	a3,a3,8
   11376:	ff07bc23          	sd	a6,-8(a5) # ffffffffffffeff8 <__BSS_END__+0xfffffffffffea7c8>
   1137a:	fec7eae3          	bltu	a5,a2,1136e <memcpy+0x36>
   1137e:	fff60793          	addi	a5,a2,-1
   11382:	8f99                	sub	a5,a5,a4
   11384:	9be1                	andi	a5,a5,-8
   11386:	07a1                	addi	a5,a5,8
   11388:	973e                	add	a4,a4,a5
   1138a:	95be                	add	a1,a1,a5
   1138c:	01176663          	bltu	a4,a7,11398 <memcpy+0x60>
   11390:	8082                	ret
   11392:	872a                	mv	a4,a0
   11394:	ff157ee3          	bgeu	a0,a7,11390 <memcpy+0x58>
   11398:	0005c783          	lbu	a5,0(a1)
   1139c:	0705                	addi	a4,a4,1
   1139e:	0585                	addi	a1,a1,1
   113a0:	fef70fa3          	sb	a5,-1(a4)
   113a4:	ff176ae3          	bltu	a4,a7,11398 <memcpy+0x60>
   113a8:	8082                	ret
   113aa:	6594                	ld	a3,8(a1)
   113ac:	7d9c                	ld	a5,56(a1)
   113ae:	0005bf83          	ld	t6,0(a1)
   113b2:	0105bf03          	ld	t5,16(a1)
   113b6:	0185be83          	ld	t4,24(a1)
   113ba:	0205be03          	ld	t3,32(a1)
   113be:	0285b303          	ld	t1,40(a1)
   113c2:	0305b803          	ld	a6,48(a1)
   113c6:	e714                	sd	a3,8(a4)
   113c8:	61b4                	ld	a3,64(a1)
   113ca:	01f73023          	sd	t6,0(a4)
   113ce:	01e73823          	sd	t5,16(a4)
   113d2:	01d73c23          	sd	t4,24(a4)
   113d6:	03c73023          	sd	t3,32(a4)
   113da:	02673423          	sd	t1,40(a4)
   113de:	03073823          	sd	a6,48(a4)
   113e2:	ff1c                	sd	a5,56(a4)
   113e4:	04870713          	addi	a4,a4,72
   113e8:	40e607b3          	sub	a5,a2,a4
   113ec:	fed73c23          	sd	a3,-8(a4)
   113f0:	04858593          	addi	a1,a1,72
   113f4:	faf2cbe3          	blt	t0,a5,113aa <memcpy+0x72>
   113f8:	b7bd                	j	11366 <memcpy+0x2e>
   113fa:	0005c683          	lbu	a3,0(a1)
   113fe:	0705                	addi	a4,a4,1
   11400:	00777793          	andi	a5,a4,7
   11404:	fed70fa3          	sb	a3,-1(a4)
   11408:	0585                	addi	a1,a1,1
   1140a:	d7a1                	beqz	a5,11352 <memcpy+0x1a>
   1140c:	0005c683          	lbu	a3,0(a1)
   11410:	0705                	addi	a4,a4,1
   11412:	00777793          	andi	a5,a4,7
   11416:	fed70fa3          	sb	a3,-1(a4)
   1141a:	0585                	addi	a1,a1,1
   1141c:	fff9                	bnez	a5,113fa <memcpy+0xc2>
   1141e:	bf15                	j	11352 <memcpy+0x1a>

0000000000011420 <memmove>:
   11420:	02a5f263          	bgeu	a1,a0,11444 <memmove+0x24>
   11424:	00c587b3          	add	a5,a1,a2
   11428:	00f57e63          	bgeu	a0,a5,11444 <memmove+0x24>
   1142c:	00c50733          	add	a4,a0,a2
   11430:	ca5d                	beqz	a2,114e6 <memmove+0xc6>
   11432:	fff7c683          	lbu	a3,-1(a5)
   11436:	17fd                	addi	a5,a5,-1
   11438:	177d                	addi	a4,a4,-1
   1143a:	00d70023          	sb	a3,0(a4)
   1143e:	fef59ae3          	bne	a1,a5,11432 <memmove+0x12>
   11442:	8082                	ret
   11444:	47fd                	li	a5,31
   11446:	02c7e163          	bltu	a5,a2,11468 <memmove+0x48>
   1144a:	87aa                	mv	a5,a0
   1144c:	fff60693          	addi	a3,a2,-1
   11450:	c245                	beqz	a2,114f0 <memmove+0xd0>
   11452:	0685                	addi	a3,a3,1
   11454:	96be                	add	a3,a3,a5
   11456:	0005c703          	lbu	a4,0(a1)
   1145a:	0785                	addi	a5,a5,1
   1145c:	0585                	addi	a1,a1,1
   1145e:	fee78fa3          	sb	a4,-1(a5)
   11462:	fed79ae3          	bne	a5,a3,11456 <memmove+0x36>
   11466:	8082                	ret
   11468:	00a5e7b3          	or	a5,a1,a0
   1146c:	8b9d                	andi	a5,a5,7
   1146e:	efad                	bnez	a5,114e8 <memmove+0xc8>
   11470:	fe060893          	addi	a7,a2,-32
   11474:	fe08f893          	andi	a7,a7,-32
   11478:	02088893          	addi	a7,a7,32
   1147c:	01150833          	add	a6,a0,a7
   11480:	872e                	mv	a4,a1
   11482:	87aa                	mv	a5,a0
   11484:	6314                	ld	a3,0(a4)
   11486:	02070713          	addi	a4,a4,32
   1148a:	02078793          	addi	a5,a5,32
   1148e:	fed7b023          	sd	a3,-32(a5)
   11492:	fe873683          	ld	a3,-24(a4)
   11496:	fed7b423          	sd	a3,-24(a5)
   1149a:	ff073683          	ld	a3,-16(a4)
   1149e:	fed7b823          	sd	a3,-16(a5)
   114a2:	ff873683          	ld	a3,-8(a4)
   114a6:	fed7bc23          	sd	a3,-8(a5)
   114aa:	fcf81de3          	bne	a6,a5,11484 <memmove+0x64>
   114ae:	01867713          	andi	a4,a2,24
   114b2:	95c6                	add	a1,a1,a7
   114b4:	01f67813          	andi	a6,a2,31
   114b8:	cf0d                	beqz	a4,114f2 <memmove+0xd2>
   114ba:	872e                	mv	a4,a1
   114bc:	88be                	mv	a7,a5
   114be:	4e1d                	li	t3,7
   114c0:	00073303          	ld	t1,0(a4)
   114c4:	0721                	addi	a4,a4,8
   114c6:	40e806b3          	sub	a3,a6,a4
   114ca:	0068b023          	sd	t1,0(a7)
   114ce:	96ae                	add	a3,a3,a1
   114d0:	08a1                	addi	a7,a7,8
   114d2:	fede67e3          	bltu	t3,a3,114c0 <memmove+0xa0>
   114d6:	ff880713          	addi	a4,a6,-8
   114da:	9b61                	andi	a4,a4,-8
   114dc:	0721                	addi	a4,a4,8
   114de:	8a1d                	andi	a2,a2,7
   114e0:	97ba                	add	a5,a5,a4
   114e2:	95ba                	add	a1,a1,a4
   114e4:	b7a5                	j	1144c <memmove+0x2c>
   114e6:	8082                	ret
   114e8:	fff60693          	addi	a3,a2,-1
   114ec:	87aa                	mv	a5,a0
   114ee:	b795                	j	11452 <memmove+0x32>
   114f0:	8082                	ret
   114f2:	8642                	mv	a2,a6
   114f4:	bfa1                	j	1144c <memmove+0x2c>

00000000000114f6 <__malloc_lock>:
   114f6:	8082                	ret

00000000000114f8 <__malloc_unlock>:
   114f8:	8082                	ret

00000000000114fa <_realloc_r>:
   114fa:	715d                	addi	sp,sp,-80
   114fc:	f84a                	sd	s2,48(sp)
   114fe:	e486                	sd	ra,72(sp)
   11500:	e0a2                	sd	s0,64(sp)
   11502:	fc26                	sd	s1,56(sp)
   11504:	f44e                	sd	s3,40(sp)
   11506:	f052                	sd	s4,32(sp)
   11508:	ec56                	sd	s5,24(sp)
   1150a:	e85a                	sd	s6,16(sp)
   1150c:	e45e                	sd	s7,8(sp)
   1150e:	e062                	sd	s8,0(sp)
   11510:	8932                	mv	s2,a2
   11512:	14058c63          	beqz	a1,1166a <_realloc_r+0x170>
   11516:	842e                	mv	s0,a1
   11518:	8aaa                	mv	s5,a0
   1151a:	fddff0ef          	jal	ra,114f6 <__malloc_lock>
   1151e:	ff843703          	ld	a4,-8(s0)
   11522:	01790493          	addi	s1,s2,23
   11526:	02e00793          	li	a5,46
   1152a:	ff040b13          	addi	s6,s0,-16
   1152e:	ffc77a13          	andi	s4,a4,-4
   11532:	0a97fd63          	bgeu	a5,s1,115ec <_realloc_r+0xf2>
   11536:	800007b7          	lui	a5,0x80000
   1153a:	98c1                	andi	s1,s1,-16
   1153c:	fff7c793          	not	a5,a5
   11540:	0a97ea63          	bltu	a5,s1,115f4 <_realloc_r+0xfa>
   11544:	0b24e863          	bltu	s1,s2,115f4 <_realloc_r+0xfa>
   11548:	014b09b3          	add	s3,s6,s4
   1154c:	0c9a5e63          	bge	s4,s1,11628 <_realloc_r+0x12e>
   11550:	67d1                	lui	a5,0x14
   11552:	f5878b93          	addi	s7,a5,-168 # 13f58 <__malloc_av_>
   11556:	010bb683          	ld	a3,16(s7)
   1155a:	0089b783          	ld	a5,8(s3)
   1155e:	15368763          	beq	a3,s3,116ac <_realloc_r+0x1b2>
   11562:	ffe7f693          	andi	a3,a5,-2
   11566:	96ce                	add	a3,a3,s3
   11568:	6694                	ld	a3,8(a3)
   1156a:	8a85                	andi	a3,a3,1
   1156c:	e6ed                	bnez	a3,11656 <_realloc_r+0x15c>
   1156e:	9bf1                	andi	a5,a5,-4
   11570:	00fa06b3          	add	a3,s4,a5
   11574:	0a96d163          	bge	a3,s1,11616 <_realloc_r+0x11c>
   11578:	8b05                	andi	a4,a4,1
   1157a:	e30d                	bnez	a4,1159c <_realloc_r+0xa2>
   1157c:	ff043c03          	ld	s8,-16(s0)
   11580:	418b0c33          	sub	s8,s6,s8
   11584:	008c3703          	ld	a4,8(s8)
   11588:	9b71                	andi	a4,a4,-4
   1158a:	97ba                	add	a5,a5,a4
   1158c:	01478bb3          	add	s7,a5,s4
   11590:	269bd463          	bge	s7,s1,117f8 <_realloc_r+0x2fe>
   11594:	00ea0bb3          	add	s7,s4,a4
   11598:	209bd063          	bge	s7,s1,11798 <_realloc_r+0x29e>
   1159c:	85ca                	mv	a1,s2
   1159e:	8556                	mv	a0,s5
   115a0:	ef0ff0ef          	jal	ra,10c90 <_malloc_r>
   115a4:	892a                	mv	s2,a0
   115a6:	cd1d                	beqz	a0,115e4 <_realloc_r+0xea>
   115a8:	ff843783          	ld	a5,-8(s0)
   115ac:	ff050713          	addi	a4,a0,-16
   115b0:	9bf9                	andi	a5,a5,-2
   115b2:	97da                	add	a5,a5,s6
   115b4:	1ce78b63          	beq	a5,a4,1178a <_realloc_r+0x290>
   115b8:	ff8a0613          	addi	a2,s4,-8
   115bc:	04800793          	li	a5,72
   115c0:	22c7e863          	bltu	a5,a2,117f0 <_realloc_r+0x2f6>
   115c4:	02700713          	li	a4,39
   115c8:	6014                	ld	a3,0(s0)
   115ca:	18c76063          	bltu	a4,a2,1174a <_realloc_r+0x250>
   115ce:	87aa                	mv	a5,a0
   115d0:	8722                	mv	a4,s0
   115d2:	e394                	sd	a3,0(a5)
   115d4:	6714                	ld	a3,8(a4)
   115d6:	e794                	sd	a3,8(a5)
   115d8:	6b18                	ld	a4,16(a4)
   115da:	eb98                	sd	a4,16(a5)
   115dc:	85a2                	mv	a1,s0
   115de:	8556                	mv	a0,s5
   115e0:	1f1000ef          	jal	ra,11fd0 <_free_r>
   115e4:	8556                	mv	a0,s5
   115e6:	f13ff0ef          	jal	ra,114f8 <__malloc_unlock>
   115ea:	a809                	j	115fc <_realloc_r+0x102>
   115ec:	02000493          	li	s1,32
   115f0:	f524fce3          	bgeu	s1,s2,11548 <_realloc_r+0x4e>
   115f4:	47b1                	li	a5,12
   115f6:	00faa023          	sw	a5,0(s5)
   115fa:	4901                	li	s2,0
   115fc:	60a6                	ld	ra,72(sp)
   115fe:	6406                	ld	s0,64(sp)
   11600:	74e2                	ld	s1,56(sp)
   11602:	79a2                	ld	s3,40(sp)
   11604:	7a02                	ld	s4,32(sp)
   11606:	6ae2                	ld	s5,24(sp)
   11608:	6b42                	ld	s6,16(sp)
   1160a:	6ba2                	ld	s7,8(sp)
   1160c:	6c02                	ld	s8,0(sp)
   1160e:	854a                	mv	a0,s2
   11610:	7942                	ld	s2,48(sp)
   11612:	6161                	addi	sp,sp,80
   11614:	8082                	ret
   11616:	0189b783          	ld	a5,24(s3)
   1161a:	0109b703          	ld	a4,16(s3)
   1161e:	8a36                	mv	s4,a3
   11620:	00db09b3          	add	s3,s6,a3
   11624:	ef1c                	sd	a5,24(a4)
   11626:	eb98                	sd	a4,16(a5)
   11628:	008b3783          	ld	a5,8(s6)
   1162c:	409a0733          	sub	a4,s4,s1
   11630:	46fd                	li	a3,31
   11632:	8b85                	andi	a5,a5,1
   11634:	04e6e963          	bltu	a3,a4,11686 <_realloc_r+0x18c>
   11638:	00fa67b3          	or	a5,s4,a5
   1163c:	00fb3423          	sd	a5,8(s6)
   11640:	0089b783          	ld	a5,8(s3)
   11644:	0017e793          	ori	a5,a5,1
   11648:	00f9b423          	sd	a5,8(s3)
   1164c:	8556                	mv	a0,s5
   1164e:	eabff0ef          	jal	ra,114f8 <__malloc_unlock>
   11652:	8922                	mv	s2,s0
   11654:	b765                	j	115fc <_realloc_r+0x102>
   11656:	8b05                	andi	a4,a4,1
   11658:	f331                	bnez	a4,1159c <_realloc_r+0xa2>
   1165a:	ff043c03          	ld	s8,-16(s0)
   1165e:	418b0c33          	sub	s8,s6,s8
   11662:	008c3703          	ld	a4,8(s8)
   11666:	9b71                	andi	a4,a4,-4
   11668:	b735                	j	11594 <_realloc_r+0x9a>
   1166a:	6406                	ld	s0,64(sp)
   1166c:	60a6                	ld	ra,72(sp)
   1166e:	74e2                	ld	s1,56(sp)
   11670:	7942                	ld	s2,48(sp)
   11672:	79a2                	ld	s3,40(sp)
   11674:	7a02                	ld	s4,32(sp)
   11676:	6ae2                	ld	s5,24(sp)
   11678:	6b42                	ld	s6,16(sp)
   1167a:	6ba2                	ld	s7,8(sp)
   1167c:	6c02                	ld	s8,0(sp)
   1167e:	85b2                	mv	a1,a2
   11680:	6161                	addi	sp,sp,80
   11682:	e0eff06f          	j	10c90 <_malloc_r>
   11686:	8fc5                	or	a5,a5,s1
   11688:	00fb3423          	sd	a5,8(s6)
   1168c:	009b05b3          	add	a1,s6,s1
   11690:	00176713          	ori	a4,a4,1
   11694:	e598                	sd	a4,8(a1)
   11696:	0089b783          	ld	a5,8(s3)
   1169a:	05c1                	addi	a1,a1,16
   1169c:	8556                	mv	a0,s5
   1169e:	0017e793          	ori	a5,a5,1
   116a2:	00f9b423          	sd	a5,8(s3)
   116a6:	12b000ef          	jal	ra,11fd0 <_free_r>
   116aa:	b74d                	j	1164c <_realloc_r+0x152>
   116ac:	9bf1                	andi	a5,a5,-4
   116ae:	00fa06b3          	add	a3,s4,a5
   116b2:	02048613          	addi	a2,s1,32
   116b6:	0ac6d763          	bge	a3,a2,11764 <_realloc_r+0x26a>
   116ba:	8b05                	andi	a4,a4,1
   116bc:	ee0710e3          	bnez	a4,1159c <_realloc_r+0xa2>
   116c0:	ff043c03          	ld	s8,-16(s0)
   116c4:	418b0c33          	sub	s8,s6,s8
   116c8:	008c3703          	ld	a4,8(s8)
   116cc:	9b71                	andi	a4,a4,-4
   116ce:	97ba                	add	a5,a5,a4
   116d0:	014789b3          	add	s3,a5,s4
   116d4:	ecc9c0e3          	blt	s3,a2,11594 <_realloc_r+0x9a>
   116d8:	018c3783          	ld	a5,24(s8)
   116dc:	010c3703          	ld	a4,16(s8)
   116e0:	ff8a0613          	addi	a2,s4,-8
   116e4:	04800693          	li	a3,72
   116e8:	ef1c                	sd	a5,24(a4)
   116ea:	eb98                	sd	a4,16(a5)
   116ec:	010c0913          	addi	s2,s8,16
   116f0:	1cc6ea63          	bltu	a3,a2,118c4 <_realloc_r+0x3ca>
   116f4:	02700593          	li	a1,39
   116f8:	6018                	ld	a4,0(s0)
   116fa:	87ca                	mv	a5,s2
   116fc:	00c5ff63          	bgeu	a1,a2,1171a <_realloc_r+0x220>
   11700:	00ec3823          	sd	a4,16(s8)
   11704:	6418                	ld	a4,8(s0)
   11706:	03700793          	li	a5,55
   1170a:	00ec3c23          	sd	a4,24(s8)
   1170e:	1cc7e063          	bltu	a5,a2,118ce <_realloc_r+0x3d4>
   11712:	6818                	ld	a4,16(s0)
   11714:	020c0793          	addi	a5,s8,32
   11718:	0441                	addi	s0,s0,16
   1171a:	e398                	sd	a4,0(a5)
   1171c:	6418                	ld	a4,8(s0)
   1171e:	e798                	sd	a4,8(a5)
   11720:	6818                	ld	a4,16(s0)
   11722:	eb98                	sd	a4,16(a5)
   11724:	009c0733          	add	a4,s8,s1
   11728:	409989b3          	sub	s3,s3,s1
   1172c:	00ebb823          	sd	a4,16(s7)
   11730:	0019e793          	ori	a5,s3,1
   11734:	e71c                	sd	a5,8(a4)
   11736:	008c3783          	ld	a5,8(s8)
   1173a:	8556                	mv	a0,s5
   1173c:	8b85                	andi	a5,a5,1
   1173e:	8cdd                	or	s1,s1,a5
   11740:	009c3423          	sd	s1,8(s8)
   11744:	db5ff0ef          	jal	ra,114f8 <__malloc_unlock>
   11748:	bd55                	j	115fc <_realloc_r+0x102>
   1174a:	e114                	sd	a3,0(a0)
   1174c:	6414                	ld	a3,8(s0)
   1174e:	03700713          	li	a4,55
   11752:	e514                	sd	a3,8(a0)
   11754:	10c76f63          	bltu	a4,a2,11872 <_realloc_r+0x378>
   11758:	6814                	ld	a3,16(s0)
   1175a:	01040713          	addi	a4,s0,16
   1175e:	01050793          	addi	a5,a0,16
   11762:	bd85                	j	115d2 <_realloc_r+0xd8>
   11764:	9b26                	add	s6,s6,s1
   11766:	8e85                	sub	a3,a3,s1
   11768:	016bb823          	sd	s6,16(s7)
   1176c:	0016e793          	ori	a5,a3,1
   11770:	00fb3423          	sd	a5,8(s6)
   11774:	ff843783          	ld	a5,-8(s0)
   11778:	8556                	mv	a0,s5
   1177a:	8922                	mv	s2,s0
   1177c:	8b85                	andi	a5,a5,1
   1177e:	8cdd                	or	s1,s1,a5
   11780:	fe943c23          	sd	s1,-8(s0)
   11784:	d75ff0ef          	jal	ra,114f8 <__malloc_unlock>
   11788:	bd95                	j	115fc <_realloc_r+0x102>
   1178a:	ff853783          	ld	a5,-8(a0)
   1178e:	9bf1                	andi	a5,a5,-4
   11790:	9a3e                	add	s4,s4,a5
   11792:	014b09b3          	add	s3,s6,s4
   11796:	bd49                	j	11628 <_realloc_r+0x12e>
   11798:	018c3783          	ld	a5,24(s8)
   1179c:	010c3703          	ld	a4,16(s8)
   117a0:	ff8a0613          	addi	a2,s4,-8
   117a4:	04800693          	li	a3,72
   117a8:	ef1c                	sd	a5,24(a4)
   117aa:	eb98                	sd	a4,16(a5)
   117ac:	010c0913          	addi	s2,s8,16
   117b0:	017c09b3          	add	s3,s8,s7
   117b4:	0ac6e763          	bltu	a3,a2,11862 <_realloc_r+0x368>
   117b8:	02700593          	li	a1,39
   117bc:	6018                	ld	a4,0(s0)
   117be:	87ca                	mv	a5,s2
   117c0:	00c5ff63          	bgeu	a1,a2,117de <_realloc_r+0x2e4>
   117c4:	00ec3823          	sd	a4,16(s8)
   117c8:	6418                	ld	a4,8(s0)
   117ca:	03700793          	li	a5,55
   117ce:	00ec3c23          	sd	a4,24(s8)
   117d2:	0ac7ec63          	bltu	a5,a2,1188a <_realloc_r+0x390>
   117d6:	6818                	ld	a4,16(s0)
   117d8:	020c0793          	addi	a5,s8,32
   117dc:	0441                	addi	s0,s0,16
   117de:	e398                	sd	a4,0(a5)
   117e0:	6418                	ld	a4,8(s0)
   117e2:	8a5e                	mv	s4,s7
   117e4:	8b62                	mv	s6,s8
   117e6:	e798                	sd	a4,8(a5)
   117e8:	6818                	ld	a4,16(s0)
   117ea:	844a                	mv	s0,s2
   117ec:	eb98                	sd	a4,16(a5)
   117ee:	bd2d                	j	11628 <_realloc_r+0x12e>
   117f0:	85a2                	mv	a1,s0
   117f2:	c2fff0ef          	jal	ra,11420 <memmove>
   117f6:	b3dd                	j	115dc <_realloc_r+0xe2>
   117f8:	0189b783          	ld	a5,24(s3)
   117fc:	0109b703          	ld	a4,16(s3)
   11800:	ff8a0613          	addi	a2,s4,-8
   11804:	04800693          	li	a3,72
   11808:	ef1c                	sd	a5,24(a4)
   1180a:	eb98                	sd	a4,16(a5)
   1180c:	010c3703          	ld	a4,16(s8)
   11810:	018c3783          	ld	a5,24(s8)
   11814:	010c0913          	addi	s2,s8,16
   11818:	017c09b3          	add	s3,s8,s7
   1181c:	ef1c                	sd	a5,24(a4)
   1181e:	eb98                	sd	a4,16(a5)
   11820:	04c6e163          	bltu	a3,a2,11862 <_realloc_r+0x368>
   11824:	02700693          	li	a3,39
   11828:	6018                	ld	a4,0(s0)
   1182a:	87ca                	mv	a5,s2
   1182c:	fac6f9e3          	bgeu	a3,a2,117de <_realloc_r+0x2e4>
   11830:	00ec3823          	sd	a4,16(s8)
   11834:	6418                	ld	a4,8(s0)
   11836:	03700793          	li	a5,55
   1183a:	00ec3c23          	sd	a4,24(s8)
   1183e:	6818                	ld	a4,16(s0)
   11840:	f8c7fce3          	bgeu	a5,a2,117d8 <_realloc_r+0x2de>
   11844:	02ec3023          	sd	a4,32(s8)
   11848:	6c18                	ld	a4,24(s0)
   1184a:	04800793          	li	a5,72
   1184e:	02ec3423          	sd	a4,40(s8)
   11852:	7018                	ld	a4,32(s0)
   11854:	04f60463          	beq	a2,a5,1189c <_realloc_r+0x3a2>
   11858:	030c0793          	addi	a5,s8,48
   1185c:	02040413          	addi	s0,s0,32
   11860:	bfbd                	j	117de <_realloc_r+0x2e4>
   11862:	85a2                	mv	a1,s0
   11864:	854a                	mv	a0,s2
   11866:	bbbff0ef          	jal	ra,11420 <memmove>
   1186a:	844a                	mv	s0,s2
   1186c:	8a5e                	mv	s4,s7
   1186e:	8b62                	mv	s6,s8
   11870:	bb65                	j	11628 <_realloc_r+0x12e>
   11872:	6818                	ld	a4,16(s0)
   11874:	e918                	sd	a4,16(a0)
   11876:	6c18                	ld	a4,24(s0)
   11878:	ed18                	sd	a4,24(a0)
   1187a:	7014                	ld	a3,32(s0)
   1187c:	02f60b63          	beq	a2,a5,118b2 <_realloc_r+0x3b8>
   11880:	02040713          	addi	a4,s0,32
   11884:	02050793          	addi	a5,a0,32
   11888:	b3a9                	j	115d2 <_realloc_r+0xd8>
   1188a:	681c                	ld	a5,16(s0)
   1188c:	02fc3023          	sd	a5,32(s8)
   11890:	6c1c                	ld	a5,24(s0)
   11892:	02fc3423          	sd	a5,40(s8)
   11896:	7018                	ld	a4,32(s0)
   11898:	fcd610e3          	bne	a2,a3,11858 <_realloc_r+0x35e>
   1189c:	02ec3823          	sd	a4,48(s8)
   118a0:	7418                	ld	a4,40(s0)
   118a2:	040c0793          	addi	a5,s8,64
   118a6:	03040413          	addi	s0,s0,48
   118aa:	02ec3c23          	sd	a4,56(s8)
   118ae:	6018                	ld	a4,0(s0)
   118b0:	b73d                	j	117de <_realloc_r+0x2e4>
   118b2:	f114                	sd	a3,32(a0)
   118b4:	7414                	ld	a3,40(s0)
   118b6:	03040713          	addi	a4,s0,48
   118ba:	03050793          	addi	a5,a0,48
   118be:	f514                	sd	a3,40(a0)
   118c0:	7814                	ld	a3,48(s0)
   118c2:	bb01                	j	115d2 <_realloc_r+0xd8>
   118c4:	85a2                	mv	a1,s0
   118c6:	854a                	mv	a0,s2
   118c8:	b59ff0ef          	jal	ra,11420 <memmove>
   118cc:	bda1                	j	11724 <_realloc_r+0x22a>
   118ce:	681c                	ld	a5,16(s0)
   118d0:	02fc3023          	sd	a5,32(s8)
   118d4:	6c1c                	ld	a5,24(s0)
   118d6:	02fc3423          	sd	a5,40(s8)
   118da:	7018                	ld	a4,32(s0)
   118dc:	00d60763          	beq	a2,a3,118ea <_realloc_r+0x3f0>
   118e0:	030c0793          	addi	a5,s8,48
   118e4:	02040413          	addi	s0,s0,32
   118e8:	bd0d                	j	1171a <_realloc_r+0x220>
   118ea:	02ec3823          	sd	a4,48(s8)
   118ee:	7418                	ld	a4,40(s0)
   118f0:	040c0793          	addi	a5,s8,64
   118f4:	03040413          	addi	s0,s0,48
   118f8:	02ec3c23          	sd	a4,56(s8)
   118fc:	6018                	ld	a4,0(s0)
   118fe:	bd31                	j	1171a <_realloc_r+0x220>

0000000000011900 <_sbrk_r>:
   11900:	1101                	addi	sp,sp,-32
   11902:	e822                	sd	s0,16(sp)
   11904:	e426                	sd	s1,8(sp)
   11906:	842a                	mv	s0,a0
   11908:	852e                	mv	a0,a1
   1190a:	ec06                	sd	ra,24(sp)
   1190c:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   11910:	5a7000ef          	jal	ra,126b6 <_sbrk>
   11914:	57fd                	li	a5,-1
   11916:	00f50763          	beq	a0,a5,11924 <_sbrk_r+0x24>
   1191a:	60e2                	ld	ra,24(sp)
   1191c:	6442                	ld	s0,16(sp)
   1191e:	64a2                	ld	s1,8(sp)
   11920:	6105                	addi	sp,sp,32
   11922:	8082                	ret
   11924:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   11928:	dbed                	beqz	a5,1191a <_sbrk_r+0x1a>
   1192a:	60e2                	ld	ra,24(sp)
   1192c:	c01c                	sw	a5,0(s0)
   1192e:	6442                	ld	s0,16(sp)
   11930:	64a2                	ld	s1,8(sp)
   11932:	6105                	addi	sp,sp,32
   11934:	8082                	ret

0000000000011936 <__sread>:
   11936:	1141                	addi	sp,sp,-16
   11938:	e022                	sd	s0,0(sp)
   1193a:	842e                	mv	s0,a1
   1193c:	01259583          	lh	a1,18(a1)
   11940:	e406                	sd	ra,8(sp)
   11942:	2ad000ef          	jal	ra,123ee <_read_r>
   11946:	00054963          	bltz	a0,11958 <__sread+0x22>
   1194a:	685c                	ld	a5,144(s0)
   1194c:	60a2                	ld	ra,8(sp)
   1194e:	97aa                	add	a5,a5,a0
   11950:	e85c                	sd	a5,144(s0)
   11952:	6402                	ld	s0,0(sp)
   11954:	0141                	addi	sp,sp,16
   11956:	8082                	ret
   11958:	01045783          	lhu	a5,16(s0)
   1195c:	777d                	lui	a4,0xfffff
   1195e:	177d                	addi	a4,a4,-1
   11960:	8ff9                	and	a5,a5,a4
   11962:	60a2                	ld	ra,8(sp)
   11964:	00f41823          	sh	a5,16(s0)
   11968:	6402                	ld	s0,0(sp)
   1196a:	0141                	addi	sp,sp,16
   1196c:	8082                	ret

000000000001196e <__seofread>:
   1196e:	4501                	li	a0,0
   11970:	8082                	ret

0000000000011972 <__swrite>:
   11972:	01059783          	lh	a5,16(a1)
   11976:	7179                	addi	sp,sp,-48
   11978:	f022                	sd	s0,32(sp)
   1197a:	ec26                	sd	s1,24(sp)
   1197c:	e84a                	sd	s2,16(sp)
   1197e:	e44e                	sd	s3,8(sp)
   11980:	f406                	sd	ra,40(sp)
   11982:	1007f713          	andi	a4,a5,256
   11986:	842e                	mv	s0,a1
   11988:	84aa                	mv	s1,a0
   1198a:	01259583          	lh	a1,18(a1)
   1198e:	8932                	mv	s2,a2
   11990:	89b6                	mv	s3,a3
   11992:	e305                	bnez	a4,119b2 <__swrite+0x40>
   11994:	777d                	lui	a4,0xfffff
   11996:	177d                	addi	a4,a4,-1
   11998:	8ff9                	and	a5,a5,a4
   1199a:	00f41823          	sh	a5,16(s0)
   1199e:	7402                	ld	s0,32(sp)
   119a0:	70a2                	ld	ra,40(sp)
   119a2:	86ce                	mv	a3,s3
   119a4:	864a                	mv	a2,s2
   119a6:	69a2                	ld	s3,8(sp)
   119a8:	6942                	ld	s2,16(sp)
   119aa:	8526                	mv	a0,s1
   119ac:	64e2                	ld	s1,24(sp)
   119ae:	6145                	addi	sp,sp,48
   119b0:	a8b1                	j	11a0c <_write_r>
   119b2:	4689                	li	a3,2
   119b4:	4601                	li	a2,0
   119b6:	067000ef          	jal	ra,1221c <_lseek_r>
   119ba:	01041783          	lh	a5,16(s0)
   119be:	01241583          	lh	a1,18(s0)
   119c2:	bfc9                	j	11994 <__swrite+0x22>

00000000000119c4 <__sseek>:
   119c4:	1141                	addi	sp,sp,-16
   119c6:	e022                	sd	s0,0(sp)
   119c8:	842e                	mv	s0,a1
   119ca:	01259583          	lh	a1,18(a1)
   119ce:	e406                	sd	ra,8(sp)
   119d0:	04d000ef          	jal	ra,1221c <_lseek_r>
   119d4:	57fd                	li	a5,-1
   119d6:	00f50d63          	beq	a0,a5,119f0 <__sseek+0x2c>
   119da:	01045783          	lhu	a5,16(s0)
   119de:	6705                	lui	a4,0x1
   119e0:	60a2                	ld	ra,8(sp)
   119e2:	8fd9                	or	a5,a5,a4
   119e4:	e848                	sd	a0,144(s0)
   119e6:	00f41823          	sh	a5,16(s0)
   119ea:	6402                	ld	s0,0(sp)
   119ec:	0141                	addi	sp,sp,16
   119ee:	8082                	ret
   119f0:	01045783          	lhu	a5,16(s0)
   119f4:	777d                	lui	a4,0xfffff
   119f6:	177d                	addi	a4,a4,-1
   119f8:	8ff9                	and	a5,a5,a4
   119fa:	60a2                	ld	ra,8(sp)
   119fc:	00f41823          	sh	a5,16(s0)
   11a00:	6402                	ld	s0,0(sp)
   11a02:	0141                	addi	sp,sp,16
   11a04:	8082                	ret

0000000000011a06 <__sclose>:
   11a06:	01259583          	lh	a1,18(a1)
   11a0a:	a275                	j	11bb6 <_close_r>

0000000000011a0c <_write_r>:
   11a0c:	1101                	addi	sp,sp,-32
   11a0e:	872e                	mv	a4,a1
   11a10:	e822                	sd	s0,16(sp)
   11a12:	e426                	sd	s1,8(sp)
   11a14:	85b2                	mv	a1,a2
   11a16:	842a                	mv	s0,a0
   11a18:	8636                	mv	a2,a3
   11a1a:	853a                	mv	a0,a4
   11a1c:	ec06                	sd	ra,24(sp)
   11a1e:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   11a22:	4e9000ef          	jal	ra,1270a <_write>
   11a26:	57fd                	li	a5,-1
   11a28:	00f50763          	beq	a0,a5,11a36 <_write_r+0x2a>
   11a2c:	60e2                	ld	ra,24(sp)
   11a2e:	6442                	ld	s0,16(sp)
   11a30:	64a2                	ld	s1,8(sp)
   11a32:	6105                	addi	sp,sp,32
   11a34:	8082                	ret
   11a36:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   11a3a:	dbed                	beqz	a5,11a2c <_write_r+0x20>
   11a3c:	60e2                	ld	ra,24(sp)
   11a3e:	c01c                	sw	a5,0(s0)
   11a40:	6442                	ld	s0,16(sp)
   11a42:	64a2                	ld	s1,8(sp)
   11a44:	6105                	addi	sp,sp,32
   11a46:	8082                	ret

0000000000011a48 <__swsetup_r>:
   11a48:	7601b783          	ld	a5,1888(gp) # 14790 <_impure_ptr>
   11a4c:	1101                	addi	sp,sp,-32
   11a4e:	e822                	sd	s0,16(sp)
   11a50:	e426                	sd	s1,8(sp)
   11a52:	ec06                	sd	ra,24(sp)
   11a54:	84aa                	mv	s1,a0
   11a56:	842e                	mv	s0,a1
   11a58:	c399                	beqz	a5,11a5e <__swsetup_r+0x16>
   11a5a:	4bb8                	lw	a4,80(a5)
   11a5c:	cf21                	beqz	a4,11ab4 <__swsetup_r+0x6c>
   11a5e:	01041703          	lh	a4,16(s0)
   11a62:	03071793          	slli	a5,a4,0x30
   11a66:	00877693          	andi	a3,a4,8
   11a6a:	93c1                	srli	a5,a5,0x30
   11a6c:	ceb9                	beqz	a3,11aca <__swsetup_r+0x82>
   11a6e:	6c14                	ld	a3,24(s0)
   11a70:	cabd                	beqz	a3,11ae6 <__swsetup_r+0x9e>
   11a72:	0017f613          	andi	a2,a5,1
   11a76:	ce11                	beqz	a2,11a92 <__swsetup_r+0x4a>
   11a78:	5010                	lw	a2,32(s0)
   11a7a:	00042623          	sw	zero,12(s0)
   11a7e:	4501                	li	a0,0
   11a80:	40c0063b          	negw	a2,a2
   11a84:	d410                	sw	a2,40(s0)
   11a86:	ce91                	beqz	a3,11aa2 <__swsetup_r+0x5a>
   11a88:	60e2                	ld	ra,24(sp)
   11a8a:	6442                	ld	s0,16(sp)
   11a8c:	64a2                	ld	s1,8(sp)
   11a8e:	6105                	addi	sp,sp,32
   11a90:	8082                	ret
   11a92:	0027f613          	andi	a2,a5,2
   11a96:	4581                	li	a1,0
   11a98:	e211                	bnez	a2,11a9c <__swsetup_r+0x54>
   11a9a:	500c                	lw	a1,32(s0)
   11a9c:	c44c                	sw	a1,12(s0)
   11a9e:	4501                	li	a0,0
   11aa0:	f6e5                	bnez	a3,11a88 <__swsetup_r+0x40>
   11aa2:	0807f793          	andi	a5,a5,128
   11aa6:	d3ed                	beqz	a5,11a88 <__swsetup_r+0x40>
   11aa8:	04076713          	ori	a4,a4,64
   11aac:	00e41823          	sh	a4,16(s0)
   11ab0:	557d                	li	a0,-1
   11ab2:	bfd9                	j	11a88 <__swsetup_r+0x40>
   11ab4:	853e                	mv	a0,a5
   11ab6:	d49fe0ef          	jal	ra,107fe <__sinit>
   11aba:	01041703          	lh	a4,16(s0)
   11abe:	03071793          	slli	a5,a4,0x30
   11ac2:	00877693          	andi	a3,a4,8
   11ac6:	93c1                	srli	a5,a5,0x30
   11ac8:	f2dd                	bnez	a3,11a6e <__swsetup_r+0x26>
   11aca:	0107f693          	andi	a3,a5,16
   11ace:	c2ad                	beqz	a3,11b30 <__swsetup_r+0xe8>
   11ad0:	8b91                	andi	a5,a5,4
   11ad2:	eb9d                	bnez	a5,11b08 <__swsetup_r+0xc0>
   11ad4:	6c14                	ld	a3,24(s0)
   11ad6:	00876713          	ori	a4,a4,8
   11ada:	03071793          	slli	a5,a4,0x30
   11ade:	00e41823          	sh	a4,16(s0)
   11ae2:	93c1                	srli	a5,a5,0x30
   11ae4:	f6d9                	bnez	a3,11a72 <__swsetup_r+0x2a>
   11ae6:	2807f613          	andi	a2,a5,640
   11aea:	20000593          	li	a1,512
   11aee:	f8b602e3          	beq	a2,a1,11a72 <__swsetup_r+0x2a>
   11af2:	85a2                	mv	a1,s0
   11af4:	8526                	mv	a0,s1
   11af6:	762000ef          	jal	ra,12258 <__smakebuf_r>
   11afa:	01041703          	lh	a4,16(s0)
   11afe:	6c14                	ld	a3,24(s0)
   11b00:	03071793          	slli	a5,a4,0x30
   11b04:	93c1                	srli	a5,a5,0x30
   11b06:	b7b5                	j	11a72 <__swsetup_r+0x2a>
   11b08:	6c2c                	ld	a1,88(s0)
   11b0a:	cd81                	beqz	a1,11b22 <__swsetup_r+0xda>
   11b0c:	07440793          	addi	a5,s0,116
   11b10:	00f58763          	beq	a1,a5,11b1e <__swsetup_r+0xd6>
   11b14:	8526                	mv	a0,s1
   11b16:	4ba000ef          	jal	ra,11fd0 <_free_r>
   11b1a:	01041703          	lh	a4,16(s0)
   11b1e:	04043c23          	sd	zero,88(s0)
   11b22:	6c14                	ld	a3,24(s0)
   11b24:	fdb77713          	andi	a4,a4,-37
   11b28:	00042423          	sw	zero,8(s0)
   11b2c:	e014                	sd	a3,0(s0)
   11b2e:	b765                	j	11ad6 <__swsetup_r+0x8e>
   11b30:	47a5                	li	a5,9
   11b32:	c09c                	sw	a5,0(s1)
   11b34:	04076713          	ori	a4,a4,64
   11b38:	00e41823          	sh	a4,16(s0)
   11b3c:	557d                	li	a0,-1
   11b3e:	b7a9                	j	11a88 <__swsetup_r+0x40>

0000000000011b40 <__register_exitproc>:
   11b40:	7501b703          	ld	a4,1872(gp) # 14780 <_global_impure_ptr>
   11b44:	1f873783          	ld	a5,504(a4) # fffffffffffff1f8 <__BSS_END__+0xfffffffffffea9c8>
   11b48:	c3b1                	beqz	a5,11b8c <__register_exitproc+0x4c>
   11b4a:	4798                	lw	a4,8(a5)
   11b4c:	487d                	li	a6,31
   11b4e:	06e84263          	blt	a6,a4,11bb2 <__register_exitproc+0x72>
   11b52:	c505                	beqz	a0,11b7a <__register_exitproc+0x3a>
   11b54:	00371813          	slli	a6,a4,0x3
   11b58:	983e                	add	a6,a6,a5
   11b5a:	10c83823          	sd	a2,272(a6)
   11b5e:	3107a883          	lw	a7,784(a5)
   11b62:	4605                	li	a2,1
   11b64:	00e6163b          	sllw	a2,a2,a4
   11b68:	00c8e8b3          	or	a7,a7,a2
   11b6c:	3117a823          	sw	a7,784(a5)
   11b70:	20d83823          	sd	a3,528(a6)
   11b74:	4689                	li	a3,2
   11b76:	02d50063          	beq	a0,a3,11b96 <__register_exitproc+0x56>
   11b7a:	00270693          	addi	a3,a4,2
   11b7e:	068e                	slli	a3,a3,0x3
   11b80:	2705                	addiw	a4,a4,1
   11b82:	c798                	sw	a4,8(a5)
   11b84:	97b6                	add	a5,a5,a3
   11b86:	e38c                	sd	a1,0(a5)
   11b88:	4501                	li	a0,0
   11b8a:	8082                	ret
   11b8c:	20070793          	addi	a5,a4,512
   11b90:	1ef73c23          	sd	a5,504(a4)
   11b94:	bf5d                	j	11b4a <__register_exitproc+0xa>
   11b96:	3147a683          	lw	a3,788(a5)
   11b9a:	4501                	li	a0,0
   11b9c:	8e55                	or	a2,a2,a3
   11b9e:	00270693          	addi	a3,a4,2
   11ba2:	068e                	slli	a3,a3,0x3
   11ba4:	2705                	addiw	a4,a4,1
   11ba6:	30c7aa23          	sw	a2,788(a5)
   11baa:	c798                	sw	a4,8(a5)
   11bac:	97b6                	add	a5,a5,a3
   11bae:	e38c                	sd	a1,0(a5)
   11bb0:	8082                	ret
   11bb2:	557d                	li	a0,-1
   11bb4:	8082                	ret

0000000000011bb6 <_close_r>:
   11bb6:	1101                	addi	sp,sp,-32
   11bb8:	e822                	sd	s0,16(sp)
   11bba:	e426                	sd	s1,8(sp)
   11bbc:	842a                	mv	s0,a0
   11bbe:	852e                	mv	a0,a1
   11bc0:	ec06                	sd	ra,24(sp)
   11bc2:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   11bc6:	1e5000ef          	jal	ra,125aa <_close>
   11bca:	57fd                	li	a5,-1
   11bcc:	00f50763          	beq	a0,a5,11bda <_close_r+0x24>
   11bd0:	60e2                	ld	ra,24(sp)
   11bd2:	6442                	ld	s0,16(sp)
   11bd4:	64a2                	ld	s1,8(sp)
   11bd6:	6105                	addi	sp,sp,32
   11bd8:	8082                	ret
   11bda:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   11bde:	dbed                	beqz	a5,11bd0 <_close_r+0x1a>
   11be0:	60e2                	ld	ra,24(sp)
   11be2:	c01c                	sw	a5,0(s0)
   11be4:	6442                	ld	s0,16(sp)
   11be6:	64a2                	ld	s1,8(sp)
   11be8:	6105                	addi	sp,sp,32
   11bea:	8082                	ret

0000000000011bec <_fclose_r.part.0>:
   11bec:	1101                	addi	sp,sp,-32
   11bee:	e822                	sd	s0,16(sp)
   11bf0:	e426                	sd	s1,8(sp)
   11bf2:	e04a                	sd	s2,0(sp)
   11bf4:	842e                	mv	s0,a1
   11bf6:	ec06                	sd	ra,24(sp)
   11bf8:	84aa                	mv	s1,a0
   11bfa:	0f2000ef          	jal	ra,11cec <__sflush_r>
   11bfe:	683c                	ld	a5,80(s0)
   11c00:	892a                	mv	s2,a0
   11c02:	c791                	beqz	a5,11c0e <_fclose_r.part.0+0x22>
   11c04:	780c                	ld	a1,48(s0)
   11c06:	8526                	mv	a0,s1
   11c08:	9782                	jalr	a5
   11c0a:	04054663          	bltz	a0,11c56 <_fclose_r.part.0+0x6a>
   11c0e:	01045783          	lhu	a5,16(s0)
   11c12:	0807f793          	andi	a5,a5,128
   11c16:	e7b1                	bnez	a5,11c62 <_fclose_r.part.0+0x76>
   11c18:	6c2c                	ld	a1,88(s0)
   11c1a:	c991                	beqz	a1,11c2e <_fclose_r.part.0+0x42>
   11c1c:	07440793          	addi	a5,s0,116
   11c20:	00f58563          	beq	a1,a5,11c2a <_fclose_r.part.0+0x3e>
   11c24:	8526                	mv	a0,s1
   11c26:	3aa000ef          	jal	ra,11fd0 <_free_r>
   11c2a:	04043c23          	sd	zero,88(s0)
   11c2e:	7c2c                	ld	a1,120(s0)
   11c30:	c591                	beqz	a1,11c3c <_fclose_r.part.0+0x50>
   11c32:	8526                	mv	a0,s1
   11c34:	39c000ef          	jal	ra,11fd0 <_free_r>
   11c38:	06043c23          	sd	zero,120(s0)
   11c3c:	bcbfe0ef          	jal	ra,10806 <__sfp_lock_acquire>
   11c40:	00041823          	sh	zero,16(s0)
   11c44:	bc5fe0ef          	jal	ra,10808 <__sfp_lock_release>
   11c48:	60e2                	ld	ra,24(sp)
   11c4a:	6442                	ld	s0,16(sp)
   11c4c:	64a2                	ld	s1,8(sp)
   11c4e:	854a                	mv	a0,s2
   11c50:	6902                	ld	s2,0(sp)
   11c52:	6105                	addi	sp,sp,32
   11c54:	8082                	ret
   11c56:	01045783          	lhu	a5,16(s0)
   11c5a:	597d                	li	s2,-1
   11c5c:	0807f793          	andi	a5,a5,128
   11c60:	dfc5                	beqz	a5,11c18 <_fclose_r.part.0+0x2c>
   11c62:	6c0c                	ld	a1,24(s0)
   11c64:	8526                	mv	a0,s1
   11c66:	36a000ef          	jal	ra,11fd0 <_free_r>
   11c6a:	b77d                	j	11c18 <_fclose_r.part.0+0x2c>

0000000000011c6c <_fclose_r>:
   11c6c:	cd8d                	beqz	a1,11ca6 <_fclose_r+0x3a>
   11c6e:	1101                	addi	sp,sp,-32
   11c70:	e822                	sd	s0,16(sp)
   11c72:	ec06                	sd	ra,24(sp)
   11c74:	842a                	mv	s0,a0
   11c76:	c119                	beqz	a0,11c7c <_fclose_r+0x10>
   11c78:	493c                	lw	a5,80(a0)
   11c7a:	cf91                	beqz	a5,11c96 <_fclose_r+0x2a>
   11c7c:	01059783          	lh	a5,16(a1)
   11c80:	e791                	bnez	a5,11c8c <_fclose_r+0x20>
   11c82:	60e2                	ld	ra,24(sp)
   11c84:	6442                	ld	s0,16(sp)
   11c86:	4501                	li	a0,0
   11c88:	6105                	addi	sp,sp,32
   11c8a:	8082                	ret
   11c8c:	8522                	mv	a0,s0
   11c8e:	6442                	ld	s0,16(sp)
   11c90:	60e2                	ld	ra,24(sp)
   11c92:	6105                	addi	sp,sp,32
   11c94:	bfa1                	j	11bec <_fclose_r.part.0>
   11c96:	e42e                	sd	a1,8(sp)
   11c98:	b67fe0ef          	jal	ra,107fe <__sinit>
   11c9c:	65a2                	ld	a1,8(sp)
   11c9e:	01059783          	lh	a5,16(a1)
   11ca2:	d3e5                	beqz	a5,11c82 <_fclose_r+0x16>
   11ca4:	b7e5                	j	11c8c <_fclose_r+0x20>
   11ca6:	4501                	li	a0,0
   11ca8:	8082                	ret

0000000000011caa <fclose>:
   11caa:	cd1d                	beqz	a0,11ce8 <fclose+0x3e>
   11cac:	1101                	addi	sp,sp,-32
   11cae:	e822                	sd	s0,16(sp)
   11cb0:	842a                	mv	s0,a0
   11cb2:	7601b503          	ld	a0,1888(gp) # 14790 <_impure_ptr>
   11cb6:	ec06                	sd	ra,24(sp)
   11cb8:	c119                	beqz	a0,11cbe <fclose+0x14>
   11cba:	493c                	lw	a5,80(a0)
   11cbc:	cf91                	beqz	a5,11cd8 <fclose+0x2e>
   11cbe:	01041783          	lh	a5,16(s0)
   11cc2:	e791                	bnez	a5,11cce <fclose+0x24>
   11cc4:	60e2                	ld	ra,24(sp)
   11cc6:	6442                	ld	s0,16(sp)
   11cc8:	4501                	li	a0,0
   11cca:	6105                	addi	sp,sp,32
   11ccc:	8082                	ret
   11cce:	85a2                	mv	a1,s0
   11cd0:	6442                	ld	s0,16(sp)
   11cd2:	60e2                	ld	ra,24(sp)
   11cd4:	6105                	addi	sp,sp,32
   11cd6:	bf19                	j	11bec <_fclose_r.part.0>
   11cd8:	e42a                	sd	a0,8(sp)
   11cda:	b25fe0ef          	jal	ra,107fe <__sinit>
   11cde:	01041783          	lh	a5,16(s0)
   11ce2:	6522                	ld	a0,8(sp)
   11ce4:	d3e5                	beqz	a5,11cc4 <fclose+0x1a>
   11ce6:	b7e5                	j	11cce <fclose+0x24>
   11ce8:	4501                	li	a0,0
   11cea:	8082                	ret

0000000000011cec <__sflush_r>:
   11cec:	01059783          	lh	a5,16(a1)
   11cf0:	7179                	addi	sp,sp,-48
   11cf2:	f022                	sd	s0,32(sp)
   11cf4:	e44e                	sd	s3,8(sp)
   11cf6:	f406                	sd	ra,40(sp)
   11cf8:	ec26                	sd	s1,24(sp)
   11cfa:	e84a                	sd	s2,16(sp)
   11cfc:	0087f693          	andi	a3,a5,8
   11d00:	842e                	mv	s0,a1
   11d02:	89aa                	mv	s3,a0
   11d04:	ead5                	bnez	a3,11db8 <__sflush_r+0xcc>
   11d06:	6705                	lui	a4,0x1
   11d08:	80070713          	addi	a4,a4,-2048 # 800 <register_fini-0xf8b0>
   11d0c:	4594                	lw	a3,8(a1)
   11d0e:	8fd9                	or	a5,a5,a4
   11d10:	00f59823          	sh	a5,16(a1)
   11d14:	10d05063          	blez	a3,11e14 <__sflush_r+0x128>
   11d18:	6438                	ld	a4,72(s0)
   11d1a:	c759                	beqz	a4,11da8 <__sflush_r+0xbc>
   11d1c:	17c2                	slli	a5,a5,0x30
   11d1e:	93c1                	srli	a5,a5,0x30
   11d20:	6685                	lui	a3,0x1
   11d22:	0009a483          	lw	s1,0(s3)
   11d26:	8efd                	and	a3,a3,a5
   11d28:	0009a023          	sw	zero,0(s3)
   11d2c:	780c                	ld	a1,48(s0)
   11d2e:	e6fd                	bnez	a3,11e1c <__sflush_r+0x130>
   11d30:	4601                	li	a2,0
   11d32:	4685                	li	a3,1
   11d34:	854e                	mv	a0,s3
   11d36:	9702                	jalr	a4
   11d38:	57fd                	li	a5,-1
   11d3a:	862a                	mv	a2,a0
   11d3c:	10f50763          	beq	a0,a5,11e4a <__sflush_r+0x15e>
   11d40:	01045783          	lhu	a5,16(s0)
   11d44:	6438                	ld	a4,72(s0)
   11d46:	780c                	ld	a1,48(s0)
   11d48:	8b91                	andi	a5,a5,4
   11d4a:	c799                	beqz	a5,11d58 <__sflush_r+0x6c>
   11d4c:	4414                	lw	a3,8(s0)
   11d4e:	6c3c                	ld	a5,88(s0)
   11d50:	8e15                	sub	a2,a2,a3
   11d52:	c399                	beqz	a5,11d58 <__sflush_r+0x6c>
   11d54:	583c                	lw	a5,112(s0)
   11d56:	8e1d                	sub	a2,a2,a5
   11d58:	4681                	li	a3,0
   11d5a:	854e                	mv	a0,s3
   11d5c:	9702                	jalr	a4
   11d5e:	57fd                	li	a5,-1
   11d60:	0cf51063          	bne	a0,a5,11e20 <__sflush_r+0x134>
   11d64:	0009a703          	lw	a4,0(s3)
   11d68:	01041783          	lh	a5,16(s0)
   11d6c:	cf6d                	beqz	a4,11e66 <__sflush_r+0x17a>
   11d6e:	46f5                	li	a3,29
   11d70:	00d70563          	beq	a4,a3,11d7a <__sflush_r+0x8e>
   11d74:	46d9                	li	a3,22
   11d76:	0ed71e63          	bne	a4,a3,11e72 <__sflush_r+0x186>
   11d7a:	6c14                	ld	a3,24(s0)
   11d7c:	777d                	lui	a4,0xfffff
   11d7e:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeafcf>
   11d82:	8ff9                	and	a5,a5,a4
   11d84:	00f41823          	sh	a5,16(s0)
   11d88:	00042423          	sw	zero,8(s0)
   11d8c:	e014                	sd	a3,0(s0)
   11d8e:	6c2c                	ld	a1,88(s0)
   11d90:	0099a023          	sw	s1,0(s3)
   11d94:	c991                	beqz	a1,11da8 <__sflush_r+0xbc>
   11d96:	07440793          	addi	a5,s0,116
   11d9a:	00f58563          	beq	a1,a5,11da4 <__sflush_r+0xb8>
   11d9e:	854e                	mv	a0,s3
   11da0:	230000ef          	jal	ra,11fd0 <_free_r>
   11da4:	04043c23          	sd	zero,88(s0)
   11da8:	4501                	li	a0,0
   11daa:	70a2                	ld	ra,40(sp)
   11dac:	7402                	ld	s0,32(sp)
   11dae:	64e2                	ld	s1,24(sp)
   11db0:	6942                	ld	s2,16(sp)
   11db2:	69a2                	ld	s3,8(sp)
   11db4:	6145                	addi	sp,sp,48
   11db6:	8082                	ret
   11db8:	0185b903          	ld	s2,24(a1)
   11dbc:	fe0906e3          	beqz	s2,11da8 <__sflush_r+0xbc>
   11dc0:	6184                	ld	s1,0(a1)
   11dc2:	03079713          	slli	a4,a5,0x30
   11dc6:	9341                	srli	a4,a4,0x30
   11dc8:	8b0d                	andi	a4,a4,3
   11dca:	0125b023          	sd	s2,0(a1)
   11dce:	412484bb          	subw	s1,s1,s2
   11dd2:	4781                	li	a5,0
   11dd4:	e311                	bnez	a4,11dd8 <__sflush_r+0xec>
   11dd6:	519c                	lw	a5,32(a1)
   11dd8:	c45c                	sw	a5,12(s0)
   11dda:	00904663          	bgtz	s1,11de6 <__sflush_r+0xfa>
   11dde:	b7e9                	j	11da8 <__sflush_r+0xbc>
   11de0:	992a                	add	s2,s2,a0
   11de2:	fc9053e3          	blez	s1,11da8 <__sflush_r+0xbc>
   11de6:	603c                	ld	a5,64(s0)
   11de8:	780c                	ld	a1,48(s0)
   11dea:	86a6                	mv	a3,s1
   11dec:	864a                	mv	a2,s2
   11dee:	854e                	mv	a0,s3
   11df0:	9782                	jalr	a5
   11df2:	9c89                	subw	s1,s1,a0
   11df4:	fea046e3          	bgtz	a0,11de0 <__sflush_r+0xf4>
   11df8:	01045783          	lhu	a5,16(s0)
   11dfc:	70a2                	ld	ra,40(sp)
   11dfe:	64e2                	ld	s1,24(sp)
   11e00:	0407e793          	ori	a5,a5,64
   11e04:	00f41823          	sh	a5,16(s0)
   11e08:	7402                	ld	s0,32(sp)
   11e0a:	6942                	ld	s2,16(sp)
   11e0c:	69a2                	ld	s3,8(sp)
   11e0e:	557d                	li	a0,-1
   11e10:	6145                	addi	sp,sp,48
   11e12:	8082                	ret
   11e14:	59b8                	lw	a4,112(a1)
   11e16:	f0e041e3          	bgtz	a4,11d18 <__sflush_r+0x2c>
   11e1a:	b779                	j	11da8 <__sflush_r+0xbc>
   11e1c:	6850                	ld	a2,144(s0)
   11e1e:	b72d                	j	11d48 <__sflush_r+0x5c>
   11e20:	01045783          	lhu	a5,16(s0)
   11e24:	777d                	lui	a4,0xfffff
   11e26:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeafcf>
   11e2a:	8ff9                	and	a5,a5,a4
   11e2c:	6c14                	ld	a3,24(s0)
   11e2e:	0107979b          	slliw	a5,a5,0x10
   11e32:	4107d79b          	sraiw	a5,a5,0x10
   11e36:	6705                	lui	a4,0x1
   11e38:	00f41823          	sh	a5,16(s0)
   11e3c:	00042423          	sw	zero,8(s0)
   11e40:	e014                	sd	a3,0(s0)
   11e42:	8ff9                	and	a5,a5,a4
   11e44:	d7a9                	beqz	a5,11d8e <__sflush_r+0xa2>
   11e46:	e848                	sd	a0,144(s0)
   11e48:	b799                	j	11d8e <__sflush_r+0xa2>
   11e4a:	0009a783          	lw	a5,0(s3)
   11e4e:	ee0789e3          	beqz	a5,11d40 <__sflush_r+0x54>
   11e52:	4775                	li	a4,29
   11e54:	00e78563          	beq	a5,a4,11e5e <__sflush_r+0x172>
   11e58:	4759                	li	a4,22
   11e5a:	f8e79fe3          	bne	a5,a4,11df8 <__sflush_r+0x10c>
   11e5e:	0099a023          	sw	s1,0(s3)
   11e62:	4501                	li	a0,0
   11e64:	b799                	j	11daa <__sflush_r+0xbe>
   11e66:	777d                	lui	a4,0xfffff
   11e68:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeafcf>
   11e6c:	6c14                	ld	a3,24(s0)
   11e6e:	8ff9                	and	a5,a5,a4
   11e70:	b7d9                	j	11e36 <__sflush_r+0x14a>
   11e72:	0407e793          	ori	a5,a5,64
   11e76:	00f41823          	sh	a5,16(s0)
   11e7a:	557d                	li	a0,-1
   11e7c:	b73d                	j	11daa <__sflush_r+0xbe>

0000000000011e7e <_fflush_r>:
   11e7e:	1101                	addi	sp,sp,-32
   11e80:	e822                	sd	s0,16(sp)
   11e82:	ec06                	sd	ra,24(sp)
   11e84:	842a                	mv	s0,a0
   11e86:	c119                	beqz	a0,11e8c <_fflush_r+0xe>
   11e88:	493c                	lw	a5,80(a0)
   11e8a:	cb89                	beqz	a5,11e9c <_fflush_r+0x1e>
   11e8c:	01059783          	lh	a5,16(a1)
   11e90:	ef89                	bnez	a5,11eaa <_fflush_r+0x2c>
   11e92:	60e2                	ld	ra,24(sp)
   11e94:	6442                	ld	s0,16(sp)
   11e96:	4501                	li	a0,0
   11e98:	6105                	addi	sp,sp,32
   11e9a:	8082                	ret
   11e9c:	e42e                	sd	a1,8(sp)
   11e9e:	961fe0ef          	jal	ra,107fe <__sinit>
   11ea2:	65a2                	ld	a1,8(sp)
   11ea4:	01059783          	lh	a5,16(a1)
   11ea8:	d7ed                	beqz	a5,11e92 <_fflush_r+0x14>
   11eaa:	8522                	mv	a0,s0
   11eac:	6442                	ld	s0,16(sp)
   11eae:	60e2                	ld	ra,24(sp)
   11eb0:	6105                	addi	sp,sp,32
   11eb2:	bd2d                	j	11cec <__sflush_r>

0000000000011eb4 <fflush>:
   11eb4:	cd1d                	beqz	a0,11ef2 <fflush+0x3e>
   11eb6:	1101                	addi	sp,sp,-32
   11eb8:	e822                	sd	s0,16(sp)
   11eba:	842a                	mv	s0,a0
   11ebc:	7601b503          	ld	a0,1888(gp) # 14790 <_impure_ptr>
   11ec0:	ec06                	sd	ra,24(sp)
   11ec2:	c119                	beqz	a0,11ec8 <fflush+0x14>
   11ec4:	493c                	lw	a5,80(a0)
   11ec6:	cf91                	beqz	a5,11ee2 <fflush+0x2e>
   11ec8:	01041783          	lh	a5,16(s0)
   11ecc:	e791                	bnez	a5,11ed8 <fflush+0x24>
   11ece:	60e2                	ld	ra,24(sp)
   11ed0:	6442                	ld	s0,16(sp)
   11ed2:	4501                	li	a0,0
   11ed4:	6105                	addi	sp,sp,32
   11ed6:	8082                	ret
   11ed8:	85a2                	mv	a1,s0
   11eda:	6442                	ld	s0,16(sp)
   11edc:	60e2                	ld	ra,24(sp)
   11ede:	6105                	addi	sp,sp,32
   11ee0:	b531                	j	11cec <__sflush_r>
   11ee2:	e42a                	sd	a0,8(sp)
   11ee4:	91bfe0ef          	jal	ra,107fe <__sinit>
   11ee8:	01041783          	lh	a5,16(s0)
   11eec:	6522                	ld	a0,8(sp)
   11eee:	d3e5                	beqz	a5,11ece <fflush+0x1a>
   11ef0:	b7e5                	j	11ed8 <fflush+0x24>
   11ef2:	7501b503          	ld	a0,1872(gp) # 14780 <_global_impure_ptr>
   11ef6:	65c9                	lui	a1,0x12
   11ef8:	e7e58593          	addi	a1,a1,-386 # 11e7e <_fflush_r>
   11efc:	d0bfe06f          	j	10c06 <_fwalk_reent>

0000000000011f00 <_malloc_trim_r>:
   11f00:	7179                	addi	sp,sp,-48
   11f02:	e44e                	sd	s3,8(sp)
   11f04:	69d1                	lui	s3,0x14
   11f06:	f022                	sd	s0,32(sp)
   11f08:	ec26                	sd	s1,24(sp)
   11f0a:	e84a                	sd	s2,16(sp)
   11f0c:	e052                	sd	s4,0(sp)
   11f0e:	f406                	sd	ra,40(sp)
   11f10:	8a2e                	mv	s4,a1
   11f12:	892a                	mv	s2,a0
   11f14:	f5898993          	addi	s3,s3,-168 # 13f58 <__malloc_av_>
   11f18:	ddeff0ef          	jal	ra,114f6 <__malloc_lock>
   11f1c:	0109b703          	ld	a4,16(s3)
   11f20:	6785                	lui	a5,0x1
   11f22:	fdf78413          	addi	s0,a5,-33 # fdf <register_fini-0xf0d1>
   11f26:	6704                	ld	s1,8(a4)
   11f28:	41440433          	sub	s0,s0,s4
   11f2c:	98f1                	andi	s1,s1,-4
   11f2e:	9426                	add	s0,s0,s1
   11f30:	8031                	srli	s0,s0,0xc
   11f32:	147d                	addi	s0,s0,-1
   11f34:	0432                	slli	s0,s0,0xc
   11f36:	00f44b63          	blt	s0,a5,11f4c <_malloc_trim_r+0x4c>
   11f3a:	4581                	li	a1,0
   11f3c:	854a                	mv	a0,s2
   11f3e:	9c3ff0ef          	jal	ra,11900 <_sbrk_r>
   11f42:	0109b783          	ld	a5,16(s3)
   11f46:	97a6                	add	a5,a5,s1
   11f48:	00f50e63          	beq	a0,a5,11f64 <_malloc_trim_r+0x64>
   11f4c:	854a                	mv	a0,s2
   11f4e:	daaff0ef          	jal	ra,114f8 <__malloc_unlock>
   11f52:	70a2                	ld	ra,40(sp)
   11f54:	7402                	ld	s0,32(sp)
   11f56:	64e2                	ld	s1,24(sp)
   11f58:	6942                	ld	s2,16(sp)
   11f5a:	69a2                	ld	s3,8(sp)
   11f5c:	6a02                	ld	s4,0(sp)
   11f5e:	4501                	li	a0,0
   11f60:	6145                	addi	sp,sp,48
   11f62:	8082                	ret
   11f64:	408005b3          	neg	a1,s0
   11f68:	854a                	mv	a0,s2
   11f6a:	997ff0ef          	jal	ra,11900 <_sbrk_r>
   11f6e:	57fd                	li	a5,-1
   11f70:	02f50b63          	beq	a0,a5,11fa6 <_malloc_trim_r+0xa6>
   11f74:	67d5                	lui	a5,0x15
   11f76:	80878793          	addi	a5,a5,-2040 # 14808 <__malloc_current_mallinfo>
   11f7a:	4398                	lw	a4,0(a5)
   11f7c:	0109b683          	ld	a3,16(s3)
   11f80:	8c81                	sub	s1,s1,s0
   11f82:	0014e493          	ori	s1,s1,1
   11f86:	4087043b          	subw	s0,a4,s0
   11f8a:	854a                	mv	a0,s2
   11f8c:	e684                	sd	s1,8(a3)
   11f8e:	c380                	sw	s0,0(a5)
   11f90:	d68ff0ef          	jal	ra,114f8 <__malloc_unlock>
   11f94:	70a2                	ld	ra,40(sp)
   11f96:	7402                	ld	s0,32(sp)
   11f98:	64e2                	ld	s1,24(sp)
   11f9a:	6942                	ld	s2,16(sp)
   11f9c:	69a2                	ld	s3,8(sp)
   11f9e:	6a02                	ld	s4,0(sp)
   11fa0:	4505                	li	a0,1
   11fa2:	6145                	addi	sp,sp,48
   11fa4:	8082                	ret
   11fa6:	4581                	li	a1,0
   11fa8:	854a                	mv	a0,s2
   11faa:	957ff0ef          	jal	ra,11900 <_sbrk_r>
   11fae:	0109b703          	ld	a4,16(s3)
   11fb2:	46fd                	li	a3,31
   11fb4:	40e507b3          	sub	a5,a0,a4
   11fb8:	f8f6dae3          	bge	a3,a5,11f4c <_malloc_trim_r+0x4c>
   11fbc:	7681b683          	ld	a3,1896(gp) # 14798 <__malloc_sbrk_base>
   11fc0:	0017e793          	ori	a5,a5,1
   11fc4:	e71c                	sd	a5,8(a4)
   11fc6:	8d15                	sub	a0,a0,a3
   11fc8:	66d5                	lui	a3,0x15
   11fca:	80a6a423          	sw	a0,-2040(a3) # 14808 <__malloc_current_mallinfo>
   11fce:	bfbd                	j	11f4c <_malloc_trim_r+0x4c>

0000000000011fd0 <_free_r>:
   11fd0:	c5ed                	beqz	a1,120ba <_free_r+0xea>
   11fd2:	1101                	addi	sp,sp,-32
   11fd4:	e822                	sd	s0,16(sp)
   11fd6:	e426                	sd	s1,8(sp)
   11fd8:	842e                	mv	s0,a1
   11fda:	84aa                	mv	s1,a0
   11fdc:	ec06                	sd	ra,24(sp)
   11fde:	d18ff0ef          	jal	ra,114f6 <__malloc_lock>
   11fe2:	ff843503          	ld	a0,-8(s0)
   11fe6:	ff040713          	addi	a4,s0,-16
   11fea:	65d1                	lui	a1,0x14
   11fec:	ffe57793          	andi	a5,a0,-2
   11ff0:	00f70633          	add	a2,a4,a5
   11ff4:	f5858593          	addi	a1,a1,-168 # 13f58 <__malloc_av_>
   11ff8:	6614                	ld	a3,8(a2)
   11ffa:	0105b803          	ld	a6,16(a1)
   11ffe:	9af1                	andi	a3,a3,-4
   12000:	14c80063          	beq	a6,a2,12140 <_free_r+0x170>
   12004:	e614                	sd	a3,8(a2)
   12006:	8905                	andi	a0,a0,1
   12008:	00d60833          	add	a6,a2,a3
   1200c:	e141                	bnez	a0,1208c <_free_r+0xbc>
   1200e:	ff043303          	ld	t1,-16(s0)
   12012:	00883803          	ld	a6,8(a6)
   12016:	6551                	lui	a0,0x14
   12018:	40670733          	sub	a4,a4,t1
   1201c:	01073883          	ld	a7,16(a4)
   12020:	f6850513          	addi	a0,a0,-152 # 13f68 <__malloc_av_+0x10>
   12024:	979a                	add	a5,a5,t1
   12026:	00187813          	andi	a6,a6,1
   1202a:	0ea88863          	beq	a7,a0,1211a <_free_r+0x14a>
   1202e:	01873303          	ld	t1,24(a4)
   12032:	0068bc23          	sd	t1,24(a7)
   12036:	01133823          	sd	a7,16(t1)
   1203a:	14080d63          	beqz	a6,12194 <_free_r+0x1c4>
   1203e:	0017e693          	ori	a3,a5,1
   12042:	e714                	sd	a3,8(a4)
   12044:	e21c                	sd	a5,0(a2)
   12046:	1ff00693          	li	a3,511
   1204a:	08f6e263          	bltu	a3,a5,120ce <_free_r+0xfe>
   1204e:	838d                	srli	a5,a5,0x3
   12050:	0017869b          	addiw	a3,a5,1
   12054:	0016969b          	slliw	a3,a3,0x1
   12058:	068e                	slli	a3,a3,0x3
   1205a:	0085b803          	ld	a6,8(a1)
   1205e:	96ae                	add	a3,a3,a1
   12060:	6288                	ld	a0,0(a3)
   12062:	4027d61b          	sraiw	a2,a5,0x2
   12066:	4785                	li	a5,1
   12068:	00c797b3          	sll	a5,a5,a2
   1206c:	0107e7b3          	or	a5,a5,a6
   12070:	ff068613          	addi	a2,a3,-16
   12074:	ef10                	sd	a2,24(a4)
   12076:	eb08                	sd	a0,16(a4)
   12078:	e59c                	sd	a5,8(a1)
   1207a:	e298                	sd	a4,0(a3)
   1207c:	ed18                	sd	a4,24(a0)
   1207e:	6442                	ld	s0,16(sp)
   12080:	60e2                	ld	ra,24(sp)
   12082:	8526                	mv	a0,s1
   12084:	64a2                	ld	s1,8(sp)
   12086:	6105                	addi	sp,sp,32
   12088:	c70ff06f          	j	114f8 <__malloc_unlock>
   1208c:	00883503          	ld	a0,8(a6)
   12090:	8905                	andi	a0,a0,1
   12092:	e50d                	bnez	a0,120bc <_free_r+0xec>
   12094:	6551                	lui	a0,0x14
   12096:	97b6                	add	a5,a5,a3
   12098:	f6850513          	addi	a0,a0,-152 # 13f68 <__malloc_av_+0x10>
   1209c:	6a14                	ld	a3,16(a2)
   1209e:	0017e893          	ori	a7,a5,1
   120a2:	00f70833          	add	a6,a4,a5
   120a6:	10a68163          	beq	a3,a0,121a8 <_free_r+0x1d8>
   120aa:	6e10                	ld	a2,24(a2)
   120ac:	ee90                	sd	a2,24(a3)
   120ae:	ea14                	sd	a3,16(a2)
   120b0:	01173423          	sd	a7,8(a4)
   120b4:	00f83023          	sd	a5,0(a6)
   120b8:	b779                	j	12046 <_free_r+0x76>
   120ba:	8082                	ret
   120bc:	0017e693          	ori	a3,a5,1
   120c0:	fed43c23          	sd	a3,-8(s0)
   120c4:	e21c                	sd	a5,0(a2)
   120c6:	1ff00693          	li	a3,511
   120ca:	f8f6f2e3          	bgeu	a3,a5,1204e <_free_r+0x7e>
   120ce:	0097d693          	srli	a3,a5,0x9
   120d2:	4611                	li	a2,4
   120d4:	08d66f63          	bltu	a2,a3,12172 <_free_r+0x1a2>
   120d8:	0067d693          	srli	a3,a5,0x6
   120dc:	0396851b          	addiw	a0,a3,57
   120e0:	0015151b          	slliw	a0,a0,0x1
   120e4:	0386861b          	addiw	a2,a3,56
   120e8:	050e                	slli	a0,a0,0x3
   120ea:	952e                	add	a0,a0,a1
   120ec:	6114                	ld	a3,0(a0)
   120ee:	1541                	addi	a0,a0,-16
   120f0:	0cd50563          	beq	a0,a3,121ba <_free_r+0x1ea>
   120f4:	6690                	ld	a2,8(a3)
   120f6:	9a71                	andi	a2,a2,-4
   120f8:	00c7f563          	bgeu	a5,a2,12102 <_free_r+0x132>
   120fc:	6a94                	ld	a3,16(a3)
   120fe:	fed51be3          	bne	a0,a3,120f4 <_free_r+0x124>
   12102:	6e88                	ld	a0,24(a3)
   12104:	ef08                	sd	a0,24(a4)
   12106:	eb14                	sd	a3,16(a4)
   12108:	6442                	ld	s0,16(sp)
   1210a:	e918                	sd	a4,16(a0)
   1210c:	60e2                	ld	ra,24(sp)
   1210e:	8526                	mv	a0,s1
   12110:	64a2                	ld	s1,8(sp)
   12112:	ee98                	sd	a4,24(a3)
   12114:	6105                	addi	sp,sp,32
   12116:	be2ff06f          	j	114f8 <__malloc_unlock>
   1211a:	0e081c63          	bnez	a6,12212 <_free_r+0x242>
   1211e:	6e0c                	ld	a1,24(a2)
   12120:	6a10                	ld	a2,16(a2)
   12122:	97b6                	add	a5,a5,a3
   12124:	6442                	ld	s0,16(sp)
   12126:	ee0c                	sd	a1,24(a2)
   12128:	e990                	sd	a2,16(a1)
   1212a:	0017e693          	ori	a3,a5,1
   1212e:	60e2                	ld	ra,24(sp)
   12130:	e714                	sd	a3,8(a4)
   12132:	8526                	mv	a0,s1
   12134:	973e                	add	a4,a4,a5
   12136:	64a2                	ld	s1,8(sp)
   12138:	e31c                	sd	a5,0(a4)
   1213a:	6105                	addi	sp,sp,32
   1213c:	bbcff06f          	j	114f8 <__malloc_unlock>
   12140:	8905                	andi	a0,a0,1
   12142:	97b6                	add	a5,a5,a3
   12144:	e909                	bnez	a0,12156 <_free_r+0x186>
   12146:	ff043503          	ld	a0,-16(s0)
   1214a:	8f09                	sub	a4,a4,a0
   1214c:	6f14                	ld	a3,24(a4)
   1214e:	6b10                	ld	a2,16(a4)
   12150:	97aa                	add	a5,a5,a0
   12152:	ee14                	sd	a3,24(a2)
   12154:	ea90                	sd	a2,16(a3)
   12156:	0017e613          	ori	a2,a5,1
   1215a:	7701b683          	ld	a3,1904(gp) # 147a0 <__malloc_trim_threshold>
   1215e:	e710                	sd	a2,8(a4)
   12160:	e998                	sd	a4,16(a1)
   12162:	f0d7eee3          	bltu	a5,a3,1207e <_free_r+0xae>
   12166:	7881b583          	ld	a1,1928(gp) # 147b8 <__malloc_top_pad>
   1216a:	8526                	mv	a0,s1
   1216c:	d95ff0ef          	jal	ra,11f00 <_malloc_trim_r>
   12170:	b739                	j	1207e <_free_r+0xae>
   12172:	4651                	li	a2,20
   12174:	02d67263          	bgeu	a2,a3,12198 <_free_r+0x1c8>
   12178:	05400613          	li	a2,84
   1217c:	04d66a63          	bltu	a2,a3,121d0 <_free_r+0x200>
   12180:	00c7d693          	srli	a3,a5,0xc
   12184:	06f6851b          	addiw	a0,a3,111
   12188:	0015151b          	slliw	a0,a0,0x1
   1218c:	06e6861b          	addiw	a2,a3,110
   12190:	050e                	slli	a0,a0,0x3
   12192:	bfa1                	j	120ea <_free_r+0x11a>
   12194:	97b6                	add	a5,a5,a3
   12196:	b719                	j	1209c <_free_r+0xcc>
   12198:	05c6851b          	addiw	a0,a3,92
   1219c:	0015151b          	slliw	a0,a0,0x1
   121a0:	05b6861b          	addiw	a2,a3,91
   121a4:	050e                	slli	a0,a0,0x3
   121a6:	b791                	j	120ea <_free_r+0x11a>
   121a8:	f598                	sd	a4,40(a1)
   121aa:	f198                	sd	a4,32(a1)
   121ac:	ef08                	sd	a0,24(a4)
   121ae:	eb08                	sd	a0,16(a4)
   121b0:	01173423          	sd	a7,8(a4)
   121b4:	00f83023          	sd	a5,0(a6)
   121b8:	b5d9                	j	1207e <_free_r+0xae>
   121ba:	0085b803          	ld	a6,8(a1)
   121be:	4026561b          	sraiw	a2,a2,0x2
   121c2:	4785                	li	a5,1
   121c4:	00c79633          	sll	a2,a5,a2
   121c8:	01066633          	or	a2,a2,a6
   121cc:	e590                	sd	a2,8(a1)
   121ce:	bf1d                	j	12104 <_free_r+0x134>
   121d0:	15400613          	li	a2,340
   121d4:	00d66c63          	bltu	a2,a3,121ec <_free_r+0x21c>
   121d8:	00f7d693          	srli	a3,a5,0xf
   121dc:	0786851b          	addiw	a0,a3,120
   121e0:	0015151b          	slliw	a0,a0,0x1
   121e4:	0776861b          	addiw	a2,a3,119
   121e8:	050e                	slli	a0,a0,0x3
   121ea:	b701                	j	120ea <_free_r+0x11a>
   121ec:	55400613          	li	a2,1364
   121f0:	00d66c63          	bltu	a2,a3,12208 <_free_r+0x238>
   121f4:	0127d693          	srli	a3,a5,0x12
   121f8:	07d6851b          	addiw	a0,a3,125
   121fc:	0015151b          	slliw	a0,a0,0x1
   12200:	07c6861b          	addiw	a2,a3,124
   12204:	050e                	slli	a0,a0,0x3
   12206:	b5d5                	j	120ea <_free_r+0x11a>
   12208:	7f000513          	li	a0,2032
   1220c:	07e00613          	li	a2,126
   12210:	bde9                	j	120ea <_free_r+0x11a>
   12212:	0017e693          	ori	a3,a5,1
   12216:	e714                	sd	a3,8(a4)
   12218:	e21c                	sd	a5,0(a2)
   1221a:	b595                	j	1207e <_free_r+0xae>

000000000001221c <_lseek_r>:
   1221c:	1101                	addi	sp,sp,-32
   1221e:	872e                	mv	a4,a1
   12220:	e822                	sd	s0,16(sp)
   12222:	e426                	sd	s1,8(sp)
   12224:	85b2                	mv	a1,a2
   12226:	842a                	mv	s0,a0
   12228:	8636                	mv	a2,a3
   1222a:	853a                	mv	a0,a4
   1222c:	ec06                	sd	ra,24(sp)
   1222e:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   12232:	42c000ef          	jal	ra,1265e <_lseek>
   12236:	57fd                	li	a5,-1
   12238:	00f50763          	beq	a0,a5,12246 <_lseek_r+0x2a>
   1223c:	60e2                	ld	ra,24(sp)
   1223e:	6442                	ld	s0,16(sp)
   12240:	64a2                	ld	s1,8(sp)
   12242:	6105                	addi	sp,sp,32
   12244:	8082                	ret
   12246:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   1224a:	dbed                	beqz	a5,1223c <_lseek_r+0x20>
   1224c:	60e2                	ld	ra,24(sp)
   1224e:	c01c                	sw	a5,0(s0)
   12250:	6442                	ld	s0,16(sp)
   12252:	64a2                	ld	s1,8(sp)
   12254:	6105                	addi	sp,sp,32
   12256:	8082                	ret

0000000000012258 <__smakebuf_r>:
   12258:	0105d783          	lhu	a5,16(a1)
   1225c:	7135                	addi	sp,sp,-160
   1225e:	e922                	sd	s0,144(sp)
   12260:	ed06                	sd	ra,152(sp)
   12262:	e526                	sd	s1,136(sp)
   12264:	e14a                	sd	s2,128(sp)
   12266:	fcce                	sd	s3,120(sp)
   12268:	f8d2                	sd	s4,112(sp)
   1226a:	0027f713          	andi	a4,a5,2
   1226e:	842e                	mv	s0,a1
   12270:	cf19                	beqz	a4,1228e <__smakebuf_r+0x36>
   12272:	07758793          	addi	a5,a1,119
   12276:	e19c                	sd	a5,0(a1)
   12278:	ed9c                	sd	a5,24(a1)
   1227a:	4785                	li	a5,1
   1227c:	d19c                	sw	a5,32(a1)
   1227e:	60ea                	ld	ra,152(sp)
   12280:	644a                	ld	s0,144(sp)
   12282:	64aa                	ld	s1,136(sp)
   12284:	690a                	ld	s2,128(sp)
   12286:	79e6                	ld	s3,120(sp)
   12288:	7a46                	ld	s4,112(sp)
   1228a:	610d                	addi	sp,sp,160
   1228c:	8082                	ret
   1228e:	01259583          	lh	a1,18(a1)
   12292:	84aa                	mv	s1,a0
   12294:	0605c863          	bltz	a1,12304 <__smakebuf_r+0xac>
   12298:	0030                	addi	a2,sp,8
   1229a:	2a0000ef          	jal	ra,1253a <_fstat_r>
   1229e:	06054163          	bltz	a0,12300 <__smakebuf_r+0xa8>
   122a2:	4932                	lw	s2,12(sp)
   122a4:	67bd                	lui	a5,0xf
   122a6:	40000a13          	li	s4,1024
   122aa:	00f97933          	and	s2,s2,a5
   122ae:	6789                	lui	a5,0x2
   122b0:	40f90933          	sub	s2,s2,a5
   122b4:	6785                	lui	a5,0x1
   122b6:	00193913          	seqz	s2,s2
   122ba:	80078993          	addi	s3,a5,-2048 # 800 <register_fini-0xf8b0>
   122be:	85d2                	mv	a1,s4
   122c0:	8526                	mv	a0,s1
   122c2:	9cffe0ef          	jal	ra,10c90 <_malloc_r>
   122c6:	01041783          	lh	a5,16(s0)
   122ca:	c939                	beqz	a0,12320 <__smakebuf_r+0xc8>
   122cc:	6741                	lui	a4,0x10
   122ce:	5a670713          	addi	a4,a4,1446 # 105a6 <_cleanup_r>
   122d2:	ecb8                	sd	a4,88(s1)
   122d4:	0807e793          	ori	a5,a5,128
   122d8:	00f41823          	sh	a5,16(s0)
   122dc:	e008                	sd	a0,0(s0)
   122de:	ec08                	sd	a0,24(s0)
   122e0:	03442023          	sw	s4,32(s0)
   122e4:	06091163          	bnez	s2,12346 <__smakebuf_r+0xee>
   122e8:	0137e7b3          	or	a5,a5,s3
   122ec:	60ea                	ld	ra,152(sp)
   122ee:	00f41823          	sh	a5,16(s0)
   122f2:	644a                	ld	s0,144(sp)
   122f4:	64aa                	ld	s1,136(sp)
   122f6:	690a                	ld	s2,128(sp)
   122f8:	79e6                	ld	s3,120(sp)
   122fa:	7a46                	ld	s4,112(sp)
   122fc:	610d                	addi	sp,sp,160
   122fe:	8082                	ret
   12300:	01045783          	lhu	a5,16(s0)
   12304:	0807f793          	andi	a5,a5,128
   12308:	4901                	li	s2,0
   1230a:	cb95                	beqz	a5,1233e <__smakebuf_r+0xe6>
   1230c:	04000a13          	li	s4,64
   12310:	85d2                	mv	a1,s4
   12312:	8526                	mv	a0,s1
   12314:	97dfe0ef          	jal	ra,10c90 <_malloc_r>
   12318:	01041783          	lh	a5,16(s0)
   1231c:	4981                	li	s3,0
   1231e:	f55d                	bnez	a0,122cc <__smakebuf_r+0x74>
   12320:	2007f713          	andi	a4,a5,512
   12324:	ff29                	bnez	a4,1227e <__smakebuf_r+0x26>
   12326:	9bf1                	andi	a5,a5,-4
   12328:	0027e793          	ori	a5,a5,2
   1232c:	07740713          	addi	a4,s0,119
   12330:	00f41823          	sh	a5,16(s0)
   12334:	4785                	li	a5,1
   12336:	e018                	sd	a4,0(s0)
   12338:	ec18                	sd	a4,24(s0)
   1233a:	d01c                	sw	a5,32(s0)
   1233c:	b789                	j	1227e <__smakebuf_r+0x26>
   1233e:	40000a13          	li	s4,1024
   12342:	4981                	li	s3,0
   12344:	bfad                	j	122be <__smakebuf_r+0x66>
   12346:	01241583          	lh	a1,18(s0)
   1234a:	8526                	mv	a0,s1
   1234c:	228000ef          	jal	ra,12574 <_isatty_r>
   12350:	e501                	bnez	a0,12358 <__smakebuf_r+0x100>
   12352:	01041783          	lh	a5,16(s0)
   12356:	bf49                	j	122e8 <__smakebuf_r+0x90>
   12358:	01045783          	lhu	a5,16(s0)
   1235c:	9bf1                	andi	a5,a5,-4
   1235e:	0017e793          	ori	a5,a5,1
   12362:	0107979b          	slliw	a5,a5,0x10
   12366:	4107d79b          	sraiw	a5,a5,0x10
   1236a:	bfbd                	j	122e8 <__smakebuf_r+0x90>

000000000001236c <__swhatbuf_r>:
   1236c:	7175                	addi	sp,sp,-144
   1236e:	e122                	sd	s0,128(sp)
   12370:	842e                	mv	s0,a1
   12372:	01259583          	lh	a1,18(a1)
   12376:	fca6                	sd	s1,120(sp)
   12378:	f8ca                	sd	s2,112(sp)
   1237a:	e506                	sd	ra,136(sp)
   1237c:	84b2                	mv	s1,a2
   1237e:	8936                	mv	s2,a3
   12380:	0205cc63          	bltz	a1,123b8 <__swhatbuf_r+0x4c>
   12384:	0030                	addi	a2,sp,8
   12386:	1b4000ef          	jal	ra,1253a <_fstat_r>
   1238a:	02054763          	bltz	a0,123b8 <__swhatbuf_r+0x4c>
   1238e:	47b2                	lw	a5,12(sp)
   12390:	673d                	lui	a4,0xf
   12392:	60aa                	ld	ra,136(sp)
   12394:	8ff9                	and	a5,a5,a4
   12396:	6709                	lui	a4,0x2
   12398:	8f99                	sub	a5,a5,a4
   1239a:	640a                	ld	s0,128(sp)
   1239c:	0017b793          	seqz	a5,a5
   123a0:	00f92023          	sw	a5,0(s2)
   123a4:	40000793          	li	a5,1024
   123a8:	e09c                	sd	a5,0(s1)
   123aa:	6505                	lui	a0,0x1
   123ac:	74e6                	ld	s1,120(sp)
   123ae:	7946                	ld	s2,112(sp)
   123b0:	80050513          	addi	a0,a0,-2048 # 800 <register_fini-0xf8b0>
   123b4:	6149                	addi	sp,sp,144
   123b6:	8082                	ret
   123b8:	01041783          	lh	a5,16(s0)
   123bc:	00092023          	sw	zero,0(s2)
   123c0:	0807f793          	andi	a5,a5,128
   123c4:	cb99                	beqz	a5,123da <__swhatbuf_r+0x6e>
   123c6:	60aa                	ld	ra,136(sp)
   123c8:	640a                	ld	s0,128(sp)
   123ca:	04000793          	li	a5,64
   123ce:	e09c                	sd	a5,0(s1)
   123d0:	7946                	ld	s2,112(sp)
   123d2:	74e6                	ld	s1,120(sp)
   123d4:	4501                	li	a0,0
   123d6:	6149                	addi	sp,sp,144
   123d8:	8082                	ret
   123da:	60aa                	ld	ra,136(sp)
   123dc:	640a                	ld	s0,128(sp)
   123de:	40000793          	li	a5,1024
   123e2:	e09c                	sd	a5,0(s1)
   123e4:	7946                	ld	s2,112(sp)
   123e6:	74e6                	ld	s1,120(sp)
   123e8:	4501                	li	a0,0
   123ea:	6149                	addi	sp,sp,144
   123ec:	8082                	ret

00000000000123ee <_read_r>:
   123ee:	1101                	addi	sp,sp,-32
   123f0:	872e                	mv	a4,a1
   123f2:	e822                	sd	s0,16(sp)
   123f4:	e426                	sd	s1,8(sp)
   123f6:	85b2                	mv	a1,a2
   123f8:	842a                	mv	s0,a0
   123fa:	8636                	mv	a2,a3
   123fc:	853a                	mv	a0,a4
   123fe:	ec06                	sd	ra,24(sp)
   12400:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   12404:	286000ef          	jal	ra,1268a <_read>
   12408:	57fd                	li	a5,-1
   1240a:	00f50763          	beq	a0,a5,12418 <_read_r+0x2a>
   1240e:	60e2                	ld	ra,24(sp)
   12410:	6442                	ld	s0,16(sp)
   12412:	64a2                	ld	s1,8(sp)
   12414:	6105                	addi	sp,sp,32
   12416:	8082                	ret
   12418:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   1241c:	dbed                	beqz	a5,1240e <_read_r+0x20>
   1241e:	60e2                	ld	ra,24(sp)
   12420:	c01c                	sw	a5,0(s0)
   12422:	6442                	ld	s0,16(sp)
   12424:	64a2                	ld	s1,8(sp)
   12426:	6105                	addi	sp,sp,32
   12428:	8082                	ret

000000000001242a <cleanup_glue>:
   1242a:	7179                	addi	sp,sp,-48
   1242c:	e84a                	sd	s2,16(sp)
   1242e:	0005b903          	ld	s2,0(a1)
   12432:	f022                	sd	s0,32(sp)
   12434:	ec26                	sd	s1,24(sp)
   12436:	f406                	sd	ra,40(sp)
   12438:	e44e                	sd	s3,8(sp)
   1243a:	e052                	sd	s4,0(sp)
   1243c:	842e                	mv	s0,a1
   1243e:	84aa                	mv	s1,a0
   12440:	02090b63          	beqz	s2,12476 <cleanup_glue+0x4c>
   12444:	00093983          	ld	s3,0(s2)
   12448:	02098363          	beqz	s3,1246e <cleanup_glue+0x44>
   1244c:	0009ba03          	ld	s4,0(s3)
   12450:	000a0b63          	beqz	s4,12466 <cleanup_glue+0x3c>
   12454:	000a3583          	ld	a1,0(s4)
   12458:	c199                	beqz	a1,1245e <cleanup_glue+0x34>
   1245a:	fd1ff0ef          	jal	ra,1242a <cleanup_glue>
   1245e:	85d2                	mv	a1,s4
   12460:	8526                	mv	a0,s1
   12462:	b6fff0ef          	jal	ra,11fd0 <_free_r>
   12466:	85ce                	mv	a1,s3
   12468:	8526                	mv	a0,s1
   1246a:	b67ff0ef          	jal	ra,11fd0 <_free_r>
   1246e:	85ca                	mv	a1,s2
   12470:	8526                	mv	a0,s1
   12472:	b5fff0ef          	jal	ra,11fd0 <_free_r>
   12476:	85a2                	mv	a1,s0
   12478:	7402                	ld	s0,32(sp)
   1247a:	70a2                	ld	ra,40(sp)
   1247c:	6942                	ld	s2,16(sp)
   1247e:	69a2                	ld	s3,8(sp)
   12480:	6a02                	ld	s4,0(sp)
   12482:	8526                	mv	a0,s1
   12484:	64e2                	ld	s1,24(sp)
   12486:	6145                	addi	sp,sp,48
   12488:	b6a1                	j	11fd0 <_free_r>

000000000001248a <_reclaim_reent>:
   1248a:	7601b783          	ld	a5,1888(gp) # 14790 <_impure_ptr>
   1248e:	0aa78563          	beq	a5,a0,12538 <_reclaim_reent+0xae>
   12492:	7d2c                	ld	a1,120(a0)
   12494:	7179                	addi	sp,sp,-48
   12496:	ec26                	sd	s1,24(sp)
   12498:	f406                	sd	ra,40(sp)
   1249a:	f022                	sd	s0,32(sp)
   1249c:	e84a                	sd	s2,16(sp)
   1249e:	e44e                	sd	s3,8(sp)
   124a0:	84aa                	mv	s1,a0
   124a2:	c58d                	beqz	a1,124cc <_reclaim_reent+0x42>
   124a4:	4901                	li	s2,0
   124a6:	20000993          	li	s3,512
   124aa:	012587b3          	add	a5,a1,s2
   124ae:	6380                	ld	s0,0(a5)
   124b0:	c801                	beqz	s0,124c0 <_reclaim_reent+0x36>
   124b2:	85a2                	mv	a1,s0
   124b4:	6000                	ld	s0,0(s0)
   124b6:	8526                	mv	a0,s1
   124b8:	b19ff0ef          	jal	ra,11fd0 <_free_r>
   124bc:	f87d                	bnez	s0,124b2 <_reclaim_reent+0x28>
   124be:	7cac                	ld	a1,120(s1)
   124c0:	0921                	addi	s2,s2,8
   124c2:	ff3914e3          	bne	s2,s3,124aa <_reclaim_reent+0x20>
   124c6:	8526                	mv	a0,s1
   124c8:	b09ff0ef          	jal	ra,11fd0 <_free_r>
   124cc:	70ac                	ld	a1,96(s1)
   124ce:	c581                	beqz	a1,124d6 <_reclaim_reent+0x4c>
   124d0:	8526                	mv	a0,s1
   124d2:	affff0ef          	jal	ra,11fd0 <_free_r>
   124d6:	1f84b403          	ld	s0,504(s1)
   124da:	cc01                	beqz	s0,124f2 <_reclaim_reent+0x68>
   124dc:	20048913          	addi	s2,s1,512
   124e0:	01240963          	beq	s0,s2,124f2 <_reclaim_reent+0x68>
   124e4:	85a2                	mv	a1,s0
   124e6:	6000                	ld	s0,0(s0)
   124e8:	8526                	mv	a0,s1
   124ea:	ae7ff0ef          	jal	ra,11fd0 <_free_r>
   124ee:	fe891be3          	bne	s2,s0,124e4 <_reclaim_reent+0x5a>
   124f2:	64cc                	ld	a1,136(s1)
   124f4:	c581                	beqz	a1,124fc <_reclaim_reent+0x72>
   124f6:	8526                	mv	a0,s1
   124f8:	ad9ff0ef          	jal	ra,11fd0 <_free_r>
   124fc:	48bc                	lw	a5,80(s1)
   124fe:	c795                	beqz	a5,1252a <_reclaim_reent+0xa0>
   12500:	6cbc                	ld	a5,88(s1)
   12502:	8526                	mv	a0,s1
   12504:	9782                	jalr	a5
   12506:	5204b403          	ld	s0,1312(s1)
   1250a:	c005                	beqz	s0,1252a <_reclaim_reent+0xa0>
   1250c:	600c                	ld	a1,0(s0)
   1250e:	c581                	beqz	a1,12516 <_reclaim_reent+0x8c>
   12510:	8526                	mv	a0,s1
   12512:	f19ff0ef          	jal	ra,1242a <cleanup_glue>
   12516:	85a2                	mv	a1,s0
   12518:	7402                	ld	s0,32(sp)
   1251a:	70a2                	ld	ra,40(sp)
   1251c:	6942                	ld	s2,16(sp)
   1251e:	69a2                	ld	s3,8(sp)
   12520:	8526                	mv	a0,s1
   12522:	64e2                	ld	s1,24(sp)
   12524:	6145                	addi	sp,sp,48
   12526:	aabff06f          	j	11fd0 <_free_r>
   1252a:	70a2                	ld	ra,40(sp)
   1252c:	7402                	ld	s0,32(sp)
   1252e:	64e2                	ld	s1,24(sp)
   12530:	6942                	ld	s2,16(sp)
   12532:	69a2                	ld	s3,8(sp)
   12534:	6145                	addi	sp,sp,48
   12536:	8082                	ret
   12538:	8082                	ret

000000000001253a <_fstat_r>:
   1253a:	1101                	addi	sp,sp,-32
   1253c:	872e                	mv	a4,a1
   1253e:	e822                	sd	s0,16(sp)
   12540:	e426                	sd	s1,8(sp)
   12542:	842a                	mv	s0,a0
   12544:	85b2                	mv	a1,a2
   12546:	853a                	mv	a0,a4
   12548:	ec06                	sd	ra,24(sp)
   1254a:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   1254e:	0aa000ef          	jal	ra,125f8 <_fstat>
   12552:	57fd                	li	a5,-1
   12554:	00f50763          	beq	a0,a5,12562 <_fstat_r+0x28>
   12558:	60e2                	ld	ra,24(sp)
   1255a:	6442                	ld	s0,16(sp)
   1255c:	64a2                	ld	s1,8(sp)
   1255e:	6105                	addi	sp,sp,32
   12560:	8082                	ret
   12562:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   12566:	dbed                	beqz	a5,12558 <_fstat_r+0x1e>
   12568:	60e2                	ld	ra,24(sp)
   1256a:	c01c                	sw	a5,0(s0)
   1256c:	6442                	ld	s0,16(sp)
   1256e:	64a2                	ld	s1,8(sp)
   12570:	6105                	addi	sp,sp,32
   12572:	8082                	ret

0000000000012574 <_isatty_r>:
   12574:	1101                	addi	sp,sp,-32
   12576:	e822                	sd	s0,16(sp)
   12578:	e426                	sd	s1,8(sp)
   1257a:	842a                	mv	s0,a0
   1257c:	852e                	mv	a0,a1
   1257e:	ec06                	sd	ra,24(sp)
   12580:	7801a823          	sw	zero,1936(gp) # 147c0 <errno>
   12584:	0b4000ef          	jal	ra,12638 <_isatty>
   12588:	57fd                	li	a5,-1
   1258a:	00f50763          	beq	a0,a5,12598 <_isatty_r+0x24>
   1258e:	60e2                	ld	ra,24(sp)
   12590:	6442                	ld	s0,16(sp)
   12592:	64a2                	ld	s1,8(sp)
   12594:	6105                	addi	sp,sp,32
   12596:	8082                	ret
   12598:	7901a783          	lw	a5,1936(gp) # 147c0 <errno>
   1259c:	dbed                	beqz	a5,1258e <_isatty_r+0x1a>
   1259e:	60e2                	ld	ra,24(sp)
   125a0:	c01c                	sw	a5,0(s0)
   125a2:	6442                	ld	s0,16(sp)
   125a4:	64a2                	ld	s1,8(sp)
   125a6:	6105                	addi	sp,sp,32
   125a8:	8082                	ret

00000000000125aa <_close>:
   125aa:	1141                	addi	sp,sp,-16
   125ac:	e406                	sd	ra,8(sp)
   125ae:	e022                	sd	s0,0(sp)
   125b0:	03900893          	li	a7,57
   125b4:	00000073          	ecall
   125b8:	842a                	mv	s0,a0
   125ba:	00054763          	bltz	a0,125c8 <_close+0x1e>
   125be:	2501                	sext.w	a0,a0
   125c0:	60a2                	ld	ra,8(sp)
   125c2:	6402                	ld	s0,0(sp)
   125c4:	0141                	addi	sp,sp,16
   125c6:	8082                	ret
   125c8:	1c8000ef          	jal	ra,12790 <__errno>
   125cc:	4080043b          	negw	s0,s0
   125d0:	c100                	sw	s0,0(a0)
   125d2:	557d                	li	a0,-1
   125d4:	b7f5                	j	125c0 <_close+0x16>

00000000000125d6 <_exit>:
   125d6:	05d00893          	li	a7,93
   125da:	00000073          	ecall
   125de:	00054363          	bltz	a0,125e4 <_exit+0xe>
   125e2:	a001                	j	125e2 <_exit+0xc>
   125e4:	1141                	addi	sp,sp,-16
   125e6:	e022                	sd	s0,0(sp)
   125e8:	842a                	mv	s0,a0
   125ea:	e406                	sd	ra,8(sp)
   125ec:	4080043b          	negw	s0,s0
   125f0:	1a0000ef          	jal	ra,12790 <__errno>
   125f4:	c100                	sw	s0,0(a0)
   125f6:	a001                	j	125f6 <_exit+0x20>

00000000000125f8 <_fstat>:
   125f8:	7135                	addi	sp,sp,-160
   125fa:	e526                	sd	s1,136(sp)
   125fc:	ed06                	sd	ra,152(sp)
   125fe:	84ae                	mv	s1,a1
   12600:	e922                	sd	s0,144(sp)
   12602:	05000893          	li	a7,80
   12606:	858a                	mv	a1,sp
   12608:	00000073          	ecall
   1260c:	842a                	mv	s0,a0
   1260e:	00054e63          	bltz	a0,1262a <_fstat+0x32>
   12612:	0005041b          	sext.w	s0,a0
   12616:	8526                	mv	a0,s1
   12618:	858a                	mv	a1,sp
   1261a:	11c000ef          	jal	ra,12736 <_conv_stat>
   1261e:	60ea                	ld	ra,152(sp)
   12620:	8522                	mv	a0,s0
   12622:	644a                	ld	s0,144(sp)
   12624:	64aa                	ld	s1,136(sp)
   12626:	610d                	addi	sp,sp,160
   12628:	8082                	ret
   1262a:	4080043b          	negw	s0,s0
   1262e:	162000ef          	jal	ra,12790 <__errno>
   12632:	c100                	sw	s0,0(a0)
   12634:	547d                	li	s0,-1
   12636:	b7c5                	j	12616 <_fstat+0x1e>

0000000000012638 <_isatty>:
   12638:	7119                	addi	sp,sp,-128
   1263a:	002c                	addi	a1,sp,8
   1263c:	fc86                	sd	ra,120(sp)
   1263e:	fbbff0ef          	jal	ra,125f8 <_fstat>
   12642:	57fd                	li	a5,-1
   12644:	00f50963          	beq	a0,a5,12656 <_isatty+0x1e>
   12648:	4532                	lw	a0,12(sp)
   1264a:	70e6                	ld	ra,120(sp)
   1264c:	40d5551b          	sraiw	a0,a0,0xd
   12650:	8905                	andi	a0,a0,1
   12652:	6109                	addi	sp,sp,128
   12654:	8082                	ret
   12656:	70e6                	ld	ra,120(sp)
   12658:	4501                	li	a0,0
   1265a:	6109                	addi	sp,sp,128
   1265c:	8082                	ret

000000000001265e <_lseek>:
   1265e:	1141                	addi	sp,sp,-16
   12660:	e406                	sd	ra,8(sp)
   12662:	e022                	sd	s0,0(sp)
   12664:	03e00893          	li	a7,62
   12668:	00000073          	ecall
   1266c:	842a                	mv	s0,a0
   1266e:	00054763          	bltz	a0,1267c <_lseek+0x1e>
   12672:	60a2                	ld	ra,8(sp)
   12674:	8522                	mv	a0,s0
   12676:	6402                	ld	s0,0(sp)
   12678:	0141                	addi	sp,sp,16
   1267a:	8082                	ret
   1267c:	4080043b          	negw	s0,s0
   12680:	110000ef          	jal	ra,12790 <__errno>
   12684:	c100                	sw	s0,0(a0)
   12686:	547d                	li	s0,-1
   12688:	b7ed                	j	12672 <_lseek+0x14>

000000000001268a <_read>:
   1268a:	1141                	addi	sp,sp,-16
   1268c:	e406                	sd	ra,8(sp)
   1268e:	e022                	sd	s0,0(sp)
   12690:	03f00893          	li	a7,63
   12694:	00000073          	ecall
   12698:	842a                	mv	s0,a0
   1269a:	00054763          	bltz	a0,126a8 <_read+0x1e>
   1269e:	60a2                	ld	ra,8(sp)
   126a0:	8522                	mv	a0,s0
   126a2:	6402                	ld	s0,0(sp)
   126a4:	0141                	addi	sp,sp,16
   126a6:	8082                	ret
   126a8:	4080043b          	negw	s0,s0
   126ac:	0e4000ef          	jal	ra,12790 <__errno>
   126b0:	c100                	sw	s0,0(a0)
   126b2:	547d                	li	s0,-1
   126b4:	b7ed                	j	1269e <_read+0x14>

00000000000126b6 <_sbrk>:
   126b6:	7981b703          	ld	a4,1944(gp) # 147c8 <heap_end.0>
   126ba:	1141                	addi	sp,sp,-16
   126bc:	e406                	sd	ra,8(sp)
   126be:	87aa                	mv	a5,a0
   126c0:	ef01                	bnez	a4,126d8 <_sbrk+0x22>
   126c2:	0d600893          	li	a7,214
   126c6:	4501                	li	a0,0
   126c8:	00000073          	ecall
   126cc:	567d                	li	a2,-1
   126ce:	872a                	mv	a4,a0
   126d0:	02c50563          	beq	a0,a2,126fa <_sbrk+0x44>
   126d4:	78a1bc23          	sd	a0,1944(gp) # 147c8 <heap_end.0>
   126d8:	0d600893          	li	a7,214
   126dc:	00e78533          	add	a0,a5,a4
   126e0:	00000073          	ecall
   126e4:	7981b703          	ld	a4,1944(gp) # 147c8 <heap_end.0>
   126e8:	97ba                	add	a5,a5,a4
   126ea:	00f51863          	bne	a0,a5,126fa <_sbrk+0x44>
   126ee:	60a2                	ld	ra,8(sp)
   126f0:	78a1bc23          	sd	a0,1944(gp) # 147c8 <heap_end.0>
   126f4:	853a                	mv	a0,a4
   126f6:	0141                	addi	sp,sp,16
   126f8:	8082                	ret
   126fa:	096000ef          	jal	ra,12790 <__errno>
   126fe:	60a2                	ld	ra,8(sp)
   12700:	47b1                	li	a5,12
   12702:	c11c                	sw	a5,0(a0)
   12704:	557d                	li	a0,-1
   12706:	0141                	addi	sp,sp,16
   12708:	8082                	ret

000000000001270a <_write>:
   1270a:	1141                	addi	sp,sp,-16
   1270c:	e406                	sd	ra,8(sp)
   1270e:	e022                	sd	s0,0(sp)
   12710:	04000893          	li	a7,64
   12714:	00000073          	ecall
   12718:	842a                	mv	s0,a0
   1271a:	00054763          	bltz	a0,12728 <_write+0x1e>
   1271e:	60a2                	ld	ra,8(sp)
   12720:	8522                	mv	a0,s0
   12722:	6402                	ld	s0,0(sp)
   12724:	0141                	addi	sp,sp,16
   12726:	8082                	ret
   12728:	4080043b          	negw	s0,s0
   1272c:	064000ef          	jal	ra,12790 <__errno>
   12730:	c100                	sw	s0,0(a0)
   12732:	547d                	li	s0,-1
   12734:	b7ed                	j	1271e <_write+0x14>

0000000000012736 <_conv_stat>:
   12736:	0005b383          	ld	t2,0(a1)
   1273a:	0085b283          	ld	t0,8(a1)
   1273e:	0105af83          	lw	t6,16(a1)
   12742:	0145af03          	lw	t5,20(a1)
   12746:	0185ae83          	lw	t4,24(a1)
   1274a:	01c5ae03          	lw	t3,28(a1)
   1274e:	0205b303          	ld	t1,32(a1)
   12752:	0305b883          	ld	a7,48(a1)
   12756:	0405b803          	ld	a6,64(a1)
   1275a:	5d90                	lw	a2,56(a1)
   1275c:	65b4                	ld	a3,72(a1)
   1275e:	6db8                	ld	a4,88(a1)
   12760:	75bc                	ld	a5,104(a1)
   12762:	00751023          	sh	t2,0(a0)
   12766:	00551123          	sh	t0,2(a0)
   1276a:	01f52223          	sw	t6,4(a0)
   1276e:	01e51423          	sh	t5,8(a0)
   12772:	01d51523          	sh	t4,10(a0)
   12776:	01c51623          	sh	t3,12(a0)
   1277a:	00651723          	sh	t1,14(a0)
   1277e:	01153823          	sd	a7,16(a0)
   12782:	05053823          	sd	a6,80(a0)
   12786:	e530                	sd	a2,72(a0)
   12788:	ed14                	sd	a3,24(a0)
   1278a:	f518                	sd	a4,40(a0)
   1278c:	fd1c                	sd	a5,56(a0)
   1278e:	8082                	ret

0000000000012790 <__errno>:
   12790:	7601b503          	ld	a0,1888(gp) # 14790 <_impure_ptr>
   12794:	8082                	ret
