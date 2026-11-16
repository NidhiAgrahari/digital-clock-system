`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2026 03:18:25 PM
// Design Name: 
// Module Name: Hours_counter
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


module Hours_counter(
    input clk_hour,
    input RST,
    input enable,
    output reg [4:0] hrs
    );
    
    always@(posedge clk_hour,posedge RST)
    if(RST)
    begin
    hrs<=5'd0;
    end
    
    else if(enable)
    begin
    if(hrs==5'd23)
    hrs<=5'd0;
    else
    hrs<=hrs+5'd1;
    end
endmodule
