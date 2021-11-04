	.data
k1: 	.double 1.0
	.text
	.globl main
	
	
main:	addi $sp,$sp,-4		#armazena espaço na stack para $ra
	sw $ra,0($sp)
	
	li $t0,2
	mtc1 $t0,$f12
	cvt.d.w $f12,$f12
	li $a0,3
	jal xtoy
	
	mov.d $f12,$f0
	li $v0,3
	syscall
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	jr $ra
xtoy:	# x-> $f12 , $f20  y-> $a0 , $s0
	#result -> $f22 , i->$s1
	


	addiu $s0 ,$sp ,-28
	sw $ra ,0($sp)
	sw $s0 , 4($sp)
	sw $s1 , 8($sp)
	s.d $f20 ,12($sp) 	#double ocupa 8 posiçoes
	s.d $f22 , 20($sp)
	
	move $s0 , $a0		# s0 = y
	mov.d $f20 , $f12
	
	li $s1 , 0   		 #i=0
	la $t0 , k1
	l.d $f22 , 0($t0)	# result = 1.0
	
x_for:	move $a0 , $s0
	jal abs
	bge $s1 , $v0 , x_endf

x_if:	blez $s0 , x_else	 # if y>0
	mul.d $f22 , $f22 , $f20 #result += x
	j x_endif

x_else: div.d $f22, $f22, $f20

x_endif:
	
	addi $s1, $s1, 1	# i++
	j x_for
	
x_endf: mov.d $f0 , $f22

	lw $ra ,0($sp)
	lw $s0 , 4($sp)
	lw $s1 , 8($sp)
	l.d $f20 ,12($sp) 	#double ocupa 8 posiçoes
	l.d $f22 , 20($sp)
	addiu $s0 ,$sp ,28
	jr $ra

abs:	bgez $a0 , abs_eif
	sub $a0, $s0 , $s0
abs_eif:move $v0 , $a0
	jr $ra	
	
	
	