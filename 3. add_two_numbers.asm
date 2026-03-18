.data
.text
	#store values
	li $t0,15
	li $t1,30
	add $t2,$t0,$t1 #t2=45
	
	#prepare for print
	li $v0,1	#set service code to 1
	move $a0,$t2	#move sum into $a0
	syscall	#execute
	
	#exit
	li $v0,10
	syscall