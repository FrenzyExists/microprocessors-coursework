# Push all the items in the array to the stack:
# Take a user input (int value) and pop those many items from the stack and print each value, separated with a comma and space 
# For example: if the user enters the number 5, you would print:
# 1, 3, 5, 7, 9
# (note that there is no comma after the last number)
# If the user inputs a number greater than the length of the array (30), only print the numbers contained in the array, no additional numbers
# If the user inputs a negative number, print the error string and exit
.data
array: .word 13, 22, 15, 71, 29, 1, 3, 35, 57, 13
       .word 21, 23, 25, 27, 29, 31, 33, 35, 37, 39
       .word 19, 17, 15, 13, 11, 9, 7, 5, 3, 1
length: .word 30
error: .asciiz "\nWrong input. Good bye\n"
comma: .asciiz ", "
.text
main:
    # Your code here

    subu $sp, $sp, 4                                # Initialize Stack
    
    li $t1, 1                                       # t1 = 1 (counter)
    la $t2, array                                   # t2 = &array
    lw $t0, length                                  # Load length

	li   $v0, 5                                     # Read Integer from user input
	syscall
    move $t4, $v0                                   # Move to t4

    # If/Else statement
    ble $t4, -1, negativeError                       # if input <= 0 go to negativeError
    beq $t4, 0, zeroOut

# Loop
deezLoops:

    addiu $t2, $t2, 4
    lw $s0, ($t2)                                   # s0 = array[i]
    addi $sp, $sp, -4                               # Add more memory
    sw $s0, 0($sp)                                  # Push s0
        
    add $t1, $t1, 1                                 # counter++
    blt $t1, $t0 deezLoops                          # 0 < length


# End of Loop

    bgt $t0, $t4, else                              # if input >= length
        move $t4, $t0                               # damp the input to length to prevent overflows
else:                                               # pretty fucking self-explanatory
    j poppinLoops

poppinLoops:
    lw $s0, 0($sp)                                  # load top of stack
    addu $sp, $sp, 4                                # free top of stack

    move $a0, $s0                                   # Prints number that is popped from stack   
    li $v0, 1
	syscall

    beq $t4, 1, exit                                # jump to exit before we print the comma, because errors                               
        la $a0, comma
        li $v0, 4
	syscall

    addiu $t4, $t4, -1                              # userInput--
    bgtz $t4, poppinLoops                           # length > 0
        la $a0, w
        li $v0, 4
    j exit

zeroOut:
    li $a0, 0
    li $v0, 1
    syscall
    j exit
    
negativeError:
    la $a0, error
    li $v0, 4
    syscall

exit:
    # Exit the Program
    li $v0, 10
    syscall
