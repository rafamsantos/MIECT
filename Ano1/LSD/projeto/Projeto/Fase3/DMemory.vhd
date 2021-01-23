library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DMemory is
	generic(N : positive := 8);
	
	port(writeClk  : in std_logic;
		  writeEnable : in std_logic;
		  address     : in std_logic_vector(N-1 downto 0);
		  writeData   : in std_logic_vector(N-1 downto 0);
		  ReadData    : out std_logic_vector(N-1 downto 0));  
end DMemory;

architecture behavioral of DMemory is 
	
	constant numWords : Integer := 256;
	subtype DataWord is std_logic_vector(7 downto 0);
	type Memory is array (0 to numWords-1) of DataWord;
	signal s_mem : Memory := (X"00", X"0A",X"05",others=> "00000000");
	
	begin
		process(writeClk)
		begin
			if(rising_edge(writeClk)) then
				if(writeEnable ='1') then
					s_mem(to_integer(unsigned(address))) <= writeData;
				end if;
			end if;
		end process;
		
		ReadData <= s_mem(to_integer(unsigned(address)));
end behavioral;