`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design Structural: 
// Module Name: TopLevel
// Project: This is TopLevel For CLA 
// Target: Nexys4 DDR 
// VIVADO 2016.2: 
// Description: In this Module I instantiation Blinky and 16_bit_CLA
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TopLevl(A, B, Cin, Cout, Sum,  Clk, Rs );

//parameter n = 4;

    input    Cin,   Clk, Rs;
    input   [15:0] A, B;
    output   [15:0] Sum;
    output   Cout;
    wire clock_out;
   
     
//Instantiate For Blinky

    Blinky_1Hz  Insto0(.clock_in(Clk), .clock_out(clock_out)   );

 
//Instoantiation for Four Bit CLA
    Sixteen_Bit_CLA   Insto1( .cIn(Cin),  .A(A),  .B(B),   .Rs(Rs), .Clk(clock_out),  .Sum(Sum), .cOut(Cout)   );
  
 

endmodule
