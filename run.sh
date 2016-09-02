ghdl -a myand.vhdl
ghdl -a SAnd.vhdl
ghdl -a Latch.vhdl
ghdl -a Main.vhdl
ghdl -e Main
ghdl -r Main --stop-time=1500ns --wave=Check.ghw
gtkwave Check.ghw
