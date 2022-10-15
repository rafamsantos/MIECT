# Mapa de registos
# i : $t0
# v : $t1
# val : $t2
# val[i + SIZE/2] : $t3
# val[i] : $t4
# aux : $t5
# val[i++] : $t6
# aux2 : $t7
	.data
	.eqv print_string,4
	.eqv print_int10,1
	.eqv print_char,11
	.eqv SIZE,8				# define SIZE 8
val:	.word 8,4,15,-1987,327,-9,27,16		# static int val[SIZE],;
str1: 	.asciiz "Result is: "
	.text
	.globl main
main:
	li $t7,SIZE				#
	srl $t7,$t7,1				# $t5 = SIZE/2;
	li $t0,0 				# i = 0;
	la $t2,val				# $t2 = val[];
do:
	sll $t4,$t0,2
	addu $t4,$t4,$t2			# $t4 = &val[i];
	lw $t1,0($t4)				# v = val[i];
	li $t3,SIZE				# 
	sll $t3,$t3,1				# 
	addu $t3,$t3,$t4			# $t3 = &val[i + SIZE/2];
	lw $t5,0($t3)				# $t5 = val[i + SIZE/2];
	sw $t1,0($t3)				# val[i] = &val[i + SIZE/2];
	sw $t5,0($t4)
	addi $t0,$t0,1				# ++i;
	bgt $t7,$t0,do				# while(SIZE/2 > ++i)
	
	la $a0,str1
	li $v0,print_string
	syscall					# print_string("Result is: ");
	li $t0,0				# i = 0;
	li $t5,SIZE
do2:	
	sll $t4,$t0,2
	addu $t4,$t4,$t2
	lw $a0,0($t4)
	li $v0,print_int10			#
	syscall					# print_int10(val[i++]);
	addiu $t0,$t0,1				# i++;
	li $a0,','				# 
	li $v0,print_char			#
	syscall					# print_char(',');
	blt $t0,$t5,do2
fimp:	jr $ra
	
	
	
