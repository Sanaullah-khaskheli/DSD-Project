`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/09/2021 07:47:03 PM
// Design Name: 
// Module Name: full_adder_RCA
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


module full_adder_RCA(cout, sum, a, b, cin);

input   a,b;
input cin;
output  sum;
output cout;
wire c1,c2,s1, A, B, Cin;


xor xor1(s1, a, b);
xor xor2(sum, s1, cin);
and and1(c1, a,b);
and and2(c2, cin, s1);
or or1(cout, c1, c2);

endmodule
