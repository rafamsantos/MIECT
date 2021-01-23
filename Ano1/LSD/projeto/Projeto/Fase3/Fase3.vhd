library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Fase3 is 
	port(clk      : in std_logic;
		  reset    : in std_logic);	
		  
end Fase3;
	
architecture behavioral of Fase3 is 
signal s_count       : std_logic_vector(3 downto 0);
signal RData2,RData1 : std_logic_vector(7 downto 0);
signal signExtendOut : std_logic_vector(7 downto 0);
signal signExtendIn  : std_logic_vector(6 downto 0);
signal outMux        : std_logic_vector(7 downto 0); 
signal ALUOut        : std_logic_vector(7 downto 0);
signal DMemOut       : std_logic_vector(7 downto 0);
signal IMemOut       : std_logic_vector(15 downto 0);
signal Mux2_1Out     : std_logic_vector(2 downto 0);
signal s_RI,s_RegWr,s_RegDst,s_ALUSrc,s_MemtoReg,s_MemWr : std_logic;
signal s_EnPc : std_logic;
signal s_ALUOp : std_logic_vector(3 downto 0);

begin 
	Control_Unit : entity work.ControlUnit(behavioral)
		port map(clk => clk,
					reset => reset,
					opCode => IMemOut(15 downto 13),
					func =>IMemOut(3 downto 0), 
					RI =>s_RI,
					RegWr => s_RegWr,
					RegDst => s_RegDst,
					ALUSrc => s_ALUSrc,
					ALUOp => s_ALUOp,
					MemWr => s_MemWr,
					Memtoreg => s_MemtoReg);
	

	Pc: entity work.PC(behavioral)
			generic map (N => 4)
			port map(clk   => clk,
						reset => reset,
						En    => s_EnPc,
						cnt   => s_count);
						
	Mux2_1_0 : entity work.Mux2_1(behavioral)
			generic map(N => 8)
			port map(sel    => s_ALUSrc,
						input0 => RData2,
						input1 => signExtendOut,
						y      => OutMux);
						
	Mux2_1_1 : entity work.Mux2_1(behavioral)
			generic map(N => 3)
			port map(sel    => s_RegDst,
						input0 => IMemOut(6 downto 4),
						input1 => IMemOut(9 downto 7),
						y      =>Mux2_1Out);
		
				
	ALU : entity work.ALU(behavioral)
			port map(op1   => RData1,
						op2   => outMux,
						res   => ALUOut,
						ALUOp =>s_ALUOp);
						
	DMemory : entity work.DMemory(behavioral)
			port map(writeEnable => s_MemWr,
						writeClk  => clk,
						address   => outMux,
						WriteData => RData2,
						ReadData  => DMemOut);
						
	IMemory : entity work.IMemory(behavioral)
			port map(clk => clk,
						En => s_RI,
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
						WD    => DMemOut,
						WE    => s_RegWr,
						RD1   => RData1,
						RD2   => RData2);
						
end behavioral;