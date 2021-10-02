#specify the maximum external clock delay from the external device
set CLKs_max 0.200
#specify the minimum external clock delay from the external device
set CLKs_min 0.100
#specify the maximum external clock delay to the FPGA
set CLKd_max 0.200
#specify the minimum external clock delay to the FPGA
set CLKd_min 0.100
#specify the maximum clock-to-out of the external device
set tCO_max 0.525
#specify the minimum clock-to-out of the external device
set tCO_min 0.415
#specify the maximum board delay
set BD_max 0.180
#specify the minimum board delay
set BD_min 0.120
#specify the maximum setup time of the external device
set tSU 0.125
#specify the minimum setup time of the external device
set tH 0.100
#specify the maximum board delay
set BD_max 0.180
#specify the minimum board delay
set BD_min 0.120
create_clock -period 20 -name sys_clk [get_ports CLK]
create_clock -period 20 -name virt_sys_clk 
set_input_delay -clock virt_sys_clk -max [expr $CLKs_max + $tCO_max + $BD_max - $CLKd_min] [get_ports Show_DATA]
set_input_delay -clock virt_sys_clk -min [expr $CLKs_min + $tCO_min + $BD_min - $CLKd_max] [get_ports Show_DATA]
set_input_delay -clock virt_sys_clk -max [expr $CLKs_max + $tCO_max + $BD_max - $CLKd_min] [get_ports RST]
set_input_delay -clock virt_sys_clk -min [expr $CLKs_min + $tCO_min + $BD_min - $CLKd_max] [get_ports RST]
set_output_delay -clock virt_sys_clk -max [expr $CLKs_max + $BD_max + $tSU - $CLKd_min] [get_ports {OUT[*]}]
set_output_delay -clock virt_sys_clk -min [expr $CLKs_min + $BD_min - $tH - $CLKd_max] [get_ports {OUT[*]}]
derive_clock_uncertainty
