#mapa de registos
# a = $t0 
# b = $t1
# i = $t2
# j = $t3
# aux = $t4

	.data
	.eqv SIZE , 25
	.eqv read_int , 5
	.eqv read_string , 8
	.eqv print_string , 4
str1:	.space 25
	.align 2
str2: 	.space 25 
	.align 2

	.text 
	.globl main
	
main:	la $a0 , str1
	li $a1 , SIZE
	li $v0 , read_string		# read_string( str1 , 25 )
	
	li $v0 , read_int
	sw $t0 ,  0($v0)		# a = read_int()
	li $v0 , read_int 
	sw $t1 , 0($v0) 		# b = read_int()
	
	lb $t4 , 0()			# str2[0] = '\0'
	
	addi $t2 , $0 , 0		# i = 0
	addi $t3 , $0 , 0		# j = 0

if: 	ble $t1 , $t0 , endif		# b > a = $t1 > $t0	
while:	
	

endif:	la $a0 , str2
	li $v0 , print_string
	
	
	
	
	