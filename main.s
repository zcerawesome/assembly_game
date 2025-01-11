	.file	"main.cpp"
	.intel_syntax noprefix
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.globl	global_degree
	.bss
	.align 4
	.type	global_degree, @object
	.size	global_degree, 4
global_degree:
	.zero	4
	.text
	.globl	_Z8displaysv
	.type	_Z8displaysv, @function
_Z8displaysv:
.LFB2324:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	edi, 16384
	call	glClear@PLT
	pxor	xmm2, xmm2
	pxor	xmm1, xmm1
	mov	eax, DWORD PTR .LC1[rip]
	movd	xmm0, eax
	call	glColor3f@PLT
	mov	edi, 7
	call	glBegin@PLT
	mov	eax, DWORD PTR global_degree[rip]
	mov	edi, eax
	call	cos_a@PLT
	movd	eax, xmm0
	movss	xmm0, DWORD PTR .LC2[rip]
	movd	xmm3, eax
	xorps	xmm3, xmm0
	movaps	xmm0, xmm3
	movaps	xmm1, xmm0
	mov	eax, DWORD PTR .LC3[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	mov	eax, DWORD PTR global_degree[rip]
	mov	edi, eax
	call	cos_a@PLT
	movd	eax, xmm0
	movss	xmm0, DWORD PTR .LC2[rip]
	movd	xmm4, eax
	xorps	xmm4, xmm0
	movaps	xmm0, xmm4
	movaps	xmm1, xmm0
	mov	eax, DWORD PTR .LC4[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	mov	eax, DWORD PTR global_degree[rip]
	mov	edi, eax
	call	cos_a@PLT
	movd	eax, xmm0
	movd	xmm1, eax
	mov	eax, DWORD PTR .LC5[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	mov	eax, DWORD PTR global_degree[rip]
	mov	edi, eax
	call	cos_a@PLT
	movd	eax, xmm0
	movd	xmm1, eax
	mov	eax, DWORD PTR .LC6[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	call	glEnd@PLT
	pxor	xmm2, xmm2
	pxor	xmm1, xmm1
	mov	eax, DWORD PTR .LC0[rip]
	movd	xmm0, eax
	call	glColor3f@PLT
	mov	edi, 4
	call	glBegin@PLT
	movss	xmm1, DWORD PTR .LC7[rip]
	mov	eax, DWORD PTR .LC8[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	movss	xmm1, DWORD PTR .LC7[rip]
	mov	eax, DWORD PTR .LC9[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	movss	xmm1, DWORD PTR .LC8[rip]
	mov	eax, DWORD PTR .LC7[rip]
	movd	xmm0, eax
	call	glVertex2f@PLT
	call	glEnd@PLT
	call	glFlush@PLT
	mov	eax, DWORD PTR Player_Height[rip]
	mov	esi, eax
	lea	rax, _ZSt4cout[rip]
	mov	rdi, rax
	call	_ZNSolsEi@PLT
	mov	rdx, QWORD PTR _ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL[rip]
	mov	rsi, rdx
	mov	rdi, rax
	call	_ZNSolsEPFRSoS_E@PLT
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2324:
	.size	_Z8displaysv, .-_Z8displaysv
	.globl	_Z5timeri
	.type	_Z5timeri, @function
_Z5timeri:
.LFB2325:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	call	glutPostRedisplay@PLT
	mov	edx, 0
	lea	rax, _Z5timeri[rip]
	mov	rsi, rax
	mov	edi, 7
	call	glutTimerFunc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2325:
	.size	_Z5timeri, .-_Z5timeri
	.section	.rodata
.LC10:
	.string	"my_program"
.LC11:
	.string	"Assembly Game"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2326:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -20[rbp], 1
	lea	rax, .LC10[rip]
	mov	QWORD PTR -16[rbp], rax
	mov	DWORD PTR global_degree[rip], 0
	lea	rdx, -16[rbp]
	lea	rax, -20[rbp]
	mov	rsi, rdx
	mov	rdi, rax
	call	glutInit@PLT
	mov	edi, 0
	call	glutInitDisplayMode@PLT
	mov	edi, 200
	call	glutGet@PLT
	mov	esi, 960
	mov	edi, eax
	call	glutInitWindowSize@PLT
	lea	rax, .LC11[rip]
	mov	rdi, rax
	call	glutCreateWindow@PLT
	mov	rax, QWORD PTR display@GOTPCREL[rip]
	mov	rdi, rax
	call	glutDisplayFunc@PLT
	mov	edx, 0
	lea	rax, _Z5timeri[rip]
	mov	rsi, rax
	mov	edi, 0
	call	glutTimerFunc@PLT
	mov	rax, QWORD PTR keyboard@GOTPCREL[rip]
	mov	rdi, rax
	call	glutKeyboardFunc@PLT
	call	glutMainLoop@PLT
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2326:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2976:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR -8[rbp], esi
	cmp	DWORD PTR -4[rbp], 1
	jne	.L8
	cmp	DWORD PTR -8[rbp], 65535
	jne	.L8
	lea	rax, _ZStL8__ioinit[rip]
	mov	rdi, rax
	call	_ZNSt8ios_base4InitC1Ev@PLT
	lea	rax, __dso_handle[rip]
	mov	rdx, rax
	lea	rax, _ZStL8__ioinit[rip]
	mov	rsi, rax
	mov	rax, QWORD PTR _ZNSt8ios_base4InitD1Ev@GOTPCREL[rip]
	mov	rdi, rax
	call	__cxa_atexit@PLT
.L8:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2976:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_global_degree, @function
_GLOBAL__sub_I_global_degree:
.LFB2977:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	esi, 65535
	mov	edi, 1
	call	_Z41__static_initialization_and_destruction_0ii
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2977:
	.size	_GLOBAL__sub_I_global_degree, .-_GLOBAL__sub_I_global_degree
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_global_degree
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.align 4
.LC1:
	.long	1065353216
	.align 16
.LC2:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 4
.LC3:
	.long	-1086324736
	.align 4
.LC4:
	.long	1061158912
	.align 4
.LC5:
	.long	1056964608
	.align 4
.LC6:
	.long	-1090519040
	.align 4
.LC7:
	.long	1050253722
	.align 4
.LC8:
	.long	-1097229926
	.align 4
.LC9:
	.long	1036831949
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
