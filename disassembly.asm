
./Main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d1 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd1]        # 3fe0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <glutGet@plt-0x10>:
    1020:	ff 35 d2 2e 00 00    	push   QWORD PTR [rip+0x2ed2]        # 3ef8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 d4 2e 00 00    	jmp    QWORD PTR [rip+0x2ed4]        # 3f00 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <glutGet@plt>:
    1030:	ff 25 d2 2e 00 00    	jmp    QWORD PTR [rip+0x2ed2]        # 3f08 <glutGet@Base>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <glutPostRedisplay@plt>:
    1040:	ff 25 ca 2e 00 00    	jmp    QWORD PTR [rip+0x2eca]        # 3f10 <glutPostRedisplay@Base>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <glutInitDisplayMode@plt>:
    1050:	ff 25 c2 2e 00 00    	jmp    QWORD PTR [rip+0x2ec2]        # 3f18 <glutInitDisplayMode@Base>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <__cxa_atexit@plt>:
    1060:	ff 25 ba 2e 00 00    	jmp    QWORD PTR [rip+0x2eba]        # 3f20 <__cxa_atexit@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <glutKeyboardFunc@plt>:
    1070:	ff 25 b2 2e 00 00    	jmp    QWORD PTR [rip+0x2eb2]        # 3f28 <glutKeyboardFunc@Base>
    1076:	68 04 00 00 00       	push   0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <glutSpecialUpFunc@plt>:
    1080:	ff 25 aa 2e 00 00    	jmp    QWORD PTR [rip+0x2eaa]        # 3f30 <glutSpecialUpFunc@Base>
    1086:	68 05 00 00 00       	push   0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    1090:	ff 25 a2 2e 00 00    	jmp    QWORD PTR [rip+0x2ea2]        # 3f38 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    1096:	68 06 00 00 00       	push   0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <glutSpecialFunc@plt>:
    10a0:	ff 25 9a 2e 00 00    	jmp    QWORD PTR [rip+0x2e9a]        # 3f40 <glutSpecialFunc@Base>
    10a6:	68 07 00 00 00       	push   0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <_ZNSolsEPFRSoS_E@plt>:
    10b0:	ff 25 92 2e 00 00    	jmp    QWORD PTR [rip+0x2e92]        # 3f48 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    10b6:	68 08 00 00 00       	push   0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010c0 <__stack_chk_fail@plt>:
    10c0:	ff 25 8a 2e 00 00    	jmp    QWORD PTR [rip+0x2e8a]        # 3f50 <__stack_chk_fail@GLIBC_2.4>
    10c6:	68 09 00 00 00       	push   0x9
    10cb:	e9 50 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010d0 <glutInit@plt>:
    10d0:	ff 25 82 2e 00 00    	jmp    QWORD PTR [rip+0x2e82]        # 3f58 <glutInit@Base>
    10d6:	68 0a 00 00 00       	push   0xa
    10db:	e9 40 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010e0 <glutMainLoop@plt>:
    10e0:	ff 25 7a 2e 00 00    	jmp    QWORD PTR [rip+0x2e7a]        # 3f60 <glutMainLoop@Base>
    10e6:	68 0b 00 00 00       	push   0xb
    10eb:	e9 30 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010f0 <_ZNSt8ios_base4InitC1Ev@plt>:
    10f0:	ff 25 72 2e 00 00    	jmp    QWORD PTR [rip+0x2e72]        # 3f68 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    10f6:	68 0c 00 00 00       	push   0xc
    10fb:	e9 20 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001100 <glutInitWindowSize@plt>:
    1100:	ff 25 6a 2e 00 00    	jmp    QWORD PTR [rip+0x2e6a]        # 3f70 <glutInitWindowSize@Base>
    1106:	68 0d 00 00 00       	push   0xd
    110b:	e9 10 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001110 <glutTimerFunc@plt>:
    1110:	ff 25 62 2e 00 00    	jmp    QWORD PTR [rip+0x2e62]        # 3f78 <glutTimerFunc@Base>
    1116:	68 0e 00 00 00       	push   0xe
    111b:	e9 00 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001120 <_ZNSolsEi@plt>:
    1120:	ff 25 5a 2e 00 00    	jmp    QWORD PTR [rip+0x2e5a]        # 3f80 <_ZNSolsEi@GLIBCXX_3.4>
    1126:	68 0f 00 00 00       	push   0xf
    112b:	e9 f0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001130 <glutCreateWindow@plt>:
    1130:	ff 25 52 2e 00 00    	jmp    QWORD PTR [rip+0x2e52]        # 3f88 <glutCreateWindow@Base>
    1136:	68 10 00 00 00       	push   0x10
    113b:	e9 e0 fe ff ff       	jmp    1020 <_init+0x20>

0000000000001140 <glutDisplayFunc@plt>:
    1140:	ff 25 4a 2e 00 00    	jmp    QWORD PTR [rip+0x2e4a]        # 3f90 <glutDisplayFunc@Base>
    1146:	68 11 00 00 00       	push   0x11
    114b:	e9 d0 fe ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001150 <glBegin@plt>:
    1150:	ff 25 42 2e 00 00    	jmp    QWORD PTR [rip+0x2e42]        # 3f98 <glBegin@Base>
    1156:	66 90                	xchg   ax,ax

0000000000001158 <glClear@plt>:
    1158:	ff 25 42 2e 00 00    	jmp    QWORD PTR [rip+0x2e42]        # 3fa0 <glClear@Base>
    115e:	66 90                	xchg   ax,ax

0000000000001160 <__cxa_finalize@plt>:
    1160:	ff 25 42 2e 00 00    	jmp    QWORD PTR [rip+0x2e42]        # 3fa8 <__cxa_finalize@GLIBC_2.2.5>
    1166:	66 90                	xchg   ax,ax

0000000000001168 <glEnd@plt>:
    1168:	ff 25 5a 2e 00 00    	jmp    QWORD PTR [rip+0x2e5a]        # 3fc8 <glEnd@Base>
    116e:	66 90                	xchg   ax,ax

0000000000001170 <glFlush@plt>:
    1170:	ff 25 5a 2e 00 00    	jmp    QWORD PTR [rip+0x2e5a]        # 3fd0 <glFlush@Base>
    1176:	66 90                	xchg   ax,ax

0000000000001178 <glColor3f@plt>:
    1178:	ff 25 72 2e 00 00    	jmp    QWORD PTR [rip+0x2e72]        # 3ff0 <glColor3f@Base>
    117e:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001180 <_start>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	31 ed                	xor    ebp,ebp
    1186:	49 89 d1             	mov    r9,rdx
    1189:	5e                   	pop    rsi
    118a:	48 89 e2             	mov    rdx,rsp
    118d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1191:	50                   	push   rax
    1192:	54                   	push   rsp
    1193:	45 31 c0             	xor    r8d,r8d
    1196:	31 c9                	xor    ecx,ecx
    1198:	48 8d 3d 07 0c 00 00 	lea    rdi,[rip+0xc07]        # 1da6 <main>
    119f:	ff 15 13 2e 00 00    	call   QWORD PTR [rip+0x2e13]        # 3fb8 <__libc_start_main@GLIBC_2.34>
    11a5:	f4                   	hlt    
    11a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    11ad:	00 00 00 

00000000000011b0 <deregister_tm_clones>:
    11b0:	48 8d 3d d9 2f 00 00 	lea    rdi,[rip+0x2fd9]        # 4190 <__TMC_END__>
    11b7:	48 8d 05 d2 2f 00 00 	lea    rax,[rip+0x2fd2]        # 4190 <__TMC_END__>
    11be:	48 39 f8             	cmp    rax,rdi
    11c1:	74 15                	je     11d8 <deregister_tm_clones+0x28>
    11c3:	48 8b 05 0e 2e 00 00 	mov    rax,QWORD PTR [rip+0x2e0e]        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    11ca:	48 85 c0             	test   rax,rax
    11cd:	74 09                	je     11d8 <deregister_tm_clones+0x28>
    11cf:	ff e0                	jmp    rax
    11d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    11d8:	c3                   	ret    
    11d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000011e0 <register_tm_clones>:
    11e0:	48 8d 3d a9 2f 00 00 	lea    rdi,[rip+0x2fa9]        # 4190 <__TMC_END__>
    11e7:	48 8d 35 a2 2f 00 00 	lea    rsi,[rip+0x2fa2]        # 4190 <__TMC_END__>
    11ee:	48 29 fe             	sub    rsi,rdi
    11f1:	48 89 f0             	mov    rax,rsi
    11f4:	48 c1 ee 3f          	shr    rsi,0x3f
    11f8:	48 c1 f8 03          	sar    rax,0x3
    11fc:	48 01 c6             	add    rsi,rax
    11ff:	48 d1 fe             	sar    rsi,1
    1202:	74 14                	je     1218 <register_tm_clones+0x38>
    1204:	48 8b 05 dd 2d 00 00 	mov    rax,QWORD PTR [rip+0x2ddd]        # 3fe8 <_ITM_registerTMCloneTable@Base>
    120b:	48 85 c0             	test   rax,rax
    120e:	74 08                	je     1218 <register_tm_clones+0x38>
    1210:	ff e0                	jmp    rax
    1212:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1218:	c3                   	ret    
    1219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001220 <__do_global_dtors_aux>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	80 3d a5 30 00 00 00 	cmp    BYTE PTR [rip+0x30a5],0x0        # 42d0 <completed.0>
    122b:	75 2b                	jne    1258 <__do_global_dtors_aux+0x38>
    122d:	55                   	push   rbp
    122e:	48 83 3d 72 2d 00 00 	cmp    QWORD PTR [rip+0x2d72],0x0        # 3fa8 <__cxa_finalize@GLIBC_2.2.5>
    1235:	00 
    1236:	48 89 e5             	mov    rbp,rsp
    1239:	74 0c                	je     1247 <__do_global_dtors_aux+0x27>
    123b:	48 8b 3d c6 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2dc6]        # 4008 <__dso_handle>
    1242:	e8 19 ff ff ff       	call   1160 <__cxa_finalize@plt>
    1247:	e8 64 ff ff ff       	call   11b0 <deregister_tm_clones>
    124c:	c6 05 7d 30 00 00 01 	mov    BYTE PTR [rip+0x307d],0x1        # 42d0 <completed.0>
    1253:	5d                   	pop    rbp
    1254:	c3                   	ret    
    1255:	0f 1f 00             	nop    DWORD PTR [rax]
    1258:	c3                   	ret    
    1259:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001260 <frame_dummy>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	e9 77 ff ff ff       	jmp    11e0 <register_tm_clones>
    1269:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001270 <Build_That_Square>:
    1270:	48 89 fb             	mov    rbx,rdi
    1273:	8b 03                	mov    eax,DWORD PTR [rbx]
    1275:	03 43 08             	add    eax,DWORD PTR [rbx+0x8]
    1278:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    127b:	03 53 0c             	add    edx,DWORD PTR [rbx+0xc]
    127e:	48 89 c7             	mov    rdi,rax
    1281:	f3 48 0f 2a c7       	cvtsi2ss xmm0,rdi
    1286:	be c0 03 00 00       	mov    esi,0x3c0
    128b:	f3 48 0f 2a ce       	cvtsi2ss xmm1,rsi
    1290:	f3 0f 5e c1          	divss  xmm0,xmm1
    1294:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    129b:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    12a0:	f3 0f 58 c1          	addss  xmm0,xmm1
    12a4:	48 89 d7             	mov    rdi,rdx
    12a7:	f3 48 0f 2a cf       	cvtsi2ss xmm1,rdi
    12ac:	66 48 0f 7e c7       	movq   rdi,xmm0
    12b1:	be 1c 02 00 00       	mov    esi,0x21c
    12b6:	f3 48 0f 2a c6       	cvtsi2ss xmm0,rsi
    12bb:	f3 0f 5e c8          	divss  xmm1,xmm0
    12bf:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    12c4:	f3 0f 58 c8          	addss  xmm1,xmm0
    12c8:	66 48 0f 6e c7       	movq   xmm0,rdi
    12cd:	ff 15 ed 2c 00 00    	call   QWORD PTR [rip+0x2ced]        # 3fc0 <glVertex2f@Base>
    12d3:	8b 03                	mov    eax,DWORD PTR [rbx]
    12d5:	2b 43 08             	sub    eax,DWORD PTR [rbx+0x8]
    12d8:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    12db:	03 53 0c             	add    edx,DWORD PTR [rbx+0xc]
    12de:	48 89 c7             	mov    rdi,rax
    12e1:	f3 48 0f 2a c7       	cvtsi2ss xmm0,rdi
    12e6:	be c0 03 00 00       	mov    esi,0x3c0
    12eb:	f3 48 0f 2a ce       	cvtsi2ss xmm1,rsi
    12f0:	f3 0f 5e c1          	divss  xmm0,xmm1
    12f4:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    12fb:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    1300:	f3 0f 58 c1          	addss  xmm0,xmm1
    1304:	48 89 d7             	mov    rdi,rdx
    1307:	f3 48 0f 2a cf       	cvtsi2ss xmm1,rdi
    130c:	66 48 0f 7e c7       	movq   rdi,xmm0
    1311:	be 1c 02 00 00       	mov    esi,0x21c
    1316:	f3 48 0f 2a c6       	cvtsi2ss xmm0,rsi
    131b:	f3 0f 5e c8          	divss  xmm1,xmm0
    131f:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1324:	f3 0f 58 c8          	addss  xmm1,xmm0
    1328:	66 48 0f 6e c7       	movq   xmm0,rdi
    132d:	ff 15 8d 2c 00 00    	call   QWORD PTR [rip+0x2c8d]        # 3fc0 <glVertex2f@Base>
    1333:	8b 03                	mov    eax,DWORD PTR [rbx]
    1335:	2b 43 08             	sub    eax,DWORD PTR [rbx+0x8]
    1338:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    133b:	2b 53 0c             	sub    edx,DWORD PTR [rbx+0xc]
    133e:	48 89 c7             	mov    rdi,rax
    1341:	f3 48 0f 2a c7       	cvtsi2ss xmm0,rdi
    1346:	be c0 03 00 00       	mov    esi,0x3c0
    134b:	f3 48 0f 2a ce       	cvtsi2ss xmm1,rsi
    1350:	f3 0f 5e c1          	divss  xmm0,xmm1
    1354:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    135b:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    1360:	f3 0f 58 c1          	addss  xmm0,xmm1
    1364:	48 89 d7             	mov    rdi,rdx
    1367:	f3 48 0f 2a cf       	cvtsi2ss xmm1,rdi
    136c:	66 48 0f 7e c7       	movq   rdi,xmm0
    1371:	be 1c 02 00 00       	mov    esi,0x21c
    1376:	f3 48 0f 2a c6       	cvtsi2ss xmm0,rsi
    137b:	f3 0f 5e c8          	divss  xmm1,xmm0
    137f:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1384:	f3 0f 58 c8          	addss  xmm1,xmm0
    1388:	66 48 0f 6e c7       	movq   xmm0,rdi
    138d:	ff 15 2d 2c 00 00    	call   QWORD PTR [rip+0x2c2d]        # 3fc0 <glVertex2f@Base>
    1393:	8b 03                	mov    eax,DWORD PTR [rbx]
    1395:	03 43 08             	add    eax,DWORD PTR [rbx+0x8]
    1398:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    139b:	2b 53 0c             	sub    edx,DWORD PTR [rbx+0xc]
    139e:	48 89 c7             	mov    rdi,rax
    13a1:	f3 48 0f 2a c7       	cvtsi2ss xmm0,rdi
    13a6:	be c0 03 00 00       	mov    esi,0x3c0
    13ab:	f3 48 0f 2a ce       	cvtsi2ss xmm1,rsi
    13b0:	f3 0f 5e c1          	divss  xmm0,xmm1
    13b4:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    13bb:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    13c0:	f3 0f 58 c1          	addss  xmm0,xmm1
    13c4:	48 89 d7             	mov    rdi,rdx
    13c7:	f3 48 0f 2a cf       	cvtsi2ss xmm1,rdi
    13cc:	66 48 0f 7e c7       	movq   rdi,xmm0
    13d1:	be 1c 02 00 00       	mov    esi,0x21c
    13d6:	f3 48 0f 2a c6       	cvtsi2ss xmm0,rsi
    13db:	f3 0f 5e c8          	divss  xmm1,xmm0
    13df:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    13e4:	f3 0f 58 c8          	addss  xmm1,xmm0
    13e8:	66 48 0f 6e c7       	movq   xmm0,rdi
    13ed:	ff 15 cd 2b 00 00    	call   QWORD PTR [rip+0x2bcd]        # 3fc0 <glVertex2f@Base>
    13f3:	ff 15 cf 2b 00 00    	call   QWORD PTR [rip+0x2bcf]        # 3fc8 <glEnd@Base>
    13f9:	c3                   	ret    

00000000000013fa <check_object_interference>:
    13fa:	48 8d 35 63 2c 00 00 	lea    rsi,[rip+0x2c63]        # 4064 <Entities_count>
    1401:	8b 36                	mov    esi,DWORD PTR [rsi]
    1403:	c1 e6 04             	shl    esi,0x4
    1406:	48 8d 05 5b 2c 00 00 	lea    rax,[rip+0x2c5b]        # 4068 <Player_Pos>
    140d:	48 01 c6             	add    rsi,rax

0000000000001410 <_Loop_for_checking_interference>:
    1410:	48 8d 15 51 2c 00 00 	lea    rdx,[rip+0x2c51]        # 4068 <Player_Pos>
    1417:	48 39 d6             	cmp    rsi,rdx
    141a:	74 58                	je     1474 <_failed_collision_check>
    141c:	8b 3d 46 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c46]        # 4068 <Player_Pos>
    1422:	83 ef 08             	sub    edi,0x8
    1425:	8b 06                	mov    eax,DWORD PTR [rsi]
    1427:	03 46 08             	add    eax,DWORD PTR [rsi+0x8]
    142a:	39 c7                	cmp    edi,eax
    142c:	7f 3a                	jg     1468 <_next_loop_collision_check>
    142e:	8b 3d 34 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c34]        # 4068 <Player_Pos>
    1434:	83 c7 08             	add    edi,0x8
    1437:	8b 06                	mov    eax,DWORD PTR [rsi]
    1439:	2b 46 08             	sub    eax,DWORD PTR [rsi+0x8]
    143c:	39 c7                	cmp    edi,eax
    143e:	7c 28                	jl     1468 <_next_loop_collision_check>
    1440:	8b 3d 26 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c26]        # 406c <Player_Pos+0x4>
    1446:	83 ef 08             	sub    edi,0x8
    1449:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    144c:	03 46 0c             	add    eax,DWORD PTR [rsi+0xc]
    144f:	39 c7                	cmp    edi,eax
    1451:	7f 15                	jg     1468 <_next_loop_collision_check>
    1453:	8b 3d 13 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c13]        # 406c <Player_Pos+0x4>
    1459:	83 c7 08             	add    edi,0x8
    145c:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    145f:	2b 46 0c             	sub    eax,DWORD PTR [rsi+0xc]
    1462:	39 c7                	cmp    edi,eax
    1464:	7c 02                	jl     1468 <_next_loop_collision_check>
    1466:	eb 06                	jmp    146e <_successful_collision_check>

0000000000001468 <_next_loop_collision_check>:
    1468:	48 83 ee 10          	sub    rsi,0x10
    146c:	eb a2                	jmp    1410 <_Loop_for_checking_interference>

000000000000146e <_successful_collision_check>:
    146e:	b8 01 00 00 00       	mov    eax,0x1
    1473:	c3                   	ret    

0000000000001474 <_failed_collision_check>:
    1474:	b8 00 00 00 00       	mov    eax,0x0
    1479:	c3                   	ret    

000000000000147a <check_out_of_bounds>:
    147a:	ba 00 00 00 00       	mov    edx,0x0
    147f:	eb 00                	jmp    1481 <_looping_for_entity>

0000000000001481 <_looping_for_entity>:
    1481:	48 8d 07             	lea    rax,[rdi]
    1484:	be 80 07 00 00       	mov    esi,0x780
    1489:	48 2b 77 08          	sub    rsi,QWORD PTR [rdi+0x8]
    148d:	39 30                	cmp    DWORD PTR [rax],esi
    148f:	7c 04                	jl     1495 <_Out_of_Bounds_X_Negative>

0000000000001491 <_Out_of_Bounds_X_Positive>:
    1491:	89 30                	mov    DWORD PTR [rax],esi
    1493:	eb 0f                	jmp    14a4 <_Out_of_Bounds_X_Fail>

0000000000001495 <_Out_of_Bounds_X_Negative>:
    1495:	be 00 00 00 00       	mov    esi,0x0
    149a:	48 03 77 08          	add    rsi,QWORD PTR [rdi+0x8]
    149e:	39 30                	cmp    DWORD PTR [rax],esi
    14a0:	7f 02                	jg     14a4 <_Out_of_Bounds_X_Fail>
    14a2:	89 30                	mov    DWORD PTR [rax],esi

00000000000014a4 <_Out_of_Bounds_X_Fail>:
    14a4:	48 8d 47 04          	lea    rax,[rdi+0x4]
    14a8:	be 38 04 00 00       	mov    esi,0x438
    14ad:	48 2b 77 0c          	sub    rsi,QWORD PTR [rdi+0xc]
    14b1:	39 30                	cmp    DWORD PTR [rax],esi
    14b3:	7c 04                	jl     14b9 <_Out_of_Bounds_Y_Negative>

00000000000014b5 <_Out_of_Bounds_Y_Positive>:
    14b5:	89 30                	mov    DWORD PTR [rax],esi
    14b7:	eb 0f                	jmp    14c8 <_Out_of_Bounds_Y_Fail>

00000000000014b9 <_Out_of_Bounds_Y_Negative>:
    14b9:	be 00 00 00 00       	mov    esi,0x0
    14be:	48 03 77 0c          	add    rsi,QWORD PTR [rdi+0xc]
    14c2:	39 30                	cmp    DWORD PTR [rax],esi
    14c4:	7f 02                	jg     14c8 <_Out_of_Bounds_Y_Fail>
    14c6:	89 30                	mov    DWORD PTR [rax],esi

00000000000014c8 <_Out_of_Bounds_Y_Fail>:
    14c8:	83 fa 00             	cmp    edx,0x0
    14cb:	0f 84 6d 07 00 00    	je     1c3e <_End>
    14d1:	ff ca                	dec    edx
    14d3:	48 83 c7 18          	add    rdi,0x18
    14d7:	eb a8                	jmp    1481 <_looping_for_entity>

00000000000014d9 <printlnf>:
    14d9:	e8 18 00 00 00       	call   14f6 <printff>
    14de:	6a 0a                	push   0xa
    14e0:	b8 01 00 00 00       	mov    eax,0x1
    14e5:	bf 01 00 00 00       	mov    edi,0x1
    14ea:	48 89 e6             	mov    rsi,rsp
    14ed:	ba 01 00 00 00       	mov    edx,0x1
    14f2:	0f 05                	syscall 
    14f4:	58                   	pop    rax
    14f5:	c3                   	ret    

00000000000014f6 <printff>:
    14f6:	55                   	push   rbp
    14f7:	48 89 e5             	mov    rbp,rsp
    14fa:	48 89 f8             	mov    rax,rdi
    14fd:	48 89 f7             	mov    rdi,rsi
    1500:	48 83 ff 73          	cmp    rdi,0x73
    1504:	0f 84 d7 00 00 00    	je     15e1 <_print_word>
    150a:	be 00 00 00 00       	mov    esi,0x0
    150f:	48 83 ff 64          	cmp    rdi,0x64
    1513:	0f 84 08 01 00 00    	je     1621 <_printNum>
    1519:	48 83 ff 75          	cmp    rdi,0x75
    151d:	0f 84 f7 00 00 00    	je     161a <_printU>
    1523:	48 83 ff 70          	cmp    rdi,0x70
    1527:	0f 84 71 01 00 00    	je     169e <_printAddy>
    152d:	48 83 ff 66          	cmp    rdi,0x66
    1531:	74 00                	je     1533 <_printing_float>

0000000000001533 <_printing_float>:
    1533:	f3 48 0f 2c f8       	cvttss2si rdi,xmm0
    1538:	be 64 00 00 00       	mov    esi,0x64
    153d:	e8 b4 ff ff ff       	call   14f6 <printff>
    1542:	6a 2e                	push   0x2e
    1544:	b8 01 00 00 00       	mov    eax,0x1
    1549:	bf 01 00 00 00       	mov    edi,0x1
    154e:	48 89 e6             	mov    rsi,rsp
    1551:	ba 01 00 00 00       	mov    edx,0x1
    1556:	0f 05                	syscall 
    1558:	58                   	pop    rax
    1559:	66 0f 3a 0a c8 01    	roundss xmm1,xmm0,0x1
    155f:	f3 0f 5c c1          	subss  xmm0,xmm1
    1563:	b8 40 42 0f 00       	mov    eax,0xf4240
    1568:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    156d:	f3 0f 59 c1          	mulss  xmm0,xmm1
    1571:	f3 48 0f 2c c0       	cvttss2si rax,xmm0
    1576:	55                   	push   rbp
    1577:	48 89 e5             	mov    rbp,rsp
    157a:	50                   	push   rax
    157b:	48 ff cc             	dec    rsp
    157e:	c6 04 24 00          	mov    BYTE PTR [rsp],0x0
    1582:	48 83 ec 04          	sub    rsp,0x4
    1586:	c7 04 24 0a 00 00 00 	mov    DWORD PTR [rsp],0xa
    158d:	be 06 00 00 00       	mov    esi,0x6

0000000000001592 <_start_comparing_for_printing_zeroes>:
    1592:	48 83 f8 00          	cmp    rax,0x0
    1596:	74 0b                	je     15a3 <_start_printing_pre_zeroes>
    1598:	48 31 d2             	xor    rdx,rdx
    159b:	f7 34 24             	div    DWORD PTR [rsp]
    159e:	48 ff ce             	dec    rsi
    15a1:	eb ef                	jmp    1592 <_start_comparing_for_printing_zeroes>

00000000000015a3 <_start_printing_pre_zeroes>:
    15a3:	48 83 c4 04          	add    rsp,0x4
    15a7:	48 29 f4             	sub    rsp,rsi

00000000000015aa <_adding_zero_to_stack>:
    15aa:	48 83 fe 00          	cmp    rsi,0x0
    15ae:	74 0c                	je     15bc <_done_adding_zero_to_stack>
    15b0:	48 ff cc             	dec    rsp
    15b3:	c6 04 24 30          	mov    BYTE PTR [rsp],0x30
    15b7:	48 ff ce             	dec    rsi
    15ba:	eb ee                	jmp    15aa <_adding_zero_to_stack>

00000000000015bc <_done_adding_zero_to_stack>:
    15bc:	48 89 e7             	mov    rdi,rsp
    15bf:	be 73 00 00 00       	mov    esi,0x73
    15c4:	e8 2d ff ff ff       	call   14f6 <printff>
    15c9:	48 89 ec             	mov    rsp,rbp
    15cc:	5d                   	pop    rbp
    15cd:	48 8b 7c 24 f0       	mov    rdi,QWORD PTR [rsp-0x10]
    15d2:	be 64 00 00 00       	mov    esi,0x64
    15d7:	e8 1a ff ff ff       	call   14f6 <printff>
    15dc:	e9 36 01 00 00       	jmp    1717 <_end>

00000000000015e1 <_print_word>:
    15e1:	50                   	push   rax
    15e2:	48 89 c0             	mov    rax,rax
    15e5:	48 83 ec 04          	sub    rsp,0x4
    15e9:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

00000000000015f0 <..@9._reading>:
    15f0:	80 38 00             	cmp    BYTE PTR [rax],0x0
    15f3:	74 08                	je     15fd <..@9._print>
    15f5:	48 ff c0             	inc    rax
    15f8:	ff 04 24             	inc    DWORD PTR [rsp]
    15fb:	eb f3                	jmp    15f0 <..@9._reading>

00000000000015fd <..@9._print>:
    15fd:	b8 01 00 00 00       	mov    eax,0x1
    1602:	bf 01 00 00 00       	mov    edi,0x1
    1607:	48 8b 74 24 04       	mov    rsi,QWORD PTR [rsp+0x4]
    160c:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    160f:	48 83 c4 0c          	add    rsp,0xc
    1613:	0f 05                	syscall 
    1615:	e9 fd 00 00 00       	jmp    1717 <_end>

000000000000161a <_printU>:
    161a:	be 2b 00 00 00       	mov    esi,0x2b
    161f:	eb 00                	jmp    1621 <_printNum>

0000000000001621 <_printNum>:
    1621:	48 83 f8 00          	cmp    rax,0x0
    1625:	7d 0e                	jge    1635 <_start_process>
    1627:	48 83 fe 2b          	cmp    rsi,0x2b
    162b:	74 08                	je     1635 <_start_process>
    162d:	be 2d 00 00 00       	mov    esi,0x2d
    1632:	48 f7 d8             	neg    rax

0000000000001635 <_start_process>:
    1635:	48 ff cc             	dec    rsp
    1638:	c6 04 24 00          	mov    BYTE PTR [rsp],0x0

000000000000163c <_diving>:
    163c:	48 31 d2             	xor    rdx,rdx
    163f:	bf 0a 00 00 00       	mov    edi,0xa
    1644:	48 f7 f7             	div    rdi
    1647:	48 83 c2 30          	add    rdx,0x30
    164b:	48 ff cc             	dec    rsp
    164e:	88 14 24             	mov    BYTE PTR [rsp],dl
    1651:	48 83 f8 00          	cmp    rax,0x0
    1655:	75 e5                	jne    163c <_diving>
    1657:	48 83 fe 2d          	cmp    rsi,0x2d
    165b:	75 07                	jne    1664 <_start_printing_process>
    165d:	48 ff cc             	dec    rsp
    1660:	c6 04 24 2d          	mov    BYTE PTR [rsp],0x2d

0000000000001664 <_start_printing_process>:
    1664:	48 8d 34 24          	lea    rsi,[rsp]
    1668:	56                   	push   rsi
    1669:	48 89 f0             	mov    rax,rsi
    166c:	48 83 ec 04          	sub    rsp,0x4
    1670:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

0000000000001677 <..@10._reading>:
    1677:	80 38 00             	cmp    BYTE PTR [rax],0x0
    167a:	74 08                	je     1684 <..@10._print>
    167c:	48 ff c0             	inc    rax
    167f:	ff 04 24             	inc    DWORD PTR [rsp]
    1682:	eb f3                	jmp    1677 <..@10._reading>

0000000000001684 <..@10._print>:
    1684:	b8 01 00 00 00       	mov    eax,0x1
    1689:	bf 01 00 00 00       	mov    edi,0x1
    168e:	48 8b 74 24 04       	mov    rsi,QWORD PTR [rsp+0x4]
    1693:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    1696:	48 83 c4 0c          	add    rsp,0xc
    169a:	0f 05                	syscall 
    169c:	eb 79                	jmp    1717 <_end>

000000000000169e <_printAddy>:
    169e:	be 10 00 00 00       	mov    esi,0x10
    16a3:	48 ff cc             	dec    rsp
    16a6:	c6 04 24 00          	mov    BYTE PTR [rsp],0x0

00000000000016aa <_divide_loop>:
    16aa:	48 31 d2             	xor    rdx,rdx
    16ad:	bf 10 00 00 00       	mov    edi,0x10
    16b2:	48 f7 f7             	div    rdi
    16b5:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
    16b8:	48 8d 15 47 09 00 00 	lea    rdx,[rip+0x947]        # 2006 <sixteen_bit_address>
    16bf:	02 55 ff             	add    dl,BYTE PTR [rbp-0x1]
    16c2:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    16c5:	48 ff cc             	dec    rsp
    16c8:	88 14 24             	mov    BYTE PTR [rsp],dl
    16cb:	48 ff ce             	dec    rsi
    16ce:	48 85 f6             	test   rsi,rsi
    16d1:	75 d7                	jne    16aa <_divide_loop>
    16d3:	48 83 ec 02          	sub    rsp,0x2
    16d7:	66 c7 04 24 30 78    	mov    WORD PTR [rsp],0x7830
    16dd:	48 8d 34 24          	lea    rsi,[rsp]
    16e1:	56                   	push   rsi
    16e2:	48 89 f0             	mov    rax,rsi
    16e5:	48 83 ec 04          	sub    rsp,0x4
    16e9:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

00000000000016f0 <..@11._reading>:
    16f0:	80 38 00             	cmp    BYTE PTR [rax],0x0
    16f3:	74 08                	je     16fd <..@11._print>
    16f5:	48 ff c0             	inc    rax
    16f8:	ff 04 24             	inc    DWORD PTR [rsp]
    16fb:	eb f3                	jmp    16f0 <..@11._reading>

00000000000016fd <..@11._print>:
    16fd:	b8 01 00 00 00       	mov    eax,0x1
    1702:	bf 01 00 00 00       	mov    edi,0x1
    1707:	48 8b 74 24 04       	mov    rsi,QWORD PTR [rsp+0x4]
    170c:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    170f:	48 83 c4 0c          	add    rsp,0xc
    1713:	0f 05                	syscall 
    1715:	eb 00                	jmp    1717 <_end>

0000000000001717 <_end>:
    1717:	48 89 ec             	mov    rsp,rbp
    171a:	5d                   	pop    rbp
    171b:	c3                   	ret    

000000000000171c <cos_a>:
    171c:	48 83 c7 5a          	add    rdi,0x5a
    1720:	e8 01 00 00 00       	call   1726 <sin_a>
    1725:	c3                   	ret    

0000000000001726 <sin_a>:
    1726:	48 31 d2             	xor    rdx,rdx
    1729:	48 89 f8             	mov    rax,rdi
    172c:	bf 68 01 00 00       	mov    edi,0x168
    1731:	48 f7 f7             	div    rdi
    1734:	48 6b c2 04          	imul   rax,rdx,0x4
    1738:	48 8d 3d d7 08 00 00 	lea    rdi,[rip+0x8d7]        # 2016 <sin_list>
    173f:	48 01 f8             	add    rax,rdi
    1742:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
    1746:	c3                   	ret    

0000000000001747 <display>:
    1747:	55                   	push   rbp
    1748:	48 89 e5             	mov    rbp,rsp
    174b:	bf 00 40 00 00       	mov    edi,0x4000
    1750:	ff 15 4a 28 00 00    	call   QWORD PTR [rip+0x284a]        # 3fa0 <glClear@Base>
    1756:	b8 01 00 00 00       	mov    eax,0x1
    175b:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1760:	b8 00 00 00 00       	mov    eax,0x0
    1765:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    176a:	f3 0f 10 d1          	movss  xmm2,xmm1
    176e:	ff 15 7c 28 00 00    	call   QWORD PTR [rip+0x287c]        # 3ff0 <glColor3f@Base>
    1774:	bf 07 00 00 00       	mov    edi,0x7
    1779:	ff 15 19 28 00 00    	call   QWORD PTR [rip+0x2819]        # 3f98 <glBegin@Base>
    177f:	45 31 d2             	xor    r10d,r10d
    1782:	45 31 c9             	xor    r9d,r9d
    1785:	48 8d 15 78 08 00 00 	lea    rdx,[rip+0x878]        # 2004 <Player_Velocity>
    178c:	48 8d 05 f6 29 00 00 	lea    rax,[rip+0x29f6]        # 4189 <Player_Velocity_Bool>
    1793:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    1797:	48 01 c2             	add    rdx,rax
    179a:	44 2a 12             	sub    r10b,BYTE PTR [rdx]
    179d:	48 29 c2             	sub    rdx,rax
    17a0:	48 8d 05 e3 29 00 00 	lea    rax,[rip+0x29e3]        # 418a <Player_Velocity_Bool+0x1>
    17a7:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    17ab:	48 01 c2             	add    rdx,rax
    17ae:	48 83 f8 01          	cmp    rax,0x1
    17b2:	74 02                	je     17b6 <_normal_y_gravity>
    17b4:	eb 26                	jmp    17dc <_skip_jumping>

00000000000017b6 <_normal_y_gravity>:
    17b6:	41 83 c1 07          	add    r9d,0x7
    17ba:	48 8d 3d ab 28 00 00 	lea    rdi,[rip+0x28ab]        # 406c <Player_Pos+0x4>
    17c1:	ff 0f                	dec    DWORD PTR [rdi]
    17c3:	e8 32 fc ff ff       	call   13fa <check_object_interference>
    17c8:	48 8d 3d 9d 28 00 00 	lea    rdi,[rip+0x289d]        # 406c <Player_Pos+0x4>
    17cf:	ff 07                	inc    DWORD PTR [rdi]
    17d1:	48 83 f8 00          	cmp    rax,0x0
    17d5:	74 02                	je     17d9 <_subtract_normally_verticle_velocity>
    17d7:	eb 03                	jmp    17dc <_skip_jumping>

00000000000017d9 <_subtract_normally_verticle_velocity>:
    17d9:	41 b1 00             	mov    r9b,0x0

00000000000017dc <_skip_jumping>:
    17dc:	48 8d 15 21 08 00 00 	lea    rdx,[rip+0x821]        # 2004 <Player_Velocity>
    17e3:	48 8d 05 a1 29 00 00 	lea    rax,[rip+0x29a1]        # 418b <Player_Velocity_Bool+0x2>
    17ea:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    17ee:	48 01 c2             	add    rdx,rax
    17f1:	44 02 12             	add    r10b,BYTE PTR [rdx]
    17f4:	48 29 c2             	sub    rdx,rax
    17f7:	48 8d 05 8e 29 00 00 	lea    rax,[rip+0x298e]        # 418c <Player_Velocity_Bool+0x3>
    17fe:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    1802:	48 01 c2             	add    rdx,rax
    1805:	44 2a 0a             	sub    r9b,BYTE PTR [rdx]
    1808:	48 29 c2             	sub    rdx,rax
    180b:	48 8d 05 4a 28 00 00 	lea    rax,[rip+0x284a]        # 405c <player_inst_vel>
    1812:	66 45 0f be d2       	movsx  r10w,r10b
    1817:	66 44 01 10          	add    WORD PTR [rax],r10w
    181b:	48 8d 05 3c 28 00 00 	lea    rax,[rip+0x283c]        # 405e <player_inst_vel+0x2>
    1822:	f3 0f 10 05 e6 27 00 	movss  xmm0,DWORD PTR [rip+0x27e6]        # 4010 <gravity>
    1829:	00 
    182a:	f3 0f 2c f8          	cvttss2si edi,xmm0
    182e:	66 45 0f be c9       	movsx  r9w,r9b
    1833:	41 29 f9             	sub    r9d,edi
    1836:	66 44 01 08          	add    WORD PTR [rax],r9w
    183a:	66 44 0f be 0d 1b 28 	movsx  r9w,BYTE PTR [rip+0x281b]        # 405e <player_inst_vel+0x2>
    1841:	00 00 
    1843:	66 41 b8 01 00       	mov    r8w,0x1
    1848:	66 41 83 f9 00       	cmp    r9w,0x0
    184d:	7d 05                	jge    1854 <_finished_first_y_check>
    184f:	66 41 b8 ff ff       	mov    r8w,0xffff

0000000000001854 <_finished_first_y_check>:
    1854:	45 0f bf e0          	movsx  r12d,r8w

0000000000001858 <_check_y_interference>:
    1858:	66 41 83 f9 00       	cmp    r9w,0x0
    185d:	74 2b                	je     188a <_done_checking_y_interference>
    185f:	44 01 25 06 28 00 00 	add    DWORD PTR [rip+0x2806],r12d        # 406c <Player_Pos+0x4>
    1866:	e8 8f fb ff ff       	call   13fa <check_object_interference>
    186b:	48 83 f8 01          	cmp    rax,0x1
    186f:	74 06                	je     1877 <_failed_y_check>
    1871:	66 45 29 c1          	sub    r9w,r8w
    1875:	eb e1                	jmp    1858 <_check_y_interference>

0000000000001877 <_failed_y_check>:
    1877:	44 29 25 ee 27 00 00 	sub    DWORD PTR [rip+0x27ee],r12d        # 406c <Player_Pos+0x4>
    187e:	48 8d 05 d9 27 00 00 	lea    rax,[rip+0x27d9]        # 405e <player_inst_vel+0x2>
    1885:	66 c7 00 00 00       	mov    WORD PTR [rax],0x0

000000000000188a <_done_checking_y_interference>:
    188a:	66 44 0f be 0d c9 27 	movsx  r9w,BYTE PTR [rip+0x27c9]        # 405c <player_inst_vel>
    1891:	00 00 
    1893:	66 41 b8 01 00       	mov    r8w,0x1
    1898:	66 41 83 f9 00       	cmp    r9w,0x0
    189d:	7d 05                	jge    18a4 <_finished_first_x_check>
    189f:	66 41 b8 ff ff       	mov    r8w,0xffff

00000000000018a4 <_finished_first_x_check>:
    18a4:	45 0f bf e0          	movsx  r12d,r8w

00000000000018a8 <_check_x_interference>:
    18a8:	66 41 83 f9 00       	cmp    r9w,0x0
    18ad:	74 2b                	je     18da <_done_checking_x_interference>
    18af:	44 01 25 b2 27 00 00 	add    DWORD PTR [rip+0x27b2],r12d        # 4068 <Player_Pos>
    18b6:	e8 3f fb ff ff       	call   13fa <check_object_interference>
    18bb:	48 83 f8 01          	cmp    rax,0x1
    18bf:	74 06                	je     18c7 <_failed_x_check>
    18c1:	66 45 29 c1          	sub    r9w,r8w
    18c5:	eb e1                	jmp    18a8 <_check_x_interference>

00000000000018c7 <_failed_x_check>:
    18c7:	44 29 25 9a 27 00 00 	sub    DWORD PTR [rip+0x279a],r12d        # 4068 <Player_Pos>
    18ce:	48 8d 05 87 27 00 00 	lea    rax,[rip+0x2787]        # 405c <player_inst_vel>
    18d5:	66 c7 00 00 00       	mov    WORD PTR [rax],0x0

00000000000018da <_done_checking_x_interference>:
    18da:	48 8d 05 7b 27 00 00 	lea    rax,[rip+0x277b]        # 405c <player_inst_vel>
    18e1:	66 c7 00 00 00       	mov    WORD PTR [rax],0x0
    18e6:	48 8d 3d 7b 27 00 00 	lea    rdi,[rip+0x277b]        # 4068 <Player_Pos>
    18ed:	e8 88 fb ff ff       	call   147a <check_out_of_bounds>
    18f2:	48 8d 3d 6f 27 00 00 	lea    rdi,[rip+0x276f]        # 4068 <Player_Pos>
    18f9:	e8 72 f9 ff ff       	call   1270 <Build_That_Square>
    18fe:	ff 15 c4 26 00 00    	call   QWORD PTR [rip+0x26c4]        # 3fc8 <glEnd@Base>
    1904:	bf ff 00 00 00       	mov    edi,0xff
    1909:	f3 48 0f 2a df       	cvtsi2ss xmm3,rdi
    190e:	b8 6c 00 00 00       	mov    eax,0x6c
    1913:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1918:	f3 0f 5e c3          	divss  xmm0,xmm3
    191c:	b8 20 00 00 00       	mov    eax,0x20
    1921:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    1926:	f3 0f 5e cb          	divss  xmm1,xmm3
    192a:	b8 c4 00 00 00       	mov    eax,0xc4
    192f:	f3 48 0f 2a d0       	cvtsi2ss xmm2,rax
    1934:	f3 0f 5e d3          	divss  xmm2,xmm3
    1938:	ff 15 b2 26 00 00    	call   QWORD PTR [rip+0x26b2]        # 3ff0 <glColor3f@Base>
    193e:	bf 07 00 00 00       	mov    edi,0x7
    1943:	ff 15 4f 26 00 00    	call   QWORD PTR [rip+0x264f]        # 3f98 <glBegin@Base>
    1949:	48 8d 3d 28 27 00 00 	lea    rdi,[rip+0x2728]        # 4078 <Block>
    1950:	e8 1b f9 ff ff       	call   1270 <Build_That_Square>
    1955:	bf 07 00 00 00       	mov    edi,0x7
    195a:	ff 15 38 26 00 00    	call   QWORD PTR [rip+0x2638]        # 3f98 <glBegin@Base>
    1960:	48 8d 3d 21 27 00 00 	lea    rdi,[rip+0x2721]        # 4088 <Block1>
    1967:	e8 04 f9 ff ff       	call   1270 <Build_That_Square>
    196c:	bf 07 00 00 00       	mov    edi,0x7
    1971:	ff 15 21 26 00 00    	call   QWORD PTR [rip+0x2621]        # 3f98 <glBegin@Base>
    1977:	48 8d 3d 1a 27 00 00 	lea    rdi,[rip+0x271a]        # 4098 <Block2>
    197e:	e8 ed f8 ff ff       	call   1270 <Build_That_Square>
    1983:	bf 07 00 00 00       	mov    edi,0x7
    1988:	ff 15 0a 26 00 00    	call   QWORD PTR [rip+0x260a]        # 3f98 <glBegin@Base>
    198e:	48 8d 3d 13 27 00 00 	lea    rdi,[rip+0x2713]        # 40a8 <Block3>
    1995:	e8 d6 f8 ff ff       	call   1270 <Build_That_Square>
    199a:	bf 07 00 00 00       	mov    edi,0x7
    199f:	ff 15 f3 25 00 00    	call   QWORD PTR [rip+0x25f3]        # 3f98 <glBegin@Base>
    19a5:	48 8d 3d 0c 27 00 00 	lea    rdi,[rip+0x270c]        # 40b8 <Block4>
    19ac:	e8 bf f8 ff ff       	call   1270 <Build_That_Square>
    19b1:	bf 07 00 00 00       	mov    edi,0x7
    19b6:	ff 15 dc 25 00 00    	call   QWORD PTR [rip+0x25dc]        # 3f98 <glBegin@Base>
    19bc:	48 8d 3d 05 27 00 00 	lea    rdi,[rip+0x2705]        # 40c8 <Block5>
    19c3:	e8 a8 f8 ff ff       	call   1270 <Build_That_Square>
    19c8:	bf 07 00 00 00       	mov    edi,0x7
    19cd:	ff 15 c5 25 00 00    	call   QWORD PTR [rip+0x25c5]        # 3f98 <glBegin@Base>
    19d3:	48 8d 3d fe 26 00 00 	lea    rdi,[rip+0x26fe]        # 40d8 <Block6>
    19da:	e8 91 f8 ff ff       	call   1270 <Build_That_Square>
    19df:	bf 07 00 00 00       	mov    edi,0x7
    19e4:	ff 15 ae 25 00 00    	call   QWORD PTR [rip+0x25ae]        # 3f98 <glBegin@Base>
    19ea:	48 8d 3d f7 26 00 00 	lea    rdi,[rip+0x26f7]        # 40e8 <Block7>
    19f1:	e8 7a f8 ff ff       	call   1270 <Build_That_Square>
    19f6:	bf 07 00 00 00       	mov    edi,0x7
    19fb:	ff 15 97 25 00 00    	call   QWORD PTR [rip+0x2597]        # 3f98 <glBegin@Base>
    1a01:	48 8d 3d f0 26 00 00 	lea    rdi,[rip+0x26f0]        # 40f8 <Block8>
    1a08:	e8 63 f8 ff ff       	call   1270 <Build_That_Square>
    1a0d:	bf 07 00 00 00       	mov    edi,0x7
    1a12:	ff 15 80 25 00 00    	call   QWORD PTR [rip+0x2580]        # 3f98 <glBegin@Base>
    1a18:	48 8d 3d e9 26 00 00 	lea    rdi,[rip+0x26e9]        # 4108 <Block9>
    1a1f:	e8 4c f8 ff ff       	call   1270 <Build_That_Square>
    1a24:	bf 07 00 00 00       	mov    edi,0x7
    1a29:	ff 15 69 25 00 00    	call   QWORD PTR [rip+0x2569]        # 3f98 <glBegin@Base>
    1a2f:	48 8d 3d e2 26 00 00 	lea    rdi,[rip+0x26e2]        # 4118 <Block10>
    1a36:	e8 35 f8 ff ff       	call   1270 <Build_That_Square>
    1a3b:	bf 07 00 00 00       	mov    edi,0x7
    1a40:	ff 15 52 25 00 00    	call   QWORD PTR [rip+0x2552]        # 3f98 <glBegin@Base>
    1a46:	48 8d 3d db 26 00 00 	lea    rdi,[rip+0x26db]        # 4128 <Block11>
    1a4d:	e8 1e f8 ff ff       	call   1270 <Build_That_Square>
    1a52:	bf 07 00 00 00       	mov    edi,0x7
    1a57:	ff 15 3b 25 00 00    	call   QWORD PTR [rip+0x253b]        # 3f98 <glBegin@Base>
    1a5d:	48 8d 3d d4 26 00 00 	lea    rdi,[rip+0x26d4]        # 4138 <Block12>
    1a64:	e8 07 f8 ff ff       	call   1270 <Build_That_Square>
    1a69:	bf 07 00 00 00       	mov    edi,0x7
    1a6e:	ff 15 24 25 00 00    	call   QWORD PTR [rip+0x2524]        # 3f98 <glBegin@Base>
    1a74:	48 8d 3d cd 26 00 00 	lea    rdi,[rip+0x26cd]        # 4148 <Block13>
    1a7b:	e8 f0 f7 ff ff       	call   1270 <Build_That_Square>
    1a80:	bf 07 00 00 00       	mov    edi,0x7
    1a85:	ff 15 0d 25 00 00    	call   QWORD PTR [rip+0x250d]        # 3f98 <glBegin@Base>
    1a8b:	48 8d 3d d6 26 00 00 	lea    rdi,[rip+0x26d6]        # 4168 <Block15>
    1a92:	e8 d9 f7 ff ff       	call   1270 <Build_That_Square>
    1a97:	bf 07 00 00 00       	mov    edi,0x7
    1a9c:	ff 15 f6 24 00 00    	call   QWORD PTR [rip+0x24f6]        # 3f98 <glBegin@Base>
    1aa2:	48 8d 3d cf 26 00 00 	lea    rdi,[rip+0x26cf]        # 4178 <Block16>
    1aa9:	e8 c2 f7 ff ff       	call   1270 <Build_That_Square>
    1aae:	bf ff 00 00 00       	mov    edi,0xff
    1ab3:	f3 48 0f 2a df       	cvtsi2ss xmm3,rdi
    1ab8:	b8 ff 00 00 00       	mov    eax,0xff
    1abd:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1ac2:	f3 0f 5e c3          	divss  xmm0,xmm3
    1ac6:	b8 ff 00 00 00       	mov    eax,0xff
    1acb:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    1ad0:	f3 0f 5e cb          	divss  xmm1,xmm3
    1ad4:	b8 00 00 00 00       	mov    eax,0x0
    1ad9:	f3 48 0f 2a d0       	cvtsi2ss xmm2,rax
    1ade:	f3 0f 5e d3          	divss  xmm2,xmm3
    1ae2:	ff 15 08 25 00 00    	call   QWORD PTR [rip+0x2508]        # 3ff0 <glColor3f@Base>
    1ae8:	bf 07 00 00 00       	mov    edi,0x7
    1aed:	ff 15 a5 24 00 00    	call   QWORD PTR [rip+0x24a5]        # 3f98 <glBegin@Base>
    1af3:	48 8d 3d 5e 26 00 00 	lea    rdi,[rip+0x265e]        # 4158 <Block14>
    1afa:	e8 71 f7 ff ff       	call   1270 <Build_That_Square>
    1aff:	ff 15 c3 24 00 00    	call   QWORD PTR [rip+0x24c3]        # 3fc8 <glEnd@Base>
    1b05:	ff 15 c5 24 00 00    	call   QWORD PTR [rip+0x24c5]        # 3fd0 <glFlush@Base>
    1b0b:	8b 05 4f 25 00 00    	mov    eax,DWORD PTR [rip+0x254f]        # 4060 <moving_block_vel>
    1b11:	8b 3d 41 26 00 00    	mov    edi,DWORD PTR [rip+0x2641]        # 4158 <Block14>
    1b17:	83 ff 30             	cmp    edi,0x30
    1b1a:	7e 0a                	jle    1b26 <_switch_vel>
    1b1c:	81 ff 75 06 00 00    	cmp    edi,0x675
    1b22:	7d 02                	jge    1b26 <_switch_vel>
    1b24:	eb 11                	jmp    1b37 <_regular_adding>

0000000000001b26 <_switch_vel>:
    1b26:	8b 05 34 25 00 00    	mov    eax,DWORD PTR [rip+0x2534]        # 4060 <moving_block_vel>
    1b2c:	f7 d8                	neg    eax
    1b2e:	48 8d 3d 2b 25 00 00 	lea    rdi,[rip+0x252b]        # 4060 <moving_block_vel>
    1b35:	89 07                	mov    DWORD PTR [rdi],eax

0000000000001b37 <_regular_adding>:
    1b37:	8b 05 23 25 00 00    	mov    eax,DWORD PTR [rip+0x2523]        # 4060 <moving_block_vel>
    1b3d:	01 05 15 26 00 00    	add    DWORD PTR [rip+0x2615],eax        # 4158 <Block14>
    1b43:	48 8d 05 8a 27 00 00 	lea    rax,[rip+0x278a]        # 42d4 <global_degree>
    1b4a:	83 00 01             	add    DWORD PTR [rax],0x1
    1b4d:	48 8d 05 18 25 00 00 	lea    rax,[rip+0x2518]        # 406c <Player_Pos+0x4>
    1b54:	ff 08                	dec    DWORD PTR [rax]
    1b56:	e8 9f f8 ff ff       	call   13fa <check_object_interference>
    1b5b:	48 8d 3d 0a 25 00 00 	lea    rdi,[rip+0x250a]        # 406c <Player_Pos+0x4>
    1b62:	ff 07                	inc    DWORD PTR [rdi]
    1b64:	48 83 f8 01          	cmp    rax,0x1
    1b68:	74 1e                	je     1b88 <_reset_gravity>
    1b6a:	f3 0f 10 05 9e 24 00 	movss  xmm0,DWORD PTR [rip+0x249e]        # 4010 <gravity>
    1b71:	00 
    1b72:	f3 0f 10 0d 9a 24 00 	movss  xmm1,DWORD PTR [rip+0x249a]        # 4014 <gravity_const>
    1b79:	00 
    1b7a:	f3 0f 58 c1          	addss  xmm0,xmm1
    1b7e:	f3 0f 11 05 8a 24 00 	movss  DWORD PTR [rip+0x248a],xmm0        # 4010 <gravity>
    1b85:	00 
    1b86:	eb 14                	jmp    1b9c <_done_display_method>

0000000000001b88 <_reset_gravity>:
    1b88:	b8 00 00 00 00       	mov    eax,0x0
    1b8d:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1b92:	f3 0f 11 05 76 24 00 	movss  DWORD PTR [rip+0x2476],xmm0        # 4010 <gravity>
    1b99:	00 
    1b9a:	eb 00                	jmp    1b9c <_done_display_method>

0000000000001b9c <_done_display_method>:
    1b9c:	48 89 ec             	mov    rsp,rbp
    1b9f:	5d                   	pop    rbp
    1ba0:	c3                   	ret    

0000000000001ba1 <handleSpecialKeyRelease>:
    1ba1:	48 83 ef 64          	sub    rdi,0x64
    1ba5:	48 83 ff 00          	cmp    rdi,0x0
    1ba9:	0f 8c 8f 00 00 00    	jl     1c3e <_End>
    1baf:	48 83 ff 03          	cmp    rdi,0x3
    1bb3:	0f 8f 85 00 00 00    	jg     1c3e <_End>
    1bb9:	48 8d 05 78 24 00 00 	lea    rax,[rip+0x2478]        # 4038 <release_jump_table>
    1bc0:	ff 24 f8             	jmp    QWORD PTR [rax+rdi*8]

0000000000001bc3 <_Special_release_section1>:
    1bc3:	48 8d 05 bf 25 00 00 	lea    rax,[rip+0x25bf]        # 4189 <Player_Velocity_Bool>
    1bca:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1bcd:	eb 6f                	jmp    1c3e <_End>

0000000000001bcf <_Special_release_section2>:
    1bcf:	48 8d 05 b4 25 00 00 	lea    rax,[rip+0x25b4]        # 418a <Player_Velocity_Bool+0x1>
    1bd6:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1bd9:	eb 63                	jmp    1c3e <_End>

0000000000001bdb <_Special_release_section3>:
    1bdb:	48 8d 05 a9 25 00 00 	lea    rax,[rip+0x25a9]        # 418b <Player_Velocity_Bool+0x2>
    1be2:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1be5:	eb 57                	jmp    1c3e <_End>

0000000000001be7 <_Special_release_section4>:
    1be7:	48 8d 05 9e 25 00 00 	lea    rax,[rip+0x259e]        # 418c <Player_Velocity_Bool+0x3>
    1bee:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1bf1:	eb 4b                	jmp    1c3e <_End>
    1bf3:	c3                   	ret    

0000000000001bf4 <handleSpecialKeypress>:
    1bf4:	48 83 ef 64          	sub    rdi,0x64
    1bf8:	48 83 ff 00          	cmp    rdi,0x0
    1bfc:	7c 40                	jl     1c3e <_End>
    1bfe:	48 83 ff 03          	cmp    rdi,0x3
    1c02:	7f 3a                	jg     1c3e <_End>
    1c04:	48 8d 05 0d 24 00 00 	lea    rax,[rip+0x240d]        # 4018 <key_jump_table>
    1c0b:	ff 24 f8             	jmp    QWORD PTR [rax+rdi*8]

0000000000001c0e <_Special_key_section1>:
    1c0e:	48 8d 05 74 25 00 00 	lea    rax,[rip+0x2574]        # 4189 <Player_Velocity_Bool>
    1c15:	c6 00 01             	mov    BYTE PTR [rax],0x1
    1c18:	eb 24                	jmp    1c3e <_End>

0000000000001c1a <_Special_key_section2>:
    1c1a:	48 8d 05 69 25 00 00 	lea    rax,[rip+0x2569]        # 418a <Player_Velocity_Bool+0x1>
    1c21:	c6 00 01             	mov    BYTE PTR [rax],0x1
    1c24:	eb 18                	jmp    1c3e <_End>

0000000000001c26 <_Special_key_section3>:
    1c26:	48 8d 05 5e 25 00 00 	lea    rax,[rip+0x255e]        # 418b <Player_Velocity_Bool+0x2>
    1c2d:	c6 00 01             	mov    BYTE PTR [rax],0x1
    1c30:	eb 0c                	jmp    1c3e <_End>

0000000000001c32 <_Special_key_section4>:
    1c32:	48 8d 05 53 25 00 00 	lea    rax,[rip+0x2553]        # 418c <Player_Velocity_Bool+0x3>
    1c39:	c6 00 01             	mov    BYTE PTR [rax],0x1
    1c3c:	eb 00                	jmp    1c3e <_End>

0000000000001c3e <_End>:
    1c3e:	c3                   	ret    
    1c3f:	41 80 c1 04          	add    r9b,0x4

0000000000001c43 <keyboard>:
    1c43:	48 83 ff 1b          	cmp    rdi,0x1b
    1c47:	75 1d                	jne    1c66 <_keyboard_section_1>
    1c49:	48 8d 3d 7c 09 00 00 	lea    rdi,[rip+0x97c]        # 25cc <Exit_Msg>
    1c50:	be 73 00 00 00       	mov    esi,0x73
    1c55:	e8 9c f8 ff ff       	call   14f6 <printff>
    1c5a:	b8 3c 00 00 00       	mov    eax,0x3c
    1c5f:	bf 00 00 00 00       	mov    edi,0x0
    1c64:	0f 05                	syscall 

0000000000001c66 <_keyboard_section_1>:
    1c66:	49 89 d2             	mov    r10,rdx
    1c69:	48 89 f7             	mov    rdi,rsi
    1c6c:	be 64 00 00 00       	mov    esi,0x64
    1c71:	e8 80 f8 ff ff       	call   14f6 <printff>
    1c76:	6a 2c                	push   0x2c
    1c78:	b8 01 00 00 00       	mov    eax,0x1
    1c7d:	bf 01 00 00 00       	mov    edi,0x1
    1c82:	48 89 e6             	mov    rsi,rsp
    1c85:	ba 01 00 00 00       	mov    edx,0x1
    1c8a:	0f 05                	syscall 
    1c8c:	58                   	pop    rax
    1c8d:	4c 89 d7             	mov    rdi,r10
    1c90:	48 f7 df             	neg    rdi
    1c93:	48 81 c7 d9 03 00 00 	add    rdi,0x3d9
    1c9a:	be 64 00 00 00       	mov    esi,0x64
    1c9f:	e8 35 f8 ff ff       	call   14d9 <printlnf>
    1ca4:	c3                   	ret    

0000000000001ca5 <_keyboard_section_2>:
    1ca5:	c3                   	ret    

0000000000001ca6 <_Z8displaysv>:
    1ca6:	f3 0f 1e fa          	endbr64 
    1caa:	55                   	push   rbp
    1cab:	48 89 e5             	mov    rbp,rsp
    1cae:	bf 00 40 00 00       	mov    edi,0x4000
    1cb3:	e8 a0 f4 ff ff       	call   1158 <glClear@plt>
    1cb8:	66 0f ef d2          	pxor   xmm2,xmm2
    1cbc:	66 0f ef c9          	pxor   xmm1,xmm1
    1cc0:	8b 05 3a 09 00 00    	mov    eax,DWORD PTR [rip+0x93a]        # 2600 <Exit_Msg+0x34>
    1cc6:	66 0f 6e c0          	movd   xmm0,eax
    1cca:	e8 a9 f4 ff ff       	call   1178 <glColor3f@plt>
    1ccf:	bf 07 00 00 00       	mov    edi,0x7
    1cd4:	e8 77 f4 ff ff       	call   1150 <glBegin@plt>
    1cd9:	e8 8a f4 ff ff       	call   1168 <glEnd@plt>
    1cde:	e8 8d f4 ff ff       	call   1170 <glFlush@plt>
    1ce3:	90                   	nop
    1ce4:	5d                   	pop    rbp
    1ce5:	c3                   	ret    

0000000000001ce6 <_Z9keyboardshii>:
    1ce6:	f3 0f 1e fa          	endbr64 
    1cea:	55                   	push   rbp
    1ceb:	48 89 e5             	mov    rbp,rsp
    1cee:	48 83 ec 10          	sub    rsp,0x10
    1cf2:	89 f8                	mov    eax,edi
    1cf4:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1cf7:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
    1cfa:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
    1cfd:	48 8d 05 d8 08 00 00 	lea    rax,[rip+0x8d8]        # 25dc <Exit_Msg+0x10>
    1d04:	48 89 c6             	mov    rsi,rax
    1d07:	48 8d 05 b2 24 00 00 	lea    rax,[rip+0x24b2]        # 41c0 <_ZSt4cout@GLIBCXX_3.4>
    1d0e:	48 89 c7             	mov    rdi,rax
    1d11:	e8 7a f3 ff ff       	call   1090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1d16:	48 89 c2             	mov    rdx,rax
    1d19:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1d1c:	89 c6                	mov    esi,eax
    1d1e:	48 89 d7             	mov    rdi,rdx
    1d21:	e8 fa f3 ff ff       	call   1120 <_ZNSolsEi@plt>
    1d26:	48 8b 15 83 22 00 00 	mov    rdx,QWORD PTR [rip+0x2283]        # 3fb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1d2d:	48 89 d6             	mov    rsi,rdx
    1d30:	48 89 c7             	mov    rdi,rax
    1d33:	e8 78 f3 ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    1d38:	48 8d 05 a1 08 00 00 	lea    rax,[rip+0x8a1]        # 25e0 <Exit_Msg+0x14>
    1d3f:	48 89 c6             	mov    rsi,rax
    1d42:	48 8d 05 77 24 00 00 	lea    rax,[rip+0x2477]        # 41c0 <_ZSt4cout@GLIBCXX_3.4>
    1d49:	48 89 c7             	mov    rdi,rax
    1d4c:	e8 3f f3 ff ff       	call   1090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1d51:	48 89 c2             	mov    rdx,rax
    1d54:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1d57:	89 c6                	mov    esi,eax
    1d59:	48 89 d7             	mov    rdi,rdx
    1d5c:	e8 bf f3 ff ff       	call   1120 <_ZNSolsEi@plt>
    1d61:	48 8b 15 48 22 00 00 	mov    rdx,QWORD PTR [rip+0x2248]        # 3fb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1d68:	48 89 d6             	mov    rsi,rdx
    1d6b:	48 89 c7             	mov    rdi,rax
    1d6e:	e8 3d f3 ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    1d73:	90                   	nop
    1d74:	c9                   	leave  
    1d75:	c3                   	ret    

0000000000001d76 <_Z5timeri>:
    1d76:	f3 0f 1e fa          	endbr64 
    1d7a:	55                   	push   rbp
    1d7b:	48 89 e5             	mov    rbp,rsp
    1d7e:	48 83 ec 10          	sub    rsp,0x10
    1d82:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1d85:	e8 b6 f2 ff ff       	call   1040 <glutPostRedisplay@plt>
    1d8a:	ba 00 00 00 00       	mov    edx,0x0
    1d8f:	48 8d 05 e0 ff ff ff 	lea    rax,[rip+0xffffffffffffffe0]        # 1d76 <_Z5timeri>
    1d96:	48 89 c6             	mov    rsi,rax
    1d99:	bf 07 00 00 00       	mov    edi,0x7
    1d9e:	e8 6d f3 ff ff       	call   1110 <glutTimerFunc@plt>
    1da3:	90                   	nop
    1da4:	c9                   	leave  
    1da5:	c3                   	ret    

0000000000001da6 <main>:
    1da6:	f3 0f 1e fa          	endbr64 
    1daa:	55                   	push   rbp
    1dab:	48 89 e5             	mov    rbp,rsp
    1dae:	53                   	push   rbx
    1daf:	48 83 ec 38          	sub    rsp,0x38
    1db3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1dba:	00 00 
    1dbc:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1dc0:	31 c0                	xor    eax,eax
    1dc2:	c7 45 c0 01 00 00 00 	mov    DWORD PTR [rbp-0x40],0x1
    1dc9:	48 8d 05 14 08 00 00 	lea    rax,[rip+0x814]        # 25e4 <Exit_Msg+0x18>
    1dd0:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    1dd4:	c7 05 f6 24 00 00 00 	mov    DWORD PTR [rip+0x24f6],0x0        # 42d4 <global_degree>
    1ddb:	00 00 00 
    1dde:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
    1de2:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    1de6:	48 89 d6             	mov    rsi,rdx
    1de9:	48 89 c7             	mov    rdi,rax
    1dec:	e8 df f2 ff ff       	call   10d0 <glutInit@plt>
    1df1:	48 8d 05 6c 22 00 00 	lea    rax,[rip+0x226c]        # 4064 <Entities_count>
    1df8:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1dfc:	48 8d 45 c8          	lea    rax,[rbp-0x38]
    1e00:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e03:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1e07:	48 8d 05 7a 23 00 00 	lea    rax,[rip+0x237a]        # 4188 <lastPoint>
    1e0e:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1e12:	48 8d 45 c8          	lea    rax,[rbp-0x38]
    1e16:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1e19:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1e1d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1e21:	89 c2                	mov    edx,eax
    1e23:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    1e27:	89 c1                	mov    ecx,eax
    1e29:	89 d0                	mov    eax,edx
    1e2b:	29 c8                	sub    eax,ecx
    1e2d:	83 e8 04             	sub    eax,0x4
    1e30:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1e33:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    1e36:	8d 50 0f             	lea    edx,[rax+0xf]
    1e39:	85 c0                	test   eax,eax
    1e3b:	0f 48 c2             	cmovs  eax,edx
    1e3e:	c1 f8 04             	sar    eax,0x4
    1e41:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1e44:	83 6d c4 01          	sub    DWORD PTR [rbp-0x3c],0x1
    1e48:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    1e4b:	89 05 13 22 00 00    	mov    DWORD PTR [rip+0x2213],eax        # 4064 <Entities_count>
    1e51:	bf 00 00 00 00       	mov    edi,0x0
    1e56:	e8 f5 f1 ff ff       	call   1050 <glutInitDisplayMode@plt>
    1e5b:	bf c9 00 00 00       	mov    edi,0xc9
    1e60:	e8 cb f1 ff ff       	call   1030 <glutGet@plt>
    1e65:	89 c3                	mov    ebx,eax
    1e67:	bf c8 00 00 00       	mov    edi,0xc8
    1e6c:	e8 bf f1 ff ff       	call   1030 <glutGet@plt>
    1e71:	89 de                	mov    esi,ebx
    1e73:	89 c7                	mov    edi,eax
    1e75:	e8 86 f2 ff ff       	call   1100 <glutInitWindowSize@plt>
    1e7a:	48 8d 05 6e 07 00 00 	lea    rax,[rip+0x76e]        # 25ef <Exit_Msg+0x23>
    1e81:	48 89 c7             	mov    rdi,rax
    1e84:	e8 a7 f2 ff ff       	call   1130 <glutCreateWindow@plt>
    1e89:	48 8d 05 b7 f8 ff ff 	lea    rax,[rip+0xfffffffffffff8b7]        # 1747 <display>
    1e90:	48 89 c7             	mov    rdi,rax
    1e93:	e8 a8 f2 ff ff       	call   1140 <glutDisplayFunc@plt>
    1e98:	ba 00 00 00 00       	mov    edx,0x0
    1e9d:	48 8d 05 d2 fe ff ff 	lea    rax,[rip+0xfffffffffffffed2]        # 1d76 <_Z5timeri>
    1ea4:	48 89 c6             	mov    rsi,rax
    1ea7:	bf 00 00 00 00       	mov    edi,0x0
    1eac:	e8 5f f2 ff ff       	call   1110 <glutTimerFunc@plt>
    1eb1:	48 8d 05 8b fd ff ff 	lea    rax,[rip+0xfffffffffffffd8b]        # 1c43 <keyboard>
    1eb8:	48 89 c7             	mov    rdi,rax
    1ebb:	e8 b0 f1 ff ff       	call   1070 <glutKeyboardFunc@plt>
    1ec0:	48 8d 05 2d fd ff ff 	lea    rax,[rip+0xfffffffffffffd2d]        # 1bf4 <handleSpecialKeypress>
    1ec7:	48 89 c7             	mov    rdi,rax
    1eca:	e8 d1 f1 ff ff       	call   10a0 <glutSpecialFunc@plt>
    1ecf:	48 8d 05 cb fc ff ff 	lea    rax,[rip+0xfffffffffffffccb]        # 1ba1 <handleSpecialKeyRelease>
    1ed6:	48 89 c7             	mov    rdi,rax
    1ed9:	e8 a2 f1 ff ff       	call   1080 <glutSpecialUpFunc@plt>
    1ede:	e8 fd f1 ff ff       	call   10e0 <glutMainLoop@plt>
    1ee3:	b8 00 00 00 00       	mov    eax,0x0
    1ee8:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    1eec:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1ef3:	00 00 
    1ef5:	74 05                	je     1efc <main+0x156>
    1ef7:	e8 c4 f1 ff ff       	call   10c0 <__stack_chk_fail@plt>
    1efc:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    1f00:	c9                   	leave  
    1f01:	c3                   	ret    

0000000000001f02 <_Z41__static_initialization_and_destruction_0ii>:
    1f02:	f3 0f 1e fa          	endbr64 
    1f06:	55                   	push   rbp
    1f07:	48 89 e5             	mov    rbp,rsp
    1f0a:	48 83 ec 10          	sub    rsp,0x10
    1f0e:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1f11:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1f14:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    1f18:	75 3b                	jne    1f55 <_Z41__static_initialization_and_destruction_0ii+0x53>
    1f1a:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    1f21:	75 32                	jne    1f55 <_Z41__static_initialization_and_destruction_0ii+0x53>
    1f23:	48 8d 05 ae 23 00 00 	lea    rax,[rip+0x23ae]        # 42d8 <_ZStL8__ioinit>
    1f2a:	48 89 c7             	mov    rdi,rax
    1f2d:	e8 be f1 ff ff       	call   10f0 <_ZNSt8ios_base4InitC1Ev@plt>
    1f32:	48 8d 05 cf 20 00 00 	lea    rax,[rip+0x20cf]        # 4008 <__dso_handle>
    1f39:	48 89 c2             	mov    rdx,rax
    1f3c:	48 8d 05 95 23 00 00 	lea    rax,[rip+0x2395]        # 42d8 <_ZStL8__ioinit>
    1f43:	48 89 c6             	mov    rsi,rax
    1f46:	48 8b 05 ab 20 00 00 	mov    rax,QWORD PTR [rip+0x20ab]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1f4d:	48 89 c7             	mov    rdi,rax
    1f50:	e8 0b f1 ff ff       	call   1060 <__cxa_atexit@plt>
    1f55:	90                   	nop
    1f56:	c9                   	leave  
    1f57:	c3                   	ret    

0000000000001f58 <_GLOBAL__sub_I_global_degree>:
    1f58:	f3 0f 1e fa          	endbr64 
    1f5c:	55                   	push   rbp
    1f5d:	48 89 e5             	mov    rbp,rsp
    1f60:	be ff ff 00 00       	mov    esi,0xffff
    1f65:	bf 01 00 00 00       	mov    edi,0x1
    1f6a:	e8 93 ff ff ff       	call   1f02 <_Z41__static_initialization_and_destruction_0ii>
    1f6f:	5d                   	pop    rbp
    1f70:	c3                   	ret    

Disassembly of section .fini:

0000000000001f74 <_fini>:
    1f74:	f3 0f 1e fa          	endbr64 
    1f78:	48 83 ec 08          	sub    rsp,0x8
    1f7c:	48 83 c4 08          	add    rsp,0x8
    1f80:	c3                   	ret    
