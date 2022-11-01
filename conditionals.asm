.data 
b1str: .asciiz "abc"
b2str: .asciiz "def"
b3str: .asciiz "ghi"
b4str: .asciiz "jkl"
b5str: .asciiz "mno"
b6str: .asciiz "pqr"
estr:  .asciiz "exit"
.text
main:
li $v0, 5
syscall
move $s0, $v0

#########################################################
    # Convert the given statements into branch instructions

    # Branch to "b1" if $s0 == 10
    beq $s0, 10, b1

    # Branch to "b2" if $s0 > 15
    bgt $s0, 15, b2

    # Branch to "b3" if $s0 < 5
    blt $s0, 5, b3

    # Branch to "b4" if $s0 >= 12
    bge $s0, 12, b4

    # Branch to "b5" if $s0 <= 8
    ble $s0, 8, b5

    # Branch to "b6" if $s0 != 11
    bne $s0, 11, b6

#########################################################
la $a0, estr
j exit

b1:
la $a0, b1str
j exit

b2:
la $a0, b2str
j exit

b3:
la $a0, b3str
j exit

b4:
la $a0, b4str
j exit

b5:
la $a0, b5str
j exit

b6:
la $a0, b6str
j exit

exit:
# Print appropriate string
li $v0, 4
syscall

# Exit the program
li $v0, 10
syscall