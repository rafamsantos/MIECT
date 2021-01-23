library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Fase3_Tb is 
end Fase3_Tb;

architecture stimulus of Fase3_Tb is 
signal s_clock   : std_logic;
signal s_reset   : std_logic;

begin	
	control_unit : entity work.Fase3(behavioral)

        port map(clk     => s_clock,
					  reset   => s_reset);
					  
						
		clock_process: process

    begin
        s_clock <= '0' ;
        wait for 50 ns ;
        s_clock <= '1' ;
        wait for 50 ns ;

    end process;
	 
	 
	 
	 stim_process: process

    begin
       wait for 50 ns; 
			s_reset <='1';
		 
		 wait for 100 ns;
			s_reset <='0';
			
		wait for 5000 ns;
			
		 
		 end process;	
end stimulus;