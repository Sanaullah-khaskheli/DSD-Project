`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2021 06:47:34 PM
// Design Name: 
// Module Name: Sixteen_Bit_CLA
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


module Sixteen_Bit_CLA(input cIn, 
                  input[15:0] A, 
                  input[15:0] B, 
                  input   Rs,
                  input   Clk,
                  output[15:0] Sum,
                  output cOut   );
FourBitCLA CLA0( .cIn(cIn),   .A(A[3:0]),  .B(B[3:0]),   .Rs(Rs), .Clk(Clk),  .Sum(Sum[3:0]), .cOut(C0)   );
FourBitCLA CLA1( .cIn(C0),    .A(A[7:4]),  .B(B[7:4]),   .Rs(Rs), .Clk(Clk),  .Sum(Sum[7:4]), .cOut(C1)   );
FourBitCLA CLA2( .cIn(C1),    .A(A[11:8]), .B(B[11:8]),  .Rs(Rs), .Clk(Clk),  .Sum(Sum[11:8]), .cOut(C2)   );
FourBitCLA CLA3( .cIn(C2),    .A(A[15:12]), .B(B[15:12]), .Rs(Rs), .Clk(Clk),  .Sum(Sum[15:12]), .cOut(cOut)   );
                    
endmodule
