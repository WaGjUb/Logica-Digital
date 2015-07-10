-- Projeto gerado via script.
-- Data: Wed,13/05/2015-22:17:42
-- Autor: wagjub
-- Comentario: Descrição da Entidade: somador_1bit.
 
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
 
entity somador_1bit is
	port (a, b, cin: in std_logic; s, cout: out std_logic);
end somador_1bit;
 
architecture logica of somador_1bit is
  -- Declaração dos componentes.
  
begin
  -- Comandos.
  -- Instanciação dos componentes e o mapeamento de portas.
 s <= (b xor (a xor cin));
 cout <= (cin and a) xor (a and b) xor (cin and b);   
end logica;

