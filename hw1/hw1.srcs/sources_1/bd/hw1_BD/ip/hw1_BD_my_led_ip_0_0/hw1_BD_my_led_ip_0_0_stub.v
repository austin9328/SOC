// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Mar 27 00:38:13 2025
// Host        : yo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Documents/Vivado_data/hw1/hw1.srcs/sources_1/bd/hw1_BD/ip/hw1_BD_my_led_ip_0_0/hw1_BD_my_led_ip_0_0_stub.v
// Design      : hw1_BD_my_led_ip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "my_led_ip,Vivado 2018.3" *)
module hw1_BD_my_led_ip_0_0(led_input, led_out)
/* synthesis syn_black_box black_box_pad_pin="led_input[7:0],led_out[7:0]" */;
  input [7:0]led_input;
  output [7:0]led_out;
endmodule
