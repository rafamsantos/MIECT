	.data
	.eqv	read_int, 5
	.eqv	print_string, 4
str1:	.asciiz "Introduza o valor: "
str2:	.asciiz "Introduza a base: "
buf:	.space 33
str3:	.asciiz "\n"
	.text
	.globl main
	
main:					# 	int main(void) {
	addiu	$sp, $sp, -4		#	por espaco na pilha
	sw	$ra, 0($sp)		#	salvar o valor de $
					#
	la	$a0, str1		#	$a0 = str1
	li	$v0, print_string	#
	syscall				#	print_string(str1);
	li	$v0, read_int		#	
	syscall				#	$v0 = read_int();
	move	$t0, $v0		#	$a0 = read_int();
					#
	la	$a0, str3		#	$a0 = str3
	li	$v0, print_string	#
	syscall				#	print_string(str3);
					#
	la	$a0, str2		#	$a0 = str2
	li	$v0, print_string	#
	syscall				#	print_string(str2);
	li	$v0, read_int		#	
	syscall				#	$v0 = read_int();
	move	$t1, $v0		#	$a0 = read_int();
					#
	la	$a0, str3		#	$a0 = str3
	li	$v0, print_string	#
	syscall				#	print_string(str3);
					#
	move	$a0, $t0		#	val = $t0
	move	$a1, $t1		#	base = $t1
	jal	print_int_ac1		#	print_int_10(val, base);
					#
	lw	$ra, 0($sp)		#	repor o valor de $ra
	addiu	$sp, $sp, 4		# 	repor o tamanho da pilha
	jr	$ra			# } fim do programa
	
# Mapa de registos
# n: $a0 -> $s0
# b: $a1 -> $s1
# s: $a2 -> $s2
# p: $s3
# digit: $t0
# Sub-rotina intermédia 
	
itoa:					# char *itoa(unsigned int n, unsigned int b, char *s) {
	addiu	$sp, $sp, -20		#	meter espaco na pilha
	sw	$ra, 0($sp)		#	guardar o $ra na pilha
	sw	$s0, 4($sp)		#	guardar registos $sX na pilha
	sw	$s1, 8($sp)		#
	sw	$s2, 12($sp)		#
	sw	$s3, 16($sp)		#
					#	passa n, b e s para callee-saved
	move	$s0, $a0		# 	s0 = n
	move	$s1, $a1		#	s1 = b
	move	$s2, $a2		#	s2 = s
	move	$s3, $a2		#	s3 = s
	
do:					#	do{
	rem	$t0, $s0, $s1		#		digit = n % b;
	div	$s0, $s1		#		n/b;
	mflo	$s0			#		n = n/b
	move	$a0, $t0		#		$a0 = digit
	jal	toascii			#		toascii(digit)
	sb	$v0, 0($s3)		#		*p = return toascii(digit)
	addiu	$s3, $s3, 1		#		p++;
	
while:	bgt	$s0, 0, do		#	while(n > 0);
	sb	$0, 0($s3)		#	*p = '\0';
	move	$a0, $s2		#	$a0 = s;
	jal	strrev			#	strrev(s);
	move	$v0, $s2		#
					#
	lw	$ra, 0($sp)		#	ir buscar o $ra
	lw	$s0, 4($sp)		#	repor registos $sX na pilha
	lw	$s1, 8($sp)		#
	lw	$s2, 12($sp)		#
	lw	$s3, 16($sp)		#
	addiu 	$sp, $sp, 20		#	repor o tamanho da pilha
	jr	$ra			# } fim do programa
	
# Mapa de registos:
# str: $a0 -> $s0 (argumento é passado em $a0)
# p1: $s1 (registo callee-saved)
# p2: $s2 (registo callee-saved)
	
strrev: 				# char * strrev(char *str) {
	addiu 	$sp, $sp, -16 		# 	reserva espaço na stack
 	sw 	$ra, 0($sp) 		# 	guarda endereço de retorno
	sw 	$s0, 4($sp) 		# 	guarda valor dos registos
	sw 	$s1, 8($sp) 		# 	$s0, $s1 e $s2
	sw 	$s2, 12($sp) 		#
	move 	$s0, $a0 		# 	registo "callee-saved"
	move 	$s1, $a0 		# 	p1 = str
	move 	$s2, $a0 		# 	p2 = str
while1: lb	$t1, 0($s2)		#	$t1 = *p2;
	beq	$t1, '\0', endw1	# 	while( *p2 != '\0' ) {
	addiu	$s2, $s2, 1 		# 		p2++;
	j 	while1 			# 	}
endw1:	addiu	$s2, $s2, -1 		# 	p2--;
while2: bge	$s1, $s2, endw2		# 	while(p1 < p2) {
	move 	$a0, $s1 		#
	move 	$a1, $s2		#
 	addiu	$s1, $s1, 1
 	addiu	$s2, $s2, -1
	j 	while2 			# 	}
endw2:	move 	$v0, $s0 		# 	return str
	lw 	$ra, 0($sp) 		# 	repõe endereço de retorno
 	lw 	$s0, 4($sp) 		# 	repõe o valor dos registos
	lw 	$s1, 8($sp)		# 	$s0, $s1 e $s2
	lw 	$s2, 12($sp) 		#
	addiu 	$sp, $sp, 16		# 	liberta espaço da stack
	jr 	$ra 			# }	termina a sub-rotina
	
print_int_ac1:				# void print_int_ac1(unsigned int val, unsigned int base) {
	addiu	$sp, $sp, -4		#	por espaco na pilha
	sw	$ra, 0($sp)		#	salvar o valor de $ra
					#
	la	$a2, buf		#	$a2 = buf;
	jal	itoa			#	itoa(val, base, buf);
	move	$a0, $v0		#	$a0 = return itoa(val, base, buf)
	li	$v0, 4			#	$v0 = 4
	syscall				#	print_string(return);
					#
	lw	$ra, 0($sp)		#	repor o valor de $ra
	addiu	$sp, $sp, 4		# 	repor o tamanho da pilha
	jr	$ra			# } fim do programa



toascii:				# char toascii(char v) {
	addi	$v0, $a0, '0'		#	v += '0';
if:	ble	$v0, '9', endif		#	if (v > '9') {
	addi	$v0, $v0, 7		#		v += 7 // 'A' - '9' -1
endif:
	jr	$ra			# } fim do programa