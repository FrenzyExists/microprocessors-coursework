# Insertion Sort Algorithm in MIPS Assembly Language
# NOTE: This was NOT made by me, I decided to try out the new GP3Chat
# which generated this algorithm partially
# I had to fix a few things here and there to get it running but most of the
# heavy lifting was done by the AI so, pretty cool!

.data
array: .word 10,25,1,4206,5,100,20,2
spaceThing: .asciiz " "
.text

# Initialize array
li $s0, 0 # $s0 is the index of the array
li $s1, 0 # $s1 is the index of the sorted array
li $s2, 0 # $s2 is the value of the current element
li $t0, 32


# Loop through the array
loop:
beq $s0, $t0, end # Break if index is equal to the length of the array

# Get the value of the current element
lw $s2, array($s0)

# Insert the element into the sorted array
insert:
beq $s1, 0, insert_end # Break if index is 0

# Compare the current element with the previous element
lw $t1, array($s1)
slt $t2, $s2, $t1

# If the current element is smaller, swap the elements
bne $t2, $zero, swap
addi $s1, $s1, -4 # Decrement index
j insert

swap:
sw $s2, array($s1)
sw $t1, array($s0)
addi $s1, $s1, -4 # Decrement index
j insert

insert_end:
sw $s2, array($s1)

# Increment index
addi $s0, $s0, 4
addi $s1, $s1, 4
j loop

end:
# End of Insertion Sort Algorithm in MIPS Assembly Language

# print array
print_array:
li $t1, 0

loop2:
beq $t1, $t0, end2

lw $a0, array($t1)
li $v0, 1
syscall

li $v0,4
	la $a0,spaceThing
	syscall

addi $t1, $t1, 4
j loop2

end2:
# End of print array