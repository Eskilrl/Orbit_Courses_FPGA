# Orbit_Courses_FPGA
An introductory course to FPGA development 


This is the commands you need to synth and program the FPGA on Linux:



1. Synthesize: yosys -p "read_verilog -sv <project_name>.sv; synth_ice40 -blif <projeck_name>.blif"


2. route and place: arachne-pnr -d 1k -p <project_name>_board-constraints.pcf -P vq100 -o <project_name>.txt <project_name>.blif


3. convert to bin: icepack <project_name>.txt <project_name>.bin

4. flash: iceprog <project_name>.bin 

This is the commands you need to synth and program the FPGA on Windows:

1. synthesize: yosys -p "synth_ice40 -top <project name>" -o top.json <project name>.sv

2. route and place:  nextpnr-ice40 --json top.json --pcf AND_board-constraints.pcf --asc top.asc --hx1k --package vq100

3. convert to bin: icepack top.asc top.bin

4. flash: iceprog top.bin

