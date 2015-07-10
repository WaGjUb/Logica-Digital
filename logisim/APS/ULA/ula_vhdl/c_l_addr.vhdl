library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- for the unsigned type

-----------------SOMADor--------------------
entity c_l_addr is
	PorT
	(
		x_in      :  in   std_logic_vector(7 downto 0);
		y_in      :  in   std_logic_vector(7 downto 0);
		carry_in  :  in   std_logic;
		sum       :  out  std_logic_vector(7 downto 0);
		carry_out :  out  std_logic
	);
end c_l_addr;

architecture behavioral of c_l_addr is

	signal    h_sum              :    std_logic_vector(7 downto 0);
	signal    carry_generate     :    std_logic_vector(7 downto 0);
	signal    carry_propagate    :    std_logic_vector(7 downto 0);
	signal    carry_in_internal  :    std_logic_vector(7 downto 1);

begin
	h_sum <= x_in xor y_in;
	carry_generate <= x_in and y_in;
	carry_propagate <= x_in or y_in;
	process (carry_generate,carry_propagate,carry_in_internal)
	begin
		carry_in_internal(1) <= carry_generate(0) or (carry_propagate(0) and carry_in);
		inst: for i in 1 to 6 loop
			carry_in_internal(i+1) <= carry_generate(i) or (carry_propagate(i) and carry_in_internal(i));
		end loop;
		carry_out <= carry_generate(7) or (carry_propagate(7) and carry_in_internal(7));
	end process;

	sum(0) <= h_sum(0) xor carry_in;
	sum(7 downto 1) <= h_sum(7 downto 1) xor carry_in_internal(7 downto 1);
end behavioral;    
-----------------SOMADor--------------------
