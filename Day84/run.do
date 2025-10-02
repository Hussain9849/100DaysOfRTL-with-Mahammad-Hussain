vlog tb_counter.v
vsim tb_counter
add wave -position insertpoint sim:/tb_counter/*
run -all
