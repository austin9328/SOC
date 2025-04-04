-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Thu Mar 27 00:38:13 2025
-- Host        : yo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/Documents/Vivado_data/hw1/hw1.srcs/sources_1/bd/hw1_BD/ip/hw1_BD_my_led_ip_0_0/hw1_BD_my_led_ip_0_0_sim_netlist.vhdl
-- Design      : hw1_BD_my_led_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hw1_BD_my_led_ip_0_0 is
  port (
    led_input : in STD_LOGIC_VECTOR ( 7 downto 0 );
    led_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hw1_BD_my_led_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hw1_BD_my_led_ip_0_0 : entity is "hw1_BD_my_led_ip_0_0,my_led_ip,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of hw1_BD_my_led_ip_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of hw1_BD_my_led_ip_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of hw1_BD_my_led_ip_0_0 : entity is "my_led_ip,Vivado 2018.3";
end hw1_BD_my_led_ip_0_0;

architecture STRUCTURE of hw1_BD_my_led_ip_0_0 is
  signal \^led_input\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^led_input\(7 downto 0) <= led_input(7 downto 0);
  led_out(7 downto 0) <= \^led_input\(7 downto 0);
end STRUCTURE;
