	.intel_syntax noprefix

	.section	.text
	.align	32
	.globl error_print
	.type error_print, @function
error_print:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0x20 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	dword ptr [rbp - 4], edi # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x10], rsi # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x18], rdx # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + stderr]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdx, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rcx, qword ptr [rbp - 0x10] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi, rcx # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	vfprintf # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	cmp	dword ptr [rbp - 4], 0 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	je	.label_8 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	mov	edi, OFFSET FLAT:label_9 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	call	perror # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	jmp	.label_10 # Size:2, Opcode: 0xeb,0x00,0x00,0x00
.label_8:
	mov	rax,  qword ptr [word ptr [rip + stderr]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	edi, 0xa # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	call	fputc # Size:5, Opcode: 0xe8,0x00,0x00,0x00
.label_10:
	mov	edi, 1 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	call	exit # Size:5, Opcode: 0xe8,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl errf
	.type errf, @function
errf:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0xe0 # Size:7, Opcode: 0x81,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xa8], rsi # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xa0], rdx # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x98], rcx # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x90], r8 # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x88], r9 # Size:7, Opcode: 0x89,0x00,0x00,0x00
	test	al, al # Size:2, Opcode: 0x84,0x00,0x00,0x00
	je	.label_12 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	movaps	xmmword ptr [rbp - 0x80], xmm0 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x70], xmm1 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x60], xmm2 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x50], xmm3 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x40], xmm4 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x30], xmm5 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x20], xmm6 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x10], xmm7 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
.label_12:
	mov	qword ptr [rbp - 0xd8], rdi # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	rax, qword ptr fs:[0x28] # Size:9, Opcode: 0x8b,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xb8], rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	xor	eax, eax # Size:2, Opcode: 0x31,0x00,0x00,0x00
	mov	dword ptr [rbp - 0xd0], 8 # Size:10, Opcode: 0xc7,0x00,0x00,0x00
	mov	dword ptr [rbp - 0xcc], 0x30 # Size:10, Opcode: 0xc7,0x00,0x00,0x00
	lea	rax, qword ptr [rbp + 0x10] # Size:4, Opcode: 0x8d,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xc8], rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	lea	rax, qword ptr [rbp - 0xb0] # Size:7, Opcode: 0x8d,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xc0], rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	lea	rdx, qword ptr [rbp - 0xd0] # Size:7, Opcode: 0x8d,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0xd8] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	edi, 0 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	call	error_print # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0xb8] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	xor	rax, qword ptr fs:[0x28] # Size:9, Opcode: 0x33,0x00,0x00,0x00
	je	.label_11 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	call	__stack_chk_fail # Size:5, Opcode: 0xe8,0x00,0x00,0x00
.label_11:
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl perrf
	.type perrf, @function
perrf:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0xe0 # Size:7, Opcode: 0x81,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xa8], rsi # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xa0], rdx # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x98], rcx # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x90], r8 # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x88], r9 # Size:7, Opcode: 0x89,0x00,0x00,0x00
	test	al, al # Size:2, Opcode: 0x84,0x00,0x00,0x00
	je	.label_14 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	movaps	xmmword ptr [rbp - 0x80], xmm0 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x70], xmm1 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x60], xmm2 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x50], xmm3 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x40], xmm4 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x30], xmm5 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x20], xmm6 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
	movaps	xmmword ptr [rbp - 0x10], xmm7 # Size:4, Opcode: 0x0f,0x29,0x00,0x00
.label_14:
	mov	qword ptr [rbp - 0xd8], rdi # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	rax, qword ptr fs:[0x28] # Size:9, Opcode: 0x8b,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xb8], rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	xor	eax, eax # Size:2, Opcode: 0x31,0x00,0x00,0x00
	mov	dword ptr [rbp - 0xd0], 8 # Size:10, Opcode: 0xc7,0x00,0x00,0x00
	mov	dword ptr [rbp - 0xcc], 0x30 # Size:10, Opcode: 0xc7,0x00,0x00,0x00
	lea	rax, qword ptr [rbp + 0x10] # Size:4, Opcode: 0x8d,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xc8], rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	lea	rax, qword ptr [rbp - 0xb0] # Size:7, Opcode: 0x8d,0x00,0x00,0x00
	mov	qword ptr [rbp - 0xc0], rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	lea	rdx, qword ptr [rbp - 0xd0] # Size:7, Opcode: 0x8d,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0xd8] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	edi, 1 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	call	error_print # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0xb8] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	xor	rax, qword ptr fs:[0x28] # Size:9, Opcode: 0x33,0x00,0x00,0x00
	je	.label_13 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	call	__stack_chk_fail # Size:5, Opcode: 0xe8,0x00,0x00,0x00
.label_13:
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl report
	.type report, @function
report:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0x20 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [rbp - 8], rdi # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x10], rsi # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x18], rdx # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x20], rcx # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	rsi, qword ptr [rbp - 8] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rcx, qword ptr [rbp - 0x10] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdx, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0x20] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	r8, rsi # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	rsi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	edi, OFFSET FLAT:label_15 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	mov	eax, 0 # Size:5, Opcode: 0xb8,0x00,0x00,0x00
	call	printf # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl isword
	.type isword, @function
isword:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0x10 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	eax, edi # Size:2, Opcode: 0x89,0x00,0x00,0x00
	mov	byte ptr [rbp - 4], al # Size:3, Opcode: 0x88,0x00,0x00,0x00
	call	__ctype_b_loc # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	rax, qword ptr [rax] # Size:3, Opcode: 0x8b,0x00,0x00,0x00
	movzx	edx, byte ptr [rbp - 4] # Size:4, Opcode: 0x0f,0xb6,0x00,0x00
	add	rdx, rdx # Size:3, Opcode: 0x01,0x00,0x00,0x00
	add	rax, rdx # Size:3, Opcode: 0x01,0x00,0x00,0x00
	movzx	eax, word ptr [rax] # Size:3, Opcode: 0x0f,0xb7,0x00,0x00
	movzx	eax, ax # Size:3, Opcode: 0x0f,0xb7,0x00,0x00
	and	eax, 0x400 # Size:5, Opcode: 0x25,0x00,0x00,0x00
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl getword
	.type getword, @function
getword:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0x20 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x18], rdi # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	dword ptr [rbp - 4], 0 # Size:7, Opcode: 0xc7,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	feof # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	test	eax, eax # Size:2, Opcode: 0x85,0x00,0x00,0x00
	je	.label_25 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	mov	eax, 0 # Size:5, Opcode: 0xb8,0x00,0x00,0x00
	jmp	.label_26 # Size:5, Opcode: 0xe9,0x00,0x00,0x00
.label_25:
	jmp	.label_16 # Size:2, Opcode: 0xeb,0x00,0x00,0x00
.label_22:
	mov	eax, dword ptr [rbp - 8] # Size:3, Opcode: 0x8b,0x00,0x00,0x00
	movzx	eax, al # Size:3, Opcode: 0x0f,0xb6,0x00,0x00
	mov	edi, eax # Size:2, Opcode: 0x89,0x00,0x00,0x00
	call	isword # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	test	eax, eax # Size:2, Opcode: 0x85,0x00,0x00,0x00
	je	.label_17 # Size:2, Opcode: 0x74,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + wcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + wcount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	jmp	.label_18 # Size:2, Opcode: 0xeb,0x00,0x00,0x00
.label_17:
	mov	rax,  qword ptr [word ptr [rip + ccount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + ccount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	cmp	dword ptr [rbp - 8], 0xa # Size:4, Opcode: 0x83,0x00,0x00,0x00
	jne	.label_16 # Size:2, Opcode: 0x75,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + lcount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
.label_16:
	mov	rax, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	_IO_getc # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	dword ptr [rbp - 8], eax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	cmp	dword ptr [rbp - 8], -1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	jne	.label_22 # Size:2, Opcode: 0x75,0x00,0x00,0x00
.label_18:
	jmp	.label_23 # Size:2, Opcode: 0xeb,0x00,0x00,0x00
.label_21:
	mov	rax,  qword ptr [word ptr [rip + ccount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + ccount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	cmp	dword ptr [rbp - 8], 0xa # Size:4, Opcode: 0x83,0x00,0x00,0x00
	jne	.label_24 # Size:2, Opcode: 0x75,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + lcount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
.label_24:
	mov	eax, dword ptr [rbp - 8] # Size:3, Opcode: 0x8b,0x00,0x00,0x00
	movzx	eax, al # Size:3, Opcode: 0x0f,0xb6,0x00,0x00
	mov	edi, eax # Size:2, Opcode: 0x89,0x00,0x00,0x00
	call	isword # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	test	eax, eax # Size:2, Opcode: 0x85,0x00,0x00,0x00
	jne	.label_19 # Size:2, Opcode: 0x75,0x00,0x00,0x00
	jmp	.label_20 # Size:2, Opcode: 0xeb,0x00,0x00,0x00
.label_19:
	mov	rax, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	_IO_getc # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	dword ptr [rbp - 8], eax # Size:3, Opcode: 0x89,0x00,0x00,0x00
.label_23:
	cmp	dword ptr [rbp - 8], -1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	jne	.label_21 # Size:2, Opcode: 0x75,0x00,0x00,0x00
.label_20:
	cmp	dword ptr [rbp - 8], -1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	setne	al # Size:3, Opcode: 0x0f,0x95,0x00,0x00
	movzx	eax, al # Size:3, Opcode: 0x0f,0xb6,0x00,0x00
.label_26:
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl counter
	.type counter, @function
counter:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0x20 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x18], rdi # Size:4, Opcode: 0x89,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	esi, OFFSET FLAT:label_28 # Size:5, Opcode: 0xbe,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	fopen # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	qword ptr [rbp - 8], rax # Size:4, Opcode: 0x89,0x00,0x00,0x00
	cmp	qword ptr [rbp - 8], 0 # Size:5, Opcode: 0x83,0x00,0x00,0x00
	jne	.label_27 # Size:2, Opcode: 0x75,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	edi, OFFSET FLAT:label_29 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	mov	eax, 0 # Size:5, Opcode: 0xb8,0x00,0x00,0x00
	call	perrf # Size:5, Opcode: 0xe8,0x00,0x00,0x00
.label_27:
	mov	qword ptr [word ptr [rip + lcount]],  0 # Size:11, Opcode: 0xc7,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + wcount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + wcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + ccount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	nop	 # Size:1, Opcode: 0x90,0x00,0x00,0x00
.label_30:
	mov	rax, qword ptr [rbp - 8] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	getword # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	test	eax, eax # Size:2, Opcode: 0x85,0x00,0x00,0x00
	jne	.label_30 # Size:2, Opcode: 0x75,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 8] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	fclose # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	rcx,  qword ptr [word ptr [rip + lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdx,  qword ptr [word ptr [rip + wcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi,  qword ptr [word ptr [rip + ccount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0x18] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	report # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	mov	rdx,  qword ptr [word ptr [rip + total_ccount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + ccount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, rdx # Size:3, Opcode: 0x01,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + total_ccount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	rdx,  qword ptr [word ptr [rip + total_wcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + wcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, rdx # Size:3, Opcode: 0x01,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + total_wcount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	mov	rdx,  qword ptr [word ptr [rip + total_lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, rdx # Size:3, Opcode: 0x01,0x00,0x00,0x00
	mov	qword ptr [word ptr [rip + total_lcount]],  rax # Size:7, Opcode: 0x89,0x00,0x00,0x00
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00

	.section	.text
	.align	32
	.globl main
	.type main, @function
main:
	push	rbp # Size:1, Opcode: 0x55,0x00,0x00,0x00
	mov	rbp, rsp # Size:3, Opcode: 0x89,0x00,0x00,0x00
	sub	rsp, 0x20 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	mov	dword ptr [rbp - 0x14], edi # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	qword ptr [rbp - 0x20], rsi # Size:4, Opcode: 0x89,0x00,0x00,0x00
	cmp	dword ptr [rbp - 0x14], 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	jg	.label_35 # Size:2, Opcode: 0x7f,0x00,0x00,0x00
	mov	edi, OFFSET FLAT:label_32 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	mov	eax, 0 # Size:5, Opcode: 0xb8,0x00,0x00,0x00
	call	errf # Size:5, Opcode: 0xe8,0x00,0x00,0x00
.label_35:
	mov	dword ptr [rbp - 4], 1 # Size:7, Opcode: 0xc7,0x00,0x00,0x00
	jmp	.label_36 # Size:2, Opcode: 0xeb,0x00,0x00,0x00
.label_31:
	mov	eax, dword ptr [rbp - 4] # Size:3, Opcode: 0x8b,0x00,0x00,0x00
	cdqe	 # Size:2, Opcode: 0x98,0x00,0x00,0x00
	lea	rdx, qword ptr [rax*8] # Size:8, Opcode: 0x8d,0x00,0x00,0x00
	mov	rax, qword ptr [rbp - 0x20] # Size:4, Opcode: 0x8b,0x00,0x00,0x00
	add	rax, rdx # Size:3, Opcode: 0x01,0x00,0x00,0x00
	mov	rax, qword ptr [rax] # Size:3, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	call	counter # Size:5, Opcode: 0xe8,0x00,0x00,0x00
	add	dword ptr [rbp - 4], 1 # Size:4, Opcode: 0x83,0x00,0x00,0x00
.label_36:
	mov	eax, dword ptr [rbp - 4] # Size:3, Opcode: 0x8b,0x00,0x00,0x00
	cmp	eax, dword ptr [rbp - 0x14] # Size:3, Opcode: 0x3b,0x00,0x00,0x00
	jl	.label_31 # Size:2, Opcode: 0x7c,0x00,0x00,0x00
	cmp	dword ptr [rbp - 0x14], 2 # Size:4, Opcode: 0x83,0x00,0x00,0x00
	jle	.label_33 # Size:2, Opcode: 0x7e,0x00,0x00,0x00
	mov	rcx,  qword ptr [word ptr [rip + total_lcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rdx,  qword ptr [word ptr [rip + total_wcount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rax,  qword ptr [word ptr [rip + total_ccount]] # Size:7, Opcode: 0x8b,0x00,0x00,0x00
	mov	rsi, rax # Size:3, Opcode: 0x89,0x00,0x00,0x00
	mov	edi, OFFSET FLAT:label_34 # Size:5, Opcode: 0xbf,0x00,0x00,0x00
	call	report # Size:5, Opcode: 0xe8,0x00,0x00,0x00
.label_33:
	mov	eax, 0 # Size:5, Opcode: 0xb8,0x00,0x00,0x00
	leave	 # Size:1, Opcode: 0xc9,0x00,0x00,0x00
	ret	 # Size:1, Opcode: 0xc3,0x00,0x00,0x00


	.section .rodata
	.align 32
	.byte 1
	.byte 0
	.byte 2
	.byte 0
label_9:
	.byte 32
label_15:
	.byte 37
	.byte 54
	.byte 108
	.byte 117
	.byte 32
	.byte 37
	.byte 54
	.byte 108
	.byte 117
	.byte 32
	.byte 37
	.byte 54
	.byte 108
	.byte 117
	.byte 32
	.byte 37
	.byte 115
	.byte 10
label_28:
	.byte 114
label_29:
	.byte 99
	.byte 97
	.byte 110
	.byte 110
	.byte 111
	.byte 116
	.byte 32
	.byte 111
	.byte 112
	.byte 101
	.byte 110
	.byte 32
	.byte 102
	.byte 105
	.byte 108
	.byte 101
	.byte 32
	.byte 96
	.byte 37
	.byte 115
	.byte 39
label_32:
	.byte 117
	.byte 115
	.byte 97
	.byte 103
	.byte 101
	.byte 58
	.byte 32
	.byte 119
	.byte 99
	.byte 32
	.byte 70
	.byte 73
	.byte 76
	.byte 69
	.byte 32
	.byte 91
	.byte 70
	.byte 73
	.byte 76
	.byte 69
	.byte 46
	.byte 46
	.byte 46
	.byte 93
label_34:
	.byte 116
	.byte 111
	.byte 116
	.byte 97
	.byte 108

	.section .data
	.align 8
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0

	.section .data
	.align 32
	.globl completed.7307
	.type completed.7307, @object
completed.7307:
	.byte 0x0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl total_ccount
	.type total_ccount, @object
total_ccount:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl total_wcount
	.type total_wcount, @object
total_wcount:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl total_lcount
	.type total_lcount, @object
total_lcount:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl wcount
	.type wcount, @object
wcount:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl ccount
	.type ccount, @object
ccount:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.globl lcount
	.type lcount, @object
lcount:
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
	.byte 0
		.globl _end
	.type _end, @notype
_end: