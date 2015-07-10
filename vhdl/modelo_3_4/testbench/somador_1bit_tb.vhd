-- Testebench gerado via script.
-- Data: Wed,13/05/2015-22:17:42
-- Autor: wagjub
-- Comentario: Teste da entidade somador_1bit.
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity somador_1bit_tb is
end somador_1bit_tb;

architecture logica of somador_1bit_tb is
  --  Declaração do componente.
  component somador_1bit
	port (a, b, cin: in std_logic; s, cout: out std_logic);
  end component;
  --  Especifica qual a entidade está vinculada com o componente.
  for somador_1bit_0: somador_1bit use entity work.somador_1bit;
      signal s_t_a, s_t_b, s_t_cin, s_t_s, s_t_cout: std_logic;
  begin
    --  Instanciação do Componente.
	--  port map (<<p_in_1>> => <<s_t_in_1>>)
	somador_1bit_0: somador_1bit port map ( a=>s_t_a, b=>s_t_b, cin=>s_t_cin, s=>s_t_s, cout=>s_t_cout);

    --  Processo que faz o trabalho.
    process
		-- Um registro é criado com as entradas e saídas da entidade.
		-- (<<entrada1>>, <<entradaN>>, <<saida1>>, <<saidaN>>)
		type pattern_type is record
			-- entradas.
			 vi_a, vi_b, vi_cin: std_logic;
			-- saídas.
			 vo_s, vo_cout: std_logic;
		end record;

		--  Os padrões de entrada que são aplicados (injetados) às entradas.
		type pattern_array is array (natural range <>) of pattern_type;
		-- Casos de teste.
		constant patterns : pattern_array :=
		(
		('0','0','0','0','0'),
                ('0','0','1','1','0'),
                ('0','1','0','1','0'),
                ('0','1','1','0','1'),	
		('1','0','0','1','0'),
		('1','0','1','0','1'),
		('1','1','0','0','1'),
		('1','1','1','1','1')	

		);
		begin
		--  Checagem de padrões.
		for i in patterns'range loop
			--  Injeta as entradas.
			s_t_a <= patterns(i).vi_a;
			s_t_b <= patterns(i).vi_b;
			s_t_cin <= patterns(i).vi_cin;
			
			--  Aguarda os resultados.
			wait for 1 ns;
			--  Checa o resultado com a saída esperada no padrão.
			assert s_t_s = patterns(i).vo_s	report "Valor de s_t_s não confere com o resultado esperado." severity error;
			assert s_t_cout = patterns(i).vo_cout	report "Valor de s_t_cout não confere com o resultado esperado." severity error;
			
		end loop;
		assert false report "Fim do teste." severity note;
		--  Wait forever; Isto finaliza a simulação.
		wait;
	end process;
end logica;
