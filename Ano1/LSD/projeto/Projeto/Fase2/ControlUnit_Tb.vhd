library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ControlUnit_Tb is
end ControlUnit_Tb;

architecture Stimulus of ControlUnit_Tb is

signal s_clock   : std_logic;
signal s_reset   : std_logic;
signal s_opcode  : std_logic_vector(2 downto 0);
signal s_func    : std_logic_vector(3 downto 0);
signal s_EnPC    : std_logic;
signal s_RI      : std_logic; 
signal s_RegDst  : std_logic;
signal s_RegWr   : std_logic;
signal s_ALUSrc  : std_logic;
signal s_ALUOp   : std_logic_vector(3 downto 0);
signal s_MemWr   : std_logic;
signal s_MemtoReg: std_logic;



begin

    uut:entity work.ControlUnit(behavioral)

        port map(clk     => s_clock,
					  reset   => s_reset,
					  opcode  => s_opcode,
					  func    => s_func,
					  EnPC    => s_EnPC,
					  RI      => s_RI,
					  RegDst  => s_RegDst,
					  RegWr   => s_RegWr,
					  ALUSrc  => s_ALUSrc,
					  ALUOp   => s_ALUOp,
					  MemWr   => s_MemWr,
					  MemtoReg=> s_MemtoReg);

    clock_process: process

    begin
        s_clock <= '0' ;
        wait for 100 ns ;
        s_clock <= '1' ;
        wait for 100 ns ;

    end process;



    stim_process: process

    begin
	 wait for 100 ns; 
        s_reset<='0';
        s_opcode<="001"; 
        s_func <="0011";
		  
		  wait for 1000 ns;  
		  s_func <= "1000";
		  
		  wait for 100 ns;  
		  s_func   <= "1000";
		  
		  wait for 100 ns ;
		  s_opCode <= "110";
		  s_func   <= "0111";
			
		  
		 end process;
end Stimulus;