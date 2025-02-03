
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
    1198:	48 8d 3d 97 09 00 00 	lea    rdi,[rip+0x997]        # 1b36 <main>
    119f:	ff 15 13 2e 00 00    	call   QWORD PTR [rip+0x2e13]        # 3fb8 <__libc_start_main@GLIBC_2.34>
    11a5:	f4                   	hlt    
    11a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    11ad:	00 00 00 

00000000000011b0 <deregister_tm_clones>:
    11b0:	48 8d 3d e9 2e 00 00 	lea    rdi,[rip+0x2ee9]        # 40a0 <__TMC_END__>
    11b7:	48 8d 05 e2 2e 00 00 	lea    rax,[rip+0x2ee2]        # 40a0 <__TMC_END__>
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
    11e0:	48 8d 3d b9 2e 00 00 	lea    rdi,[rip+0x2eb9]        # 40a0 <__TMC_END__>
    11e7:	48 8d 35 b2 2e 00 00 	lea    rsi,[rip+0x2eb2]        # 40a0 <__TMC_END__>
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
    1224:	80 3d a5 2f 00 00 00 	cmp    BYTE PTR [rip+0x2fa5],0x0        # 41d0 <completed.0>
    122b:	75 2b                	jne    1258 <__do_global_dtors_aux+0x38>
    122d:	55                   	push   rbp
    122e:	48 83 3d 72 2d 00 00 	cmp    QWORD PTR [rip+0x2d72],0x0        # 3fa8 <__cxa_finalize@GLIBC_2.2.5>
    1235:	00 
    1236:	48 89 e5             	mov    rbp,rsp
    1239:	74 0c                	je     1247 <__do_global_dtors_aux+0x27>
    123b:	48 8b 3d c6 2d 00 00 	mov    rdi,QWORD PTR [rip+0x2dc6]        # 4008 <__dso_handle>
    1242:	e8 19 ff ff ff       	call   1160 <__cxa_finalize@plt>
    1247:	e8 64 ff ff ff       	call   11b0 <deregister_tm_clones>
    124c:	c6 05 7d 2f 00 00 01 	mov    BYTE PTR [rip+0x2f7d],0x1        # 41d0 <completed.0>
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
    13f3:	c3                   	ret    

00000000000013f4 <check_object_interference>:
    13f4:	48 8d 35 65 2c 00 00 	lea    rsi,[rip+0x2c65]        # 4060 <Entities_count>
    13fb:	8b 36                	mov    esi,DWORD PTR [rsi]
    13fd:	c1 e6 04             	shl    esi,0x4
    1400:	48 8d 05 5d 2c 00 00 	lea    rax,[rip+0x2c5d]        # 4064 <Player_Pos>
    1407:	48 01 c6             	add    rsi,rax

000000000000140a <_Loop_for_checking_interference>:
    140a:	48 8d 15 53 2c 00 00 	lea    rdx,[rip+0x2c53]        # 4064 <Player_Pos>
    1411:	48 39 d6             	cmp    rsi,rdx
    1414:	74 58                	je     146e <_failed_collision_check>
    1416:	8b 3d 48 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c48]        # 4064 <Player_Pos>
    141c:	83 ef 08             	sub    edi,0x8
    141f:	8b 06                	mov    eax,DWORD PTR [rsi]
    1421:	03 46 08             	add    eax,DWORD PTR [rsi+0x8]
    1424:	39 c7                	cmp    edi,eax
    1426:	7f 3a                	jg     1462 <_next_loop_collision_check>
    1428:	8b 3d 36 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c36]        # 4064 <Player_Pos>
    142e:	83 c7 08             	add    edi,0x8
    1431:	8b 06                	mov    eax,DWORD PTR [rsi]
    1433:	2b 46 08             	sub    eax,DWORD PTR [rsi+0x8]
    1436:	39 c7                	cmp    edi,eax
    1438:	7c 28                	jl     1462 <_next_loop_collision_check>
    143a:	8b 3d 28 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c28]        # 4068 <Player_Pos+0x4>
    1440:	83 ef 08             	sub    edi,0x8
    1443:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    1446:	03 46 0c             	add    eax,DWORD PTR [rsi+0xc]
    1449:	39 c7                	cmp    edi,eax
    144b:	7f 15                	jg     1462 <_next_loop_collision_check>
    144d:	8b 3d 15 2c 00 00    	mov    edi,DWORD PTR [rip+0x2c15]        # 4068 <Player_Pos+0x4>
    1453:	83 c7 08             	add    edi,0x8
    1456:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    1459:	2b 46 0c             	sub    eax,DWORD PTR [rsi+0xc]
    145c:	39 c7                	cmp    edi,eax
    145e:	7c 02                	jl     1462 <_next_loop_collision_check>
    1460:	eb 06                	jmp    1468 <_successful_collision_check>

0000000000001462 <_next_loop_collision_check>:
    1462:	48 83 ee 10          	sub    rsi,0x10
    1466:	eb a2                	jmp    140a <_Loop_for_checking_interference>

0000000000001468 <_successful_collision_check>:
    1468:	b8 01 00 00 00       	mov    eax,0x1
    146d:	c3                   	ret    

000000000000146e <_failed_collision_check>:
    146e:	b8 00 00 00 00       	mov    eax,0x0
    1473:	c3                   	ret    

0000000000001474 <check_out_of_bounds>:
    1474:	ba 00 00 00 00       	mov    edx,0x0
    1479:	eb 00                	jmp    147b <_looping_for_entity>

000000000000147b <_looping_for_entity>:
    147b:	48 8d 07             	lea    rax,[rdi]
    147e:	be 80 07 00 00       	mov    esi,0x780
    1483:	48 2b 77 08          	sub    rsi,QWORD PTR [rdi+0x8]
    1487:	39 30                	cmp    DWORD PTR [rax],esi
    1489:	7c 04                	jl     148f <_Out_of_Bounds_X_Negative>

000000000000148b <_Out_of_Bounds_X_Positive>:
    148b:	89 30                	mov    DWORD PTR [rax],esi
    148d:	eb 0f                	jmp    149e <_Out_of_Bounds_X_Fail>

000000000000148f <_Out_of_Bounds_X_Negative>:
    148f:	be 00 00 00 00       	mov    esi,0x0
    1494:	48 03 77 08          	add    rsi,QWORD PTR [rdi+0x8]
    1498:	39 30                	cmp    DWORD PTR [rax],esi
    149a:	7f 02                	jg     149e <_Out_of_Bounds_X_Fail>
    149c:	89 30                	mov    DWORD PTR [rax],esi

000000000000149e <_Out_of_Bounds_X_Fail>:
    149e:	48 8d 47 04          	lea    rax,[rdi+0x4]
    14a2:	be 38 04 00 00       	mov    esi,0x438
    14a7:	48 2b 77 0c          	sub    rsi,QWORD PTR [rdi+0xc]
    14ab:	39 30                	cmp    DWORD PTR [rax],esi
    14ad:	7c 04                	jl     14b3 <_Out_of_Bounds_Y_Negative>

00000000000014af <_Out_of_Bounds_Y_Positive>:
    14af:	89 30                	mov    DWORD PTR [rax],esi
    14b1:	eb 0f                	jmp    14c2 <_Out_of_Bounds_Y_Fail>

00000000000014b3 <_Out_of_Bounds_Y_Negative>:
    14b3:	be 00 00 00 00       	mov    esi,0x0
    14b8:	48 03 77 0c          	add    rsi,QWORD PTR [rdi+0xc]
    14bc:	39 30                	cmp    DWORD PTR [rax],esi
    14be:	7f 02                	jg     14c2 <_Out_of_Bounds_Y_Fail>
    14c0:	89 30                	mov    DWORD PTR [rax],esi

00000000000014c2 <_Out_of_Bounds_Y_Fail>:
    14c2:	83 fa 00             	cmp    edx,0x0
    14c5:	0f 84 f0 04 00 00    	je     19bb <_End>
    14cb:	ff ca                	dec    edx
    14cd:	48 83 c7 18          	add    rdi,0x18
    14d1:	eb a8                	jmp    147b <_looping_for_entity>

00000000000014d3 <printlnf>:
    14d3:	e8 18 00 00 00       	call   14f0 <printff>
    14d8:	6a 0a                	push   0xa
    14da:	b8 01 00 00 00       	mov    eax,0x1
    14df:	bf 01 00 00 00       	mov    edi,0x1
    14e4:	48 89 e6             	mov    rsi,rsp
    14e7:	ba 01 00 00 00       	mov    edx,0x1
    14ec:	0f 05                	syscall 
    14ee:	58                   	pop    rax
    14ef:	c3                   	ret    

00000000000014f0 <printff>:
    14f0:	55                   	push   rbp
    14f1:	48 89 e5             	mov    rbp,rsp
    14f4:	48 89 f8             	mov    rax,rdi
    14f7:	48 89 f7             	mov    rdi,rsi
    14fa:	48 83 ff 73          	cmp    rdi,0x73
    14fe:	74 7b                	je     157b <_print_word>
    1500:	be 00 00 00 00       	mov    esi,0x0
    1505:	48 83 ff 64          	cmp    rdi,0x64
    1509:	0f 84 ac 00 00 00    	je     15bb <_printNum>
    150f:	48 83 ff 75          	cmp    rdi,0x75
    1513:	0f 84 9b 00 00 00    	je     15b4 <_printU>
    1519:	48 83 ff 70          	cmp    rdi,0x70
    151d:	0f 84 15 01 00 00    	je     1638 <_printAddy>
    1523:	48 83 ff 66          	cmp    rdi,0x66
    1527:	74 00                	je     1529 <_printing_float>

0000000000001529 <_printing_float>:
    1529:	f3 48 0f 2c f8       	cvttss2si rdi,xmm0
    152e:	be 64 00 00 00       	mov    esi,0x64
    1533:	e8 b8 ff ff ff       	call   14f0 <printff>
    1538:	6a 2e                	push   0x2e
    153a:	b8 01 00 00 00       	mov    eax,0x1
    153f:	bf 01 00 00 00       	mov    edi,0x1
    1544:	48 89 e6             	mov    rsi,rsp
    1547:	ba 01 00 00 00       	mov    edx,0x1
    154c:	0f 05                	syscall 
    154e:	58                   	pop    rax
    154f:	66 0f 3a 0a c8 01    	roundss xmm1,xmm0,0x1
    1555:	f3 0f 5c c1          	subss  xmm0,xmm1
    1559:	b8 40 42 0f 00       	mov    eax,0xf4240
    155e:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    1563:	f3 0f 59 c1          	mulss  xmm0,xmm1
    1567:	66 48 0f 7e c7       	movq   rdi,xmm0
    156c:	be 64 00 00 00       	mov    esi,0x64
    1571:	e8 7a ff ff ff       	call   14f0 <printff>
    1576:	e9 36 01 00 00       	jmp    16b1 <_end>

000000000000157b <_print_word>:
    157b:	50                   	push   rax
    157c:	48 89 c0             	mov    rax,rax
    157f:	48 83 ec 04          	sub    rsp,0x4
    1583:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

000000000000158a <..@7._reading>:
    158a:	80 38 00             	cmp    BYTE PTR [rax],0x0
    158d:	74 08                	je     1597 <..@7._print>
    158f:	48 ff c0             	inc    rax
    1592:	ff 04 24             	inc    DWORD PTR [rsp]
    1595:	eb f3                	jmp    158a <..@7._reading>

0000000000001597 <..@7._print>:
    1597:	b8 01 00 00 00       	mov    eax,0x1
    159c:	bf 01 00 00 00       	mov    edi,0x1
    15a1:	48 8b 74 24 04       	mov    rsi,QWORD PTR [rsp+0x4]
    15a6:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    15a9:	48 83 c4 0c          	add    rsp,0xc
    15ad:	0f 05                	syscall 
    15af:	e9 fd 00 00 00       	jmp    16b1 <_end>

00000000000015b4 <_printU>:
    15b4:	be 2b 00 00 00       	mov    esi,0x2b
    15b9:	eb 00                	jmp    15bb <_printNum>

00000000000015bb <_printNum>:
    15bb:	48 83 f8 00          	cmp    rax,0x0
    15bf:	7d 0e                	jge    15cf <_start_process>
    15c1:	48 83 fe 2b          	cmp    rsi,0x2b
    15c5:	74 08                	je     15cf <_start_process>
    15c7:	be 2d 00 00 00       	mov    esi,0x2d
    15cc:	48 f7 d8             	neg    rax

00000000000015cf <_start_process>:
    15cf:	48 ff cc             	dec    rsp
    15d2:	c6 04 24 00          	mov    BYTE PTR [rsp],0x0

00000000000015d6 <_diving>:
    15d6:	48 31 d2             	xor    rdx,rdx
    15d9:	bf 0a 00 00 00       	mov    edi,0xa
    15de:	48 f7 f7             	div    rdi
    15e1:	48 83 c2 30          	add    rdx,0x30
    15e5:	48 ff cc             	dec    rsp
    15e8:	88 14 24             	mov    BYTE PTR [rsp],dl
    15eb:	48 83 f8 00          	cmp    rax,0x0
    15ef:	75 e5                	jne    15d6 <_diving>
    15f1:	48 83 fe 2d          	cmp    rsi,0x2d
    15f5:	75 07                	jne    15fe <_start_printing_process>
    15f7:	48 ff cc             	dec    rsp
    15fa:	c6 04 24 2d          	mov    BYTE PTR [rsp],0x2d

00000000000015fe <_start_printing_process>:
    15fe:	48 8d 34 24          	lea    rsi,[rsp]
    1602:	56                   	push   rsi
    1603:	48 89 f0             	mov    rax,rsi
    1606:	48 83 ec 04          	sub    rsp,0x4
    160a:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

0000000000001611 <..@8._reading>:
    1611:	80 38 00             	cmp    BYTE PTR [rax],0x0
    1614:	74 08                	je     161e <..@8._print>
    1616:	48 ff c0             	inc    rax
    1619:	ff 04 24             	inc    DWORD PTR [rsp]
    161c:	eb f3                	jmp    1611 <..@8._reading>

000000000000161e <..@8._print>:
    161e:	b8 01 00 00 00       	mov    eax,0x1
    1623:	bf 01 00 00 00       	mov    edi,0x1
    1628:	48 8b 74 24 04       	mov    rsi,QWORD PTR [rsp+0x4]
    162d:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    1630:	48 83 c4 0c          	add    rsp,0xc
    1634:	0f 05                	syscall 
    1636:	eb 79                	jmp    16b1 <_end>

0000000000001638 <_printAddy>:
    1638:	be 10 00 00 00       	mov    esi,0x10
    163d:	48 ff cc             	dec    rsp
    1640:	c6 04 24 00          	mov    BYTE PTR [rsp],0x0

0000000000001644 <_divide_loop>:
    1644:	48 31 d2             	xor    rdx,rdx
    1647:	bf 10 00 00 00       	mov    edi,0x10
    164c:	48 f7 f7             	div    rdi
    164f:	88 55 ff             	mov    BYTE PTR [rbp-0x1],dl
    1652:	48 8d 15 ad 09 00 00 	lea    rdx,[rip+0x9ad]        # 2006 <sixteen_bit_address>
    1659:	02 55 ff             	add    dl,BYTE PTR [rbp-0x1]
    165c:	48 8b 12             	mov    rdx,QWORD PTR [rdx]
    165f:	48 ff cc             	dec    rsp
    1662:	88 14 24             	mov    BYTE PTR [rsp],dl
    1665:	48 ff ce             	dec    rsi
    1668:	48 85 f6             	test   rsi,rsi
    166b:	75 d7                	jne    1644 <_divide_loop>
    166d:	48 83 ec 02          	sub    rsp,0x2
    1671:	66 c7 04 24 30 78    	mov    WORD PTR [rsp],0x7830
    1677:	48 8d 34 24          	lea    rsi,[rsp]
    167b:	56                   	push   rsi
    167c:	48 89 f0             	mov    rax,rsi
    167f:	48 83 ec 04          	sub    rsp,0x4
    1683:	c7 04 24 00 00 00 00 	mov    DWORD PTR [rsp],0x0

000000000000168a <..@9._reading>:
    168a:	80 38 00             	cmp    BYTE PTR [rax],0x0
    168d:	74 08                	je     1697 <..@9._print>
    168f:	48 ff c0             	inc    rax
    1692:	ff 04 24             	inc    DWORD PTR [rsp]
    1695:	eb f3                	jmp    168a <..@9._reading>

0000000000001697 <..@9._print>:
    1697:	b8 01 00 00 00       	mov    eax,0x1
    169c:	bf 01 00 00 00       	mov    edi,0x1
    16a1:	48 8b 74 24 04       	mov    rsi,QWORD PTR [rsp+0x4]
    16a6:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    16a9:	48 83 c4 0c          	add    rsp,0xc
    16ad:	0f 05                	syscall 
    16af:	eb 00                	jmp    16b1 <_end>

00000000000016b1 <_end>:
    16b1:	48 89 ec             	mov    rsp,rbp
    16b4:	5d                   	pop    rbp
    16b5:	c3                   	ret    

00000000000016b6 <cos_a>:
    16b6:	48 83 c7 5a          	add    rdi,0x5a
    16ba:	e8 01 00 00 00       	call   16c0 <sin_a>
    16bf:	c3                   	ret    

00000000000016c0 <sin_a>:
    16c0:	48 31 d2             	xor    rdx,rdx
    16c3:	48 89 f8             	mov    rax,rdi
    16c6:	bf 68 01 00 00       	mov    edi,0x168
    16cb:	48 f7 f7             	div    rdi
    16ce:	48 6b c2 04          	imul   rax,rdx,0x4
    16d2:	48 8d 3d 3d 09 00 00 	lea    rdi,[rip+0x93d]        # 2016 <sin_list>
    16d9:	48 01 f8             	add    rax,rdi
    16dc:	48 8b 00             	mov    rax,QWORD PTR [rax]
    16df:	50                   	push   rax
    16e0:	f3 0f 10 04 24       	movss  xmm0,DWORD PTR [rsp]
    16e5:	5f                   	pop    rdi
    16e6:	c3                   	ret    

00000000000016e7 <display>:
    16e7:	55                   	push   rbp
    16e8:	48 89 e5             	mov    rbp,rsp
    16eb:	bf 00 40 00 00       	mov    edi,0x4000
    16f0:	ff 15 aa 28 00 00    	call   QWORD PTR [rip+0x28aa]        # 3fa0 <glClear@Base>
    16f6:	b8 01 00 00 00       	mov    eax,0x1
    16fb:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1700:	b8 00 00 00 00       	mov    eax,0x0
    1705:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    170a:	f3 0f 10 d1          	movss  xmm2,xmm1
    170e:	ff 15 dc 28 00 00    	call   QWORD PTR [rip+0x28dc]        # 3ff0 <glColor3f@Base>
    1714:	bf 07 00 00 00       	mov    edi,0x7
    1719:	ff 15 79 28 00 00    	call   QWORD PTR [rip+0x2879]        # 3f98 <glBegin@Base>
    171f:	45 31 d2             	xor    r10d,r10d
    1722:	45 31 c9             	xor    r9d,r9d
    1725:	48 8d 15 d8 08 00 00 	lea    rdx,[rip+0x8d8]        # 2004 <Player_Velocity>
    172c:	48 8d 05 62 29 00 00 	lea    rax,[rip+0x2962]        # 4095 <Player_Velocity_Bool>
    1733:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    1737:	48 01 c2             	add    rdx,rax
    173a:	44 2a 12             	sub    r10b,BYTE PTR [rdx]
    173d:	48 29 c2             	sub    rdx,rax
    1740:	48 8d 05 4f 29 00 00 	lea    rax,[rip+0x294f]        # 4096 <Player_Velocity_Bool+0x1>
    1747:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    174b:	48 01 c2             	add    rdx,rax
    174e:	48 83 f8 01          	cmp    rax,0x1
    1752:	75 26                	jne    177a <_skip_jumping>
    1754:	41 83 c1 0c          	add    r9d,0xc
    1758:	48 8d 3d 09 29 00 00 	lea    rdi,[rip+0x2909]        # 4068 <Player_Pos+0x4>
    175f:	ff 0f                	dec    DWORD PTR [rdi]
    1761:	e8 8e fc ff ff       	call   13f4 <check_object_interference>
    1766:	48 8d 3d fb 28 00 00 	lea    rdi,[rip+0x28fb]        # 4068 <Player_Pos+0x4>
    176d:	ff 07                	inc    DWORD PTR [rdi]
    176f:	48 83 f8 00          	cmp    rax,0x0
    1773:	74 02                	je     1777 <_subtract_normally_verticle_velocity>
    1775:	eb 03                	jmp    177a <_skip_jumping>

0000000000001777 <_subtract_normally_verticle_velocity>:
    1777:	41 b1 00             	mov    r9b,0x0

000000000000177a <_skip_jumping>:
    177a:	48 8d 15 83 08 00 00 	lea    rdx,[rip+0x883]        # 2004 <Player_Velocity>
    1781:	48 8d 05 0f 29 00 00 	lea    rax,[rip+0x290f]        # 4097 <Player_Velocity_Bool+0x2>
    1788:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    178c:	48 01 c2             	add    rdx,rax
    178f:	44 02 12             	add    r10b,BYTE PTR [rdx]
    1792:	48 29 c2             	sub    rdx,rax
    1795:	48 8d 05 fc 28 00 00 	lea    rax,[rip+0x28fc]        # 4098 <Player_Velocity_Bool+0x3>
    179c:	48 0f b6 00          	movzx  rax,BYTE PTR [rax]
    17a0:	48 01 c2             	add    rdx,rax
    17a3:	44 2a 0a             	sub    r9b,BYTE PTR [rdx]
    17a6:	48 29 c2             	sub    rdx,rax
    17a9:	48 8d 05 ac 28 00 00 	lea    rax,[rip+0x28ac]        # 405c <player_inst_vel>
    17b0:	66 45 0f be d2       	movsx  r10w,r10b
    17b5:	66 44 01 10          	add    WORD PTR [rax],r10w
    17b9:	48 8d 05 9e 28 00 00 	lea    rax,[rip+0x289e]        # 405e <player_inst_vel+0x2>
    17c0:	f3 0f 10 05 48 28 00 	movss  xmm0,DWORD PTR [rip+0x2848]        # 4010 <gravity>
    17c7:	00 
    17c8:	f3 0f 2c f8          	cvttss2si edi,xmm0
    17cc:	66 45 0f be c9       	movsx  r9w,r9b
    17d1:	41 29 f9             	sub    r9d,edi
    17d4:	66 44 01 08          	add    WORD PTR [rax],r9w
    17d8:	66 44 0f be 0d 7d 28 	movsx  r9w,BYTE PTR [rip+0x287d]        # 405e <player_inst_vel+0x2>
    17df:	00 00 
    17e1:	66 41 b8 01 00       	mov    r8w,0x1
    17e6:	66 41 83 f9 00       	cmp    r9w,0x0
    17eb:	7d 05                	jge    17f2 <_finished_first_y_check>
    17ed:	66 41 b8 ff ff       	mov    r8w,0xffff

00000000000017f2 <_finished_first_y_check>:
    17f2:	45 0f bf e0          	movsx  r12d,r8w

00000000000017f6 <_check_y_interference>:
    17f6:	66 41 83 f9 00       	cmp    r9w,0x0
    17fb:	74 4f                	je     184c <_done_checking_y_interference>
    17fd:	44 01 25 64 28 00 00 	add    DWORD PTR [rip+0x2864],r12d        # 4068 <Player_Pos+0x4>
    1804:	e8 eb fb ff ff       	call   13f4 <check_object_interference>
    1809:	48 83 f8 01          	cmp    rax,0x1
    180d:	74 06                	je     1815 <_failed_check>
    180f:	66 45 29 c1          	sub    r9w,r8w
    1813:	eb e1                	jmp    17f6 <_check_y_interference>

0000000000001815 <_failed_check>:
    1815:	44 29 25 4c 28 00 00 	sub    DWORD PTR [rip+0x284c],r12d        # 4068 <Player_Pos+0x4>
    181c:	b8 00 00 00 00       	mov    eax,0x0
    1821:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    1826:	f3 0f 11 05 e2 27 00 	movss  DWORD PTR [rip+0x27e2],xmm0        # 4010 <gravity>
    182d:	00 
    182e:	f3 0f 10 05 da 27 00 	movss  xmm0,DWORD PTR [rip+0x27da]        # 4010 <gravity>
    1835:	00 
    1836:	be 66 00 00 00       	mov    esi,0x66
    183b:	e8 93 fc ff ff       	call   14d3 <printlnf>
    1840:	48 8d 05 17 28 00 00 	lea    rax,[rip+0x2817]        # 405e <player_inst_vel+0x2>
    1847:	66 c7 00 00 00       	mov    WORD PTR [rax],0x0

000000000000184c <_done_checking_y_interference>:
    184c:	48 8d 05 09 28 00 00 	lea    rax,[rip+0x2809]        # 405c <player_inst_vel>
    1853:	66 8b 00             	mov    ax,WORD PTR [rax]
    1856:	48 8d 3d 07 28 00 00 	lea    rdi,[rip+0x2807]        # 4064 <Player_Pos>
    185d:	66 01 07             	add    WORD PTR [rdi],ax
    1860:	48 8d 05 f5 27 00 00 	lea    rax,[rip+0x27f5]        # 405c <player_inst_vel>
    1867:	66 c7 00 00 00       	mov    WORD PTR [rax],0x0
    186c:	48 8d 3d f1 27 00 00 	lea    rdi,[rip+0x27f1]        # 4064 <Player_Pos>
    1873:	e8 fc fb ff ff       	call   1474 <check_out_of_bounds>
    1878:	48 8d 3d e5 27 00 00 	lea    rdi,[rip+0x27e5]        # 4064 <Player_Pos>
    187f:	e8 ec f9 ff ff       	call   1270 <Build_That_Square>
    1884:	ff 15 3e 27 00 00    	call   QWORD PTR [rip+0x273e]        # 3fc8 <glEnd@Base>
    188a:	bf ff 00 00 00       	mov    edi,0xff
    188f:	f3 48 0f 2a df       	cvtsi2ss xmm3,rdi
    1894:	b8 6c 00 00 00       	mov    eax,0x6c
    1899:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
    189e:	f3 0f 5e c3          	divss  xmm0,xmm3
    18a2:	b8 20 00 00 00       	mov    eax,0x20
    18a7:	f3 48 0f 2a c8       	cvtsi2ss xmm1,rax
    18ac:	f3 0f 5e cb          	divss  xmm1,xmm3
    18b0:	b8 c4 00 00 00       	mov    eax,0xc4
    18b5:	f3 48 0f 2a d0       	cvtsi2ss xmm2,rax
    18ba:	f3 0f 5e d3          	divss  xmm2,xmm3
    18be:	ff 15 2c 27 00 00    	call   QWORD PTR [rip+0x272c]        # 3ff0 <glColor3f@Base>
    18c4:	bf 07 00 00 00       	mov    edi,0x7
    18c9:	ff 15 c9 26 00 00    	call   QWORD PTR [rip+0x26c9]        # 3f98 <glBegin@Base>
    18cf:	48 8d 3d 9e 27 00 00 	lea    rdi,[rip+0x279e]        # 4074 <Block>
    18d6:	e8 95 f9 ff ff       	call   1270 <Build_That_Square>
    18db:	48 8d 3d a2 27 00 00 	lea    rdi,[rip+0x27a2]        # 4084 <Block1>
    18e2:	e8 89 f9 ff ff       	call   1270 <Build_That_Square>
    18e7:	ff 15 db 26 00 00    	call   QWORD PTR [rip+0x26db]        # 3fc8 <glEnd@Base>
    18ed:	ff 15 dd 26 00 00    	call   QWORD PTR [rip+0x26dd]        # 3fd0 <glFlush@Base>
    18f3:	48 8d 05 da 28 00 00 	lea    rax,[rip+0x28da]        # 41d4 <global_degree>
    18fa:	83 00 01             	add    DWORD PTR [rax],0x1
    18fd:	f3 0f 10 05 0b 27 00 	movss  xmm0,DWORD PTR [rip+0x270b]        # 4010 <gravity>
    1904:	00 
    1905:	f3 0f 10 0d 07 27 00 	movss  xmm1,DWORD PTR [rip+0x2707]        # 4014 <gravity_const>
    190c:	00 
    190d:	f3 0f 58 c1          	addss  xmm0,xmm1
    1911:	f3 0f 11 05 f7 26 00 	movss  DWORD PTR [rip+0x26f7],xmm0        # 4010 <gravity>
    1918:	00 
    1919:	48 89 ec             	mov    rsp,rbp
    191c:	5d                   	pop    rbp
    191d:	c3                   	ret    

000000000000191e <handleSpecialKeyRelease>:
    191e:	48 83 ef 64          	sub    rdi,0x64
    1922:	48 83 ff 00          	cmp    rdi,0x0
    1926:	0f 8c 8f 00 00 00    	jl     19bb <_End>
    192c:	48 83 ff 03          	cmp    rdi,0x3
    1930:	0f 8f 85 00 00 00    	jg     19bb <_End>
    1936:	48 8d 05 fb 26 00 00 	lea    rax,[rip+0x26fb]        # 4038 <release_jump_table>
    193d:	ff 24 f8             	jmp    QWORD PTR [rax+rdi*8]

0000000000001940 <_Special_release_section1>:
    1940:	48 8d 05 4e 27 00 00 	lea    rax,[rip+0x274e]        # 4095 <Player_Velocity_Bool>
    1947:	c6 00 00             	mov    BYTE PTR [rax],0x0
    194a:	eb 6f                	jmp    19bb <_End>

000000000000194c <_Special_release_section2>:
    194c:	48 8d 05 43 27 00 00 	lea    rax,[rip+0x2743]        # 4096 <Player_Velocity_Bool+0x1>
    1953:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1956:	eb 63                	jmp    19bb <_End>

0000000000001958 <_Special_release_section3>:
    1958:	48 8d 05 38 27 00 00 	lea    rax,[rip+0x2738]        # 4097 <Player_Velocity_Bool+0x2>
    195f:	c6 00 00             	mov    BYTE PTR [rax],0x0
    1962:	eb 57                	jmp    19bb <_End>

0000000000001964 <_Special_release_section4>:
    1964:	48 8d 05 2d 27 00 00 	lea    rax,[rip+0x272d]        # 4098 <Player_Velocity_Bool+0x3>
    196b:	c6 00 00             	mov    BYTE PTR [rax],0x0
    196e:	eb 4b                	jmp    19bb <_End>
    1970:	c3                   	ret    

0000000000001971 <handleSpecialKeypress>:
    1971:	48 83 ef 64          	sub    rdi,0x64
    1975:	48 83 ff 00          	cmp    rdi,0x0
    1979:	7c 40                	jl     19bb <_End>
    197b:	48 83 ff 03          	cmp    rdi,0x3
    197f:	7f 3a                	jg     19bb <_End>
    1981:	48 8d 05 90 26 00 00 	lea    rax,[rip+0x2690]        # 4018 <key_jump_table>
    1988:	ff 24 f8             	jmp    QWORD PTR [rax+rdi*8]

000000000000198b <_Special_key_section1>:
    198b:	48 8d 05 03 27 00 00 	lea    rax,[rip+0x2703]        # 4095 <Player_Velocity_Bool>
    1992:	c6 00 01             	mov    BYTE PTR [rax],0x1
    1995:	eb 24                	jmp    19bb <_End>

0000000000001997 <_Special_key_section2>:
    1997:	48 8d 05 f8 26 00 00 	lea    rax,[rip+0x26f8]        # 4096 <Player_Velocity_Bool+0x1>
    199e:	c6 00 01             	mov    BYTE PTR [rax],0x1
    19a1:	eb 18                	jmp    19bb <_End>

00000000000019a3 <_Special_key_section3>:
    19a3:	48 8d 05 ed 26 00 00 	lea    rax,[rip+0x26ed]        # 4097 <Player_Velocity_Bool+0x2>
    19aa:	c6 00 01             	mov    BYTE PTR [rax],0x1
    19ad:	eb 0c                	jmp    19bb <_End>

00000000000019af <_Special_key_section4>:
    19af:	48 8d 05 e2 26 00 00 	lea    rax,[rip+0x26e2]        # 4098 <Player_Velocity_Bool+0x3>
    19b6:	c6 00 01             	mov    BYTE PTR [rax],0x1
    19b9:	eb 00                	jmp    19bb <_End>

00000000000019bb <_End>:
    19bb:	c3                   	ret    

00000000000019bc <keyboard>:
    19bc:	48 83 ff 1b          	cmp    rdi,0x1b
    19c0:	75 1d                	jne    19df <_keyboard_section_1>
    19c2:	48 8d 3d 03 0c 00 00 	lea    rdi,[rip+0xc03]        # 25cc <Exit_Msg>
    19c9:	be 73 00 00 00       	mov    esi,0x73
    19ce:	e8 1d fb ff ff       	call   14f0 <printff>
    19d3:	b8 3c 00 00 00       	mov    eax,0x3c
    19d8:	bf 00 00 00 00       	mov    edi,0x0
    19dd:	0f 05                	syscall 

00000000000019df <_keyboard_section_1>:
    19df:	48 83 ff 30          	cmp    rdi,0x30
    19e3:	75 50                	jne    1a35 <_keyboard_section_2>
    19e5:	48 63 3d 78 26 00 00 	movsxd rdi,DWORD PTR [rip+0x2678]        # 4064 <Player_Pos>
    19ec:	be 64 00 00 00       	mov    esi,0x64
    19f1:	e8 fa fa ff ff       	call   14f0 <printff>
    19f6:	6a 2c                	push   0x2c
    19f8:	b8 01 00 00 00       	mov    eax,0x1
    19fd:	bf 01 00 00 00       	mov    edi,0x1
    1a02:	48 89 e6             	mov    rsi,rsp
    1a05:	ba 01 00 00 00       	mov    edx,0x1
    1a0a:	0f 05                	syscall 
    1a0c:	58                   	pop    rax
    1a0d:	6a 20                	push   0x20
    1a0f:	b8 01 00 00 00       	mov    eax,0x1
    1a14:	bf 01 00 00 00       	mov    edi,0x1
    1a19:	48 89 e6             	mov    rsi,rsp
    1a1c:	ba 01 00 00 00       	mov    edx,0x1
    1a21:	0f 05                	syscall 
    1a23:	58                   	pop    rax
    1a24:	48 63 3d 3d 26 00 00 	movsxd rdi,DWORD PTR [rip+0x263d]        # 4068 <Player_Pos+0x4>
    1a2b:	be 64 00 00 00       	mov    esi,0x64
    1a30:	e8 9e fa ff ff       	call   14d3 <printlnf>

0000000000001a35 <_keyboard_section_2>:
    1a35:	c3                   	ret    

0000000000001a36 <_Z8displaysv>:
    1a36:	f3 0f 1e fa          	endbr64 
    1a3a:	55                   	push   rbp
    1a3b:	48 89 e5             	mov    rbp,rsp
    1a3e:	bf 00 40 00 00       	mov    edi,0x4000
    1a43:	e8 10 f7 ff ff       	call   1158 <glClear@plt>
    1a48:	66 0f ef d2          	pxor   xmm2,xmm2
    1a4c:	66 0f ef c9          	pxor   xmm1,xmm1
    1a50:	8b 05 aa 0b 00 00    	mov    eax,DWORD PTR [rip+0xbaa]        # 2600 <Exit_Msg+0x34>
    1a56:	66 0f 6e c0          	movd   xmm0,eax
    1a5a:	e8 19 f7 ff ff       	call   1178 <glColor3f@plt>
    1a5f:	bf 07 00 00 00       	mov    edi,0x7
    1a64:	e8 e7 f6 ff ff       	call   1150 <glBegin@plt>
    1a69:	e8 fa f6 ff ff       	call   1168 <glEnd@plt>
    1a6e:	e8 fd f6 ff ff       	call   1170 <glFlush@plt>
    1a73:	90                   	nop
    1a74:	5d                   	pop    rbp
    1a75:	c3                   	ret    

0000000000001a76 <_Z9keyboardshii>:
    1a76:	f3 0f 1e fa          	endbr64 
    1a7a:	55                   	push   rbp
    1a7b:	48 89 e5             	mov    rbp,rsp
    1a7e:	48 83 ec 10          	sub    rsp,0x10
    1a82:	89 f8                	mov    eax,edi
    1a84:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1a87:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
    1a8a:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
    1a8d:	48 8d 05 48 0b 00 00 	lea    rax,[rip+0xb48]        # 25dc <Exit_Msg+0x10>
    1a94:	48 89 c6             	mov    rsi,rax
    1a97:	48 8d 05 22 26 00 00 	lea    rax,[rip+0x2622]        # 40c0 <_ZSt4cout@GLIBCXX_3.4>
    1a9e:	48 89 c7             	mov    rdi,rax
    1aa1:	e8 ea f5 ff ff       	call   1090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1aa6:	48 89 c2             	mov    rdx,rax
    1aa9:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1aac:	89 c6                	mov    esi,eax
    1aae:	48 89 d7             	mov    rdi,rdx
    1ab1:	e8 6a f6 ff ff       	call   1120 <_ZNSolsEi@plt>
    1ab6:	48 8b 15 f3 24 00 00 	mov    rdx,QWORD PTR [rip+0x24f3]        # 3fb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1abd:	48 89 d6             	mov    rsi,rdx
    1ac0:	48 89 c7             	mov    rdi,rax
    1ac3:	e8 e8 f5 ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    1ac8:	48 8d 05 11 0b 00 00 	lea    rax,[rip+0xb11]        # 25e0 <Exit_Msg+0x14>
    1acf:	48 89 c6             	mov    rsi,rax
    1ad2:	48 8d 05 e7 25 00 00 	lea    rax,[rip+0x25e7]        # 40c0 <_ZSt4cout@GLIBCXX_3.4>
    1ad9:	48 89 c7             	mov    rdi,rax
    1adc:	e8 af f5 ff ff       	call   1090 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1ae1:	48 89 c2             	mov    rdx,rax
    1ae4:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1ae7:	89 c6                	mov    esi,eax
    1ae9:	48 89 d7             	mov    rdi,rdx
    1aec:	e8 2f f6 ff ff       	call   1120 <_ZNSolsEi@plt>
    1af1:	48 8b 15 b8 24 00 00 	mov    rdx,QWORD PTR [rip+0x24b8]        # 3fb0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1af8:	48 89 d6             	mov    rsi,rdx
    1afb:	48 89 c7             	mov    rdi,rax
    1afe:	e8 ad f5 ff ff       	call   10b0 <_ZNSolsEPFRSoS_E@plt>
    1b03:	90                   	nop
    1b04:	c9                   	leave  
    1b05:	c3                   	ret    

0000000000001b06 <_Z5timeri>:
    1b06:	f3 0f 1e fa          	endbr64 
    1b0a:	55                   	push   rbp
    1b0b:	48 89 e5             	mov    rbp,rsp
    1b0e:	48 83 ec 10          	sub    rsp,0x10
    1b12:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1b15:	e8 26 f5 ff ff       	call   1040 <glutPostRedisplay@plt>
    1b1a:	ba 00 00 00 00       	mov    edx,0x0
    1b1f:	48 8d 05 e0 ff ff ff 	lea    rax,[rip+0xffffffffffffffe0]        # 1b06 <_Z5timeri>
    1b26:	48 89 c6             	mov    rsi,rax
    1b29:	bf 07 00 00 00       	mov    edi,0x7
    1b2e:	e8 dd f5 ff ff       	call   1110 <glutTimerFunc@plt>
    1b33:	90                   	nop
    1b34:	c9                   	leave  
    1b35:	c3                   	ret    

0000000000001b36 <main>:
    1b36:	f3 0f 1e fa          	endbr64 
    1b3a:	55                   	push   rbp
    1b3b:	48 89 e5             	mov    rbp,rsp
    1b3e:	53                   	push   rbx
    1b3f:	48 83 ec 38          	sub    rsp,0x38
    1b43:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    1b4a:	00 00 
    1b4c:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1b50:	31 c0                	xor    eax,eax
    1b52:	c7 45 c0 01 00 00 00 	mov    DWORD PTR [rbp-0x40],0x1
    1b59:	48 8d 05 84 0a 00 00 	lea    rax,[rip+0xa84]        # 25e4 <Exit_Msg+0x18>
    1b60:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    1b64:	c7 05 66 26 00 00 00 	mov    DWORD PTR [rip+0x2666],0x0        # 41d4 <global_degree>
    1b6b:	00 00 00 
    1b6e:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
    1b72:	48 8d 45 c0          	lea    rax,[rbp-0x40]
    1b76:	48 89 d6             	mov    rsi,rdx
    1b79:	48 89 c7             	mov    rdi,rax
    1b7c:	e8 4f f5 ff ff       	call   10d0 <glutInit@plt>
    1b81:	48 8d 05 d8 24 00 00 	lea    rax,[rip+0x24d8]        # 4060 <Entities_count>
    1b88:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1b8c:	48 8d 45 c8          	lea    rax,[rbp-0x38]
    1b90:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1b93:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1b97:	48 8d 05 f6 24 00 00 	lea    rax,[rip+0x24f6]        # 4094 <lastPoint>
    1b9e:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
    1ba2:	48 8d 45 c8          	lea    rax,[rbp-0x38]
    1ba6:	48 8b 00             	mov    rax,QWORD PTR [rax]
    1ba9:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
    1bad:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
    1bb1:	89 c2                	mov    edx,eax
    1bb3:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
    1bb7:	89 c1                	mov    ecx,eax
    1bb9:	89 d0                	mov    eax,edx
    1bbb:	29 c8                	sub    eax,ecx
    1bbd:	83 e8 04             	sub    eax,0x4
    1bc0:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1bc3:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    1bc6:	8d 50 0f             	lea    edx,[rax+0xf]
    1bc9:	85 c0                	test   eax,eax
    1bcb:	0f 48 c2             	cmovs  eax,edx
    1bce:	c1 f8 04             	sar    eax,0x4
    1bd1:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
    1bd4:	83 6d c4 01          	sub    DWORD PTR [rbp-0x3c],0x1
    1bd8:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
    1bdb:	89 05 7f 24 00 00    	mov    DWORD PTR [rip+0x247f],eax        # 4060 <Entities_count>
    1be1:	bf 00 00 00 00       	mov    edi,0x0
    1be6:	e8 65 f4 ff ff       	call   1050 <glutInitDisplayMode@plt>
    1beb:	bf c9 00 00 00       	mov    edi,0xc9
    1bf0:	e8 3b f4 ff ff       	call   1030 <glutGet@plt>
    1bf5:	89 c3                	mov    ebx,eax
    1bf7:	bf c8 00 00 00       	mov    edi,0xc8
    1bfc:	e8 2f f4 ff ff       	call   1030 <glutGet@plt>
    1c01:	89 de                	mov    esi,ebx
    1c03:	89 c7                	mov    edi,eax
    1c05:	e8 f6 f4 ff ff       	call   1100 <glutInitWindowSize@plt>
    1c0a:	48 8d 05 de 09 00 00 	lea    rax,[rip+0x9de]        # 25ef <Exit_Msg+0x23>
    1c11:	48 89 c7             	mov    rdi,rax
    1c14:	e8 17 f5 ff ff       	call   1130 <glutCreateWindow@plt>
    1c19:	48 8d 05 c7 fa ff ff 	lea    rax,[rip+0xfffffffffffffac7]        # 16e7 <display>
    1c20:	48 89 c7             	mov    rdi,rax
    1c23:	e8 18 f5 ff ff       	call   1140 <glutDisplayFunc@plt>
    1c28:	ba 00 00 00 00       	mov    edx,0x0
    1c2d:	48 8d 05 d2 fe ff ff 	lea    rax,[rip+0xfffffffffffffed2]        # 1b06 <_Z5timeri>
    1c34:	48 89 c6             	mov    rsi,rax
    1c37:	bf 00 00 00 00       	mov    edi,0x0
    1c3c:	e8 cf f4 ff ff       	call   1110 <glutTimerFunc@plt>
    1c41:	48 8d 05 74 fd ff ff 	lea    rax,[rip+0xfffffffffffffd74]        # 19bc <keyboard>
    1c48:	48 89 c7             	mov    rdi,rax
    1c4b:	e8 20 f4 ff ff       	call   1070 <glutKeyboardFunc@plt>
    1c50:	48 8d 05 1a fd ff ff 	lea    rax,[rip+0xfffffffffffffd1a]        # 1971 <handleSpecialKeypress>
    1c57:	48 89 c7             	mov    rdi,rax
    1c5a:	e8 41 f4 ff ff       	call   10a0 <glutSpecialFunc@plt>
    1c5f:	48 8d 05 b8 fc ff ff 	lea    rax,[rip+0xfffffffffffffcb8]        # 191e <handleSpecialKeyRelease>
    1c66:	48 89 c7             	mov    rdi,rax
    1c69:	e8 12 f4 ff ff       	call   1080 <glutSpecialUpFunc@plt>
    1c6e:	e8 6d f4 ff ff       	call   10e0 <glutMainLoop@plt>
    1c73:	b8 00 00 00 00       	mov    eax,0x0
    1c78:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    1c7c:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    1c83:	00 00 
    1c85:	74 05                	je     1c8c <main+0x156>
    1c87:	e8 34 f4 ff ff       	call   10c0 <__stack_chk_fail@plt>
    1c8c:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    1c90:	c9                   	leave  
    1c91:	c3                   	ret    

0000000000001c92 <_Z41__static_initialization_and_destruction_0ii>:
    1c92:	f3 0f 1e fa          	endbr64 
    1c96:	55                   	push   rbp
    1c97:	48 89 e5             	mov    rbp,rsp
    1c9a:	48 83 ec 10          	sub    rsp,0x10
    1c9e:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1ca1:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1ca4:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    1ca8:	75 3b                	jne    1ce5 <_Z41__static_initialization_and_destruction_0ii+0x53>
    1caa:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    1cb1:	75 32                	jne    1ce5 <_Z41__static_initialization_and_destruction_0ii+0x53>
    1cb3:	48 8d 05 1e 25 00 00 	lea    rax,[rip+0x251e]        # 41d8 <_ZStL8__ioinit>
    1cba:	48 89 c7             	mov    rdi,rax
    1cbd:	e8 2e f4 ff ff       	call   10f0 <_ZNSt8ios_base4InitC1Ev@plt>
    1cc2:	48 8d 05 3f 23 00 00 	lea    rax,[rip+0x233f]        # 4008 <__dso_handle>
    1cc9:	48 89 c2             	mov    rdx,rax
    1ccc:	48 8d 05 05 25 00 00 	lea    rax,[rip+0x2505]        # 41d8 <_ZStL8__ioinit>
    1cd3:	48 89 c6             	mov    rsi,rax
    1cd6:	48 8b 05 1b 23 00 00 	mov    rax,QWORD PTR [rip+0x231b]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1cdd:	48 89 c7             	mov    rdi,rax
    1ce0:	e8 7b f3 ff ff       	call   1060 <__cxa_atexit@plt>
    1ce5:	90                   	nop
    1ce6:	c9                   	leave  
    1ce7:	c3                   	ret    

0000000000001ce8 <_GLOBAL__sub_I_global_degree>:
    1ce8:	f3 0f 1e fa          	endbr64 
    1cec:	55                   	push   rbp
    1ced:	48 89 e5             	mov    rbp,rsp
    1cf0:	be ff ff 00 00       	mov    esi,0xffff
    1cf5:	bf 01 00 00 00       	mov    edi,0x1
    1cfa:	e8 93 ff ff ff       	call   1c92 <_Z41__static_initialization_and_destruction_0ii>
    1cff:	5d                   	pop    rbp
    1d00:	c3                   	ret    

Disassembly of section .fini:

0000000000001d04 <_fini>:
    1d04:	f3 0f 1e fa          	endbr64 
    1d08:	48 83 ec 08          	sub    rsp,0x8
    1d0c:	48 83 c4 08          	add    rsp,0x8
    1d10:	c3                   	ret    
