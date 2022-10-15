	.data
	.text
	.globl main
	
main:	addi $sp , $sp , -4
	sw $ra , 0($sp)
	li $s0 , 100
	
	mtc1 $s0 , $f12
	cvt.d.w $f12 , $f12
	jal f2c
	
	mov.d $f12, $f0
	li $v0 , 3
	syscall
	
	lw $ra , 0($sp)
	addi $sp , $sp , 4
	jr $ra

f2c:	li $t0 , 5
	li $t1 , 9
	li $t2 , 32 
	mtc1 $t0 , $f6
	mtc1 $t1 , $f2
	mtc1 $t2 , $f4
	cvt.d.w	$f6 , $f6
	cvt.d.w $f2 , $f2
	cvt.d.w $f4, $f4
	
	div.d $f6 , $f6 , $f2
	sub.d $f2 , $f12 , $f4 
	mul.d $f0 , $f2 , $f6
	jr $ra
