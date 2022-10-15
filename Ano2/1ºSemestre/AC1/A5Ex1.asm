#$t0 -> i
	.data
	.eqv read_int , 5
	.eqv print_str , 4
	.eqv SIZE , 5
	.globl main
	.text
	
main:   
	.data
str:    .asciiz "\n-introduza um numero : " 
	.align 2
	
lista:  .space 20  		# Quantos bytes quero reservar para este array(SIZE*4 , o MARS não aceita expressoes aritmeticas)
	.text
	li $t0 , 0		# i=0
	
while:  bge $t0 , SIZE , endw   #while(i < SIZE)
	la $a0 , str   		#coloca em $a0 o endereço de str
	li $v0 , print_str
	syscall
	
	li $v0 , read_int
	syscall			#tmp = read_int  // tmp -> $v0
	 
	sll $t1 ,$t0, 2 	# int tmp = 1*4   // tmp1 -> $t1
	la $t2 , lista		# int *p = &(lista[0])   // p -> $t2
	addu $t2 , $t2 , $t1	# p += tmp1
	
	sw $v0 ,0($t2) 
	addi $t0 , $t0 , 1      #i++
	j while
	
endw: jr $ra