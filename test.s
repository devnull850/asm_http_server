
	.section .text
	.globl _start

_start:

	xorl	%eax,%eax
	movw	$0x140,%ax
	subq	%rax,%rsp

	movl	$0x70736572,%eax
	pushq	%rax

	xorl	%eax,%eax
	movb	$2,%al
	movq	%rsp,%rdi
	xorl	%esi,%esi
	xorl	%edx,%edx
	movw	$0xf8aa,%dx
	xorw	$0xffff,%dx
	syscall

	pushq	%rax

	xorl	%eax,%eax
	movl	(%rsp),%edi
	leaq	0x10(%rsp),%rsi
	xorl	%edx,%edx
	movw	$0x138,%dx
	syscall

	xorl	%eax,%eax
	movb	$3,%al
	popq	%rdi
	syscall

	popq	%rax

	xorl	%eax,%eax
	movb	$0x29,%al
	xorl	%edi,%edi
	movb	$2,%dil
	xorl	%esi,%esi
	inc	%esi
	xorl	%edx,%edx
	syscall

	pushq	%rax

	xorl	%eax,%eax
	pushq	%rax
	movl	$0x901ffffd,%eax
	xorw	$0xffff,%ax
	pushq	%rax

	xorl	%eax,%eax
	movb	$0x31,%al
	movl	0x10(%rsp),%edi
	movq	%rsp,%rsi
	xorl	%edx,%edx
	movb	$0x10,%dl
	syscall

	xorl	%eax,%eax
	movb	$0x32,%al
	movl	0x10(%rsp),%edi
	xorl	%esi,%esi
	movb	$4,%sil
	syscall

	xorl	%eax,%eax
	movb	$0x10,%al
	pushq	%rax

.L0:
	xorl	%eax,%eax
	movb	$0x2b,%al
	movl	0x18(%rsp),%edi
	leaq	0x8(%rsp),%rsi	
	movq	%rsp,%rdx
	syscall

	movl	%eax,%edi
	xorl	%eax,%eax
	inc	%eax
	leaq	0x20(%rsp),%rsi
	xorl	%edx,%edx
	movw	$0x138,%dx
	syscall

	jmp	.L0
