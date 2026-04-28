#task: calculating a 15% tip on a bill.
#The Task:
#	1.Load the integer 100 (the bill) into $t0.
#	2.Load the float 0.15 (the tip rate) into $f1.
#	3.Convert the integer to a float so they can talk to each other.
#	4.Multiply and print.

.data
	bill: .word 100
	tip_rate: .float 0.15
	msg: .asciiz "the tip is : "
.text 
	#load the integer
	lw $t0,bill
	
	#move integer to flaot value
	mtc1 $t0,$f0
	
	#convert into float
	cvt.s.w $f0,$f0
	
	#load the rate and multiply
	l.s $f1, tip_rate
	mul.s $f12,$f0,$f1
	
	#print
	li $v0,4
	la $a0,msg
	syscall
	
	li $v0,2
	syscall
	
	li $v0,10
	syscall