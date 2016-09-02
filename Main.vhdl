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

	component Latch is
		port (clk: in bit; ain,bin,cin,din,ein: in bit; aout,bout,cout,dout,eout: out bit);
	end component Latch;

	signal a: bit:='0';
	signal b: bit:='0';
	signal c: bit:='0';
	signal d: bit:='0';
	signal e: bit:='0';
	signal f: bit:='0';
	signal clk: bit:='0';
	signal ain,bin,cin,din,ein, aout,bout,cout,dout,eout: bit;
begin
	clk<= not clk after 3 ns;
	A1: myand port map(a=>aout,b=>bout,c=>cout,clk=>clk,d=>din,e=>ein);
	A2: SAnd port map(d=>dout,e=>eout,clk=>clk,f=>f);
	L: Latch port map(clk,ain,bin,cin,din,ein,aout,bout,cout,dout,eout);
	ain<= not ain after 6 ns;
  	bin<= not bin after 10 ns;
	cin<= not cin after 8 ns;
end main;

