.text
main:
# Push int to top of stack
subu $sp, $sp, 4
li $t0, 4206
sw $t0 ($sp)

# Get int value from user
li $v0, 5
syscall
move $s0, $v0	# $s0 = user input

###############################################
# $s0 contains {user input}
# Your code here:


###############################################

# Pop values from stack
lw $s0, ($sp)
lw $s1, 4($sp)
lw $s2, 8($sp)
addu $sp, $sp, 12

# Add the values
add $t0, $s0, $s1
add $t0, $t0, $s2

# Print the sum
li $v0, 11
li $a0, 10
syscall
li $v0, 1
move $a0, $t0
syscall

# Exit the Program
li $v0, 10
syscall
