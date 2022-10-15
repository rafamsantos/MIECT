	.data
num: 	.float 2.59375
zero:	.float 0.0
	.text
	.globl main
main:	

do:	li $v0 , 5
	syscall
	
	mtc1 $v0 , $f0 
	cvt.s.w $f0 , $f0
	l.s $f1, num
	mul.s $f2 , $f0 , $f1
	
	li $v0 , 2
	mov.s $f12 ,  $f2
	syscall
	
	l.s $f3, zero
	c.eq.s $f2, $f3 
	bc1t enddo
	j do
	
enddo:	li $v0 , 0
	jr $ra