	.file	"hello-O3.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d\t"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movl	$1, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%r12d, %ebp
	movl	$10, %ebx
	.p2align 4,,10
	.p2align 3
.L3:
	movl	%ebp, %esi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	call	printf
	addl	%r12d, %ebp
	subl	$1, %ebx
	jne	.L3
	movl	$10, %edi
	addl	$1, %r12d
	call	putchar
	cmpl	$11, %r12d
	jne	.L2
	popq	%rbx
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (SUSE Linux) 7.3.1 20180323 [gcc-7-branch revision 258812]"
	.section	.note.GNU-stack,"",@progbits
