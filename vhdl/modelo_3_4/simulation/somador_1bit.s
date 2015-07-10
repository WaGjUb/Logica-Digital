	.file	"somador_1bit.vhd"
	.section	.rodata
	.type	_UI00000000, @object
	.size	_UI00000000, 21
_UI00000000:
	.byte	115
	.byte	114
	.byte	99
	.byte	47
	.byte	115
	.byte	111
	.byte	109
	.byte	97
	.byte	100
	.byte	111
	.byte	114
	.byte	95
	.byte	49
	.byte	98
	.byte	105
	.byte	116
	.byte	46
	.byte	118
	.byte	104
	.byte	100
	.byte	0
	.type	work__somador_1bit__a__RTISTR, @object
	.size	work__somador_1bit__a__RTISTR, 2
work__somador_1bit__a__RTISTR:
	.byte	97
	.byte	0
.globl work__somador_1bit__a__RTI
	.align 4
	.type	work__somador_1bit__a__RTI, @object
	.size	work__somador_1bit__a__RTI, 16
work__somador_1bit__a__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__somador_1bit__a__RTISTR
	.long	8
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__somador_1bit__b__RTISTR, @object
	.size	work__somador_1bit__b__RTISTR, 2
work__somador_1bit__b__RTISTR:
	.byte	98
	.byte	0
.globl work__somador_1bit__b__RTI
	.align 4
	.type	work__somador_1bit__b__RTI, @object
	.size	work__somador_1bit__b__RTI, 16
work__somador_1bit__b__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__somador_1bit__b__RTISTR
	.long	12
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__somador_1bit__cin__RTISTR, @object
	.size	work__somador_1bit__cin__RTISTR, 4
work__somador_1bit__cin__RTISTR:
	.byte	99
	.byte	105
	.byte	110
	.byte	0
.globl work__somador_1bit__cin__RTI
	.align 4
	.type	work__somador_1bit__cin__RTI, @object
	.size	work__somador_1bit__cin__RTI, 16
work__somador_1bit__cin__RTI:
	.byte	16
	.byte	1
	.byte	5
	.byte	0
	.long	work__somador_1bit__cin__RTISTR
	.long	16
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__somador_1bit__s__RTISTR, @object
	.size	work__somador_1bit__s__RTISTR, 2
work__somador_1bit__s__RTISTR:
	.byte	115
	.byte	0
.globl work__somador_1bit__s__RTI
	.align 4
	.type	work__somador_1bit__s__RTI, @object
	.size	work__somador_1bit__s__RTI, 16
work__somador_1bit__s__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__somador_1bit__s__RTISTR
	.long	20
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__somador_1bit__cout__RTISTR, @object
	.size	work__somador_1bit__cout__RTISTR, 5
work__somador_1bit__cout__RTISTR:
	.byte	99
	.byte	111
	.byte	117
	.byte	116
	.byte	0
.globl work__somador_1bit__cout__RTI
	.align 4
	.type	work__somador_1bit__cout__RTI, @object
	.size	work__somador_1bit__cout__RTI, 16
work__somador_1bit__cout__RTI:
	.byte	16
	.byte	1
	.byte	3
	.byte	0
	.long	work__somador_1bit__cout__RTISTR
	.long	24
	.long	ieee__std_logic_1164__std_logic__RTI
	.type	work__somador_1bit__RTISTR, @object
	.size	work__somador_1bit__RTISTR, 13
work__somador_1bit__RTISTR:
	.byte	115
	.byte	111
	.byte	109
	.byte	97
	.byte	100
	.byte	111
	.byte	114
	.byte	95
	.byte	49
	.byte	98
	.byte	105
	.byte	116
	.byte	0
	.align 4
	.type	work__somador_1bit__RTIARRAY, @object
	.size	work__somador_1bit__RTIARRAY, 24
work__somador_1bit__RTIARRAY:
	.long	work__somador_1bit__a__RTI
	.long	work__somador_1bit__b__RTI
	.long	work__somador_1bit__cin__RTI
	.long	work__somador_1bit__s__RTI
	.long	work__somador_1bit__cout__RTI
	.long	0
.globl work__somador_1bit__RTI
	.align 4
	.type	work__somador_1bit__RTI, @object
	.size	work__somador_1bit__RTI, 28
work__somador_1bit__RTI:
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.long	work__somador_1bit__RTISTR
	.long	0
	.long	work__RTI
	.long	28
	.long	5
	.long	work__somador_1bit__RTIARRAY
	.text
.globl work__somador_1bit__ELAB
	.type	work__somador_1bit__ELAB, @function
work__somador_1bit__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movzbl	ieee__std_logic_1164__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L2
	call	ieee__std_logic_1164__ELAB_BODY
.L2:
	movzbl	ieee__std_logic_unsigned__ELABORATED, %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L3
	call	ieee__std_logic_unsigned__ELAB_BODY
.L3:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$work__somador_1bit__a__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$work__somador_1bit__b__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movl	$work__somador_1bit__cin__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -8(%ebp)
	movl	$0, %eax
	movl	-8(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-8(%ebp), %eax
	movl	$work__somador_1bit__s__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -4(%ebp)
	movl	$0, %eax
	movl	-4(%ebp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, (%esp)
	call	__ghdl_signal_init_e8
	movl	-4(%ebp), %eax
	movl	$work__somador_1bit__cout__RTI, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_merge_rti
	leave
	ret
	.size	work__somador_1bit__ELAB, .-work__somador_1bit__ELAB
.globl work__somador_1bit__ARCH__logica__INSTSIZE
	.section	.rodata
	.align 4
	.type	work__somador_1bit__ARCH__logica__INSTSIZE, @object
	.size	work__somador_1bit__ARCH__logica__INSTSIZE, 4
work__somador_1bit__ARCH__logica__INSTSIZE:
	.long	32
	.type	work__somador_1bit__ARCH__logica__P0__RTISTR, @object
	.size	work__somador_1bit__ARCH__logica__P0__RTISTR, 3
work__somador_1bit__ARCH__logica__P0__RTISTR:
	.byte	80
	.byte	48
	.byte	0
	.align 4
	.type	work__somador_1bit__ARCH__logica__P0__RTIARRAY, @object
	.size	work__somador_1bit__ARCH__logica__P0__RTIARRAY, 4
work__somador_1bit__ARCH__logica__P0__RTIARRAY:
	.zero	4
.globl work__somador_1bit__ARCH__logica__P0__RTI
	.align 4
	.type	work__somador_1bit__ARCH__logica__P0__RTI, @object
	.size	work__somador_1bit__ARCH__logica__P0__RTI, 28
work__somador_1bit__ARCH__logica__P0__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__somador_1bit__ARCH__logica__P0__RTISTR
	.long	28
	.long	work__somador_1bit__ARCH__logica__RTI
	.long	1
	.long	0
	.long	work__somador_1bit__ARCH__logica__P0__RTIARRAY
	.type	work__somador_1bit__ARCH__logica__P1__RTISTR, @object
	.size	work__somador_1bit__ARCH__logica__P1__RTISTR, 3
work__somador_1bit__ARCH__logica__P1__RTISTR:
	.byte	80
	.byte	49
	.byte	0
	.align 4
	.type	work__somador_1bit__ARCH__logica__P1__RTIARRAY, @object
	.size	work__somador_1bit__ARCH__logica__P1__RTIARRAY, 4
work__somador_1bit__ARCH__logica__P1__RTIARRAY:
	.zero	4
.globl work__somador_1bit__ARCH__logica__P1__RTI
	.align 4
	.type	work__somador_1bit__ARCH__logica__P1__RTI, @object
	.size	work__somador_1bit__ARCH__logica__P1__RTI, 28
work__somador_1bit__ARCH__logica__P1__RTI:
	.byte	6
	.byte	2
	.byte	0
	.byte	0
	.long	work__somador_1bit__ARCH__logica__P1__RTISTR
	.long	29
	.long	work__somador_1bit__ARCH__logica__RTI
	.long	1
	.long	0
	.long	work__somador_1bit__ARCH__logica__P1__RTIARRAY
	.type	work__somador_1bit__ARCH__logica__RTISTR, @object
	.size	work__somador_1bit__ARCH__logica__RTISTR, 7
work__somador_1bit__ARCH__logica__RTISTR:
	.byte	108
	.byte	111
	.byte	103
	.byte	105
	.byte	99
	.byte	97
	.byte	0
	.align 4
	.type	work__somador_1bit__ARCH__logica__RTIARRAY, @object
	.size	work__somador_1bit__ARCH__logica__RTIARRAY, 12
work__somador_1bit__ARCH__logica__RTIARRAY:
	.long	work__somador_1bit__ARCH__logica__P0__RTI
	.long	work__somador_1bit__ARCH__logica__P1__RTI
	.long	0
.globl work__somador_1bit__ARCH__logica__RTI
	.align 4
	.type	work__somador_1bit__ARCH__logica__RTI, @object
	.size	work__somador_1bit__ARCH__logica__RTI, 28
work__somador_1bit__ARCH__logica__RTI:
	.byte	5
	.byte	1
	.byte	0
	.byte	0
	.long	work__somador_1bit__ARCH__logica__RTISTR
	.long	0
	.long	work__somador_1bit__RTI
	.long	32
	.long	2
	.long	work__somador_1bit__ARCH__logica__RTIARRAY
	.text
	.type	work__somador_1bit__ARCH__logica__P0__PROC, @function
work__somador_1bit__ARCH__logica__P0__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	addl	$28, %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__xorO1
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__xorO1
	movl	%eax, %edx
	movl	-4(%ebp), %eax
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L6
	movb	$1, -5(%ebp)
	jmp	.L7
.L6:
	movl	-12(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-4(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -5(%ebp)
.L7:
	movl	-12(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-5(%ebp), %al
	testb	%al, %al
	je	.L9
	movl	-12(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-12(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L9:
	leave
	ret
	.size	work__somador_1bit__ARCH__logica__P0__PROC, .-work__somador_1bit__ARCH__logica__P0__PROC
	.type	work__somador_1bit__ARCH__logica__P1__PROC, @function
work__somador_1bit__ARCH__logica__P1__PROC:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	addl	$29, %eax
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__andO1
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__andO1
	movl	%eax, %esi
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	movzbl	(%eax), %eax
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__andO1
	movl	%esi, %edx
	movb	%dl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__xorO1
	movb	%bl, 4(%esp)
	movb	%al, (%esp)
	call	ieee__std_logic_1164__xorO1
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movb	%dl, (%eax)
	movl	-20(%ebp), %eax
	movzbl	46(%eax), %eax
	testb	%al, %al
	je	.L11
	movb	$1, -13(%ebp)
	jmp	.L12
.L11:
	movl	-20(%ebp), %eax
	movzbl	(%eax), %edx
	movl	-12(%ebp), %eax
	movzbl	(%eax), %eax
	cmpb	%al, %dl
	setne	%al
	movb	%al, -13(%ebp)
.L12:
	movl	-20(%ebp), %eax
	movl	40(%eax), %eax
	testl	%eax, %eax
	sete	%al
	andb	-13(%ebp), %al
	testb	%al, %al
	je	.L14
	movl	-20(%ebp), %eax
	movl	__ghdl_signal_active_chain, %edx
	movl	%edx, 40(%eax)
	movl	-20(%ebp), %eax
	movl	%eax, __ghdl_signal_active_chain
.L14:
	addl	$32, %esp
	popl	%ebx
	popl	%esi
	popl	%ebp
	ret
	.size	work__somador_1bit__ARCH__logica__P1__PROC, .-work__somador_1bit__ARCH__logica__P1__PROC
.globl work__somador_1bit__ARCH__logica__ELAB
	.type	work__somador_1bit__ARCH__logica__ELAB, @function
work__somador_1bit__ARCH__logica__ELAB:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	8(%ebp), %eax
	movl	$work__somador_1bit__ARCH__logica__RTI, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	work__somador_1bit__ELAB
	movl	-4(%ebp), %eax
	addl	$28, %eax
	movl	$work__somador_1bit__ARCH__logica__P0__PROC, %edx
	movl	-4(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__somador_1bit__ARCH__logica__P0__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-4(%ebp), %eax
	leal	28(%eax), %edx
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	addl	$29, %eax
	movl	$work__somador_1bit__ARCH__logica__P1__PROC, %edx
	movl	-4(%ebp), %ecx
	movl	%eax, 12(%esp)
	movl	$work__somador_1bit__ARCH__logica__P1__RTI, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%ecx, (%esp)
	call	__ghdl_sensitized_process_register
	movl	-4(%ebp), %eax
	leal	29(%eax), %edx
	movl	-4(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	__ghdl_signal_direct_driver
	movl	-4(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	movl	-4(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, (%esp)
	call	__ghdl_process_add_sensitivity
	leave
	ret
	.size	work__somador_1bit__ARCH__logica__ELAB, .-work__somador_1bit__ARCH__logica__ELAB
	.ident	"GCC: (GNU) 4.3.4"
	.section	.note.GNU-stack,"",@progbits
