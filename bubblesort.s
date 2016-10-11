	.file	"bubblesort.c"
	.text
	.globl	bubblesort
	.type	bubblesort, @function
bubblesort:
.LFB8:
	.cfi_startproc
	movl	$1, %r10d
	jmp	.L2
.L4:
	movslq	%edx, %rax
	leaq	(%rdi,%rax,4), %r8
	movl	(%r8), %ecx
	leaq	4(,%rax,4), %rax
	addq	%rdi, %rax
	movl	(%rax), %r9d
	cmpl	%r9d, %ecx
	jle	.L3
	movl	%r9d, (%r8)
	movl	%ecx, (%rax)
.L3:
	addl	$1, %edx
	jmp	.L5
.L6:
	movl	$0, %edx
.L5:
	leal	-1(%rsi), %eax
	cmpl	%edx, %eax
	jg	.L4
	addl	$1, %r10d
.L2:
	cmpl	%esi, %r10d
	jl	.L6
	movl	$0, %eax
	ret
	.cfi_endproc
.LFE8:
	.size	bubblesort, .-bubblesort
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
