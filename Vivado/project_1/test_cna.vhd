-----------------------------FILTRE.vhd----------------------------------------
library IEEE ;
use IEEE.std_logic_1164.ALL ;
USE ieee.numeric_std.all;

--library lib_FILTRE ;

entity test_cna is
	port(	
		clk		: in STD_LOGIC ;
		reset		: in STD_LOGIC ;
		ledr_out 				: out STD_LOGIC_VECTOR(7 downto 0 ) );
end test_cna;

architecture A of test_cna is

---- brochage Zedboard
attribute LOC          		: string;
attribute IOSTANDARD       : string;

-- set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CCD_PIXCLK;]  ## --> dans le fichier .sdc

attribute IOSTANDARD of clk : signal is "LVCMOS33";  -- 100 MHz
attribute LOC of clk : signal is "Y9";

attribute LOC of ledr_out  : signal is "U14,U19,W22,V22,U21,U22,T21,T22";   -- LEDG
attribute IOSTANDARD of ledr_out : signal is "LVCMOS33";

attribute LOC of reset  : signal is "P16";

attribute IOSTANDARD of reset : signal is "LVCMOS33";




SIGNAL	count_signal: unsigned(28 DOWNTO 0);

--faire une deuxième clock

	
BEGIN
PROCESS (clk, reset)
	BEGIN
	
		IF reset = '1' THEN		
			count_signal <= (OTHERS => '0');			
		 ELSIF (clk'EVENT AND clk = '1') THEN			
						count_signal <= count_signal + "00000000000000001";								
		END IF;
END PROCESS;

	ledr_out(7 downto 0) <= STD_LOGIC_VECTOR(count_signal(28 downto 21));	
--	ledr_out(7 downto 0) <= STD_LOGIC_VECTOR(count_signal(8 downto 1));	


end A;

