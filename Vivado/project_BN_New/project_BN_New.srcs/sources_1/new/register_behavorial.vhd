----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2017 09:38:35 AM
-- Design Name: 
-- Module Name: register_behavorial - Behavioral
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

entity register_behavorial is
    port(clk, D, rst : in std_logic;
     Q    : out std_logic);
end register_behavorial;

architecture Behavioral of register_behavorial is

begin
    process (clk)
    begin
       if clk'event and clk='1' then
          if rst='1' then
             Q <= '0';
          else
             Q <= D;
          end if;
       
       end if;
    end process;

end Behavioral;



--library ieee;
--use ieee.std_logic_1164.all;

--entity registers_1 is
--    port(C, D : in std_logic;
--         Q    : out std_logic);
--end registers_1;

--architecture archi of registers_1 is
--begin
--    process (C)
--    begin
--        if (C'event and C='1') then
--            Q <= D;
--        end if;
--    end process;
--end archi;


--process (<clock>)
--begin
--   if <clock>'event and <clock>='0' then
--      if <reset>='1' then
--         <output> <= '0';
--      else
--         <output> <= <input>;
--      end if;
--   end if;
--end process;
