library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Mux8_1 is 
	generic(N : Positive := 8);
	port(sel     : in std_logic_vector(2 downto 0);
		  dataIn0  : in std_logic_vector(N-1 downto 0);
		  dataIn1  : in std_logic_vector(N-1 downto 0);
		  dataIn2  : in std_logic_vector(N-1 downto 0);
		  dataIn3  : in std_logic_vector(N-1 downto 0);
		  dataIn4  : in std_logic_vector(N-1 downto 0);
		  dataIn5  : in std_logic_vector(N-1 downto 0);
		  dataIn6  : in std_logic_vector(N-1 downto 0);
		  dataIn7  : in std_logic_vector(N-1 downto 0);
		  dataOut  : out std_logic_vector(N-1 downto 0));
end Mux8_1;

architecture behavioral of Mux8_1 is 
begin
	with sel select
	dataOut <= 
	dataIn0 when "000",
	dataIn1 when "001",
	dataIn2 when "010",
	dataIn3 when "011",
	dataIn4 when "100",
	dataIn5 when "101",
	dataIn6 when "110",
	dataIn7 when others;

end behavioral;