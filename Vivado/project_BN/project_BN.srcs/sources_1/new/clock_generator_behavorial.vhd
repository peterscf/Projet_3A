----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2017 10:32:49 AM
-- Design Name: 
-- Module Name: clock_generator_behavorial - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_generator_behavorial is
    Port ( clk : in STD_LOGIC;
           clk_div2 : out STD_LOGIC;
           clk_delay : out STD_LOGIC);
end clock_generator_behavorial;

architecture Behavioral of clock_generator_behavorial is
signal tmp : STD_LOGIC := '0';

begin  -- Implementation avec latch pour que ca garde en mémoire la dernière valeurs et peut etre eviter les glitchs
    process (clk)
    begin
    if clk'event and clk='1'  then
        if tmp='0' then
            clk_div2 <= '1';
            tmp <='1';
        else
            clk_div2 <= '0';
            tmp <='0';
        end if;
   
    end if;
       
    end process;
    
    process (clk)
    begin
    if clk'event and clk='0'  then
        if tmp='1' then
            clk_delay <= '1';
        else
            clk_delay <= '0';
        end if;
       
    end if;
    end process;

end Behavioral;






--library ieee;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

--entity counters_1 is
--    port(CLK, CLR : in std_logic;
--         Q : out unsigned(3 downto 0));
--end counters_1;

--architecture archi of counters_1 is
--    signal tmp: unsigned(3 downto 0);
--begin
--    process (CLK)
--    begin
--        if (CLK'event and CLK='1') then
--          if (CLR='1') then
--            tmp <= "0000";
--          else
--            tmp <= tmp + 1;
--          end if;
--        end if;
--    end process;

--    Q <= tmp;

--end archi;
				
				
	
--process (<clock>)
--begin
--   if <clock>='1' and <clock>'event then
--      if <reset>='1' then
--         <count> <= (others => '0');
--      elsif <clock_enable>='1' then
--         <count> <= <count> + 1;
--      end if;
--   end if;
--end process;			
				
				
				