	.file	"reverse.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	reverse
	.type	reverse, @function
reverse:
	li	a5,1
	ble	a1,a5,.L1
	mv	a5,a0
	addi	a2,a1,-2
	srli	a2,a2,1
	slli	a2,a2,3
	addi	a0,a0,8
	add	a2,a2,a0
	j	.L4
.L3:
	addi	a5,a5,8
	beq	a5,a2,.L1
.L4:
	lw	a4,0(a5)
	lw	a3,4(a5)
	bge	a4,a3,.L3
	sw	a3,0(a5)
	sw	a4,4(a5)
	j	.L3
.L1:
	ret
	.size	reverse, .-reverse
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
