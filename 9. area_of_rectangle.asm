#area of rectangle
.data
	width: .asciiz "Enter Width : \n"
	length: .asciiz "Enter Length : \n"
	message1: .asciiz "The area is : \n"
.text
	#display message-width
	li $v0,4
	la $a0, width
	syscall 
	#input width
	li $v0,5
	syscall
	move $t0,$v0
	
	#display messageg-length
	li $v0,4
	la $a0, length
	syscall
	#input length
	li $v0,5
	syscall
	move $t1,$v0
	
	#arithmetic a = 2(l+w)
	mul $t2, $t0, $t1
	
	
	#display message-area
	li $v0,4
	la $a0, message1
	syscall
	
	#display area
	li $v0,1
	move $a0,$t2
	syscall
	
	#end
	li $v0,10
	syscall