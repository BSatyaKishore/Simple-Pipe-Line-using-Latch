Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! This is empty shell for the main compilation of all the other components in the processor
entity Main is
end entity Main;

architecture main of Main is
	--! Instruciton Fetch Unit
	component myand is
		port (a,b,c,clk: in bit; d,e: out bit);
	end component myand;
	
	component SAnd is
		port (d,e, clk: in bit; f: out bit);
	end component SAnd;

	signal a: bit:='0';
	signal b: bit:='0';
	signal c: bit:='0';
	signal d: bit:='0';
	signal e: bit:='0';
	signal f: bit:='0';
	signal clk: bit:='0';

begin
	clk<= not clk after 2 ns;
	First: myand port map(a,b,c,clk,d,e);
	Second: SAnd port map(d,e,clk,f);
	a<= not a after 6 ns;
  	b<= not b after 10 ns;
	c<= not c after 8 ns;
end main;

