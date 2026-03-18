.data
	message1: .asciiz "Hello"
	message2: .asciiz "World"
.text
	li $v0, 4
	la $a0,message1
	syscall
	
	la $a0, message2
	syscall
	
	