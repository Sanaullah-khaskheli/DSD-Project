`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design Structural: 
// Module Name: FFour Bit CLA Module.
// Project Carry LookAhead: 
// Target Nexys4 DDR: 
// VIVADO 2016.2: 
// Description: In this module we are adding input bits.
//  
//Cout is generated from Four_bit_Carry_Generation Module. 
//Though it need Cin in first adder Cin is directly connected
//but for 2-4 adder instantiation cin is the output of d_Flip_Flops 
// 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
//   
//////////////////////////////////////////////////////////////////////////////////


module Full_Adder_For_CLA( a, b, cin, sum);

input   a,b;
input cin;
output  sum;
//output cout;
wire c1,c2,s1, A, B, Cin;

//this is for Sum Logic 

xor xor1(s1, a, b);
xor xor2(sum, s1, cin);
 

endmodule
