#smallest of two
.data
	msg1: .asciiz "Enter num1 : "
	msg2: .asciiz "Enter num2 : "
	msg3: .asciiz "Smallest number: "
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	li $v0,4
	la $a0,msg2
	syscall
	
	li $v0,5
	syscall
	
	move $t1,$v0
	
	ble $t0,$t1,sm_t0
	
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	j exit
sm_t0:
	li $v0,4
	la $a0,msg3
	syscall
	
	li $v0,1
	move $a0,$t0
	syscall
	
	j exit
exit: 
	li $v0,10
	syscall
	
	