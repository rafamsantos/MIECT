	.data
str1:	.asciiz "Introduza 2 numeros : "
str2:	.asciiz "A soma dos 2 numeros e' : "
	.eqv print_string, 4
	.eqv read_int , 5
	.eqv print_int10 ,1
	.text 
	.globl main

main:	la $a0 , str1
	ori $v0 , $0 , print_string	# print_string("Introduza 2 numeros")
	syscall
	
	ori $v0 , $0 , read_int
	syscall
	or $t0 , $0 , $v0	# a = $t0 = read_int()
	
	ori $v0 , $0 , read_int
	syscall 
	or $t1 , $0 , $v0	# b = $t1 = read_int()
	
	add $t3 , $t0 , $t1	# a+b
	
	la $a0 , str2
	ori $v0 , $0 , print_string	# print_string("A soma dos dois numeros e': ")
	syscall
	
	or $a0 , $0 , $t3
	ori $v0 , $0 , print_int10
	syscall
	
	jr $ra
	
	
	 