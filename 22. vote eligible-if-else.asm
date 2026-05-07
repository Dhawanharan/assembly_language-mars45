.data
	msg1: .asciiz "Enter your age : "
	eligible: .asciiz "You are eligible to vote"
	not_eligible: .asciiz "You are not eligible to vote"
.text

main: 
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	bge $t0,18, func_eligible
	
	li $v0,4
	la $a0,not_eligible
	syscall
	
	j exit
	
func_eligible:
	li $v0,4
	la $a0,eligible
	syscall
	j exit
	
exit:
	li $v0,10
	syscall