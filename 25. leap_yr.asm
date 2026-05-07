#Ask the user to enter a Year (Simplified)(e.g., 2026).
#	If the year is divisible by 4, print "Leap Year".
#	Otherwise, print "Not a Leap Year".

.data
	msg1: .asciiz "Enter the year : "
	L: .asciiz "Leap year"
	NL: .asciiz "Not a Leap Year"
.text
	li $v0,4
	la $a0,msg1
	syscall
	
	li $v0,5
	syscall
	
	move $t0,$v0
	
	rem $t1,$t0,4
	beqz $t1,leap_year
	
	li $v0,4
	la $a0,NL
	syscall
	
	j exit
leap_year:
	li $v0,4
	la $a0,L
	syscall
exit:
	li $v0,10
	syscall
	
	