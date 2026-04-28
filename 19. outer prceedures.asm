#outer_proc handles the stack
.data
	msg_outer: .asciiz "In Outer... calling Inner\n"
	msg_inner: .asciiz "In Inner! returning now.\n"
.text
main:
	jal outer_proc
	
	li $v0,10
	syscall
	
outer_proc:
	#1. push $ra to stack
	addi $sp,$sp,-4
	sw $ra,0($sp)
	
	#print message
	li $v0,4
	la $a0,msg_outer
	syscall
	
	#2. call the next function
	jal inner_proc
	
	#3. pop $ra from stack
	lw $ra,0($sp)
	addi $sp,$sp,4
	
	jr $ra
inner_proc:
	li $v0,4
	la $a0,msg_inner
	syscall
	jr $ra