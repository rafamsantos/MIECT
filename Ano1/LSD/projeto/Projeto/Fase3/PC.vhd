library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity PC is 
	generic(N : positive := 4);
	port(En    : in std_logic;
	     reset : in std_logic;
		  clk   : in std_logic;
		  cnt   : out std_logic_vector(N-1 downto 0));
end PC;

architecture behavioral of PC is 
	signal s_count : unsigned((N-1) downto 0);
	begin 
		process(clk,reset)
		begin
			if(reset = '1') then 
				s_count <= (others => '0');
			elsif(rising_edge(clk)) then
				if(En='1')then
					s_count <= s_count+1;
				end if;
			end if;
	end process;
	Cnt <= std_logic_vector(s_count);
end behavioral;