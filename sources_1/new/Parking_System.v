`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 00:24:41
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
  reg [3:0] i;

  always @* begin
    count = 4'b1111; // Initialize to all slots occupied

    // Find the first empty slot using a while loop
    i = 0;
    while ((i < 15) && (cars[i] != 0)) begin
      i = i + 1;
    end

    if (i < 15) begin
      // Set count to the index of the first empty slot
      count = i;
    end
  end
endmodule

