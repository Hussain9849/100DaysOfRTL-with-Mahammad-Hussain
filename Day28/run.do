vlib work
vlog Demux1_4.v
vlog FullAdder_Using1_4Demux.v
vlog FullAdder_Using1_4Demux_tb.v
vsim FullAdder_Using1_4Demux_tb
add wave -position insertpoint sim:/FullAdder_Using1_4Demux_tb/*
#Run the simulation
run -all
