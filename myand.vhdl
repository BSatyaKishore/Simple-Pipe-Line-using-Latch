Library ieee;
use ieee.std_logic_1164.all;

entity myand is
	port (a,b,c, clk: in bit; d,e:out bit);
end myand;

architecture andArc of myand is
begin
	process (clk)
	begin
		if (clk='1') then
			d<= (a and b);
			e <= c;
		end if;
	end process;
end andArc;
