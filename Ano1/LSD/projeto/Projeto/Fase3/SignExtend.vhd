library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SignExtend is 

	port(input  : in std_logic_vector(6 downto 0);
		  output :out std_logic_vector(7 downto 0));

end SignExtend;

architecture behavioral of SignExtend is 
	begin 
		output <= input(6) & input;

end behavioral;