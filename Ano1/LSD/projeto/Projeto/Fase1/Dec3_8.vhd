library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Dec3_8 is 
	port(dataIn  : in std_logic_vector(2 downto 0);
		  enable  : in std_logic;
		  dataOut : out std_logic_vector(7 downto 0));
		  
end Dec3_8;

architecture behavioral of Dec3_8 is
begin
process(enable,dataIn)
begin
	if(enable = '1')then 
		case dataIn is
				 when "000" => dataOut <= "00000001";
				 when "001" => dataOut <= "00000010";
				 when "010" => dataOut <= "00000100";
				 when "011" => dataOut <= "00001000";
				 when "100" => dataOut <= "00010000";
				 when "101" => dataOut <= "00100000";
				 when "110" => dataOut <= "01000000";
				 when others => dataOut <= "10000000";
				 end case;
	else 
		dataOut <= "00000000";
	end if;
	end process;
end behavioral;