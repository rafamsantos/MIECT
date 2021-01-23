library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ALU is 
	generic(N : positive := 8);
	
	port(ALUOp :in std_logic_vector(3 downto 0);
		  op1   :in std_logic_vector(N-1 downto 0);
		  op2   : in std_logic_vector(N-1 downto 0);
		  res   : out std_logic_vector(N-1 downto 0));
end ALU;

architecture behavioral of ALU is
	signal s_res,s_op1,s_op2: std_logic_vector(N-1 downto 0);
	signal s_m,s_ms : std_logic_vector(15 downto 0);

	
begin
	s_m <= std_logic_vector(unsigned(op1) * unsigned(op2));
	s_ms <=std_logic_vector( signed(op1)*signed(op2));
	
	process(ALUOp, s_op1 , s_op2 , s_res, s_m, s_ms)
	begin
	case ALUOp is 
		when "0000" =>
			s_res <= std_logic_vector(unsigned(s_op1)+unsigned(s_op2));
			
		when "0001" =>
			s_res <= std_logic_vector(unsigned(s_op1)-unsigned(s_op2));
			
		when "0010" =>
			s_res <= s_op1 and s_op2;
			
		when "0011" =>
			s_res <= s_op1 or s_op2;
			
		when "0100"=>
			s_res <= s_op1 xor s_op2;
			
		when "0101"=>
			s_res <= s_op1 nor s_op2;
			
		when "0110" =>
			s_res <= std_logic_vector(s_m(N-1 downto 0));
			
		when "0111" =>
			s_res <= std_logic_vector(s_ms(N-1 downto 0));
			
		when "1000" => 
			s_res <= std_logic_vector(shift_left(unsigned(s_op1), to_integer(unsigned(s_op2))));

		when "1001" => 
			s_res <= std_logic_vector(shift_right(unsigned(s_op1), to_integer(unsigned(s_op2))));
		
		when "1010" =>
			s_res <= std_logic_vector(shift_left(unsigned(s_op1), to_integer(signed(s_op2))));
			
		when "1011" =>
			if(s_op1 = s_op2) then
				s_res <= "00000001";
			else 
				s_res <= "00000000";
			end if;
				
		when "1100" =>
			if(s_op1 < s_op2)then 
				s_res <= "00000001";
			else
				s_res <= "00000000";
			end if;
		
		when "1101" =>
			if(unsigned(s_op1) < unsigned(s_op2))then
				s_res <="00000001";
			else
				s_res <="00000000";
			end if;
		
		when "1110" =>
			if(signed(s_op1)>signed(s_op2))then 
				s_res <= "00000001";
			else 
				s_res <= "00000000";
			end if;
			
		when others => 
			if(unsigned(s_op1)>unsigned(s_op2))then 
				s_res <= "00000001";
			else 
				s_res <="00000000";
			end if;
		end case;
	end process;
	
	res <= s_res;
	s_op1 <= op1;
	s_op2 <= op2;
	
end behavioral;