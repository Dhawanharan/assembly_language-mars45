.data
	message: .asciiz "Enter a number : "
.text
	#print prompt($v0,4)
	li $v0,4
	la $a0, message
	syscall
	
	#read the int($v0,5)
	li $v0,5
	syscall
	
	#save the number
	move $t0,$v0
	
	#addition
	li $t1,100
	add $t2, $t0, $t1
	
	#print result
	li $v0,1
	move $a0, $t2
	syscall
	
	#exit
	li $v0,10
	syscall