#print 1-5 (loop)
.text
main:
	li $t0, 1
	li $t1, 6
loop:
	# loop ending
	beq $t0,$t1, exit_loop
	
	#print current number
	li $v0,1
	move $a0, $t0
	syscall
	
	#increment(i= i+1)
	addi $t0, $t0,1
	
	#jump back to the loop
	j loop
exit_loop:
	li $v0,10
	syscall