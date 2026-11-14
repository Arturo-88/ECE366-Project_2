# ECE366-Project_2
We are designing a program that checks if the n'th Fibonacci number is an odd number. This is broken up into parts, where first we calculate the n'th Fibonacci number, and then determine whether that value is odd or not. The program will return '1' if the n'th Fibonacci number is odd, and '0' otherwise.
Github: https://github.com/Arturo-88/ECE366-Project_2 
### Group Members
Arturo Lopez - Alope333@uic.edu  
Christopher Leon - cleon35@uic.edu  
Ronald Li - rli61@uic.edu  
Lucas DiGuido - ldigu@uic.edu
### Team Member Contributions
Arturo created the repository for the project 2 files and started the readme description. Chris completed the implementation for the isOdd function in part (b). Ronald completed the implementation of the Fibonacci calculation for part (a). Lucas organized the repository folders. 
### Work Completion Status
We have completed the implementation of both programs from part (a) and (b) based on the given pseudo code. We have a good idea of how both programs can be used together to form the isFibonacciOdd() function we are implementing.
### How to Run the Program
Our mips file can be run using the Mars simulator by first assembling the program and then executing it, either step by step or all at once. Our implementation prompts the user to input a specific value for n, and then the Fibonacci number of that input gets calculated using the given pseudocode. The output also gets printed to the terminal once the calculation is complete. For the isOdd() function, the program will be called by a larger program that checks whether a given argument is odd or not. The output register gets set to 0 or 1 depending on whether the passed argument is odd or not. Note: the program argument gets passed through the $a0 register, and the output is returned through the $v0 register.
