
# Description: Calculate the volume of a circle given the radius using 
# double precision floats.
.data
pi: .double 3.14	# Pi
r:  .double 0.00	# Radius

.text
main:
    # Input R
    li $v0, 6
    syscall
    swc1 $f0, r

###############################################
    # Your code here:

    la $t1, 3
    la $t2, 4
    
    mtc1 $t1, $f1
    mtc1 $t2, $f2
    
    cvt.s.d $f1,$f1
    cvt.s.d $f2,$f2
    
	la      $t0, pi
	ldc1    $f3, 2($t0)


	# other code here
	mul.d $f0, $f0, $f0     # res = r * r
    div.d $f4, $f2, $f1     # f4 = 4/3
    mul.d $f0, $f0, $f4     # res *= f4 
    mul.d $f12, $f0, $f3    # res = (4/3 * r * r) * 3.14

li $v0, 2
syscall

###############################################

# Exit the program
li $v0, 10
syscall