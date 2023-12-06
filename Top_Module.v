`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 23:01:23
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
input[14:0]cars,
output[3:0]count,
output[6:0]seg,
output[3:0]an
);
assign an=4'b1110;
Parking_System U0(cars,count);
Seven_Segment U1(count,seg);



endmodule
