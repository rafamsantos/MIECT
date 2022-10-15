#$t3 : i
	
	.data
st1: 	.asciiz "String 1"
st2: 	.asciiz	"String 2"
st3: 	.asciiz	"Ola"
	.eqv SIZE , 3
				#precisariamos de .align 2 se foseem inteiros e não Strings
p: 	.word st1, st2, st3

main: 	la    $t0 , p		# $t0 0x100100000
	li    $t1 , 2		# $t1 = 2
	sll   $t1 , $t1, 2	# $t1 = 2 * 4 = 8
	addu  $t1, $t1, $t0	# $t1 = 0x10010008
	lw    $t2,0($t1)	# $t2 = 0x10010022

	
for: 	addiu $t3, $t3, $0	# i=0
	bge $t3, SIZE, endf 	#  se i >= SIZE termina o ciclo for  
	lw $a0 ,0($t1) 
	li $v0 , 
	
	lw $t4 ,0($t1)		
	li $v0 , 11		#print_char(\n)
	syscall	
	
	addi $t3 , $t3 ,1	#i++
			
	
endf : jr $ra			# termina o programa
