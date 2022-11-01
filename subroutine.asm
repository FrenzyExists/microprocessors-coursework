# Create a subroutine that does the following:

    Accepts a character as input
    Increments the character value by 1
    Prints the character
#     Returns the new character

# Note: There are two sections in the file where code is required.

.data 
buffer: .space 	128     # Hold text input

.text
main:
# Accept string of max length 128 bytes
li $v0, 8
la $a0, buffer
li $a1, 128
syscall

# Loop over string
la $s0, buffer	# Address of string
li $s1, 128	    # Counter
li $s2, 0	    # Total
loop:
	lb $t0, ($s0)		# $t0 = character in string
	beq $t0, 10, exit	# Exit if end of string
	
	###############################################
	# Call subroutine here:
	
	
	###############################################
	
	addi $s0, $s0, 1	# Move address to next byte
	addi $s1, $s1, -1	# Decriment counter
	add  $s2, $s2, $v0	# total += ascii character value
	
# Jump back up to start of loop if $s1 != 0
bnez $s1, loop	# End loop

exit:
li $v0, 11
li $a0, 10
syscall

li $v0, 1
move $a0, $s2
syscall

# Exit the Program
li $v0, 10
syscall

###############################################
# Input: $a0 = Character to convert
# Output: $v0 = Converted character
# Define subroutine here:


###############################################
