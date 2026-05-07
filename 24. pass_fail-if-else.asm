.data
	msg1: .asciiz "Enter grade (0-100) : "
	msg2: .asciiz "Pass"
	msg3: .asciiz "Fail"
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	bge $t0,50,above_50
	
	li $v0,4
	la $a0,msg3
	syscall
	
	j exit

above_50:
	ble $t0,100,passed
	j exit
	
passed: 
	li $v0,4
	la $a0,msg2
	syscall
	
	j exit
	
exit:
	li $v0,10
	syscall
	