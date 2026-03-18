.data
	message: .asciiz "Hello, Assembly World!\n"
.text
	li $v0,4
	la $a0, message
	syscall
	
	li $v0, 10
	syscall
	
	li $v0, 10
	syscall