#add three numbers stored in array 
.data
	my_array: .word 10,20,30
	size: .word 3
	result_msg: .asciiz "Sum:"
.text
	la $t0, my_array 	#point current element
	li $t1, 0		#thr running sum 
	li $t2, 0		#loop counter
	lw $t3, size		#loop limit
	
loop:
	beq $t2,$t3, end_loop
	
	lw $t4, 0($t0)
	add $t1,$t1,$t4
	
	addi $t0,$t0,4
	addi $t2,$t2,1
	j loop
end_loop:
	li $v0,4
	la $a0, result_msg
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,10
	syscall
