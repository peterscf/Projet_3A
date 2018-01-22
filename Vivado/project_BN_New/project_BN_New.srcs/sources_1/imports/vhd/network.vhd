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
	port(			clk: in std_logic;
					reset_n : in std_logic;
	      --Port entree
--					rdm_gene_in : in std_logic_vector (9 downto 0); --uniquement pour debug
					prog_link_in : in std_logic_vector (4 downto 0); -- vecteur de commande du mux de la gateway
					prog : in std_logic; --fils de statut pour la programmation en cours de la GW
				--entrée pour la MEM      			
					--addr_1 : in std_logic_vector(N_parents downto 0);
					--addr_2 : in std_logic_vector(N_parents downto 0);
	      			data_in : in std_logic_vector(9 downto 0); -- entrée des proba pour programmer
	      			Wen : in std_logic; -- fils de status pour la programmation en cours de la mémoire 
	      --Port de sortie
					full_out : out std_logic; -- toute la chaine de noeud a été programmé memoire ou GW
					prob_out_1 : out std_logic; -- sortie de 1 du premier noeud
					--led_out : out std_logic; -- indicateur statut  du reset_n
					prob_out_2 : out std_logic); -- sortie du deuxieme noeud
end Network;

architecture A of Network is

	component Node is
		generic(N_parents : integer := 10); 
	    port(	clk: in std_logic;
				reset_n : in std_logic;
	      --Port entree
			--		rdm_gene_in : in std_logic_vector (9 downto 0);
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

signal sig_Full_N1_N2 : std_logic;
signal sig_Full_N2_N3 : std_logic;
signal sig_Full_N3_N4 : std_logic;
signal sig_Full_N4_N5 : std_logic;
signal sig_Full_N5_N6 : std_logic;
signal sig_Full_N6_N7 : std_logic;

signal sig_data_N1_N2 :std_logic_vector(9 downto 0);
signal sig_data_N2_N3 :std_logic_vector(9 downto 0);
signal sig_data_N3_N4 :std_logic_vector(9 downto 0);
signal sig_data_N4_N5 :std_logic_vector(9 downto 0);
signal sig_data_N5_N6 :std_logic_vector(9 downto 0);
signal sig_data_N6_N7 :std_logic_vector(9 downto 0);

signal sig_pl_N1_N2 :std_logic_vector(N_parents downto 0);
signal sig_pl_N2_N3 :std_logic_vector(N_parents downto 0);
signal sig_pl_N3_N4 :std_logic_vector(N_parents downto 0);
signal sig_pl_N4_N5 :std_logic_vector(N_parents downto 0);
signal sig_pl_N5_N6 :std_logic_vector(N_parents downto 0);
signal sig_pl_N6_N7 :std_logic_vector(N_parents downto 0);

signal sig_P_N1 : std_logic;
signal sig_P_N2 : std_logic;
signal sig_P_N3 : std_logic;
signal sig_P_N4 : std_logic;
signal sig_P_N5 : std_logic;
signal sig_P_N6 : std_logic;

signal sig_addr_N1 : std_logic_vector(N_parents downto 0);
signal sig_addr_N2 : std_logic_vector(N_parents downto 0);
signal sig_addr_N3 : std_logic_vector(N_parents downto 0);
signal sig_addr_N4 : std_logic_vector(N_parents downto 0);
signal sig_addr_N5 : std_logic_vector(N_parents downto 0);
signal sig_addr_N6 : std_logic_vector(N_parents downto 0);

signal addr_1 : std_logic_vector(N_parents downto 0):="00000";
signal addr_2 : std_logic_vector(N_parents downto 0):="00000";



begin
N1 : Node generic map (N_parents) port map (clk,reset_n,prog_link_in,prog,addr_1,data_in,Wen,sig_Full_N1_N2,sig_pl_N1_N2,full_out,sig_P_N1,sig_data_N1_N2);

N2 : Node generic map (N_parents) port map (clk,reset_n,sig_pl_N1_N2,prog,addr_2,sig_data_N1_N2,Wen,sig_Full_N2_N3,sig_pl_N2_N3,sig_Full_N1_N2, sig_P_N2,sig_data_N2_N3);

N3 : Node generic map (N_parents) port map (clk,reset_n,sig_pl_N2_N3,prog,sig_addr_N3,sig_data_N2_N3,Wen,sig_Full_N3_N4,sig_pl_N3_N4,sig_Full_N2_N3, sig_P_N3,sig_data_N3_N4);

N4 : Node generic map (N_parents) port map (clk,reset_n,sig_pl_N3_N4,prog,sig_addr_N4,sig_data_N3_N4,Wen,sig_Full_N4_N5,sig_pl_N4_N5,sig_Full_N3_N4, sig_P_N4,sig_data_N4_N5);

N5 : Node generic map (N_parents) port map (clk,reset_n,sig_pl_N4_N5,prog,sig_addr_N5,sig_data_N4_N5,Wen,sig_Full_N5_N6,sig_pl_N5_N6,sig_Full_N4_N5, sig_P_N5,sig_data_N5_N6);

N6 : Node generic map (N_parents) port map (clk,reset_n,sig_pl_N5_N6,prog,sig_addr_N6,sig_data_N5_N6,Wen,sig_Full_N6_N7,sig_pl_N6_N7,sig_Full_N5_N6, sig_P_N6,sig_data_N6_N7);

--parents N3
sig_addr_N3(0)<=sig_P_N1;
sig_addr_N3(1)<=sig_P_N2;
sig_addr_N3(N_parents downto 2)<="000";

--parents N4
sig_addr_N4(0)<=sig_P_N1;
sig_addr_N4(1)<=sig_P_N2;
sig_addr_N4(N_parents downto 2)<="000";

--parents N5
sig_addr_N5(0)<=sig_P_N3;
sig_addr_N5(1)<=sig_P_N4;
sig_addr_N5(N_parents downto 2)<="000";

--parents N6
sig_addr_N6(0)<=sig_P_N3;
sig_addr_N6(1)<=sig_P_N4;
sig_addr_N6(N_parents downto 2)<="000";

prob_out_2 <= sig_P_N6;
prob_out_1 <= sig_P_N5;

sig_Full_N6_N7 <='1';


end A;
