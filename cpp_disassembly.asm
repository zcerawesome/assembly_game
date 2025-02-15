
./a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 c2 2e 00 00    	push   QWORD PTR [rip+0x2ec2]        # 3ee8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 c3 2e 00 00 	bnd jmp QWORD PTR [rip+0x2ec3]        # 3ef0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nop    DWORD PTR [rax]
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	push   0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	push   0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    105f:	90                   	nop
    1060:	f3 0f 1e fa          	endbr64 
    1064:	68 03 00 00 00       	push   0x3
    1069:	f2 e9 b1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    106f:	90                   	nop
    1070:	f3 0f 1e fa          	endbr64 
    1074:	68 04 00 00 00       	push   0x4
    1079:	f2 e9 a1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    107f:	90                   	nop
    1080:	f3 0f 1e fa          	endbr64 
    1084:	68 05 00 00 00       	push   0x5
    1089:	f2 e9 91 ff ff ff    	bnd jmp 1020 <_init+0x20>
    108f:	90                   	nop
    1090:	f3 0f 1e fa          	endbr64 
    1094:	68 06 00 00 00       	push   0x6
    1099:	f2 e9 81 ff ff ff    	bnd jmp 1020 <_init+0x20>
    109f:	90                   	nop
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	68 07 00 00 00       	push   0x7
    10a9:	f2 e9 71 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10af:	90                   	nop
    10b0:	f3 0f 1e fa          	endbr64 
    10b4:	68 08 00 00 00       	push   0x8
    10b9:	f2 e9 61 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10bf:	90                   	nop
    10c0:	f3 0f 1e fa          	endbr64 
    10c4:	68 09 00 00 00       	push   0x9
    10c9:	f2 e9 51 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10cf:	90                   	nop
    10d0:	f3 0f 1e fa          	endbr64 
    10d4:	68 0a 00 00 00       	push   0xa
    10d9:	f2 e9 41 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10df:	90                   	nop
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	68 0b 00 00 00       	push   0xb
    10e9:	f2 e9 31 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ef:	90                   	nop
    10f0:	f3 0f 1e fa          	endbr64 
    10f4:	68 0c 00 00 00       	push   0xc
    10f9:	f2 e9 21 ff ff ff    	bnd jmp 1020 <_init+0x20>
    10ff:	90                   	nop
    1100:	f3 0f 1e fa          	endbr64 
    1104:	68 0d 00 00 00       	push   0xd
    1109:	f2 e9 11 ff ff ff    	bnd jmp 1020 <_init+0x20>
    110f:	90                   	nop
    1110:	f3 0f 1e fa          	endbr64 
    1114:	68 0e 00 00 00       	push   0xe
    1119:	f2 e9 01 ff ff ff    	bnd jmp 1020 <_init+0x20>
    111f:	90                   	nop
    1120:	f3 0f 1e fa          	endbr64 
    1124:	68 0f 00 00 00       	push   0xf
    1129:	f2 e9 f1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    112f:	90                   	nop
    1130:	f3 0f 1e fa          	endbr64 
    1134:	68 10 00 00 00       	push   0x10
    1139:	f2 e9 e1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    113f:	90                   	nop
    1140:	f3 0f 1e fa          	endbr64 
    1144:	68 11 00 00 00       	push   0x11
    1149:	f2 e9 d1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    114f:	90                   	nop
    1150:	f3 0f 1e fa          	endbr64 
    1154:	68 12 00 00 00       	push   0x12
    1159:	f2 e9 c1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    115f:	90                   	nop
    1160:	f3 0f 1e fa          	endbr64 
    1164:	68 13 00 00 00       	push   0x13
    1169:	f2 e9 b1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    116f:	90                   	nop
    1170:	f3 0f 1e fa          	endbr64 
    1174:	68 14 00 00 00       	push   0x14
    1179:	f2 e9 a1 fe ff ff    	bnd jmp 1020 <_init+0x20>
    117f:	90                   	nop
    1180:	f3 0f 1e fa          	endbr64 
    1184:	68 15 00 00 00       	push   0x15
    1189:	f2 e9 91 fe ff ff    	bnd jmp 1020 <_init+0x20>
    118f:	90                   	nop
    1190:	f3 0f 1e fa          	endbr64 
    1194:	68 16 00 00 00       	push   0x16
    1199:	f2 e9 81 fe ff ff    	bnd jmp 1020 <_init+0x20>
    119f:	90                   	nop
    11a0:	f3 0f 1e fa          	endbr64 
    11a4:	68 17 00 00 00       	push   0x17
    11a9:	f2 e9 71 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11af:	90                   	nop
    11b0:	f3 0f 1e fa          	endbr64 
    11b4:	68 18 00 00 00       	push   0x18
    11b9:	f2 e9 61 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11bf:	90                   	nop
    11c0:	f3 0f 1e fa          	endbr64 
    11c4:	68 19 00 00 00       	push   0x19
    11c9:	f2 e9 51 fe ff ff    	bnd jmp 1020 <_init+0x20>
    11cf:	90                   	nop

Disassembly of section .plt.got:

00000000000011d0 <__cxa_finalize@plt>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	f2 ff 25 ed 2d 00 00 	bnd jmp QWORD PTR [rip+0x2ded]        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    11db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .plt.sec:

00000000000011e0 <glBegin@plt>:
    11e0:	f3 0f 1e fa          	endbr64 
    11e4:	f2 ff 25 0d 2d 00 00 	bnd jmp QWORD PTR [rip+0x2d0d]        # 3ef8 <glBegin@Base>
    11eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000011f0 <glClear@plt>:
    11f0:	f3 0f 1e fa          	endbr64 
    11f4:	f2 ff 25 05 2d 00 00 	bnd jmp QWORD PTR [rip+0x2d05]        # 3f00 <glClear@Base>
    11fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001200 <glutGet@plt>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	f2 ff 25 fd 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cfd]        # 3f08 <glutGet@Base>
    120b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001210 <glutPostRedisplay@plt>:
    1210:	f3 0f 1e fa          	endbr64 
    1214:	f2 ff 25 f5 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cf5]        # 3f10 <glutPostRedisplay@Base>
    121b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001220 <glutInitDisplayMode@plt>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	f2 ff 25 ed 2c 00 00 	bnd jmp QWORD PTR [rip+0x2ced]        # 3f18 <glutInitDisplayMode@Base>
    122b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001230 <_ZNSolsEf@plt>:
    1230:	f3 0f 1e fa          	endbr64 
    1234:	f2 ff 25 e5 2c 00 00 	bnd jmp QWORD PTR [rip+0x2ce5]        # 3f20 <_ZNSolsEf@GLIBCXX_3.4>
    123b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001240 <__cxa_atexit@plt>:
    1240:	f3 0f 1e fa          	endbr64 
    1244:	f2 ff 25 dd 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cdd]        # 3f28 <__cxa_atexit@GLIBC_2.2.5>
    124b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001250 <glutKeyboardFunc@plt>:
    1250:	f3 0f 1e fa          	endbr64 
    1254:	f2 ff 25 d5 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cd5]        # 3f30 <glutKeyboardFunc@Base>
    125b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001260 <glutSpecialUpFunc@plt>:
    1260:	f3 0f 1e fa          	endbr64 
    1264:	f2 ff 25 cd 2c 00 00 	bnd jmp QWORD PTR [rip+0x2ccd]        # 3f38 <glutSpecialUpFunc@Base>
    126b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001270 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
    1270:	f3 0f 1e fa          	endbr64 
    1274:	f2 ff 25 c5 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cc5]        # 3f40 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@GLIBCXX_3.4>
    127b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001280 <glutSpecialFunc@plt>:
    1280:	f3 0f 1e fa          	endbr64 
    1284:	f2 ff 25 bd 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cbd]        # 3f48 <glutSpecialFunc@Base>
    128b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001290 <_ZNSolsEPFRSoS_E@plt>:
    1290:	f3 0f 1e fa          	endbr64 
    1294:	f2 ff 25 b5 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cb5]        # 3f50 <_ZNSolsEPFRSoS_E@GLIBCXX_3.4>
    129b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012a0 <__stack_chk_fail@plt>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	f2 ff 25 ad 2c 00 00 	bnd jmp QWORD PTR [rip+0x2cad]        # 3f58 <__stack_chk_fail@GLIBC_2.4>
    12ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012b0 <glVertex2f@plt>:
    12b0:	f3 0f 1e fa          	endbr64 
    12b4:	f2 ff 25 a5 2c 00 00 	bnd jmp QWORD PTR [rip+0x2ca5]        # 3f60 <glVertex2f@Base>
    12bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012c0 <exit@plt>:
    12c0:	f3 0f 1e fa          	endbr64 
    12c4:	f2 ff 25 9d 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c9d]        # 3f68 <exit@GLIBC_2.2.5>
    12cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012d0 <glutInit@plt>:
    12d0:	f3 0f 1e fa          	endbr64 
    12d4:	f2 ff 25 95 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c95]        # 3f70 <glutInit@Base>
    12db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012e0 <glutMainLoop@plt>:
    12e0:	f3 0f 1e fa          	endbr64 
    12e4:	f2 ff 25 8d 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c8d]        # 3f78 <glutMainLoop@Base>
    12eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000012f0 <glEnd@plt>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	f2 ff 25 85 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c85]        # 3f80 <glEnd@Base>
    12fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001300 <glFlush@plt>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	f2 ff 25 7d 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c7d]        # 3f88 <glFlush@Base>
    130b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001310 <_ZNSt8ios_base4InitC1Ev@plt>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	f2 ff 25 75 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c75]        # 3f90 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    131b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001320 <glutInitWindowSize@plt>:
    1320:	f3 0f 1e fa          	endbr64 
    1324:	f2 ff 25 6d 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c6d]        # 3f98 <glutInitWindowSize@Base>
    132b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001330 <glutTimerFunc@plt>:
    1330:	f3 0f 1e fa          	endbr64 
    1334:	f2 ff 25 65 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c65]        # 3fa0 <glutTimerFunc@Base>
    133b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001340 <_ZNSolsEi@plt>:
    1340:	f3 0f 1e fa          	endbr64 
    1344:	f2 ff 25 5d 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c5d]        # 3fa8 <_ZNSolsEi@GLIBCXX_3.4>
    134b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001350 <glutCreateWindow@plt>:
    1350:	f3 0f 1e fa          	endbr64 
    1354:	f2 ff 25 55 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c55]        # 3fb0 <glutCreateWindow@Base>
    135b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001360 <glutDisplayFunc@plt>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	f2 ff 25 4d 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c4d]        # 3fb8 <glutDisplayFunc@Base>
    136b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001370 <glColor3f@plt>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	f2 ff 25 45 2c 00 00 	bnd jmp QWORD PTR [rip+0x2c45]        # 3fc0 <glColor3f@Base>
    137b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

Disassembly of section .text:

0000000000001380 <_start>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	31 ed                	xor    ebp,ebp
    1386:	49 89 d1             	mov    r9,rdx
    1389:	5e                   	pop    rsi
    138a:	48 89 e2             	mov    rdx,rsp
    138d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1391:	50                   	push   rax
    1392:	54                   	push   rsp
    1393:	45 31 c0             	xor    r8d,r8d
    1396:	31 c9                	xor    ecx,ecx
    1398:	48 8d 3d 4b 03 00 00 	lea    rdi,[rip+0x34b]        # 16ea <main>
    139f:	ff 15 33 2c 00 00    	call   QWORD PTR [rip+0x2c33]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    13a5:	f4                   	hlt    
    13a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    13ad:	00 00 00 

00000000000013b0 <deregister_tm_clones>:
    13b0:	48 8d 3d 59 2c 00 00 	lea    rdi,[rip+0x2c59]        # 4010 <__TMC_END__>
    13b7:	48 8d 05 52 2c 00 00 	lea    rax,[rip+0x2c52]        # 4010 <__TMC_END__>
    13be:	48 39 f8             	cmp    rax,rdi
    13c1:	74 15                	je     13d8 <deregister_tm_clones+0x28>
    13c3:	48 8b 05 16 2c 00 00 	mov    rax,QWORD PTR [rip+0x2c16]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    13ca:	48 85 c0             	test   rax,rax
    13cd:	74 09                	je     13d8 <deregister_tm_clones+0x28>
    13cf:	ff e0                	jmp    rax
    13d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    13d8:	c3                   	ret    
    13d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000013e0 <register_tm_clones>:
    13e0:	48 8d 3d 29 2c 00 00 	lea    rdi,[rip+0x2c29]        # 4010 <__TMC_END__>
    13e7:	48 8d 35 22 2c 00 00 	lea    rsi,[rip+0x2c22]        # 4010 <__TMC_END__>
    13ee:	48 29 fe             	sub    rsi,rdi
    13f1:	48 89 f0             	mov    rax,rsi
    13f4:	48 c1 ee 3f          	shr    rsi,0x3f
    13f8:	48 c1 f8 03          	sar    rax,0x3
    13fc:	48 01 c6             	add    rsi,rax
    13ff:	48 d1 fe             	sar    rsi,1
    1402:	74 14                	je     1418 <register_tm_clones+0x38>
    1404:	48 8b 05 e5 2b 00 00 	mov    rax,QWORD PTR [rip+0x2be5]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    140b:	48 85 c0             	test   rax,rax
    140e:	74 08                	je     1418 <register_tm_clones+0x38>
    1410:	ff e0                	jmp    rax
    1412:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1418:	c3                   	ret    
    1419:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001420 <__do_global_dtors_aux>:
    1420:	f3 0f 1e fa          	endbr64 
    1424:	80 3d 25 2d 00 00 00 	cmp    BYTE PTR [rip+0x2d25],0x0        # 4150 <completed.0>
    142b:	75 2b                	jne    1458 <__do_global_dtors_aux+0x38>
    142d:	55                   	push   rbp
    142e:	48 83 3d 92 2b 00 00 	cmp    QWORD PTR [rip+0x2b92],0x0        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    1435:	00 
    1436:	48 89 e5             	mov    rbp,rsp
    1439:	74 0c                	je     1447 <__do_global_dtors_aux+0x27>
    143b:	48 8b 3d c6 2b 00 00 	mov    rdi,QWORD PTR [rip+0x2bc6]        # 4008 <__dso_handle>
    1442:	e8 89 fd ff ff       	call   11d0 <__cxa_finalize@plt>
    1447:	e8 64 ff ff ff       	call   13b0 <deregister_tm_clones>
    144c:	c6 05 fd 2c 00 00 01 	mov    BYTE PTR [rip+0x2cfd],0x1        # 4150 <completed.0>
    1453:	5d                   	pop    rbp
    1454:	c3                   	ret    
    1455:	0f 1f 00             	nop    DWORD PTR [rax]
    1458:	c3                   	ret    
    1459:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001460 <frame_dummy>:
    1460:	f3 0f 1e fa          	endbr64 
    1464:	e9 77 ff ff ff       	jmp    13e0 <register_tm_clones>

0000000000001469 <_Z12abs_to_floatRif>:
    1469:	f3 0f 1e fa          	endbr64 
    146d:	55                   	push   rbp
    146e:	48 89 e5             	mov    rbp,rsp
    1471:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
    1475:	f3 0f 11 45 f4       	movss  DWORD PTR [rbp-0xc],xmm0
    147a:	90                   	nop
    147b:	5d                   	pop    rbp
    147c:	c3                   	ret    

000000000000147d <_Z12build_square6Entity>:
    147d:	f3 0f 1e fa          	endbr64 
    1481:	55                   	push   rbp
    1482:	48 89 e5             	mov    rbp,rsp
    1485:	48 83 ec 30          	sub    rsp,0x30
    1489:	48 89 f8             	mov    rax,rdi
    148c:	48 89 f1             	mov    rcx,rsi
    148f:	48 89 ca             	mov    rdx,rcx
    1492:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
    1496:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
    149a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    14a1:	00 00 
    14a3:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
    14a7:	31 c0                	xor    eax,eax
    14a9:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
    14b0:	eb 3b                	jmp    14ed <_Z12build_square6Entity+0x70>
    14b2:	8b 45 f0             	mov    eax,DWORD PTR [rbp-0x10]
    14b5:	48 98                	cdqe   
    14b7:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
    14be:	00 
    14bf:	48 8d 45 ec          	lea    rax,[rbp-0x14]
    14c3:	48 01 d0             	add    rax,rdx
    14c6:	8b 00                	mov    eax,DWORD PTR [rax]
    14c8:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
    14cb:	48 63 d2             	movsxd rdx,edx
    14ce:	48 8d 0c 95 00 00 00 	lea    rcx,[rdx*4+0x0]
    14d5:	00 
    14d6:	48 8d 55 d0          	lea    rdx,[rbp-0x30]
    14da:	48 01 ca             	add    rdx,rcx
    14dd:	66 0f 6e c0          	movd   xmm0,eax
    14e1:	48 89 d7             	mov    rdi,rdx
    14e4:	e8 80 ff ff ff       	call   1469 <_Z12abs_to_floatRif>
    14e9:	83 45 f0 01          	add    DWORD PTR [rbp-0x10],0x1
    14ed:	83 7d f0 03          	cmp    DWORD PTR [rbp-0x10],0x3
    14f1:	7e bf                	jle    14b2 <_Z12build_square6Entity+0x35>
    14f3:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
    14f6:	66 0f 6e c0          	movd   xmm0,eax
    14fa:	48 8d 05 3f 2b 00 00 	lea    rax,[rip+0x2b3f]        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1501:	48 89 c7             	mov    rdi,rax
    1504:	e8 27 fd ff ff       	call   1230 <_ZNSolsEf@plt>
    1509:	48 8b 15 c0 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2ac0]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1510:	48 89 d6             	mov    rsi,rdx
    1513:	48 89 c7             	mov    rdi,rax
    1516:	e8 75 fd ff ff       	call   1290 <_ZNSolsEPFRSoS_E@plt>
    151b:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    151e:	66 0f 6e c0          	movd   xmm0,eax
    1522:	48 8d 05 17 2b 00 00 	lea    rax,[rip+0x2b17]        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1529:	48 89 c7             	mov    rdi,rax
    152c:	e8 ff fc ff ff       	call   1230 <_ZNSolsEf@plt>
    1531:	48 8b 15 98 2a 00 00 	mov    rdx,QWORD PTR [rip+0x2a98]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1538:	48 89 d6             	mov    rsi,rdx
    153b:	48 89 c7             	mov    rdi,rax
    153e:	e8 4d fd ff ff       	call   1290 <_ZNSolsEPFRSoS_E@plt>
    1543:	90                   	nop
    1544:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    1548:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
    154f:	00 00 
    1551:	74 05                	je     1558 <_Z12build_square6Entity+0xdb>
    1553:	e8 48 fd ff ff       	call   12a0 <__stack_chk_fail@plt>
    1558:	c9                   	leave  
    1559:	c3                   	ret    

000000000000155a <_Z7displayv>:
    155a:	f3 0f 1e fa          	endbr64 
    155e:	55                   	push   rbp
    155f:	48 89 e5             	mov    rbp,rsp
    1562:	bf 00 40 00 00       	mov    edi,0x4000
    1567:	e8 84 fc ff ff       	call   11f0 <glClear@plt>
    156c:	66 0f ef d2          	pxor   xmm2,xmm2
    1570:	66 0f ef c9          	pxor   xmm1,xmm1
    1574:	8b 05 b2 0a 00 00    	mov    eax,DWORD PTR [rip+0xab2]        # 202c <_IO_stdin_used+0x2c>
    157a:	66 0f 6e c0          	movd   xmm0,eax
    157e:	e8 ed fd ff ff       	call   1370 <glColor3f@plt>
    1583:	bf 07 00 00 00       	mov    edi,0x7
    1588:	e8 53 fc ff ff       	call   11e0 <glBegin@plt>
    158d:	f3 0f 10 0d 9b 0a 00 	movss  xmm1,DWORD PTR [rip+0xa9b]        # 2030 <_IO_stdin_used+0x30>
    1594:	00 
    1595:	8b 05 95 0a 00 00    	mov    eax,DWORD PTR [rip+0xa95]        # 2030 <_IO_stdin_used+0x30>
    159b:	66 0f 6e c0          	movd   xmm0,eax
    159f:	e8 0c fd ff ff       	call   12b0 <glVertex2f@plt>
    15a4:	66 0f ef c9          	pxor   xmm1,xmm1
    15a8:	8b 05 82 0a 00 00    	mov    eax,DWORD PTR [rip+0xa82]        # 2030 <_IO_stdin_used+0x30>
    15ae:	66 0f 6e c0          	movd   xmm0,eax
    15b2:	e8 f9 fc ff ff       	call   12b0 <glVertex2f@plt>
    15b7:	f3 0f 10 0d 71 0a 00 	movss  xmm1,DWORD PTR [rip+0xa71]        # 2030 <_IO_stdin_used+0x30>
    15be:	00 
    15bf:	8b 05 6f 0a 00 00    	mov    eax,DWORD PTR [rip+0xa6f]        # 2034 <_IO_stdin_used+0x34>
    15c5:	66 0f 6e c0          	movd   xmm0,eax
    15c9:	e8 e2 fc ff ff       	call   12b0 <glVertex2f@plt>
    15ce:	f3 0f 10 0d 5a 0a 00 	movss  xmm1,DWORD PTR [rip+0xa5a]        # 2030 <_IO_stdin_used+0x30>
    15d5:	00 
    15d6:	8b 05 4c 0a 00 00    	mov    eax,DWORD PTR [rip+0xa4c]        # 2028 <_IO_stdin_used+0x28>
    15dc:	66 0f 6e c0          	movd   xmm0,eax
    15e0:	e8 cb fc ff ff       	call   12b0 <glVertex2f@plt>
    15e5:	e8 06 fd ff ff       	call   12f0 <glEnd@plt>
    15ea:	e8 11 fd ff ff       	call   1300 <glFlush@plt>
    15ef:	90                   	nop
    15f0:	5d                   	pop    rbp
    15f1:	c3                   	ret    

00000000000015f2 <_Z5timeri>:
    15f2:	f3 0f 1e fa          	endbr64 
    15f6:	55                   	push   rbp
    15f7:	48 89 e5             	mov    rbp,rsp
    15fa:	48 83 ec 10          	sub    rsp,0x10
    15fe:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    1601:	e8 0a fc ff ff       	call   1210 <glutPostRedisplay@plt>
    1606:	ba 00 00 00 00       	mov    edx,0x0
    160b:	48 8d 05 e0 ff ff ff 	lea    rax,[rip+0xffffffffffffffe0]        # 15f2 <_Z5timeri>
    1612:	48 89 c6             	mov    rsi,rax
    1615:	bf 07 00 00 00       	mov    edi,0x7
    161a:	e8 11 fd ff ff       	call   1330 <glutTimerFunc@plt>
    161f:	90                   	nop
    1620:	c9                   	leave  
    1621:	c3                   	ret    

0000000000001622 <_Z8keyboardhii>:
    1622:	f3 0f 1e fa          	endbr64 
    1626:	55                   	push   rbp
    1627:	48 89 e5             	mov    rbp,rsp
    162a:	48 83 ec 10          	sub    rsp,0x10
    162e:	89 f8                	mov    eax,edi
    1630:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    1633:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
    1636:	88 45 fc             	mov    BYTE PTR [rbp-0x4],al
    1639:	80 7d fc 1b          	cmp    BYTE PTR [rbp-0x4],0x1b
    163d:	75 35                	jne    1674 <_Z8keyboardhii+0x52>
    163f:	48 8d 05 be 09 00 00 	lea    rax,[rip+0x9be]        # 2004 <_IO_stdin_used+0x4>
    1646:	48 89 c6             	mov    rsi,rax
    1649:	48 8d 05 f0 29 00 00 	lea    rax,[rip+0x29f0]        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1650:	48 89 c7             	mov    rdi,rax
    1653:	e8 18 fc ff ff       	call   1270 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    1658:	48 8b 15 71 29 00 00 	mov    rdx,QWORD PTR [rip+0x2971]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    165f:	48 89 d6             	mov    rsi,rdx
    1662:	48 89 c7             	mov    rdi,rax
    1665:	e8 26 fc ff ff       	call   1290 <_ZNSolsEPFRSoS_E@plt>
    166a:	bf 00 00 00 00       	mov    edi,0x0
    166f:	e8 4c fc ff ff       	call   12c0 <exit@plt>
    1674:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1677:	89 c6                	mov    esi,eax
    1679:	48 8d 05 c0 29 00 00 	lea    rax,[rip+0x29c0]        # 4040 <_ZSt4cout@GLIBCXX_3.4>
    1680:	48 89 c7             	mov    rdi,rax
    1683:	e8 b8 fc ff ff       	call   1340 <_ZNSolsEi@plt>
    1688:	48 89 c2             	mov    rdx,rax
    168b:	48 8d 05 7a 09 00 00 	lea    rax,[rip+0x97a]        # 200c <_IO_stdin_used+0xc>
    1692:	48 89 c6             	mov    rsi,rax
    1695:	48 89 d7             	mov    rdi,rdx
    1698:	e8 d3 fb ff ff       	call   1270 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
    169d:	48 89 c2             	mov    rdx,rax
    16a0:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    16a3:	89 c6                	mov    esi,eax
    16a5:	48 89 d7             	mov    rdi,rdx
    16a8:	e8 93 fc ff ff       	call   1340 <_ZNSolsEi@plt>
    16ad:	48 8b 15 1c 29 00 00 	mov    rdx,QWORD PTR [rip+0x291c]        # 3fd0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    16b4:	48 89 d6             	mov    rsi,rdx
    16b7:	48 89 c7             	mov    rdi,rax
    16ba:	e8 d1 fb ff ff       	call   1290 <_ZNSolsEPFRSoS_E@plt>
    16bf:	90                   	nop
    16c0:	c9                   	leave  
    16c1:	c3                   	ret    

00000000000016c2 <_Z21handleSpecialKeypressiii>:
    16c2:	f3 0f 1e fa          	endbr64 
    16c6:	55                   	push   rbp
    16c7:	48 89 e5             	mov    rbp,rsp
    16ca:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    16cd:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    16d0:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
    16d3:	90                   	nop
    16d4:	5d                   	pop    rbp
    16d5:	c3                   	ret    

00000000000016d6 <_Z23handleSpecialKeyReleaseiii>:
    16d6:	f3 0f 1e fa          	endbr64 
    16da:	55                   	push   rbp
    16db:	48 89 e5             	mov    rbp,rsp
    16de:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    16e1:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    16e4:	89 55 f4             	mov    DWORD PTR [rbp-0xc],edx
    16e7:	90                   	nop
    16e8:	5d                   	pop    rbp
    16e9:	c3                   	ret    

00000000000016ea <main>:
    16ea:	f3 0f 1e fa          	endbr64 
    16ee:	55                   	push   rbp
    16ef:	48 89 e5             	mov    rbp,rsp
    16f2:	53                   	push   rbx
    16f3:	48 83 ec 28          	sub    rsp,0x28
    16f7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    16fe:	00 00 
    1700:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    1704:	31 c0                	xor    eax,eax
    1706:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [rbp-0x24],0x1
    170d:	48 8d 05 fb 08 00 00 	lea    rax,[rip+0x8fb]        # 200f <_IO_stdin_used+0xf>
    1714:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    1718:	c7 05 3e 2a 00 00 00 	mov    DWORD PTR [rip+0x2a3e],0x0        # 4160 <global_degree>
    171f:	00 00 00 
    1722:	48 8d 55 e0          	lea    rdx,[rbp-0x20]
    1726:	48 8d 45 dc          	lea    rax,[rbp-0x24]
    172a:	48 89 d6             	mov    rsi,rdx
    172d:	48 89 c7             	mov    rdi,rax
    1730:	e8 9b fb ff ff       	call   12d0 <glutInit@plt>
    1735:	bf 00 00 00 00       	mov    edi,0x0
    173a:	e8 e1 fa ff ff       	call   1220 <glutInitDisplayMode@plt>
    173f:	bf c9 00 00 00       	mov    edi,0xc9
    1744:	e8 b7 fa ff ff       	call   1200 <glutGet@plt>
    1749:	89 c3                	mov    ebx,eax
    174b:	bf c8 00 00 00       	mov    edi,0xc8
    1750:	e8 ab fa ff ff       	call   1200 <glutGet@plt>
    1755:	89 de                	mov    esi,ebx
    1757:	89 c7                	mov    edi,eax
    1759:	e8 c2 fb ff ff       	call   1320 <glutInitWindowSize@plt>
    175e:	48 8d 05 b5 08 00 00 	lea    rax,[rip+0x8b5]        # 201a <_IO_stdin_used+0x1a>
    1765:	48 89 c7             	mov    rdi,rax
    1768:	e8 e3 fb ff ff       	call   1350 <glutCreateWindow@plt>
    176d:	48 8d 05 e6 fd ff ff 	lea    rax,[rip+0xfffffffffffffde6]        # 155a <_Z7displayv>
    1774:	48 89 c7             	mov    rdi,rax
    1777:	e8 e4 fb ff ff       	call   1360 <glutDisplayFunc@plt>
    177c:	ba 00 00 00 00       	mov    edx,0x0
    1781:	48 8d 05 6a fe ff ff 	lea    rax,[rip+0xfffffffffffffe6a]        # 15f2 <_Z5timeri>
    1788:	48 89 c6             	mov    rsi,rax
    178b:	bf 00 00 00 00       	mov    edi,0x0
    1790:	e8 9b fb ff ff       	call   1330 <glutTimerFunc@plt>
    1795:	48 8d 05 86 fe ff ff 	lea    rax,[rip+0xfffffffffffffe86]        # 1622 <_Z8keyboardhii>
    179c:	48 89 c7             	mov    rdi,rax
    179f:	e8 ac fa ff ff       	call   1250 <glutKeyboardFunc@plt>
    17a4:	48 8d 05 17 ff ff ff 	lea    rax,[rip+0xffffffffffffff17]        # 16c2 <_Z21handleSpecialKeypressiii>
    17ab:	48 89 c7             	mov    rdi,rax
    17ae:	e8 cd fa ff ff       	call   1280 <glutSpecialFunc@plt>
    17b3:	48 8d 05 1c ff ff ff 	lea    rax,[rip+0xffffffffffffff1c]        # 16d6 <_Z23handleSpecialKeyReleaseiii>
    17ba:	48 89 c7             	mov    rdi,rax
    17bd:	e8 9e fa ff ff       	call   1260 <glutSpecialUpFunc@plt>
    17c2:	e8 19 fb ff ff       	call   12e0 <glutMainLoop@plt>
    17c7:	b8 00 00 00 00       	mov    eax,0x0
    17cc:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
    17d0:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
    17d7:	00 00 
    17d9:	74 05                	je     17e0 <main+0xf6>
    17db:	e8 c0 fa ff ff       	call   12a0 <__stack_chk_fail@plt>
    17e0:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
    17e4:	c9                   	leave  
    17e5:	c3                   	ret    

00000000000017e6 <_Z41__static_initialization_and_destruction_0ii>:
    17e6:	f3 0f 1e fa          	endbr64 
    17ea:	55                   	push   rbp
    17eb:	48 89 e5             	mov    rbp,rsp
    17ee:	48 83 ec 10          	sub    rsp,0x10
    17f2:	89 7d fc             	mov    DWORD PTR [rbp-0x4],edi
    17f5:	89 75 f8             	mov    DWORD PTR [rbp-0x8],esi
    17f8:	83 7d fc 01          	cmp    DWORD PTR [rbp-0x4],0x1
    17fc:	75 3b                	jne    1839 <_Z41__static_initialization_and_destruction_0ii+0x53>
    17fe:	81 7d f8 ff ff 00 00 	cmp    DWORD PTR [rbp-0x8],0xffff
    1805:	75 32                	jne    1839 <_Z41__static_initialization_and_destruction_0ii+0x53>
    1807:	48 8d 05 d2 2f 00 00 	lea    rax,[rip+0x2fd2]        # 47e0 <_ZStL8__ioinit>
    180e:	48 89 c7             	mov    rdi,rax
    1811:	e8 fa fa ff ff       	call   1310 <_ZNSt8ios_base4InitC1Ev@plt>
    1816:	48 8d 05 eb 27 00 00 	lea    rax,[rip+0x27eb]        # 4008 <__dso_handle>
    181d:	48 89 c2             	mov    rdx,rax
    1820:	48 8d 05 b9 2f 00 00 	lea    rax,[rip+0x2fb9]        # 47e0 <_ZStL8__ioinit>
    1827:	48 89 c6             	mov    rsi,rax
    182a:	48 8b 05 c7 27 00 00 	mov    rax,QWORD PTR [rip+0x27c7]        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1831:	48 89 c7             	mov    rdi,rax
    1834:	e8 07 fa ff ff       	call   1240 <__cxa_atexit@plt>
    1839:	90                   	nop
    183a:	c9                   	leave  
    183b:	c3                   	ret    

000000000000183c <_GLOBAL__sub_I_global_degree>:
    183c:	f3 0f 1e fa          	endbr64 
    1840:	55                   	push   rbp
    1841:	48 89 e5             	mov    rbp,rsp
    1844:	be ff ff 00 00       	mov    esi,0xffff
    1849:	bf 01 00 00 00       	mov    edi,0x1
    184e:	e8 93 ff ff ff       	call   17e6 <_Z41__static_initialization_and_destruction_0ii>
    1853:	5d                   	pop    rbp
    1854:	c3                   	ret    

Disassembly of section .fini:

0000000000001858 <_fini>:
    1858:	f3 0f 1e fa          	endbr64 
    185c:	48 83 ec 08          	sub    rsp,0x8
    1860:	48 83 c4 08          	add    rsp,0x8
    1864:	c3                   	ret    
