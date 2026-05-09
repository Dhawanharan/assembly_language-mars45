.data
	msg1: .asciiz "Enter an integer : "
	odd: .asciiz "Odd"
	even: .asciiz "Even"
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	rem $t1,$t0,2
	beqz $t1,even_num
	
	li $v0,4
	la $a0,odd
	syscall
	
	j exit
even_num:
	li $v0,4
	la $a0,even
	syscall
	
	j exit
	
exit:
	li $v0,10
	syscall
