-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar 27 00:38:13 2025
-- Host        : yo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               D:/Documents/Vivado_data/hw1/hw1.srcs/sources_1/bd/hw1_BD/ip/hw1_BD_my_led_ip_0_0/hw1_BD_my_led_ip_0_0_stub.vhdl
-- Design      : hw1_BD_my_led_ip_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hw1_BD_my_led_ip_0_0 is
  Port ( 
    led_input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end hw1_BD_my_led_ip_0_0;

architecture stub of hw1_BD_my_led_ip_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "led_input[7:0],led_out[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "my_led_ip,Vivado 2018.3";
begin
end;
