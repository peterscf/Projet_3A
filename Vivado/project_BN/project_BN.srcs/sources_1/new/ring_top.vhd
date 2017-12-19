----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/18/2017 05:13:47 PM
-- Design Name: 
-- Module Name: ring_top - Behavioral
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

entity ring_top is
    Port ( clk,rst : in STD_LOGIC;
   Q_rand1 : out STD_LOGIC;
   Q_rand2 : out STD_LOGIC;
   Q_rand3 : out STD_LOGIC;
   clk_out : out STD_LOGIC);
end ring_top;

architecture struc_TRNG_vector of ring_top is

--- Autorisation d'une construction en loop

--set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells r1/Q_i_1]]

--set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]

--set_property SEVERITY {Warning} [get_drc_checks NSTD-1]



---- brochage Zedboard
attribute LOC          	: string;
attribute IOSTANDARD    : string;

-- set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CCD_PIXCLK;]  ## --> dans le fichier .sdc

attribute LOC of clk : signal is "Y9";
attribute IOSTANDARD of clk : signal is "LVCMOS33";  -- 100 MHz

attribute LOC of rst  : signal is "P16"; --Bouton poussoir exterieur
attribute IOSTANDARD of rst : signal is "LVCMOS33";


attribute LOC of Q_rand1  : signal is "Y11"; --JA1   -- Sortie analogique (non bufferisé) peut etre ?
attribute IOSTANDARD of Q_rand1 : signal is "LVCMOS33";

attribute LOC of Q_rand2  : signal is "W12"; --JB1 
attribute IOSTANDARD of Q_rand2 : signal is "LVCMOS33";

attribute LOC of Q_rand3  : signal is "AA9"; --JA4 
attribute IOSTANDARD of Q_rand3 : signal is "LVCMOS33";


attribute LOC of clk_out : signal is "W8";
attribute IOSTANDARD of clk_out : signal is "LVCMOS33";

--déclaration du composant

component ring_loop
    Port ( clk,rst : in STD_LOGIC; Q_rand : out STD_LOGIC);
end component;

-- déclaration de signal
--signal clk_temp: std_logic;

begin

--instanciation du composante

	l1: ring_loop port map (clk,rst,Q_rand1);
    l2: ring_loop port map (clk,rst,Q_rand2);
    l3: ring_loop port map (clk,rst,Q_rand3);

-- reroute de la clock
    clk_out <= clk;


end struc_TRNG_vector;
