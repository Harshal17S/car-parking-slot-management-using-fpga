`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.10.2023 23:58:47
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
  input [14:0] cars,
  output reg [3:0] vacant_slot,
  output reg [6:0] seg,
  output reg [3:0] an
);
  wire [3:0] vacant_slot_wire;
  wire [6:0] seg_wire;

  Parking_System U0(cars, vacant_slot_wire);
  Seven_Segment U1(vacant_slot_wire, seg_wire);

  always @* begin
    vacant_slot = vacant_slot_wire;
    seg = seg_wire;
    an = 4'b1110;
  end
endmodule


