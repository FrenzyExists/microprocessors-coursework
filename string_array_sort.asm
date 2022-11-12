# Sort the strings in the array in ascending order (per ascii order) and print each string, every one in a separate row

# Use nested subroutines and be mindful of how you pass your parameters

.data
nigga: .asciiz "a"

string_array: 
   .asciiz "one"
   .asciiz "two"
   .asciiz "three"
   .asciiz "four"
   .asciiz "a veces"
   .asciiz "esta raro"
   .asciiz "four"
   .asciiz "el orden"
   .asciiz "1"
   .asciiz "2"
   .asciiz "11"
   .asciiz "02"

.text 
main:
###############################################
# Your code here:

la $t0, nigga
lb $a0, ($t0)
li $v0, 1
syscall

###############################################

# Exit the Program
li $v0, 10
syscall


swap:
    