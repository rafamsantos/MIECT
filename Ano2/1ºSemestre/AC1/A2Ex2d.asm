	.data
	.text
	.globl main
	
main:   ori $t5 , $0, 6 # armazena um valor em $t5
	srl $t6 , $t5, 4 # faz um shift right logico de 4 bits do valor em $t5 e armazena-o em $t6
	xor $t6 , $t6 , $t5 # $t6 xor $t5
	
	jr $ra #fim do programa
