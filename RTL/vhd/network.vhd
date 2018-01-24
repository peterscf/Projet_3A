------------------------------Network.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------Network.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity Network is
	generic(N_parents : integer := 10); 
	port(	clk: in std_logic;
			reset_n : in std_logic;
			--Port entree
			rdm_gene_in_N1 : in std_logic_vector (9 downto 0); 	--uniquement pour debug
			rdm_gene_in_N2 : in std_logic_vector (9 downto 0); 	--uniquement pour debug
			rdm_gene_in_N3 : in std_logic_vector (9 downto 0); 	--uniquement pour debug
			rdm_gene_in_N4 : in std_logic_vector (9 downto 0); 	--uniquement pour debug
			rdm_gene_in_N5 : in std_logic_vector (9 downto 0); 	--uniquement pour debug
			rdm_gene_in_N6 : in std_logic_vector (9 downto 0); 	--uniquement pour debug

			prog_link_in : in std_logic_vector(N_parents downto 0);-- data de programmation de la GW
			prog : in std_logic;								-- status prog GW
			--entrée pour la MEM      			
			addr_1 : in std_logic_vector(N_parents downto 0);	--entrée des parents du noeud 1
			addr_2 : in std_logic_vector(N_parents downto 0);	--entrée des parents du noeud 2
			data_in : in std_logic_vector(9 downto 0);			--data de programmation de la mémoire
			Wen : in std_logic;									-- status prog Memoire
			--Port de sortie
			full_out : out std_logic;							-- full des que la prog est finit pour le réseau
			prob_out_1 : out std_logic;							-- proba de sortie N5
			prob_out_2 : out std_logic);						-- proba de sortie N6
end Network;

architecture A of Network is
--#######################################################################################################################
	--declarartion des component
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
					data_out : out std_logic_vector(9 downto 0));
	end component;
--#######################################################################################################################
--déclaration des signaux
--Full entre noeud
signal sig_Full_N1_N2 : std_logic;
signal sig_Full_N2_N3 : std_logic;
signal sig_Full_N3_N4 : std_logic;
signal sig_Full_N4_N5 : std_logic;
signal sig_Full_N5_N6 : std_logic;
signal sig_Full_N6_N7 : std_logic;

--data prog entre noeuds
signal sig_data_N1_N2 :std_logic_vector(9 downto 0);
signal sig_data_N2_N3 :std_logic_vector(9 downto 0);
signal sig_data_N3_N4 :std_logic_vector(9 downto 0);
signal sig_data_N4_N5 :std_logic_vector(9 downto 0);
signal sig_data_N5_N6 :std_logic_vector(9 downto 0);
signal sig_data_N6_N7 :std_logic_vector(9 downto 0);

--data prog_link entre noeuds
signal sig_pl_N1_N2 :std_logic_vector(N_parents downto 0);
signal sig_pl_N2_N3 :std_logic_vector(N_parents downto 0);
signal sig_pl_N3_N4 :std_logic_vector(N_parents downto 0);
signal sig_pl_N4_N5 :std_logic_vector(N_parents downto 0);
signal sig_pl_N5_N6 :std_logic_vector(N_parents downto 0);
signal sig_pl_N6_N7 :std_logic_vector(N_parents downto 0);

--proba sortie de chaque noeud
signal sig_P_N1 : std_logic;
signal sig_P_N2 : std_logic;
signal sig_P_N3 : std_logic;
signal sig_P_N4 : std_logic;
signal sig_P_N5 : std_logic;
signal sig_P_N6 : std_logic;

--addresse entrée de chaque noeud
signal sig_addr_N1 : std_logic_vector(N_parents downto 0);
signal sig_addr_N2 : std_logic_vector(N_parents downto 0);
signal sig_addr_N3 : std_logic_vector(N_parents downto 0);
signal sig_addr_N4 : std_logic_vector(N_parents downto 0);
signal sig_addr_N5 : std_logic_vector(N_parents downto 0);
signal sig_addr_N6 : std_logic_vector(N_parents downto 0);



begin
N1 : CORE generic map (N_parents) port map (clk,reset_n,rdm_gene_in_N1,prog_link_in,prog,addr_1,data_in,Wen,sig_Full_N1_N2,sig_pl_N1_N2,full_out,sig_P_N1,sig_data_N1_N2);

N2 : CORE generic map (N_parents) port map (clk,reset_n,rdm_gene_in_N2,sig_pl_N1_N2,prog,addr_2,sig_data_N1_N2,Wen,sig_Full_N2_N3,sig_pl_N2_N3,sig_Full_N1_N2, sig_P_N2,sig_data_N2_N3);

N3 : CORE generic map (N_parents) port map (clk,reset_n,rdm_gene_in_N3,sig_pl_N2_N3,prog,sig_addr_N3,sig_data_N2_N3,Wen,sig_Full_N3_N4,sig_pl_N3_N4,sig_Full_N2_N3, sig_P_N3,sig_data_N3_N4);

N4 : CORE generic map (N_parents) port map (clk,reset_n,rdm_gene_in_N4,sig_pl_N3_N4,prog,sig_addr_N4,sig_data_N3_N4,Wen,sig_Full_N4_N5,sig_pl_N4_N5,sig_Full_N3_N4, sig_P_N4,sig_data_N4_N5);

N5 : CORE generic map (N_parents) port map (clk,reset_n,rdm_gene_in_N5,sig_pl_N4_N5,prog,sig_addr_N5,sig_data_N4_N5,Wen,sig_Full_N5_N6,sig_pl_N5_N6,sig_Full_N4_N5, sig_P_N5,sig_data_N5_N6);

N6 : CORE generic map (N_parents) port map (clk,reset_n,rdm_gene_in_N6,sig_pl_N5_N6,prog,sig_addr_N6,sig_data_N5_N6,Wen,sig_Full_N6_N7,sig_pl_N6_N7,sig_Full_N5_N6, sig_P_N6,sig_data_N6_N7);

--parents N3
sig_addr_N3(0)<=sig_P_N1;
sig_addr_N3(1)<=sig_P_N2;
sig_addr_N3(N_parents downto 2)<="000000000";

--parents N4
sig_addr_N4(0)<=sig_P_N1;
sig_addr_N4(1)<=sig_P_N2;
sig_addr_N4(N_parents downto 2)<="000000000";

--parents N5
sig_addr_N5(0)<=sig_P_N3;
sig_addr_N5(1)<=sig_P_N4;
sig_addr_N5(N_parents downto 2)<="000000000";

--parents N6
sig_addr_N6(0)<=sig_P_N3;
sig_addr_N6(1)<=sig_P_N4;
sig_addr_N6(N_parents downto 2)<="000000000";

prob_out_2 <= sig_P_N6; --sig_P_N6;
prob_out_1 <= sig_P_N5; --sig_P_N5;

--signal full 1 pour N6 mode prog
sig_Full_N6_N7 <='1';
end A;
