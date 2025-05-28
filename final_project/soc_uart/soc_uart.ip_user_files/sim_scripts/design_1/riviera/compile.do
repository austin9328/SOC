vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_4
vlib riviera/processing_system7_vip_v1_0_6
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 riviera/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 riviera/processing_system7_vip_v1_0_6
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Vivado/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/5cc4/hdl/uart_7seg_display.v" \
"../../../bd/design_1/ipshared/5cc4/hdl/uart_rx.v" \
"../../../bd/design_1/ipshared/5cc4/hdl/uart_tx.v" \
"../../../bd/design_1/ipshared/5cc4/hdl/wrapper.v" \
"../../../bd/design_1/ip/design_1_uart_0_0/sim/design_1_uart_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_proc_sys_reset_0_0/sim/design_1_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../soc_uart.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" "+incdir+C:/Vivado/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

