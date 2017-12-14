------------------------------gateway.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------gateway.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity GATEWAY is
	generic(N_parents : integer:=10); 

    port(		clk: in std_logic;
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
end GATEWAY;

architecture A of GATEWAY is
	type STATE is (Init,Prog,Idle,Bypass);
	signal current_state : STATE;
	signal next_state : STATE;
	
	signal index : unsigned (2 downto 0) ;
	signal index_temp : unsigned (2 downto 0) ;

--	signal prog_link_reg_1 : std_logic_vector(N_parents downto 0);
--	signal prog_link_reg_2 : std_logic_vector(N_parents downto 0);
--	signal prog_link_reg_3 : std_logic_vector(N_parents downto 0);
--	signal prog_link_reg_4 : std_logic_vector(N_parents downto 0);
--	signal prog_link_reg_5 : std_logic_vector(N_parents downto 0);
type REG is array (0 to 4) of std_logic_vector(N_parents downto 0);
signal prog_link_reg : REG ;
begin

P_STATE: process(clk,reset_n) begin
    
    if (clk'event and clk = '1') then
		if reset_n = '1' then
			current_state <= Init; 
			index<="000";
		else 
			index <= index_temp;
			current_state<=next_state;
		end if;
	end if;
	end process P_state ;

P_Next_State_output : process (Prog_in, current_state, index, full_in)

begin

	full_out <= '0';	

	case current_state is								
						  	when Init => 
						  		if Prog_in ='1' and full_in ='1' then
									next_state <= Prog; 
								elsif Prog_in ='1' and full_in ='0' then
									next_state <= Bypass;
								else
									next_state <= Init;
								end if;
								
							when Bypass =>
								prog_link_out <= prog_link_in;
						  	if full_in = '1' then
						  		next_state <= Prog;
						  	else
						  		next_state <= Bypass;
						  	end if;
						  
							when Prog => 
									--remplissage des registre de configuration
									prog_link_reg(to_integer(index)) <= prog_link_in;
									if index = "101"  then
										full_out <= '1';
										next_state <= Idle; 
									else
										next_state <= Prog;
									end if;
									index_temp <= index + 1;
									
							when Idle => 
								--Fonctionement gateway std
							  	addr_out(0) <= addr_in(to_integer(unsigned(prog_link_reg(0))));
								addr_out(1) <= addr_in(to_integer(unsigned(prog_link_reg(1))));
								addr_out(2) <= addr_in(to_integer(unsigned(prog_link_reg(2))));
								addr_out(3) <= addr_in(to_integer(unsigned(prog_link_reg(3))));
								addr_out(4) <= addr_in(to_integer(unsigned(prog_link_reg(4))));
								if Prog_in ='1'  then
									index_temp <= "000";
									next_state <= Prog;
								else
									next_state <= Idle;
								end if;
				end case; 
	end process P_Next_State_output;
end A;
