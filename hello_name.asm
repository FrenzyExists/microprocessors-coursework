# Title: Hello Name             Filename: hello_name.asm
# Author: Detective Pikachu
# Description: Basic Assembly, just taking a name
#              and a greeting and printing it
#
################# Data segment #####################
.data
	promptGreet: .asciiz "Please input your greeting: "
	promptName: .asciiz "Now input your Name: "
	string_greet: .space 1024
	string_name: .space 1024

.text
main:
###############################################
# Your code here:
	li $v0,4
	la $a0,promptGreet
	syscall


    li $v0, 8              # code for syscall read_string
    la $a0, string_greet   # tell syscall where the buffer is
    li $a1, 1024           # tell syscall how big the buffer is
    syscall

	li $v0,4
	la $a0,promptName
	syscall

    li $v0, 8              # code for syscall read_string
    la $a0, string_name   # tell syscall where the buffer is
    li $a1, 1024           # tell syscall how big the buffer is
    syscall



	li $v0, 4
	la $a0, string_greet             # print buffer
	syscall

	li $v0, 4
	la $a0, string_name             # print buffer
	syscall

###############################################

# Exit the Program
li $v0, 10
syscall

