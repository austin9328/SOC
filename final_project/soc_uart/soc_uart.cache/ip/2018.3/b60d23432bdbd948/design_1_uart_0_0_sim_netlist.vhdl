-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 27 14:18:29 2025
-- Host        : yo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_uart_0_0_sim_netlist.vhdl
-- Design      : design_1_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  port (
    m_axis_tvalid_reg_reg_0 : out STD_LOGIC;
    debug_busy : out STD_LOGIC;
    debug_rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    rxd : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx is
  signal bit_cnt : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal busy_reg4_out : STD_LOGIC;
  signal busy_reg_i_1_n_0 : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal data_reg_0 : STD_LOGIC;
  signal \^debug_busy\ : STD_LOGIC;
  signal m_axis_tdata_reg : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal m_axis_tvalid_reg_i_1_n_0 : STD_LOGIC;
  signal \prescale_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_3__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_4__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_5__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_reg[16]_i_3__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[16]_i_4__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_3__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_4__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_5__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal prescale_reg_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \prescale_reg_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal rxd_reg : STD_LOGIC;
  signal \NLW_prescale_reg_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_prescale_reg_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of busy_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of busy_reg_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tvalid_reg_i_1 : label is "soft_lutpair1";
begin
  debug_busy <= \^debug_busy\;
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"001A"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt[2]_i_2_n_0\,
      I2 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I3 => \prescale_reg[0]_i_1__0_n_0\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000029AA39AA"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt[2]_i_2_n_0\,
      I3 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I4 => rxd_reg,
      I5 => \prescale_reg[0]_i_1__0_n_0\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000262A"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => bit_cnt,
      I2 => \bit_cnt[2]_i_2_n_0\,
      I3 => \bit_cnt[3]_i_4_n_0\,
      I4 => \bit_cnt[3]_i_2_n_0\,
      I5 => \prescale_reg[0]_i_1__0_n_0\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[2]_i_2_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EECEEEEE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt[3]_i_2_n_0\,
      I2 => bit_cnt,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt[3]_i_4_n_0\,
      I5 => \prescale_reg[0]_i_1__0_n_0\,
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I5 => rxd_reg,
      O => \bit_cnt[3]_i_2_n_0\
    );
\bit_cnt[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      O => bit_cnt
    );
\bit_cnt[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[3]_i_4_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => '0'
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => '0'
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      R => '0'
    );
busy_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => \^debug_busy\,
      I1 => busy_reg4_out,
      I2 => rxd_reg,
      I3 => rst_n,
      O => busy_reg_i_1_n_0
    );
busy_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      O => busy_reg4_out
    );
busy_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => busy_reg_i_1_n_0,
      Q => \^debug_busy\,
      R => '0'
    );
\data_reg[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_cnt[3]_i_2_n_0\,
      I1 => rst_n,
      O => \data_reg[7]_i_1__0_n_0\
    );
\data_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02A80000"
    )
        port map (
      I0 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => rst_n,
      O => data_reg_0
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(1),
      Q => data_reg(0),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(2),
      Q => data_reg(1),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(3),
      Q => data_reg(2),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(4),
      Q => data_reg(3),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(5),
      Q => data_reg(4),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(6),
      Q => data_reg(5),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => data_reg(7),
      Q => data_reg(6),
      R => \data_reg[7]_i_1__0_n_0\
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg_0,
      D => rxd_reg,
      Q => data_reg(7),
      R => \data_reg[7]_i_1__0_n_0\
    );
\m_axis_tdata_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I1 => rxd_reg,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[1]\,
      I5 => \bit_cnt_reg_n_0_[3]\,
      O => m_axis_tdata_reg
    );
\m_axis_tdata_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \m_axis_tdata_reg[7]_i_3_n_0\,
      I1 => \m_axis_tdata_reg[7]_i_4_n_0\,
      I2 => \m_axis_tdata_reg[7]_i_5_n_0\,
      I3 => \m_axis_tdata_reg[7]_i_6_n_0\,
      I4 => \m_axis_tdata_reg[7]_i_7_n_0\,
      O => \m_axis_tdata_reg[7]_i_2_n_0\
    );
\m_axis_tdata_reg[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => prescale_reg_reg(12),
      I1 => prescale_reg_reg(18),
      I2 => prescale_reg_reg(11),
      I3 => prescale_reg_reg(13),
      O => \m_axis_tdata_reg[7]_i_3_n_0\
    );
\m_axis_tdata_reg[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => prescale_reg_reg(7),
      I1 => prescale_reg_reg(5),
      I2 => prescale_reg_reg(8),
      I3 => prescale_reg_reg(4),
      O => \m_axis_tdata_reg[7]_i_4_n_0\
    );
\m_axis_tdata_reg[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => prescale_reg_reg(14),
      I1 => prescale_reg_reg(6),
      I2 => prescale_reg_reg(15),
      I3 => prescale_reg_reg(3),
      O => \m_axis_tdata_reg[7]_i_5_n_0\
    );
\m_axis_tdata_reg[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => prescale_reg_reg(9),
      I1 => prescale_reg_reg(0),
      I2 => prescale_reg_reg(2),
      I3 => prescale_reg_reg(17),
      O => \m_axis_tdata_reg[7]_i_6_n_0\
    );
\m_axis_tdata_reg[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => prescale_reg_reg(10),
      I1 => prescale_reg_reg(1),
      I2 => prescale_reg_reg(16),
      O => \m_axis_tdata_reg[7]_i_7_n_0\
    );
\m_axis_tdata_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(0),
      Q => debug_rx_data(0),
      R => rst
    );
\m_axis_tdata_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(1),
      Q => debug_rx_data(1),
      R => rst
    );
\m_axis_tdata_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(2),
      Q => debug_rx_data(2),
      R => rst
    );
\m_axis_tdata_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(3),
      Q => debug_rx_data(3),
      R => rst
    );
\m_axis_tdata_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(4),
      Q => debug_rx_data(4),
      R => rst
    );
\m_axis_tdata_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(5),
      Q => debug_rx_data(5),
      R => rst
    );
\m_axis_tdata_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(6),
      Q => debug_rx_data(6),
      R => rst
    );
\m_axis_tdata_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => m_axis_tdata_reg,
      D => data_reg(7),
      Q => debug_rx_data(7),
      R => rst
    );
m_axis_tvalid_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tdata_reg,
      I1 => rst_n,
      O => m_axis_tvalid_reg_i_1_n_0
    );
m_axis_tvalid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => m_axis_tvalid_reg_i_1_n_0,
      Q => m_axis_tvalid_reg_reg_0,
      R => '0'
    );
\prescale_reg[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => prescale_reg_reg(1),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_10_n_0\
    );
\prescale_reg[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE0000FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(0),
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_11_n_0\
    );
\prescale_reg[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8000000FFFFFFFF"
    )
        port map (
      I0 => rxd_reg,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \m_axis_tdata_reg[7]_i_2_n_0\,
      I5 => rst_n,
      O => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFCDFFFFFFFF"
    )
        port map (
      I0 => rxd_reg,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \bit_cnt_reg_n_0_[3]\,
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_2_n_0\
    );
\prescale_reg[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(3),
      I1 => bit_cnt,
      O => \prescale_reg[0]_i_4_n_0\
    );
\prescale_reg[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(2),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_5_n_0\
    );
\prescale_reg[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(1),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_6_n_0\
    );
\prescale_reg[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(0),
      I1 => bit_cnt,
      O => \prescale_reg[0]_i_7_n_0\
    );
\prescale_reg[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE0000FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(3),
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_8_n_0\
    );
\prescale_reg[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => prescale_reg_reg(2),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[0]_i_9_n_0\
    );
\prescale_reg[12]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(15),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[12]_i_2__0_n_0\
    );
\prescale_reg[12]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(14),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[12]_i_3__0_n_0\
    );
\prescale_reg[12]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(13),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[12]_i_4__0_n_0\
    );
\prescale_reg[12]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(12),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[12]_i_5__0_n_0\
    );
\prescale_reg[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prescale_reg_reg(18),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[16]_i_2_n_0\
    );
\prescale_reg[16]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(17),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[16]_i_3__0_n_0\
    );
\prescale_reg[16]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(16),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[16]_i_4__0_n_0\
    );
\prescale_reg[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(7),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_2_n_0\
    );
\prescale_reg[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => prescale_reg_reg(6),
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_3_n_0\
    );
\prescale_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(5),
      I1 => bit_cnt,
      O => \prescale_reg[4]_i_4_n_0\
    );
\prescale_reg[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => prescale_reg_reg(4),
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_5_n_0\
    );
\prescale_reg[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => prescale_reg_reg(7),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_6_n_0\
    );
\prescale_reg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(6),
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_7_n_0\
    );
\prescale_reg[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE0000FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(5),
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_8_n_0\
    );
\prescale_reg[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00010000FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(4),
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[4]_i_9_n_0\
    );
\prescale_reg[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => prescale_reg_reg(8),
      I1 => bit_cnt,
      O => \prescale_reg[8]_i_2_n_0\
    );
\prescale_reg[8]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(11),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[8]_i_3__0_n_0\
    );
\prescale_reg[8]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(10),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[8]_i_4__0_n_0\
    );
\prescale_reg[8]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prescale_reg_reg(9),
      I1 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[8]_i_5__0_n_0\
    );
\prescale_reg[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE0000FFFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(8),
      I5 => \m_axis_tdata_reg[7]_i_2_n_0\,
      O => \prescale_reg[8]_i_6_n_0\
    );
\prescale_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[0]_i_3_n_7\,
      Q => prescale_reg_reg(0),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prescale_reg_reg[0]_i_3_n_0\,
      CO(2) => \prescale_reg_reg[0]_i_3_n_1\,
      CO(1) => \prescale_reg_reg[0]_i_3_n_2\,
      CO(0) => \prescale_reg_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \prescale_reg[0]_i_4_n_0\,
      DI(2) => \prescale_reg[0]_i_5_n_0\,
      DI(1) => \prescale_reg[0]_i_6_n_0\,
      DI(0) => \prescale_reg[0]_i_7_n_0\,
      O(3) => \prescale_reg_reg[0]_i_3_n_4\,
      O(2) => \prescale_reg_reg[0]_i_3_n_5\,
      O(1) => \prescale_reg_reg[0]_i_3_n_6\,
      O(0) => \prescale_reg_reg[0]_i_3_n_7\,
      S(3) => \prescale_reg[0]_i_8_n_0\,
      S(2) => \prescale_reg[0]_i_9_n_0\,
      S(1) => \prescale_reg[0]_i_10_n_0\,
      S(0) => \prescale_reg[0]_i_11_n_0\
    );
\prescale_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[8]_i_1_n_5\,
      Q => prescale_reg_reg(10),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[8]_i_1_n_4\,
      Q => prescale_reg_reg(11),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[12]_i_1_n_7\,
      Q => prescale_reg_reg(12),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[8]_i_1_n_0\,
      CO(3) => \prescale_reg_reg[12]_i_1_n_0\,
      CO(2) => \prescale_reg_reg[12]_i_1_n_1\,
      CO(1) => \prescale_reg_reg[12]_i_1_n_2\,
      CO(0) => \prescale_reg_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => prescale_reg_reg(15 downto 12),
      O(3) => \prescale_reg_reg[12]_i_1_n_4\,
      O(2) => \prescale_reg_reg[12]_i_1_n_5\,
      O(1) => \prescale_reg_reg[12]_i_1_n_6\,
      O(0) => \prescale_reg_reg[12]_i_1_n_7\,
      S(3) => \prescale_reg[12]_i_2__0_n_0\,
      S(2) => \prescale_reg[12]_i_3__0_n_0\,
      S(1) => \prescale_reg[12]_i_4__0_n_0\,
      S(0) => \prescale_reg[12]_i_5__0_n_0\
    );
\prescale_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[12]_i_1_n_6\,
      Q => prescale_reg_reg(13),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[12]_i_1_n_5\,
      Q => prescale_reg_reg(14),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[12]_i_1_n_4\,
      Q => prescale_reg_reg(15),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[16]_i_1_n_7\,
      Q => prescale_reg_reg(16),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_prescale_reg_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \prescale_reg_reg[16]_i_1_n_2\,
      CO(0) => \prescale_reg_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => prescale_reg_reg(17 downto 16),
      O(3) => \NLW_prescale_reg_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \prescale_reg_reg[16]_i_1_n_5\,
      O(1) => \prescale_reg_reg[16]_i_1_n_6\,
      O(0) => \prescale_reg_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2) => \prescale_reg[16]_i_2_n_0\,
      S(1) => \prescale_reg[16]_i_3__0_n_0\,
      S(0) => \prescale_reg[16]_i_4__0_n_0\
    );
\prescale_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[16]_i_1_n_6\,
      Q => prescale_reg_reg(17),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[16]_i_1_n_5\,
      Q => prescale_reg_reg(18),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[0]_i_3_n_6\,
      Q => prescale_reg_reg(1),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[0]_i_3_n_5\,
      Q => prescale_reg_reg(2),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[0]_i_3_n_4\,
      Q => prescale_reg_reg(3),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[4]_i_1_n_7\,
      Q => prescale_reg_reg(4),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[0]_i_3_n_0\,
      CO(3) => \prescale_reg_reg[4]_i_1_n_0\,
      CO(2) => \prescale_reg_reg[4]_i_1_n_1\,
      CO(1) => \prescale_reg_reg[4]_i_1_n_2\,
      CO(0) => \prescale_reg_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \prescale_reg[4]_i_2_n_0\,
      DI(2) => \prescale_reg[4]_i_3_n_0\,
      DI(1) => \prescale_reg[4]_i_4_n_0\,
      DI(0) => \prescale_reg[4]_i_5_n_0\,
      O(3) => \prescale_reg_reg[4]_i_1_n_4\,
      O(2) => \prescale_reg_reg[4]_i_1_n_5\,
      O(1) => \prescale_reg_reg[4]_i_1_n_6\,
      O(0) => \prescale_reg_reg[4]_i_1_n_7\,
      S(3) => \prescale_reg[4]_i_6_n_0\,
      S(2) => \prescale_reg[4]_i_7_n_0\,
      S(1) => \prescale_reg[4]_i_8_n_0\,
      S(0) => \prescale_reg[4]_i_9_n_0\
    );
\prescale_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[4]_i_1_n_6\,
      Q => prescale_reg_reg(5),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[4]_i_1_n_5\,
      Q => prescale_reg_reg(6),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[4]_i_1_n_4\,
      Q => prescale_reg_reg(7),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[8]_i_1_n_7\,
      Q => prescale_reg_reg(8),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
\prescale_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[4]_i_1_n_0\,
      CO(3) => \prescale_reg_reg[8]_i_1_n_0\,
      CO(2) => \prescale_reg_reg[8]_i_1_n_1\,
      CO(1) => \prescale_reg_reg[8]_i_1_n_2\,
      CO(0) => \prescale_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => prescale_reg_reg(11 downto 9),
      DI(0) => \prescale_reg[8]_i_2_n_0\,
      O(3) => \prescale_reg_reg[8]_i_1_n_4\,
      O(2) => \prescale_reg_reg[8]_i_1_n_5\,
      O(1) => \prescale_reg_reg[8]_i_1_n_6\,
      O(0) => \prescale_reg_reg[8]_i_1_n_7\,
      S(3) => \prescale_reg[8]_i_3__0_n_0\,
      S(2) => \prescale_reg[8]_i_4__0_n_0\,
      S(1) => \prescale_reg[8]_i_5__0_n_0\,
      S(0) => \prescale_reg[8]_i_6_n_0\
    );
\prescale_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_2_n_0\,
      D => \prescale_reg_reg[8]_i_1_n_6\,
      Q => prescale_reg_reg(9),
      R => \prescale_reg[0]_i_1__0_n_0\
    );
rxd_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => rxd,
      Q => rxd_reg,
      S => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  port (
    rst : out STD_LOGIC;
    txd : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    \data_reg_reg[0]_0\ : in STD_LOGIC;
    debug_rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx is
  signal \_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 18 downto 3 );
  signal data_reg : STD_LOGIC;
  signal \data_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 18 to 18 );
  signal \prescale_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[0]_i_6__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_4_n_0\ : STD_LOGIC;
  signal \prescale_reg[12]_i_5_n_0\ : STD_LOGIC;
  signal \prescale_reg[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[16]_i_3_n_0\ : STD_LOGIC;
  signal \prescale_reg[16]_i_4_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \prescale_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal prescale_reg_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \prescale_reg_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[12]_i_1__0_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1__0_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1__0_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1__0_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1__0_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[16]_i_1__0_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[4]_i_1__0_n_7\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_1\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_2\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_3\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_4\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_5\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_6\ : STD_LOGIC;
  signal \prescale_reg_reg[8]_i_1__0_n_7\ : STD_LOGIC;
  signal \^rst\ : STD_LOGIC;
  signal txd_reg2_out : STD_LOGIC;
  signal txd_reg_i_3_n_0 : STD_LOGIC;
  signal txd_reg_i_4_n_0 : STD_LOGIC;
  signal txd_reg_i_5_n_0 : STD_LOGIC;
  signal txd_reg_i_6_n_0 : STD_LOGIC;
  signal txd_reg_i_7_n_0 : STD_LOGIC;
  signal txd_reg_i_8_n_0 : STD_LOGIC;
  signal \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_prescale_reg_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_prescale_reg_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_reg[8]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of txd_reg_i_3 : label is "soft_lutpair3";
begin
  rst <= \^rst\;
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2) => \_inferred__0/i__carry_n_1\,
      CO(1) => \_inferred__0/i__carry_n_2\,
      CO(0) => \_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => '0',
      O(3 downto 0) => data(6 downto 3),
      S(3) => \i__carry_i_3_n_0\,
      S(2) => \i__carry_i_4_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6_n_0\
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3) => \_inferred__0/i__carry__0_n_0\,
      CO(2) => \_inferred__0/i__carry__0_n_1\,
      CO(1) => \_inferred__0/i__carry__0_n_2\,
      CO(0) => \_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \i__carry__0_i_2_n_0\,
      O(3 downto 0) => data(10 downto 7),
      S(3) => \i__carry__0_i_3_n_0\,
      S(2) => \i__carry__0_i_4_n_0\,
      S(1) => \i__carry__0_i_5_n_0\,
      S(0) => \i__carry__0_i_6_n_0\
    );
\_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__0_n_0\,
      CO(3) => \_inferred__0/i__carry__1_n_0\,
      CO(2) => \_inferred__0/i__carry__1_n_1\,
      CO(1) => \_inferred__0/i__carry__1_n_2\,
      CO(0) => \_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data(14 downto 11),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry__1_n_0\,
      CO(3) => \NLW__inferred__0/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__0/i__carry__2_n_1\,
      CO(1) => \_inferred__0/i__carry__2_n_2\,
      CO(0) => \_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data(18 downto 15),
      S(3) => p_0_in(18),
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00E"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC02"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => txd_reg2_out,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => \^rst\
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => txd_reg2_out,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => \^rst\
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => txd_reg2_out,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => \^rst\
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => txd_reg2_out,
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      R => \^rst\
    );
\data_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(0),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[1]\,
      O => \data_reg[0]_i_1_n_0\
    );
\data_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(1),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[2]\,
      O => \data_reg[1]_i_1_n_0\
    );
\data_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(2),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[3]\,
      O => \data_reg[2]_i_1_n_0\
    );
\data_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(3),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[4]\,
      O => \data_reg[3]_i_1_n_0\
    );
\data_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(4),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[5]\,
      O => \data_reg[4]_i_1_n_0\
    );
\data_reg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(5),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[6]\,
      O => \data_reg[5]_i_1_n_0\
    );
\data_reg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(6),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[7]\,
      O => \data_reg[6]_i_1_n_0\
    );
\data_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000002"
    )
        port map (
      I0 => debug_rx_data(7),
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg_n_0_[8]\,
      O => \data_reg[7]_i_1_n_0\
    );
\data_reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F200"
    )
        port map (
      I0 => \data_reg_reg[0]_0\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      I2 => \data_reg[8]_i_3_n_0\,
      I3 => rst_n,
      I4 => txd_reg_i_4_n_0,
      O => data_reg
    );
\data_reg[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      O => \data_reg[8]_i_2_n_0\
    );
\data_reg[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      O => \data_reg[8]_i_3_n_0\
    );
\data_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[0]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[0]\,
      R => '0'
    );
\data_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[1]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[1]\,
      R => '0'
    );
\data_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[2]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[2]\,
      R => '0'
    );
\data_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[3]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[3]\,
      R => '0'
    );
\data_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[4]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[4]\,
      R => '0'
    );
\data_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[5]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[5]\,
      R => '0'
    );
\data_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[6]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[6]\,
      R => '0'
    );
\data_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[7]_i_1_n_0\,
      Q => \data_reg_reg_n_0_[7]\,
      R => '0'
    );
\data_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => data_reg,
      D => \data_reg[8]_i_2_n_0\,
      Q => \data_reg_reg_n_0_[8]\,
      R => '0'
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => p_0_in(18)
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[1]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      O => \i__carry_i_6_n_0\
    );
\prescale_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => txd_reg_i_4_n_0,
      I1 => \bit_cnt_reg_n_0_[3]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => \bit_cnt_reg_n_0_[2]\,
      I5 => \data_reg_reg[0]_0\,
      O => \prescale_reg[0]_i_1_n_0\
    );
\prescale_reg[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(3),
      I1 => prescale_reg_reg(3),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[0]_i_3_n_0\
    );
\prescale_reg[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFFFEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(2),
      I5 => txd_reg_i_4_n_0,
      O => \prescale_reg[0]_i_4__0_n_0\
    );
\prescale_reg[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFFFEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(1),
      I5 => txd_reg_i_4_n_0,
      O => \prescale_reg[0]_i_5__0_n_0\
    );
\prescale_reg[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFFFEFF"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      I1 => \bit_cnt_reg_n_0_[2]\,
      I2 => \bit_cnt_reg_n_0_[3]\,
      I3 => \bit_cnt_reg_n_0_[0]\,
      I4 => prescale_reg_reg(0),
      I5 => txd_reg_i_4_n_0,
      O => \prescale_reg[0]_i_6__0_n_0\
    );
\prescale_reg[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(15),
      I1 => prescale_reg_reg(15),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[12]_i_2_n_0\
    );
\prescale_reg[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(14),
      I1 => prescale_reg_reg(14),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[12]_i_3_n_0\
    );
\prescale_reg[12]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(13),
      I1 => prescale_reg_reg(13),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[12]_i_4_n_0\
    );
\prescale_reg[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(12),
      I1 => prescale_reg_reg(12),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[12]_i_5_n_0\
    );
\prescale_reg[16]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => txd_reg_i_4_n_0,
      I1 => data(18),
      I2 => prescale_reg_reg(18),
      O => \prescale_reg[16]_i_2__0_n_0\
    );
\prescale_reg[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(17),
      I1 => prescale_reg_reg(17),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[16]_i_3_n_0\
    );
\prescale_reg[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(16),
      I1 => prescale_reg_reg(16),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[16]_i_4_n_0\
    );
\prescale_reg[4]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(7),
      I1 => prescale_reg_reg(7),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[4]_i_2__0_n_0\
    );
\prescale_reg[4]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(6),
      I1 => prescale_reg_reg(6),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[4]_i_3__0_n_0\
    );
\prescale_reg[4]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(5),
      I1 => prescale_reg_reg(5),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[4]_i_4__0_n_0\
    );
\prescale_reg[4]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(4),
      I1 => prescale_reg_reg(4),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[4]_i_5__0_n_0\
    );
\prescale_reg[8]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(11),
      I1 => prescale_reg_reg(11),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[8]_i_2__0_n_0\
    );
\prescale_reg[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(10),
      I1 => prescale_reg_reg(10),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[8]_i_3_n_0\
    );
\prescale_reg[8]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(9),
      I1 => prescale_reg_reg(9),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[8]_i_4_n_0\
    );
\prescale_reg[8]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => data(8),
      I1 => prescale_reg_reg(8),
      I2 => txd_reg_i_4_n_0,
      O => \prescale_reg[8]_i_5_n_0\
    );
\prescale_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[0]_i_2_n_7\,
      Q => prescale_reg_reg(0),
      R => \^rst\
    );
\prescale_reg_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prescale_reg_reg[0]_i_2_n_0\,
      CO(2) => \prescale_reg_reg[0]_i_2_n_1\,
      CO(1) => \prescale_reg_reg[0]_i_2_n_2\,
      CO(0) => \prescale_reg_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => txd_reg_i_4_n_0,
      DI(2) => txd_reg_i_4_n_0,
      DI(1) => txd_reg_i_4_n_0,
      DI(0) => txd_reg_i_4_n_0,
      O(3) => \prescale_reg_reg[0]_i_2_n_4\,
      O(2) => \prescale_reg_reg[0]_i_2_n_5\,
      O(1) => \prescale_reg_reg[0]_i_2_n_6\,
      O(0) => \prescale_reg_reg[0]_i_2_n_7\,
      S(3) => \prescale_reg[0]_i_3_n_0\,
      S(2) => \prescale_reg[0]_i_4__0_n_0\,
      S(1) => \prescale_reg[0]_i_5__0_n_0\,
      S(0) => \prescale_reg[0]_i_6__0_n_0\
    );
\prescale_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[8]_i_1__0_n_5\,
      Q => prescale_reg_reg(10),
      R => \^rst\
    );
\prescale_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[8]_i_1__0_n_4\,
      Q => prescale_reg_reg(11),
      R => \^rst\
    );
\prescale_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[12]_i_1__0_n_7\,
      Q => prescale_reg_reg(12),
      R => \^rst\
    );
\prescale_reg_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[8]_i_1__0_n_0\,
      CO(3) => \prescale_reg_reg[12]_i_1__0_n_0\,
      CO(2) => \prescale_reg_reg[12]_i_1__0_n_1\,
      CO(1) => \prescale_reg_reg[12]_i_1__0_n_2\,
      CO(0) => \prescale_reg_reg[12]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => txd_reg_i_4_n_0,
      DI(2) => txd_reg_i_4_n_0,
      DI(1) => txd_reg_i_4_n_0,
      DI(0) => txd_reg_i_4_n_0,
      O(3) => \prescale_reg_reg[12]_i_1__0_n_4\,
      O(2) => \prescale_reg_reg[12]_i_1__0_n_5\,
      O(1) => \prescale_reg_reg[12]_i_1__0_n_6\,
      O(0) => \prescale_reg_reg[12]_i_1__0_n_7\,
      S(3) => \prescale_reg[12]_i_2_n_0\,
      S(2) => \prescale_reg[12]_i_3_n_0\,
      S(1) => \prescale_reg[12]_i_4_n_0\,
      S(0) => \prescale_reg[12]_i_5_n_0\
    );
\prescale_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[12]_i_1__0_n_6\,
      Q => prescale_reg_reg(13),
      R => \^rst\
    );
\prescale_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[12]_i_1__0_n_5\,
      Q => prescale_reg_reg(14),
      R => \^rst\
    );
\prescale_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[12]_i_1__0_n_4\,
      Q => prescale_reg_reg(15),
      R => \^rst\
    );
\prescale_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[16]_i_1__0_n_7\,
      Q => prescale_reg_reg(16),
      R => \^rst\
    );
\prescale_reg_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[12]_i_1__0_n_0\,
      CO(3 downto 2) => \NLW_prescale_reg_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \prescale_reg_reg[16]_i_1__0_n_2\,
      CO(0) => \prescale_reg_reg[16]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => txd_reg_i_4_n_0,
      DI(0) => txd_reg_i_4_n_0,
      O(3) => \NLW_prescale_reg_reg[16]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \prescale_reg_reg[16]_i_1__0_n_5\,
      O(1) => \prescale_reg_reg[16]_i_1__0_n_6\,
      O(0) => \prescale_reg_reg[16]_i_1__0_n_7\,
      S(3) => '0',
      S(2) => \prescale_reg[16]_i_2__0_n_0\,
      S(1) => \prescale_reg[16]_i_3_n_0\,
      S(0) => \prescale_reg[16]_i_4_n_0\
    );
\prescale_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[16]_i_1__0_n_6\,
      Q => prescale_reg_reg(17),
      R => \^rst\
    );
\prescale_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[16]_i_1__0_n_5\,
      Q => prescale_reg_reg(18),
      R => \^rst\
    );
\prescale_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[0]_i_2_n_6\,
      Q => prescale_reg_reg(1),
      R => \^rst\
    );
\prescale_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[0]_i_2_n_5\,
      Q => prescale_reg_reg(2),
      R => \^rst\
    );
\prescale_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[0]_i_2_n_4\,
      Q => prescale_reg_reg(3),
      R => \^rst\
    );
\prescale_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[4]_i_1__0_n_7\,
      Q => prescale_reg_reg(4),
      R => \^rst\
    );
\prescale_reg_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[0]_i_2_n_0\,
      CO(3) => \prescale_reg_reg[4]_i_1__0_n_0\,
      CO(2) => \prescale_reg_reg[4]_i_1__0_n_1\,
      CO(1) => \prescale_reg_reg[4]_i_1__0_n_2\,
      CO(0) => \prescale_reg_reg[4]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => txd_reg_i_4_n_0,
      DI(2) => txd_reg_i_4_n_0,
      DI(1) => txd_reg_i_4_n_0,
      DI(0) => txd_reg_i_4_n_0,
      O(3) => \prescale_reg_reg[4]_i_1__0_n_4\,
      O(2) => \prescale_reg_reg[4]_i_1__0_n_5\,
      O(1) => \prescale_reg_reg[4]_i_1__0_n_6\,
      O(0) => \prescale_reg_reg[4]_i_1__0_n_7\,
      S(3) => \prescale_reg[4]_i_2__0_n_0\,
      S(2) => \prescale_reg[4]_i_3__0_n_0\,
      S(1) => \prescale_reg[4]_i_4__0_n_0\,
      S(0) => \prescale_reg[4]_i_5__0_n_0\
    );
\prescale_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[4]_i_1__0_n_6\,
      Q => prescale_reg_reg(5),
      R => \^rst\
    );
\prescale_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[4]_i_1__0_n_5\,
      Q => prescale_reg_reg(6),
      R => \^rst\
    );
\prescale_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[4]_i_1__0_n_4\,
      Q => prescale_reg_reg(7),
      R => \^rst\
    );
\prescale_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[8]_i_1__0_n_7\,
      Q => prescale_reg_reg(8),
      R => \^rst\
    );
\prescale_reg_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \prescale_reg_reg[4]_i_1__0_n_0\,
      CO(3) => \prescale_reg_reg[8]_i_1__0_n_0\,
      CO(2) => \prescale_reg_reg[8]_i_1__0_n_1\,
      CO(1) => \prescale_reg_reg[8]_i_1__0_n_2\,
      CO(0) => \prescale_reg_reg[8]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => txd_reg_i_4_n_0,
      DI(2) => txd_reg_i_4_n_0,
      DI(1) => txd_reg_i_4_n_0,
      DI(0) => txd_reg_i_4_n_0,
      O(3) => \prescale_reg_reg[8]_i_1__0_n_4\,
      O(2) => \prescale_reg_reg[8]_i_1__0_n_5\,
      O(1) => \prescale_reg_reg[8]_i_1__0_n_6\,
      O(0) => \prescale_reg_reg[8]_i_1__0_n_7\,
      S(3) => \prescale_reg[8]_i_2__0_n_0\,
      S(2) => \prescale_reg[8]_i_3_n_0\,
      S(1) => \prescale_reg[8]_i_4_n_0\,
      S(0) => \prescale_reg[8]_i_5_n_0\
    );
\prescale_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \prescale_reg[0]_i_1_n_0\,
      D => \prescale_reg_reg[8]_i_1__0_n_6\,
      Q => prescale_reg_reg(9),
      R => \^rst\
    );
txd_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst\
    );
txd_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[0]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \data_reg_reg[0]_0\,
      I5 => txd_reg_i_4_n_0,
      O => txd_reg2_out
    );
txd_reg_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \data_reg_reg_n_0_[0]\,
      I1 => \bit_cnt_reg_n_0_[1]\,
      I2 => \bit_cnt_reg_n_0_[2]\,
      I3 => \bit_cnt_reg_n_0_[3]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      O => txd_reg_i_3_n_0
    );
txd_reg_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => txd_reg_i_5_n_0,
      I1 => prescale_reg_reg(9),
      I2 => prescale_reg_reg(15),
      I3 => prescale_reg_reg(10),
      I4 => txd_reg_i_6_n_0,
      O => txd_reg_i_4_n_0
    );
txd_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => prescale_reg_reg(3),
      I1 => prescale_reg_reg(11),
      I2 => prescale_reg_reg(5),
      I3 => prescale_reg_reg(8),
      I4 => txd_reg_i_7_n_0,
      O => txd_reg_i_5_n_0
    );
txd_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => prescale_reg_reg(2),
      I1 => prescale_reg_reg(6),
      I2 => prescale_reg_reg(4),
      I3 => prescale_reg_reg(14),
      I4 => txd_reg_i_8_n_0,
      O => txd_reg_i_6_n_0
    );
txd_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => prescale_reg_reg(18),
      I1 => prescale_reg_reg(13),
      I2 => prescale_reg_reg(17),
      I3 => prescale_reg_reg(7),
      O => txd_reg_i_7_n_0
    );
txd_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => prescale_reg_reg(12),
      I1 => prescale_reg_reg(1),
      I2 => prescale_reg_reg(16),
      I3 => prescale_reg_reg(0),
      O => txd_reg_i_8_n_0
    );
txd_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => txd_reg2_out,
      D => txd_reg_i_3_n_0,
      Q => txd,
      S => \^rst\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  port (
    debug_rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid_reg_reg : out STD_LOGIC;
    txd : out STD_LOGIC;
    debug_busy : out STD_LOGIC;
    rst_n : in STD_LOGIC;
    rxd : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top is
  signal \^debug_rx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axis_tvalid_reg_reg\ : STD_LOGIC;
  signal rst : STD_LOGIC;
begin
  debug_rx_data(7 downto 0) <= \^debug_rx_data\(7 downto 0);
  m_axis_tvalid_reg_reg <= \^m_axis_tvalid_reg_reg\;
uart_rx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_rx
     port map (
      clk => clk,
      debug_busy => debug_busy,
      debug_rx_data(7 downto 0) => \^debug_rx_data\(7 downto 0),
      m_axis_tvalid_reg_reg_0 => \^m_axis_tvalid_reg_reg\,
      rst => rst,
      rst_n => rst_n,
      rxd => rxd
    );
uart_tx_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_tx
     port map (
      clk => clk,
      \data_reg_reg[0]_0\ => \^m_axis_tvalid_reg_reg\,
      debug_rx_data(7 downto 0) => \^debug_rx_data\(7 downto 0),
      rst => rst,
      rst_n => rst_n,
      txd => txd
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    rxd : in STD_LOGIC;
    txd : out STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rx_seen : out STD_LOGIC;
    debug_rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    debug_rx_valid : out STD_LOGIC;
    debug_busy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_uart_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_top,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst_n:rst, FREQ_HZ 5e+07, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  rx_seen <= \<const0>\;
  seg(6) <= \<const0>\;
  seg(5) <= \<const1>\;
  seg(4) <= \<const1>\;
  seg(3) <= \<const1>\;
  seg(2) <= \<const1>\;
  seg(1) <= \<const1>\;
  seg(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_uart_top
     port map (
      clk => clk,
      debug_busy => debug_busy,
      debug_rx_data(7 downto 0) => debug_rx_data(7 downto 0),
      m_axis_tvalid_reg_reg => debug_rx_valid,
      rst_n => rst_n,
      rxd => rxd,
      txd => txd
    );
end STRUCTURE;
