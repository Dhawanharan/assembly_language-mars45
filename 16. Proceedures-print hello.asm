#printer proceedure
.data
	hello_msg: .asciiz "Hello!\n"
.text
main: 
	#call the proceedure
	jal print_hello
	
	#do something else
	li $t0,100
	
	#call again
	jal print_hello
	
	#end 
	li $v0,10
	syscall
#proceedure
print_hello:
	li $v0,4
	la $a0, hello_msg
	syscall
	jr $ra #jump back to the instruction after 'jal'