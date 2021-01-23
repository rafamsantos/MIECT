library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DataPath is 
	port(clk      : in std_logic;
		  reset    : in std_logic;	
		  EnPc     : in std_logic;
		  RI       : in std_logic;
		  RegDst   : in std_logic;
		  RegWr    : in std_logic;
		  ALUOp    : in std_logic_vector(3 downto 0);
		  ALUSrc   : in std_logic;
		  MemWr    : in std_logic;
		  MemToReg : in std_logic_vector(7 downto 0));
end DataPath;
	
architecture shell of DataPath is 
signal s_count       : std_logic_vector(3 downto 0);
signal RData2,RData1 : std_logic_vector(7 downto 0);
signal signExtendOut : std_logic_vector(7 downto 0);
signal signExtendIn  : std_logic_vector(6 downto 0);
signal outMux        : std_logic_vector(7 downto 0); 
signal ALUOut        : std_logic_vector(7 downto 0);
signal DMemOut       : std_logic_vector(7 downto 0);
signal IMemOut       : std_logic_vector(15 downto 0);
signal Mux2_1Out     : std_logic_vector(2 downto 0);

begin 
	Pc: entity work.PC(behavioral)
			generic map (N=>4)
			port map(clk   => clk,
						reset => reset,
						En    => EnPc,
						cnt   => s_count);
						
	Mux2_1_0 : entity work.Mux2_1(behavioral)
			generic map(N => 8)
			port map(sel    => ALUSrc,
						input0 => RData2,
						input1 => signExtendOut,
						y      => OutMux);
						
	Mux2_1_1 : entity work.Mux2_1(behavioral)
			generic map(N => 3)
			port map(sel    => RegDst,
						input0 => IMemOut(6 downto 4),
						input1 => IMemOut(9 downto 7),
						y      =>Mux2_1Out);
		
				
	ALU : entity work.ALU(behavioral)
			port map(op1   => RData1,
						op2   => outMux,
						res   => ALUOut,
						ALUOp =>ALUOp);
						
	DMemory : entity work.DMemory(behavioral)
			port map(writeEnable => MemWr,
						writeClk  => clk,
						address   => outMux,
						WriteData => RData2,
						ReadData  => DMemOut);
						
	IMemory : entity work.IMemory(behavioral)
			port map(clk => clk,
						En => RI,
						RA => s_count,
						RD => IMemOut);
			
	SignExtend : entity work.SignExtend(behavioral)
			port map(input  => IMemOut(6 downto 0),
						output => signExtendOut);
		
	Regs : entity work.Regs(behavioral)
			port map(clk   => clk,
						reset => reset,
						RA1   => IMemOut(12 downto 10),
						RA2   => IMemOut(9 downto 7),
						WA    => Mux2_1Out,
						WD    => MemToReg,
						WE    => RegWr,
						RD1   => RData1,
						RD2   => RData2);
				
end shell;