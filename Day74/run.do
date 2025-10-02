vlog sr_fftb.v
vsim sr_fftb
add wave -position insertpoint sim:/sr_fftb/*
run -all
