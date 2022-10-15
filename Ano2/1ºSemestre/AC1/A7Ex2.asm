# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved) 
	.data
	.text 
	.globl main
	
main: 	li $s0 , 0
	move $s1 , $a0 
	move $a2 , $a1
	
strrev: addiu $sp,$sp,-16		# reserva espaço na stack
 	sw $ra,0($sp) 			# guarda endereço de retorno
 	sw $s0,4($sp) 			# guarda valor dos registos
 	sw $s1,8($sp) 			# $s0, $s1 e $s2
 	sw $s2,12($sp)			#
 	move $s0,$a0 			# registo "callee-saved"
 	move $s1,$a0 			# p1 = str
 	move $s2,$a0 			# p2 = str 
 	
while1:	beq $s2 , '\0' , endw1
	addi $s1 , $s1 , 1 		# p2++
	
endw1:	sub $s2 , $s2 , 1
	j while2

while2: bgt $s1 , $s2 , endw2

endw2:
 
exchange: