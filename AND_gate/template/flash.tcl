# Set the bitstream file path and device information
set bitstream_file "my_project.bit"
set cable_type "usb"  ;# Change if necessary
set device_name "LFE5U-25F"  ;# Nandland Go FPGA device name

# Program the FPGA with the bitstream file
program_device -infile $bitstream_file -cabletype $cable_type -device $device_name

puts "Programming complete."
