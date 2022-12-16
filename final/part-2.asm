# Accept 2 Integer Values (X, Y) from the User, and calculate 

# X ^ y (X to the Y exponent), then print the result 
# For example, running the program should look like this
#
# Enter the first number: 2
# Enter the second number: 5
# Result: 32
# 
# Assume the following code exists and just enter the code that 
# goes in the area marked {{ANSWER}}


.data
	firstInteger: .asciiz "Enter the first number: "
	secondInteger: .asciiz "Enter the second number: "
	absValue: .asciiz "The absolute value of the diff is: "
	
.text
main:

# your code goes here
	li $t4, 1 # Where I'm stoing the multiplication

	la  $a0, firstInteger
	li  $v0, 4
	syscall

	li $v0, 5
	syscall

	move $t0, $v0

	la  $a0, secondInteger
	li  $v0, 4
	syscall

	li $v0, 5
	syscall

	move $t2, $v0

pow:
	mul $t4, $t4, $t0
	sub $t2, $t2, 1 # Y = Y - 1
	bgt $t2, 0, pow

print:

	la  $a0, absValue
	li  $v0, 4
	syscall

	move $a0, $t4
	li $v0, 1
	syscall


# Exit the Program
    li $v0, 10
    syscall