# tabela de resultados
# gray - $t0
# bin - $t2
# mask - $t3

	.data
str1: 	.asciiz "Introduza um numero : "
str2:	.asciiz "\nValor em código de grey : "
str3:	.asciiz "\nValor em binário : "	
	.eqv print_int16 , 34
	.eqv read_int , 5
	.eqv print_string , 4 
	.text
	.globl main
	
main:	la $a0 , str1			# print_string("Introduza um numero : ")
	li $v0 , print_string
	syscall
	
	ori $v0 , $0 , read_int		# read_int()
	syscall
	ori $t0 , $t0 , $v0		# gray = read_int()
	
	sra $t3 , $t0 , 1		# mask = gray >> 1// shift aritmetico à direita de 1 bit
	
	ori $t2 , $t0 , $0		# bin = gray
	
while:	beq $t3 , 0 , endw
	xor $t2 , $t2 , $t3		# bin = bin^mask;
	sra $t3 , $t3 , 1		# mask = mask >> 1 // shift aritmetico à direita
	
endw:	la $a0 , str2
	li $v0 , print_string
	syscall
	
	la $a0 , $t0
	li 4v0 , print_int16
	syscall
