----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2017 08:52:36 AM
-- Design Name: 
-- Module Name: MUX_Behavorial - Behavioral
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

entity MUX_Behavorial is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Com : in STD_LOGIC;
           S : out STD_LOGIC);
end MUX_Behavorial;

architecture Behavioral of MUX_Behavorial is

begin
    process (Com, A, B) -- devrais-je mettre (Com, A, B) ou (Com) ??
    begin
        case Com is
            when '1' => S <= A;
            when others => S <= B;
        end case;
    end process;

end Behavioral;