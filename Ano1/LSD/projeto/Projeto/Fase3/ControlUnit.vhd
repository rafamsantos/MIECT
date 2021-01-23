library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ControlUnit is
	port(clk      : in std_logic;
		  reset    : in std_logic;
		  opCode   : in std_logic_vector(2 downto 0);
		  func     : in std_logic_vector(3 downto 0);
		  EnPc     : out std_logic;
		  RI       : out std_logic;
		  RegWr    : out std_logic;
		  RegDst   : out std_logic;
		  ALUSrc   : out std_logic;
		  ALUOp    : out std_logic_vector(3 downto 0);
		  MemWr    : out std_logic;
		  MemtoReg : out std_logic);
		  
end ControlUnit;

architecture behavioral of ControlUnit is 

type state is (fetch,rst,decode,execute,regUpdate,WriteMem);
signal ps,ns : state;  --present state and next state respectively

begin

	Sync_proc: process(clk)
	
	begin 
		if(rising_edge(clk))then 
			if(reset ='1') then 
				ps <= rst;
			else
				ps <= ns;
			end if;
		end if;
	end process;

	comb_proc :process(ps,opCode,func,ns)
	begin
	EnPC <= '0'; RI <= '0';RegWr <= '0'; RegDst <= '0'; 
    ALUSrc  <= '0'; MemWr <= '0'; MemtoReg <= '0'; ALUOp <= "0000";
	
	case ps is
		when rst =>
				ns <= fetch;
			
		when fetch => 
					
					if(opCode="000")then 
						ns <= fetch;
					else 
						EnPc <='1';
						RI <='1';
						ns <= decode;
					end if;
					
		when decode=> 
			if(opCode="000")then 
				ns <= decode;
				
			elsif(opCode="001")then   -- tipo I
				ALUSrc <='0';
				ns <= execute;
			else
				ALUSrc <='1';
				ns <= execute;
			end if;
			
		when execute => 
			if(opCode ="000") then 
				ns <= execute;
			
			elsif(opCode = "001") then 
				ALUSrc <='0';
				ALUOp <= func;
				ns <= RegUpdate;
				
			elsif(opCode ="100") then 
				ALUSrc <='1';
				ns <= RegUpdate;
			else
				ALUSrc <='1';
				ns <= WriteMem;
			end if;
			
		when WriteMem => 
				MemWr <= '1';
				ALUSrc <='1';
				ns<= fetch;
			
		when RegUpdate => 
			if(opCode = "001")then 
				MemtoReg <= '0';
				RegWr <='1';
				RegDst <= '1';
				ns <= fetch;
				
			elsif(opCode <= "100") then
				MemtoReg <='0';
				ALUSrc <='1';
				RegWr <='1';
				RegDst <= '1';
				ns <= fetch;
				
			else 
				MemtoReg <='1';
				ALUSrc <='1';
				RegWr <='1';
				RegDst <= '1';
				MemWr <='1';
				ns <= fetch;
			end if;
		end case;
	end process;
end behavioral ;