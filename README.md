# Digital Clock System on FPGA (Verilog)

## Overview
24-hour digital clock implemented in Verilog using modular RTL design. A 100 MHz input clock is divided down to an approximately 1 Hz clock using a 27-bit counter and a bit selector. The divided clock drives the seconds, minutes and hours counters.

## Tools and Technologies
Verilog HDL, Xilinx Vivado, Integrated Logic Analyzer (ILA)

## Modules
- digital_clocksystem.v: Top module
- Clock_divider.v: Clock divider (27-bit counter and bit selector)
- counter_27bit.v: 27-bit sequential counter
- Bit_selector.v: Combinational bit selector using assign statement
- Sec_counter.v: Seconds counter (0 to 59)
- Minutes_counter.v: Minutes counter (0 to 59)
- Hours_counter.v: Hours counter (0 to 23)
- pins.xdc:Constraints file (clock and pin assignments)

## Design Details
- Input clock: 100 MHz
- Divided clock: approximately 1 Hz 
- Seconds and minutes: 6-bit counters, hours: 5-bit counter
- Single ILA with 3 probes (seconds, minutes, hours)

## Hardware Testing
Deployed on an FPGA through a remote lab. Counter outputs were verified using Vivado ILA.


