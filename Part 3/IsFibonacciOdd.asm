#Arturo and Lucas 
#this is going to be the part C of the project

.data 
	output: 	.word 0
	n: 		.word 2 
	resulting_msg:	.asciiz "Result: "
	
.text 
.globl main

main: 
#getting n
la $t6, n
lw $a0, 0($t6)

#using the result we want to pass that to the func. we make for calc. Fibonacci(n)
#after that we want to pass that to the isOdd func. and then store that value in mem
#saving that result to print out to you
jal fibonacci

move $a0, $v0 
jal isOdd 

la $t6, output
sw $v0, 0($t6)

move $t0, $v0


li $v0,4 
la $a0, resulting_msg 
syscall 

li $v0, 1
move $a0, $t0 
syscall 

li $v0, 10
syscall




fibonacci:
	li $t0, 1 		# n <= 1 test casing
	ble $a0, $t0, base_case
	
	li $t1, 0 		# t0 = a = 0
	li $t2, 1 		# t1 = b = 1
	li $t3, 0 		# t3 = i = 0
	addi $t4, $a0, -1	# t4 = n - 1

fib_loop:
	bge $t3, $t4, end_loop	# if t3 >= t4, end loop
	
	move $t5, $t2		# t5 = temp value
	add $t2, $t1, $t2	# t2 = t1 + t2
	move $t1, $t5		# move t1 to t5 (temp value)
	
	addi $t3, $t3, 1	# i++
	j fib_loop		# repeat loop until the first test case in this loop
	
end_loop:
	move $v0, $t2
	jr $ra
	
base_case:
	move $v0, $a0
	jr $ra


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



