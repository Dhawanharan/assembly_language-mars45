#Write a program that:
# 1.Starts a counter at 10.
# 2.Prints the number.
# 3.Subtracts 1 from the counter.
# 4.Repeats until the counter reaches 0.
# 5.Once it hits 0, print the message: "Blast off!".

.data
	msg: .asciiz "\nBlast off!"
	newline: .asciiz "\n"
.text
	li $t0,10
	li $t1,0
loop:
	beq $t0,$t1, exit_loop
	
	li $v0,1
	move $a0,$t0
	syscall
	
	li $v0,4
	la $a0, newline
	syscall
	
	addi $t0,$t0,-1
	j loop
exit_loop:
	li $v0,4
	la $a0, msg
	syscall
	
	li $v0,10
	syscall
