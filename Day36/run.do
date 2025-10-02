vlib work
vlog NbitFA_tb.v
vsim NbitFA_tb
add wave -position insertpoint sim:/NbitFA_tb/*
# Run the simulation
run -all
