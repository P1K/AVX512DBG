default rel ; default mode is rip-relative addressing

section .text
global _vmov1024_xmm, _vmov1024_ymm

_vmov1024_xmm:
.input:
	movdqu xmm0, [rdi]
	movdqu [rsi], xmm0 
	movdqu xmm0, [rdi+16]
	movdqu [rsi+16], xmm0 
	movdqu xmm0, [rdi+32]
	movdqu [rsi+32], xmm0 
	movdqu xmm0, [rdi+48]
	movdqu [rsi+48], xmm0 
	movdqu xmm0, [rdi+64]
	movdqu [rsi+64], xmm0 
	movdqu xmm0, [rdi+80]
	movdqu [rsi+80], xmm0 
	movdqu xmm0, [rdi+96]
	movdqu [rsi+96], xmm0 
	movdqu xmm0, [rdi+112]
	movdqu [rsi+112], xmm0 

	ret

_vmov1024_ymm:
.input:
	vmovdqu ymm0, [rdi]
	vmovdqu [rsi], ymm0 
	vmovdqu ymm0, [rdi+32]
	vmovdqu [rsi+32], ymm0 
	vmovdqu ymm0, [rdi+64]
	vmovdqu [rsi+64], ymm0 
	vmovdqu ymm0, [rdi+96]
	vmovdqu [rsi+96], ymm0 

	ret
