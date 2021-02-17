`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Sukkur IBA University 
// Engineer: SANAULLAH 
// 
// Create Date: 12/27/2020 06:48:14 PM
// Design: Structural 
// Module Name: Carry Generation and Propagation
// Project: Carry LookAhead 
// Target: Nexys4 DDR 
// Version: VIVADO 2016.2 
// Description: In this module we are only generation Carry_out using 
//Propagation and generation Concept
// 
// Dependencies: 
// Revision 0.01 - File Created
// 
// 
//////////////////////////////////////////////////////////////////////////////////


module Four_Bit_Carry_Generation(input cIn,
                  input[3:0] A, 
                  input[3:0] B, 
                  output[3:0] cOut );

    wire[3:0] G, P ;
    wire [3:0] C;
    

          
           
      assign     G  = A   & B ;
      assign     P  = A  ^ B ;
        
          
     assign     cOut[0]  = G[0]  | (P[0] &cIn );
     assign     cOut[1]  = G[1]  | P[1]&(G[0]   | (P[0] &cIn ));
     assign     cOut[2]  = G[2]  | P[2]& (G[1]  | P[1]&(G[0]  | (P[0] &cIn )));
     assign     cOut[3]  = G[3]  | P[3] & (G[2] | P[2]& (G[1] | P[1]&(G[0]  | (P[0] &cIn ))));
          
           
        
endmodule
