#Ariff Sanusi
#B152510010

.data
	newline:	.asciiz "\n"
	menuMsg: 	.asciiz "Choose the following operation based on the option number:\n"
	menuOption1: 	.asciiz "1 - addition\n"
	menuOption2: 	.asciiz "2 - subtraction\n"
	menuOption3: 	.asciiz "3 - multiplication\n"
	menuOption4:	.asciiz "4 - division\n"
	menuPrompt:	.asciiz "Your option: "
	intPrompt: 	.asciiz "\nInput 1 integer number:\n"
	plus:		.asciiz " + "
	minus: 		.asciiz " - "
	star:		.asciiz " * "
	slash:		.asciiz " / "
	eq:		.asciiz " = "
	
.text
main:
	la $a0, menuMsg  #load address of MenuMsg to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4	
	syscall

	la $a0, menuOption1  #load address of menuOption1 to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4	
	syscall	

	la $a0, menuOption2  #load address of menuOption2 to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4	
	syscall		

	la $a0, menuOption3  #load address of menuOption3 to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4	
	syscall		

	la $a0, menuOption4  #load address of menuOption4 to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4	
	syscall		
	
	la $a0, menuPrompt  #load address of menuPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4	
	syscall		
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	beq $v0, 1, ADDITION
	beq $v0, 2, SUBSTRACTION
	beq $v0, 3, MULTIPLY
	beq $v0, 4, DIVISION
	
ADDITION:
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	li $v0, 5
	syscall
	
	add $t1, $t1, $v0  #t1 = t1 + v0
	
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	add $t2, $t2, $v0  #t2 = t2 + v0
	
	add $t3, $t1, $t2  #t3 = t1 + t2
	
	la $a0, newline
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t1
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, plus
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t2
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, eq
	addi $v0, $zero, 4
	syscall	

	add $a0, $zero, $t3
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall	
	
	j EXIT
	
SUBSTRACTION:
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	li $v0, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	add $t1, $t1, $v0  #t1 = t1 + v0
	
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero,5
	syscall
	
	add $t2, $t2, $v0  #t2 = t2 + v0
	
	sub $t3, $t1, $t2  #t3 = t1 - t2
	
	la $a0, newline
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t1
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, minus
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t2
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, eq
	addi $v0, $zero, 4
	syscall	

	add $a0, $zero, $t3
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall	
	
	j EXIT
	
MULTIPLY:
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	add $t1, $t1, $v0  #t1 = t1 + v0
	
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	add $t2, $t2, $v0  #t2 = t2 + v0
	
	mul $t3, $t1, $t2  #t3 = t1 * t2
	
	la $a0, newline
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t1
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, star
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t2
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, eq
	addi $v0, $zero, 4
	syscall	

	add $a0, $zero, $t3
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall	
	
	j EXIT
	
DIVISION:
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	add $t1, $t1, $v0  #t1 = t1 + v0
	
	la $a0, intPrompt  #load address of intPrompt to reg $a0
	#load syscall for printing string
	addi $v0, $zero, 4
	syscall
	
	#load syscall for reading integer
	addi $v0, $zero, 5
	syscall
	
	add $t2, $t2, $v0  #t2 = t2 + v0
	
	div $t3, $t1, $t2  #t3 = t1 / t2
	
	la $a0, newline
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t1
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, slash
	addi $v0, $zero, 4
	syscall
	
	add $a0, $zero, $t2
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall
	
	la $a0, eq
	addi $v0, $zero, 4
	syscall	

	add $a0, $zero, $t3
	#load syscall for printing integer
	addi $v0, $zero, 1
	syscall	
	
	j EXIT
	
EXIT:
	#load syscall for exiting program
	addi $v0, $zero, 10
	syscall
