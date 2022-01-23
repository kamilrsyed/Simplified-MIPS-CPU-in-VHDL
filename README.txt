************************** README ****************************

This is the readme file to verify and simulate this design.

This is a design of a smiplified MIPS CPU that performs addition of 
5 integers.

The machine instructions are entered into the instruction register.
In this design, the instruction register is SYED_Instruction.vhdl.
Machine instructions are 32 bits long. 

There are 3 machine MIPS instructions needed for this design.
1- lw
2- sw
3- add

1-lw Instruction:-

The machine instruction is 10001101010010000000000000000000
explanation: --100011 lw | 01010 register 10, 01000 dest. register , 0000 0000 offset, 0000

2-sw Instruction:-

The machine instrucion is 10101101000100000000000000000000
explanation: --101011 sw | 01000 register 8, $t0 | 10000 register 16, $s0. $t0 = $s0

3-add INstruction

The machine instrucion is 00000001000010011010100000000000
explanation: --000000 add (R-type) | rs 01000 | rt 01001 | rd 10101

The following sequence of instrucitions are needed to be enetered 
into the instruction to achieve the objective of adding 5 integers:
load 5 words:
lw
lw
lw
lw
lw
addition:
add
add
add
add
store in memory:
sw

enter the instrucionts and then simulate the CPU control file in modelsim to verify the design
