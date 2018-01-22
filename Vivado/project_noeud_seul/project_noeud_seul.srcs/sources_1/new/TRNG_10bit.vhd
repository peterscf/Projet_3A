----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 09:42:04 AM
-- Design Name: 
-- Module Name: TRNG_10bit - Behavioral
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

entity TRNG_10bit is
    Port ( clk,rst : in STD_LOGIC;
    Q_rand_vector : out STD_LOGIC_VECTOR (9 downto 0) );
end TRNG_10bit;

architecture Behavioral of TRNG_10bit is

component ring_loop
	port (clk,rst : in std_logic; Q_rand : out std_logic);
end component;

begin

    r0: ring_loop port map (clk,rst,Q_rand_vector(0));
    r1: ring_loop port map (clk,rst,Q_rand_vector(1));
    r2: ring_loop port map (clk,rst,Q_rand_vector(2));
    r3: ring_loop port map (clk,rst,Q_rand_vector(3));
    r4: ring_loop port map (clk,rst,Q_rand_vector(4));
    r5: ring_loop port map (clk,rst,Q_rand_vector(5));
    r6: ring_loop port map (clk,rst,Q_rand_vector(6));
    r7: ring_loop port map (clk,rst,Q_rand_vector(7));
    r8: ring_loop port map (clk,rst,Q_rand_vector(8));
    r9: ring_loop port map (clk,rst,Q_rand_vector(9));




end Behavioral;
