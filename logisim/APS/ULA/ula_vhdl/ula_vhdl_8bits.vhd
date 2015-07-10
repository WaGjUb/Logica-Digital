library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- for the unsigned type

-------------------ULa----------------------
entity ula_vhdl_8bits is
	port (
			 a, b: in std_logic_vector( 7 downto 0 );
			 op: in 	std_logic_vector(3 downto 0 );
			 saida: out std_logic_vector( 7 downto 0 )
			);
end;

architecture ULa_aRCH of ula_vhdl_8bits is 
	component c_l_addr
		port
		(
			x_in:  in   std_logic_vector(7 downto 0);
			y_in:  in   std_logic_vector(7 downto 0);
			carry_in: in   std_logic;
			sum:  out  std_logic_vector(7 downto 0);
			carry_out: out  std_logic
		);
	end component;

	signal sum_sig: std_logic_vector(7 downto 0);
	signal sub_sig: std_logic_vector(7 downto 0);
	
begin
	SUM: c_l_addr port map( x_in => a, y_in => b, carry_in => '0', sum => sum_sig );
	SUB: c_l_addr port map( x_in => a, y_in => b, carry_in => '1', sum => sub_sig );
	process( op ) is
	begin
		case op is 
			when "0000" => saida <= a and b;
			when "0001" => saida <= a or b;
			when "0010" => saida <= not a; -- arruma ae!
			when "0011" => saida <= a nand b;
			when "0100" => saida <= a nor b;
			when "0101" => saida <= a xor b;
			when "0110" => saida <= a xnor b;
			--somador
			when "0111" => saida <= sum_sig;
			when "1000" => saida <= sub_sig;
			when others => saida <= "01010101";
		end case;
	end process;
end ULa_aRCH;
-------------------ULa----------------------
