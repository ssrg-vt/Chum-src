	.intel_syntax noprefix

	.section	.text
	.align	16
	.globl main
	.type main, @function
main:
	popcnt ebx, ecx
	ret
	