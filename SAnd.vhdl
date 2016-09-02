Library ieee;
use ieee.std_logic_1164.all;

entity SAnd is
	port (d,e,clk: in bit; f:out bit);
end SAnd;

architecture andArc of SAnd is
begin
	process (clk)
	begin
		if (clk'event and clk='1') then
			f<= (d and e);
		end if;
	end process;
end andArc;
