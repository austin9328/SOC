----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2024/11/08 21:46:20
-- Design Name: 
-- Module Name: pingpong - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ballgame is
	port(
		i_clk       : in std_logic;
		i_rst       : in std_logic;
		btn_l       : in std_logic;
		btn_r       : in std_logic;
		start_signal: in std_logic_vector(31 downto 0); --暫存器有32位元
		score_out   : out std_logic_vector(31 downto 0);
		LED         : out std_logic_vector(7 downto 0)
	);

end ballgame;

architecture Behavioral of ballgame is
	signal ball    : std_logic_vector(7 downto 0);
	signal score_l : std_logic_vector(3 downto 0);
	signal score_r : std_logic_vector(3 downto 0);
	type   state_type is (game_coming,initial,move_left,move_right,win_l,win_r,ready_ml,ready_mr);
	signal state   : state_type;
	signal pre_state : state_type;
	
	signal div    : std_logic_vector(60 downto 0);
    signal e_clk  : std_logic;
	
	signal i : integer range 0 to 30;
    signal i2 : integer range 0 to 3;
    signal lfsr : std_logic_vector (1 downto 0);
    signal feedback : std_logic;
    signal v_clk : std_logic;
	
	signal f_clk : std_logic;
	
	signal done   : std_logic; --遊戲結束的訊號
	

begin
	LED <= ball;
	score_out <= "00000000000000000000000" & done & score_l & score_r;


	fsm : process(i_clk, i_rst, btn_l, btn_r)  --i_clk
	begin
		if i_rst = '1' then
			state <= game_coming;
		elsif rising_edge(i_clk) then
			pre_state <= state;
			case state is
				when game_coming =>
					if start_signal(0) = '1' then
						state <= initial;
					end if;
				when initial =>
					if btn_l = '1' then
						state <= move_right;
					end if;
				when move_right =>
					if ball = "10000000" and btn_r = '1' then
						state <= move_left;
						
					elsif (ball = "00000000") or (ball > "00000001" and btn_r = '1') then
						state <= win_l;
					end if;
				when move_left =>
					if ball = "00000001" and btn_l = '1' then
						state <= move_right;
						
					elsif (ball = "00000000") or (ball < "10000000" and btn_l = '1') then
						state <= win_r;
					end if;
				when win_l =>
					if done = '1' then    --確保收到done訊號才能轉態(根據done_signal:process)
						state <= game_coming;
					else
						if btn_l = '1' then
							state <= ready_mr;
						end if;
					end if;
				when win_r =>
					if done = '1' then    --確保收到done訊號才能轉態(根據done_signal:process)
						state <= game_coming;
					else
						if btn_r = '1' then
							state <= ready_ml;
						end if;
					end if;
				when ready_mr =>
					if ball = "00000001" then 
						state <= move_right;
					else state <= ready_mr;
					end if;
				when ready_ml =>
					if ball = "10000000" then 
						state <= move_left;
					else 
						state <= ready_ml;
					end if;
			end case;
		end if;
	end process;

	led_show : process(v_clk, i_rst, btn_l, btn_r)  --e_clk
	begin
		if i_rst = '1' then
			ball <= "00000000";
		elsif v_clk' event and v_clk = '1' then
			case state is
				when game_coming =>
					ball <= "00000000";
				when initial =>
					ball <= "00000001";
				when move_right =>
					ball <= ball(6 downto 0) & '0';
				when move_left =>
					ball <= '0' & ball(7 downto 1);
				when win_l =>
					ball <= score_r & score_l;
				when win_r =>
					ball <= score_r & score_l;
				when ready_mr =>
					ball <= "00000001";
				when ready_ml =>
					ball <= "10000000";
			end case;
		end if;
	end process;

	score : process(i_clk, i_rst, btn_l, btn_r)  --i_clk
	begin
		if i_rst = '1' then
			score_l <= "0000";
			score_r <= "0000";
		elsif rising_edge(i_clk) then
			case state is
				when game_coming =>
					null;
				when initial =>
					score_l <= "0000";
					score_r <= "0000";
				when move_right =>
					null;
				when move_left =>
					null;
				when win_l =>
					if pre_state = move_right then
						score_l <= score_l + '1';
					else 
						score_l <= score_l;
					end if;
				when win_r =>
					if pre_state = move_left then
						score_r <= score_r + '1';
					else 
						score_r <= score_r;
					end if;
				when ready_mr =>
					null;
				when ready_ml =>
					null;
			end case;
		end if;
	end process;
	
    done_signal:process(i_clk, i_rst)
	begin
		if i_rst = '1' then
			done <= '0';
		elsif rising_edge(i_clk) then
			case state is
				when game_coming =>
					null;
				when initial =>
					done <= '0';
				when move_right =>
					null;
				when move_left =>
					null;
				when win_l =>
					if score_l = "0100" then
						done <= '1';
					end if;
				when win_r =>
					if score_r = "0100" then
						done <= '1';
					end if;
				when ready_mr =>
					null;
				when ready_ml =>
					null;
			end case;
		end if;
	end process;
	
	div_clk : process(i_clk, i_rst)
	begin
		if i_rst = '1' then
			div <= (others => '0');
		elsif rising_edge(i_clk) then
			div <= div + 1;
		end if;
	end process;
	e_clk <= div(24);
	
	process(e_clk, i_rst)
	begin
		if i_rst = '1' then
			lfsr <= "01";
			i <= 0;
			i2 <= 0;
		elsif rising_edge(e_clk) then
			feedback <= lfsr(1) xor lfsr(0);
			lfsr    <= feedback & lfsr(1);
			i2      <= to_integer(signed(lfsr));
			i <= i2 + 23;
		end if;
	end process;
	v_clk <= div(i);
end Behavioral;