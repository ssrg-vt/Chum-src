	.intel_syntax noprefix

	.section	.text
	.align	16
	.globl main
	.type main, @function
main:
	cmovc ebx, ecx
	ret
	