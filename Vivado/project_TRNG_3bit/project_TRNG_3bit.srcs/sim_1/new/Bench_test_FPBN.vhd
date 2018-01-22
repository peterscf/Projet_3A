----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/18/2018 09:07:56 AM
-- Design Name: 
-- Module Name: Bench_test_FPBN - Behavioral
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

entity Bench_test_FPBN is
end Bench_test_FPBN;

architecture Behavioral of Bench_test_FPBN is

component FPBN_top is
	    port (	
	        clk: in std_logic;
            reset_n : in std_logic;
            enable_prog : in std_logic;

            noeud_out_1_0 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_1 : out std_logic; 
            noeud_out_1_2 : out std_logic; 
            noeud_out_1_3 : out std_logic; 
            noeud_out_1_4 : out std_logic; 
            noeud_out_1_5 : out std_logic; 
            noeud_out_1_6 : out std_logic; 
            noeud_out_1_7 : out std_logic; 
            noeud_out_1_8 : out std_logic;
            noeud_out_1_9 : out std_logic;
                                    
            led_out : out std_logic; -- indicateur statut  du reset_n
            led1: out std_logic;
            led2: out std_logic;
            --noeud_out_2 : out std_logic_vector (9 downto 0)); -- sortie du deuxieme noeud
            noeud_out_2_0 : out std_logic; -- sortie de 2 du premier noeud
            noeud_out_2_1 : out std_logic; 
            noeud_out_2_2 : out std_logic; 
            noeud_out_2_3 : out std_logic; 
            noeud_out_2_4 : out std_logic; 
            noeud_out_2_5 : out std_logic;
            noeud_out_2_6 : out std_logic; 
            noeud_out_2_7 : out std_logic; 
            noeud_out_2_8 : out std_logic;
            noeud_out_2_9 : out std_logic); 
            

end component;

    signal clk : std_logic :='0';
    signal reset_n : std_logic :='0';
    signal enable_prog : std_logic :='0';
    
    signal noeud_out_1_0 : std_logic;
    signal noeud_out_1_1 : std_logic;
    signal noeud_out_1_2 : std_logic;
    signal noeud_out_1_3 : std_logic;
    signal noeud_out_1_4 : std_logic;
    signal noeud_out_1_5 : std_logic;
    signal noeud_out_1_6 : std_logic;
    signal noeud_out_1_7 : std_logic;
    signal noeud_out_1_8 : std_logic;
    signal noeud_out_1_9 : std_logic;
    
    signal noeud_out_2_0 : std_logic;
    signal noeud_out_2_1 : std_logic;
    signal noeud_out_2_2 : std_logic;
    signal noeud_out_2_3 : std_logic;
    signal noeud_out_2_4 : std_logic;
    signal noeud_out_2_5 : std_logic;
    signal noeud_out_2_6 : std_logic;
    signal noeud_out_2_7 : std_logic;
    signal noeud_out_2_8 : std_logic;
    signal noeud_out_2_9 : std_logic;
    
    signal led_out : std_logic;
    signal led1 : std_logic;
    signal led2 : std_logic;
    

    
  

begin


netW : FPBN_top PORT MAP(
    clk => clk,
    reset_n => reset_n,
    enable_prog => enable_prog,
    noeud_out_1_0 => noeud_out_1_0,
    noeud_out_1_1 => noeud_out_1_1,
    noeud_out_1_2 => noeud_out_1_2,
    noeud_out_1_3 => noeud_out_1_3,
    noeud_out_1_4 => noeud_out_1_4,
    noeud_out_1_5 => noeud_out_1_5,
    noeud_out_1_6 => noeud_out_1_6,
    noeud_out_1_7 => noeud_out_1_7,
    noeud_out_1_8 => noeud_out_1_8,
    noeud_out_1_9 => noeud_out_1_9,
    
    led_out => led_out,
    led1 => led1,
    led2 => led2,
    
    noeud_out_2_0 => noeud_out_2_0,
    noeud_out_2_1 => noeud_out_2_1,
    noeud_out_2_2 => noeud_out_2_2,
    noeud_out_2_3 => noeud_out_2_3,
    noeud_out_2_4 => noeud_out_2_4,
    noeud_out_2_5 => noeud_out_2_5,
    noeud_out_2_6 => noeud_out_2_6,
    noeud_out_2_7 => noeud_out_2_7,
    noeud_out_2_8 => noeud_out_2_8,
    noeud_out_2_9 => noeud_out_2_9 
    
    );

clk <= not clk after 5ns;

reset_n <= '0',
'1' after 40 ns;

enable_prog <= '0',
'1' after 80 ns;


end Behavioral;
