Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Latch is
	port (clk: in bit;ain,bin,cin,din,ein: in bit;aout,bout,cout,dout,eout: out bit);
end Latch;

architecture LatchArch of Latch is
	signal a,b,c,d,e: bit;
begin
	process (clk)
	begin
		if (clk='1') then
			aout <= a;
			bout <= b;
			cout <= c;
			dout <= d;
			eout <= e;
		end if;
	end process;
	process (clk)
	begin
		if (clk='0') then
			a <= ain;
			b <= bin;
			c <= cin;
			d <= din;
			e <= ein;
		end if;
	end process;
end LatchArch;