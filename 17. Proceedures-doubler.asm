#Your Task:
#In main, load the number 50 into register $a0.
#Use jal doubler to call a procedure.
#Inside the doubler procedure:
#	1.Multiply the value in $a0 by 2.
#	2.Put the result in $v0 (this is the standard register for "Return Values").
#	3.Use jr $ra to return.
#Back in main, print the result stored in $v0.
#Hint: Think of $a0 as the "input parameter" and $v0 as the "return value."


.data
	result_msg: .asciiz "The doubled value is:"
.text
main:
	#prepare input
	li $a0,50
	#call proceedure
	jal doubler
	
	move $t0,$v0
	
	#print label
	li $v0,4
	la $a0,result_msg
	syscall
	
	#print result
	li $v0,1
	move $a0,$t0
	syscall
	
	#exit
	li $v0,10
	syscall
doubler:
	mul $v0,$a0,2
	jr $ra
	
	