`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design Structural: 
// Module Name: D_Flip_Flop
// Project: CLA: 
// Target: Nexys4 DDR  
// VIVADO 2016.2: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_Flipflop(D,clk,Rs,Q);
input D; // Data input 
input clk; // clock input 
input Rs; // synchronous reset 
output reg Q; // output Q 
always @(posedge clk) 
    begin
        if(Rs==1'b1)
             Q <= 1'b0; 
        else 
             Q <= D; 
    end 
endmodule
