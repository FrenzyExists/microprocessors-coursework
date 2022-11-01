.data
    line: .asciiz "\n"
.text
    .globl main
    main:

    # Push int to top of stack
    subu $sp, $sp, 4
    li $t0, 4206
    sw $t0 ($sp)

    # Get int value from user
    li $v0, 5
    syscall
    move $s0, $v0	# (Push) $s0 = user input

    # ###########################################    


    lw $s1, ($sp)   # Pop the 4206 value to s1

    # Print input Value, just in case
    li $v0, 1 # prints the first integer
    move $a0, $s1 # move s1 to argument register (push)
    syscall

    # Print Newline
	li $v0, 4
	la $a0, line
	syscall

    move $t1, $s0       # Copy the bottom so i don't have to keep pushing and popping

    sw $s0, 0($sp)      # # Push the input value back to stack

    mul $s0, $t1, 5     # s0 = user input * 5
    addi $sp, $sp, -4   # Add more memory  
    sw $s0, 0($sp)      # Push new s0

    mul $s0, $t1, 10     # s0 = user input * 10
    addi $sp, $sp, -4   # Add more memory  
    sw $s0, 0($sp)      # Push new s0


    # Pop Values from stack
    lw $s0, ($sp)
    lw $s1, 4($sp)
    lw $s2, 8($sp)
    addu $sp, $sp, 12

    # Add the values
    add $t0, $s0, $s1
    add $t0, $t0, $s2

    # li $v0, 1 # print integer
    # move $a0, $s0 # move s0 to argument register
    # syscall    

    # # Print Newline
	# li $v0, 4
	# la $a0, line
	# syscall

    # li $v0, 1 # print integer
    # move $a0, $s1 # move s0 to argument register
    # syscall    

    # # Print Newline
	# li $v0, 4
	# la $a0, line
	# syscall

    # li $v0, 1 # print integer
    # move $a0, $s2 # move s0 to argument register
    # syscall    

    # # Print Newline
	# li $v0, 4
	# la $a0, line
	# syscall

    # Print the sum
    li $v0, 1 # print integer
    move $a0, $t0 # move s0 to argument register
    syscall    
 
# Exit the Program
li $v0, 10
syscall