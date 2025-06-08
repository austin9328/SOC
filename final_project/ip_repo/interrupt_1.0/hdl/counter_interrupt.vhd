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
        btn       : in  std_logic; -- 開始按鈕
        stop_btn  : in  std_logic; -- 中斷按鈕
        irq       : out std_logic; -- 中斷輸出
        irq_ack   : in  std_logic  -- 中斷確認輸入，用來清除內部中斷訊號
    );
end counter;

architecture Behavioral of counter is
    signal cnt : unsigned(31 downto 0) := (others => '0');
    signal div : unsigned(25 downto 0) := (others => '0');
    signal fc : std_logic := '0';
    signal done_int : std_logic := '0';
    signal counting : std_logic := '0';
    signal btn_prev : std_logic := '0'; -- 開始按鈕的前一狀態
    signal stop_btn_prev : std_logic := '0'; -- 停止按鈕的前一狀態
    signal irq_int : std_logic := '0'; -- 內部中斷訊號

begin
    -- Clock divider
    div_clk : process(clk, reset)
    begin
        if reset = '1' then
            div <= (others => '0');
        elsif rising_edge(clk) then
            div <= div + 1;
        end if;
    end process;
    fc <= div(24);

    -- Counting and interrupt logic
    process(fc, reset)
    begin
        if reset = '1' then
            cnt <= (others => '0');
            done_int <= '0';
            counting <= '0';
            btn_prev <= '0';
            stop_btn_prev <= '0';
            irq_int <= '0';
        elsif rising_edge(fc) then
            -- Detect start button press (rising edge)
            btn_prev <= btn;
            if btn = '1' and btn_prev = '0' and unsigned(count_max) > 0 then
                counting <= '1';
                done_int <= '0'; -- Reset done when starting
            end if;

            -- Detect stop button press (rising edge)
            stop_btn_prev <= stop_btn;
            if stop_btn = '1' and stop_btn_prev = '0' then
                irq_int <= '1'; -- Trigger interrupt
                counting <= '0'; -- Pause counting
				done_int <= '0';
            end if;

            -- Clear interrupt on acknowledge
            if irq_ack = '1' then
                irq_int <= '0';
            end if;

            -- Counting logic
            if counting = '1' then
                if cnt < unsigned(count_max) then
                    cnt <= cnt + 1;
                    done_int <= '0';
                else
                    cnt <= (others => '0');
                    done_int <= '1';
                    counting <= '0';
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(cnt);
    led   <= std_logic_vector(cnt(7 downto 0));
    done  <= done_int;
    irq   <= irq_int;
end Behavioral;