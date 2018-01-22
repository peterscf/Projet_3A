----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 09:42:04 AM
-- Design Name: 
-- Module Name: Node - Behavioral
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

entity Node is
		generic(N_parents : integer := 10); 
port(    clk: in std_logic;
        reset_n : in std_logic;
  --Port entree
--            rdm_gene_in : in std_logic_vector (9 downto 0); fournis par le TRNG
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
end Node;

architecture Behavioral of Node is



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
	
	component TRNG_10bit
        port (clk,rst : in std_logic; Q_rand_vector : out std_logic_vector (9 downto 0));
    end component;
    
    component INV_behavorial 
        port (i : in std_logic; o : out std_logic);
    end component;
    
    signal rst : std_logic;
    signal Q_rand_vector : std_logic_vector (9 downto 0);

begin

    I1: INV_behavorial port map (reset_n,rst);
    
    R1: TRNG_10bit port map (clk,rst,Q_rand_vector);

    N1 : CORE generic map (N_parents) port map (clk,reset_n,Q_rand_vector,prog_link_in,prog,addr,data_in,Wen,full_in,prog_link_out,full_out,prob_out,data_out);

end Behavioral;
