.data
	message: .asciiz "\nInput Number : "
	newline: .asciiz "\n"
.text
	#user input
	li $v0,4
	la $a0, message
	syscall
	
	#user input
	li $v0,5
	syscall
	
	move $t0,$v0
	
	li $t1, 1
	li $t2,11

loop:
	beq $t1,$t2,exit_loop
	
	mul $t3,$t1,$t0
	
	li $v0,1
	move $a0,$t3
	syscall
	
	li $v0,4
	la $a0, newline
	syscall
	
	addi $t1, $t1,1
	j loop
exit_loop:
	li $v0,10
	syscall