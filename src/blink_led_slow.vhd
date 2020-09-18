-- create a blinking red LED so we have a visual indicator of FPGA configuration (CONF_DONE is not used or routed to LED)
-- useful to verify successful configuration of the FPGA from HPS, specifically using Partial Reconfiguration
-- led_counter(26) = blinks every 1.34 seconds (slow persona)
-- led_counter(25) = blinks every 0.67 seconds (base persona)
-- led_counter(24) = blinks every 0.34 seconds (fast persona)

library ieee;
use     ieee.std_logic_1164.all;
use     ieee.std_logic_unsigned.all;


entity blink_led_slow is
   port (
      clk            : in std_logic;
      rst            : in std_logic;
		
      blink_led_out  : out std_logic
   );
end entity blink_led_slow;

architecture rtl of blink_led_slow is

signal led_counter   : std_logic_vector(26 downto 0);
 
begin

process (clk, rst)
begin
   if rst='1' then
      led_counter <= (others=>'1');
   elsif rising_edge(clk) then
      led_counter <= led_counter + '1';
   end if;
end process;

blink_led_out <= led_counter(26);
    
end architecture rtl;
