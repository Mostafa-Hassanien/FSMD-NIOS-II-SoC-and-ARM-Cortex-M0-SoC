
Open the test Project with Keil:

 .\systems\cortex_m0_mcu\testcodes\hello\hello_cm0
Build all

Copy the hello.hex to .\systems\cortex_m0_mcu\rtl_sim
Reanme the hello.hex to image.hex


browse to .\systems\cortex_m0_mcu\rtl_sim

vlib work

vlog -F ..\verilog\tbench_M0_DS.vc

vsim work.tb_cmsdk_mcu

add wave

run 50000 ns