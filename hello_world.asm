# Title: Hello World             Filename: hello_world.asm
# Author: Detective Pikachu
# Description: Classic Hello World
#
.data
 greeting: .asciiz "Hello "
 myName:   .asciiz "Pikachu \n"
# ##############################################
# ###### Equivalent in C
# #include <stdio.h>
# int main()
# {
#	char greeting[] = "Hello ";
#	char myName[] = "Pikachu \n";	
#
# 	printf("%s", greeting);
# 	printf("%s", myName);
# 	return 0;
# }
# ##############################################

.text
main:
# ##############################################
# Your code here:

	li $v0, 4			# load immediate register v0 = 4, where 4 is print string
	la $a0, greeting	# Load address, the string variable gretting to a0 register
	syscall				# Execute

	li $v0, 4			# Same story here, but with another variable
	la $a0, myName
	syscall
# ##############################################

# Exit the Program
li $v0, 10
syscall

