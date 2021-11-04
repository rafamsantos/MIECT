	.data
str1:	.asciiz "So para chatear"
str2: 	.asciiz "AC1 - P"
	.eqv print_string , 4
	.text
	.globl main

main:	
	jr $ra		