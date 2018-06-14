
a.out:     format de fichier elf64-x86-64


Déassemblage de la section .init :

00000000000005a0 <_init>:
 5a0:	48 83 ec 08          	sub    $0x8,%rsp
 5a4:	48 8b 05 3d 1a 20 00 	mov    0x201a3d(%rip),%rax        # 201fe8 <__gmon_start__>
 5ab:	48 85 c0             	test   %rax,%rax
 5ae:	74 02                	je     5b2 <_init+0x12>
 5b0:	ff d0                	callq  *%rax
 5b2:	48 83 c4 08          	add    $0x8,%rsp
 5b6:	c3                   	retq   

Déassemblage de la section .plt :

00000000000005c0 <.plt>:
 5c0:	ff 35 ea 19 20 00    	pushq  0x2019ea(%rip)        # 201fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
 5c6:	ff 25 ec 19 20 00    	jmpq   *0x2019ec(%rip)        # 201fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
 5cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000005d0 <puts@plt>:
 5d0:	ff 25 ea 19 20 00    	jmpq   *0x2019ea(%rip)        # 201fc0 <puts@GLIBC_2.2.5>
 5d6:	68 00 00 00 00       	pushq  $0x0
 5db:	e9 e0 ff ff ff       	jmpq   5c0 <.plt>

00000000000005e0 <__stack_chk_fail@plt>:
 5e0:	ff 25 e2 19 20 00    	jmpq   *0x2019e2(%rip)        # 201fc8 <__stack_chk_fail@GLIBC_2.4>
 5e6:	68 01 00 00 00       	pushq  $0x1
 5eb:	e9 d0 ff ff ff       	jmpq   5c0 <.plt>

00000000000005f0 <__printf_chk@plt>:
 5f0:	ff 25 da 19 20 00    	jmpq   *0x2019da(%rip)        # 201fd0 <__printf_chk@GLIBC_2.3.4>
 5f6:	68 02 00 00 00       	pushq  $0x2
 5fb:	e9 c0 ff ff ff       	jmpq   5c0 <.plt>

Déassemblage de la section .plt.got :

0000000000000600 <__cxa_finalize@plt>:
 600:	ff 25 f2 19 20 00    	jmpq   *0x2019f2(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 606:	66 90                	xchg   %ax,%ax

Déassemblage de la section .text :

0000000000000610 <main>:
 610:	48 83 ec 08          	sub    $0x8,%rsp
 614:	e8 17 01 00 00       	callq  730 <copy>
 619:	31 c0                	xor    %eax,%eax
 61b:	48 83 c4 08          	add    $0x8,%rsp
 61f:	c3                   	retq   

0000000000000620 <_start>:
 620:	31 ed                	xor    %ebp,%ebp
 622:	49 89 d1             	mov    %rdx,%r9
 625:	5e                   	pop    %rsi
 626:	48 89 e2             	mov    %rsp,%rdx
 629:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 62d:	50                   	push   %rax
 62e:	54                   	push   %rsp
 62f:	4c 8d 05 0a 05 00 00 	lea    0x50a(%rip),%r8        # b40 <__libc_csu_fini>
 636:	48 8d 0d 93 04 00 00 	lea    0x493(%rip),%rcx        # ad0 <__libc_csu_init>
 63d:	48 8d 3d cc ff ff ff 	lea    -0x34(%rip),%rdi        # 610 <main>
 644:	ff 15 96 19 20 00    	callq  *0x201996(%rip)        # 201fe0 <__libc_start_main@GLIBC_2.2.5>
 64a:	f4                   	hlt    
 64b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000650 <deregister_tm_clones>:
 650:	48 8d 3d b9 19 20 00 	lea    0x2019b9(%rip),%rdi        # 202010 <__TMC_END__>
 657:	55                   	push   %rbp
 658:	48 8d 05 b1 19 20 00 	lea    0x2019b1(%rip),%rax        # 202010 <__TMC_END__>
 65f:	48 39 f8             	cmp    %rdi,%rax
 662:	48 89 e5             	mov    %rsp,%rbp
 665:	74 19                	je     680 <deregister_tm_clones+0x30>
 667:	48 8b 05 6a 19 20 00 	mov    0x20196a(%rip),%rax        # 201fd8 <_ITM_deregisterTMCloneTable>
 66e:	48 85 c0             	test   %rax,%rax
 671:	74 0d                	je     680 <deregister_tm_clones+0x30>
 673:	5d                   	pop    %rbp
 674:	ff e0                	jmpq   *%rax
 676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 67d:	00 00 00 
 680:	5d                   	pop    %rbp
 681:	c3                   	retq   
 682:	0f 1f 40 00          	nopl   0x0(%rax)
 686:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 68d:	00 00 00 

0000000000000690 <register_tm_clones>:
 690:	48 8d 3d 79 19 20 00 	lea    0x201979(%rip),%rdi        # 202010 <__TMC_END__>
 697:	48 8d 35 72 19 20 00 	lea    0x201972(%rip),%rsi        # 202010 <__TMC_END__>
 69e:	55                   	push   %rbp
 69f:	48 29 fe             	sub    %rdi,%rsi
 6a2:	48 89 e5             	mov    %rsp,%rbp
 6a5:	48 c1 fe 03          	sar    $0x3,%rsi
 6a9:	48 89 f0             	mov    %rsi,%rax
 6ac:	48 c1 e8 3f          	shr    $0x3f,%rax
 6b0:	48 01 c6             	add    %rax,%rsi
 6b3:	48 d1 fe             	sar    %rsi
 6b6:	74 18                	je     6d0 <register_tm_clones+0x40>
 6b8:	48 8b 05 31 19 20 00 	mov    0x201931(%rip),%rax        # 201ff0 <_ITM_registerTMCloneTable>
 6bf:	48 85 c0             	test   %rax,%rax
 6c2:	74 0c                	je     6d0 <register_tm_clones+0x40>
 6c4:	5d                   	pop    %rbp
 6c5:	ff e0                	jmpq   *%rax
 6c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 6ce:	00 00 
 6d0:	5d                   	pop    %rbp
 6d1:	c3                   	retq   
 6d2:	0f 1f 40 00          	nopl   0x0(%rax)
 6d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 6dd:	00 00 00 

00000000000006e0 <__do_global_dtors_aux>:
 6e0:	80 3d 29 19 20 00 00 	cmpb   $0x0,0x201929(%rip)        # 202010 <__TMC_END__>
 6e7:	75 2f                	jne    718 <__do_global_dtors_aux+0x38>
 6e9:	48 83 3d 07 19 20 00 	cmpq   $0x0,0x201907(%rip)        # 201ff8 <__cxa_finalize@GLIBC_2.2.5>
 6f0:	00 
 6f1:	55                   	push   %rbp
 6f2:	48 89 e5             	mov    %rsp,%rbp
 6f5:	74 0c                	je     703 <__do_global_dtors_aux+0x23>
 6f7:	48 8b 3d 0a 19 20 00 	mov    0x20190a(%rip),%rdi        # 202008 <__dso_handle>
 6fe:	e8 fd fe ff ff       	callq  600 <__cxa_finalize@plt>
 703:	e8 48 ff ff ff       	callq  650 <deregister_tm_clones>
 708:	c6 05 01 19 20 00 01 	movb   $0x1,0x201901(%rip)        # 202010 <__TMC_END__>
 70f:	5d                   	pop    %rbp
 710:	c3                   	retq   
 711:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 718:	f3 c3                	repz retq 
 71a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000720 <frame_dummy>:
 720:	55                   	push   %rbp
 721:	48 89 e5             	mov    %rsp,%rbp
 724:	5d                   	pop    %rbp
 725:	e9 66 ff ff ff       	jmpq   690 <register_tm_clones>
 72a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000730 <copy>:
 730:	4c 8d 54 24 08       	lea    0x8(%rsp),%r10
 735:	48 83 e4 c0          	and    $0xffffffffffffffc0,%rsp
 739:	62 f1 7d 28 ef c0    	vpxord %ymm0,%ymm0,%ymm0
 73f:	41 ff 72 f8          	pushq  -0x8(%r10)
 743:	55                   	push   %rbp
 744:	48 89 e5             	mov    %rsp,%rbp
 747:	41 56                	push   %r14
 749:	41 55                	push   %r13
 74b:	41 54                	push   %r12
 74d:	41 52                	push   %r10
 74f:	53                   	push   %rbx
 750:	48 81 ec 98 01 00 00 	sub    $0x198,%rsp
 757:	4c 8d 6c 24 07       	lea    0x7(%rsp),%r13
 75c:	c5 f8 29 45 80       	vmovaps %xmm0,-0x80(%rbp)
 761:	49 c1 ed 03          	shr    $0x3,%r13
 765:	c5 f8 29 45 90       	vmovaps %xmm0,-0x70(%rbp)
 76a:	4c 89 ea             	mov    %r13,%rdx
 76d:	4e 8d 24 ed 00 00 00 	lea    0x0(,%r13,8),%r12
 774:	00 
 775:	c5 f8 29 45 a0       	vmovaps %xmm0,-0x60(%rbp)
 77a:	48 f7 da             	neg    %rdx
 77d:	c5 f8 29 45 b0       	vmovaps %xmm0,-0x50(%rbp)
 782:	62 f1 7d 08 ef c0    	vpxord %xmm0,%xmm0,%xmm0
 788:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 78f:	00 00 
 791:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 795:	31 c0                	xor    %eax,%eax
 797:	83 e2 07             	and    $0x7,%edx
 79a:	62 f1 fd 28 7f 85 50 	vmovdqa64 %ymm0,-0xb0(%rbp)
 7a1:	ff ff ff 
 7a4:	0f 84 c6 02 00 00    	je     a70 <copy+0x340>
 7aa:	48 83 fa 01          	cmp    $0x1,%rdx
 7ae:	4a c7 04 ed 00 00 00 	movq   $0x0,0x0(,%r13,8)
 7b5:	00 00 00 00 00 
 7ba:	0f 84 98 02 00 00    	je     a58 <copy+0x328>
 7c0:	48 83 fa 02          	cmp    $0x2,%rdx
 7c4:	4a c7 04 ed 08 00 00 	movq   $0x1,0x8(,%r13,8)
 7cb:	00 01 00 00 00 
 7d0:	0f 84 aa 02 00 00    	je     a80 <copy+0x350>
 7d6:	48 83 fa 03          	cmp    $0x3,%rdx
 7da:	4a c7 04 ed 10 00 00 	movq   $0x2,0x10(,%r13,8)
 7e1:	00 02 00 00 00 
 7e6:	0f 84 a4 02 00 00    	je     a90 <copy+0x360>
 7ec:	48 83 fa 04          	cmp    $0x4,%rdx
 7f0:	4a c7 04 ed 18 00 00 	movq   $0x3,0x18(,%r13,8)
 7f7:	00 03 00 00 00 
 7fc:	0f 84 40 02 00 00    	je     a42 <copy+0x312>
 802:	48 83 fa 05          	cmp    $0x5,%rdx
 806:	4a c7 04 ed 20 00 00 	movq   $0x4,0x20(,%r13,8)
 80d:	00 04 00 00 00 
 812:	0f 84 87 02 00 00    	je     a9f <copy+0x36f>
 818:	48 83 fa 07          	cmp    $0x7,%rdx
 81c:	4a c7 04 ed 28 00 00 	movq   $0x5,0x28(,%r13,8)
 823:	00 05 00 00 00 
 828:	0f 85 80 02 00 00    	jne    aae <copy+0x37e>
 82e:	4a c7 04 ed 30 00 00 	movq   $0x6,0x30(,%r13,8)
 835:	00 06 00 00 00 
 83a:	b9 1a 00 00 00       	mov    $0x1a,%ecx
 83f:	b8 07 00 00 00       	mov    $0x7,%eax
 844:	be 21 00 00 00       	mov    $0x21,%esi
 849:	62 f2 fd 48 7c c0    	vpbroadcastq %rax,%zmm0
 84f:	48 29 d6             	sub    %rdx,%rsi
 852:	49 8d 14 d4          	lea    (%r12,%rdx,8),%rdx
 856:	48 89 f7             	mov    %rsi,%rdi
 859:	62 f1 fd 48 d4 0d 9d 	vpaddq 0x39d(%rip),%zmm0,%zmm1        # c00 <_IO_stdin_used+0x80>
 860:	03 00 00 
 863:	48 c1 ef 03          	shr    $0x3,%rdi
 867:	62 f1 fd 48 7f 0a    	vmovdqa64 %zmm1,(%rdx)
 86d:	62 f1 fd 48 d4 0d c9 	vpaddq 0x3c9(%rip),%zmm0,%zmm1        # c40 <_IO_stdin_used+0xc0>
 874:	03 00 00 
 877:	48 83 ff 04          	cmp    $0x4,%rdi
 87b:	62 f1 fd 48 7f 4a 01 	vmovdqa64 %zmm1,0x40(%rdx)
 882:	62 f1 fd 48 d4 0d f4 	vpaddq 0x3f4(%rip),%zmm0,%zmm1        # c80 <_IO_stdin_used+0x100>
 889:	03 00 00 
 88c:	62 f1 fd 48 d4 05 2a 	vpaddq 0x42a(%rip),%zmm0,%zmm0        # cc0 <_IO_stdin_used+0x140>
 893:	04 00 00 
 896:	62 f1 fd 48 7f 42 02 	vmovdqa64 %zmm0,0x80(%rdx)
 89d:	75 07                	jne    8a6 <copy+0x176>
 89f:	62 f1 fd 48 7f 4a 03 	vmovdqa64 %zmm1,0xc0(%rdx)
 8a6:	48 89 f7             	mov    %rsi,%rdi
 8a9:	48 89 ca             	mov    %rcx,%rdx
 8ac:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
 8b0:	48 01 f8             	add    %rdi,%rax
 8b3:	48 29 fa             	sub    %rdi,%rdx
 8b6:	48 39 fe             	cmp    %rdi,%rsi
 8b9:	74 58                	je     913 <copy+0x1e3>
 8bb:	48 83 fa 01          	cmp    $0x1,%rdx
 8bf:	49 89 04 c4          	mov    %rax,(%r12,%rax,8)
 8c3:	48 8d 48 01          	lea    0x1(%rax),%rcx
 8c7:	74 4a                	je     913 <copy+0x1e3>
 8c9:	48 83 fa 02          	cmp    $0x2,%rdx
 8cd:	49 89 0c cc          	mov    %rcx,(%r12,%rcx,8)
 8d1:	48 8d 48 02          	lea    0x2(%rax),%rcx
 8d5:	74 3c                	je     913 <copy+0x1e3>
 8d7:	48 83 fa 03          	cmp    $0x3,%rdx
 8db:	49 89 0c cc          	mov    %rcx,(%r12,%rcx,8)
 8df:	48 8d 48 03          	lea    0x3(%rax),%rcx
 8e3:	74 2e                	je     913 <copy+0x1e3>
 8e5:	48 83 fa 04          	cmp    $0x4,%rdx
 8e9:	49 89 0c cc          	mov    %rcx,(%r12,%rcx,8)
 8ed:	48 8d 48 04          	lea    0x4(%rax),%rcx
 8f1:	74 20                	je     913 <copy+0x1e3>
 8f3:	48 83 fa 05          	cmp    $0x5,%rdx
 8f7:	49 89 0c cc          	mov    %rcx,(%r12,%rcx,8)
 8fb:	48 8d 48 05          	lea    0x5(%rax),%rcx
 8ff:	74 12                	je     913 <copy+0x1e3>
 901:	48 83 c0 06          	add    $0x6,%rax
 905:	48 83 fa 06          	cmp    $0x6,%rdx
 909:	49 89 0c cc          	mov    %rcx,(%r12,%rcx,8)
 90d:	74 04                	je     913 <copy+0x1e3>
 90f:	49 89 04 c4          	mov    %rax,(%r12,%rax,8)
 913:	48 8d 3d 6a 02 00 00 	lea    0x26a(%rip),%rdi        # b84 <_IO_stdin_used+0x4>
 91a:	c5 f8 77             	vzeroupper 
 91d:	4c 8d 35 6c 02 00 00 	lea    0x26c(%rip),%r14        # b90 <_IO_stdin_used+0x10>
 924:	31 db                	xor    %ebx,%ebx
 926:	e8 a5 fc ff ff       	callq  5d0 <puts@plt>
 92b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
 930:	49 8b 0c dc          	mov    (%r12,%rbx,8),%rcx
 934:	89 da                	mov    %ebx,%edx
 936:	31 c0                	xor    %eax,%eax
 938:	4c 89 f6             	mov    %r14,%rsi
 93b:	bf 01 00 00 00       	mov    $0x1,%edi
 940:	48 83 c3 01          	add    $0x1,%rbx
 944:	e8 a7 fc ff ff       	callq  5f0 <__printf_chk@plt>
 949:	48 83 fb 08          	cmp    $0x8,%rbx
 94d:	75 e1                	jne    930 <copy+0x200>
 94f:	48 8d 35 46 02 00 00 	lea    0x246(%rip),%rsi        # b9c <_IO_stdin_used+0x1c>
 956:	ba 03 00 00 00       	mov    $0x3,%edx
 95b:	bf 01 00 00 00       	mov    $0x1,%edi
 960:	31 c0                	xor    %eax,%eax
 962:	4c 8d 25 27 02 00 00 	lea    0x227(%rip),%r12        # b90 <_IO_stdin_used+0x10>
 969:	31 db                	xor    %ebx,%ebx
 96b:	e8 80 fc ff ff       	callq  5f0 <__printf_chk@plt>
 970:	62 b1 fe 08 6f 04 ed 	vmovdqu64 0x0(,%r13,8),%xmm0
 977:	00 00 00 00 
 97b:	48 8d 3d 2c 02 00 00 	lea    0x22c(%rip),%rdi        # bae <_IO_stdin_used+0x2e>
 982:	c5 f8 29 45 80       	vmovaps %xmm0,-0x80(%rbp)
 987:	62 b1 fe 08 6f 04 ed 	vmovdqu64 0x10(,%r13,8),%xmm0
 98e:	10 00 00 00 
 992:	c5 f8 29 45 90       	vmovaps %xmm0,-0x70(%rbp)
 997:	62 b1 fe 08 6f 04 ed 	vmovdqu64 0x20(,%r13,8),%xmm0
 99e:	20 00 00 00 
 9a2:	c5 f8 29 45 a0       	vmovaps %xmm0,-0x60(%rbp)
 9a7:	62 b1 fe 08 6f 04 ed 	vmovdqu64 0x30(,%r13,8),%xmm0
 9ae:	30 00 00 00 
 9b2:	4c 8d 6d 80          	lea    -0x80(%rbp),%r13
 9b6:	c5 f8 29 45 b0       	vmovaps %xmm0,-0x50(%rbp)
 9bb:	e8 10 fc ff ff       	callq  5d0 <puts@plt>
 9c0:	89 da                	mov    %ebx,%edx
 9c2:	31 c0                	xor    %eax,%eax
 9c4:	4c 89 e6             	mov    %r12,%rsi
 9c7:	bf 01 00 00 00       	mov    $0x1,%edi
 9cc:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
 9d1:	48 83 c3 01          	add    $0x1,%rbx
 9d5:	e8 16 fc ff ff       	callq  5f0 <__printf_chk@plt>
 9da:	48 83 fb 08          	cmp    $0x8,%rbx
 9de:	75 e0                	jne    9c0 <copy+0x290>
 9e0:	48 8d 3d d4 01 00 00 	lea    0x1d4(%rip),%rdi        # bbb <_IO_stdin_used+0x3b>
 9e7:	4c 8d ad 50 ff ff ff 	lea    -0xb0(%rbp),%r13
 9ee:	4c 8d 25 9b 01 00 00 	lea    0x19b(%rip),%r12        # b90 <_IO_stdin_used+0x10>
 9f5:	31 db                	xor    %ebx,%ebx
 9f7:	e8 d4 fb ff ff       	callq  5d0 <puts@plt>
 9fc:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
 a01:	89 da                	mov    %ebx,%edx
 a03:	31 c0                	xor    %eax,%eax
 a05:	4c 89 e6             	mov    %r12,%rsi
 a08:	bf 01 00 00 00       	mov    $0x1,%edi
 a0d:	48 83 c3 01          	add    $0x1,%rbx
 a11:	e8 da fb ff ff       	callq  5f0 <__printf_chk@plt>
 a16:	48 83 fb 04          	cmp    $0x4,%rbx
 a1a:	75 e0                	jne    9fc <copy+0x2cc>
 a1c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
 a20:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
 a27:	00 00 
 a29:	0f 85 8e 00 00 00    	jne    abd <copy+0x38d>
 a2f:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
 a33:	5b                   	pop    %rbx
 a34:	41 5a                	pop    %r10
 a36:	41 5c                	pop    %r12
 a38:	41 5d                	pop    %r13
 a3a:	41 5e                	pop    %r14
 a3c:	5d                   	pop    %rbp
 a3d:	49 8d 62 f8          	lea    -0x8(%r10),%rsp
 a41:	c3                   	retq   
 a42:	b8 04 00 00 00       	mov    $0x4,%eax
 a47:	b9 1d 00 00 00       	mov    $0x1d,%ecx
 a4c:	e9 f3 fd ff ff       	jmpq   844 <copy+0x114>
 a51:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 a58:	b9 20 00 00 00       	mov    $0x20,%ecx
 a5d:	b8 01 00 00 00       	mov    $0x1,%eax
 a62:	e9 dd fd ff ff       	jmpq   844 <copy+0x114>
 a67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 a6e:	00 00 
 a70:	b9 21 00 00 00       	mov    $0x21,%ecx
 a75:	31 c0                	xor    %eax,%eax
 a77:	e9 c8 fd ff ff       	jmpq   844 <copy+0x114>
 a7c:	0f 1f 40 00          	nopl   0x0(%rax)
 a80:	b8 02 00 00 00       	mov    $0x2,%eax
 a85:	b9 1f 00 00 00       	mov    $0x1f,%ecx
 a8a:	e9 b5 fd ff ff       	jmpq   844 <copy+0x114>
 a8f:	90                   	nop
 a90:	b8 03 00 00 00       	mov    $0x3,%eax
 a95:	b9 1e 00 00 00       	mov    $0x1e,%ecx
 a9a:	e9 a5 fd ff ff       	jmpq   844 <copy+0x114>
 a9f:	b8 05 00 00 00       	mov    $0x5,%eax
 aa4:	b9 1c 00 00 00       	mov    $0x1c,%ecx
 aa9:	e9 96 fd ff ff       	jmpq   844 <copy+0x114>
 aae:	b9 1b 00 00 00       	mov    $0x1b,%ecx
 ab3:	b8 06 00 00 00       	mov    $0x6,%eax
 ab8:	e9 87 fd ff ff       	jmpq   844 <copy+0x114>
 abd:	e8 1e fb ff ff       	callq  5e0 <__stack_chk_fail@plt>
 ac2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 ac9:	00 00 00 
 acc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ad0 <__libc_csu_init>:
 ad0:	41 57                	push   %r15
 ad2:	41 56                	push   %r14
 ad4:	49 89 d7             	mov    %rdx,%r15
 ad7:	41 55                	push   %r13
 ad9:	41 54                	push   %r12
 adb:	4c 8d 25 c6 12 20 00 	lea    0x2012c6(%rip),%r12        # 201da8 <__frame_dummy_init_array_entry>
 ae2:	55                   	push   %rbp
 ae3:	48 8d 2d c6 12 20 00 	lea    0x2012c6(%rip),%rbp        # 201db0 <__init_array_end>
 aea:	53                   	push   %rbx
 aeb:	41 89 fd             	mov    %edi,%r13d
 aee:	49 89 f6             	mov    %rsi,%r14
 af1:	4c 29 e5             	sub    %r12,%rbp
 af4:	48 83 ec 08          	sub    $0x8,%rsp
 af8:	48 c1 fd 03          	sar    $0x3,%rbp
 afc:	e8 9f fa ff ff       	callq  5a0 <_init>
 b01:	48 85 ed             	test   %rbp,%rbp
 b04:	74 20                	je     b26 <__libc_csu_init+0x56>
 b06:	31 db                	xor    %ebx,%ebx
 b08:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 b0f:	00 
 b10:	4c 89 fa             	mov    %r15,%rdx
 b13:	4c 89 f6             	mov    %r14,%rsi
 b16:	44 89 ef             	mov    %r13d,%edi
 b19:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 b1d:	48 83 c3 01          	add    $0x1,%rbx
 b21:	48 39 dd             	cmp    %rbx,%rbp
 b24:	75 ea                	jne    b10 <__libc_csu_init+0x40>
 b26:	48 83 c4 08          	add    $0x8,%rsp
 b2a:	5b                   	pop    %rbx
 b2b:	5d                   	pop    %rbp
 b2c:	41 5c                	pop    %r12
 b2e:	41 5d                	pop    %r13
 b30:	41 5e                	pop    %r14
 b32:	41 5f                	pop    %r15
 b34:	c3                   	retq   
 b35:	90                   	nop
 b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 b3d:	00 00 00 

0000000000000b40 <__libc_csu_fini>:
 b40:	f3 c3                	repz retq 

Déassemblage de la section .fini :

0000000000000b44 <_fini>:
 b44:	48 83 ec 08          	sub    $0x8,%rsp
 b48:	48 83 c4 08          	add    $0x8,%rsp
 b4c:	c3                   	retq   
