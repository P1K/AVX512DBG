	.file	"minimal.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"\n~~\302\240case %d ~~\n\n"
.LC5:
	.string	"buf2 content"
.LC6:
	.string	"[%d] = %lx\n"
.LC7:
	.string	"buf3 content"
	.text
	.p2align 4,,15
	.globl	copy
	.type	copy, @function
copy:
.LFB23:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-64, %rsp
	vpxord	%ymm0, %ymm0, %ymm0
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x78
	.cfi_escape 0x10,0xc,0x2,0x76,0x70
	pushq	%rbx
	subq	$416, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x60
	leaq	7(%rsp), %rbx
	vmovaps	%xmm0, -128(%rbp)
	shrq	$3, %rbx
	vmovaps	%xmm0, -112(%rbp)
	movq	%rbx, %rdx
	leaq	0(,%rbx,8), %rsi
	vmovaps	%xmm0, -96(%rbp)
	negq	%rdx
	vmovaps	%xmm0, -80(%rbp)
	vpxord	%xmm0, %xmm0, %xmm0
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	andl	$7, %edx
	vmovdqa64	%ymm0, -176(%rbp)
	je	.L9
	cmpq	$1, %rdx
	movq	$0, 0(,%rbx,8)
	je	.L10
	cmpq	$2, %rdx
	movq	$1, 8(,%rbx,8)
	je	.L11
	cmpq	$3, %rdx
	movq	$2, 16(,%rbx,8)
	je	.L12
	cmpq	$4, %rdx
	movq	$3, 24(,%rbx,8)
	je	.L13
	cmpq	$5, %rdx
	movq	$4, 32(,%rbx,8)
	je	.L14
	cmpq	$7, %rdx
	movq	$5, 40(,%rbx,8)
	jne	.L15
	movq	$6, 48(,%rbx,8)
	movl	$26, %ecx
	movl	$7, %eax
.L2:
	movl	$33, %edi
	vpbroadcastq	%rax, %zmm0
	subq	%rdx, %rdi
	leaq	(%rsi,%rdx,8), %rdx
	movq	%rdi, %r8
	vpaddq	.LC0(%rip), %zmm0, %zmm1
	shrq	$3, %r8
	vmovdqa64	%zmm1, (%rdx)
	vpaddq	.LC1(%rip), %zmm0, %zmm1
	cmpq	$4, %r8
	vmovdqa64	%zmm1, 64(%rdx)
	vpaddq	.LC2(%rip), %zmm0, %zmm1
	vpaddq	.LC3(%rip), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rdx)
	jne	.L4
	vmovdqa64	%zmm1, 192(%rdx)
.L4:
	movq	%rdi, %r8
	movq	%rcx, %rdx
	andq	$-8, %r8
	addq	%r8, %rax
	subq	%r8, %rdx
	cmpq	%r8, %rdi
	je	.L5
	cmpq	$1, %rdx
	movq	%rax, (%rsi,%rax,8)
	leaq	1(%rax), %rcx
	je	.L5
	cmpq	$2, %rdx
	movq	%rcx, (%rsi,%rcx,8)
	leaq	2(%rax), %rcx
	je	.L5
	cmpq	$3, %rdx
	movq	%rcx, (%rsi,%rcx,8)
	leaq	3(%rax), %rcx
	je	.L5
	cmpq	$4, %rdx
	movq	%rcx, (%rsi,%rcx,8)
	leaq	4(%rax), %rcx
	je	.L5
	cmpq	$5, %rdx
	movq	%rcx, (%rsi,%rcx,8)
	leaq	5(%rax), %rcx
	je	.L5
	addq	$6, %rax
	cmpq	$6, %rdx
	movq	%rcx, (%rsi,%rcx,8)
	je	.L5
	movq	%rax, (%rsi,%rax,8)
.L5:
	leaq	.LC4(%rip), %rsi
	movl	$3, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	vzeroupper
	call	__printf_chk@PLT
	vmovdqu64	0(,%rbx,8), %xmm0
	leaq	.LC5(%rip), %rdi
	leaq	-128(%rbp), %r13
	leaq	.LC6(%rip), %r12
	vmovaps	%xmm0, -128(%rbp)
	vmovdqu64	16(,%rbx,8), %xmm0
	vmovaps	%xmm0, -112(%rbp)
	vmovdqu64	32(,%rbx,8), %xmm0
	vmovaps	%xmm0, -96(%rbp)
	vmovdqu64	48(,%rbx,8), %xmm0
	xorl	%ebx, %ebx
	vmovaps	%xmm0, -80(%rbp)
	call	puts@PLT
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%ebx, %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$1, %edi
	movq	0(%r13,%rbx,8), %rcx
	addq	$1, %rbx
	call	__printf_chk@PLT
	cmpq	$8, %rbx
	jne	.L6
	leaq	.LC7(%rip), %rdi
	leaq	-176(%rbp), %r13
	leaq	.LC6(%rip), %r12
	xorl	%ebx, %ebx
	call	puts@PLT
.L7:
	movq	0(%r13,%rbx,8), %rcx
	movl	%ebx, %edx
	xorl	%eax, %eax
	movq	%r12, %rsi
	movl	$1, %edi
	addq	$1, %rbx
	call	__printf_chk@PLT
	cmpq	$4, %rbx
	jne	.L7
	movq	-56(%rbp), %rax
	xorq	%fs:40, %rax
	jne	.L39
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L13:
	.cfi_restore_state
	movl	$4, %eax
	movl	$29, %ecx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L10:
	movl	$32, %ecx
	movl	$1, %eax
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L9:
	movl	$33, %ecx
	xorl	%eax, %eax
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$2, %eax
	movl	$31, %ecx
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$3, %eax
	movl	$30, %ecx
	jmp	.L2
.L14:
	movl	$5, %eax
	movl	$28, %ecx
	jmp	.L2
.L15:
	movl	$27, %ecx
	movl	$6, %eax
	jmp	.L2
.L39:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	copy, .-copy
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	copy
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.rodata
	.align 64
.LC0:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.quad	4
	.quad	5
	.quad	6
	.quad	7
	.align 64
.LC1:
	.quad	8
	.quad	9
	.quad	10
	.quad	11
	.quad	12
	.quad	13
	.quad	14
	.quad	15
	.align 64
.LC2:
	.quad	24
	.quad	25
	.quad	26
	.quad	27
	.quad	28
	.quad	29
	.quad	30
	.quad	31
	.align 64
.LC3:
	.quad	16
	.quad	17
	.quad	18
	.quad	19
	.quad	20
	.quad	21
	.quad	22
	.quad	23
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
