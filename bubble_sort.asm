.data
array: .word 4, 23, 5, 1, 20, 25, 100, 420, 32, 450, 44
comma: .asciiz ", "
.text 
main:
###############################################
# Your code here:
la $t0, array
li $t1, 11			# i
li $t2, 10			# j
la $s2, comma

outerLoop:						
	innerLoop:
		lw $s0, ($t0)				# $s0 = array[j]
		lw $s1, 4($t0)				# $s1 = array[j + 1]
		
		check:
			bgt $s0, $s1, swap		# if $s0 < $s1 swap numbers
		
		sub $t2, $t2, 1				# Subtract 1 from j counter
		add $t0, $t0, 4				# Move array[j]
		bnez $t2, innerLoop
	
	li $t2, 10					# Restart j
	sub $t1, $t1, 1					# Subtract 1 from i counter
	la $t0, array					# Reload array address
	
	bnez $t1, outerLoop 
	
li $t1, 10
printLoop:						# Goes through sorted array and prints number with comma
	lw $a0, ($t0)
	li $v0, 1
	syscall
	
	move $a0, $s2
	li $v0, 4
	syscall
	
	sub $t1, $t1, 1
	add $t0, $t0, 4
	
	bnez $t1, printLoop
	
lw $a0, ($t0)						# Print last number so that it wo'nt have comma
li $v0, 1
syscall
	
##############################################

# Exit the Program
li $v0, 10
syscall

swap:
	sw $s1, ($t0)
	sw $s0, 4($t0)
	lw $s0, ($t0)
	lw $s1, 4($t0)
	j check
