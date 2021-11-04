	.data
	.text 
	.globl main

main:	ori $v0 , $0 , 5
	syscall			# chamada syscall a read_int
	or $t0 , $0 , $v0	# $t0 = bin
	sll $t2 , $t0 , 1	# bin >> 1
	xor $t1 , $t1 ,