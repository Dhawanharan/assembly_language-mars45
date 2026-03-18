.data
	message1 : .asciiz "Enter num1 : "
	message2 : .asciiz "Enter num2 : "
.text
	#message1
	li $v0,4
	la $a0, message1
	syscall
	
	li $v0,5
	syscall
	move $t0,$v0
	
	#message2
	li $v0,4
	la $a0, message2
	syscall
	
	li $v0,5
	syscall
	move $t1, $v0
	
	sub $t2, $t0, $t1
	
	li $v0,1
	move $a0, $t2
	syscall
	
	li $v0,10
	syscall
	
	