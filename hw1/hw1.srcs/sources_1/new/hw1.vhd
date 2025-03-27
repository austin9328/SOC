library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity my_led_ip is
    Port (
        led_input : in  STD_LOGIC_VECTOR(7 downto 0); -- 從 GPIO 接收
        led_out   : out STD_LOGIC_VECTOR(7 downto 0)  -- 控制實體 LED
    );
end my_led_ip;

architecture Behavioral of my_led_ip is
begin
    led_out <= led_input;  -- 直接映射
end Behavioral;
