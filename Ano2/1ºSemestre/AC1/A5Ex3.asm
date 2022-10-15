# Mapa de registos
# $t0 : 	p
# $t1 : 	*p
# $t2 : 	lista+SIZE 
# $t3 : 	SIZE-1
# houve_troca : $t4
# i :     	$t5
# lista : 	$t6
# lista + i :	$t7

	.data
	.eqv FALSE , 0
	.eqv TRUE , 1
	.eqv SIZE , 10
	.eqv print_int10, 1
	.eqv read_int , 5
	.eqv print_string ,4
lista: 	.space 40
str1:   .asciiz "Introduza um nº "
str2:   .asciiz "; "
str3:   .asciiz "Conteúdo do array ordenado : \n"
	.text
	.globl main
	
main: 	la $t6 , lista
	li $t2 ,SIZE   		#$t2 = SIZE
	sll $t2 , $t2 , 2	#t2 = SIZE * 4
	addu $t2 , $t2 , $t0	#t2 = lista+SIZE

do:	li $t4 , FALSE
	li $t5 , 0
	
while: 	bge $t5 , SIZE , endw
	sll $t7 , $t5 , 2
	addu $t7 , $t7 , $t6
	lw $t8 , 0($t7)
	lw $t9 , 4($t7)
	
if:	ble $t8, $t9, endif
	sw $t8 , 4($t7)
	sw $t9 , 0($t7)
	li $t4, TRUE
	
endif:  addi $t5 , $t5 ,1
	j while
	
endw: 	beq $t4 , TRUE , do

while:  beq  $t4 , $t4 , TRUE
	
	jr $ra
	
	
	
	
	
	
	
	
	
