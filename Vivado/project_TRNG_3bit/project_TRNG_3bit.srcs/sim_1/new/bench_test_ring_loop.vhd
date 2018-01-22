----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2017 12:40:05 PM
-- Design Name: 
-- Module Name: bench_test_ring_loop - Behavioral
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

entity bench_test_ring_loop is
end bench_test_ring_loop;

architecture Behavioral of bench_test_ring_loop is

component ring_loop is
    Port ( 
    clk,rst : in STD_LOGIC;
    Q_rand : out STD_LOGIC);
end component;

-- Inputs
    signal clk : std_logic :='0';
    signal rst : std_logic :='0';
  
-- outputs
    signal Q_rand : std_logic_vector;
  
begin

ring : ring_loop PORT MAP(
    clk => clk,
    rst => rst,
    Q_rand => Q_rand
    );

clk <= not clk after 5ns;
reset <= '1',
'0' after 40 ns;

end Behavioral;
