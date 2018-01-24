library IEEE ;
use IEEE.std_logic_1164.ALL ;
--use ieee.std_logic_signed.all;
use std.textio.all;
library lib_VHD;
use lib_VHD.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity test_network is 
	constant NP :  integer := 10;	
end test_network;

architecture alarme of test_network is
--Test fonctionel !!!
--//////////////////////////////////////////////////////////////////////////--
--déclaration des VIP
--VIP TX--
	--VIP qui permet de programmer le DUT (CORE ici)
	component VIP_prog is
	generic(N_parents : integer := 10; 
			mem_file : string (21 downto 1); 
				gw_file : string (20 downto 1) );
	port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				prog: out  std_logic;
      			Wen : out std_logic;
      			full_in : in std_logic;
      			prog_link_out : out std_logic_vector(N_parents downto 0);
      			prob_out : out std_logic_vector (9 downto 0);
				end_prog :out std_logic		);
	end component;

	--VIP NODE_TX permet de simuler les parents du noeud tester
	component VIP_Node_TX is
	
	generic(N_parents : integer := 10);
    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				addr_out : out std_logic_vector(N_parents downto 0));

	end component;

	--VIP Random Generator permet de simuler le random générator qui sera intéger sur FPGA
	component VIP_Rdm_Gen is
		generic(rdm_file : string (21 downto 1) ); 
		port(	clk: in std_logic;
				reset_n : in std_logic;
				rdm_gen : out std_logic_vector(9 downto 0));
	end component;
--/////////////////////////////////////////////////////////////////////////////////////////--
--VIP RX--
	--VIP Node RX simule la réponse lors de la programmation du noeud suivant.
	component VIP_Node_RX is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				prog : in std_logic;
				Wen : in std_logic;
				prog_link_in : in std_logic_vector(N_parents downto 0);
				data_in : in std_logic_vector(9 downto 0);
				full_out : out std_logic);
	end component;

	--VIP moyenne pour calculer les résultats en sortie du noeud
	component VIP_moy is
	    port(	clk: in std_logic;
			reset_n : in std_logic;
			end_prog : in std_logic;
			prob_in : in std_logic;
			prob_out : out real		
		);
end component; 	

--//////////////////////////////////////////////////////////////////////////--
	--déclaration du DUT
	component Network
	generic(N_parents : integer := 10); 
	port(			clk: in std_logic;
					reset_n : in std_logic;
	      --Port entree
					rdm_gene_in_N1 : in std_logic_vector (9 downto 0); --uniquement pour debug
					rdm_gene_in_N2 : in std_logic_vector (9 downto 0); --uniquement pour debug
					rdm_gene_in_N3 : in std_logic_vector (9 downto 0); --uniquement pour debug
					rdm_gene_in_N4 : in std_logic_vector (9 downto 0); --uniquement pour debug
					rdm_gene_in_N5 : in std_logic_vector (9 downto 0); --uniquement pour debug
					rdm_gene_in_N6 : in std_logic_vector (9 downto 0); --uniquement pour debug

					prog_link_in : in std_logic_vector(N_parents downto 0);
					prog : in std_logic;
				--entrée pour la MEM      			
					addr_1 : in std_logic_vector(N_parents downto 0);
					addr_2 : in std_logic_vector(N_parents downto 0);
	      			data_in : in std_logic_vector(9 downto 0);
	      			Wen : in std_logic;
	      --Port de sortie
					full_out : out std_logic;
					prob_out_1 : out std_logic;
					prob_out_2 : out std_logic);

	end component;

--//////////////////////////////////////////////////////////////////////////--
--Declaration des signaux
signal sig_prog : std_logic;
signal sig_Wen : std_logic;
signal sig_full_in: std_logic;
signal sig_prog_link_in : std_logic_vector (NP downto 0);
signal sig_data_in : std_logic_vector (9 downto 0);
signal sig_addr_1 : std_logic_vector(NP downto 0);
signal sig_addr_2 : std_logic_vector(NP downto 0);
signal sig_rdm_gen_1 : std_logic_vector (9 downto 0);
signal sig_rdm_gen_2 : std_logic_vector (9 downto 0);
signal sig_rdm_gen_3 : std_logic_vector (9 downto 0);
signal sig_rdm_gen_4 : std_logic_vector (9 downto 0);
signal sig_rdm_gen_5 : std_logic_vector (9 downto 0);
signal sig_rdm_gen_6 : std_logic_vector (9 downto 0);

signal sig_full_out: std_logic;
signal sig_prog_link_out : std_logic_vector (NP downto 0);
signal sig_data_out : std_logic_vector (9 downto 0);
signal sig_prob_out_1 : std_logic;
signal sig_prob_out_2 : std_logic;

signal sig_end_prog : std_logic;


signal sig_enable_prog : std_logic :='1';
signal sig_result_1 :real;
signal sig_result_2 : real;

signal sig_clk : std_logic :='0';
signal sig_reset_n : std_logic :='0';

begin
--//////////////////////////////////////////////////////////////////////////--
--connect

	sig_clk <= not(sig_clk) after  10 ns; --50Mhz
	sig_reset_n <= '1' after 60 ns;
	sig_enable_prog <='1' after 80 ns, '0' after 90 ns;
--	sig_enable_prog <='0' after 180 ns;

VIP_PR : VIP_prog 	
	generic map (NP,
				"./bench/Alarm/MEM.img",
				"./bench/Alarm/GW.img") 
    port map(	sig_clk,
				sig_reset_n,
				sig_enable_prog,
				sig_prog,
      			sig_Wen,
      			sig_full_out,
      			sig_prog_link_in,
      			sig_data_in,
				sig_end_prog);

VIP_N_RX : VIP_Node_RX
	generic map (N_parents => NP)
	port map(	sig_clk,
				sig_reset_n,
				sig_prog,
				sig_Wen,
				sig_prog_link_out,
				sig_data_out,
				sig_full_in);

--VIP_N_TX_1 : VIP_Node_TX
--	generic map(N_parents => NP)
--    port map(	sig_clk,
--				sig_reset_n,
--				sig_enable_prog,
--				sig_addr_1);
--	
--VIP_N_TX_2 : VIP_Node_TX
--	generic map(N_parents => NP)
--    port map(	sig_clk,
--				sig_reset_n,
--				sig_enable_prog,
--				sig_addr_2);
--

VIP_R_G1: VIP_Rdm_Gen
	generic map("./bench/rdm/rdm_1.txt")
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen_1);
VIP_R_G2: VIP_Rdm_Gen
	generic map("./bench/rdm/rdm_2.txt")
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen_2);
VIP_R_G3: VIP_Rdm_Gen
	generic map( "./bench/rdm/rdm_3.txt")
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen_3);
VIP_R_G4: VIP_Rdm_Gen
	generic map( "./bench/rdm/rdm_4.txt")
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen_4);
VIP_R_G5: VIP_Rdm_Gen
	generic map( "./bench/rdm/rdm_5.txt")
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen_5);
VIP_R_G6: VIP_Rdm_Gen
	generic map("./bench/rdm/rdm_6.txt")
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen_6);


VIP_M_1 : VIP_moy
	port map(	sig_clk,
				sig_reset_n,
				sig_end_prog,
				sig_prob_out_1,
				sig_result_1);

VIP_M_2 : VIP_moy
	port map(	sig_clk,
				sig_reset_n,
				sig_end_prog,
				sig_prob_out_2,
				sig_result_2);

Alarme : NETWORK
	generic map(N_parents => NP)

    port map (	sig_clk,
				sig_reset_n,
      --Port entree
			sig_rdm_gen_1,
			sig_rdm_gen_2,
			sig_rdm_gen_3,
			sig_rdm_gen_4,
			sig_rdm_gen_5,
			sig_rdm_gen_6,
			sig_prog_link_in,
			sig_prog,
			--entrée pour la MEM      			
			"00000000000", --sig_addr_1,
			"00000000000", --sig_addr_2,
      		sig_data_in,
      		sig_Wen,
			--Port de sortie
      		sig_full_out,
			sig_prob_out_1,
			sig_prob_out_2);

end alarme;
