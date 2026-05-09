.data
	msg1: .asciiz "Enter a number : "
	pos: .asciiz "Positive"
	neg: .asciiz "Negative"
	z: .asciiz "Zero"
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	beqz $t0,zero
	bgtz $t0,positive
	bltz $t0,negative
	
	j exit
	
zero:
	li $v0,4
	la $a0,z
	syscall
	j exit
positive: 
	li $v0,4
	la $a0,pos
	syscall
	j exit
negative: 
	li $v0,4
	la $a0,neg
	syscall
	j exit
exit:
	li $v0,10
	syscall	

	