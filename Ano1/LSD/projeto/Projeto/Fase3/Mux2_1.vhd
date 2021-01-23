library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is 
	generic(N : Positive := 8);
	port(sel : in std_logic;
		  input0 : in std_logic_vector(N-1 downto 0);
		  input1 : in std_logic_vector(N-1 downto 0);
		  y      : out std_logic_vector(N-1 downto 0));
end Mux2_1;

architecture behavioral of Mux2_1 is
begin
	process(sel , input0 , input1)
	begin
		if(sel='0') then 
			y <= input0;
		else 
			y <= input1;
		end if;
	end process;
end behavioral;	