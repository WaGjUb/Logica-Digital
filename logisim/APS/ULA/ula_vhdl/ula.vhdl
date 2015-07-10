library IEEE;
use IEEE.std_logic_64.all;
use IEEE.numeric_std.all;    -- for the unsigned type

-------------------ULA----------------------
entity ULA is
	port (
			 A		: in 	STD_LOGIC_VECTOR( 7 downto 0 );
			 B		: in 	STD_LOGIC_VECTOR( 7 downto 0 );
			 OP		: in 	STD_LOGIC_VECTOR(3 downto 0 );
			 saida	: out 	STD_LOGIC_VECTOR( 7 downto 0 );
);
end entity ULA;

architecture ULA_ARCH of ULA is 
	component c_l_addr
		PORT
		(
			x_in      :  IN   STD_LOGIC_VECTOR(7 DOWNTO 0);
			y_in      :  IN   STD_LOGIC_VECTOR(7 DOWNTO 0);
			carry_in  :  IN   STD_LOGIC;
			sum       :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
			carry_out :  OUT  STD_LOGIC
		);
	END component;

	signal sum: STD_LOGIC_VECTOR(7 downto 0);
	signal sub: STD_LOGIC_VECTOR(7 downto 0);
	
begin
	process( OP ) is
	begin
		SUM : c_l_addr port map 
		(
			x_in => A, y_in => B, carry_in => "0", sum => sum 
		);

		SUB : c_l_addr port map 
		(
			x_in => A, y_in => B, carry_in => "1", sum => sub 
		);
		case OP is 
			when "0000" => saida <= A and B;
			when "0001" => saida <= A or B;
			when "0010" => saida <= A not B;
			when "0011" => saida <= A nand B;
			when "0100" => saida <= A nor B;
			when "0101" => saida <= A xor B;
			when "0110" => saida <= A xnor B;
			--somador
			when "0111" => saida <= sum;
			when "1000" => saida <= sub;
			when others => saida <= "01010101";
		end case;

	end process;

end architecture ULA_ARCH;
-------------------ULA----------------------
