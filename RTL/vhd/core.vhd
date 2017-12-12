------------------------------core.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------core.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity CORE is
	generic(N_parents : integer); 

    port(	clk: in std_logic;
			reset_n : in std_logic;
      --Port entree
				rdm_gene_in : std_logic_vector (9 downto 0);
				prog_link : std_logic_vector(N_parents downto 0);
			--entrée pour la MEM      			
				addr : in std_logic_vector(N_parents downto 0);
      			data_in : in std_logic_vector(9 downto 0);
      			Wen : in std_logic;
      			full_in : in std_logic;
      --Port de sortie
      			full_out : out std_logic;
				prob_out : out std_logic
		);
end CORE;

architecture A of CORE is
	--declarartion des component
	--memoire
	component Memory is 
		port(   clk: in std_logic;
            reset_n : in std_logic;
      --Port entree
      			addr : in std_logic_vector(4 dwnto 0);
      			data_in : in std_logic_vector(9 downto 0);
      			Wen : in std_logic;
      			full_in : in std_logic;
      --Port de sortie
      			data_out : in std_logic_vector(9 downto 0);
      			full_out : out std_logic);
	end component;

	--Gateway
	component GATEWAY is 
		generic(N_parents : integer); 
	    port(		reset_n : in std_logic;
			--Port entree
					prog_link : std_logic_vector(N_parents downto 0);
					addr_in : in std_logic_vector(N_parents downto 0);	
			--Port de sortie				
					addr_out : in std_logic_vector(4 downto 0));
	end component;
	

	--déclaration des signaux
signal sig_addr_MEM : std_logic_vector(4 downt 0);


begin


	G0 : GATEWAY port map (	reset_n, prog_link,	addr, sig_addr_MEM);
	
	MEM0: Memory port map (	clk,reset_n, sig_addr_MEM, data_in, Wen, full_in, sig_prob, full_out);

	
end A;
