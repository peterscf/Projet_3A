------------------------------VIP_prog.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 24/01/2018
--Description: VIP qui permet la programmation des GW et MEM d'un réseau mais aussi
--juste pour un noeud. Elle sadapte en fonction du full renvoyer par le réseaux ou 
--noeud.
------------------------------VIP_prog.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity VIP_prog is
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
end VIP_prog;

architecture A of VIP_prog is

component VIP_Mem_img
	generic (	mem_file : string (21 downto 1); 
				gw_file : string (20 downto 1) ); 
    port(		clk: in std_logic;
				reset_n : in std_logic;
				send_MEM: in std_logic;
				send_GW : in std_logic;
				MEM_out: out std_logic_vector(11 downto 0);
				GW_out: out std_logic_vector (11 downto 0));
end component;

type STATE is (Idle,Init_Prog_MEM,Prog_MEM,Prog_GW,Init_Prog_GW,wait_prog_GW);
signal current_state : STATE;
signal next_state : STATE;

signal index : integer:=4;
signal index_temp : integer:=4 ;
signal sig_clk: std_logic;
signal sig_reset_n: std_logic;
signal sig_send_MEM :std_logic;
signal sig_send_GW: std_logic;
signal sig_MEM_out: std_logic_vector(11 downto 0);
signal sig_GW_out : std_logic_vector(11 downto 0);


begin

MEM_IMG : VIP_Mem_img
	generic map (mem_file,gw_file)
    port map(	clk,
				reset_n,
				sig_send_MEM,
				sig_send_GW,
				sig_MEM_out,
				sig_GW_out);



	
	P_STATE: process(clk) begin
    
    if (clk'event and clk = '1') then
		if reset_n = '0' then
			current_state <= Idle; 
			index<=4;
		else 
			index <= index_temp;
			current_state<=next_state;
		end if;
	end if;
	end process P_state ;


	P_Next_State_output : process (enable_prog, full_in,index, current_state)
		variable temp : std_logic_vector (11 downto 0);

begin
	   
	      		prog	<= '0';
				sig_send_MEM <='0';
				sig_send_GW <='0';
      			Wen		<= '0';
				end_prog <='0';
			case current_state is								
						  	when Idle =>
								end_prog <='1';
								--index_temp <= 0;
						  		if enable_prog = '1' then
									next_state <= Init_Prog_MEM; 
								else
									next_state <= current_state;
								end if;
								
							when Init_Prog_MEM =>
								Wen <= '1';
								sig_send_MEM <='1';
								next_state <= Prog_MEM;
								index_temp <= 0;
								--next_state <= Prog_MEM;
						  							  	
							when Prog_MEM => 
								Wen <='1';
								temp:= sig_MEM_out;
								Prob_out <= temp(9 downto 0);
								index_temp <= index + 1;
								if index = 31 then 
									index_temp <= 0;
								end if;

								if full_in ='1' then 
									next_state <= wait_prog_GW; 
								else
									next_state <= current_state;
								end if;
								--index_temp <= index + 1;

							when wait_Prog_GW =>
								index_temp <= 0;
								if full_in = '0' then
									next_state <= Init_Prog_GW;
								else 
									next_state <= current_state;
								end if;
								
							when Init_Prog_GW =>
								Prog <= '1';
								index_temp <= 0;
								sig_send_GW <='1';
								next_state <= Prog_GW;

							when Prog_GW => 
							--	sig_send_GW <='1';
								Prog <='1';
								temp := sig_GW_out; --Prog_link(index);
								Prog_link_out <= temp(10 downto 0);
								index_temp <= index + 1;
								if index = 5 then 
									index_temp <= 0;
								end if;

								if full_in = '1' then
									next_state <= Idle; 
								else
									next_state <= current_state;
								end if;
								--index_temp <= index + 1;
				end case; 			
	end process P_Next_State_output;
end A;
