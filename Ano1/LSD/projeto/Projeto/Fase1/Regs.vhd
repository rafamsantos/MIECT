library ieee;
use ieee.std_logic_1164.all;

entity Regs is 
	port(RA1 	: in std_logic_vector(2 downto 0);
		  RA2 	: in std_logic_vector(2 downto 0);
		  WA  	: in std_logic_vector(2 downto 0);
		  WD  	: in std_logic_vector(7 downto 0);
		  WE  	: in std_logic;
		  clk 	: in std_logic;
		  reset  : in std_logic;
		  RD1 	: out std_logic_vector(7 downto 0);
		  RD2 	: out std_logic_vector(7 downto 0));
end Regs;

architecture behavioral of Regs is 
	signal decoderOut : std_logic_vector(7 downto 0);
	signal dataOut0,dataOut1,dataOut2,dataOut3,dataOut4,dataOut5,dataOut6,dataOut7 : std_logic_vector(7 downto 0);
begin 
	dec3_8 : entity work.Dec3_8(behavioral)
		port map(enable => WE,
					dataIn => WA,
					dataOut => decoderOut(7 downto 0));
			
	Reg_0 : entity work.Reg(behavioral)
		generic map(N => 8)
		port map(dataIn  => x"00",
					reset   => reset,
					clk     =>clk,
					enable  => decoderOut(0),
					dataOut => dataOut0);
					
	Reg_1 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(1),
					dataOut => dataOut1);
					
	Reg_2 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(2),
					dataOut => dataOut2);
					
	Reg_3 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(3),
					dataOut => dataOut3);
					
	Reg_4 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(4),
					dataOut => dataOut4);
					
	Reg_5 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(5),
					dataOut => dataOut5);
					
					
	Reg_6 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(6),
					dataOut => dataOut6);
					
	Reg_7 : entity work.Reg(behavioral)
		generic map (N => 8)
		port map(dataIn  => WD,
				   reset   => reset,
					clk     => clk,
					enable  => decoderOut(6),
					dataOut => dataOut7);
					
	Mux8_1_0 : entity work.Mux8_1(behavioral)
		generic map(N => 8)
		port map(sel     => RA1,    
				  dataIn0  => dataOut0,
				  dataIn1  => dataOut1,
				  dataIn2  => dataOut2,
				  dataIn3  => dataOut3,
				  dataIn4  => dataOut4,
				  dataIn5  => dataOut5,
				  dataIn6  => dataOut6,
				  dataIn7  => dataOut7,
				  dataOut  => RD1);
					
	Mux8_1_1 : entity work.Mux8_1(behavioral)
		generic map(N => 8)
		port map(sel     => RA2,    
				  dataIn0  => dataOut0,
				  dataIn1  => dataOut1,
				  dataIn2  => dataOut2,
				  dataIn3  => dataOut3,
				  dataIn4  => dataOut4,
				  dataIn5  => dataOut5,
				  dataIn6  => dataOut6,
				  dataIn7  => dataOut7,
				  dataOut  => RD2);
					
end behavioral;