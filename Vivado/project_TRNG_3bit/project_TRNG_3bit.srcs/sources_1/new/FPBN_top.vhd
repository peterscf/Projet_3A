----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 02:24:05 PM
-- Design Name: 
-- Module Name: FPBN_top - Behavioral
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

entity FPBN_top is
	    port(	clk: in std_logic;
            reset_n : in std_logic;
            enable_prog : in std_logic;
            --Port entree
            -- prog_link_in : in std_logic_vector (4 downto 0); -- vecteur de commande du mux de la gateway
            -- prog : in std_logic; --fils de statut pour la programmation en cours de la GW
            --entrée pour la MEM                  
            --addr_1 : in std_logic_vector(N_parents downto 0);
            --addr_2 : in std_logic_vector(N_parents downto 0);
            -- data_in : in std_logic_vector(9 downto 0); -- entrée des proba pour programmer
            --Wen : in std_logic; -- fils de status pour la programmation en cours de la mémoire 
            --Port de sortie
            --full_out : out std_logic; -- toute la chaine de noeud a été programmé memoire ou GW
            --noeud_out_1 : out std_logic_vector (9 downto 0); -- sortie de 1 du premier noeud
            noeud_out_1_0 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_1 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_2 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_3 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_4 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_5 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_6 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_7 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_8 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_1_9 : out std_logic; -- sortie de 1 du premier noeud
                                    
            led_out : out std_logic; -- indicateur statut  du reset_n
            led1: out std_logic;
            led2: out std_logic;
            --noeud_out_2 : out std_logic_vector (9 downto 0)); -- sortie du deuxieme noeud
            noeud_out_2_0 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_1 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_2 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_3 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_4 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_5 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_6 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_7 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_8 : out std_logic; -- sortie de 1 du premier noeud
            noeud_out_2_9 : out std_logic); -- sortie de 1 du premier noeud
            
   --         led_noeud_1 : out std_logic; -- led resultat en cours de calcul commenté car invisible
   --         led_noeud_2 :out std_logic); 
end FPBN_top;

architecture Behavioral of FPBN_top is

signal noeud_out_1 :std_logic_vector (9 downto 0);
signal noeud_out_2 :std_logic_vector (9 downto 0);

--- brochage Zedboard
attribute LOC          	: string;
attribute IOSTANDARD    : string;

-- set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CCD_PIXCLK;]  ## --> dans le fichier .sdc

attribute LOC of clk : signal is "Y9";
attribute IOSTANDARD of clk : signal is "LVCMOS33";  -- 100 MHz

attribute LOC of reset_n  : signal is "F22"; --Bouton à cran exterieur
attribute IOSTANDARD of reset_n : signal is "LVCMOS33";

attribute LOC of led_out  : signal is "U14";   -- LEDG
attribute IOSTANDARD of led_out : signal is "LVCMOS33";

attribute LOC of led1  : signal is "T21";   -- LEDG
attribute IOSTANDARD of led1 : signal is "LVCMOS33";

attribute LOC of led2  : signal is "T22";   -- LEDG
attribute IOSTANDARD of led2 : signal is "LVCMOS33";

attribute LOC of enable_prog  : signal is "P16";   -- LEDG
attribute IOSTANDARD of enable_prog : signal is "LVCMOS33";

--"Y11,AA11,Y19,AA9,AB11,AB10,AB9,AA8,AB6,AB7"

attribute LOC of noeud_out_1_0  : signal is "Y11";   
attribute IOSTANDARD of noeud_out_1_0 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_1  : signal is "AA11";   
attribute IOSTANDARD of noeud_out_1_1 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_2  : signal is "Y19";   
attribute IOSTANDARD of noeud_out_1_2 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_3  : signal is "AA9";   
attribute IOSTANDARD of noeud_out_1_3 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_4  : signal is "AB11";   
attribute IOSTANDARD of noeud_out_1_4 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_5  : signal is "AB10";   
attribute IOSTANDARD of noeud_out_1_5 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_6  : signal is "AB9";   
attribute IOSTANDARD of noeud_out_1_6 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_7  : signal is "AA8";   
attribute IOSTANDARD of noeud_out_1_7 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_8  : signal is "W12";   
attribute IOSTANDARD of noeud_out_1_8 : signal is "LVCMOS33";
attribute LOC of noeud_out_1_9  : signal is "W11";   
attribute IOSTANDARD of noeud_out_1_9 : signal is "LVCMOS33";

--"W12,W11,V10,W8,V12,W10,V9,V8,W7,V7"

attribute LOC of noeud_out_2_0  : signal is "AB6";   
attribute IOSTANDARD of noeud_out_2_0 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_1  : signal is "AB7";   
attribute IOSTANDARD of noeud_out_2_1 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_2  : signal is "V10";   
attribute IOSTANDARD of noeud_out_2_2 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_3  : signal is "W8";   
attribute IOSTANDARD of noeud_out_2_3 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_4  : signal is "V12";   
attribute IOSTANDARD of noeud_out_2_4 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_5  : signal is "W10";   
attribute IOSTANDARD of noeud_out_2_5 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_6  : signal is "V9";   
attribute IOSTANDARD of noeud_out_2_6 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_7  : signal is "V8";   
attribute IOSTANDARD of noeud_out_2_7 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_8  : signal is "W7";   
attribute IOSTANDARD of noeud_out_2_8 : signal is "LVCMOS33";
attribute LOC of noeud_out_2_9  : signal is "V7";   
attribute IOSTANDARD of noeud_out_2_9 : signal is "LVCMOS33";


--Cette écriture n'est pas autorisé par Vivado il faut mettre le LOC dans le fichier de contrainte xdc
--attribute LOC of noeud_out_1<0> : signal is "Y11";   -- LEDG
--attribute LOC of noeud_out_1<1> : signal is "AA11";   -- LEDG -- <0> fonctionne pas
--attribute LOC of noeud_out_1<2> : signal is "Y19";   -- LEDG
--attribute IOSTANDARD of noeud_out_1 : signal is "LVCMOS33";

--attribute LOC of noeud_out_2  : signal is "W12,W11,V10,W8,V12,W10,V9,V8,W7,V7";   -- LEDG
--attribute IOSTANDARD of noeud_out_2 : signal is "LVCMOS33";



--attribute LOC of SIGNAL  : signal is "T21"; 
--attribute IOSTANDARD of SIGNAL : signal is "LVCMOS33";



	component network is
		generic(N_parents : integer := 10); 
	    port(	clk: in std_logic;
					reset_n : in std_logic;
                    --Port entree
                    --rdm_gene_in : in std_logic_vector (9 downto 0); --uniquement pour debug
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
                   -- led_out : out std_logic; -- indicateur statut  du reset_n
                    prob_out_2 : out std_logic); -- sortie du deuxieme noeud
	end component;
	
	
component VIP_moy is
        port(    clk: in std_logic;
                reset_n : in std_logic;
                prob_in : in std_logic;
                start_calcule : out std_logic; -- une led a ramener au top
                prob_out : out std_logic_vector (9 downto 0)        
            );
    end component;
    
component prog is
        generic(N_parents : integer := 10); 
    
        port(        clk: in std_logic;
                    reset_n : in std_logic;
                    enable_prog : in std_logic;
                    prog: out  std_logic;
                      Wen : out std_logic;
                      full_in : in std_logic;
                      prog_link_out : out std_logic_vector(N_parents downto 0);
                      prob_out : out std_logic_vector (9 downto 0)
            );
    end component;
    

signal prob_out_1,prob_out_2 :std_logic;
signal sig_prog,sig_Wen,sig_full :std_logic;
signal sig_prog_link :std_logic_vector(4 downto 0);
signal sig_prob :std_logic_vector (9 downto 0);

begin

noeud_out_1_0<=noeud_out_1(0);
noeud_out_1_1<=noeud_out_1(1);
noeud_out_1_2<=noeud_out_1(2);
noeud_out_1_3<=noeud_out_1(3);
noeud_out_1_4<=noeud_out_1(4);
noeud_out_1_5<=noeud_out_1(5);
noeud_out_1_6<=noeud_out_1(6);
noeud_out_1_7<=noeud_out_1(7);
noeud_out_1_8<=noeud_out_1(8);
noeud_out_1_9<=noeud_out_1(9);


noeud_out_2_0<=noeud_out_2(0);
noeud_out_2_1<=noeud_out_2(1);
noeud_out_2_2<=noeud_out_2(2);
noeud_out_2_3<=noeud_out_2(3);
noeud_out_2_4<=noeud_out_2(4);
noeud_out_2_5<=noeud_out_2(5);
noeud_out_2_6<=noeud_out_2(6);
noeud_out_2_7<=noeud_out_2(7);
noeud_out_2_8<=noeud_out_2(8);
noeud_out_2_9<=noeud_out_2(9);


led_out <= reset_n;

	netW: network generic map (4) port map (clk,reset_n,sig_prog_link,sig_prog,sig_prob,sig_Wen,sig_full,prob_out_1,prob_out_2);
    vip_moy1: VIP_moy port map (clk,reset_n,prob_out_1,led1,noeud_out_1);
    vip_moy2: VIP_moy port map (clk,reset_n,prob_out_2,led2,noeud_out_2);
    programmeur: prog generic map (4) port map (clk,reset_n,enable_prog,sig_prog,sig_Wen,sig_full,sig_prog_link,sig_prob);

end Behavioral;
