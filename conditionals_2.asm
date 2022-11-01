.data 
b1str: .asciiz "abc"
b2str: .asciiz "def"
b3str: .asciiz "ghi"
b4str: .asciiz "jkl"
.text
main:
li $v0, 5
syscall
move $s0, $v0

###############################################
# Convert the given statements into branch instructions

# Branch to "b1" if $s0 == 0

# Branch to "b2" if $s0 != 0

mid:
# Branch to "b3" if $s0 > 0

# Branch to "b4" if $s0 < 0

###############################################
b1:
la $a0, b1str
j exit

b2:
li $v0, 4
la $a0, b2str
syscall
j mid

b3:
la $a0, b3str
j exit

b4:
la $a0, b4str
j exit

exit:
# Print appropriate string
li $v0, 4
syscall

# Exit the program
li $v0, 10
syscall