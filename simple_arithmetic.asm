# Title: Sum Simple
# Filename: simple_arithmetic.asm
# Author: Detective Pikachu
# Description: Sums to input numbers
.data
    prompt:     .asciiz "Please enter two numbers one after an Enter key: \n"
    prmptSum:   .asciiz "The result is: "

.text
.globl main
main:
###############################################
# Your code here:
la  $a0, prompt
li  $v0, 4
syscall

li $v0, 5
syscall

move $t0, $v0

li $v0, 5
syscall

move $t1, $v0

addu $t0,$t0,$t1

la $a0, prmptSum
li  $v0, 4
syscall

move $a0, $t0
li $v0, 1
syscall

###############################################

# Exit the Program
li $v0, 10
syscall

