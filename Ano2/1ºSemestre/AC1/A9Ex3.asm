# Mapa de registos
# i = $t0 
	.data
	.eqv SIZE , 10
	.text
	.globl main
main:
	mtc1 $0 , $f0
	cvt.d.w $f0 , $f0	#sum = 0.0
	li $t0 , 0		#i = 0
for:	bge $$t0 , SIZE, endf
	sll $t1, $t0, 3 
	addu $t1, $t1, $a0 	# $t1 = &array[i]
	l.d $f4, 0($t1) 	# $f0 = v[i]
	add.d $f0, $f0, $f4	# sum += array[i]
	addi $t0, $t0, 1 	# i++
endf:
	

average: