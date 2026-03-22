#defining array
.data
	my_list: .word 10,20,30,40 #list of 4 ints
	result: .asciiz "The sum is:"
#adding two numbers from memory
.text
	la $t0, my_list #load the address of the array
	lw $t1,0($t0)	#load first number
	lw $t2,4($t0)
	
	add $t3, $t1, $t2
	
	#print result
	li $v0,4
	la $a0, result
	syscall
	
	li $v0,1
	move $a0, $t3
	syscall
	
	li $v0,10
	syscall
