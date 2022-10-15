# Mapa de registos
# n_even = $t0
# n_odd = $t1
# p1 = $t2
# p2 = $t3  
	
	.data
	.eqv SIZE , 35 
 	.eqv read_int , 5
	.eqv print_int10 , 1
Arraya:	.space SIZE
	.align 2
Arrayb:	.space SIZE
	.align 2
	.text
	.globl main
	
main:	li $t0 , 0			# n_even = 0
	li $t1 , 0			# n_odd = 0
 	la $t2 , Arraya			# p1 = a 
 	li $t7 , 35 
 	sll $t7 , $t7 , 2
 	addu $t4 , $t2 , $t7		# aux = a + N
for:	bge $t2	, $t4 , endf1		#p1 < a + N
	li $v0 , read_int
	syscall	
	sw $v0,0($t2)			# lê inteiro do teclado
	# or $t2 , $v0 , $0
	addiu $t2 , $t2, 4 		# *p1 = read_int()
	# ori $t2 , $0 , 1		# p1++
	j for
	
	la $t2 , Arraya			# p1 = a
	la $t3 , Arrayb			# p2 = b
	
endf1:	
	bge $t2 , $t4 , endf2		# p1 < ( a + N )
if:	rem $t2 , $t2 , 2		# (*p1 % 2)
	beq $t2 , 0, else 		# (*p % 2 ) != 0 
	addi $t3 ,$t0 , 1		# *p2++
	lw $t3 , 0($t2) 			# *p++ = *p1
	addi $t1 , $t1 , 1		# n_odd++
	j endf1				# retorna ao ciclo for

else:	addi $t0 , $t0 , 1		# n_even++
	j endf1

for2:  	la $t2 , Arrayb			# p2 = b
	add $t5 , $t2 , $t1		# b + n_odd
	bge $t2 , $t5 , endf2		# p2 < ( b + n_odd )
	lw $a0 , 0($t3)			# valor de *p2 armazenado em $a0
	ori $v0 , $0 , print_int10	# print_int10( *p2 ) 		
	syscall
	j for2
	
endf2 : 
	jr $ra   
		
		
	
