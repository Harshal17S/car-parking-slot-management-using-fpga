`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 23:03:16
// Design Name: 
// Module Name: Parking_System
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


module Parking_System(
  input [14:0] cars,
  output reg [3:0] count
);
  always @* 
    count = cars[14] + cars[13] + cars[12] + cars[11] + cars[10] +
            cars[9] + cars[8] + cars[7] + cars[6] + cars[5] +
            cars[4] + cars[3] + cars[2] + cars[1] + cars[0];
endmodule

