----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2025/06/07 17:14:48
-- Design Name: 
-- Module Name: final - Behavioral
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

entity final is
	port(
		i_clk      : in std_logic;
		i_rst      : in std_logic;
		btn_hit    : in std_logic;
		signal_in  : in std_logic_vector(31 downto 0);        --從樹梅派傳遞的資料
		signal_out : out std_logic_vector(31 downto 0);--輸出資訊
		LED        : out std_logic_vector(7 downto 0)
		);
end final;

architecture Behavioral of final is	
	type   state_type is (initial,hit);
	signal state : state_type;
	
	signal score          : std_logic_vector(7 downto 0);
	signal div            : std_logic_vector(60 downto 0);
    signal e_clk          : std_logic;
	
	signal i_LED          : std_logic_vector(7 downto 0);
	
	signal btn_hit_prev   : std_logic := '0';
begin
	
	signal_out <= "000000000000000000000000"&score;
	LED <= i_LED;
	
	fsm : process(i_clk,i_rst)
	begin
		if i_rst = '1' then
			state <= initial;
		elsif rising_edge(i_clk) then
			case state is
				when initial => 
					if signal_in(8) = '1' then
						state <= hit;
					end if;
				when hit =>
					if signal_in(9) = '1' then
						state <= initial;
					end if;
			end case;
		end if;
	end process;
	
	led_show : process(i_clk,i_rst)
	begin
		if i_rst = '1' then
			i_LED <= "00000000";
		elsif rising_edge(i_clk) then
			case state is
				when initial =>
					i_LED <= "11000000";
				when hit =>
					i_LED(7 downto 1) <= "1000000";
					if signal_in(0) = '1' then
						i_LED(0) <= '1';
					else
						i_LED(0) <= '0';
					end if;
			end case;
		end if;
	end process;
	
	process(i_clk,i_rst,btn_hit) --score
	begin
		if i_rst = '1' then
			score <= "00000000";
			btn_hit_prev <= '0';
		elsif rising_edge(i_clk) then
			btn_hit_prev <= btn_hit; -- 更新上一拍的值
			case state is
				when initial => 
					score <= "00000000";
				when hit =>
					if signal_in(0) = '1' and btn_hit = '1' and btn_hit_prev = '0' then
						score <= score + '1';
					end if;
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

end Behavioral;
