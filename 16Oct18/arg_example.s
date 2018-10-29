	.file	"arg_example.c"
	.text
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %r10d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%r8d, %r11d
	movl	%r9d, %r8d
	movl	16(%rbp), %eax
	movl	%r10d, %ecx
	movw	%cx, -4(%rbp)
	movl	%edi, %ecx
	movw	%cx, -8(%rbp)
	movl	%esi, %ecx
	movw	%cx, -12(%rbp)
	movw	%dx, -16(%rbp)
	movl	%r11d, %edx
	movw	%dx, -20(%rbp)
	movl	%r8d, %edx
	movw	%dx, -24(%rbp)
	movw	%ax, -28(%rbp)
	movl	$10, %edi
	call	putchar
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$8, %rsp
	pushq	$7
	movl	$6, %r9d
	movl	$5, %r8d
	movl	$4, %ecx
	movl	$3, %edx
	movl	$2, %esi
	movl	$1, %edi
	call	add
	addq	$16, %rsp
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (SUSE Linux) 7.3.1 20180323 [gcc-7-branch revision 258812]"
	.section	.note.GNU-stack,"",@progbits
