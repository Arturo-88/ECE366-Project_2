.data
	prompt_n: 	.asciiz "Enter n: "
	result:		.asciiz "Result: "
.text
.globl main

main:
	# ask and read for n
    	li $v0, 4
    	la $a0, prompt_n
    	syscall
    	
    	li $v0, 5
    	syscall
    	move $a0, $v0
    	
    	jal fibonacci
    	move $t0, $v0
    	
    	# print the result
    	li $v0, 4
    	la $a0, result
    	syscall
    	
    	li $v0, 1
    	move $a0, $t0
    	syscall
    	
    	# exit program
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