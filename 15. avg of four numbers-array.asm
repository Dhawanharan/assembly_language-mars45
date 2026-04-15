#average of four numbers in array
.data
	my_array: .word 10,20,30,40
	size: .word 4
	msg: .asciiz "Average : "
.text
	la $t0, my_array	#pointer
	li $t1, 0		#sum
	li $t2, 0		#counter
	lw $t3, size		#limit
loop:
	beq $t2,$t3, end_loop	#if i==4 stop
	
	lw $t4, 0($t0)		#load value
	add $t1, $t1, $t4	#add value
	
	addi $t0,$t0,4		#next pointer
	addi $t2,$t2,1		#i++
	j loop 
	
end_loop:
	div $t5,$t1,4		#average
	
	#print text
	li $v0,4
	la $a0, msg
	syscall
	
	#print average
	li $v0,1
	move $a0,$t5
	syscall
	
	li $v0,10
	syscall
	