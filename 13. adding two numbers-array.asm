#add two numbers in array
.data
	my_list: .word 15,25
	result_msg: .asciiz "The sum is: "
	
.text
	la $t0, my_list
	
	lw $t1, 0($t0)
	lw $t2, 4($t0)
	
	add $t3, $t1, $t2
	
	#print result
	li $v0,4
	la $a0,result_msg
	syscall
	
	li $v0,1
	move $a0,$t3
	syscall
	
	li $v0,10
	syscall