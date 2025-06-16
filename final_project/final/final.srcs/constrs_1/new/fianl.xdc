set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS33} [get_ports {tx}]  
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS33} [get_ports {rx}] 

set_property -dict {PACKAGE_PIN T22 IOSTANDARD LVCMOS33} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN T21 IOSTANDARD LVCMOS33} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN U22 IOSTANDARD LVCMOS33} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN U21 IOSTANDARD LVCMOS33} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN V22 IOSTANDARD LVCMOS33} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN W22 IOSTANDARD LVCMOS33} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {LED[7]}]

set_property -dict {PACKAGE_PIN R16 IOSTANDARD LVCMOS33} [get_ports {btn_hit}]