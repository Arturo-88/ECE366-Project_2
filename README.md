# ECE366-Project_2
We are designing a program that checks if the n'th Fibonacci number is an odd number. This is broken up into parts, where first we calculate the n'th Fibonacci number, and then determine whether that value is odd or not. The program will return '1' if the n'th Fibonacci number is odd, and '0' otherwise.
Github: https://github.com/Arturo-88/ECE366-Project_2 
### Group Members
Arturo Lopez - Alope333@uic.edu  
Christopher Leon - cleon35@uic.edu  
Ronald Li - rli61@uic.edu  
Lucas DiGuido - ldigu@uic.edu
### Team Member Contributions
Arturo created the repository for the project 2 files and started the readme description. Chris completed the readme for part 1. Ronald completed the implementation of the Fibonacci calculation for part 1. Lucas organized the repository folders. 
### Work Completion Status
A couple of us were a bit unfamiliar with mips assembly language, so we took some extra time to become comfortable with mips and the syscall structure before tackling the implementation. We were able to complete the Fibonacci calculation function, and we have a clear idea of how to implement the isOdd function using the given division by subtraction function. 
### How to Run the Program
Our mips file can be run using the Mars simulator by first assembling the program and then executing it, either step by step or all at once. Our implementation prompts the user to input a specific value for n, and then the Fibonacci number of that input gets calculated using the given psuedocode. We used the register $a0 as the input to the function and $v0 as the output of the function. The output also gets printed to the terminal once the calculation is complete.
