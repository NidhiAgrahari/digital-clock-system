`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2026 03:11:25 PM
// Design Name: 
// Module Name: Sec_counter
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


module Sec_counter(
    input clk_sec,
    input RST,
    output reg [5:0] sec,
    output wire sec_tick
    );
    
    always@(posedge clk_sec,posedge RST)
    if(RST)
    begin
    sec<=6'd0;
    end
    
    else
    begin
    if(sec==6'd59)
    sec<=6'd0;
    else
    sec<=sec+6'd1;
    end
    
    assign sec_tick=(sec==6'd59);
endmodule
