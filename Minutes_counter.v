`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2026 03:14:55 PM
// Design Name: 
// Module Name: Minutes_counter
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


module Minutes_counter(
    input clk_minute,
    input RST,
    input en,
    output reg [5:0] min,
    output wire min_tick
    );
    always@(posedge clk_minute,posedge RST)
    if(RST)
    begin
    min<=6'd0;
    end
    
    else if(en)
    begin
    if(min==6'd59)
    min<=6'd0;
    else
    min<=min+6'd1;
    end
    
    assign min_tick= en &&(min==6'd59);
endmodule
