# Write a program for a "Virtual Security Guard" that:
# Asks the user for a Secret Code (an integer).
# If the user enters the number 777, print "Access Granted".
# If the user enters anything else, print "Access Denied".

.data
	code: .asciiz "Secret Code : \n"
	grant_access: .asciiz "Access Granted"
	deny_access: .asciiz "Access Denied"
.text
	#display msg
	li $v0, 4
	la $a0, code
	syscall
	
	 #get user input
	 li $v0,5
	 syscall
	 move $t0,$v0
	 
	  #define code
	  li $t1 , 777
	  
	  #condition checking
	  beq $t0, $t1, access
	  
	  # else
	  li $v0,4
	  la $a0, deny_access
	  syscall
	  j end
access:
	li $v0,4
	la $a0, grant_access
	syscall
end:
	li $v0,10
	syscall