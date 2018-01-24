------------------------------core.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------core.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity CORE is
	generic(N_parents : integer := 10); 

    port(	clk: in std_logic;
		reset_n : in std_logic;
		--Port entree
		rdm_gene_in : in std_logic_vector (9 downto 0); 	--fil random pour debug et oui le TRNG ne peut pas se simuler
		prog_link_in : in std_logic_vector(N_parents downto 0); -- data de programmation de la GW
		prog : in std_logic;					-- status prog GW
		--entrée pour la MEM      			
		addr : in std_logic_vector(N_parents downto 0);		--entrée des parents du noeud
		data_in : in std_logic_vector(9 downto 0);		--data de programmation de la mémoire
		Wen : in std_logic;					-- status prog Memoire
		full_in : in std_logic;					-- full du noeud suivant pour la prog
		--Port de sortie
		prog_link_out : out std_logic_vector(N_parents downto 0);--data de programmation de la GW en sortie mode bypass
		full_out : out std_logic;				-- full des que la prog est finit pour ce noeud
		prob_out : out std_logic;				-- proba de sortie (1 ou 0)
		data_out : out std_logic_vector(9 downto 0)		--data de programmation de la mémoire en sortie mode bypass

		);
end CORE;

architecture A of CORE is
--#######################################################################################################################
	--declarartion des component

	--memoire
	component Memory is 
		port(   clk: in std_logic;
			reset_n : in std_logic;
			--Port entree
			addr : in std_logic_vector(4 downto 0);
			data_in : in std_logic_vector(9 downto 0);
			Wen : in std_logic;
			full_in : in std_logic;
			--Port de sortie
			data_out : out std_logic_vector(9 downto 0);
			full_out : out std_logic);
	end component;

	--Gateway
	component GATEWAY is 
		generic(N_parents : integer); 
	    port(	clk: in std_logic;
			reset_n : in std_logic;
			--Port entree
			prog_in: in std_logic;
			prog_link_in : in std_logic_vector(N_parents downto 0);
			addr_in : in std_logic_vector(N_parents downto 0);
			full_in : in std_logic;
			--Port de sortie				
			addr_out : out std_logic_vector(4 downto 0);
			full_out : out std_logic;
			prog_link_out : out std_logic_vector(N_parents downto 0));

	end component;
	
--#######################################################################################################################
--déclaration des signaux
signal sig_addr_MEM : std_logic_vector(4 downto 0);
signal sig_prob_mem : std_logic_vector(9 downto 0);
signal sig_prob : std_logic_vector(9 downto 0);
signal sig_full_in_G : std_logic;
signal sig_full_in_M: std_logic;
signal sig_full_out_G : std_logic;
signal sig_full_out_M : std_logic;

begin

--#######################################################################################################################
--instance des component
	G0 : GATEWAY generic map (N_parents => N_parents)
	port map (clk, reset_n, prog, prog_link_in,addr, sig_full_in_G, sig_addr_MEM, sig_full_out_G, prog_link_out);
	
	MEM0: Memory port map (	clk,reset_n, sig_addr_MEM, data_in, Wen, sig_full_in_M, sig_prob_mem, sig_full_out_M);
--#######################################################################################################################

--comparateur 
	compare :process(sig_prob,rdm_gene_in)
	begin
		if unsigned(rdm_gene_in) < unsigned(sig_prob) then 
			prob_out <=	'1';
		else 
			prob_out <= '0';
		end if;
	end process;

--multiplexage de la sortie full_out voir cablage dans rapport
	MUX:process(prog, sig_full_out_G, sig_full_out_M) 
	begin
		if prog = '1' then 
			full_out <= sig_full_out_G;
		else 
			full_out <= sig_full_out_M;
		end if;
	end process;

--demultiplpexage full_in voir cablage dans rapport
	DEMUX: process(Wen, full_in)
	begin
		if Wen ='1' then
			sig_full_in_M <= full_in;
		else
			sig_full_in_G <= full_in;
		end if;
	end process;

--redirection de la sortie de la mémoire en fonction du mode prog ou idle
	DEMUX_Data_out:process(Wen, sig_prob_mem)
	begin
		if Wen = '1' then 
			data_out <= sig_prob_mem;
		else 
			sig_prob <= sig_prob_mem;
		end if;
	end process;

end A;
