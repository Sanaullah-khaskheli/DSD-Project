`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design Structural: 
// Module Name:  Four Bit CLA Module.
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


module FourBitCLA(input cIn, 
                  input[3:0] A, 
                  input[3:0] B, 
                  input   Rs,
                  input   Clk,
                  output[3:0] Sum,
                  output cOut   );
                  wire [3:0] c;
                  assign cOut = c[3];
                  
 Four_Bit_Carry_Generation(  .cIn(cIn), .A(A[3:0]),  .B(B[3:0]),  .cOut(c[3:0]) ); 
                  
 D_Flipflop  Dff0(.D(c[0]), .clk(Clk), .Rs(Rs), .Q(Cout0)); 
 D_Flipflop  Dff1(.D(c[1]), .clk(Clk), .Rs(Rs), .Q(Cout1));
 D_Flipflop  Dff2(.D(c[2]), .clk(Clk), .Rs(Rs), .Q(Cout2));
                   
                   
               //Four Bit adder    
Full_Adder_For_CLA  CLA0( .a(A[0]), .b(B[0]), .cin(Cin),   .sum(Sum[0]) );
Full_Adder_For_CLA  CLA1( .a(A[1]), .b(B[1]), .cin(Cout0), .sum(Sum[1]) );
Full_Adder_For_CLA  CLA2( .a(A[2]), .b(B[2]), .cin(Cout1), .sum(Sum[2]) );
Full_Adder_For_CLA  CLA3( .a(A[3]), .b(B[3]), .cin(Cout2), .sum(Sum[3]) );

   
endmodule