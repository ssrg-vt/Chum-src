	.intel_syntax noprefix

	.section	.text
	.align	16
	.globl main
	.type main, @function
main:
	cmovge bx, cx
	ret
	