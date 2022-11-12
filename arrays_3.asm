# Find the minimum and maximum value within the given array and print their sum.

# (When developing the code, review in detail the provided code, so that you can 
# understand how to do you own tests to ensure that your added code works as requested)

.data
array: .word 1, 2, 5, 10, 20, 25, 100, 4206
.text 
main:
# Replace first and last value with new number
li $v0, 5
syscall
sw $v0, array($t0)
li $t0, 28
mul $t1, $v0, 5
sw $t1, array($t0)

###############################################
# Your code here:3
la      $t0, array
li      $t1, 0 
li      $t2, 7
lw      $s1, ($t0)
loop:
	
    lw      $a0, ($t0)
	
	
	blt     $a0, $s1, smaller
	bgt		$a0, $s0, bigger
	

	add 	$t1, $t1, 1
	add 	$t0, $t0, 4

	ble 	$t1, $t2, loop
	

add     $a0, $s0, $s1
li      $v0, 1
syscall

###############################################

# Exit the Program
exit:
	li $v0, 10
	syscall


smaller:
	move 	$s1, $a0
	j 		loop 

bigger:
	move 	$s0, $a0
	j 		loop
