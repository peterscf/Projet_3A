----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2017 09:38:35 AM
-- Design Name: 
-- Module Name: Correcteur_XOR_behavorial - Behavioral
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

entity Correcteur_XOR_behavorial is
    port(
    clk, D, rst : in std_logic;
    Q    : out std_logic);
end Correcteur_XOR_behavorial;

architecture Behavioral of Correcteur_XOR_behavorial is
signal reg4 : std_logic_vector :="0000";

begin

process(clk)
begin
   if ( clk'event and clk ='1') then
      if (rst = '1') then
         reg4 <= (others => '0');
      else 
--         reg4(3 downto 1) <= reg4(2 downto 0) ;
         reg4(3)<=reg4(2);
         reg4(2)<=reg4(1);
         reg4(1)<=reg4(0);
         reg4(0) <= reg4(3) XOR reg4(0) XOR (D);
      end if;
      Q <= reg4(3);
   end if;
end process;

end Behavioral;