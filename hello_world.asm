# Title: Hello World             Filename: hello_world.asm
# Author: Detective Pikachu
# Description: Classic Hello World
#
.data
 greeting: .asciiz "Hello! "
 myName:   .asciiz "Pikachu \n"
###############################################
# Define string here:


###############################################

.text
main:
###############################################
# Your code here:

	li $v0, 4
	la $a0, greeting
	syscall

	li $v0, 4
	la $a0, myName
	syscall
###############################################

# Exit the Program
li $v0, 10
syscall

