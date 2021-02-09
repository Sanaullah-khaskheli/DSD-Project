`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design Structural: 
// Module Name: Sixteen Bit RCA
// Project: Ripple Carry Adder 
// Target: Nexys4 DDR 
// Version: VIVADO 2016.2 
// Description: This is the module of Four_Bit_Adder where we add d_Flip_Flop for delay
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
  
module FourBit_Adder_Using_Fulladder(Sum, Carry, A, B, Cin, En, Rs );
input [3:0] A, B;
input Cin, En, Rs;

output [3:0] Sum;
output   Carry;

wire c1, c2, c3, c4, cOut1, cOut2, cOut3  ;

//instantiation of Dff and Full Adder

D_Flipflop                  dff0(.D(Cin),.clk(En),.Rs(Rs),.Q(c1));
full_adder_RCA              INST1(.sum(Sum[0]), .cout(cOut1), .a(A[0]), .b(B[0]), .cin(c1));

D_Flipflop                  dff1(.D(cOut1),.clk(En),.Rs(Rs),.Q(c2));
full_adder_RCA              INST2(.sum(Sum[1]), .cout(cOut2), .a(A[1]), .b(B[1]), .cin(c2));

D_Flipflop                  dff2(.D(cOut2),.clk(En),.Rs(Rs),.Q(c3));
full_adder_RCA              INST3(.sum(Sum[2]), .cout(cOut3), .a(A[2]), .b(B[2]), .cin(c3));

D_Flipflop                  dff3(.D(cOut3),.clk(En),.Rs(Rs),.Q(c4));
full_adder_RCA              INST4(.sum(Sum[3]), .cout(Carry), .a(A[3]), .b(B[3]), .cin(c4));




endmodule





 