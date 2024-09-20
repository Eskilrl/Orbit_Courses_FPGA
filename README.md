# Orbit_Courses_FPGA
An introductory course to FPGA development 


This is the commands you need to synth and program the FPGA on Linux:


Synthesize
1. yosys -p "read_verilog <project_name>.sv; synth_ice40 -blif <projeck_name>.blif"

Route
2. arachne-pnr -d 1k -p <project_name>_board-constraints.pcf -P vq100 -o <project_name>.txt <project_name>.blif

flash
3. icepack <project_name>.txt <project_name>.bin

4. iceprog <project_name>.bin 

This is the commands you need to synth and program the FPGA on Windows:

1. synthesize: yosys -p "synth_ice40 -top <project name>" -o top.json <project name>.sv

2. route and place:  nextpnr-ice40 --json top.json --pcf AND_board-constraints.pcf --asc top.asc --hx1k --package vq100

3. convert to bin: icepack top.asc top.bin

4. flash: iceprog top.bin
