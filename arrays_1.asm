.data
array: .word 10,25,1,4206,5,100,20,2
sum: .word 0
.text 
main:

# Read integer value
li $v0, 5
syscall
move $s0, $v0	            # $s0 = Multiplier

# ##############################################
# Your code here:
la $t0, array
la $t1, sum
li $t2, 0

loop:
    lw $t5, ($t1)
    lw $t3, ($t0)			# Gets array[i]
    mul $t4, $t3, $s0		# Multiply array[i] * input
    
    add $t5, $t5, $t4
    sw $t5, ($t1)
    add $t0, $t0, 4			# Update array address
    
    add $t2, $t2, 1
    blt $t2, 8, loop
    
###############################################

# Print sum
li $v0, 1
lw $a0, sum
syscall

# Exit the Program
li $v0, 10
syscall
