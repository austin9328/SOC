library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity uart_ip is
    generic (
        CLK_FREQ : integer := 100_000_000; -- FPGA時脈100MHz
        BAUD_RATE : integer := 115200
    );
    port (
        clk : in std_logic;
        reset_n : in std_logic;
        -- 控制信號
        tx_data : in std_logic_vector(7 downto 0);
        tx_start : in std_logic;
        tx_busy : out std_logic;
        rx_data : out std_logic_vector(7 downto 0);
        rx_ready : out std_logic;
        -- UART引腳
        tx : out std_logic;
        rx : in std_logic
    );
end uart_ip;

architecture Behavioral of uart_ip is
    constant BAUD_DIV : integer := CLK_FREQ / BAUD_RATE;

    -- TX狀態機
    type tx_state_t is (IDLE, START, DATA, STOP);
    signal tx_state : tx_state_t := IDLE;
    signal tx_counter : integer range 0 to BAUD_DIV-1 := 0;
    signal tx_bit_count : integer range 0 to 7 := 0;
    signal tx_data_reg : std_logic_vector(7 downto 0);

    -- RX狀態機
    type rx_state_t is (IDLE, START, DATA, STOP);
    signal rx_state : rx_state_t := IDLE;
    signal rx_counter : integer range 0 to BAUD_DIV-1 := 0;
    signal rx_bit_count : integer range 0 to 7 := 0;
    signal rx_shift : std_logic_vector(7 downto 0);

begin
    -- TX過程
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            tx <= '1';
            tx_state <= IDLE;
            tx_counter <= 0;
            tx_bit_count <= 0;
            tx_busy <= '0';
            tx_data_reg <= (others => '0');
        elsif rising_edge(clk) then
            case tx_state is
                when IDLE =>
                    tx_busy <= '0';
                    if tx_start = '1' then
                        tx_data_reg <= tx_data;
                        tx_state <= START;
                        tx <= '0'; -- 起始位
                        tx_counter <= 0;
                        tx_busy <= '1';
                    end if;
                when START =>
                    if tx_counter = BAUD_DIV - 1 then
                        tx_state <= DATA;
                        tx_counter <= 0;
                        tx_bit_count <= 0;
                        tx <= tx_data_reg(0); -- 資料位
                    else
                        tx_counter <= tx_counter + 1;
                    end if;
                when DATA =>
                    if tx_counter = BAUD_DIV - 1 then
                        tx_counter <= 0;
                        if tx_bit_count = 7 then
                            tx_state <= STOP;
                            tx <= '1'; -- 停止位
                        else
                            tx_bit_count <= tx_bit_count + 1;
                            tx <= tx_data_reg(tx_bit_count + 1);
                        end if;
                    else
                        tx_counter <= tx_counter + 1;
                    end if;
                when STOP =>
                    if tx_counter = BAUD_DIV - 1 then
                        tx_state <= IDLE;
                        tx_counter <= 0;
                    else
                        tx_counter <= tx_counter + 1;
                    end if;
            end case;
        end if;
    end process;

    -- RX過程
    process(clk, reset_n)
    begin
        if reset_n = '0' then
            rx_state <= IDLE;
            rx_counter <= 0;
            rx_bit_count <= 0;
            rx_ready <= '0';
            rx_shift <= (others => '0');
            rx_data <= (others => '0');
        elsif rising_edge(clk) then
            case rx_state is
                when IDLE =>
                    rx_ready <= '0';
                    if rx = '0' then
                        rx_state <= START;
                        rx_counter <= 0;
                    end if;
                when START =>
                    if rx_counter = BAUD_DIV/2 - 1 then
                        if rx = '0' then -- 確認起始位
                            rx_state <= DATA;
                            rx_counter <= 0;
                        else
                            rx_state <= IDLE;
                        end if;
                    else
                        rx_counter <= rx_counter + 1;
                    end if;
                when DATA =>
                    if rx_counter = BAUD_DIV - 1 then
                        rx_counter <= 0;
                        rx_shift(rx_bit_count) <= rx;
                        if rx_bit_count = 7 then
                            rx_state <= STOP;
                            rx_bit_count <= 0;
                        else
                            rx_bit_count <= rx_bit_count + 1;
                        end if;
                    else
                        rx_counter <= rx_counter + 1;
                    end if;
                when STOP =>
                    if rx_counter = BAUD_DIV - 1 then
                        rx_counter <= 0;
                        if rx = '1' then -- 確認停止位
                            rx_data <= rx_shift;
                            rx_ready <= '1';
                        end if;
                        rx_state <= IDLE;
                    else
                        rx_counter <= rx_counter + 1;
                    end if;
            end case;
        end if;
    end process;

end Behavioral;