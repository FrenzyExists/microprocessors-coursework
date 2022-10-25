# Title: Sum Simple
# Filename: simple_arithmetic.asm
# Author: Detective Pikachu
# Description: Accept user input to perform: 
# X * 10 - 2 and print the result to the console.
.data
    prompt:     .asciiz "Type a positive integer. Gonna do X  * 10 - 2 for no good reason lul: \n"
    promptResult: .asciiz "Result is: "

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

mul $t0, $t0, 10
subu $t0, $t0, 2

la $a0, promptResult
li  $v0, 4
syscall

move $a0, $t0
li $v0, 1
syscall

###############################################

# Exit the Program
li $v0, 10
syscall