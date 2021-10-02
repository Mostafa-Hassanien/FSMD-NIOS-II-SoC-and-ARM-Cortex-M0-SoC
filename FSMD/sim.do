add wave -position end  sim:/Top_Module/U2_DATAPATH/ld_out
add wave -position end  sim:/Top_Module/U2_DATAPATH/CLK
add wave -position end  sim:/Top_Module/U2_DATAPATH/RST
add wave -position end  sim:/Top_Module/U1_FSM/go_i
add wave -position end  sim:/Top_Module/U1_FSM/Current_State
add wave -position end  sim:/Top_Module/U1_FSM/Next_State
add wave -position end  sim:/Top_Module/U1_FSM/i_notEQ3
add wave -position end  sim:/Top_Module/U1_FSM/j_notEQ3
add wave -position end  sim:/Top_Module/U1_FSM/k_notEQ3
add wave -position end  sim:/Top_Module/U1_FSM/Done_Flag
add wave -position end  sim:/Top_Module/U2_DATAPATH/Count_En
add wave -position end  sim:/Top_Module/U2_DATAPATH/Address_Matrix_A
add wave -position end  sim:/Top_Module/U2_DATAPATH/Address_Matrix_B
add wave -position end  sim:/Top_Module/U2_DATAPATH/Address_Matrix_C
add wave -position end  sim:/Top_Module/U2_DATAPATH/Address_C
add wave -position end  sim:/Top_Module/U2_DATAPATH/Count
add wave -position end  sim:/Top_Module/U2_DATAPATH/ROM_A_OUT
add wave -position end  sim:/Top_Module/U2_DATAPATH/ROM_B_OUT
add wave -position insertpoint  \
sim:/Top_Module/U2_DATAPATH/I \
sim:/Top_Module/U2_DATAPATH/J \
sim:/Top_Module/U2_DATAPATH/K
add wave -position 16  sim:/Top_Module/U2_DATAPATH/SUM
add wave -position end  sim:/Top_Module/U2_DATAPATH/U6_C/Mem
force -freeze sim:/Top_Module/U2_DATAPATH/CLK 0 0, 1 {50 ps} -r 100
force -freeze sim:/Top_Module/U2_DATAPATH/RST 1 0
force -freeze sim:/Top_Module/U2_DATAPATH/RST 0 10
force -freeze sim:/Top_Module/U2_DATAPATH/RST 1 30
force -freeze sim:/Top_Module/U1_FSM/go_i 0 0
force -freeze sim:/Top_Module/U1_FSM/go_i 1 40
force -freeze sim:/Top_Module/U1_FSM/go_i 0 80
add wave -position 22  sim:/Top_Module/U2_DATAPATH/OUT

add wave -position insertpoint  \
sim:/top_module/go_i \
sim:/top_module/CLK \
sim:/top_module/RST \
sim:/top_module/\\OUT\\
force -freeze sim:/top_module/CLK 0 0, 1 {50000 ps} -r 100000
force -freeze sim:/top_module/RST U 0
force -freeze sim:/top_module/RST 0 10000
force -freeze sim:/top_module/RST 1 30000
force -freeze sim:/top_module/go_i 0 0
force -freeze sim:/top_module/go_i 1 40000
force -freeze sim:/top_module/go_i 0 70000