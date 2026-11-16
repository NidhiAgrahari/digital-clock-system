`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2026 03:22:40 PM
// Design Name: 
// Module Name: digital_clocksystem
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


module digital_clocksystem(
    input CLK,
   // input RST,
    output [5:0] sec,
    output [5:0] min,
    output [4:0] hrs
    );
    wire clk_div;
    wire sec_tick;
    wire min_tick;
    
    Clock_divider part1 
    (.CLK(CLK),
    .RST(RST),
    .clk_div(clk_div));
    
    Sec_counter part2
    (.clk_sec(clk_div),
    .RST(RST),
    .sec(sec),
    .sec_tick(sec_tick));
    
    Minutes_counter part3
    (.clk_minute(clk_div),
    .RST(RST),
    .min(min),
    .min_tick(min_tick),.en(sec_tick));
    
    Hours_counter part4
    (.clk_hour(clk_div),
    .RST(RST),
    .hrs(hrs),
    .enable(min_tick));
    
    
ila_0 your_instance_name (
	.clk(CLK), // input wire clk


	.probe0(sec), // input wire [5:0]  probe0  
	.probe1(min), // input wire [5:0]  probe1 
	.probe2(hrs) // input wire [4:0]  probe2
);

vio_1 MYVIO (
  .clk(CLK),                // input wire clk
  .probe_in0(clk_div),    // input wire [0 : 0] probe_in0
  .probe_out0(RST)  // output wire [0 : 0] probe_out0
);
endmodule
