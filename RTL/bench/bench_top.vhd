library IEEE ;
use IEEE.std_logic_1164.ALL ;
--use ieee.std_logic_signed.all;
use std.textio.all;
library lib_VHD ;
use lib_VHD.ROM_cordic;


entity Test is end test_rom;

architecture test1 of test_rom is
--Test fonctionel !!!
--//////////////////////////////////////////////////////////////////////////--
	--déclaration des VIP

	component VIP_prog is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				prog: out  std_logic;
      			Wen : out std_logic;
      			full_in : in std_logic;
      			prog_link_out : out std_logic_vector(N_parents downto 0);
      			full_out : out std_logic;
				prob_out : out std_logic_vector (9 downto 0)
		);
	end component;
	
	component VIP_moy is
    port(	clk: in std_logic;
			reset_n : in std_logic;
			prob_in : in std_logic;
			prob_out : out integer			
		);
	end component; 	
--//////////////////////////////////////////////////////////////////////////--
	--déclaration du DUT

	component CORE is
	generic(N_parents : integer := 10); 
    port(	clk: in std_logic;
			reset_n : in std_logic;
      --Port entree
				rdm_gene_in : in std_logic_vector (9 downto 0);
				prog_link_in : in std_logic_vector(N_parents downto 0);
				prog : in std_logic;
		--entrée pour la MEM      			
				addr : in std_logic_vector(N_parents downto 0);
      			data_in : in std_logic_vector(9 downto 0);
				Wen : in std_logic;
      			full_in : in std_logic;
      --Port de sortie
				prog_link_out : out std_logic_vector(N_parents downto 0);
      			full_out : out std_logic;
				prob_out : out std_logic;
				data_out : out std_logic_vector(9 downto 0)
		);
	end component;
	


--signal period: natural;
begin

		sig_clk <= not(sig_clk) after  10 ns; --50Mhz
		sig_resetn <= '1' after 60 ns; 

		
end test1;
