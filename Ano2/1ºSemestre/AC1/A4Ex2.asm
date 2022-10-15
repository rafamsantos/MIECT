# mapa de registos
# p : $t0
# pultimo :   $t1
# *p :  $t2
# soma : $t3

	.data
	.eqv read_string, 8
	.eqv print_int10 , 1
str: 	.space 20
	.text
	.globl main
	
main :	la $a0 , str
	li $a1 , 20
	li $v0 , read_string
	syscall
	
	la $t1 , str
	
while : lb $t2 , 0($t1)
	beq $t2 , 0 , endw
	blt $t2 , '0' , endif
	bgt $t2 , '9' , endif
	addiu $t0, $t0 , 1 #num++
	
endif:	addiu $t1 , $t1 , 1 #p++
	j while # recomeça o ciclo while
	
	
endw:	or $a0 , $0 , $t0
	ori $v0 , $0 , print_int10
	syscall
	jr $ra 
