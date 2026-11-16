`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 04:45:37 PM
// Design Name: 
// Module Name: counter_27bit
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


module counter_27bit(
    input clk_100Mhz,
    input RST,
    output reg [26:0] count
    );
    
   always@(posedge clk_100Mhz,posedge RST)
   begin
   
    if(RST)
    begin
    count<=27'd0;
    end
    
    else
    begin
    count<=count+27'd1;
    end
    end
endmodule
