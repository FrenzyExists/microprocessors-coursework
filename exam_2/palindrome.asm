.data
userPrompt: .asciiz "Enter a word: "
userString: .space 256
newline: .asciiz "\n"
yes: .asciiz "This word is a palindrome!"
no: .asciiz "This word is not a palindrome!"
.text

main:

    # Prompt 
    la $a0, userPrompt
    li $v0, 4
    syscall

    la $a0, userString
    li $a1, 256
    syscall

li $v0, 8
    la $s0, userString
    li $t0, 0

checkSize:
    lb $s1, 0($s0)
    lb $s2, 1($s0)
    add $t0, $t0, 1
    add $s0, $s0, 1
    bne $s2, 10, checkSize

    la $s0, userString
    la $s1, userString
    sub $t0, $t0, 1

checkPalindrome:
    lb $t1, 0($s0)
    lb $t2, 1($s0)
    lb $t3, userString($t0)

    add $s0, $s0, 1
    sub $t0, $t0, 1

    bne $t1, $t3, noPrint
    beq $t2, 10, yesPrint
    j checkPalindrome

yesPrint:
    la $a0, yes
    li $v0, 4
    syscall
    j exit

noPrint:
    la $a0, no
    li $v0, 4
    syscall


# Exit the Program
exit:
    li $v0, 10
    syscall