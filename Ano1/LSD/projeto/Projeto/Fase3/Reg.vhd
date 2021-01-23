library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Reg is
	generic(N : positive := 8);
	port(clk     : in std_logic;
		  reset   : in std_logic;
		  enable  : in std_logic;
		  dataIn  : in std_logic_vector(N-1 downto 0);
		  dataOut : out std_logic_vector(N-1 downto 0));

end Reg;

architecture behavioral of Reg is 
	begin
		process(clk)
		begin
			if(rising_edge(clk))then 
				if(reset ='1')then 
					dataOut <= (others =>'0');
				
				elsif(enable = '1')then
				dataOut <= dataIn;
				end if;
			end if;
		end process;
end behavioral;