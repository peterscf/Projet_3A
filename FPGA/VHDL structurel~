library ieee;  
use ieee.std_logic_1164.all; -- ici mettre la library

entity MUX_analogique is port(
	a,b in std_logic;
	com in std_logic;
	o out std_logic;
end MUX_analogique;

architecture struct_MUX of MUX_analogique is

component porte_transfert -- ici mettre le nom d'une cellule porte de transfert
	port (a,c : in std_logic; o : out std_logic);
end component;

component inverseur -- ici mettre le nom d'une cellule porte de transfert
	port (a : in std_logic; o : out std_logic);
end component;

signal com_inv : std_logic;

begin
	p1: porte_transfert port map (a,com,o);
	p2: porte_transfert port map (b,com_inv,o);
	i1: inverseur port map (com,com_inv);
end struct_MUX;




------------------------------------------------------------------------------------------
--------------------------------- Code Exemple -------------------------------------------
------------------------------------------------------------------------------------------
library ieee;  
use ieee.std_logic_1164.all;


entity eqcomp4 is port(
	a,b 	in std_logic_vector (3 downto 0);
	equals	out std_logic);
end eqcomp4;

use work.gatespkg.all;

architecture struct of epcomp4 is
signal x : std_logic_vector(0 to 3 )
begin
	u0: xnor2 port map (a(0),b(0),x(0));
	
	u4: and4 portmap (x(0),x(1),x(2),x(4),equals);
end struct;



entity MAJORITY is port(
	A_IN, B_IN, C_IN: in BIT;
	Z_OUT: out BIT);
end MAJORITY;


architecture struct of MAJORITY is
--Declare logic operators
component AND2_OP 
port (A, B : in BIT; z : out BIT);
end component;

component OR3_OP 
port (A, B, C : in BIT; z : out BIT);
end component;

--Declare signals to interconnect logic operators
signal INT1, INT2, INT3 : BIT;

begin
	A1:  AND2_OP port map (A_IN,B_IN,INT1);
	A2:  AND2_OP port map (A_IN,C_IN,INT2);
	A3:  AND2_OP port map (B_IN,C_IN,INT3);
	A4:  OR3_OP port map (INT1,INT2,INT3,Z_OUT);
end struct;




entity MAJORITY_2x3 is port(
A1,B1, C1    : in BIT;
A2, B2, C2   : in Bit;
Z_OUT        : out BIT);
endMAJORITY_2x3;

architecture struct of MAJORITY_2x3 is

component AND2_OP
port (A, B : in BIT; z : out BIT);
end component;

component MAJORITY
port (A_IN,B_IN,C_IN : in BIT Z_OUT : out BIT);
end component;

signal INT1, INT2: BIT;

begin
M1:  MAJORITY port map (A1,B1,C1,INT1);
M2:  MAJORITY port map (A2,B2,C2,INT2);
A1:  AND2_OP port map (INT1,INT2,Z_OUT);
end struct;


