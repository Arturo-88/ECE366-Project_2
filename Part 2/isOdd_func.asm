#	ECE366 - Project 2
#	Problem 1 (b)
.text

.globl isOdd

isOdd:	
# Assume argument m is in $a00
	li $a1, 2
	# $a0 = m, $a1 = 2, both get passed to division
	
	b division
	# once we return from calling division
	# $a0 should be the remainder value
done:	beqz $a0, not_odd	# check if remainder == 0
	# if we don't branch, the remainder is odd!
	li $v0, 1	# load return value of 1 for true
	jr $ra
	
not_odd: # remainder is not odd, so return false
	li $v0, 0
	jr $ra
	
division:
	li $t2, 0	#quotient = 0
div_loop:
	blt $a0, $a1, done	# loop condition
	sub $a0, $a0, $a1	# x = x - 2
	addi $t2, $t2, 1	# quotient += 1
	j div_loop
