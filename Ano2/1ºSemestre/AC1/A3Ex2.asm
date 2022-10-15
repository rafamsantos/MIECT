# mapa de registos :
# $t0 - value
# $t1 - bit 
# $t2 - i
	.data
str1 :  .asciiz "Introduza um numero "
str2 :  .asciiz "Valor em binario "
	.eqv print_string , 4
	.eqv read_int ,5
	.eqv print_char ,11
	.text
	.globl main

main :  la $a0 , str1 
	li $v0, print_string
	syscall
	
	ori $v0 , $0 , read_int
	syscall
	or $t0 , $v0 , $0 # value = read_int()
	
	la $a0 ,str2
	li $v0 , print_string
	syscall
	li $t2 , 0     # i = 0 

for : 	bge $t2 , 32 , endfor # while(i < 32)
	andi $t1 , $t0 , 0x80000000
	beq  $t1 , $0 , else
	
	
else :  
	


	
endfor: jr $ra
	
