----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/25/2017 04:47:20 PM
-- Design Name: 
-- Module Name: bench_tst_cna - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity bench_tst_cna is
end bench_tst_cna;

architecture Behavioral of bench_tst_cna is

component test_cna is
   Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
 --       dac_wrb : out STD_LOGIC;
        ledr_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

-- Inputs
 signal clk : std_logic :='0';
  signal reset : std_logic :='0';
--  signal dac_wrb : std_logic;
  
-- outputs
   signal ledr_out : std_logic_vector(7 downto 0);
  
begin

uut : test_cna PORT MAP(
 clk => clk,
       reset => reset,
 --      dac_wrb => dac_wrb,
       ledr_out => ledr_out
       );

clk <= not clk after 5ns;
reset <= '1',
         '0' after 40 ns;
         
         
end Behavioral;
