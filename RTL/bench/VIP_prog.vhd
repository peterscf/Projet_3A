------------------------------VIP_prog.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 18/12/2017
------------------------------VIP_prog.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity VIP_prog is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				prog: out  std_logic;
      			Wen : out std_logic;
      			full_in : in std_logic;
      			prog_link_out : out std_logic_vector(N_parents downto 0);
      			full_out : out std_logic;
				prob_out : out std_logic_vector (9 downto 0)
		);
end VIP_prog;

architecture A of VIP_prog is
type STATE is (Idle,Init_Prog_MEM,Prog_MEM,Prog_GW,Init_Prog_GW);
signal current_state : STATE;
signal next_state : STATE;

signal index : integer;
signal index_temp : integer ;

type MEM is array (0 to 32) of std_logic_vector(9 downto 0);
type MEM_PROG is array (0 to 5) of std_logic_vector(N_parents downto 0);

signal Prog_MEM_prod: MEM;

signal Prog_link : MEM_PROG ;

begin
	
	P_STATE: process(clk,reset_n) begin
    
    if (clk'event and clk = '1') then
		if reset_n = '1' then
			current_state <= Idle; 
			index<=0;
		else 
			index <= index_temp;
			current_state<=next_state;
		end if;
	end if;
	end process P_state ;


	P_Next_State_output : process (enable_prog, full_in)

begin
	   
	      		prog	<= '0';
      			Wen		<= '0';
      			full_out<= '0'; 

	case current_state is								
						  	when Idle => 
						  		if enable_prog = '1' then
									next_state <= Init_Prog_MEM; 
								else
									next_state <= current_state;
								end if;
								
							when Init_Prog_MEM =>
								Wen <= '1';
								full_out <= '1';
								index_temp <= 0;
								next_state <= Prog_MEM;
						  							  	
							when Prog_MEM => 
								Wen <='1';
								full_out <= '1';
								Prob_out <= Prog_MEM_prod(index);
								if full_in ='1' then 
									next_state <= Init_Prog_GW; 
								else
									next_state <= current_state;
								end if;
								index_temp <= index + 1;

							when Init_Prog_GW =>
								Prog <= '1';
								full_out <= '1';
								index_temp <= 0;
								next_state <= Prog_GW;
							
							when Prog_GW => 
								Prog <='1';
								full_out <= '1';
								Prog_link_out <= Prog_link(index);
								if full_in <= '1' then
									next_state <= Idle; 
								else
									next_state <= current_state;
								end if;
								index_temp <= index + 1;
				end case; 
	end process P_Next_State_output;
end A;
