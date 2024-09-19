# Orbit_Courses_FPGA
An introductory course to FPGA development 


This is the commands you need to synth and program the FPGA:


Synthesize
1. yosys -p "read_verilog <project_name>.sv; synth_ice40 -blif <projeck_name>.blif"

Route
2. arachne-pnr -d 1k -p <project_name>_board-constraints.pcf -P vq100 -o <project_name>.txt <project_name>.blif

flash
3. icepack <project_name>.txt <project_name>.bin

4. iceprog <project_name>.bin 
