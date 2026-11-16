`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 04:53:22 PM
// Design Name: 
// Module Name: Clock_divider
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


module Clock_divider(
    input CLK,
    input RST,
    output clk_div
    );
    
    wire [26:0]clk_out;
    
    counter_27bit COUNTER(.clk_100Mhz(CLK),.RST(RST),.count(clk_out));
    Bit_selector BITSELECTOR (.count_in(clk_out),.count_out(clk_div));
endmodule
