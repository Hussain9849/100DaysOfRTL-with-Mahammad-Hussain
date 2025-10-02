#vlog clock_generation.v
#vlog dutyCycle60.v
vlog clock3.v
vsim tb
add wave -position insertpoint sim:/tb/*
run -all
