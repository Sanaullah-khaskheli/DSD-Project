`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2021 07:32:28 PM
// Design Name: 
// Module Name: Sixteen_Bit_RCA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sixteen_Bit_RCA(sUm, cOut, a, b, cIn, En, Rs );
input [15:0] a, b;
input cIn, En, Rs;

output [15:0] sUm;
output   cOut;

FourBit_Adder_Using_Fulladder   fa1(sUm[3:0],   C0,   a[3:0],   b[3:0],   cIn, En, Rs);
FourBit_Adder_Using_Fulladder   fa2(sUm[7:4],   C1,   a[7:4],   b[7:4],   C0,  En, Rs);
FourBit_Adder_Using_Fulladder   fa3(sUm[11:8],  C2,   a[11:8],  b[11:8],  C1,  En, Rs);
FourBit_Adder_Using_Fulladder   fa4(sUm[15:12], cOut, a[15:12], b[15:12], C2,  En, Rs);

endmodule
