library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Reg is

port(clk : in std_logic;
	  -- asynchronous read port
	  readAddr1 : in std_logic_vector(2 downto 0);
	  readData1 : out std_logic_vector(7 downto 0);
	  readAddr2 : in std_logic_vector(2 downto 0);
	  readData2 : out std_logic_vector(7 downto 0);
	  -- synchronous write port
	  writeAddr : in std_logic_vector(3 downto 0);
	  writeData : in std_logic_vector(7 downto 0);
	  writeEnable : in std_logic);
end Reg;

architecture Behavioral of Reg is
subtype TDataWord is std_logic_vector(WORD_BITS-1 downto 0);
type TMem is array (0 to 2**ADDR_BITS-1) of TDataWord;
signal s_memory : TMem := (others => (others => '0'));
begin
process(clk, writeEnable) is
begin
if(rising_edge(clk) ) then
	if(writeEnable = '1') then
		s_memory(to_integer(unsigned(writeAddr))) <= writeData;
	end if;
end if;
end process;

readData1 <= (others => '0') when 
						(to_integer(unsigned(readAddr1)) = 0) else
						s_memory(to_integer(unsigned(readAddr1)));
readData2 <= (others => '0') when 
						(to_integer(unsigned(readAddr2)) = 0) else
						s_memory(to_integer(unsigned(readAddr2)));						
end Behavioral;