#Is the number 10?

.data
	is_ten: .asciiz "The number is 10!"
	not_ten: .asciiz "The number is not 10!"
.text
	#user inputs the number
	li $v0, 5
	syscall
	move $t0,$v0
	
	#set value
	li $t1, 10
	
	#condition checking
	beq $t0, $t1, equal
	
	li, $v0,4
	la $a0, not_ten
	syscall
	j end
	
equal:
	li $v0, 4
	la $a0, is_ten
	syscall
end:
	li $v0,10
	syscall