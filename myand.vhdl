Library ieee;
use ieee.std_logic_1164.all;

entity myand is
	port (a,b,c: in bit; d,e:out bit);
end myand;

architecture andArc of myand is
begin
	d<= (a and b);
	e <= c;
end andArc;
