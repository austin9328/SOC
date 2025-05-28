// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed May 28 00:37:34 2025
// Host        : yo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Documents/Vivado_data/soc_uart/soc_uart.srcs/sources_1/bd/design_1/ip/design_1_uart_0_0/design_1_uart_0_0_stub.v
// Design      : design_1_uart_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_top,Vivado 2018.3" *)
module design_1_uart_0_0(clk, rst_n, rxd, txd, seg, rx_seen, debug_rx_data, 
  debug_rx_valid, debug_busy)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,rxd,txd,seg[6:0],rx_seen,debug_rx_data[7:0],debug_rx_valid,debug_busy" */;
  input clk;
  input rst_n;
  input rxd;
  output txd;
  output [6:0]seg;
  output rx_seen;
  output [7:0]debug_rx_data;
  output debug_rx_valid;
  output debug_busy;
endmodule
