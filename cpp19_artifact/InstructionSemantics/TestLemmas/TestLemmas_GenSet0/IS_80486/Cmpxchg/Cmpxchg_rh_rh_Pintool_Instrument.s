	.intel_syntax noprefix

	.section	.text
	.align	16
	.globl main
	.type main, @function
main:
	cmpxchg bh, ch
	ret
	