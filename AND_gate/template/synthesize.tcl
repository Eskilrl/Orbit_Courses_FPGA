# Set the project and implementation details
set project_file "my_project.ldf"
set implementation "impl1"

# Open the project
project_open $project_file

# Add source files
add_files -sv AND.sv

# Set the constraints file (optional, if you have one)
 add_files AND.xdc

# Run synthesis
synthesize -impl $implementation

# Run place and route
map -impl $implementation
place_and_route -impl $implementation

# Export the bitstream
export_bitstream -impl $implementation -format bit

puts "Synthesis and bitstream generation complete."
