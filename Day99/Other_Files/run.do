vlog tb.v 
vsim tb +test_name=consecutive
#vsim tb 
add wave -r sim:/tb/dut/*
run -all
