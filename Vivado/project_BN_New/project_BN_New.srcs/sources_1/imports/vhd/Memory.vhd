------------------------------Memory.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------Memory.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity Memory is
    port(   clk: in std_logic;
            reset_n : in std_logic;
      --Port entree
      			addr : in std_logic_vector(4 downto 0);
      			data_in : in std_logic_vector(9 downto 0);
      			Wen : in std_logic;
      			full_in : in std_logic;
      --Port de sortie
      			data_out : out std_logic_vector(9 downto 0);
      			full_out : out std_logic		   					
				);
end Memory;

architecture A of Memory is
type STATE is (Init,Prog,Idle,Bypass, wait_idle);
signal current_state : STATE;
signal next_state : STATE;

signal index : unsigned (4 downto 0) ;
signal index_temp : unsigned (4 downto 0) ;

--tableau MEM
type MEM is array (0 to 31) of std_logic_vector(9 downto 0);
signal Prob: MEM;

begin

P_STATE: process(clk) begin
    
    if (clk'event and clk = '1') then
		if reset_n = '0' then
			current_state <= Init; 
			index<="00000";
		else 
			index <= index_temp;
			current_state<=next_state;
		end if;
	end if;
	end process P_state ;


P_Next_State_output : process (Wen, current_state, index, full_in, data_in, addr,Prob)

begin
	   
	      		--data_out <= "0000000000";
      			full_out <= '0';	

	case current_state is								
						  	when Init => 
								index_temp <= "00000";
						  		if Wen ='1' and full_in ='1' then
									next_state <= Prog; 
								elsif Wen ='1' and full_in ='0' then
									next_state <= Bypass;
								else
									next_state <= Init;
								end if;
								
							when Bypass =>
								data_out <= data_in;
						  	if full_in = '1' then
						  		next_state <= Prog;
						  	else
						  		next_state <= Bypass;
						  	end if;
						  	
							when Prog => 
                                  --remplissage de la MEM
                                      Prob(to_integer(index)) <= data_in;
                                      if index = "11111"  then
                                          full_out <= '1';
                                          next_state <= wait_idle; 
                                      else
                                          next_state <= Prog;
                                      end if;
                                      index_temp <= index + "0001";
                              
                              when wait_idle =>
                                  full_out <= '1';
                                  if Wen = '0' then 
                                      next_state <=Idle;
                                  else 
                                      next_state <= current_state;
                                  end if;
              
                              when Idle => 
                                  --Fonctionement Mem std
                                data_out <= Prob(to_integer(unsigned(addr)));
                                  if Wen ='1'  then
                                      index_temp <= "00000";
                                      next_state <= Prog;
                                  else
                                      next_state <= Idle;
                                  end if;
				end case; 
				
							  
	end process P_Next_State_output;


end A;
