library IEEE ;
use IEEE.std_logic_1164.ALL ;
--use ieee.std_logic_signed.all;
use std.textio.all;
library lib_VHD;
use lib_VHD.all;


entity test_unitaire is 
	constant NP :  integer := 10;	
end test_unitaire;

architecture test1 of test_unitaire is
--Test fonctionel !!!
--//////////////////////////////////////////////////////////////////////////--
--déclaration des VIP
--VIP TX--
	--VIP qui permet de programmer le DUT (CORE ici)
	component VIP_prog is
		generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				prog: out  std_logic;
      			Wen : out std_logic;
      			full_in : in std_logic;
      			prog_link_out : out std_logic_vector(N_parents downto 0);
      			prob_out : out std_logic_vector (9 downto 0)
		);
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
					prog_link_in : in std_logic_vector(NP downto 0);
					prog : in std_logic;
				--entrée pour la MEM      			
					addr : in std_logic_vector(NP downto 0);
	      			data_in : in std_logic_vector(9 downto 0);
	      			Wen : in std_logic;
	      			full_in : in std_logic;
	      --Port de sortie
					prog_link_out : out std_logic_vector(NP downto 0);
	      			full_out : out std_logic;
					prob_out : out std_logic;
					data_out : out std_logic_vector(9 downto 0)

			);
	end component;

--//////////////////////////////////////////////////////////////////////////--
--Declaration des signaux
signal sig_prog : std_logic;
signal sig_Wen : std_logic;
signal sig_full_in: std_logic;
signal sig_prog_link_in : std_logic_vector (NP downto 0);
signal sig_data_in : std_logic_vector (9 downto 0);
signal sig_addr : std_logic_vector(NP downto 0);
signal sig_rdm_gen : std_logic_vector (9 downto 0);

signal sig_full_out: std_logic;
signal sig_prog_link_out : std_logic_vector (NP downto 0);
signal sig_data_out : std_logic_vector (9 downto 0);
signal sig_prob_out : std_logic;

signal sig_enable_prog : std_logic :='1';
signal sig_result : integer;
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
	generic map (N_parents => NP) 
    port map(	sig_clk,
				sig_reset_n,
				sig_enable_prog,
				sig_prog,
      			sig_Wen,
      			sig_full_out,
      			sig_prog_link_in,
      			sig_data_in);

VIP_N_RX : VIP_Node_RX
	generic map (N_parents => NP)
	port map(	sig_clk,
				sig_reset_n,
				sig_prog,
				sig_Wen,
				sig_prog_link_out,
				sig_data_out,
				sig_full_in);

VIP_N_TX : VIP_Node_TX
	generic map(N_parents => NP)
    port map(	sig_clk,
				sig_reset_n,
				sig_enable_prog,
				sig_addr);

VIP_R_G: VIP_Rdm_Gen
	port map(	sig_clk,
				sig_reset_n,
				sig_rdm_gen);

VIP_M : VIP_moy
	port map(	sig_clk,
				sig_reset_n,
				sig_prob_out,
				sig_result);
Node : CORE 
	generic map(N_parents => NP)

    port map (	sig_clk,
				sig_reset_n,
      --Port entree
			sig_rdm_gen,
			sig_prog_link_in,
			sig_prog,
			--entrée pour la MEM      			
			sig_addr,
      		sig_data_in,
      		sig_Wen,
      		sig_full_in,
			--Port de sortie
			sig_prog_link_out,
      		sig_full_out,
			sig_prob_out,
			sig_data_out);

end test1;
