`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design Structural: 
// Module Name: TopLevel
// Project Ripple Carry Adder: 
// Target Nexys4 DDR: 
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


module TopLevl(A, B, Cin, Cout, Sum,  Clk, Rs );

//parameter n = 4;

    input    Cin,   Clk, Rs;
    input   [15:0] A, B;
    output   [15:0] Sum;
    output   Cout;
    wire clock_out;
   
     
                        //Instantiate For Blinky
   Blinky_1Hz  Inst0(.clock_in(Clk), .clock_out(clock_out)   );

 
//Instantiation for Ripple carry adder

  Sixteen_Bit_RCA   Insto1(.sUm(Sum), .cOut(Cout), .a(A), .b(B), .cIn(Cin), .En(clock_out), .Rs(Rs) );
 

endmodule
