library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity IMemory is
	generic(N : positive := 16 );
	
	port(clk : in std_logic;
		  En  : in std_logic;
		  RA  : in std_logic_vector(3 downto 0);
		  RD  : out std_logic_vector(N-1 downto 0));
		  
end IMemory;

architecture behavioral of IMemory is

	subtype DataWord is std_logic_vector(15 downto 0);
	type ROM is array (0 to 15) of DataWord;  
	constant c_Memory : ROM := ("1110000010000000", "1110000100000001", "1110000110000010","0010010101000100","1001001010000001", "0011010110010000", "1100000010000000",others =>"0000000000000000");
	begin
    process(clk,En,RA)
    begin
        if(rising_edge(clk)) then
            if(En = '1') then
                RD <= c_memory(to_integer(unsigned(RA)));
            else 
                RD<= (others => '0');
            end if;
        end if;
    end process;
end behavioral;