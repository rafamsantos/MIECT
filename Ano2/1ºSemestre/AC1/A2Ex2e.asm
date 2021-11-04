	.data
	.text
	.globl main
	
main:   ori $t5 , $0, 6 # armazena um valor em $t5
	srl $t6 , $t5, 4
	xor $t6 ,$t6 ,$t5
	
	jr $ra #fim do programa
