library ieee;  
use ieee.std_logic_1164.all; -- ici mettre la library

entity ring_loop is 
    Port ( clk,rst : in STD_LOGIC;
       Q_rand : out STD_LOGIC);
end ring_loop ;

architecture struct_ring_loop of ring_loop is


------ brochage Zedboard
--attribute LOC          	: string;
--attribute IOSTANDARD    : string;

---- set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CCD_PIXCLK;]  ## --> dans le fichier .sdc

--attribute IOSTANDARD of clk : signal is "LVCMOS33";  -- 100 MHz
--attribute LOC of clk : signal is "Y9";

--attribute LOC of rst  : signal is "P16"; --Bouton poussoir exterieur
--attribute IOSTANDARD of rst : signal is "LVCMOS33";


--attribute LOC of Q_rand  : signal is "Y11"; --JA1   -- Sortie analogique (non bufferisé) peut etre ?
--attribute IOSTANDARD of Q_rand : signal is "LVCMOS33";


-- Déclaration de composant

component clock_generator_behavorial
	port (clk : in std_logic; clk_div2,clk_delay : out std_logic);
end component;

component MUX_Behavorial 
	port (a,b,com : in std_logic; S : out std_logic);
end component;

component INV_behavorial 
	port (i : in std_logic; o : out std_logic);
end component;

component register_behavorial 
	port(clk, D, rst : in std_logic; Q    : out std_logic);
end component;

component Correcteur_XOR_behavorial -- ici mettre le nom d'une cellule registre
	port (clk,D,rst : in std_logic; Q : out std_logic);
end component;



signal mux1, mux2, mux3, mux4, mux5, inv1, inv2, inv3, inv4, inv5 : std_logic;
--signal q1, q2, q3, q4, x1, x2 :std_logic;
signal clk_div2, clk_delay : std_logic;
signal Q_temp :std_logic; -- version avec LFSR

begin
    g1: clock_generator_behavorial port map (clk,clk_div2,clk_delay);

	m1: MUX_Behavorial port map (inv1,inv5,clk_div2,mux1);
	m2: MUX_Behavorial port map (inv2,inv1,clk_div2,mux2);
	m3: MUX_Behavorial port map (inv3,inv2,clk_div2,mux3);
	m4: MUX_Behavorial port map (inv4,inv3,clk_div2,mux4);
	m5: MUX_Behavorial port map (inv5,inv4,clk_div2,mux5);
	i1: INV_behavorial port map (mux1,inv1);
	i2: INV_behavorial port map (mux2,inv2);
	i3: INV_behavorial port map (mux3,inv3);
	i4: INV_behavorial port map (mux4,inv4);
	i5: INV_behavorial port map (mux5,inv5);

	r1: register_behavorial port map (clk_delay,inv5,rst,Q_rand);
	
	
--	r1: register_behavorial port map (clk_delay,inv5,rst,Q_temp); -- version avec LFSR 
--    c1: Correcteur_XOR_behavorial port map (clk_delay,Q_temp,rst,Q_rand);
-- Ca fait des ring totalement corrélé, ne pas utiliser Sans avoir résolut ce problème !!

end struct_ring_loop;




