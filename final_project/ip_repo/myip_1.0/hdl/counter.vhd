library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
    Port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        count_max : in  std_logic_vector(31 downto 0);
        count     : out std_logic_vector(31 downto 0);
        led       : out std_logic_vector(7 downto 0);
        done      : out std_logic;
        btn       : in  std_logic
    );
end counter;

architecture Behavioral of counter is
    signal cnt : unsigned(31 downto 0) := (others => '0');
    signal div : unsigned(25 downto 0) := (others => '0');
    signal fc : std_logic := '0';
    signal done_int : std_logic := '0';
    signal counting : std_logic := '0';
begin
    div_clk : process(clk, reset)
    begin
        if reset = '1' then
            div <= (others => '0');
        elsif rising_edge(clk) then
            div <= div + 1;
        end if;
    end process;
    fc <= div(24);

    process(fc)
    begin
        if reset = '1' then
            cnt <= (others => '0');
            done_int <= '0';
            counting <= '0';
        elsif rising_edge(fc) then
            if btn = '1' and counting = '0' and unsigned(count_max) > 0 then
                counting <= '1';
                done_int <= '0'; -- Reset done when starting new count
            end if;

            -- Counting logic
            if counting = '1' then
                if cnt < unsigned(count_max) then
                    cnt <= cnt + 1;
                    done_int <= '0';
                else
                    cnt <= (others => '0'); -- Reset count to 0
                    done_int <= '1'; -- Set done
                    counting <= '0'; -- Stop counting
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(cnt);
    led   <= std_logic_vector(cnt(7 downto 0));
    done  <= done_int;
end Behavioral;