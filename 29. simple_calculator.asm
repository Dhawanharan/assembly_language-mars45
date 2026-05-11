#The Simple Calculator (Part 1: Branching)
#The Task:
#	This is a very common university practical question. Ask the user for two numbers and then an operation code (an integer).
#	If the user enters 1, add the numbers.
#	If the user enters 2, subtract the numbers.
#	If the user enters any other number, print "Invalid Operation"

.data
	msg1: .asciiz "Enter num1 : "
	msg2: .asciiz "Enter num2 : "
	msg3: .asciiz "Enter op code [1-add, 2-sub]
	msg4: .asciiz "Answer : "
	msg5: .asciiz "Invalid Operation"
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0, $v0

	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	
	move $t1, $v0	
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,5
	syscall
	
	move $t2, $v0
	
	beq $t2,1,addition
	beq $t2,2,substraction
	
	li $v0,4
	la $a0,msg5
	syscall
	
	j exit
addition:
	add $t3,$t0,$t1
	
	li $v0,4
	la $a0,msg4
	syscall
	
	li $v0,1
	move $a0,$t3
	syscall
	
	j exit
substraction:
	sub $t3,$t0,$t1
	
	li $v0,4
	la $a0,msg4
	syscall
	
	li $v0,1
	move $a0,$t3
	syscall
	
	j exit
exit:
	li $v0,10
	syscall
	
	
	
	
	