-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/02/2021 19:06:11"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top_Module IS
    PORT (
	Show_DATA : IN std_logic;
	CLK : IN std_logic;
	RST : IN std_logic;
	\OUT\ : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END Top_Module;

-- Design Ports Information
-- OUT[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Show_DATA	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top_Module IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Show_DATA : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL \ww_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \OUT[0]~output_o\ : std_logic;
SIGNAL \OUT[1]~output_o\ : std_logic;
SIGNAL \OUT[2]~output_o\ : std_logic;
SIGNAL \OUT[3]~output_o\ : std_logic;
SIGNAL \OUT[4]~output_o\ : std_logic;
SIGNAL \OUT[5]~output_o\ : std_logic;
SIGNAL \OUT[6]~output_o\ : std_logic;
SIGNAL \OUT[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Show_DATA~input_o\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Done_Flag~0_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Count[2]~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Count~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Add0~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Count~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Add0~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Count~3_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Done_Flag~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_Counter|Done_Flag~q\ : std_logic;
SIGNAL \U1_FSM|Selector2~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_Show_One_Input~q\ : std_logic;
SIGNAL \U1_FSM|Selector3~0_combout\ : std_logic;
SIGNAL \U1_FSM|Next_State.S_1~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_1~q\ : std_logic;
SIGNAL \U2_DATAPATH|U1_I|OUT[0]~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U1_I|OUT[1]~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U4_I|Not_Equal_3~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U4_I|Not_Equal_3~q\ : std_logic;
SIGNAL \U2_DATAPATH|U1_J|OUT[0]~0_combout\ : std_logic;
SIGNAL \U1_FSM|ld_j~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U1_J|OUT[1]~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U4_J|Equal0~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U4_J|Not_Equal_3~q\ : std_logic;
SIGNAL \U2_DATAPATH|U1_K|OUT[0]~1_combout\ : std_logic;
SIGNAL \U1_FSM|ld_k~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U1_K|OUT[1]~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U4_K|Equal0~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U4_K|Not_Equal_3~q\ : std_logic;
SIGNAL \U1_FSM|Next_State.S_5~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_5~q\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_6~feeder_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_6~q\ : std_logic;
SIGNAL \U1_FSM|Selector1~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_4~q\ : std_logic;
SIGNAL \U1_FSM|Next_State.S_7~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_7~q\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_8~feeder_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_8~q\ : std_logic;
SIGNAL \U1_FSM|Selector0~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_3~q\ : std_logic;
SIGNAL \U1_FSM|Next_State.S_9~0_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_9~q\ : std_logic;
SIGNAL \U1_FSM|ld_i~combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_2~q\ : std_logic;
SIGNAL \U1_FSM|Selector3~1_combout\ : std_logic;
SIGNAL \U1_FSM|Current_State.S_Show_Data~q\ : std_logic;
SIGNAL \U2_DATAPATH|U6_A|Mem~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_B|Mem~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~8_combout\ : std_logic;
SIGNAL \U1_FSM|ld_sum~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[0]~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|Add0~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[0]~1\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[1]~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|Add0~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[1]~3\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[2]~4_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|Add0~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[3]~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[2]~5\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|OUT_ADD[3]~6_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U5_C|Add0~3_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_B|Mem~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_A|Mem~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~10_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_B|Mem~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_A|Mem~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~12_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~14_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~16_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~18_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~20_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~21\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT[7]~22_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[0]~0_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[1]~1_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[2]~2_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[3]~3_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[4]~4_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[5]~5_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[6]~6_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \U2_DATAPATH|U1_Data_Out|OUT[7]~7_combout\ : std_logic;
SIGNAL \U2_DATAPATH|U2_REG_SUM|REG_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U2_DATAPATH|U7_Counter|Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2_DATAPATH|U6_B|RAM_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2_DATAPATH|U2_REG_J|REG_OUT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2_DATAPATH|U2_REG_I|REG_OUT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U2_DATAPATH|U6_A|RAM_OUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U2_DATAPATH|U2_REG_K|REG_OUT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U1_FSM|ALT_INV_Current_State.S_5~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Show_DATA <= Show_DATA;
ww_CLK <= CLK;
ww_RST <= RST;
\OUT\ <= \ww_OUT\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(7) & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(6) & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(5)
& \U2_DATAPATH|U2_REG_SUM|REG_OUT\(4) & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(3) & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(2) & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(1) & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(0));

\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U2_DATAPATH|U5_C|Add0~3_combout\ & \U2_DATAPATH|U5_C|Add0~2_combout\ & \U2_DATAPATH|U5_C|Add0~1_combout\ & \U2_DATAPATH|U5_C|Add0~0_combout\);

\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a1\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a2\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a3\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a4\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a5\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a6\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a7\ <= \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U1_FSM|ALT_INV_Current_State.S_5~q\ <= NOT \U1_FSM|Current_State.S_5~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \OUT[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[1]~1_combout\,
	devoe => ww_devoe,
	o => \OUT[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \OUT[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \OUT[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \OUT[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[5]~5_combout\,
	devoe => ww_devoe,
	o => \OUT[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[6]~6_combout\,
	devoe => ww_devoe,
	o => \OUT[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U2_DATAPATH|U1_Data_Out|OUT[7]~7_combout\,
	devoe => ww_devoe,
	o => \OUT[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G18
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y16_N8
\Show_DATA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Show_DATA,
	o => \Show_DATA~input_o\);

-- Location: LCCOMB_X35_Y19_N28
\U2_DATAPATH|U7_Counter|Done_Flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Done_Flag~0_combout\ = (!\Show_DATA~input_o\ & (!\U2_DATAPATH|U7_Counter|Count\(0) & \U1_FSM|Current_State.S_Show_Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Show_DATA~input_o\,
	datac => \U2_DATAPATH|U7_Counter|Count\(0),
	datad => \U1_FSM|Current_State.S_Show_Data~q\,
	combout => \U2_DATAPATH|U7_Counter|Done_Flag~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X35_Y19_N16
\U2_DATAPATH|U7_Counter|Count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Count[2]~0_combout\ = (\U1_FSM|Current_State.S_Show_Data~q\ & (!\Show_DATA~input_o\)) # (!\U1_FSM|Current_State.S_Show_Data~q\ & ((!\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_Show_Data~q\,
	datac => \Show_DATA~input_o\,
	datad => \U1_FSM|Current_State.S_Show_One_Input~q\,
	combout => \U2_DATAPATH|U7_Counter|Count[2]~0_combout\);

-- Location: FF_X35_Y19_N29
\U2_DATAPATH|U7_Counter|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U7_Counter|Done_Flag~0_combout\,
	clrn => \RST~input_o\,
	ena => \U2_DATAPATH|U7_Counter|Count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U7_Counter|Count\(0));

-- Location: LCCOMB_X35_Y19_N14
\U2_DATAPATH|U7_Counter|Count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Count~1_combout\ = (!\Show_DATA~input_o\ & (\U1_FSM|Current_State.S_Show_Data~q\ & (\U2_DATAPATH|U7_Counter|Count\(0) $ (\U2_DATAPATH|U7_Counter|Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_Counter|Count\(0),
	datab => \Show_DATA~input_o\,
	datac => \U2_DATAPATH|U7_Counter|Count\(1),
	datad => \U1_FSM|Current_State.S_Show_Data~q\,
	combout => \U2_DATAPATH|U7_Counter|Count~1_combout\);

-- Location: FF_X35_Y19_N15
\U2_DATAPATH|U7_Counter|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U7_Counter|Count~1_combout\,
	clrn => \RST~input_o\,
	ena => \U2_DATAPATH|U7_Counter|Count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U7_Counter|Count\(1));

-- Location: LCCOMB_X35_Y19_N30
\U2_DATAPATH|U7_Counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Add0~0_combout\ = \U2_DATAPATH|U7_Counter|Count\(2) $ (((\U2_DATAPATH|U7_Counter|Count\(0) & \U2_DATAPATH|U7_Counter|Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_Counter|Count\(0),
	datab => \U2_DATAPATH|U7_Counter|Count\(1),
	datad => \U2_DATAPATH|U7_Counter|Count\(2),
	combout => \U2_DATAPATH|U7_Counter|Add0~0_combout\);

-- Location: LCCOMB_X35_Y19_N0
\U2_DATAPATH|U7_Counter|Count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Count~2_combout\ = (\U2_DATAPATH|U7_Counter|Add0~0_combout\ & (!\Show_DATA~input_o\ & \U1_FSM|Current_State.S_Show_Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U7_Counter|Add0~0_combout\,
	datac => \Show_DATA~input_o\,
	datad => \U1_FSM|Current_State.S_Show_Data~q\,
	combout => \U2_DATAPATH|U7_Counter|Count~2_combout\);

-- Location: FF_X35_Y19_N1
\U2_DATAPATH|U7_Counter|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U7_Counter|Count~2_combout\,
	clrn => \RST~input_o\,
	ena => \U2_DATAPATH|U7_Counter|Count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U7_Counter|Count\(2));

-- Location: LCCOMB_X35_Y19_N24
\U2_DATAPATH|U7_Counter|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Add0~1_combout\ = \U2_DATAPATH|U7_Counter|Count\(3) $ (((\U2_DATAPATH|U7_Counter|Count\(0) & (\U2_DATAPATH|U7_Counter|Count\(1) & \U2_DATAPATH|U7_Counter|Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_Counter|Count\(0),
	datab => \U2_DATAPATH|U7_Counter|Count\(3),
	datac => \U2_DATAPATH|U7_Counter|Count\(1),
	datad => \U2_DATAPATH|U7_Counter|Count\(2),
	combout => \U2_DATAPATH|U7_Counter|Add0~1_combout\);

-- Location: LCCOMB_X35_Y19_N10
\U2_DATAPATH|U7_Counter|Count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Count~3_combout\ = (\U2_DATAPATH|U7_Counter|Add0~1_combout\ & (!\Show_DATA~input_o\ & \U1_FSM|Current_State.S_Show_Data~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U7_Counter|Add0~1_combout\,
	datac => \Show_DATA~input_o\,
	datad => \U1_FSM|Current_State.S_Show_Data~q\,
	combout => \U2_DATAPATH|U7_Counter|Count~3_combout\);

-- Location: FF_X35_Y19_N11
\U2_DATAPATH|U7_Counter|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U7_Counter|Count~3_combout\,
	clrn => \RST~input_o\,
	ena => \U2_DATAPATH|U7_Counter|Count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U7_Counter|Count\(3));

-- Location: LCCOMB_X35_Y19_N4
\U2_DATAPATH|U7_Counter|Done_Flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_Counter|Done_Flag~1_combout\ = (\U2_DATAPATH|U7_Counter|Count\(3) & (\U2_DATAPATH|U7_Counter|Done_Flag~0_combout\ & (!\U2_DATAPATH|U7_Counter|Count\(1) & !\U2_DATAPATH|U7_Counter|Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_Counter|Count\(3),
	datab => \U2_DATAPATH|U7_Counter|Done_Flag~0_combout\,
	datac => \U2_DATAPATH|U7_Counter|Count\(1),
	datad => \U2_DATAPATH|U7_Counter|Count\(2),
	combout => \U2_DATAPATH|U7_Counter|Done_Flag~1_combout\);

-- Location: FF_X35_Y19_N5
\U2_DATAPATH|U7_Counter|Done_Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U7_Counter|Done_Flag~1_combout\,
	clrn => \RST~input_o\,
	ena => \U2_DATAPATH|U7_Counter|Count[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U7_Counter|Done_Flag~q\);

-- Location: LCCOMB_X35_Y19_N8
\U1_FSM|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Selector2~0_combout\ = (!\Show_DATA~input_o\ & ((\U1_FSM|Current_State.S_Show_One_Input~q\) # ((!\U2_DATAPATH|U7_Counter|Done_Flag~q\ & \U1_FSM|Current_State.S_Show_Data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_Counter|Done_Flag~q\,
	datab => \Show_DATA~input_o\,
	datac => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datad => \U1_FSM|Current_State.S_Show_Data~q\,
	combout => \U1_FSM|Selector2~0_combout\);

-- Location: FF_X35_Y19_N9
\U1_FSM|Current_State.S_Show_One_Input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Selector2~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_Show_One_Input~q\);

-- Location: LCCOMB_X34_Y20_N8
\U1_FSM|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Selector3~0_combout\ = (\Show_DATA~input_o\ & ((\U1_FSM|Current_State.S_Show_One_Input~q\) # ((\U1_FSM|Current_State.S_Show_Data~q\ & !\U2_DATAPATH|U7_Counter|Done_Flag~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U7_Counter|Done_Flag~q\,
	datad => \Show_DATA~input_o\,
	combout => \U1_FSM|Selector3~0_combout\);

-- Location: LCCOMB_X35_Y19_N2
\U1_FSM|Next_State.S_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Next_State.S_1~0_combout\ = (!\U2_DATAPATH|U7_Counter|Done_Flag~q\) # (!\U1_FSM|Current_State.S_Show_Data~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_Show_Data~q\,
	datac => \U2_DATAPATH|U7_Counter|Done_Flag~q\,
	combout => \U1_FSM|Next_State.S_1~0_combout\);

-- Location: FF_X35_Y19_N3
\U1_FSM|Current_State.S_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Next_State.S_1~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_1~q\);

-- Location: LCCOMB_X37_Y20_N16
\U2_DATAPATH|U1_I|OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_I|OUT[0]~0_combout\ = (\U1_FSM|Current_State.S_9~q\ & (!\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & \U2_DATAPATH|U4_I|Not_Equal_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_9~q\,
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datad => \U2_DATAPATH|U4_I|Not_Equal_3~q\,
	combout => \U2_DATAPATH|U1_I|OUT[0]~0_combout\);

-- Location: FF_X37_Y20_N17
\U2_DATAPATH|U2_REG_I|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U1_I|OUT[0]~0_combout\,
	clrn => \RST~input_o\,
	ena => \U1_FSM|ld_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_I|REG_OUT\(0));

-- Location: LCCOMB_X37_Y20_N26
\U2_DATAPATH|U1_I|OUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_I|OUT[1]~1_combout\ = (\U1_FSM|Current_State.S_9~q\ & (\U2_DATAPATH|U4_I|Not_Equal_3~q\ & (\U2_DATAPATH|U2_REG_I|REG_OUT\(0) $ (\U2_DATAPATH|U2_REG_I|REG_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_9~q\,
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	datad => \U2_DATAPATH|U4_I|Not_Equal_3~q\,
	combout => \U2_DATAPATH|U1_I|OUT[1]~1_combout\);

-- Location: FF_X37_Y20_N27
\U2_DATAPATH|U2_REG_I|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U1_I|OUT[1]~1_combout\,
	clrn => \RST~input_o\,
	ena => \U1_FSM|ld_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_I|REG_OUT\(1));

-- Location: LCCOMB_X37_Y20_N30
\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\ = (!\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & \U2_DATAPATH|U2_REG_I|REG_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	combout => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\);

-- Location: LCCOMB_X37_Y20_N18
\U2_DATAPATH|U4_I|Not_Equal_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U4_I|Not_Equal_3~0_combout\ = !\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\,
	combout => \U2_DATAPATH|U4_I|Not_Equal_3~0_combout\);

-- Location: FF_X37_Y20_N19
\U2_DATAPATH|U4_I|Not_Equal_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U4_I|Not_Equal_3~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U4_I|Not_Equal_3~q\);

-- Location: LCCOMB_X38_Y19_N0
\U2_DATAPATH|U1_J|OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_J|OUT[0]~0_combout\ = (\U2_DATAPATH|U4_J|Not_Equal_3~q\ & (!\U2_DATAPATH|U2_REG_J|REG_OUT\(0) & \U1_FSM|Current_State.S_8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U4_J|Not_Equal_3~q\,
	datac => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	datad => \U1_FSM|Current_State.S_8~q\,
	combout => \U2_DATAPATH|U1_J|OUT[0]~0_combout\);

-- Location: LCCOMB_X37_Y19_N16
\U1_FSM|ld_j\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|ld_j~combout\ = (\U1_FSM|Current_State.S_8~q\) # (!\U1_FSM|Current_State.S_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|Current_State.S_1~q\,
	datad => \U1_FSM|Current_State.S_8~q\,
	combout => \U1_FSM|ld_j~combout\);

-- Location: FF_X38_Y19_N1
\U2_DATAPATH|U2_REG_J|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U1_J|OUT[0]~0_combout\,
	clrn => \RST~input_o\,
	ena => \U1_FSM|ld_j~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_J|REG_OUT\(0));

-- Location: LCCOMB_X38_Y19_N10
\U2_DATAPATH|U1_J|OUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_J|OUT[1]~1_combout\ = (\U2_DATAPATH|U4_J|Not_Equal_3~q\ & (\U1_FSM|Current_State.S_8~q\ & (\U2_DATAPATH|U2_REG_J|REG_OUT\(0) $ (\U2_DATAPATH|U2_REG_J|REG_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U4_J|Not_Equal_3~q\,
	datab => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_J|REG_OUT\(1),
	datad => \U1_FSM|Current_State.S_8~q\,
	combout => \U2_DATAPATH|U1_J|OUT[1]~1_combout\);

-- Location: FF_X38_Y19_N11
\U2_DATAPATH|U2_REG_J|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U1_J|OUT[1]~1_combout\,
	clrn => \RST~input_o\,
	ena => \U1_FSM|ld_j~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_J|REG_OUT\(1));

-- Location: LCCOMB_X38_Y19_N6
\U2_DATAPATH|U4_J|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U4_J|Equal0~0_combout\ = (\U2_DATAPATH|U2_REG_J|REG_OUT\(0)) # (!\U2_DATAPATH|U2_REG_J|REG_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	datad => \U2_DATAPATH|U2_REG_J|REG_OUT\(1),
	combout => \U2_DATAPATH|U4_J|Equal0~0_combout\);

-- Location: FF_X38_Y19_N7
\U2_DATAPATH|U4_J|Not_Equal_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U4_J|Equal0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U4_J|Not_Equal_3~q\);

-- Location: LCCOMB_X41_Y19_N10
\U2_DATAPATH|U1_K|OUT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_K|OUT[0]~1_combout\ = (\U2_DATAPATH|U4_K|Not_Equal_3~q\ & (!\U2_DATAPATH|U2_REG_K|REG_OUT\(0) & \U1_FSM|Current_State.S_6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U4_K|Not_Equal_3~q\,
	datac => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	datad => \U1_FSM|Current_State.S_6~q\,
	combout => \U2_DATAPATH|U1_K|OUT[0]~1_combout\);

-- Location: LCCOMB_X41_Y19_N14
\U1_FSM|ld_k\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|ld_k~combout\ = (\U1_FSM|Current_State.S_6~q\) # (!\U1_FSM|Current_State.S_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_1~q\,
	datad => \U1_FSM|Current_State.S_6~q\,
	combout => \U1_FSM|ld_k~combout\);

-- Location: FF_X41_Y19_N11
\U2_DATAPATH|U2_REG_K|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U1_K|OUT[0]~1_combout\,
	clrn => \RST~input_o\,
	ena => \U1_FSM|ld_k~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_K|REG_OUT\(0));

-- Location: LCCOMB_X41_Y19_N24
\U2_DATAPATH|U1_K|OUT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_K|OUT[1]~0_combout\ = (\U1_FSM|Current_State.S_6~q\ & (\U2_DATAPATH|U4_K|Not_Equal_3~q\ & (\U2_DATAPATH|U2_REG_K|REG_OUT\(1) $ (\U2_DATAPATH|U2_REG_K|REG_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_6~q\,
	datab => \U2_DATAPATH|U4_K|Not_Equal_3~q\,
	datac => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	combout => \U2_DATAPATH|U1_K|OUT[1]~0_combout\);

-- Location: FF_X41_Y19_N25
\U2_DATAPATH|U2_REG_K|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U1_K|OUT[1]~0_combout\,
	clrn => \RST~input_o\,
	ena => \U1_FSM|ld_k~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_K|REG_OUT\(1));

-- Location: LCCOMB_X41_Y19_N2
\U2_DATAPATH|U4_K|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U4_K|Equal0~0_combout\ = (\U2_DATAPATH|U2_REG_K|REG_OUT\(0)) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	combout => \U2_DATAPATH|U4_K|Equal0~0_combout\);

-- Location: FF_X41_Y19_N3
\U2_DATAPATH|U4_K|Not_Equal_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U4_K|Equal0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U4_K|Not_Equal_3~q\);

-- Location: LCCOMB_X41_Y19_N28
\U1_FSM|Next_State.S_5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Next_State.S_5~0_combout\ = (\U1_FSM|Current_State.S_4~q\ & \U2_DATAPATH|U4_K|Not_Equal_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_4~q\,
	datad => \U2_DATAPATH|U4_K|Not_Equal_3~q\,
	combout => \U1_FSM|Next_State.S_5~0_combout\);

-- Location: FF_X41_Y19_N29
\U1_FSM|Current_State.S_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Next_State.S_5~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_5~q\);

-- Location: LCCOMB_X41_Y19_N12
\U1_FSM|Current_State.S_6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Current_State.S_6~feeder_combout\ = \U1_FSM|Current_State.S_5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_FSM|Current_State.S_5~q\,
	combout => \U1_FSM|Current_State.S_6~feeder_combout\);

-- Location: FF_X41_Y19_N13
\U1_FSM|Current_State.S_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Current_State.S_6~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_6~q\);

-- Location: LCCOMB_X38_Y19_N12
\U1_FSM|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Selector1~0_combout\ = (\U1_FSM|Current_State.S_6~q\) # ((\U1_FSM|Current_State.S_3~q\ & \U2_DATAPATH|U4_J|Not_Equal_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_3~q\,
	datac => \U2_DATAPATH|U4_J|Not_Equal_3~q\,
	datad => \U1_FSM|Current_State.S_6~q\,
	combout => \U1_FSM|Selector1~0_combout\);

-- Location: FF_X38_Y19_N13
\U1_FSM|Current_State.S_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Selector1~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_4~q\);

-- Location: LCCOMB_X41_Y19_N0
\U1_FSM|Next_State.S_7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Next_State.S_7~0_combout\ = (\U1_FSM|Current_State.S_4~q\ & !\U2_DATAPATH|U4_K|Not_Equal_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_4~q\,
	datad => \U2_DATAPATH|U4_K|Not_Equal_3~q\,
	combout => \U1_FSM|Next_State.S_7~0_combout\);

-- Location: FF_X41_Y19_N1
\U1_FSM|Current_State.S_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Next_State.S_7~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_7~q\);

-- Location: LCCOMB_X41_Y19_N22
\U1_FSM|Current_State.S_8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Current_State.S_8~feeder_combout\ = \U1_FSM|Current_State.S_7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U1_FSM|Current_State.S_7~q\,
	combout => \U1_FSM|Current_State.S_8~feeder_combout\);

-- Location: FF_X41_Y19_N23
\U1_FSM|Current_State.S_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Current_State.S_8~feeder_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_8~q\);

-- Location: LCCOMB_X35_Y19_N26
\U1_FSM|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Selector0~0_combout\ = (\U1_FSM|Current_State.S_8~q\) # ((\U2_DATAPATH|U4_I|Not_Equal_3~q\ & \U1_FSM|Current_State.S_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U4_I|Not_Equal_3~q\,
	datac => \U1_FSM|Current_State.S_2~q\,
	datad => \U1_FSM|Current_State.S_8~q\,
	combout => \U1_FSM|Selector0~0_combout\);

-- Location: FF_X35_Y19_N27
\U1_FSM|Current_State.S_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Selector0~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_3~q\);

-- Location: LCCOMB_X35_Y19_N12
\U1_FSM|Next_State.S_9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Next_State.S_9~0_combout\ = (\U1_FSM|Current_State.S_3~q\ & !\U2_DATAPATH|U4_J|Not_Equal_3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|Current_State.S_3~q\,
	datad => \U2_DATAPATH|U4_J|Not_Equal_3~q\,
	combout => \U1_FSM|Next_State.S_9~0_combout\);

-- Location: FF_X35_Y19_N13
\U1_FSM|Current_State.S_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Next_State.S_9~0_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_9~q\);

-- Location: LCCOMB_X35_Y19_N22
\U1_FSM|ld_i\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|ld_i~combout\ = (\U1_FSM|Current_State.S_9~q\) # (!\U1_FSM|Current_State.S_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_1~q\,
	datad => \U1_FSM|Current_State.S_9~q\,
	combout => \U1_FSM|ld_i~combout\);

-- Location: FF_X35_Y19_N31
\U1_FSM|Current_State.S_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U1_FSM|ld_i~combout\,
	clrn => \RST~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_2~q\);

-- Location: LCCOMB_X35_Y19_N18
\U1_FSM|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|Selector3~1_combout\ = (\U1_FSM|Selector3~0_combout\) # ((\U1_FSM|Current_State.S_2~q\ & !\U2_DATAPATH|U4_I|Not_Equal_3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Selector3~0_combout\,
	datac => \U1_FSM|Current_State.S_2~q\,
	datad => \U2_DATAPATH|U4_I|Not_Equal_3~q\,
	combout => \U1_FSM|Selector3~1_combout\);

-- Location: FF_X35_Y19_N19
\U1_FSM|Current_State.S_Show_Data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U1_FSM|Selector3~1_combout\,
	clrn => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1_FSM|Current_State.S_Show_Data~q\);

-- Location: LCCOMB_X37_Y20_N20
\U2_DATAPATH|U6_A|Mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U6_A|Mem~0_combout\ = (\U2_DATAPATH|U2_REG_I|REG_OUT\(1) & (!\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & (\U2_DATAPATH|U2_REG_K|REG_OUT\(1) $ (\U2_DATAPATH|U2_REG_K|REG_OUT\(0))))) # (!\U2_DATAPATH|U2_REG_I|REG_OUT\(1) & 
-- (((\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & !\U2_DATAPATH|U2_REG_I|REG_OUT\(0))) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	combout => \U2_DATAPATH|U6_A|Mem~0_combout\);

-- Location: FF_X37_Y20_N21
\U2_DATAPATH|U6_A|RAM_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U6_A|Mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U6_A|RAM_OUT\(0));

-- Location: LCCOMB_X37_Y20_N6
\U2_DATAPATH|U6_B|Mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U6_B|Mem~0_combout\ = (\U2_DATAPATH|U2_REG_K|REG_OUT\(0) & (((!\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & \U2_DATAPATH|U2_REG_J|REG_OUT\(0))))) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(0) & (!\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & 
-- ((!\U2_DATAPATH|U2_REG_J|REG_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_J|REG_OUT\(1),
	datab => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	combout => \U2_DATAPATH|U6_B|Mem~0_combout\);

-- Location: FF_X37_Y20_N7
\U2_DATAPATH|U6_B|RAM_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U6_B|Mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U6_B|RAM_OUT\(0));

-- Location: LCCOMB_X36_Y20_N26
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\ = (\U2_DATAPATH|U6_A|RAM_OUT\(0) & \U2_DATAPATH|U6_B|RAM_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U6_A|RAM_OUT\(0),
	datad => \U2_DATAPATH|U6_B|RAM_OUT\(0),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X36_Y20_N0
\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~8_combout\ = (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\ & (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(0) $ (VCC))) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\ & 
-- (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(0) & VCC))
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\ & \U2_DATAPATH|U2_REG_SUM|REG_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(0),
	datad => VCC,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~8_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\);

-- Location: LCCOMB_X36_Y20_N24
\U1_FSM|ld_sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \U1_FSM|ld_sum~combout\ = (\U1_FSM|Current_State.S_5~q\) # (\U1_FSM|Current_State.S_8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U1_FSM|Current_State.S_5~q\,
	datad => \U1_FSM|Current_State.S_8~q\,
	combout => \U1_FSM|ld_sum~combout\);

-- Location: FF_X36_Y20_N1
\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~8_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(0));

-- Location: LCCOMB_X37_Y20_N8
\U2_DATAPATH|U5_C|OUT_ADD[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|OUT_ADD[0]~0_combout\ = (\U2_DATAPATH|U2_REG_J|REG_OUT\(0) & (\U2_DATAPATH|U2_REG_I|REG_OUT\(0) $ (VCC))) # (!\U2_DATAPATH|U2_REG_J|REG_OUT\(0) & (\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & VCC))
-- \U2_DATAPATH|U5_C|OUT_ADD[0]~1\ = CARRY((\U2_DATAPATH|U2_REG_J|REG_OUT\(0) & \U2_DATAPATH|U2_REG_I|REG_OUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datad => VCC,
	combout => \U2_DATAPATH|U5_C|OUT_ADD[0]~0_combout\,
	cout => \U2_DATAPATH|U5_C|OUT_ADD[0]~1\);

-- Location: LCCOMB_X34_Y20_N0
\U2_DATAPATH|U5_C|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|Add0~0_combout\ = (\U1_FSM|Current_State.S_Show_Data~q\ & (((\U2_DATAPATH|U7_Counter|Count\(0))))) # (!\U1_FSM|Current_State.S_Show_Data~q\ & ((\U1_FSM|Current_State.S_Show_One_Input~q\ & (\U2_DATAPATH|U7_Counter|Count\(0))) # 
-- (!\U1_FSM|Current_State.S_Show_One_Input~q\ & ((\U2_DATAPATH|U5_C|OUT_ADD[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U7_Counter|Count\(0),
	datad => \U2_DATAPATH|U5_C|OUT_ADD[0]~0_combout\,
	combout => \U2_DATAPATH|U5_C|Add0~0_combout\);

-- Location: LCCOMB_X37_Y20_N28
\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ = \U2_DATAPATH|U2_REG_I|REG_OUT\(0) $ (\U2_DATAPATH|U2_REG_I|REG_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	combout => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\);

-- Location: LCCOMB_X37_Y20_N10
\U2_DATAPATH|U5_C|OUT_ADD[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|OUT_ADD[1]~2_combout\ = (\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & ((\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ & (\U2_DATAPATH|U5_C|OUT_ADD[0]~1\ & VCC)) # (!\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ & 
-- (!\U2_DATAPATH|U5_C|OUT_ADD[0]~1\)))) # (!\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & ((\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ & (!\U2_DATAPATH|U5_C|OUT_ADD[0]~1\)) # (!\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ & 
-- ((\U2_DATAPATH|U5_C|OUT_ADD[0]~1\) # (GND)))))
-- \U2_DATAPATH|U5_C|OUT_ADD[1]~3\ = CARRY((\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & (!\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\ & !\U2_DATAPATH|U5_C|OUT_ADD[0]~1\)) # (!\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & ((!\U2_DATAPATH|U5_C|OUT_ADD[0]~1\) # 
-- (!\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_J|REG_OUT\(1),
	datab => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[1]~0_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U5_C|OUT_ADD[0]~1\,
	combout => \U2_DATAPATH|U5_C|OUT_ADD[1]~2_combout\,
	cout => \U2_DATAPATH|U5_C|OUT_ADD[1]~3\);

-- Location: LCCOMB_X34_Y20_N18
\U2_DATAPATH|U5_C|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|Add0~1_combout\ = (\U1_FSM|Current_State.S_Show_Data~q\ & (((\U2_DATAPATH|U7_Counter|Count\(1))))) # (!\U1_FSM|Current_State.S_Show_Data~q\ & ((\U1_FSM|Current_State.S_Show_One_Input~q\ & ((\U2_DATAPATH|U7_Counter|Count\(1)))) # 
-- (!\U1_FSM|Current_State.S_Show_One_Input~q\ & (\U2_DATAPATH|U5_C|OUT_ADD[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U2_DATAPATH|U5_C|OUT_ADD[1]~2_combout\,
	datac => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datad => \U2_DATAPATH|U7_Counter|Count\(1),
	combout => \U2_DATAPATH|U5_C|Add0~1_combout\);

-- Location: LCCOMB_X37_Y20_N12
\U2_DATAPATH|U5_C|OUT_ADD[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|OUT_ADD[2]~4_combout\ = (\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\ & (\U2_DATAPATH|U5_C|OUT_ADD[1]~3\ $ (GND))) # (!\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\ & (!\U2_DATAPATH|U5_C|OUT_ADD[1]~3\ & 
-- VCC))
-- \U2_DATAPATH|U5_C|OUT_ADD[2]~5\ = CARRY((\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\ & !\U2_DATAPATH|U5_C|OUT_ADD[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[2]~1_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U5_C|OUT_ADD[1]~3\,
	combout => \U2_DATAPATH|U5_C|OUT_ADD[2]~4_combout\,
	cout => \U2_DATAPATH|U5_C|OUT_ADD[2]~5\);

-- Location: LCCOMB_X34_Y20_N20
\U2_DATAPATH|U5_C|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|Add0~2_combout\ = (\U1_FSM|Current_State.S_Show_Data~q\ & (\U2_DATAPATH|U7_Counter|Count\(2))) # (!\U1_FSM|Current_State.S_Show_Data~q\ & ((\U1_FSM|Current_State.S_Show_One_Input~q\ & (\U2_DATAPATH|U7_Counter|Count\(2))) # 
-- (!\U1_FSM|Current_State.S_Show_One_Input~q\ & ((\U2_DATAPATH|U5_C|OUT_ADD[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U2_DATAPATH|U7_Counter|Count\(2),
	datac => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datad => \U2_DATAPATH|U5_C|OUT_ADD[2]~4_combout\,
	combout => \U2_DATAPATH|U5_C|Add0~2_combout\);

-- Location: LCCOMB_X37_Y20_N24
\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[3]~2_combout\ = (\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & \U2_DATAPATH|U2_REG_I|REG_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	combout => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[3]~2_combout\);

-- Location: LCCOMB_X37_Y20_N14
\U2_DATAPATH|U5_C|OUT_ADD[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|OUT_ADD[3]~6_combout\ = \U2_DATAPATH|U5_C|OUT_ADD[2]~5\ $ (\U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U2_DATAPATH|U5_C|X1_MUL|Mult0|mult_core|result[3]~2_combout\,
	cin => \U2_DATAPATH|U5_C|OUT_ADD[2]~5\,
	combout => \U2_DATAPATH|U5_C|OUT_ADD[3]~6_combout\);

-- Location: LCCOMB_X34_Y20_N14
\U2_DATAPATH|U5_C|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U5_C|Add0~3_combout\ = (\U1_FSM|Current_State.S_Show_Data~q\ & (((\U2_DATAPATH|U7_Counter|Count\(3))))) # (!\U1_FSM|Current_State.S_Show_Data~q\ & ((\U1_FSM|Current_State.S_Show_One_Input~q\ & (\U2_DATAPATH|U7_Counter|Count\(3))) # 
-- (!\U1_FSM|Current_State.S_Show_One_Input~q\ & ((\U2_DATAPATH|U5_C|OUT_ADD[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U7_Counter|Count\(3),
	datad => \U2_DATAPATH|U5_C|OUT_ADD[3]~6_combout\,
	combout => \U2_DATAPATH|U5_C|Add0~3_combout\);

-- Location: LCCOMB_X37_Y20_N2
\U2_DATAPATH|U6_B|Mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U6_B|Mem~1_combout\ = (!\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & (!\U2_DATAPATH|U2_REG_K|REG_OUT\(0) & ((\U2_DATAPATH|U2_REG_J|REG_OUT\(0)) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_J|REG_OUT\(1),
	datab => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	combout => \U2_DATAPATH|U6_B|Mem~1_combout\);

-- Location: FF_X37_Y20_N3
\U2_DATAPATH|U6_B|RAM_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U6_B|Mem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U6_B|RAM_OUT\(1));

-- Location: LCCOMB_X40_Y22_N26
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\ = (\U2_DATAPATH|U6_A|RAM_OUT\(0) & \U2_DATAPATH|U6_B|RAM_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U6_A|RAM_OUT\(0),
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(1),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X37_Y20_N0
\U2_DATAPATH|U6_A|Mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U6_A|Mem~1_combout\ = (\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & ((\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & (!\U2_DATAPATH|U2_REG_I|REG_OUT\(1) & \U2_DATAPATH|U2_REG_K|REG_OUT\(0))) # (!\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & 
-- ((!\U2_DATAPATH|U2_REG_K|REG_OUT\(0)))))) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & (!\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & ((\U2_DATAPATH|U2_REG_I|REG_OUT\(1)) # (\U2_DATAPATH|U2_REG_K|REG_OUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	combout => \U2_DATAPATH|U6_A|Mem~1_combout\);

-- Location: FF_X37_Y20_N1
\U2_DATAPATH|U6_A|RAM_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U6_A|Mem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U6_A|RAM_OUT\(1));

-- Location: LCCOMB_X40_Y22_N16
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\ = (\U2_DATAPATH|U6_B|RAM_OUT\(0) & \U2_DATAPATH|U6_A|RAM_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(0),
	datad => \U2_DATAPATH|U6_A|RAM_OUT\(1),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X40_Y22_N8
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\ & (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\ $ (VCC))) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\ & (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\ & VCC))
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\ & \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X36_Y20_N2
\U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~10_combout\ = (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(1) & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\ & VCC)) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\)))) # (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(1) & 
-- ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\)) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & 
-- ((\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\) # (GND)))))
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\ = CARRY((\U2_DATAPATH|U2_REG_SUM|REG_OUT\(1) & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & !\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\)) # 
-- (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(1) & ((!\U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(1),
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[0]~9\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~10_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\);

-- Location: FF_X36_Y20_N3
\U2_DATAPATH|U2_REG_SUM|REG_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~10_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(1));

-- Location: LCCOMB_X37_Y20_N22
\U2_DATAPATH|U6_B|Mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U6_B|Mem~2_combout\ = (\U2_DATAPATH|U2_REG_K|REG_OUT\(0) & (\U2_DATAPATH|U2_REG_J|REG_OUT\(1) & (!\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & \U2_DATAPATH|U2_REG_J|REG_OUT\(0)))) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(0) & 
-- (\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & ((!\U2_DATAPATH|U2_REG_J|REG_OUT\(0)) # (!\U2_DATAPATH|U2_REG_J|REG_OUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_J|REG_OUT\(1),
	datab => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_J|REG_OUT\(0),
	combout => \U2_DATAPATH|U6_B|Mem~2_combout\);

-- Location: FF_X37_Y20_N23
\U2_DATAPATH|U6_B|RAM_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U6_B|Mem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U6_B|RAM_OUT\(2));

-- Location: LCCOMB_X39_Y21_N8
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\ = (\U2_DATAPATH|U6_B|RAM_OUT\(2) & \U2_DATAPATH|U6_A|RAM_OUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U6_B|RAM_OUT\(2),
	datac => \U2_DATAPATH|U6_A|RAM_OUT\(0),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X40_Y22_N22
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\ = (\U2_DATAPATH|U6_B|RAM_OUT\(1) & \U2_DATAPATH|U6_A|RAM_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(1),
	datad => \U2_DATAPATH|U6_A|RAM_OUT\(1),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X37_Y20_N4
\U2_DATAPATH|U6_A|Mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U6_A|Mem~2_combout\ = (\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & (!\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & (\U2_DATAPATH|U2_REG_I|REG_OUT\(1) $ (\U2_DATAPATH|U2_REG_K|REG_OUT\(0))))) # (!\U2_DATAPATH|U2_REG_K|REG_OUT\(1) & 
-- (\U2_DATAPATH|U2_REG_I|REG_OUT\(0) & (!\U2_DATAPATH|U2_REG_I|REG_OUT\(1) & !\U2_DATAPATH|U2_REG_K|REG_OUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_K|REG_OUT\(1),
	datab => \U2_DATAPATH|U2_REG_I|REG_OUT\(0),
	datac => \U2_DATAPATH|U2_REG_I|REG_OUT\(1),
	datad => \U2_DATAPATH|U2_REG_K|REG_OUT\(0),
	combout => \U2_DATAPATH|U6_A|Mem~2_combout\);

-- Location: FF_X37_Y20_N5
\U2_DATAPATH|U6_A|RAM_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U6_A|Mem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U6_A|RAM_OUT\(2));

-- Location: LCCOMB_X40_Y22_N4
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ = (\U2_DATAPATH|U6_B|RAM_OUT\(0) & \U2_DATAPATH|U6_A|RAM_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(0),
	datad => \U2_DATAPATH|U6_A|RAM_OUT\(2),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X40_Y22_N10
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) 
-- # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- !\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X39_Y21_N22
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X36_Y20_N4
\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~12_combout\ = ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ $ (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(2) $ (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\)))) # (GND)
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & ((\U2_DATAPATH|U2_REG_SUM|REG_OUT\(2)) # (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\))) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(2) & !\U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(2),
	datad => VCC,
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[1]~11\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~12_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\);

-- Location: FF_X36_Y20_N5
\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~12_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(2));

-- Location: LCCOMB_X39_Y21_N10
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\ = (\U2_DATAPATH|U6_B|RAM_OUT\(2) & \U2_DATAPATH|U6_A|RAM_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(2),
	datad => \U2_DATAPATH|U6_A|RAM_OUT\(1),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X40_Y22_N24
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\ = (\U2_DATAPATH|U6_A|RAM_OUT\(2) & \U2_DATAPATH|U6_B|RAM_OUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U6_A|RAM_OUT\(2),
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(1),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X40_Y22_N12
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\ & (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ 
-- (GND))) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\ & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\ & !\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X39_Y21_N24
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\ & ((!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][1]~combout\,
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X36_Y20_N6
\U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~14_combout\ = (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(3) & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\ & VCC)) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\)))) # (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(3) & 
-- ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\)) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ 
-- & ((\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\) # (GND)))))
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\ = CARRY((\U2_DATAPATH|U2_REG_SUM|REG_OUT\(3) & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & !\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\)) # 
-- (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(3) & ((!\U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(3),
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[2]~13\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~14_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\);

-- Location: FF_X36_Y20_N7
\U2_DATAPATH|U2_REG_SUM|REG_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~14_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(3));

-- Location: LCCOMB_X39_Y21_N12
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\ = (\U2_DATAPATH|U6_B|RAM_OUT\(2) & \U2_DATAPATH|U6_A|RAM_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U2_DATAPATH|U6_B|RAM_OUT\(2),
	datad => \U2_DATAPATH|U6_A|RAM_OUT\(2),
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X40_Y22_N14
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X39_Y21_N26
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\ $ 
-- (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\ & (\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- !\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|decoder_node[2][2]~combout\,
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X36_Y20_N8
\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~16_combout\ = ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ $ (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(4) $ (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\)))) # (GND)
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\ = CARRY((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & ((\U2_DATAPATH|U2_REG_SUM|REG_OUT\(4)) # (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\))) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(4) & !\U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datab => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(4),
	datad => VCC,
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[3]~15\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~16_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\);

-- Location: FF_X36_Y20_N9
\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~16_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(4));

-- Location: LCCOMB_X39_Y21_N28
\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X36_Y20_N10
\U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~18_combout\ = (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(5) & ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\ & VCC)) # 
-- (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\)))) # (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(5) & 
-- ((\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\)) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ 
-- & ((\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\) # (GND)))))
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\ = CARRY((\U2_DATAPATH|U2_REG_SUM|REG_OUT\(5) & (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\)) # 
-- (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(5) & ((!\U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\) # (!\U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(5),
	datab => \U2_DATAPATH|U7_SUM|X1_MUL|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[4]~17\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~18_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\);

-- Location: FF_X36_Y20_N11
\U2_DATAPATH|U2_REG_SUM|REG_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~18_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(5));

-- Location: LCCOMB_X36_Y20_N12
\U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~20_combout\ = (\U2_DATAPATH|U2_REG_SUM|REG_OUT\(6) & (\U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\ $ (GND))) # (!\U2_DATAPATH|U2_REG_SUM|REG_OUT\(6) & (!\U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\ & VCC))
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~21\ = CARRY((\U2_DATAPATH|U2_REG_SUM|REG_OUT\(6) & !\U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(6),
	datad => VCC,
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[5]~19\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~20_combout\,
	cout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~21\);

-- Location: FF_X36_Y20_N13
\U2_DATAPATH|U2_REG_SUM|REG_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~20_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(6));

-- Location: LCCOMB_X36_Y20_N14
\U2_DATAPATH|U2_REG_SUM|REG_OUT[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U2_REG_SUM|REG_OUT[7]~22_combout\ = \U2_DATAPATH|U2_REG_SUM|REG_OUT\(7) $ (\U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(7),
	cin => \U2_DATAPATH|U2_REG_SUM|REG_OUT[6]~21\,
	combout => \U2_DATAPATH|U2_REG_SUM|REG_OUT[7]~22_combout\);

-- Location: FF_X36_Y20_N15
\U2_DATAPATH|U2_REG_SUM|REG_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U2_DATAPATH|U2_REG_SUM|REG_OUT[7]~22_combout\,
	clrn => \RST~input_o\,
	sclr => \U1_FSM|ALT_INV_Current_State.S_5~q\,
	ena => \U1_FSM|ld_sum~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2_DATAPATH|U2_REG_SUM|REG_OUT\(7));

-- Location: M9K_X33_Y20_N0
\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/Top_Module.ram0_ROM_3X9_c_Matrix_ab8f8d07.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Datapath:U2_DATAPATH|ROM_3X9_c_Matrix:U6_C|altsyncram:Mem_rtl_0|altsyncram_c5e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \U1_FSM|Current_State.S_7~q\,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X34_Y22_N16
\U2_DATAPATH|U1_Data_Out|OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[0]~0_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_Show_Data~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \U1_FSM|Current_State.S_Show_One_Input~q\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[0]~0_combout\);

-- Location: LCCOMB_X34_Y22_N18
\U2_DATAPATH|U1_Data_Out|OUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[1]~1_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a1\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_Show_Data~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a1\,
	datad => \U1_FSM|Current_State.S_Show_One_Input~q\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[1]~1_combout\);

-- Location: LCCOMB_X34_Y22_N12
\U2_DATAPATH|U1_Data_Out|OUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[2]~2_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a2\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_Show_Data~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \U1_FSM|Current_State.S_Show_One_Input~q\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[2]~2_combout\);

-- Location: LCCOMB_X34_Y20_N24
\U2_DATAPATH|U1_Data_Out|OUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[3]~3_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a3\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[3]~3_combout\);

-- Location: LCCOMB_X34_Y22_N14
\U2_DATAPATH|U1_Data_Out|OUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[4]~4_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a4\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U1_FSM|Current_State.S_Show_Data~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a4\,
	datad => \U1_FSM|Current_State.S_Show_One_Input~q\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[4]~4_combout\);

-- Location: LCCOMB_X34_Y20_N2
\U2_DATAPATH|U1_Data_Out|OUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[5]~5_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a5\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[5]~5_combout\);

-- Location: LCCOMB_X34_Y20_N12
\U2_DATAPATH|U1_Data_Out|OUT[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[6]~6_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a6\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[6]~6_combout\);

-- Location: LCCOMB_X34_Y20_N30
\U2_DATAPATH|U1_Data_Out|OUT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U2_DATAPATH|U1_Data_Out|OUT[7]~7_combout\ = (\U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a7\ & ((\U1_FSM|Current_State.S_Show_Data~q\) # (\U1_FSM|Current_State.S_Show_One_Input~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U1_FSM|Current_State.S_Show_Data~q\,
	datab => \U1_FSM|Current_State.S_Show_One_Input~q\,
	datac => \U2_DATAPATH|U6_C|Mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \U2_DATAPATH|U1_Data_Out|OUT[7]~7_combout\);

\ww_OUT\(0) <= \OUT[0]~output_o\;

\ww_OUT\(1) <= \OUT[1]~output_o\;

\ww_OUT\(2) <= \OUT[2]~output_o\;

\ww_OUT\(3) <= \OUT[3]~output_o\;

\ww_OUT\(4) <= \OUT[4]~output_o\;

\ww_OUT\(5) <= \OUT[5]~output_o\;

\ww_OUT\(6) <= \OUT[6]~output_o\;

\ww_OUT\(7) <= \OUT[7]~output_o\;
END structure;


