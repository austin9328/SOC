// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 27 14:18:29 2025
// Host        : yo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_0_0_sim_netlist.v
// Design      : design_1_uart_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uart_0_0,uart_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "uart_top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    rxd,
    txd,
    seg,
    rx_seen,
    debug_rx_data,
    debug_rx_valid,
    debug_busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst_n:rst, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input rxd;
  output txd;
  output [6:0]seg;
  output rx_seen;
  output [7:0]debug_rx_data;
  output debug_rx_valid;
  output debug_busy;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire debug_busy;
  wire [7:0]debug_rx_data;
  wire debug_rx_valid;
  wire rst_n;
  wire rxd;
  wire txd;

  assign rx_seen = \<const0> ;
  assign seg[6] = \<const0> ;
  assign seg[5] = \<const1> ;
  assign seg[4] = \<const1> ;
  assign seg[3] = \<const1> ;
  assign seg[2] = \<const1> ;
  assign seg[1] = \<const1> ;
  assign seg[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top inst
       (.clk(clk),
        .debug_busy(debug_busy),
        .debug_rx_data(debug_rx_data),
        .m_axis_tvalid_reg_reg(debug_rx_valid),
        .rst_n(rst_n),
        .rxd(rxd),
        .txd(txd));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
   (m_axis_tvalid_reg_reg_0,
    debug_busy,
    debug_rx_data,
    rst,
    rxd,
    clk,
    rst_n);
  output m_axis_tvalid_reg_reg_0;
  output debug_busy;
  output [7:0]debug_rx_data;
  input rst;
  input rxd;
  input clk;
  input rst_n;

  wire bit_cnt;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[2]_i_2_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt[3]_i_2_n_0 ;
  wire \bit_cnt[3]_i_4_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire busy_reg4_out;
  wire busy_reg_i_1_n_0;
  wire clk;
  wire [7:0]data_reg;
  wire \data_reg[7]_i_1__0_n_0 ;
  wire data_reg_0;
  wire debug_busy;
  wire [7:0]debug_rx_data;
  wire m_axis_tdata_reg;
  wire \m_axis_tdata_reg[7]_i_2_n_0 ;
  wire \m_axis_tdata_reg[7]_i_3_n_0 ;
  wire \m_axis_tdata_reg[7]_i_4_n_0 ;
  wire \m_axis_tdata_reg[7]_i_5_n_0 ;
  wire \m_axis_tdata_reg[7]_i_6_n_0 ;
  wire \m_axis_tdata_reg[7]_i_7_n_0 ;
  wire m_axis_tvalid_reg_i_1_n_0;
  wire m_axis_tvalid_reg_reg_0;
  wire \prescale_reg[0]_i_10_n_0 ;
  wire \prescale_reg[0]_i_11_n_0 ;
  wire \prescale_reg[0]_i_1__0_n_0 ;
  wire \prescale_reg[0]_i_2_n_0 ;
  wire \prescale_reg[0]_i_4_n_0 ;
  wire \prescale_reg[0]_i_5_n_0 ;
  wire \prescale_reg[0]_i_6_n_0 ;
  wire \prescale_reg[0]_i_7_n_0 ;
  wire \prescale_reg[0]_i_8_n_0 ;
  wire \prescale_reg[0]_i_9_n_0 ;
  wire \prescale_reg[12]_i_2__0_n_0 ;
  wire \prescale_reg[12]_i_3__0_n_0 ;
  wire \prescale_reg[12]_i_4__0_n_0 ;
  wire \prescale_reg[12]_i_5__0_n_0 ;
  wire \prescale_reg[16]_i_2_n_0 ;
  wire \prescale_reg[16]_i_3__0_n_0 ;
  wire \prescale_reg[16]_i_4__0_n_0 ;
  wire \prescale_reg[4]_i_2_n_0 ;
  wire \prescale_reg[4]_i_3_n_0 ;
  wire \prescale_reg[4]_i_4_n_0 ;
  wire \prescale_reg[4]_i_5_n_0 ;
  wire \prescale_reg[4]_i_6_n_0 ;
  wire \prescale_reg[4]_i_7_n_0 ;
  wire \prescale_reg[4]_i_8_n_0 ;
  wire \prescale_reg[4]_i_9_n_0 ;
  wire \prescale_reg[8]_i_2_n_0 ;
  wire \prescale_reg[8]_i_3__0_n_0 ;
  wire \prescale_reg[8]_i_4__0_n_0 ;
  wire \prescale_reg[8]_i_5__0_n_0 ;
  wire \prescale_reg[8]_i_6_n_0 ;
  wire [18:0]prescale_reg_reg;
  wire \prescale_reg_reg[0]_i_3_n_0 ;
  wire \prescale_reg_reg[0]_i_3_n_1 ;
  wire \prescale_reg_reg[0]_i_3_n_2 ;
  wire \prescale_reg_reg[0]_i_3_n_3 ;
  wire \prescale_reg_reg[0]_i_3_n_4 ;
  wire \prescale_reg_reg[0]_i_3_n_5 ;
  wire \prescale_reg_reg[0]_i_3_n_6 ;
  wire \prescale_reg_reg[0]_i_3_n_7 ;
  wire \prescale_reg_reg[12]_i_1_n_0 ;
  wire \prescale_reg_reg[12]_i_1_n_1 ;
  wire \prescale_reg_reg[12]_i_1_n_2 ;
  wire \prescale_reg_reg[12]_i_1_n_3 ;
  wire \prescale_reg_reg[12]_i_1_n_4 ;
  wire \prescale_reg_reg[12]_i_1_n_5 ;
  wire \prescale_reg_reg[12]_i_1_n_6 ;
  wire \prescale_reg_reg[12]_i_1_n_7 ;
  wire \prescale_reg_reg[16]_i_1_n_2 ;
  wire \prescale_reg_reg[16]_i_1_n_3 ;
  wire \prescale_reg_reg[16]_i_1_n_5 ;
  wire \prescale_reg_reg[16]_i_1_n_6 ;
  wire \prescale_reg_reg[16]_i_1_n_7 ;
  wire \prescale_reg_reg[4]_i_1_n_0 ;
  wire \prescale_reg_reg[4]_i_1_n_1 ;
  wire \prescale_reg_reg[4]_i_1_n_2 ;
  wire \prescale_reg_reg[4]_i_1_n_3 ;
  wire \prescale_reg_reg[4]_i_1_n_4 ;
  wire \prescale_reg_reg[4]_i_1_n_5 ;
  wire \prescale_reg_reg[4]_i_1_n_6 ;
  wire \prescale_reg_reg[4]_i_1_n_7 ;
  wire \prescale_reg_reg[8]_i_1_n_0 ;
  wire \prescale_reg_reg[8]_i_1_n_1 ;
  wire \prescale_reg_reg[8]_i_1_n_2 ;
  wire \prescale_reg_reg[8]_i_1_n_3 ;
  wire \prescale_reg_reg[8]_i_1_n_4 ;
  wire \prescale_reg_reg[8]_i_1_n_5 ;
  wire \prescale_reg_reg[8]_i_1_n_6 ;
  wire \prescale_reg_reg[8]_i_1_n_7 ;
  wire rst;
  wire rst_n;
  wire rxd;
  wire rxd_reg;
  wire [3:2]\NLW_prescale_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_prescale_reg_reg[16]_i_1_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h001A)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt[2]_i_2_n_0 ),
        .I2(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I3(\prescale_reg[0]_i_1__0_n_0 ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000029AA39AA)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt[2]_i_2_n_0 ),
        .I3(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I4(rxd_reg),
        .I5(\prescale_reg[0]_i_1__0_n_0 ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000262A)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(bit_cnt),
        .I2(\bit_cnt[2]_i_2_n_0 ),
        .I3(\bit_cnt[3]_i_4_n_0 ),
        .I4(\bit_cnt[3]_i_2_n_0 ),
        .I5(\prescale_reg[0]_i_1__0_n_0 ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \bit_cnt[2]_i_2 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EECEEEEE)) 
    \bit_cnt[3]_i_1 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt[3]_i_2_n_0 ),
        .I2(bit_cnt),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt[3]_i_4_n_0 ),
        .I5(\prescale_reg[0]_i_1__0_n_0 ),
        .O(\bit_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \bit_cnt[3]_i_2 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I5(rxd_reg),
        .O(\bit_cnt[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \bit_cnt[3]_i_3 
       (.I0(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .O(bit_cnt));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \bit_cnt[3]_i_4 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    busy_reg_i_1
       (.I0(debug_busy),
        .I1(busy_reg4_out),
        .I2(rxd_reg),
        .I3(rst_n),
        .O(busy_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    busy_reg_i_2
       (.I0(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .O(busy_reg4_out));
  FDRE #(
    .INIT(1'b0)) 
    busy_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(busy_reg_i_1_n_0),
        .Q(debug_busy),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[7]_i_1__0 
       (.I0(\bit_cnt[3]_i_2_n_0 ),
        .I1(rst_n),
        .O(\data_reg[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h02A80000)) 
    \data_reg[7]_i_2 
       (.I0(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(rst_n),
        .O(data_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[1]),
        .Q(data_reg[0]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[2]),
        .Q(data_reg[1]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[3]),
        .Q(data_reg[2]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[4]),
        .Q(data_reg[3]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[5]),
        .Q(data_reg[4]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[6]),
        .Q(data_reg[5]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(data_reg_0),
        .D(data_reg[7]),
        .Q(data_reg[6]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(data_reg_0),
        .D(rxd_reg),
        .Q(data_reg[7]),
        .R(\data_reg[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \m_axis_tdata_reg[7]_i_1 
       (.I0(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I1(rxd_reg),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[1] ),
        .I5(\bit_cnt_reg_n_0_[3] ),
        .O(m_axis_tdata_reg));
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_reg[7]_i_2 
       (.I0(\m_axis_tdata_reg[7]_i_3_n_0 ),
        .I1(\m_axis_tdata_reg[7]_i_4_n_0 ),
        .I2(\m_axis_tdata_reg[7]_i_5_n_0 ),
        .I3(\m_axis_tdata_reg[7]_i_6_n_0 ),
        .I4(\m_axis_tdata_reg[7]_i_7_n_0 ),
        .O(\m_axis_tdata_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata_reg[7]_i_3 
       (.I0(prescale_reg_reg[12]),
        .I1(prescale_reg_reg[18]),
        .I2(prescale_reg_reg[11]),
        .I3(prescale_reg_reg[13]),
        .O(\m_axis_tdata_reg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axis_tdata_reg[7]_i_4 
       (.I0(prescale_reg_reg[7]),
        .I1(prescale_reg_reg[5]),
        .I2(prescale_reg_reg[8]),
        .I3(prescale_reg_reg[4]),
        .O(\m_axis_tdata_reg[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata_reg[7]_i_5 
       (.I0(prescale_reg_reg[14]),
        .I1(prescale_reg_reg[6]),
        .I2(prescale_reg_reg[15]),
        .I3(prescale_reg_reg[3]),
        .O(\m_axis_tdata_reg[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata_reg[7]_i_6 
       (.I0(prescale_reg_reg[9]),
        .I1(prescale_reg_reg[0]),
        .I2(prescale_reg_reg[2]),
        .I3(prescale_reg_reg[17]),
        .O(\m_axis_tdata_reg[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_tdata_reg[7]_i_7 
       (.I0(prescale_reg_reg[10]),
        .I1(prescale_reg_reg[1]),
        .I2(prescale_reg_reg[16]),
        .O(\m_axis_tdata_reg[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[0] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[0]),
        .Q(debug_rx_data[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[1] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[1]),
        .Q(debug_rx_data[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[2] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[2]),
        .Q(debug_rx_data[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[3] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[3]),
        .Q(debug_rx_data[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[4] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[4]),
        .Q(debug_rx_data[4]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[5] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[5]),
        .Q(debug_rx_data[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[6] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[6]),
        .Q(debug_rx_data[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg_reg[7] 
       (.C(clk),
        .CE(m_axis_tdata_reg),
        .D(data_reg[7]),
        .Q(debug_rx_data[7]),
        .R(rst));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_reg_i_1
       (.I0(m_axis_tdata_reg),
        .I1(rst_n),
        .O(m_axis_tvalid_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_axis_tvalid_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tvalid_reg_i_1_n_0),
        .Q(m_axis_tvalid_reg_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hD)) 
    \prescale_reg[0]_i_10 
       (.I0(prescale_reg_reg[1]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE0000FFFF)) 
    \prescale_reg[0]_i_11 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[0]),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA8000000FFFFFFFF)) 
    \prescale_reg[0]_i_1__0 
       (.I0(rxd_reg),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .I5(rst_n),
        .O(\prescale_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFCDFFFFFFFF)) 
    \prescale_reg[0]_i_2 
       (.I0(rxd_reg),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\bit_cnt_reg_n_0_[3] ),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[0]_i_4 
       (.I0(prescale_reg_reg[3]),
        .I1(bit_cnt),
        .O(\prescale_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[0]_i_5 
       (.I0(prescale_reg_reg[2]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[0]_i_6 
       (.I0(prescale_reg_reg[1]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[0]_i_7 
       (.I0(prescale_reg_reg[0]),
        .I1(bit_cnt),
        .O(\prescale_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE0000FFFF)) 
    \prescale_reg[0]_i_8 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[3]),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \prescale_reg[0]_i_9 
       (.I0(prescale_reg_reg[2]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[12]_i_2__0 
       (.I0(prescale_reg_reg[15]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[12]_i_3__0 
       (.I0(prescale_reg_reg[14]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[12]_i_4__0 
       (.I0(prescale_reg_reg[13]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[12]_i_5__0 
       (.I0(prescale_reg_reg[12]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \prescale_reg[16]_i_2 
       (.I0(prescale_reg_reg[18]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[16]_i_3__0 
       (.I0(prescale_reg_reg[17]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[16]_i_4__0 
       (.I0(prescale_reg_reg[16]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[4]_i_2 
       (.I0(prescale_reg_reg[7]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \prescale_reg[4]_i_3 
       (.I0(prescale_reg_reg[6]),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[4]_i_4 
       (.I0(prescale_reg_reg[5]),
        .I1(bit_cnt),
        .O(\prescale_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \prescale_reg[4]_i_5 
       (.I0(prescale_reg_reg[4]),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hD)) 
    \prescale_reg[4]_i_6 
       (.I0(prescale_reg_reg[7]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFF)) 
    \prescale_reg[4]_i_7 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[6]),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE0000FFFF)) 
    \prescale_reg[4]_i_8 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[5]),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00010000FFFF)) 
    \prescale_reg[4]_i_9 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[4]),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \prescale_reg[8]_i_2 
       (.I0(prescale_reg_reg[8]),
        .I1(bit_cnt),
        .O(\prescale_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[8]_i_3__0 
       (.I0(prescale_reg_reg[11]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[8]_i_4__0 
       (.I0(prescale_reg_reg[10]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \prescale_reg[8]_i_5__0 
       (.I0(prescale_reg_reg[9]),
        .I1(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[8]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE0000FFFF)) 
    \prescale_reg[8]_i_6 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[8]),
        .I5(\m_axis_tdata_reg[7]_i_2_n_0 ),
        .O(\prescale_reg[8]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[0] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[0]_i_3_n_7 ),
        .Q(prescale_reg_reg[0]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  CARRY4 \prescale_reg_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\prescale_reg_reg[0]_i_3_n_0 ,\prescale_reg_reg[0]_i_3_n_1 ,\prescale_reg_reg[0]_i_3_n_2 ,\prescale_reg_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\prescale_reg[0]_i_4_n_0 ,\prescale_reg[0]_i_5_n_0 ,\prescale_reg[0]_i_6_n_0 ,\prescale_reg[0]_i_7_n_0 }),
        .O({\prescale_reg_reg[0]_i_3_n_4 ,\prescale_reg_reg[0]_i_3_n_5 ,\prescale_reg_reg[0]_i_3_n_6 ,\prescale_reg_reg[0]_i_3_n_7 }),
        .S({\prescale_reg[0]_i_8_n_0 ,\prescale_reg[0]_i_9_n_0 ,\prescale_reg[0]_i_10_n_0 ,\prescale_reg[0]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[10] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[8]_i_1_n_5 ),
        .Q(prescale_reg_reg[10]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[11] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[8]_i_1_n_4 ),
        .Q(prescale_reg_reg[11]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[12] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[12]_i_1_n_7 ),
        .Q(prescale_reg_reg[12]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  CARRY4 \prescale_reg_reg[12]_i_1 
       (.CI(\prescale_reg_reg[8]_i_1_n_0 ),
        .CO({\prescale_reg_reg[12]_i_1_n_0 ,\prescale_reg_reg[12]_i_1_n_1 ,\prescale_reg_reg[12]_i_1_n_2 ,\prescale_reg_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(prescale_reg_reg[15:12]),
        .O({\prescale_reg_reg[12]_i_1_n_4 ,\prescale_reg_reg[12]_i_1_n_5 ,\prescale_reg_reg[12]_i_1_n_6 ,\prescale_reg_reg[12]_i_1_n_7 }),
        .S({\prescale_reg[12]_i_2__0_n_0 ,\prescale_reg[12]_i_3__0_n_0 ,\prescale_reg[12]_i_4__0_n_0 ,\prescale_reg[12]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[13] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[12]_i_1_n_6 ),
        .Q(prescale_reg_reg[13]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[14] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[12]_i_1_n_5 ),
        .Q(prescale_reg_reg[14]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[15] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[12]_i_1_n_4 ),
        .Q(prescale_reg_reg[15]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[16] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[16]_i_1_n_7 ),
        .Q(prescale_reg_reg[16]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  CARRY4 \prescale_reg_reg[16]_i_1 
       (.CI(\prescale_reg_reg[12]_i_1_n_0 ),
        .CO({\NLW_prescale_reg_reg[16]_i_1_CO_UNCONNECTED [3:2],\prescale_reg_reg[16]_i_1_n_2 ,\prescale_reg_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,prescale_reg_reg[17:16]}),
        .O({\NLW_prescale_reg_reg[16]_i_1_O_UNCONNECTED [3],\prescale_reg_reg[16]_i_1_n_5 ,\prescale_reg_reg[16]_i_1_n_6 ,\prescale_reg_reg[16]_i_1_n_7 }),
        .S({1'b0,\prescale_reg[16]_i_2_n_0 ,\prescale_reg[16]_i_3__0_n_0 ,\prescale_reg[16]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[17] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[16]_i_1_n_6 ),
        .Q(prescale_reg_reg[17]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[18] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[16]_i_1_n_5 ),
        .Q(prescale_reg_reg[18]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[1] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[0]_i_3_n_6 ),
        .Q(prescale_reg_reg[1]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[2] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[0]_i_3_n_5 ),
        .Q(prescale_reg_reg[2]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[3] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[0]_i_3_n_4 ),
        .Q(prescale_reg_reg[3]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[4] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[4]_i_1_n_7 ),
        .Q(prescale_reg_reg[4]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  CARRY4 \prescale_reg_reg[4]_i_1 
       (.CI(\prescale_reg_reg[0]_i_3_n_0 ),
        .CO({\prescale_reg_reg[4]_i_1_n_0 ,\prescale_reg_reg[4]_i_1_n_1 ,\prescale_reg_reg[4]_i_1_n_2 ,\prescale_reg_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\prescale_reg[4]_i_2_n_0 ,\prescale_reg[4]_i_3_n_0 ,\prescale_reg[4]_i_4_n_0 ,\prescale_reg[4]_i_5_n_0 }),
        .O({\prescale_reg_reg[4]_i_1_n_4 ,\prescale_reg_reg[4]_i_1_n_5 ,\prescale_reg_reg[4]_i_1_n_6 ,\prescale_reg_reg[4]_i_1_n_7 }),
        .S({\prescale_reg[4]_i_6_n_0 ,\prescale_reg[4]_i_7_n_0 ,\prescale_reg[4]_i_8_n_0 ,\prescale_reg[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[5] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[4]_i_1_n_6 ),
        .Q(prescale_reg_reg[5]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[6] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[4]_i_1_n_5 ),
        .Q(prescale_reg_reg[6]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[7] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[4]_i_1_n_4 ),
        .Q(prescale_reg_reg[7]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[8] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[8]_i_1_n_7 ),
        .Q(prescale_reg_reg[8]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  CARRY4 \prescale_reg_reg[8]_i_1 
       (.CI(\prescale_reg_reg[4]_i_1_n_0 ),
        .CO({\prescale_reg_reg[8]_i_1_n_0 ,\prescale_reg_reg[8]_i_1_n_1 ,\prescale_reg_reg[8]_i_1_n_2 ,\prescale_reg_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({prescale_reg_reg[11:9],\prescale_reg[8]_i_2_n_0 }),
        .O({\prescale_reg_reg[8]_i_1_n_4 ,\prescale_reg_reg[8]_i_1_n_5 ,\prescale_reg_reg[8]_i_1_n_6 ,\prescale_reg_reg[8]_i_1_n_7 }),
        .S({\prescale_reg[8]_i_3__0_n_0 ,\prescale_reg[8]_i_4__0_n_0 ,\prescale_reg[8]_i_5__0_n_0 ,\prescale_reg[8]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[9] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_2_n_0 ),
        .D(\prescale_reg_reg[8]_i_1_n_6 ),
        .Q(prescale_reg_reg[9]),
        .R(\prescale_reg[0]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    rxd_reg_reg
       (.C(clk),
        .CE(1'b1),
        .D(rxd),
        .Q(rxd_reg),
        .S(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top
   (debug_rx_data,
    m_axis_tvalid_reg_reg,
    txd,
    debug_busy,
    rst_n,
    rxd,
    clk);
  output [7:0]debug_rx_data;
  output m_axis_tvalid_reg_reg;
  output txd;
  output debug_busy;
  input rst_n;
  input rxd;
  input clk;

  wire clk;
  wire debug_busy;
  wire [7:0]debug_rx_data;
  wire m_axis_tvalid_reg_reg;
  wire rst;
  wire rst_n;
  wire rxd;
  wire txd;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx uart_rx_inst
       (.clk(clk),
        .debug_busy(debug_busy),
        .debug_rx_data(debug_rx_data),
        .m_axis_tvalid_reg_reg_0(m_axis_tvalid_reg_reg),
        .rst(rst),
        .rst_n(rst_n),
        .rxd(rxd));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx uart_tx_inst
       (.clk(clk),
        .\data_reg_reg[0]_0 (m_axis_tvalid_reg_reg),
        .debug_rx_data(debug_rx_data),
        .rst(rst),
        .rst_n(rst_n),
        .txd(txd));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
   (rst,
    txd,
    clk,
    rst_n,
    \data_reg_reg[0]_0 ,
    debug_rx_data);
  output rst;
  output txd;
  input clk;
  input rst_n;
  input \data_reg_reg[0]_0 ;
  input [7:0]debug_rx_data;

  wire \_inferred__0/i__carry__0_n_0 ;
  wire \_inferred__0/i__carry__0_n_1 ;
  wire \_inferred__0/i__carry__0_n_2 ;
  wire \_inferred__0/i__carry__0_n_3 ;
  wire \_inferred__0/i__carry__1_n_0 ;
  wire \_inferred__0/i__carry__1_n_1 ;
  wire \_inferred__0/i__carry__1_n_2 ;
  wire \_inferred__0/i__carry__1_n_3 ;
  wire \_inferred__0/i__carry__2_n_1 ;
  wire \_inferred__0/i__carry__2_n_2 ;
  wire \_inferred__0/i__carry__2_n_3 ;
  wire \_inferred__0/i__carry_n_0 ;
  wire \_inferred__0/i__carry_n_1 ;
  wire \_inferred__0/i__carry_n_2 ;
  wire \_inferred__0/i__carry_n_3 ;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire \bit_cnt[3]_i_1_n_0 ;
  wire \bit_cnt_reg_n_0_[0] ;
  wire \bit_cnt_reg_n_0_[1] ;
  wire \bit_cnt_reg_n_0_[2] ;
  wire \bit_cnt_reg_n_0_[3] ;
  wire clk;
  wire [18:3]data;
  wire data_reg;
  wire \data_reg[0]_i_1_n_0 ;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_1_n_0 ;
  wire \data_reg[8]_i_2_n_0 ;
  wire \data_reg[8]_i_3_n_0 ;
  wire \data_reg_reg[0]_0 ;
  wire \data_reg_reg_n_0_[0] ;
  wire \data_reg_reg_n_0_[1] ;
  wire \data_reg_reg_n_0_[2] ;
  wire \data_reg_reg_n_0_[3] ;
  wire \data_reg_reg_n_0_[4] ;
  wire \data_reg_reg_n_0_[5] ;
  wire \data_reg_reg_n_0_[6] ;
  wire \data_reg_reg_n_0_[7] ;
  wire \data_reg_reg_n_0_[8] ;
  wire [7:0]debug_rx_data;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire [18:18]p_0_in;
  wire \prescale_reg[0]_i_1_n_0 ;
  wire \prescale_reg[0]_i_3_n_0 ;
  wire \prescale_reg[0]_i_4__0_n_0 ;
  wire \prescale_reg[0]_i_5__0_n_0 ;
  wire \prescale_reg[0]_i_6__0_n_0 ;
  wire \prescale_reg[12]_i_2_n_0 ;
  wire \prescale_reg[12]_i_3_n_0 ;
  wire \prescale_reg[12]_i_4_n_0 ;
  wire \prescale_reg[12]_i_5_n_0 ;
  wire \prescale_reg[16]_i_2__0_n_0 ;
  wire \prescale_reg[16]_i_3_n_0 ;
  wire \prescale_reg[16]_i_4_n_0 ;
  wire \prescale_reg[4]_i_2__0_n_0 ;
  wire \prescale_reg[4]_i_3__0_n_0 ;
  wire \prescale_reg[4]_i_4__0_n_0 ;
  wire \prescale_reg[4]_i_5__0_n_0 ;
  wire \prescale_reg[8]_i_2__0_n_0 ;
  wire \prescale_reg[8]_i_3_n_0 ;
  wire \prescale_reg[8]_i_4_n_0 ;
  wire \prescale_reg[8]_i_5_n_0 ;
  wire [18:0]prescale_reg_reg;
  wire \prescale_reg_reg[0]_i_2_n_0 ;
  wire \prescale_reg_reg[0]_i_2_n_1 ;
  wire \prescale_reg_reg[0]_i_2_n_2 ;
  wire \prescale_reg_reg[0]_i_2_n_3 ;
  wire \prescale_reg_reg[0]_i_2_n_4 ;
  wire \prescale_reg_reg[0]_i_2_n_5 ;
  wire \prescale_reg_reg[0]_i_2_n_6 ;
  wire \prescale_reg_reg[0]_i_2_n_7 ;
  wire \prescale_reg_reg[12]_i_1__0_n_0 ;
  wire \prescale_reg_reg[12]_i_1__0_n_1 ;
  wire \prescale_reg_reg[12]_i_1__0_n_2 ;
  wire \prescale_reg_reg[12]_i_1__0_n_3 ;
  wire \prescale_reg_reg[12]_i_1__0_n_4 ;
  wire \prescale_reg_reg[12]_i_1__0_n_5 ;
  wire \prescale_reg_reg[12]_i_1__0_n_6 ;
  wire \prescale_reg_reg[12]_i_1__0_n_7 ;
  wire \prescale_reg_reg[16]_i_1__0_n_2 ;
  wire \prescale_reg_reg[16]_i_1__0_n_3 ;
  wire \prescale_reg_reg[16]_i_1__0_n_5 ;
  wire \prescale_reg_reg[16]_i_1__0_n_6 ;
  wire \prescale_reg_reg[16]_i_1__0_n_7 ;
  wire \prescale_reg_reg[4]_i_1__0_n_0 ;
  wire \prescale_reg_reg[4]_i_1__0_n_1 ;
  wire \prescale_reg_reg[4]_i_1__0_n_2 ;
  wire \prescale_reg_reg[4]_i_1__0_n_3 ;
  wire \prescale_reg_reg[4]_i_1__0_n_4 ;
  wire \prescale_reg_reg[4]_i_1__0_n_5 ;
  wire \prescale_reg_reg[4]_i_1__0_n_6 ;
  wire \prescale_reg_reg[4]_i_1__0_n_7 ;
  wire \prescale_reg_reg[8]_i_1__0_n_0 ;
  wire \prescale_reg_reg[8]_i_1__0_n_1 ;
  wire \prescale_reg_reg[8]_i_1__0_n_2 ;
  wire \prescale_reg_reg[8]_i_1__0_n_3 ;
  wire \prescale_reg_reg[8]_i_1__0_n_4 ;
  wire \prescale_reg_reg[8]_i_1__0_n_5 ;
  wire \prescale_reg_reg[8]_i_1__0_n_6 ;
  wire \prescale_reg_reg[8]_i_1__0_n_7 ;
  wire rst;
  wire rst_n;
  wire txd;
  wire txd_reg2_out;
  wire txd_reg_i_3_n_0;
  wire txd_reg_i_4_n_0;
  wire txd_reg_i_5_n_0;
  wire txd_reg_i_6_n_0;
  wire txd_reg_i_7_n_0;
  wire txd_reg_i_8_n_0;
  wire [3:3]\NLW__inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_prescale_reg_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_prescale_reg_reg[16]_i_1__0_O_UNCONNECTED ;

  CARRY4 \_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__0/i__carry_n_0 ,\_inferred__0/i__carry_n_1 ,\_inferred__0/i__carry_n_2 ,\_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,1'b0}),
        .O(data[6:3]),
        .S({i__carry_i_3_n_0,i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6_n_0}));
  CARRY4 \_inferred__0/i__carry__0 
       (.CI(\_inferred__0/i__carry_n_0 ),
        .CO({\_inferred__0/i__carry__0_n_0 ,\_inferred__0/i__carry__0_n_1 ,\_inferred__0/i__carry__0_n_2 ,\_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0}),
        .O(data[10:7]),
        .S({i__carry__0_i_3_n_0,i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0}));
  CARRY4 \_inferred__0/i__carry__1 
       (.CI(\_inferred__0/i__carry__0_n_0 ),
        .CO({\_inferred__0/i__carry__1_n_0 ,\_inferred__0/i__carry__1_n_1 ,\_inferred__0/i__carry__1_n_2 ,\_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data[14:11]),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  CARRY4 \_inferred__0/i__carry__2 
       (.CI(\_inferred__0/i__carry__1_n_0 ),
        .CO({\NLW__inferred__0/i__carry__2_CO_UNCONNECTED [3],\_inferred__0/i__carry__2_n_1 ,\_inferred__0/i__carry__2_n_2 ,\_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data[18:15]),
        .S({p_0_in,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_cnt[0]_i_1 
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .O(\bit_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hF00E)) 
    \bit_cnt[1]_i_1 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(\bit_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFC02)) 
    \bit_cnt[2]_i_1 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .O(\bit_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \bit_cnt[3]_i_1 
       (.I0(\bit_cnt_reg_n_0_[2] ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .O(\bit_cnt[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[0] 
       (.C(clk),
        .CE(txd_reg2_out),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[0] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[1] 
       (.C(clk),
        .CE(txd_reg2_out),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[1] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[2] 
       (.C(clk),
        .CE(txd_reg2_out),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[2] ),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \bit_cnt_reg[3] 
       (.C(clk),
        .CE(txd_reg2_out),
        .D(\bit_cnt[3]_i_1_n_0 ),
        .Q(\bit_cnt_reg_n_0_[3] ),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[0]_i_1 
       (.I0(debug_rx_data[0]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[1] ),
        .O(\data_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[1]_i_1 
       (.I0(debug_rx_data[1]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[2] ),
        .O(\data_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[2]_i_1 
       (.I0(debug_rx_data[2]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[3] ),
        .O(\data_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[3]_i_1 
       (.I0(debug_rx_data[3]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[4] ),
        .O(\data_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[4]_i_1 
       (.I0(debug_rx_data[4]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[5] ),
        .O(\data_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[5]_i_1 
       (.I0(debug_rx_data[5]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[6] ),
        .O(\data_reg[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[6]_i_1 
       (.I0(debug_rx_data[6]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[7] ),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \data_reg[7]_i_1 
       (.I0(debug_rx_data[7]),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg_n_0_[8] ),
        .O(\data_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000F200)) 
    \data_reg[8]_i_1 
       (.I0(\data_reg_reg[0]_0 ),
        .I1(\bit_cnt_reg_n_0_[0] ),
        .I2(\data_reg[8]_i_3_n_0 ),
        .I3(rst_n),
        .I4(txd_reg_i_4_n_0),
        .O(data_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    \data_reg[8]_i_2 
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .O(\data_reg[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_reg[8]_i_3 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .O(\data_reg[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[0] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[0]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[1] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[2] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[3] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[4] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[5] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[6] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[7] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[7]_i_1_n_0 ),
        .Q(\data_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_reg_reg[8] 
       (.C(clk),
        .CE(data_reg),
        .D(\data_reg[8]_i_2_n_0 ),
        .Q(\data_reg_reg_n_0_[8] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__0_i_1
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__0_i_2
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__0_i_3
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__0_i_4
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    i__carry__0_i_5
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    i__carry__0_i_6
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(i__carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__1_i_1
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__1_i_2
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__1_i_3
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__1_i_4
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__2_i_1
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__2_i_2
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__2_i_3
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry__2_i_4
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry_i_1
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry_i_2
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry_i_2_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry_i_3
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    i__carry_i_4
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(i__carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    i__carry_i_5
       (.I0(\bit_cnt_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[1] ),
        .O(i__carry_i_5_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    i__carry_i_6
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \prescale_reg[0]_i_1 
       (.I0(txd_reg_i_4_n_0),
        .I1(\bit_cnt_reg_n_0_[3] ),
        .I2(\bit_cnt_reg_n_0_[1] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(\bit_cnt_reg_n_0_[2] ),
        .I5(\data_reg_reg[0]_0 ),
        .O(\prescale_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[0]_i_3 
       (.I0(data[3]),
        .I1(prescale_reg_reg[3]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFFFEFF)) 
    \prescale_reg[0]_i_4__0 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[2]),
        .I5(txd_reg_i_4_n_0),
        .O(\prescale_reg[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFFFEFF)) 
    \prescale_reg[0]_i_5__0 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[1]),
        .I5(txd_reg_i_4_n_0),
        .O(\prescale_reg[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFFFEFF)) 
    \prescale_reg[0]_i_6__0 
       (.I0(\bit_cnt_reg_n_0_[1] ),
        .I1(\bit_cnt_reg_n_0_[2] ),
        .I2(\bit_cnt_reg_n_0_[3] ),
        .I3(\bit_cnt_reg_n_0_[0] ),
        .I4(prescale_reg_reg[0]),
        .I5(txd_reg_i_4_n_0),
        .O(\prescale_reg[0]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[12]_i_2 
       (.I0(data[15]),
        .I1(prescale_reg_reg[15]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[12]_i_3 
       (.I0(data[14]),
        .I1(prescale_reg_reg[14]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[12]_i_4 
       (.I0(data[13]),
        .I1(prescale_reg_reg[13]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[12]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[12]_i_5 
       (.I0(data[12]),
        .I1(prescale_reg_reg[12]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \prescale_reg[16]_i_2__0 
       (.I0(txd_reg_i_4_n_0),
        .I1(data[18]),
        .I2(prescale_reg_reg[18]),
        .O(\prescale_reg[16]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[16]_i_3 
       (.I0(data[17]),
        .I1(prescale_reg_reg[17]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[16]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[16]_i_4 
       (.I0(data[16]),
        .I1(prescale_reg_reg[16]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[16]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[4]_i_2__0 
       (.I0(data[7]),
        .I1(prescale_reg_reg[7]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[4]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[4]_i_3__0 
       (.I0(data[6]),
        .I1(prescale_reg_reg[6]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[4]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[4]_i_4__0 
       (.I0(data[5]),
        .I1(prescale_reg_reg[5]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[4]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[4]_i_5__0 
       (.I0(data[4]),
        .I1(prescale_reg_reg[4]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[8]_i_2__0 
       (.I0(data[11]),
        .I1(prescale_reg_reg[11]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[8]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[8]_i_3 
       (.I0(data[10]),
        .I1(prescale_reg_reg[10]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[8]_i_4 
       (.I0(data[9]),
        .I1(prescale_reg_reg[9]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[8]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h3E)) 
    \prescale_reg[8]_i_5 
       (.I0(data[8]),
        .I1(prescale_reg_reg[8]),
        .I2(txd_reg_i_4_n_0),
        .O(\prescale_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[0] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[0]_i_2_n_7 ),
        .Q(prescale_reg_reg[0]),
        .R(rst));
  CARRY4 \prescale_reg_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\prescale_reg_reg[0]_i_2_n_0 ,\prescale_reg_reg[0]_i_2_n_1 ,\prescale_reg_reg[0]_i_2_n_2 ,\prescale_reg_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0}),
        .O({\prescale_reg_reg[0]_i_2_n_4 ,\prescale_reg_reg[0]_i_2_n_5 ,\prescale_reg_reg[0]_i_2_n_6 ,\prescale_reg_reg[0]_i_2_n_7 }),
        .S({\prescale_reg[0]_i_3_n_0 ,\prescale_reg[0]_i_4__0_n_0 ,\prescale_reg[0]_i_5__0_n_0 ,\prescale_reg[0]_i_6__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[10] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[8]_i_1__0_n_5 ),
        .Q(prescale_reg_reg[10]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[11] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[8]_i_1__0_n_4 ),
        .Q(prescale_reg_reg[11]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[12] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[12]_i_1__0_n_7 ),
        .Q(prescale_reg_reg[12]),
        .R(rst));
  CARRY4 \prescale_reg_reg[12]_i_1__0 
       (.CI(\prescale_reg_reg[8]_i_1__0_n_0 ),
        .CO({\prescale_reg_reg[12]_i_1__0_n_0 ,\prescale_reg_reg[12]_i_1__0_n_1 ,\prescale_reg_reg[12]_i_1__0_n_2 ,\prescale_reg_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0}),
        .O({\prescale_reg_reg[12]_i_1__0_n_4 ,\prescale_reg_reg[12]_i_1__0_n_5 ,\prescale_reg_reg[12]_i_1__0_n_6 ,\prescale_reg_reg[12]_i_1__0_n_7 }),
        .S({\prescale_reg[12]_i_2_n_0 ,\prescale_reg[12]_i_3_n_0 ,\prescale_reg[12]_i_4_n_0 ,\prescale_reg[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[13] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[12]_i_1__0_n_6 ),
        .Q(prescale_reg_reg[13]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[14] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[12]_i_1__0_n_5 ),
        .Q(prescale_reg_reg[14]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[15] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[12]_i_1__0_n_4 ),
        .Q(prescale_reg_reg[15]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[16] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[16]_i_1__0_n_7 ),
        .Q(prescale_reg_reg[16]),
        .R(rst));
  CARRY4 \prescale_reg_reg[16]_i_1__0 
       (.CI(\prescale_reg_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_prescale_reg_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\prescale_reg_reg[16]_i_1__0_n_2 ,\prescale_reg_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,txd_reg_i_4_n_0,txd_reg_i_4_n_0}),
        .O({\NLW_prescale_reg_reg[16]_i_1__0_O_UNCONNECTED [3],\prescale_reg_reg[16]_i_1__0_n_5 ,\prescale_reg_reg[16]_i_1__0_n_6 ,\prescale_reg_reg[16]_i_1__0_n_7 }),
        .S({1'b0,\prescale_reg[16]_i_2__0_n_0 ,\prescale_reg[16]_i_3_n_0 ,\prescale_reg[16]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[17] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[16]_i_1__0_n_6 ),
        .Q(prescale_reg_reg[17]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[18] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[16]_i_1__0_n_5 ),
        .Q(prescale_reg_reg[18]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[1] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[0]_i_2_n_6 ),
        .Q(prescale_reg_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[2] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[0]_i_2_n_5 ),
        .Q(prescale_reg_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[3] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[0]_i_2_n_4 ),
        .Q(prescale_reg_reg[3]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[4] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[4]_i_1__0_n_7 ),
        .Q(prescale_reg_reg[4]),
        .R(rst));
  CARRY4 \prescale_reg_reg[4]_i_1__0 
       (.CI(\prescale_reg_reg[0]_i_2_n_0 ),
        .CO({\prescale_reg_reg[4]_i_1__0_n_0 ,\prescale_reg_reg[4]_i_1__0_n_1 ,\prescale_reg_reg[4]_i_1__0_n_2 ,\prescale_reg_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0}),
        .O({\prescale_reg_reg[4]_i_1__0_n_4 ,\prescale_reg_reg[4]_i_1__0_n_5 ,\prescale_reg_reg[4]_i_1__0_n_6 ,\prescale_reg_reg[4]_i_1__0_n_7 }),
        .S({\prescale_reg[4]_i_2__0_n_0 ,\prescale_reg[4]_i_3__0_n_0 ,\prescale_reg[4]_i_4__0_n_0 ,\prescale_reg[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[5] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[4]_i_1__0_n_6 ),
        .Q(prescale_reg_reg[5]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[6] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[4]_i_1__0_n_5 ),
        .Q(prescale_reg_reg[6]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[7] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[4]_i_1__0_n_4 ),
        .Q(prescale_reg_reg[7]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[8] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[8]_i_1__0_n_7 ),
        .Q(prescale_reg_reg[8]),
        .R(rst));
  CARRY4 \prescale_reg_reg[8]_i_1__0 
       (.CI(\prescale_reg_reg[4]_i_1__0_n_0 ),
        .CO({\prescale_reg_reg[8]_i_1__0_n_0 ,\prescale_reg_reg[8]_i_1__0_n_1 ,\prescale_reg_reg[8]_i_1__0_n_2 ,\prescale_reg_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0,txd_reg_i_4_n_0}),
        .O({\prescale_reg_reg[8]_i_1__0_n_4 ,\prescale_reg_reg[8]_i_1__0_n_5 ,\prescale_reg_reg[8]_i_1__0_n_6 ,\prescale_reg_reg[8]_i_1__0_n_7 }),
        .S({\prescale_reg[8]_i_2__0_n_0 ,\prescale_reg[8]_i_3_n_0 ,\prescale_reg[8]_i_4_n_0 ,\prescale_reg[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \prescale_reg_reg[9] 
       (.C(clk),
        .CE(\prescale_reg[0]_i_1_n_0 ),
        .D(\prescale_reg_reg[8]_i_1__0_n_6 ),
        .Q(prescale_reg_reg[9]),
        .R(rst));
  LUT1 #(
    .INIT(2'h1)) 
    txd_reg_i_1
       (.I0(rst_n),
        .O(rst));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    txd_reg_i_2
       (.I0(\bit_cnt_reg_n_0_[3] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[0] ),
        .I3(\bit_cnt_reg_n_0_[2] ),
        .I4(\data_reg_reg[0]_0 ),
        .I5(txd_reg_i_4_n_0),
        .O(txd_reg2_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    txd_reg_i_3
       (.I0(\data_reg_reg_n_0_[0] ),
        .I1(\bit_cnt_reg_n_0_[1] ),
        .I2(\bit_cnt_reg_n_0_[2] ),
        .I3(\bit_cnt_reg_n_0_[3] ),
        .I4(\bit_cnt_reg_n_0_[0] ),
        .O(txd_reg_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    txd_reg_i_4
       (.I0(txd_reg_i_5_n_0),
        .I1(prescale_reg_reg[9]),
        .I2(prescale_reg_reg[15]),
        .I3(prescale_reg_reg[10]),
        .I4(txd_reg_i_6_n_0),
        .O(txd_reg_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    txd_reg_i_5
       (.I0(prescale_reg_reg[3]),
        .I1(prescale_reg_reg[11]),
        .I2(prescale_reg_reg[5]),
        .I3(prescale_reg_reg[8]),
        .I4(txd_reg_i_7_n_0),
        .O(txd_reg_i_5_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    txd_reg_i_6
       (.I0(prescale_reg_reg[2]),
        .I1(prescale_reg_reg[6]),
        .I2(prescale_reg_reg[4]),
        .I3(prescale_reg_reg[14]),
        .I4(txd_reg_i_8_n_0),
        .O(txd_reg_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    txd_reg_i_7
       (.I0(prescale_reg_reg[18]),
        .I1(prescale_reg_reg[13]),
        .I2(prescale_reg_reg[17]),
        .I3(prescale_reg_reg[7]),
        .O(txd_reg_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    txd_reg_i_8
       (.I0(prescale_reg_reg[12]),
        .I1(prescale_reg_reg[1]),
        .I2(prescale_reg_reg[16]),
        .I3(prescale_reg_reg[0]),
        .O(txd_reg_i_8_n_0));
  FDSE #(
    .INIT(1'b1)) 
    txd_reg_reg
       (.C(clk),
        .CE(txd_reg2_out),
        .D(txd_reg_i_3_n_0),
        .Q(txd),
        .S(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
