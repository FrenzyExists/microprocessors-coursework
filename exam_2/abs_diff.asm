# Accept 2 Integer Values (X, Y) from the User, and calculate 

# their difference (X - Y), then print the absolute Value of the difference 
# For example, running the program should look like this
#
# Enter the first number: 12
# Enter the second number: 32
# The absolute value of the diff is: 20
# 
# Assume the following code exists and just enter the code that 
# goes in the area marked {{ANSWER}}


.data
	firstInteger: .asciiz "Enter the first number: "
	secondInteger: .asciiz "Enter the second number: "
	absValue:.asciiz "The absolute value of the diff is: "
.text
main:
    # Prompt first integer
	li $v0, 4
	la $a0, firstInteger
	syscall

    # Read X from user
    li $v0, 5
    syscall

    move $t0, $v0

    # Prompt second integer
	li $v0,4
	la $a0, secondInteger
	syscall

    # Read Y from user
    li $v0, 5
    syscall

    move $t1, $v0

    sub $t3, $t1, $t0    

    blt $t3, $zero, invert
    j exit

invert:
    mul $t3, $t3, -1


exit:
    # Prompt result
	li $v0, 4
	la $a0, absValue
	syscall

    # Print result
    move $a0, $t3
    li $v0, 1
    syscall

# Exit the Program
    li $v0, 10
    syscall