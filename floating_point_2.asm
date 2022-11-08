
# Description: Calculate the volume of a circle given the radius using 
# double precision floats.
.data
pi: .double 3.14	# Pi
r:  .double 0.00	# Radius
w: .asciiz "\n"
# 4/3
d3: .double 3.00 
d4: .double 4.00
.text
main:
    # Input R
    li $v0, 6
    syscall
    swc1 $f0, r
    swc1 $f8, r
    # ldc1 $f0, r

###############################################
    # Your code here:



    ldc1    $f2, pi
    ldc1    $f4, d3
    ldc1    $f6, d4
    
    

    add.d $f12, $f0, $f8
    li $v0, 2
    syscall

        la $a0, w
        li $v0, 4
        syscall

	# other code here
	mul.d $f10, $f0, $f0     # res = r * r
    div.d $f6, $f6, $f4     # f4 = 4/3
    div.d $f12, $f6, $f4     # f4 = 4/3

    li $v0, 2
    syscall

        la $a0, w
        li $v0, 4
        syscall

    mul.d $f8, $f10, $f6     # res *= f4
    add.d $f12, $f0, $f6     # res *= f4
    
    li $v0, 2
    syscall

        la $a0, w
        li $v0, 4
        syscall

    mul.d $f12, $f8, $f10    # res = (4/3 * r * r) * 3.14

li $v0, 2
syscall

###############################################

# Exit the program
li $v0, 10
syscall