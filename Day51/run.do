vlog tb.v
vsim tb_nor_latch
add wave -position insertpoint sim:/tb_nor_latch/*
#Run the simulation
run -all
