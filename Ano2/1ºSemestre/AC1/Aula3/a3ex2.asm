# tabela de resultados
# value - $t0
# bit - $t1 
# i - $t2
	.data
str1:	.asciiz "Introduza um número : "
str2:	.asciiz "\nO valor em binário é : "
	.eqv print_string ,4
	.eqv read_int ,5
	.eqv print_char , 11
	.text 
	.globl main
	
main:	li $t2 , 0		# i = 0
	
	la $a0 , str1			# print_string("Introduza um numero : ")
	ori $v0 , $0 , print_string
	syscall
	
	ori $v0 , $0 , read_int
	syscall
	or $t0 , $0 , $v0		# value = read_int()
	
	la $a0 , str2			# print_string("\nO valor em binario é : ")
	ori $v0 , $0 , print_string
	syscall
	
for:	bge $t2 , 32, endf		# for(i = 0 , i<32 , i++)
	li $t3 , 0x80000000
	and $t1 , $t0 , $t3
	#rem $t3 , $t2 , 4		# $t3 = i%4 - resto da divisão

if1:    bne $t3 , $0 , if2
	li $a0 , ' '			# 32 because is the ascii code of space
	li $v0 , print_char
	syscall
	andi $t1 , $t0 , 0x80000000	# bit = value & 0x80000000 // Isola o bit 31
	
	
if2:	
	beq $t1 , $0 , else
	
	li $a0 , 49			# 49 é o código ascii de '1'
	ori $v0 , $0 , print_char	# print_char('1')
	syscall
	j endif

else:	li $a0 ,48			# 48 é o código ascii de '0'
	ori $v0 , $0 , print_char	# print_char('0')
	syscall

endif:	sll $t0 , $t0 , 1		# shift left de 1 bit
	addi $t2 , $t2 , 1		# i++
	j for

endf:	jr $ra







	 
