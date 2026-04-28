#	1. Main calls Level1.
#	2. Level1 prints "Level 1", calls Level2, and then prints "Back to 1".
#	3. Level2 just prints "Level 2" and returns.
.data
	level1: .asciiz "Level1\n"
	msg: .asciiz "Back to 1\n"
	level2: .asciiz "Level2\n"
.text
main:
	jal Level1
	
	li $v0,10
	syscall
Level1:
	li $v0,4
	la $a0,level1
	syscall
	
	jal Level2
	
	li $v0,4
	la $a0,msg
	syscall
	
	lw $ra, 0($sp)       # Load the "Way back to Main" back into $ra
    	addi $sp, $sp, 4     # Clean up the stack space
    	jr $ra
Level2:
	li $v0,4
	la $a0,level2
	syscall
	
	li $v0,10
	syscall
	