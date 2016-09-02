Library ieee;
use ieee.std_logic_1164.all;

entity SAnd is
	port (d,e: in bit; f:out bit);
end SAnd;

architecture andArc of SAnd is
begin
	f<= (d and e);
end andArc;
