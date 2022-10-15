#Mapa de registos
# num : $t0
#i : $t1
#str : $t2
#str+1 : $t3
#str[i] : $t4
	
	.data
	.eqv SIZE, 20
	.eqv read_string , 8
	.eqv print_int10 , 1
str:	.space 20
	
	.text
	.globl main
	
main:	la $a0 ,str
	li $a1 , 20
	li $v0 ,read_string
	syscall
	
	li $t0 , 0
	li $t1 , 0
	
	la $t2 ,str #$t2 = str ou &str[0] . str == &str[0]
	
while:	
	addu $t3 , $t3 , $t2 #$t3 = str+i ou &str[i]
	lb $t4 , 0($t3) # $t4 = str[i]

	beq $t4 , '\0' , endw
if:	blt $t4 ,'0', endif
	bgt $t4 ,'9', endif
	addi $t0 , $t0 ,1 # num = num +1
endif:
	addi $t1 , $t1 , 1
	j while # recomeça o ciclo while
	
endw:	or $a0 , $0 , $t0	
	ori $v0 ,$0, print_int10 
	jr $ra
	 