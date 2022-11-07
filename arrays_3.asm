# Find the minimum and maximum value within the given array 
# and print their sum.
    
# (When developing the code, review in detail the provided 
# code, so that you can understand how to do you own tests 
# to ensure that your added code works as requested)

.data
array: .word 1,2,5,10,20,25,100,4206
.text 
main:
# Replace first and last value with new number
li $v0, 5
syscall
sw $v0, array($t0)
li $t0, 28
mul $t1, $v0, 5
sw $t1, array($t0)

###############################################
# Your code here:
la $t1, array

li $t2, 0                   # save sum
loop:
    lw $t3, ($t1)
    

    blt $t4, $t3, lessThan
    bgt $t5, $t3, greaterThan
    add $t1, $t1, 4			# Update array address

    sub $t0, $t0, 4

    bgtz $t0, loop

    j exit
# Print min + max num

lessThan:
    la $t4, ($t3)
    j loop

greaterThan:
    la $t5, ($t3)
    j loop

###############################################

exit:
# Exit the Program
li $v0, 10
syscall
