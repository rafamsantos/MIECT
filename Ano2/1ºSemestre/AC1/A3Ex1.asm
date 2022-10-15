# mapa de registos:
# $t0 = soma
# $t1 = value
# $t2 = i

	.data
str1:   .asciiz " Introduza um nº : "
str2:   .asciiz " Valor ignorado "
str3:   .asciiz " A soma dos positivos é "
	.eqv print_string , 4
	.eqv read_int,5
	.eqv print_int10,1
	.text
	.globl main
main :  li $t0,0
	li $t2,0
	
for:    bge $t2, 5 ,endfor # while(i < 5) {
	la $a0, str1       # print_string("Introduza um número");
	ori $t1,$0 ,read_int
	syscall
	
	
  	ble $t1 , $0 , else # if(value > 0)
 	add $t0 , $t0 , $t1 # soma += value;
 	j endif 
 	
else: 	  # else
	la $a0 , str2	# print_string( "valor ignorado" )
 	
 	
endif:  addi $t2 , $t2 , 1 # i++;
 	j for             # }
 	
endfor: la $a0 , str3
	ori $v0 , $0 ,print_string # print_string("A soma dos positivos é : ");
	syscall
	
	                        
 	or $a0 , $t0 , $0
 	ori $v0 , $0 , print_string
 	syscall
 			# print_int10(soma);
	jr $ra 
	