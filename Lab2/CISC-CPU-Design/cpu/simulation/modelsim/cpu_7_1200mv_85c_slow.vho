-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "12/30/2020 10:29:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cpu IS
    PORT (
	sys_rst : IN std_logic;
	sys_clk : IN std_logic;
	p_out : BUFFER std_logic_vector(7 DOWNTO 0);
	p_in : IN std_logic_vector(7 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- p_out[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_out[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[1]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[4]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[5]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- p_in[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_rst : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_p_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_p_in : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC0|state_clk[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC0|state_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC0|state_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \p_out[0]~output_o\ : std_logic;
SIGNAL \p_out[1]~output_o\ : std_logic;
SIGNAL \p_out[2]~output_o\ : std_logic;
SIGNAL \p_out[3]~output_o\ : std_logic;
SIGNAL \p_out[4]~output_o\ : std_logic;
SIGNAL \p_out[5]~output_o\ : std_logic;
SIGNAL \p_out[6]~output_o\ : std_logic;
SIGNAL \p_out[7]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC0|state_gate.110~feeder_combout\ : std_logic;
SIGNAL \sys_rst~input_o\ : std_logic;
SIGNAL \PC0|state_gate.110~q\ : std_logic;
SIGNAL \PC0|state_gate.111~feeder_combout\ : std_logic;
SIGNAL \PC0|state_gate.111~q\ : std_logic;
SIGNAL \PC0|state_gate.000~0_combout\ : std_logic;
SIGNAL \PC0|state_gate.000~q\ : std_logic;
SIGNAL \PC0|state_gate.001~0_combout\ : std_logic;
SIGNAL \PC0|state_gate.001~q\ : std_logic;
SIGNAL \PC0|state_gate.010~feeder_combout\ : std_logic;
SIGNAL \PC0|state_gate.010~q\ : std_logic;
SIGNAL \PC0|state_gate.011~feeder_combout\ : std_logic;
SIGNAL \PC0|state_gate.011~q\ : std_logic;
SIGNAL \PC0|state_gate.100~feeder_combout\ : std_logic;
SIGNAL \PC0|state_gate.100~q\ : std_logic;
SIGNAL \PC0|state_gate.101~feeder_combout\ : std_logic;
SIGNAL \PC0|state_gate.101~q\ : std_logic;
SIGNAL \PC0|WideOr0~0_combout\ : std_logic;
SIGNAL \PC0|state_clk[2]~clkctrl_outclk\ : std_logic;
SIGNAL \PC0|WideOr1~0_combout\ : std_logic;
SIGNAL \PC0|state_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \PC0|CTR|Mux13~3_combout\ : std_logic;
SIGNAL \PC0|WideOr2~0_combout\ : std_logic;
SIGNAL \PC0|state_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_acc[2]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[0]~12_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[0]~feeder_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux25~1_combout\ : std_logic;
SIGNAL \PC0|CTR|add_mux~1_combout\ : std_logic;
SIGNAL \PC0|CTR|add_mux[1]~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux11~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux11~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[0]~12_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux2~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux26~0_combout\ : std_logic;
SIGNAL \PC0|CTR|flag_mux~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux26~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux26~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux26~3_combout\ : std_logic;
SIGNAL \PC0|CTR|w_oplo~q\ : std_logic;
SIGNAL \PC0|CTR|Mux17~5_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux17~0_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~8_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~9_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[0]~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~0_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~5_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~7_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal2~5_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~6_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~10_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~11_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~12_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~9_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~8_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux16~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux5~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux16~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux16~5_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~13_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~14_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux15~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux5~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux25~0_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~15_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~18_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~4_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~16_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~17_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux14~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~0_combout\ : std_logic;
SIGNAL \p_in[3]~input_o\ : std_logic;
SIGNAL \PC0|CTR|Mux2~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux16~2_combout\ : std_logic;
SIGNAL \PC0|CTR|bbus_mux[1]~0_combout\ : std_logic;
SIGNAL \PC0|CTR|bbus_mux[1]~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux2~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~11_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~12_combout\ : std_logic;
SIGNAL \PC0|CTR|bbus_mux[1]~2_combout\ : std_logic;
SIGNAL \PC0|CTR|bbus_mux[1]~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux3~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux3~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux4~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux4~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux13~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux16~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux13~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[2]~17\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[3]~18_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux1~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_pc~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux1~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux1~1_wirecell_combout\ : std_logic;
SIGNAL \PC0|CTR|w_pc~q\ : std_logic;
SIGNAL \PC0|CTR|w_bx~1_combout\ : std_logic;
SIGNAL \PC0|CTR|w_bx~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux21~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux24~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_bx~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_bx~3_combout\ : std_logic;
SIGNAL \PC0|CTR|w_bx~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux25~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux25~3_combout\ : std_logic;
SIGNAL \PC0|CTR|w_bx~q\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_ax[3]~feeder_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux25~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux25~5_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~3_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~4_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~7_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~5_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~6_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ax~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[3]~19\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[4]~20_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[4]~21\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[5]~22_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[5]~23\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[6]~24_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[6]~25\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[7]~26_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[7]~27\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[8]~28_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal8~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux9~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_ophi~q\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[8]~29\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[9]~30_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[9]~31\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[10]~32_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[10]~33\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[11]~34_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_ophi[3]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux13~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux13~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux13~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux4~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux4~1_combout\ : std_logic;
SIGNAL \p_in[2]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux14~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux14~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux14~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux14~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux14~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_acc[1]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux6~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux6~1_combout\ : std_logic;
SIGNAL \p_in[0]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux16~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux16~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux16~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux16~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux16~5_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~1\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~1\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux6~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux6~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux6~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux6~5_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux15~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux15~3_combout\ : std_logic;
SIGNAL \p_in[1]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux15~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux15~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux15~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~3\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~5\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~6_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~3\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~5\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~6_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux4~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux4~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux4~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux4~5_combout\ : std_logic;
SIGNAL \p_in[4]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux12~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux12~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux12~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux12~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~1_combout\ : std_logic;
SIGNAL \p_in[5]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Decoder1~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux23~3_combout\ : std_logic;
SIGNAL \PC0|CTR|w_flag~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux23~5_combout\ : std_logic;
SIGNAL \PC0|CTR|flag_mux~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux23~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux23~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux10~0_combout\ : std_logic;
SIGNAL \PC0|CTR|flag_mux~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~0_combout\ : std_logic;
SIGNAL \p_in[7]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux9~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux9~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_bx[7]~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_ax[7]~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux9~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|carry~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_acc[7]~0_combout\ : std_logic;
SIGNAL \p_in[6]~input_o\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux10~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux10~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|pos~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux22~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~0_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~3_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~7_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux22~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux22~1_combout\ : std_logic;
SIGNAL \PC0|CTR|w_flag~2_combout\ : std_logic;
SIGNAL \PC0|CTR|w_flag~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux22~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux22~4_combout\ : std_logic;
SIGNAL \PC0|CTR|w_flag~q\ : std_logic;
SIGNAL \PC0|DATAPATH|pos~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux10~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux10~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux10~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux1~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux1~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~7\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~9\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~11\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~12_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~7\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~9\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~11\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~12_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux1~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux1~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux1~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux1~5_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~13\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~15\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~16_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~13\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~15\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~16_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux8~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux8~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|carry~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|carry~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux9~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux9~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux0~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~6_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~14_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~14_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~7_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux0~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux0~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux0~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux0~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|zero~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|zero~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|zero~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|zero~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~5_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux11~6_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux2~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux2~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~10_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~10_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux2~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux2~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux2~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux2~5_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_acc[5]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~8_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~8_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~5_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux3~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux12~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux12~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux12~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux12~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector8~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[0]~13\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[1]~15\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[2]~16_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[2]~17\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[3]~18_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector8~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[3]~19\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[4]~20_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector7~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector7~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[4]~21\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[5]~22_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector6~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector6~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[5]~23\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[6]~24_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector5~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector5~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[6]~25\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[7]~26_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector4~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector4~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[7]~27\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[8]~28_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector3~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector3~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[8]~29\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[9]~30_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector2~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector2~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[9]~31\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[10]~32_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector1~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector1~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[10]~33\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[11]~34_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector0~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector0~1_combout\ : std_logic;
SIGNAL \d_in[5]~5_combout\ : std_logic;
SIGNAL \PC0|CTR|w_opl~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_opl~q\ : std_logic;
SIGNAL \PC0|CTR|Mux0~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux0~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux0~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux0~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux0~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux0~5_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux17~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux17~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux17~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux17~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux17~6_combout\ : std_logic;
SIGNAL \PC0|CTR|pc_mux~q\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[0]~13\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[1]~14_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[1]~15\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_pc[2]~16_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector9~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector9~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux0~2_wirecell_combout\ : std_logic;
SIGNAL \d_in[7]~7_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal8~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal8~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~9_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~7_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~8_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux28~10_combout\ : std_logic;
SIGNAL \PC0|CTR|sp_mux~q\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_sp[1]~14_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector10~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector10~1_combout\ : std_logic;
SIGNAL \d_in[1]~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|reg_opl[1]~feeder_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal7~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_flag~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_pc~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~5_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux7~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~1_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func[2]~19_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux27~7_combout\ : std_logic;
SIGNAL \PC0|CTR|w_sp~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector11~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Selector11~1_combout\ : std_logic;
SIGNAL \d_in[0]~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~5_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux20~7_combout\ : std_logic;
SIGNAL \PC0|CTR|w_acc~q\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux5~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux5~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux5~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux5~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux5~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux5~5_combout\ : std_logic;
SIGNAL \d_in[2]~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal10~0_combout\ : std_logic;
SIGNAL \PC0|CTR|always0~0_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~5_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux10~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux10~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux10~3_combout\ : std_logic;
SIGNAL \PC0|CTR|ram_cs~q\ : std_logic;
SIGNAL \d_in[6]~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal2~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal2~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux18~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux18~1_combout\ : std_logic;
SIGNAL \PC0|CTR|mem_wr~0_combout\ : std_logic;
SIGNAL \PC0|CTR|mem_wr~1_combout\ : std_logic;
SIGNAL \PC0|CTR|mem_wr~q\ : std_logic;
SIGNAL \d_in[4]~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal6~0_combout\ : std_logic;
SIGNAL \PC0|CTR|ram_cs~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux8~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux8~1_combout\ : std_logic;
SIGNAL \PC0|CTR|rom_cs~q\ : std_logic;
SIGNAL \PC0|CTR|Mux19~0_combout\ : std_logic;
SIGNAL \PC0|CTR|mem_rd~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \d_in[3]~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Equal11~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux7~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux7~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux6~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux6~1_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux5~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux5~3_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux13~2_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux13~4_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux13~5_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux13~6_combout\ : std_logic;
SIGNAL \PC0|CTR|alu_func~6_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux13~8_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux13~7_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~1_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add4~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Add3~0_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~3_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~2_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~4_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~8_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~9_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|Mux7~5_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux21~0_combout\ : std_logic;
SIGNAL \PC0|CTR|Mux21~1_combout\ : std_logic;
SIGNAL \PC0|CTR|w_p~1_combout\ : std_logic;
SIGNAL \PC0|CTR|w_p~0_combout\ : std_logic;
SIGNAL \PC0|CTR|w_p~2_combout\ : std_logic;
SIGNAL \PC0|CTR|w_p~3_combout\ : std_logic;
SIGNAL \PC0|CTR|w_p~4_combout\ : std_logic;
SIGNAL \PC0|CTR|w_p~q\ : std_logic;
SIGNAL \PC0|DATAPATH|p_out[2]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|p_out[3]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|p_out[4]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|p_out[5]~feeder_combout\ : std_logic;
SIGNAL \PC0|DATAPATH|p_out[7]~0_combout\ : std_logic;
SIGNAL \PC0|CTR|bbus_mux\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_bx\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_oplo\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC0|CTR|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_ophi\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_sp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_pc\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC0|DATAPATH|p_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC0|state_clk\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \PC0|CTR|add_mux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_acc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC0|CTR|alu_func\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_ax\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC0|DATAPATH|reg_opl\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_sys_rst~input_o\ : std_logic;
SIGNAL \PC0|CTR|ALT_INV_state\ : std_logic_vector(2 DOWNTO 1);

BEGIN

ww_sys_rst <= sys_rst;
ww_sys_clk <= sys_clk;
p_out <= ww_p_out;
ww_p_in <= p_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\PC0|DATAPATH|Mux6~5_combout\ & \PC0|DATAPATH|Mux7~5_combout\);

\RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\RAM0|altsyncram_component|auto_generated|q_a\(0) <= \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM0|altsyncram_component|auto_generated|q_a\(1) <= \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\ROM0|altsyncram_component|auto_generated|q_a\(0) <= \ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ROM0|altsyncram_component|auto_generated|q_a\(1) <= \ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\PC0|DATAPATH|Mux4~5_combout\ & \PC0|DATAPATH|Mux5~5_combout\);

\RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\RAM0|altsyncram_component|auto_generated|q_a\(2) <= \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\RAM0|altsyncram_component|auto_generated|q_a\(3) <= \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\ROM0|altsyncram_component|auto_generated|q_a\(2) <= \ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\ROM0|altsyncram_component|auto_generated|q_a\(3) <= \ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ <= (\PC0|DATAPATH|Mux2~5_combout\ & \PC0|DATAPATH|Mux3~6_combout\);

\RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\RAM0|altsyncram_component|auto_generated|q_a\(4) <= \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\RAM0|altsyncram_component|auto_generated|q_a\(5) <= \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\ROM0|altsyncram_component|auto_generated|q_a\(4) <= \ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\ROM0|altsyncram_component|auto_generated|q_a\(5) <= \ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ <= (\PC0|DATAPATH|Mux0~2_wirecell_combout\ & \PC0|DATAPATH|Mux1~5_combout\);

\RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\RAM0|altsyncram_component|auto_generated|q_a\(6) <= \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\RAM0|altsyncram_component|auto_generated|q_a\(7) <= \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\PC0|DATAPATH|Selector0~1_combout\ & \PC0|DATAPATH|Selector1~1_combout\ & \PC0|DATAPATH|Selector2~1_combout\ & \PC0|DATAPATH|Selector3~1_combout\ & 
\PC0|DATAPATH|Selector4~1_combout\ & \PC0|DATAPATH|Selector5~1_combout\ & \PC0|DATAPATH|Selector6~1_combout\ & \PC0|DATAPATH|Selector7~1_combout\ & \PC0|DATAPATH|Selector8~1_combout\ & \PC0|DATAPATH|Selector9~1_combout\ & 
\PC0|DATAPATH|Selector10~1_combout\ & \PC0|DATAPATH|Selector11~1_combout\);

\ROM0|altsyncram_component|auto_generated|q_a\(6) <= \ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\ROM0|altsyncram_component|auto_generated|q_a\(7) <= \ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);

\PC0|state_clk[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PC0|state_clk\(2));

\PC0|state_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PC0|state_clk\(0));

\PC0|state_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \PC0|state_clk\(1));
\ALT_INV_sys_rst~input_o\ <= NOT \sys_rst~input_o\;
\PC0|CTR|ALT_INV_state\(1) <= NOT \PC0|CTR|state\(1);
\PC0|CTR|ALT_INV_state\(2) <= NOT \PC0|CTR|state\(2);

-- Location: IOOBUF_X69_Y73_N23
\p_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(0),
	devoe => ww_devoe,
	o => \p_out[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\p_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(1),
	devoe => ww_devoe,
	o => \p_out[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\p_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(2),
	devoe => ww_devoe,
	o => \p_out[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\p_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(3),
	devoe => ww_devoe,
	o => \p_out[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\p_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(4),
	devoe => ww_devoe,
	o => \p_out[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\p_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(5),
	devoe => ww_devoe,
	o => \p_out[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\p_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(6),
	devoe => ww_devoe,
	o => \p_out[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\p_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PC0|DATAPATH|p_out\(7),
	devoe => ww_devoe,
	o => \p_out[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\sys_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G4
\sys_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X56_Y71_N28
\PC0|state_gate.110~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.110~feeder_combout\ = \PC0|state_gate.101~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.101~q\,
	combout => \PC0|state_gate.110~feeder_combout\);

-- Location: IOIBUF_X115_Y17_N1
\sys_rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst,
	o => \sys_rst~input_o\);

-- Location: FF_X56_Y71_N29
\PC0|state_gate.110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.110~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.110~q\);

-- Location: LCCOMB_X56_Y71_N16
\PC0|state_gate.111~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.111~feeder_combout\ = \PC0|state_gate.110~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.110~q\,
	combout => \PC0|state_gate.111~feeder_combout\);

-- Location: FF_X56_Y71_N17
\PC0|state_gate.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.111~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.111~q\);

-- Location: LCCOMB_X56_Y71_N30
\PC0|state_gate.000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.000~0_combout\ = !\PC0|state_gate.111~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.111~q\,
	combout => \PC0|state_gate.000~0_combout\);

-- Location: FF_X56_Y71_N31
\PC0|state_gate.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.000~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.000~q\);

-- Location: LCCOMB_X56_Y71_N2
\PC0|state_gate.001~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.001~0_combout\ = !\PC0|state_gate.000~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|state_gate.000~q\,
	combout => \PC0|state_gate.001~0_combout\);

-- Location: FF_X56_Y71_N3
\PC0|state_gate.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.001~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.001~q\);

-- Location: LCCOMB_X56_Y71_N24
\PC0|state_gate.010~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.010~feeder_combout\ = \PC0|state_gate.001~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.001~q\,
	combout => \PC0|state_gate.010~feeder_combout\);

-- Location: FF_X56_Y71_N25
\PC0|state_gate.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.010~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.010~q\);

-- Location: LCCOMB_X56_Y71_N6
\PC0|state_gate.011~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.011~feeder_combout\ = \PC0|state_gate.010~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.010~q\,
	combout => \PC0|state_gate.011~feeder_combout\);

-- Location: FF_X56_Y71_N7
\PC0|state_gate.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.011~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.011~q\);

-- Location: LCCOMB_X56_Y71_N10
\PC0|state_gate.100~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.100~feeder_combout\ = \PC0|state_gate.011~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.011~q\,
	combout => \PC0|state_gate.100~feeder_combout\);

-- Location: FF_X56_Y71_N11
\PC0|state_gate.100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.100~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.100~q\);

-- Location: LCCOMB_X56_Y71_N20
\PC0|state_gate.101~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|state_gate.101~feeder_combout\ = \PC0|state_gate.100~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|state_gate.100~q\,
	combout => \PC0|state_gate.101~feeder_combout\);

-- Location: FF_X56_Y71_N21
\PC0|state_gate.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|state_gate.101~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_gate.101~q\);

-- Location: LCCOMB_X56_Y71_N22
\PC0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|WideOr0~0_combout\ = (!\PC0|state_gate.101~q\ & (!\PC0|state_gate.110~q\ & (\PC0|state_gate.000~q\ & !\PC0|state_gate.111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|state_gate.101~q\,
	datab => \PC0|state_gate.110~q\,
	datac => \PC0|state_gate.000~q\,
	datad => \PC0|state_gate.111~q\,
	combout => \PC0|WideOr0~0_combout\);

-- Location: FF_X56_Y71_N23
\PC0|state_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|WideOr0~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_clk\(2));

-- Location: CLKCTRL_G11
\PC0|state_clk[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PC0|state_clk[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PC0|state_clk[2]~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y71_N14
\PC0|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|WideOr1~0_combout\ = (\PC0|state_gate.010~q\) # ((\PC0|state_gate.111~q\) # ((\PC0|state_gate.001~q\) # (!\PC0|state_gate.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|state_gate.010~q\,
	datab => \PC0|state_gate.111~q\,
	datac => \PC0|state_gate.000~q\,
	datad => \PC0|state_gate.001~q\,
	combout => \PC0|WideOr1~0_combout\);

-- Location: FF_X56_Y71_N15
\PC0|state_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|WideOr1~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_clk\(1));

-- Location: CLKCTRL_G13
\PC0|state_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PC0|state_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PC0|state_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X65_Y39_N0
\PC0|CTR|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~3_combout\ = (!\PC0|CTR|state\(1) & (!\PC0|CTR|state\(0) & \PC0|CTR|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datac => \PC0|CTR|state\(0),
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux13~3_combout\);

-- Location: LCCOMB_X56_Y71_N26
\PC0|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|WideOr2~0_combout\ = (!\PC0|state_gate.100~q\ & (!\PC0|state_gate.101~q\ & (!\PC0|state_gate.001~q\ & \PC0|state_gate.000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|state_gate.100~q\,
	datab => \PC0|state_gate.101~q\,
	datac => \PC0|state_gate.001~q\,
	datad => \PC0|state_gate.000~q\,
	combout => \PC0|WideOr2~0_combout\);

-- Location: FF_X56_Y71_N27
\PC0|state_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \PC0|WideOr2~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|state_clk\(0));

-- Location: CLKCTRL_G10
\PC0|state_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \PC0|state_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \PC0|state_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X67_Y35_N22
\PC0|DATAPATH|reg_acc[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_acc[2]~feeder_combout\ = \PC0|DATAPATH|Mux5~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux5~5_combout\,
	combout => \PC0|DATAPATH|reg_acc[2]~feeder_combout\);

-- Location: LCCOMB_X62_Y36_N8
\PC0|DATAPATH|reg_sp[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[0]~12_combout\ = !\PC0|DATAPATH|reg_sp\(0)
-- \PC0|DATAPATH|reg_sp[0]~13\ = CARRY(!\PC0|DATAPATH|reg_sp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_sp\(0),
	combout => \PC0|DATAPATH|reg_sp[0]~12_combout\,
	cout => \PC0|DATAPATH|reg_sp[0]~13\);

-- Location: LCCOMB_X62_Y37_N28
\PC0|DATAPATH|reg_sp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[0]~feeder_combout\ = \PC0|DATAPATH|reg_sp[0]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|reg_sp[0]~12_combout\,
	combout => \PC0|DATAPATH|reg_sp[0]~feeder_combout\);

-- Location: LCCOMB_X65_Y38_N12
\PC0|CTR|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux25~1_combout\ = (!\PC0|CTR|state\(1) & !\PC0|CTR|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux25~1_combout\);

-- Location: LCCOMB_X63_Y36_N2
\PC0|CTR|add_mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|add_mux~1_combout\ = (\PC0|CTR|always0~0_combout\ & ((\PC0|CTR|add_mux\(1)) # ((\PC0|CTR|Equal8~1_combout\ & !\PC0|DATAPATH|reg_opl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(1),
	datab => \PC0|CTR|Equal8~1_combout\,
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|always0~0_combout\,
	combout => \PC0|CTR|add_mux~1_combout\);

-- Location: LCCOMB_X63_Y36_N24
\PC0|CTR|add_mux[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|add_mux[1]~0_combout\ = (\PC0|CTR|Mux25~1_combout\ & ((\PC0|CTR|add_mux~1_combout\))) # (!\PC0|CTR|Mux25~1_combout\ & (\PC0|CTR|add_mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|Mux25~1_combout\,
	datac => \PC0|CTR|add_mux\(1),
	datad => \PC0|CTR|add_mux~1_combout\,
	combout => \PC0|CTR|add_mux[1]~0_combout\);

-- Location: LCCOMB_X63_Y36_N28
\PC0|CTR|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux11~0_combout\ = (\PC0|CTR|state\(0) & ((\PC0|CTR|state\(1) & (\PC0|CTR|w_flag~0_combout\)) # (!\PC0|CTR|state\(1) & ((\PC0|CTR|Equal2~6_combout\))))) # (!\PC0|CTR|state\(0) & (\PC0|CTR|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|w_flag~0_combout\,
	datad => \PC0|CTR|Equal2~6_combout\,
	combout => \PC0|CTR|Mux11~0_combout\);

-- Location: LCCOMB_X63_Y36_N14
\PC0|CTR|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux11~1_combout\ = (\PC0|CTR|state\(0) & ((\PC0|CTR|add_mux\(1)) # ((\PC0|CTR|Mux11~0_combout\)))) # (!\PC0|CTR|state\(0) & (\PC0|CTR|Mux11~0_combout\ & ((\PC0|CTR|add_mux\(1)) # (\PC0|CTR|ram_cs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|CTR|ram_cs~0_combout\,
	datad => \PC0|CTR|Mux11~0_combout\,
	combout => \PC0|CTR|Mux11~1_combout\);

-- Location: FF_X63_Y36_N25
\PC0|CTR|add_mux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|add_mux[1]~0_combout\,
	asdata => \PC0|CTR|Mux11~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|ALT_INV_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|add_mux\(1));

-- Location: LCCOMB_X62_Y37_N4
\PC0|DATAPATH|reg_pc[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[0]~12_combout\ = \PC0|DATAPATH|reg_pc\(0) $ (VCC)
-- \PC0|DATAPATH|reg_pc[0]~13\ = CARRY(\PC0|DATAPATH|reg_pc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(0),
	datad => VCC,
	combout => \PC0|DATAPATH|reg_pc[0]~12_combout\,
	cout => \PC0|DATAPATH|reg_pc[0]~13\);

-- Location: LCCOMB_X62_Y40_N12
\PC0|CTR|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux2~2_combout\ = (\PC0|CTR|state\(1) & !\PC0|CTR|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux2~2_combout\);

-- Location: LCCOMB_X62_Y40_N24
\PC0|CTR|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux26~0_combout\ = (!\PC0|CTR|state\(2) & (\PC0|CTR|state\(0) $ (((!\PC0|CTR|Equal8~1_combout\) # (!\PC0|DATAPATH|reg_opl\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|CTR|Equal8~1_combout\,
	datac => \PC0|CTR|state\(2),
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux26~0_combout\);

-- Location: LCCOMB_X62_Y39_N4
\PC0|CTR|flag_mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|flag_mux~0_combout\ = (!\PC0|DATAPATH|reg_opl\(3) & (!\PC0|DATAPATH|reg_opl\(4) & (\PC0|CTR|Equal2~4_combout\ & !\PC0|CTR|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(4),
	datac => \PC0|CTR|Equal2~4_combout\,
	datad => \PC0|CTR|Equal10~0_combout\,
	combout => \PC0|CTR|flag_mux~0_combout\);

-- Location: LCCOMB_X62_Y40_N30
\PC0|CTR|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux26~1_combout\ = (\PC0|CTR|w_oplo~q\ & ((\PC0|CTR|state\(2)) # ((!\PC0|CTR|state\(0))))) # (!\PC0|CTR|w_oplo~q\ & (\PC0|CTR|state\(2) & (\PC0|CTR|flag_mux~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_oplo~q\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|flag_mux~0_combout\,
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux26~1_combout\);

-- Location: LCCOMB_X62_Y40_N10
\PC0|CTR|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux26~2_combout\ = (\PC0|CTR|Mux2~2_combout\ & ((\PC0|CTR|Mux26~0_combout\) # ((\PC0|CTR|Mux26~1_combout\)))) # (!\PC0|CTR|Mux2~2_combout\ & (\PC0|CTR|Mux13~3_combout\ & ((\PC0|CTR|Mux26~0_combout\) # (\PC0|CTR|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux2~2_combout\,
	datab => \PC0|CTR|Mux26~0_combout\,
	datac => \PC0|CTR|Mux26~1_combout\,
	datad => \PC0|CTR|Mux13~3_combout\,
	combout => \PC0|CTR|Mux26~2_combout\);

-- Location: LCCOMB_X62_Y40_N4
\PC0|CTR|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux26~3_combout\ = (\PC0|CTR|state\(1) & ((!\PC0|CTR|state\(2)))) # (!\PC0|CTR|state\(1) & (!\PC0|CTR|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux26~3_combout\);

-- Location: FF_X62_Y40_N11
\PC0|CTR|w_oplo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux26~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_oplo~q\);

-- Location: FF_X63_Y37_N25
\PC0|DATAPATH|reg_oplo[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[0]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(0));

-- Location: LCCOMB_X61_Y37_N30
\PC0|CTR|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~5_combout\ = (((!\PC0|CTR|pc_mux~q\ & \PC0|CTR|Equal11~0_combout\)) # (!\PC0|CTR|always0~0_combout\)) # (!\PC0|CTR|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|pc_mux~q\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Equal11~0_combout\,
	datad => \PC0|CTR|always0~0_combout\,
	combout => \PC0|CTR|Mux17~5_combout\);

-- Location: LCCOMB_X62_Y38_N12
\PC0|CTR|always0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~1_combout\ = (!\PC0|DATAPATH|reg_opl\(2) & (!\PC0|DATAPATH|reg_opl\(1) & (!\PC0|DATAPATH|reg_opl\(0) & \PC0|DATAPATH|reg_opl\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datab => \PC0|DATAPATH|reg_opl\(1),
	datac => \PC0|DATAPATH|reg_opl\(0),
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|always0~1_combout\);

-- Location: LCCOMB_X61_Y37_N24
\PC0|CTR|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~0_combout\ = (!\PC0|CTR|pc_mux~q\ & (!\PC0|CTR|always0~1_combout\ & ((!\PC0|CTR|Equal8~1_combout\) # (!\PC0|DATAPATH|reg_opl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|pc_mux~q\,
	datab => \PC0|CTR|always0~1_combout\,
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|Mux17~0_combout\);

-- Location: FF_X67_Y36_N1
\PC0|DATAPATH|reg_acc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux3~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(4));

-- Location: LCCOMB_X66_Y39_N28
\PC0|CTR|alu_func~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~8_combout\ = (!\PC0|CTR|always0~0_combout\ & (\PC0|CTR|Equal7~0_combout\ & \PC0|DATAPATH|reg_opl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~0_combout\,
	datab => \PC0|CTR|Equal7~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(3),
	combout => \PC0|CTR|alu_func~8_combout\);

-- Location: LCCOMB_X66_Y39_N22
\PC0|CTR|alu_func~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~9_combout\ = (\PC0|CTR|alu_func~8_combout\) # ((\PC0|CTR|alu_func\(0) & (\PC0|CTR|alu_func~5_combout\ & \PC0|CTR|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func~5_combout\,
	datac => \PC0|CTR|always0~0_combout\,
	datad => \PC0|CTR|alu_func~8_combout\,
	combout => \PC0|CTR|alu_func~9_combout\);

-- Location: LCCOMB_X66_Y35_N12
\PC0|CTR|alu_func[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[0]~0_combout\ = (\PC0|CTR|Mux25~1_combout\ & ((\PC0|CTR|alu_func~9_combout\))) # (!\PC0|CTR|Mux25~1_combout\ & (\PC0|CTR|alu_func\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux25~1_combout\,
	datac => \PC0|CTR|alu_func\(0),
	datad => \PC0|CTR|alu_func~9_combout\,
	combout => \PC0|CTR|alu_func[0]~0_combout\);

-- Location: LCCOMB_X62_Y38_N14
\PC0|CTR|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~0_combout\ = (!\PC0|DATAPATH|reg_opl\(4) & (!\PC0|DATAPATH|reg_opl\(3) & !\PC0|DATAPATH|reg_opl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(4),
	datab => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|DATAPATH|reg_opl\(5),
	combout => \PC0|CTR|Mux20~0_combout\);

-- Location: LCCOMB_X62_Y38_N24
\PC0|CTR|always0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~5_combout\ = (\PC0|DATAPATH|reg_opl\(7)) # (((\PC0|CTR|Equal10~0_combout\) # (!\PC0|CTR|Mux20~0_combout\)) # (!\PC0|DATAPATH|reg_opl\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(7),
	datab => \PC0|DATAPATH|reg_opl\(6),
	datac => \PC0|CTR|Mux20~0_combout\,
	datad => \PC0|CTR|Equal10~0_combout\,
	combout => \PC0|CTR|always0~5_combout\);

-- Location: LCCOMB_X63_Y39_N30
\PC0|CTR|always0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~7_combout\ = (\PC0|DATAPATH|reg_opl\(7)) # ((\PC0|CTR|Equal10~0_combout\) # (\PC0|DATAPATH|reg_opl\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|CTR|Equal10~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(6),
	combout => \PC0|CTR|always0~7_combout\);

-- Location: LCCOMB_X62_Y38_N16
\PC0|CTR|always0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~2_combout\ = (!\PC0|DATAPATH|reg_opl\(5) & (\PC0|DATAPATH|reg_opl\(7) & (!\PC0|DATAPATH|reg_opl\(6) & !\PC0|CTR|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(5),
	datab => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|DATAPATH|reg_opl\(6),
	datad => \PC0|CTR|Equal10~0_combout\,
	combout => \PC0|CTR|always0~2_combout\);

-- Location: LCCOMB_X66_Y39_N14
\PC0|CTR|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal2~5_combout\ = (\PC0|DATAPATH|reg_opl\(4) & !\PC0|DATAPATH|reg_opl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|DATAPATH|reg_opl\(3),
	combout => \PC0|CTR|Equal2~5_combout\);

-- Location: LCCOMB_X63_Y39_N0
\PC0|CTR|always0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~6_combout\ = (\PC0|DATAPATH|reg_opl\(3) & !\PC0|DATAPATH|reg_opl\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|DATAPATH|reg_opl\(4),
	combout => \PC0|CTR|always0~6_combout\);

-- Location: LCCOMB_X66_Y39_N12
\PC0|CTR|alu_func~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~10_combout\ = (\PC0|CTR|Equal2~5_combout\ & ((\PC0|CTR|Equal2~4_combout\ & ((\PC0|CTR|Equal7~0_combout\))) # (!\PC0|CTR|Equal2~4_combout\ & (\PC0|CTR|alu_func\(0))))) # (!\PC0|CTR|Equal2~5_combout\ & (\PC0|CTR|alu_func\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|Equal7~0_combout\,
	datac => \PC0|CTR|Equal2~5_combout\,
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|alu_func~10_combout\);

-- Location: LCCOMB_X66_Y39_N18
\PC0|CTR|alu_func~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~11_combout\ = (\PC0|CTR|always0~2_combout\ & (!\PC0|CTR|always0~6_combout\ & ((\PC0|CTR|Equal2~5_combout\) # (\PC0|CTR|alu_func~10_combout\)))) # (!\PC0|CTR|always0~2_combout\ & (((\PC0|CTR|alu_func~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~2_combout\,
	datab => \PC0|CTR|Equal2~5_combout\,
	datac => \PC0|CTR|always0~6_combout\,
	datad => \PC0|CTR|alu_func~10_combout\,
	combout => \PC0|CTR|alu_func~11_combout\);

-- Location: LCCOMB_X66_Y39_N8
\PC0|CTR|alu_func~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~12_combout\ = (\PC0|CTR|always0~7_combout\ & (((\PC0|CTR|alu_func~11_combout\) # (!\PC0|CTR|always0~5_combout\)))) # (!\PC0|CTR|always0~7_combout\ & (\PC0|DATAPATH|reg_opl\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|CTR|always0~5_combout\,
	datac => \PC0|CTR|always0~7_combout\,
	datad => \PC0|CTR|alu_func~11_combout\,
	combout => \PC0|CTR|alu_func~12_combout\);

-- Location: LCCOMB_X62_Y39_N16
\PC0|CTR|always0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~9_combout\ = (!\PC0|DATAPATH|reg_opl\(6) & (\PC0|DATAPATH|reg_opl\(0) & (\PC0|DATAPATH|reg_opl\(2) & \PC0|DATAPATH|reg_opl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(6),
	datab => \PC0|DATAPATH|reg_opl\(0),
	datac => \PC0|DATAPATH|reg_opl\(2),
	datad => \PC0|DATAPATH|reg_opl\(1),
	combout => \PC0|CTR|always0~9_combout\);

-- Location: LCCOMB_X62_Y39_N18
\PC0|CTR|always0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~8_combout\ = (\PC0|DATAPATH|reg_opl\(6) & (!\PC0|DATAPATH|reg_opl\(7) & (\PC0|CTR|Mux20~0_combout\ & \PC0|CTR|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(6),
	datab => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|CTR|Mux20~0_combout\,
	datad => \PC0|CTR|Equal10~0_combout\,
	combout => \PC0|CTR|always0~8_combout\);

-- Location: LCCOMB_X62_Y39_N2
\PC0|CTR|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux16~3_combout\ = (\PC0|CTR|always0~9_combout\ & ((\PC0|DATAPATH|reg_opl\(7) & ((\PC0|CTR|always0~8_combout\))) # (!\PC0|DATAPATH|reg_opl\(7) & (\PC0|DATAPATH|reg_opl\(3))))) # (!\PC0|CTR|always0~9_combout\ & (((\PC0|CTR|always0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|CTR|always0~9_combout\,
	datac => \PC0|DATAPATH|reg_opl\(7),
	datad => \PC0|CTR|always0~8_combout\,
	combout => \PC0|CTR|Mux16~3_combout\);

-- Location: LCCOMB_X65_Y40_N4
\PC0|CTR|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux5~0_combout\ = (!\PC0|CTR|always0~1_combout\ & ((!\PC0|CTR|Equal8~1_combout\) # (!\PC0|DATAPATH|reg_opl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|CTR|always0~1_combout\,
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y35_N18
\PC0|CTR|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux16~4_combout\ = (\PC0|CTR|state\(0) & (\PC0|CTR|alu_func\(0) & ((\PC0|CTR|Mux5~0_combout\)))) # (!\PC0|CTR|state\(0) & (((\PC0|CTR|Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|Mux16~3_combout\,
	datad => \PC0|CTR|Mux5~0_combout\,
	combout => \PC0|CTR|Mux16~4_combout\);

-- Location: LCCOMB_X66_Y35_N26
\PC0|CTR|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux16~5_combout\ = (\PC0|CTR|state\(1) & (((\PC0|CTR|Mux16~4_combout\)))) # (!\PC0|CTR|state\(1) & (\PC0|CTR|state\(0) & (\PC0|CTR|alu_func~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|alu_func~12_combout\,
	datad => \PC0|CTR|Mux16~4_combout\,
	combout => \PC0|CTR|Mux16~5_combout\);

-- Location: FF_X66_Y35_N13
\PC0|CTR|alu_func[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|alu_func[0]~0_combout\,
	asdata => \PC0|CTR|Mux16~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|ALT_INV_state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|alu_func\(0));

-- Location: LCCOMB_X65_Y40_N26
\PC0|CTR|alu_func[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~13_combout\ = (\PC0|DATAPATH|reg_opl\(7)) # ((\PC0|CTR|state\(2)) # (\PC0|DATAPATH|reg_opl\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(7),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|DATAPATH|reg_opl\(6),
	combout => \PC0|CTR|alu_func[2]~13_combout\);

-- Location: LCCOMB_X65_Y40_N20
\PC0|CTR|alu_func[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~14_combout\ = (\PC0|CTR|alu_func[2]~13_combout\) # ((\PC0|CTR|state\(1) & ((\PC0|CTR|state\(0)) # (!\PC0|CTR|Equal10~0_combout\))) # (!\PC0|CTR|state\(1) & ((\PC0|CTR|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|alu_func[2]~13_combout\,
	datad => \PC0|CTR|Equal10~0_combout\,
	combout => \PC0|CTR|alu_func[2]~14_combout\);

-- Location: LCCOMB_X65_Y40_N22
\PC0|CTR|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux15~0_combout\ = (\PC0|DATAPATH|reg_opl\(4) & !\PC0|CTR|alu_func[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|alu_func[2]~14_combout\,
	combout => \PC0|CTR|Mux15~0_combout\);

-- Location: LCCOMB_X65_Y40_N6
\PC0|CTR|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux5~1_combout\ = (\PC0|CTR|state\(0) & (\PC0|CTR|Mux5~0_combout\ & \PC0|CTR|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datac => \PC0|CTR|Mux5~0_combout\,
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux5~1_combout\);

-- Location: LCCOMB_X65_Y40_N8
\PC0|CTR|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux25~0_combout\ = (!\PC0|CTR|state\(1) & ((\PC0|DATAPATH|reg_opl\(7)) # ((\PC0|DATAPATH|reg_opl\(6)) # (\PC0|CTR|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(7),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|DATAPATH|reg_opl\(6),
	datad => \PC0|CTR|Equal10~0_combout\,
	combout => \PC0|CTR|Mux25~0_combout\);

-- Location: LCCOMB_X65_Y40_N0
\PC0|CTR|alu_func[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~15_combout\ = (\PC0|CTR|Mux25~0_combout\ & (\PC0|CTR|always0~5_combout\ & ((!\PC0|CTR|always0~2_combout\) # (!\PC0|CTR|always0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux25~0_combout\,
	datab => \PC0|CTR|always0~6_combout\,
	datac => \PC0|CTR|always0~5_combout\,
	datad => \PC0|CTR|always0~2_combout\,
	combout => \PC0|CTR|alu_func[2]~15_combout\);

-- Location: LCCOMB_X65_Y40_N14
\PC0|CTR|alu_func[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~18_combout\ = (\PC0|CTR|state\(2) & ((\PC0|CTR|state\(0)) # ((\PC0|CTR|state\(1)) # (\PC0|CTR|alu_func~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|alu_func~5_combout\,
	combout => \PC0|CTR|alu_func[2]~18_combout\);

-- Location: LCCOMB_X65_Y40_N30
\PC0|CTR|always0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~4_combout\ = (\PC0|DATAPATH|reg_opl\(3)) # ((!\PC0|CTR|always0~2_combout\) # (!\PC0|DATAPATH|reg_opl\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|always0~2_combout\,
	combout => \PC0|CTR|always0~4_combout\);

-- Location: LCCOMB_X65_Y40_N10
\PC0|CTR|alu_func[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~16_combout\ = (\PC0|CTR|state\(0) & (!\PC0|CTR|Equal2~6_combout\ & (\PC0|CTR|always0~4_combout\))) # (!\PC0|CTR|state\(0) & (((\PC0|CTR|alu_func~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|Equal2~6_combout\,
	datac => \PC0|CTR|always0~4_combout\,
	datad => \PC0|CTR|alu_func~5_combout\,
	combout => \PC0|CTR|alu_func[2]~16_combout\);

-- Location: LCCOMB_X65_Y40_N28
\PC0|CTR|alu_func[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~17_combout\ = (!\PC0|CTR|Mux5~1_combout\ & (!\PC0|CTR|alu_func[2]~18_combout\ & ((!\PC0|CTR|alu_func[2]~16_combout\) # (!\PC0|CTR|alu_func[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux5~1_combout\,
	datab => \PC0|CTR|alu_func[2]~15_combout\,
	datac => \PC0|CTR|alu_func[2]~18_combout\,
	datad => \PC0|CTR|alu_func[2]~16_combout\,
	combout => \PC0|CTR|alu_func[2]~17_combout\);

-- Location: FF_X65_Y40_N23
\PC0|CTR|alu_func[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux15~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|alu_func[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|alu_func\(1));

-- Location: LCCOMB_X65_Y40_N16
\PC0|CTR|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux14~0_combout\ = (\PC0|DATAPATH|reg_opl\(5) & !\PC0|CTR|alu_func[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|reg_opl\(5),
	datad => \PC0|CTR|alu_func[2]~14_combout\,
	combout => \PC0|CTR|Mux14~0_combout\);

-- Location: FF_X65_Y40_N17
\PC0|CTR|alu_func[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux14~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|alu_func[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|alu_func\(2));

-- Location: LCCOMB_X66_Y35_N0
\PC0|DATAPATH|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~0_combout\ = (\PC0|CTR|alu_func\(2)) # ((\PC0|CTR|alu_func\(3) & ((\PC0|CTR|alu_func\(0)) # (\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|CTR|alu_func\(2),
	datad => \PC0|CTR|alu_func\(3),
	combout => \PC0|DATAPATH|Mux3~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\p_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(3),
	o => \p_in[3]~input_o\);

-- Location: LCCOMB_X65_Y37_N18
\PC0|CTR|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux2~4_combout\ = (\PC0|CTR|state\(2) & (((\PC0|CTR|state\(0)) # (!\PC0|CTR|always0~0_combout\)))) # (!\PC0|CTR|state\(2) & (\PC0|CTR|state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|always0~0_combout\,
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux2~4_combout\);

-- Location: LCCOMB_X65_Y39_N28
\PC0|CTR|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux16~2_combout\ = (\PC0|CTR|state\(0) & !\PC0|CTR|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|state\(0),
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux16~2_combout\);

-- Location: LCCOMB_X66_Y39_N0
\PC0|CTR|bbus_mux[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|bbus_mux[1]~0_combout\ = (\PC0|CTR|state\(2) & (!\PC0|CTR|state\(0) & (!\PC0|CTR|always0~0_combout\ & \PC0|DATAPATH|reg_opl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|always0~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(3),
	combout => \PC0|CTR|bbus_mux[1]~0_combout\);

-- Location: LCCOMB_X66_Y39_N10
\PC0|CTR|bbus_mux[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|bbus_mux[1]~1_combout\ = (\PC0|CTR|bbus_mux[1]~0_combout\) # ((!\PC0|CTR|state\(2) & (\PC0|CTR|Mux16~2_combout\ & \PC0|CTR|always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|Mux16~2_combout\,
	datac => \PC0|CTR|always0~4_combout\,
	datad => \PC0|CTR|bbus_mux[1]~0_combout\,
	combout => \PC0|CTR|bbus_mux[1]~1_combout\);

-- Location: LCCOMB_X66_Y37_N16
\PC0|CTR|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux2~3_combout\ = (\PC0|CTR|bbus_mux[1]~1_combout\ & (\PC0|DATAPATH|reg_opl\(2))) # (!\PC0|CTR|bbus_mux[1]~1_combout\ & ((\PC0|CTR|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datac => \PC0|CTR|Mux2~4_combout\,
	datad => \PC0|CTR|bbus_mux[1]~1_combout\,
	combout => \PC0|CTR|Mux2~3_combout\);

-- Location: LCCOMB_X65_Y40_N24
\PC0|CTR|Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~11_combout\ = (\PC0|DATAPATH|reg_opl\(3) & ((\PC0|DATAPATH|reg_opl\(4)) # ((!\PC0|CTR|always0~2_combout\)))) # (!\PC0|DATAPATH|reg_opl\(3) & (((!\PC0|CTR|Equal2~4_combout\ & !\PC0|CTR|always0~2_combout\)) # (!\PC0|DATAPATH|reg_opl\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(4),
	datac => \PC0|CTR|Equal2~4_combout\,
	datad => \PC0|CTR|always0~2_combout\,
	combout => \PC0|CTR|Mux28~11_combout\);

-- Location: LCCOMB_X65_Y40_N18
\PC0|CTR|Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~12_combout\ = (\PC0|CTR|Mux25~0_combout\ & (\PC0|CTR|always0~5_combout\ & \PC0|CTR|Mux28~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|Mux25~0_combout\,
	datac => \PC0|CTR|always0~5_combout\,
	datad => \PC0|CTR|Mux28~11_combout\,
	combout => \PC0|CTR|Mux28~12_combout\);

-- Location: LCCOMB_X65_Y40_N2
\PC0|CTR|bbus_mux[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|bbus_mux[1]~2_combout\ = (\PC0|CTR|state\(2) & (\PC0|CTR|state\(1))) # (!\PC0|CTR|state\(2) & ((\PC0|CTR|Mux28~12_combout\) # ((\PC0|CTR|state\(1) & \PC0|CTR|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux5~0_combout\,
	datad => \PC0|CTR|Mux28~12_combout\,
	combout => \PC0|CTR|bbus_mux[1]~2_combout\);

-- Location: LCCOMB_X66_Y37_N10
\PC0|CTR|bbus_mux[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|bbus_mux[1]~3_combout\ = (\PC0|CTR|state\(0) & (((!\PC0|CTR|bbus_mux[1]~2_combout\)))) # (!\PC0|CTR|state\(0) & (((!\PC0|CTR|alu_func~5_combout\ & !\PC0|CTR|bbus_mux[1]~2_combout\)) # (!\PC0|CTR|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|alu_func~5_combout\,
	datad => \PC0|CTR|bbus_mux[1]~2_combout\,
	combout => \PC0|CTR|bbus_mux[1]~3_combout\);

-- Location: FF_X66_Y37_N17
\PC0|CTR|bbus_mux[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux2~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|bbus_mux[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|bbus_mux\(2));

-- Location: LCCOMB_X65_Y40_N12
\PC0|CTR|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux3~0_combout\ = (\PC0|CTR|state\(2) & (!\PC0|CTR|state\(0))) # (!\PC0|CTR|state\(2) & (\PC0|CTR|state\(1) & ((\PC0|CTR|always0~1_combout\) # (!\PC0|CTR|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|always0~1_combout\,
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y37_N4
\PC0|CTR|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux3~1_combout\ = (\PC0|CTR|bbus_mux[1]~1_combout\ & (\PC0|DATAPATH|reg_opl\(1))) # (!\PC0|CTR|bbus_mux[1]~1_combout\ & ((\PC0|CTR|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(1),
	datac => \PC0|CTR|Mux3~0_combout\,
	datad => \PC0|CTR|bbus_mux[1]~1_combout\,
	combout => \PC0|CTR|Mux3~1_combout\);

-- Location: FF_X66_Y37_N5
\PC0|CTR|bbus_mux[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux3~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|bbus_mux[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|bbus_mux\(1));

-- Location: LCCOMB_X66_Y39_N30
\PC0|CTR|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux4~3_combout\ = (\PC0|CTR|state\(2) & (!\PC0|CTR|state\(0) & ((\PC0|CTR|always0~0_combout\)))) # (!\PC0|CTR|state\(2) & (\PC0|CTR|state\(0) & (!\PC0|CTR|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|always0~0_combout\,
	combout => \PC0|CTR|Mux4~3_combout\);

-- Location: LCCOMB_X66_Y37_N14
\PC0|CTR|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux4~2_combout\ = (\PC0|CTR|bbus_mux[1]~1_combout\ & (\PC0|DATAPATH|reg_opl\(0))) # (!\PC0|CTR|bbus_mux[1]~1_combout\ & ((\PC0|CTR|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_opl\(0),
	datac => \PC0|CTR|Mux4~3_combout\,
	datad => \PC0|CTR|bbus_mux[1]~1_combout\,
	combout => \PC0|CTR|Mux4~2_combout\);

-- Location: FF_X66_Y37_N15
\PC0|CTR|bbus_mux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux4~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|bbus_mux[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|bbus_mux\(0));

-- Location: LCCOMB_X66_Y38_N26
\PC0|DATAPATH|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux13~0_combout\ = (\p_in[3]~input_o\ & (\PC0|CTR|bbus_mux\(2) & (!\PC0|CTR|bbus_mux\(1) & \PC0|CTR|bbus_mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in[3]~input_o\,
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|CTR|bbus_mux\(1),
	datad => \PC0|CTR|bbus_mux\(0),
	combout => \PC0|DATAPATH|Mux13~0_combout\);

-- Location: LCCOMB_X66_Y38_N28
\PC0|DATAPATH|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux16~4_combout\ = \PC0|CTR|bbus_mux\(2) $ (((\PC0|CTR|bbus_mux\(0)) # (\PC0|CTR|bbus_mux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|CTR|bbus_mux\(1),
	combout => \PC0|DATAPATH|Mux16~4_combout\);

-- Location: FF_X63_Y38_N3
\PC0|DATAPATH|reg_oplo[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[3]~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(3));

-- Location: LCCOMB_X66_Y38_N4
\PC0|DATAPATH|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux13~1_combout\ = (\PC0|DATAPATH|reg_oplo\(3) & ((\PC0|CTR|bbus_mux\(1) & (\PC0|CTR|bbus_mux\(2))) # (!\PC0|CTR|bbus_mux\(1) & (!\PC0|CTR|bbus_mux\(2) & !\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(1),
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|DATAPATH|reg_oplo\(3),
	datad => \PC0|CTR|bbus_mux\(0),
	combout => \PC0|DATAPATH|Mux13~1_combout\);

-- Location: LCCOMB_X66_Y37_N30
\PC0|DATAPATH|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~1_combout\ = (\PC0|CTR|bbus_mux\(1) & !\PC0|CTR|bbus_mux\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|bbus_mux\(1),
	datad => \PC0|CTR|bbus_mux\(2),
	combout => \PC0|DATAPATH|Mux11~1_combout\);

-- Location: LCCOMB_X62_Y37_N8
\PC0|DATAPATH|reg_pc[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[2]~16_combout\ = (\PC0|DATAPATH|reg_pc\(2) & (\PC0|DATAPATH|reg_pc[1]~15\ $ (GND))) # (!\PC0|DATAPATH|reg_pc\(2) & (!\PC0|DATAPATH|reg_pc[1]~15\ & VCC))
-- \PC0|DATAPATH|reg_pc[2]~17\ = CARRY((\PC0|DATAPATH|reg_pc\(2) & !\PC0|DATAPATH|reg_pc[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(2),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[1]~15\,
	combout => \PC0|DATAPATH|reg_pc[2]~16_combout\,
	cout => \PC0|DATAPATH|reg_pc[2]~17\);

-- Location: LCCOMB_X62_Y37_N10
\PC0|DATAPATH|reg_pc[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[3]~18_combout\ = (\PC0|DATAPATH|reg_pc\(3) & (!\PC0|DATAPATH|reg_pc[2]~17\)) # (!\PC0|DATAPATH|reg_pc\(3) & ((\PC0|DATAPATH|reg_pc[2]~17\) # (GND)))
-- \PC0|DATAPATH|reg_pc[3]~19\ = CARRY((!\PC0|DATAPATH|reg_pc[2]~17\) # (!\PC0|DATAPATH|reg_pc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(3),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[2]~17\,
	combout => \PC0|DATAPATH|reg_pc[3]~18_combout\,
	cout => \PC0|DATAPATH|reg_pc[3]~19\);

-- Location: LCCOMB_X65_Y39_N16
\PC0|CTR|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux1~0_combout\ = (\PC0|CTR|w_pc~q\) # ((\PC0|CTR|state\(0) & ((\PC0|CTR|w_flag~0_combout\))) # (!\PC0|CTR|state\(0) & (!\PC0|CTR|ram_cs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_pc~q\,
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|ram_cs~0_combout\,
	datad => \PC0|CTR|w_flag~0_combout\,
	combout => \PC0|CTR|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y39_N24
\PC0|CTR|w_pc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_pc~0_combout\ = (\PC0|CTR|state\(2) & (\PC0|CTR|w_pc~q\)) # (!\PC0|CTR|state\(2) & ((\PC0|CTR|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|w_pc~q\,
	datad => \PC0|CTR|Mux1~0_combout\,
	combout => \PC0|CTR|w_pc~0_combout\);

-- Location: LCCOMB_X65_Y39_N10
\PC0|CTR|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux1~1_combout\ = \PC0|CTR|state\(0) $ (\PC0|CTR|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|state\(0),
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux1~1_combout\);

-- Location: LCCOMB_X65_Y39_N18
\PC0|CTR|Mux1~1_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux1~1_wirecell_combout\ = !\PC0|CTR|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|CTR|Mux1~1_combout\,
	combout => \PC0|CTR|Mux1~1_wirecell_combout\);

-- Location: FF_X65_Y39_N25
\PC0|CTR|w_pc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|w_pc~0_combout\,
	asdata => \PC0|CTR|Mux1~1_wirecell_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|ALT_INV_state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_pc~q\);

-- Location: FF_X62_Y37_N11
\PC0|DATAPATH|reg_pc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[3]~18_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(3),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(3));

-- Location: LCCOMB_X67_Y39_N22
\PC0|CTR|w_bx~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_bx~1_combout\ = (\PC0|DATAPATH|reg_opl\(1) & (!\PC0|DATAPATH|reg_opl\(0) & !\PC0|DATAPATH|reg_opl\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(1),
	datac => \PC0|DATAPATH|reg_opl\(0),
	datad => \PC0|DATAPATH|reg_opl\(2),
	combout => \PC0|CTR|w_bx~1_combout\);

-- Location: LCCOMB_X66_Y39_N6
\PC0|CTR|w_bx~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_bx~2_combout\ = (\PC0|CTR|w_bx~q\) # ((\PC0|CTR|Equal2~5_combout\ & (\PC0|CTR|always0~2_combout\ & \PC0|CTR|w_bx~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_bx~q\,
	datab => \PC0|CTR|Equal2~5_combout\,
	datac => \PC0|CTR|always0~2_combout\,
	datad => \PC0|CTR|w_bx~1_combout\,
	combout => \PC0|CTR|w_bx~2_combout\);

-- Location: LCCOMB_X63_Y39_N4
\PC0|CTR|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux21~2_combout\ = (\PC0|CTR|state\(0) & ((\PC0|DATAPATH|reg_opl\(6)) # ((\PC0|CTR|Equal10~0_combout\) # (\PC0|DATAPATH|reg_opl\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(6),
	datab => \PC0|CTR|Equal10~0_combout\,
	datac => \PC0|CTR|state\(0),
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|Mux21~2_combout\);

-- Location: LCCOMB_X67_Y39_N16
\PC0|CTR|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux24~0_combout\ = (\PC0|CTR|state\(2) & ((\PC0|CTR|w_bx~q\) # ((\PC0|CTR|w_bx~1_combout\ & !\PC0|DATAPATH|reg_opl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_bx~1_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|w_bx~q\,
	datad => \PC0|DATAPATH|reg_opl\(3),
	combout => \PC0|CTR|Mux24~0_combout\);

-- Location: LCCOMB_X67_Y39_N14
\PC0|CTR|w_bx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_bx~0_combout\ = (\PC0|CTR|Mux21~2_combout\ & (\PC0|CTR|w_bx~2_combout\)) # (!\PC0|CTR|Mux21~2_combout\ & ((\PC0|CTR|Mux24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_bx~2_combout\,
	datab => \PC0|CTR|Mux21~2_combout\,
	datad => \PC0|CTR|Mux24~0_combout\,
	combout => \PC0|CTR|w_bx~0_combout\);

-- Location: LCCOMB_X67_Y39_N2
\PC0|CTR|w_bx~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_bx~3_combout\ = (\PC0|DATAPATH|reg_opl\(7) & (\PC0|CTR|Equal2~5_combout\ & (!\PC0|DATAPATH|reg_opl\(5) & \PC0|CTR|always0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(7),
	datab => \PC0|CTR|Equal2~5_combout\,
	datac => \PC0|DATAPATH|reg_opl\(5),
	datad => \PC0|CTR|always0~9_combout\,
	combout => \PC0|CTR|w_bx~3_combout\);

-- Location: LCCOMB_X67_Y39_N4
\PC0|CTR|w_bx~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_bx~4_combout\ = (\PC0|CTR|w_bx~q\) # ((\PC0|CTR|w_bx~3_combout\) # ((\PC0|CTR|Equal6~0_combout\ & \PC0|CTR|w_bx~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal6~0_combout\,
	datab => \PC0|CTR|w_bx~q\,
	datac => \PC0|CTR|w_bx~1_combout\,
	datad => \PC0|CTR|w_bx~3_combout\,
	combout => \PC0|CTR|w_bx~4_combout\);

-- Location: LCCOMB_X66_Y39_N2
\PC0|CTR|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux25~2_combout\ = (!\PC0|CTR|Equal10~0_combout\ & (\PC0|CTR|Mux25~1_combout\ & (!\PC0|DATAPATH|reg_opl\(4) & \PC0|CTR|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal10~0_combout\,
	datab => \PC0|CTR|Mux25~1_combout\,
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|Mux25~2_combout\);

-- Location: LCCOMB_X66_Y39_N24
\PC0|CTR|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux25~3_combout\ = (\PC0|CTR|Mux25~2_combout\) # ((!\PC0|CTR|state\(2) & ((\PC0|CTR|Mux25~0_combout\) # (!\PC0|CTR|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|Mux25~0_combout\,
	datad => \PC0|CTR|Mux25~2_combout\,
	combout => \PC0|CTR|Mux25~3_combout\);

-- Location: FF_X67_Y39_N15
\PC0|CTR|w_bx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|w_bx~0_combout\,
	asdata => \PC0|CTR|w_bx~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|state\(1),
	ena => \PC0|CTR|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_bx~q\);

-- Location: FF_X66_Y38_N3
\PC0|DATAPATH|reg_bx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux4~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(3));

-- Location: LCCOMB_X65_Y35_N16
\PC0|DATAPATH|reg_ax[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_ax[3]~feeder_combout\ = \PC0|DATAPATH|Mux4~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux4~5_combout\,
	combout => \PC0|DATAPATH|reg_ax[3]~feeder_combout\);

-- Location: LCCOMB_X62_Y39_N24
\PC0|CTR|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux25~4_combout\ = (!\PC0|DATAPATH|reg_opl\(3) & (!\PC0|DATAPATH|reg_opl\(2) & (\PC0|DATAPATH|reg_opl\(0) & !\PC0|DATAPATH|reg_opl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(2),
	datac => \PC0|DATAPATH|reg_opl\(0),
	datad => \PC0|DATAPATH|reg_opl\(1),
	combout => \PC0|CTR|Mux25~4_combout\);

-- Location: LCCOMB_X65_Y39_N14
\PC0|CTR|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux25~5_combout\ = (\PC0|CTR|state\(2) & ((\PC0|CTR|w_ax~q\) # (\PC0|CTR|Mux25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|w_ax~q\,
	datad => \PC0|CTR|Mux25~4_combout\,
	combout => \PC0|CTR|Mux25~5_combout\);

-- Location: LCCOMB_X67_Y39_N0
\PC0|CTR|w_ax~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_ax~3_combout\ = (\PC0|DATAPATH|reg_opl\(0) & !\PC0|DATAPATH|reg_opl\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_opl\(0),
	datac => \PC0|DATAPATH|reg_opl\(1),
	combout => \PC0|CTR|w_ax~3_combout\);

-- Location: LCCOMB_X66_Y39_N20
\PC0|CTR|w_ax~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_ax~4_combout\ = (\PC0|CTR|w_ax~q\) # ((\PC0|CTR|w_ax~3_combout\ & (!\PC0|DATAPATH|reg_opl\(2) & !\PC0|CTR|always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_ax~3_combout\,
	datab => \PC0|DATAPATH|reg_opl\(2),
	datac => \PC0|CTR|always0~4_combout\,
	datad => \PC0|CTR|w_ax~q\,
	combout => \PC0|CTR|w_ax~4_combout\);

-- Location: LCCOMB_X66_Y39_N16
\PC0|CTR|w_ax~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_ax~0_combout\ = (\PC0|CTR|Mux21~2_combout\ & ((\PC0|CTR|w_ax~4_combout\))) # (!\PC0|CTR|Mux21~2_combout\ & (\PC0|CTR|Mux25~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux25~5_combout\,
	datab => \PC0|CTR|Mux21~2_combout\,
	datad => \PC0|CTR|w_ax~4_combout\,
	combout => \PC0|CTR|w_ax~0_combout\);

-- Location: LCCOMB_X67_Y39_N10
\PC0|CTR|w_ax~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_ax~7_combout\ = (!\PC0|DATAPATH|reg_opl\(4) & (\PC0|DATAPATH|reg_opl\(7) & (\PC0|DATAPATH|reg_opl\(3) & \PC0|CTR|always0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(4),
	datab => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|always0~9_combout\,
	combout => \PC0|CTR|w_ax~7_combout\);

-- Location: LCCOMB_X67_Y39_N6
\PC0|CTR|w_ax~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_ax~5_combout\ = (\PC0|CTR|w_ax~q\) # ((!\PC0|DATAPATH|reg_opl\(2) & (\PC0|CTR|Equal6~0_combout\ & \PC0|CTR|w_ax~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datab => \PC0|CTR|w_ax~q\,
	datac => \PC0|CTR|Equal6~0_combout\,
	datad => \PC0|CTR|w_ax~3_combout\,
	combout => \PC0|CTR|w_ax~5_combout\);

-- Location: LCCOMB_X67_Y39_N20
\PC0|CTR|w_ax~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_ax~6_combout\ = (\PC0|CTR|w_ax~5_combout\) # ((\PC0|CTR|w_ax~7_combout\ & !\PC0|DATAPATH|reg_opl\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_ax~7_combout\,
	datac => \PC0|DATAPATH|reg_opl\(5),
	datad => \PC0|CTR|w_ax~5_combout\,
	combout => \PC0|CTR|w_ax~6_combout\);

-- Location: FF_X66_Y39_N17
\PC0|CTR|w_ax\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|w_ax~0_combout\,
	asdata => \PC0|CTR|w_ax~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|state\(1),
	ena => \PC0|CTR|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_ax~q\);

-- Location: FF_X65_Y35_N17
\PC0|DATAPATH|reg_ax[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_ax[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(3));

-- Location: LCCOMB_X66_Y37_N0
\PC0|DATAPATH|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~0_combout\ = (\PC0|CTR|bbus_mux\(2)) # ((\PC0|CTR|bbus_mux\(1) & \PC0|CTR|bbus_mux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|CTR|bbus_mux\(2),
	combout => \PC0|DATAPATH|Mux11~0_combout\);

-- Location: LCCOMB_X62_Y37_N12
\PC0|DATAPATH|reg_pc[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[4]~20_combout\ = (\PC0|DATAPATH|reg_pc\(4) & (\PC0|DATAPATH|reg_pc[3]~19\ $ (GND))) # (!\PC0|DATAPATH|reg_pc\(4) & (!\PC0|DATAPATH|reg_pc[3]~19\ & VCC))
-- \PC0|DATAPATH|reg_pc[4]~21\ = CARRY((\PC0|DATAPATH|reg_pc\(4) & !\PC0|DATAPATH|reg_pc[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(4),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[3]~19\,
	combout => \PC0|DATAPATH|reg_pc[4]~20_combout\,
	cout => \PC0|DATAPATH|reg_pc[4]~21\);

-- Location: FF_X63_Y37_N29
\PC0|DATAPATH|reg_oplo[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[4]~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(4));

-- Location: FF_X62_Y37_N13
\PC0|DATAPATH|reg_pc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[4]~20_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(4),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(4));

-- Location: LCCOMB_X62_Y37_N14
\PC0|DATAPATH|reg_pc[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[5]~22_combout\ = (\PC0|DATAPATH|reg_pc\(5) & (!\PC0|DATAPATH|reg_pc[4]~21\)) # (!\PC0|DATAPATH|reg_pc\(5) & ((\PC0|DATAPATH|reg_pc[4]~21\) # (GND)))
-- \PC0|DATAPATH|reg_pc[5]~23\ = CARRY((!\PC0|DATAPATH|reg_pc[4]~21\) # (!\PC0|DATAPATH|reg_pc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(5),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[4]~21\,
	combout => \PC0|DATAPATH|reg_pc[5]~22_combout\,
	cout => \PC0|DATAPATH|reg_pc[5]~23\);

-- Location: FF_X63_Y38_N29
\PC0|DATAPATH|reg_oplo[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[5]~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(5));

-- Location: FF_X62_Y37_N15
\PC0|DATAPATH|reg_pc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[5]~22_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(5),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(5));

-- Location: LCCOMB_X62_Y37_N16
\PC0|DATAPATH|reg_pc[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[6]~24_combout\ = (\PC0|DATAPATH|reg_pc\(6) & (\PC0|DATAPATH|reg_pc[5]~23\ $ (GND))) # (!\PC0|DATAPATH|reg_pc\(6) & (!\PC0|DATAPATH|reg_pc[5]~23\ & VCC))
-- \PC0|DATAPATH|reg_pc[6]~25\ = CARRY((\PC0|DATAPATH|reg_pc\(6) & !\PC0|DATAPATH|reg_pc[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(6),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[5]~23\,
	combout => \PC0|DATAPATH|reg_pc[6]~24_combout\,
	cout => \PC0|DATAPATH|reg_pc[6]~25\);

-- Location: FF_X63_Y38_N7
\PC0|DATAPATH|reg_oplo[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[6]~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(6));

-- Location: FF_X62_Y37_N17
\PC0|DATAPATH|reg_pc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[6]~24_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(6),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(6));

-- Location: LCCOMB_X62_Y37_N18
\PC0|DATAPATH|reg_pc[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[7]~26_combout\ = (\PC0|DATAPATH|reg_pc\(7) & (!\PC0|DATAPATH|reg_pc[6]~25\)) # (!\PC0|DATAPATH|reg_pc\(7) & ((\PC0|DATAPATH|reg_pc[6]~25\) # (GND)))
-- \PC0|DATAPATH|reg_pc[7]~27\ = CARRY((!\PC0|DATAPATH|reg_pc[6]~25\) # (!\PC0|DATAPATH|reg_pc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(7),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[6]~25\,
	combout => \PC0|DATAPATH|reg_pc[7]~26_combout\,
	cout => \PC0|DATAPATH|reg_pc[7]~27\);

-- Location: FF_X63_Y37_N5
\PC0|DATAPATH|reg_oplo[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[7]~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(7));

-- Location: FF_X62_Y37_N19
\PC0|DATAPATH|reg_pc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[7]~26_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(7),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(7));

-- Location: LCCOMB_X62_Y37_N20
\PC0|DATAPATH|reg_pc[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[8]~28_combout\ = (\PC0|DATAPATH|reg_pc\(8) & (\PC0|DATAPATH|reg_pc[7]~27\ $ (GND))) # (!\PC0|DATAPATH|reg_pc\(8) & (!\PC0|DATAPATH|reg_pc[7]~27\ & VCC))
-- \PC0|DATAPATH|reg_pc[8]~29\ = CARRY((\PC0|DATAPATH|reg_pc\(8) & !\PC0|DATAPATH|reg_pc[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(8),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[7]~27\,
	combout => \PC0|DATAPATH|reg_pc[8]~28_combout\,
	cout => \PC0|DATAPATH|reg_pc[8]~29\);

-- Location: LCCOMB_X61_Y39_N10
\PC0|CTR|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal8~2_combout\ = (\PC0|CTR|Equal8~1_combout\ & \PC0|DATAPATH|reg_opl\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|Equal8~1_combout\,
	datad => \PC0|DATAPATH|reg_opl\(3),
	combout => \PC0|CTR|Equal8~2_combout\);

-- Location: LCCOMB_X61_Y38_N18
\PC0|CTR|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux9~0_combout\ = (\PC0|CTR|Mux2~2_combout\ & ((\PC0|CTR|Equal8~2_combout\ & (!\PC0|CTR|state\(0))) # (!\PC0|CTR|Equal8~2_combout\ & ((\PC0|CTR|state\(0)) # (\PC0|CTR|w_ophi~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal8~2_combout\,
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|w_ophi~q\,
	datad => \PC0|CTR|Mux2~2_combout\,
	combout => \PC0|CTR|Mux9~0_combout\);

-- Location: FF_X61_Y38_N19
\PC0|CTR|w_ophi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux9~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_ophi~q\);

-- Location: FF_X62_Y38_N31
\PC0|DATAPATH|reg_ophi[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[0]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_ophi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ophi\(0));

-- Location: FF_X62_Y37_N21
\PC0|DATAPATH|reg_pc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[8]~28_combout\,
	asdata => \PC0|DATAPATH|reg_ophi\(0),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(8));

-- Location: LCCOMB_X62_Y37_N22
\PC0|DATAPATH|reg_pc[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[9]~30_combout\ = (\PC0|DATAPATH|reg_pc\(9) & (!\PC0|DATAPATH|reg_pc[8]~29\)) # (!\PC0|DATAPATH|reg_pc\(9) & ((\PC0|DATAPATH|reg_pc[8]~29\) # (GND)))
-- \PC0|DATAPATH|reg_pc[9]~31\ = CARRY((!\PC0|DATAPATH|reg_pc[8]~29\) # (!\PC0|DATAPATH|reg_pc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(9),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[8]~29\,
	combout => \PC0|DATAPATH|reg_pc[9]~30_combout\,
	cout => \PC0|DATAPATH|reg_pc[9]~31\);

-- Location: FF_X63_Y38_N5
\PC0|DATAPATH|reg_ophi[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[1]~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_ophi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ophi\(1));

-- Location: FF_X62_Y37_N23
\PC0|DATAPATH|reg_pc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[9]~30_combout\,
	asdata => \PC0|DATAPATH|reg_ophi\(1),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(9));

-- Location: LCCOMB_X62_Y37_N24
\PC0|DATAPATH|reg_pc[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[10]~32_combout\ = (\PC0|DATAPATH|reg_pc\(10) & (\PC0|DATAPATH|reg_pc[9]~31\ $ (GND))) # (!\PC0|DATAPATH|reg_pc\(10) & (!\PC0|DATAPATH|reg_pc[9]~31\ & VCC))
-- \PC0|DATAPATH|reg_pc[10]~33\ = CARRY((\PC0|DATAPATH|reg_pc\(10) & !\PC0|DATAPATH|reg_pc[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_pc\(10),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[9]~31\,
	combout => \PC0|DATAPATH|reg_pc[10]~32_combout\,
	cout => \PC0|DATAPATH|reg_pc[10]~33\);

-- Location: FF_X63_Y38_N1
\PC0|DATAPATH|reg_ophi[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[2]~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_ophi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ophi\(2));

-- Location: FF_X62_Y37_N25
\PC0|DATAPATH|reg_pc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[10]~32_combout\,
	asdata => \PC0|DATAPATH|reg_ophi\(2),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(10));

-- Location: LCCOMB_X62_Y37_N26
\PC0|DATAPATH|reg_pc[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[11]~34_combout\ = \PC0|DATAPATH|reg_pc\(11) $ (\PC0|DATAPATH|reg_pc[10]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(11),
	cin => \PC0|DATAPATH|reg_pc[10]~33\,
	combout => \PC0|DATAPATH|reg_pc[11]~34_combout\);

-- Location: LCCOMB_X63_Y36_N10
\PC0|DATAPATH|reg_ophi[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_ophi[3]~feeder_combout\ = \d_in[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[3]~3_combout\,
	combout => \PC0|DATAPATH|reg_ophi[3]~feeder_combout\);

-- Location: FF_X63_Y36_N11
\PC0|DATAPATH|reg_ophi[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_ophi[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_ophi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ophi\(3));

-- Location: FF_X62_Y37_N27
\PC0|DATAPATH|reg_pc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[11]~34_combout\,
	asdata => \PC0|DATAPATH|reg_ophi\(3),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(11));

-- Location: LCCOMB_X66_Y38_N20
\PC0|DATAPATH|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux13~2_combout\ = (\PC0|DATAPATH|Mux11~0_combout\ & (((\PC0|DATAPATH|reg_pc\(11)) # (\PC0|DATAPATH|Mux11~1_combout\)))) # (!\PC0|DATAPATH|Mux11~0_combout\ & (\PC0|DATAPATH|reg_ax\(3) & ((!\PC0|DATAPATH|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_ax\(3),
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|reg_pc\(11),
	datad => \PC0|DATAPATH|Mux11~1_combout\,
	combout => \PC0|DATAPATH|Mux13~2_combout\);

-- Location: LCCOMB_X66_Y38_N2
\PC0|DATAPATH|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux13~3_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|Mux13~2_combout\ & (\PC0|DATAPATH|reg_pc\(3))) # (!\PC0|DATAPATH|Mux13~2_combout\ & ((\PC0|DATAPATH|reg_bx\(3)))))) # (!\PC0|DATAPATH|Mux11~1_combout\ & 
-- (((\PC0|DATAPATH|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux11~1_combout\,
	datab => \PC0|DATAPATH|reg_pc\(3),
	datac => \PC0|DATAPATH|reg_bx\(3),
	datad => \PC0|DATAPATH|Mux13~2_combout\,
	combout => \PC0|DATAPATH|Mux13~3_combout\);

-- Location: LCCOMB_X66_Y38_N18
\PC0|DATAPATH|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux13~4_combout\ = (\PC0|DATAPATH|Mux13~0_combout\) # ((\PC0|DATAPATH|Mux13~1_combout\) # ((\PC0|DATAPATH|Mux16~4_combout\ & \PC0|DATAPATH|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux13~0_combout\,
	datab => \PC0|DATAPATH|Mux16~4_combout\,
	datac => \PC0|DATAPATH|Mux13~1_combout\,
	datad => \PC0|DATAPATH|Mux13~3_combout\,
	combout => \PC0|DATAPATH|Mux13~4_combout\);

-- Location: LCCOMB_X65_Y35_N22
\PC0|DATAPATH|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux4~0_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|reg_acc\(3) $ (((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux13~4_combout\,
	datad => \PC0|DATAPATH|reg_acc\(3),
	combout => \PC0|DATAPATH|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y35_N8
\PC0|DATAPATH|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux4~1_combout\ = (\PC0|DATAPATH|Mux4~0_combout\ & (((\PC0|DATAPATH|reg_acc\(2)) # (!\PC0|CTR|alu_func\(1))))) # (!\PC0|DATAPATH|Mux4~0_combout\ & (\PC0|DATAPATH|reg_acc\(4) & ((\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(4),
	datab => \PC0|DATAPATH|reg_acc\(2),
	datac => \PC0|DATAPATH|Mux4~0_combout\,
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|Mux4~1_combout\);

-- Location: IOIBUF_X115_Y36_N15
\p_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(2),
	o => \p_in[2]~input_o\);

-- Location: LCCOMB_X66_Y37_N2
\PC0|DATAPATH|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux14~0_combout\ = (\p_in[2]~input_o\ & (!\PC0|CTR|bbus_mux\(1) & (\PC0|CTR|bbus_mux\(0) & \PC0|CTR|bbus_mux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in[2]~input_o\,
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|CTR|bbus_mux\(2),
	combout => \PC0|DATAPATH|Mux14~0_combout\);

-- Location: FF_X66_Y37_N29
\PC0|DATAPATH|reg_bx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux5~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(2));

-- Location: FF_X66_Y35_N7
\PC0|DATAPATH|reg_ax[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|Mux5~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(2));

-- Location: LCCOMB_X66_Y37_N28
\PC0|DATAPATH|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux14~2_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|Mux11~0_combout\) # ((\PC0|DATAPATH|reg_bx\(2))))) # (!\PC0|DATAPATH|Mux11~1_combout\ & (!\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|reg_ax\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux11~1_combout\,
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|reg_bx\(2),
	datad => \PC0|DATAPATH|reg_ax\(2),
	combout => \PC0|DATAPATH|Mux14~2_combout\);

-- Location: LCCOMB_X66_Y37_N22
\PC0|DATAPATH|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux14~3_combout\ = (\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|Mux14~2_combout\ & ((\PC0|DATAPATH|reg_pc\(2)))) # (!\PC0|DATAPATH|Mux14~2_combout\ & (\PC0|DATAPATH|reg_pc\(10))))) # (!\PC0|DATAPATH|Mux11~0_combout\ & 
-- (((\PC0|DATAPATH|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(10),
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|reg_pc\(2),
	datad => \PC0|DATAPATH|Mux14~2_combout\,
	combout => \PC0|DATAPATH|Mux14~3_combout\);

-- Location: FF_X63_Y37_N9
\PC0|DATAPATH|reg_oplo[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[2]~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(2));

-- Location: LCCOMB_X63_Y37_N2
\PC0|DATAPATH|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux14~1_combout\ = (\PC0|DATAPATH|reg_oplo\(2) & ((\PC0|CTR|bbus_mux\(2) & (\PC0|CTR|bbus_mux\(1))) # (!\PC0|CTR|bbus_mux\(2) & (!\PC0|CTR|bbus_mux\(1) & !\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(2),
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|DATAPATH|reg_oplo\(2),
	combout => \PC0|DATAPATH|Mux14~1_combout\);

-- Location: LCCOMB_X66_Y37_N8
\PC0|DATAPATH|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux14~4_combout\ = (\PC0|DATAPATH|Mux14~0_combout\) # ((\PC0|DATAPATH|Mux14~1_combout\) # ((\PC0|DATAPATH|Mux16~4_combout\ & \PC0|DATAPATH|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux16~4_combout\,
	datab => \PC0|DATAPATH|Mux14~0_combout\,
	datac => \PC0|DATAPATH|Mux14~3_combout\,
	datad => \PC0|DATAPATH|Mux14~1_combout\,
	combout => \PC0|DATAPATH|Mux14~4_combout\);

-- Location: LCCOMB_X67_Y37_N24
\PC0|DATAPATH|reg_acc[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_acc[1]~feeder_combout\ = \PC0|DATAPATH|Mux6~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux6~5_combout\,
	combout => \PC0|DATAPATH|reg_acc[1]~feeder_combout\);

-- Location: FF_X67_Y37_N25
\PC0|DATAPATH|reg_acc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_acc[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(1));

-- Location: LCCOMB_X65_Y37_N26
\PC0|DATAPATH|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux6~0_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|reg_acc\(1) $ (((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|DATAPATH|Mux15~4_combout\,
	datac => \PC0|DATAPATH|reg_acc\(1),
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|Mux6~0_combout\);

-- Location: FF_X67_Y36_N15
\PC0|DATAPATH|reg_acc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux7~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(0));

-- Location: LCCOMB_X65_Y37_N16
\PC0|DATAPATH|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux6~1_combout\ = (\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Mux6~0_combout\ & ((\PC0|DATAPATH|reg_acc\(0)))) # (!\PC0|DATAPATH|Mux6~0_combout\ & (\PC0|DATAPATH|reg_acc\(2))))) # (!\PC0|CTR|alu_func\(1) & (((\PC0|DATAPATH|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(2),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux6~0_combout\,
	datad => \PC0|DATAPATH|reg_acc\(0),
	combout => \PC0|DATAPATH|Mux6~1_combout\);

-- Location: IOIBUF_X65_Y0_N1
\p_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(0),
	o => \p_in[0]~input_o\);

-- Location: LCCOMB_X65_Y36_N8
\PC0|DATAPATH|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux16~0_combout\ = (\PC0|CTR|bbus_mux\(2) & (\p_in[0]~input_o\ & (!\PC0|CTR|bbus_mux\(1) & \PC0|CTR|bbus_mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(2),
	datab => \p_in[0]~input_o\,
	datac => \PC0|CTR|bbus_mux\(1),
	datad => \PC0|CTR|bbus_mux\(0),
	combout => \PC0|DATAPATH|Mux16~0_combout\);

-- Location: LCCOMB_X63_Y37_N22
\PC0|DATAPATH|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux16~1_combout\ = (\PC0|DATAPATH|reg_oplo\(0) & ((\PC0|CTR|bbus_mux\(2) & (\PC0|CTR|bbus_mux\(1))) # (!\PC0|CTR|bbus_mux\(2) & (!\PC0|CTR|bbus_mux\(1) & !\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(2),
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|DATAPATH|reg_oplo\(0),
	combout => \PC0|DATAPATH|Mux16~1_combout\);

-- Location: FF_X65_Y37_N1
\PC0|DATAPATH|reg_ax[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux7~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(0));

-- Location: FF_X66_Y37_N27
\PC0|DATAPATH|reg_bx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux7~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(0));

-- Location: LCCOMB_X66_Y37_N24
\PC0|DATAPATH|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux16~2_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & (((\PC0|DATAPATH|reg_pc\(0)) # (!\PC0|DATAPATH|Mux11~0_combout\)))) # (!\PC0|DATAPATH|Mux11~1_combout\ & (\PC0|DATAPATH|reg_pc\(8) & ((\PC0|DATAPATH|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux11~1_combout\,
	datab => \PC0|DATAPATH|reg_pc\(8),
	datac => \PC0|DATAPATH|reg_pc\(0),
	datad => \PC0|DATAPATH|Mux11~0_combout\,
	combout => \PC0|DATAPATH|Mux16~2_combout\);

-- Location: LCCOMB_X66_Y37_N26
\PC0|DATAPATH|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux16~3_combout\ = (\PC0|DATAPATH|Mux11~0_combout\ & (((\PC0|DATAPATH|Mux16~2_combout\)))) # (!\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|Mux16~2_combout\ & ((\PC0|DATAPATH|reg_bx\(0)))) # (!\PC0|DATAPATH|Mux16~2_combout\ & 
-- (\PC0|DATAPATH|reg_ax\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_ax\(0),
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|reg_bx\(0),
	datad => \PC0|DATAPATH|Mux16~2_combout\,
	combout => \PC0|DATAPATH|Mux16~3_combout\);

-- Location: LCCOMB_X66_Y36_N0
\PC0|DATAPATH|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux16~5_combout\ = (\PC0|DATAPATH|Mux16~0_combout\) # ((\PC0|DATAPATH|Mux16~1_combout\) # ((\PC0|DATAPATH|Mux16~4_combout\ & \PC0|DATAPATH|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux16~0_combout\,
	datab => \PC0|DATAPATH|Mux16~4_combout\,
	datac => \PC0|DATAPATH|Mux16~1_combout\,
	datad => \PC0|DATAPATH|Mux16~3_combout\,
	combout => \PC0|DATAPATH|Mux16~5_combout\);

-- Location: LCCOMB_X66_Y36_N2
\PC0|DATAPATH|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~0_combout\ = (\PC0|DATAPATH|reg_acc\(0) & ((GND) # (!\PC0|DATAPATH|Mux16~5_combout\))) # (!\PC0|DATAPATH|reg_acc\(0) & (\PC0|DATAPATH|Mux16~5_combout\ $ (GND)))
-- \PC0|DATAPATH|Add4~1\ = CARRY((\PC0|DATAPATH|reg_acc\(0)) # (!\PC0|DATAPATH|Mux16~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(0),
	datab => \PC0|DATAPATH|Mux16~5_combout\,
	datad => VCC,
	combout => \PC0|DATAPATH|Add4~0_combout\,
	cout => \PC0|DATAPATH|Add4~1\);

-- Location: LCCOMB_X66_Y36_N4
\PC0|DATAPATH|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~2_combout\ = (\PC0|DATAPATH|Mux15~4_combout\ & ((\PC0|DATAPATH|reg_acc\(1) & (!\PC0|DATAPATH|Add4~1\)) # (!\PC0|DATAPATH|reg_acc\(1) & ((\PC0|DATAPATH|Add4~1\) # (GND))))) # (!\PC0|DATAPATH|Mux15~4_combout\ & ((\PC0|DATAPATH|reg_acc\(1) 
-- & (\PC0|DATAPATH|Add4~1\ & VCC)) # (!\PC0|DATAPATH|reg_acc\(1) & (!\PC0|DATAPATH|Add4~1\))))
-- \PC0|DATAPATH|Add4~3\ = CARRY((\PC0|DATAPATH|Mux15~4_combout\ & ((!\PC0|DATAPATH|Add4~1\) # (!\PC0|DATAPATH|reg_acc\(1)))) # (!\PC0|DATAPATH|Mux15~4_combout\ & (!\PC0|DATAPATH|reg_acc\(1) & !\PC0|DATAPATH|Add4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux15~4_combout\,
	datab => \PC0|DATAPATH|reg_acc\(1),
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~1\,
	combout => \PC0|DATAPATH|Add4~2_combout\,
	cout => \PC0|DATAPATH|Add4~3\);

-- Location: LCCOMB_X67_Y36_N14
\PC0|DATAPATH|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~0_combout\ = (\PC0|DATAPATH|Mux16~5_combout\ & (\PC0|DATAPATH|reg_acc\(0) $ (VCC))) # (!\PC0|DATAPATH|Mux16~5_combout\ & (\PC0|DATAPATH|reg_acc\(0) & VCC))
-- \PC0|DATAPATH|Add3~1\ = CARRY((\PC0|DATAPATH|Mux16~5_combout\ & \PC0|DATAPATH|reg_acc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux16~5_combout\,
	datab => \PC0|DATAPATH|reg_acc\(0),
	datad => VCC,
	combout => \PC0|DATAPATH|Add3~0_combout\,
	cout => \PC0|DATAPATH|Add3~1\);

-- Location: LCCOMB_X67_Y36_N16
\PC0|DATAPATH|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~2_combout\ = (\PC0|DATAPATH|Mux15~4_combout\ & ((\PC0|DATAPATH|reg_acc\(1) & (\PC0|DATAPATH|Add3~1\ & VCC)) # (!\PC0|DATAPATH|reg_acc\(1) & (!\PC0|DATAPATH|Add3~1\)))) # (!\PC0|DATAPATH|Mux15~4_combout\ & ((\PC0|DATAPATH|reg_acc\(1) & 
-- (!\PC0|DATAPATH|Add3~1\)) # (!\PC0|DATAPATH|reg_acc\(1) & ((\PC0|DATAPATH|Add3~1\) # (GND)))))
-- \PC0|DATAPATH|Add3~3\ = CARRY((\PC0|DATAPATH|Mux15~4_combout\ & (!\PC0|DATAPATH|reg_acc\(1) & !\PC0|DATAPATH|Add3~1\)) # (!\PC0|DATAPATH|Mux15~4_combout\ & ((!\PC0|DATAPATH|Add3~1\) # (!\PC0|DATAPATH|reg_acc\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux15~4_combout\,
	datab => \PC0|DATAPATH|reg_acc\(1),
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~1\,
	combout => \PC0|DATAPATH|Add3~2_combout\,
	cout => \PC0|DATAPATH|Add3~3\);

-- Location: LCCOMB_X65_Y37_N6
\PC0|DATAPATH|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux6~2_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & ((\PC0|CTR|alu_func\(0) & (\PC0|DATAPATH|Add4~2_combout\)) # (!\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Add3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(1),
	datab => \PC0|CTR|alu_func\(0),
	datac => \PC0|DATAPATH|Add4~2_combout\,
	datad => \PC0|DATAPATH|Add3~2_combout\,
	combout => \PC0|DATAPATH|Mux6~2_combout\);

-- Location: LCCOMB_X65_Y37_N20
\PC0|DATAPATH|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux6~3_combout\ = (\PC0|DATAPATH|reg_acc\(1) & ((\PC0|DATAPATH|Mux6~2_combout\) # ((\PC0|CTR|alu_func\(1) & \PC0|DATAPATH|Mux15~4_combout\)))) # (!\PC0|DATAPATH|reg_acc\(1) & (\PC0|DATAPATH|Mux6~2_combout\ & ((\PC0|DATAPATH|Mux15~4_combout\) 
-- # (!\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(1),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux15~4_combout\,
	datad => \PC0|DATAPATH|Mux6~2_combout\,
	combout => \PC0|DATAPATH|Mux6~3_combout\);

-- Location: LCCOMB_X65_Y37_N2
\PC0|DATAPATH|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux6~4_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & (\PC0|CTR|alu_func\(3))) # (!\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|CTR|alu_func\(3) & (\PC0|DATAPATH|Mux15~4_combout\)) # (!\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux3~0_combout\,
	datab => \PC0|CTR|alu_func\(3),
	datac => \PC0|DATAPATH|Mux15~4_combout\,
	datad => \PC0|DATAPATH|Mux6~3_combout\,
	combout => \PC0|DATAPATH|Mux6~4_combout\);

-- Location: LCCOMB_X65_Y37_N14
\PC0|DATAPATH|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux6~5_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux6~4_combout\ & (\PC0|DATAPATH|reg_acc\(1))) # (!\PC0|DATAPATH|Mux6~4_combout\ & ((\PC0|DATAPATH|Mux6~1_combout\))))) # (!\PC0|DATAPATH|Mux3~0_combout\ & 
-- (((\PC0|DATAPATH|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(1),
	datab => \PC0|DATAPATH|Mux6~1_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux6~4_combout\,
	combout => \PC0|DATAPATH|Mux6~5_combout\);

-- Location: FF_X66_Y37_N13
\PC0|DATAPATH|reg_bx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux6~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(1));

-- Location: FF_X65_Y37_N23
\PC0|DATAPATH|reg_ax[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux6~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(1));

-- Location: LCCOMB_X66_Y37_N6
\PC0|DATAPATH|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux15~2_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & (((\PC0|DATAPATH|Mux11~0_combout\)))) # (!\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|reg_pc\(9)))) # (!\PC0|DATAPATH|Mux11~0_combout\ & 
-- (\PC0|DATAPATH|reg_ax\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux11~1_combout\,
	datab => \PC0|DATAPATH|reg_ax\(1),
	datac => \PC0|DATAPATH|reg_pc\(9),
	datad => \PC0|DATAPATH|Mux11~0_combout\,
	combout => \PC0|DATAPATH|Mux15~2_combout\);

-- Location: LCCOMB_X66_Y37_N12
\PC0|DATAPATH|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux15~3_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|Mux15~2_combout\ & (\PC0|DATAPATH|reg_pc\(1))) # (!\PC0|DATAPATH|Mux15~2_combout\ & ((\PC0|DATAPATH|reg_bx\(1)))))) # (!\PC0|DATAPATH|Mux11~1_combout\ & 
-- (((\PC0|DATAPATH|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(1),
	datab => \PC0|DATAPATH|Mux11~1_combout\,
	datac => \PC0|DATAPATH|reg_bx\(1),
	datad => \PC0|DATAPATH|Mux15~2_combout\,
	combout => \PC0|DATAPATH|Mux15~3_combout\);

-- Location: IOIBUF_X115_Y36_N1
\p_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(1),
	o => \p_in[1]~input_o\);

-- Location: LCCOMB_X67_Y37_N30
\PC0|DATAPATH|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux15~0_combout\ = (\PC0|CTR|bbus_mux\(0) & (!\PC0|CTR|bbus_mux\(1) & (\PC0|CTR|bbus_mux\(2) & \p_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(0),
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|CTR|bbus_mux\(2),
	datad => \p_in[1]~input_o\,
	combout => \PC0|DATAPATH|Mux15~0_combout\);

-- Location: FF_X63_Y38_N13
\PC0|DATAPATH|reg_oplo[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[1]~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_oplo~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_oplo\(1));

-- Location: LCCOMB_X66_Y37_N18
\PC0|DATAPATH|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux15~1_combout\ = (\PC0|DATAPATH|reg_oplo\(1) & ((\PC0|CTR|bbus_mux\(2) & (\PC0|CTR|bbus_mux\(1))) # (!\PC0|CTR|bbus_mux\(2) & (!\PC0|CTR|bbus_mux\(1) & !\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(2),
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|DATAPATH|reg_oplo\(1),
	combout => \PC0|DATAPATH|Mux15~1_combout\);

-- Location: LCCOMB_X66_Y37_N20
\PC0|DATAPATH|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux15~4_combout\ = (\PC0|DATAPATH|Mux15~0_combout\) # ((\PC0|DATAPATH|Mux15~1_combout\) # ((\PC0|DATAPATH|Mux15~3_combout\ & \PC0|DATAPATH|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux15~3_combout\,
	datab => \PC0|DATAPATH|Mux16~4_combout\,
	datac => \PC0|DATAPATH|Mux15~0_combout\,
	datad => \PC0|DATAPATH|Mux15~1_combout\,
	combout => \PC0|DATAPATH|Mux15~4_combout\);

-- Location: LCCOMB_X66_Y36_N6
\PC0|DATAPATH|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~4_combout\ = ((\PC0|DATAPATH|reg_acc\(2) $ (\PC0|DATAPATH|Mux14~4_combout\ $ (\PC0|DATAPATH|Add4~3\)))) # (GND)
-- \PC0|DATAPATH|Add4~5\ = CARRY((\PC0|DATAPATH|reg_acc\(2) & ((!\PC0|DATAPATH|Add4~3\) # (!\PC0|DATAPATH|Mux14~4_combout\))) # (!\PC0|DATAPATH|reg_acc\(2) & (!\PC0|DATAPATH|Mux14~4_combout\ & !\PC0|DATAPATH|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(2),
	datab => \PC0|DATAPATH|Mux14~4_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~3\,
	combout => \PC0|DATAPATH|Add4~4_combout\,
	cout => \PC0|DATAPATH|Add4~5\);

-- Location: LCCOMB_X66_Y36_N8
\PC0|DATAPATH|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~6_combout\ = (\PC0|DATAPATH|Mux13~4_combout\ & ((\PC0|DATAPATH|reg_acc\(3) & (!\PC0|DATAPATH|Add4~5\)) # (!\PC0|DATAPATH|reg_acc\(3) & ((\PC0|DATAPATH|Add4~5\) # (GND))))) # (!\PC0|DATAPATH|Mux13~4_combout\ & ((\PC0|DATAPATH|reg_acc\(3) 
-- & (\PC0|DATAPATH|Add4~5\ & VCC)) # (!\PC0|DATAPATH|reg_acc\(3) & (!\PC0|DATAPATH|Add4~5\))))
-- \PC0|DATAPATH|Add4~7\ = CARRY((\PC0|DATAPATH|Mux13~4_combout\ & ((!\PC0|DATAPATH|Add4~5\) # (!\PC0|DATAPATH|reg_acc\(3)))) # (!\PC0|DATAPATH|Mux13~4_combout\ & (!\PC0|DATAPATH|reg_acc\(3) & !\PC0|DATAPATH|Add4~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux13~4_combout\,
	datab => \PC0|DATAPATH|reg_acc\(3),
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~5\,
	combout => \PC0|DATAPATH|Add4~6_combout\,
	cout => \PC0|DATAPATH|Add4~7\);

-- Location: LCCOMB_X67_Y36_N18
\PC0|DATAPATH|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~4_combout\ = ((\PC0|DATAPATH|Mux14~4_combout\ $ (\PC0|DATAPATH|reg_acc\(2) $ (!\PC0|DATAPATH|Add3~3\)))) # (GND)
-- \PC0|DATAPATH|Add3~5\ = CARRY((\PC0|DATAPATH|Mux14~4_combout\ & ((\PC0|DATAPATH|reg_acc\(2)) # (!\PC0|DATAPATH|Add3~3\))) # (!\PC0|DATAPATH|Mux14~4_combout\ & (\PC0|DATAPATH|reg_acc\(2) & !\PC0|DATAPATH|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux14~4_combout\,
	datab => \PC0|DATAPATH|reg_acc\(2),
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~3\,
	combout => \PC0|DATAPATH|Add3~4_combout\,
	cout => \PC0|DATAPATH|Add3~5\);

-- Location: LCCOMB_X67_Y36_N20
\PC0|DATAPATH|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~6_combout\ = (\PC0|DATAPATH|reg_acc\(3) & ((\PC0|DATAPATH|Mux13~4_combout\ & (\PC0|DATAPATH|Add3~5\ & VCC)) # (!\PC0|DATAPATH|Mux13~4_combout\ & (!\PC0|DATAPATH|Add3~5\)))) # (!\PC0|DATAPATH|reg_acc\(3) & 
-- ((\PC0|DATAPATH|Mux13~4_combout\ & (!\PC0|DATAPATH|Add3~5\)) # (!\PC0|DATAPATH|Mux13~4_combout\ & ((\PC0|DATAPATH|Add3~5\) # (GND)))))
-- \PC0|DATAPATH|Add3~7\ = CARRY((\PC0|DATAPATH|reg_acc\(3) & (!\PC0|DATAPATH|Mux13~4_combout\ & !\PC0|DATAPATH|Add3~5\)) # (!\PC0|DATAPATH|reg_acc\(3) & ((!\PC0|DATAPATH|Add3~5\) # (!\PC0|DATAPATH|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(3),
	datab => \PC0|DATAPATH|Mux13~4_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~5\,
	combout => \PC0|DATAPATH|Add3~6_combout\,
	cout => \PC0|DATAPATH|Add3~7\);

-- Location: LCCOMB_X65_Y35_N30
\PC0|DATAPATH|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux4~2_combout\ = (\PC0|CTR|alu_func\(0) & ((\PC0|CTR|alu_func\(1)) # ((\PC0|DATAPATH|Add4~6_combout\)))) # (!\PC0|CTR|alu_func\(0) & (!\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Add4~6_combout\,
	datad => \PC0|DATAPATH|Add3~6_combout\,
	combout => \PC0|DATAPATH|Mux4~2_combout\);

-- Location: LCCOMB_X65_Y35_N12
\PC0|DATAPATH|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux4~3_combout\ = (\PC0|DATAPATH|reg_acc\(3) & ((\PC0|DATAPATH|Mux4~2_combout\) # ((\PC0|CTR|alu_func\(1) & \PC0|DATAPATH|Mux13~4_combout\)))) # (!\PC0|DATAPATH|reg_acc\(3) & (\PC0|DATAPATH|Mux4~2_combout\ & ((\PC0|DATAPATH|Mux13~4_combout\) 
-- # (!\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(3),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux4~2_combout\,
	datad => \PC0|DATAPATH|Mux13~4_combout\,
	combout => \PC0|DATAPATH|Mux4~3_combout\);

-- Location: LCCOMB_X65_Y35_N10
\PC0|DATAPATH|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux4~4_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux13~4_combout\) # ((\PC0|DATAPATH|Mux3~0_combout\)))) # (!\PC0|CTR|alu_func\(3) & (((!\PC0|DATAPATH|Mux3~0_combout\ & \PC0|DATAPATH|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|DATAPATH|Mux13~4_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux4~3_combout\,
	combout => \PC0|DATAPATH|Mux4~4_combout\);

-- Location: LCCOMB_X65_Y35_N0
\PC0|DATAPATH|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux4~5_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux4~4_combout\ & (\PC0|DATAPATH|reg_acc\(3))) # (!\PC0|DATAPATH|Mux4~4_combout\ & ((\PC0|DATAPATH|Mux4~1_combout\))))) # (!\PC0|DATAPATH|Mux3~0_combout\ & 
-- (((\PC0|DATAPATH|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(3),
	datab => \PC0|DATAPATH|Mux4~1_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux4~4_combout\,
	combout => \PC0|DATAPATH|Mux4~5_combout\);

-- Location: FF_X66_Y36_N29
\PC0|DATAPATH|reg_acc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux4~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(3));

-- Location: IOIBUF_X62_Y0_N22
\p_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(4),
	o => \p_in[4]~input_o\);

-- Location: LCCOMB_X63_Y37_N28
\PC0|DATAPATH|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux12~0_combout\ = (\PC0|CTR|bbus_mux\(1) & (((\PC0|DATAPATH|reg_oplo\(4))))) # (!\PC0|CTR|bbus_mux\(1) & (\p_in[4]~input_o\ & ((\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in[4]~input_o\,
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(4),
	datad => \PC0|CTR|bbus_mux\(0),
	combout => \PC0|DATAPATH|Mux12~0_combout\);

-- Location: FF_X63_Y37_N7
\PC0|DATAPATH|reg_bx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux3~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(4));

-- Location: FF_X67_Y36_N11
\PC0|DATAPATH|reg_ax[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|Mux3~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(4));

-- Location: LCCOMB_X63_Y37_N16
\PC0|DATAPATH|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux12~1_combout\ = (\PC0|CTR|bbus_mux\(0) & (((\PC0|CTR|bbus_mux\(1)) # (\PC0|DATAPATH|reg_ax\(4))))) # (!\PC0|CTR|bbus_mux\(0) & (\PC0|DATAPATH|reg_oplo\(4) & (!\PC0|CTR|bbus_mux\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(0),
	datab => \PC0|DATAPATH|reg_oplo\(4),
	datac => \PC0|CTR|bbus_mux\(1),
	datad => \PC0|DATAPATH|reg_ax\(4),
	combout => \PC0|DATAPATH|Mux12~1_combout\);

-- Location: LCCOMB_X63_Y37_N6
\PC0|DATAPATH|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux12~2_combout\ = (\PC0|CTR|bbus_mux\(1) & ((\PC0|DATAPATH|Mux12~1_combout\ & (\PC0|DATAPATH|reg_pc\(4))) # (!\PC0|DATAPATH|Mux12~1_combout\ & ((\PC0|DATAPATH|reg_bx\(4)))))) # (!\PC0|CTR|bbus_mux\(1) & (((\PC0|DATAPATH|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(4),
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|DATAPATH|reg_bx\(4),
	datad => \PC0|DATAPATH|Mux12~1_combout\,
	combout => \PC0|DATAPATH|Mux12~2_combout\);

-- Location: LCCOMB_X63_Y37_N14
\PC0|DATAPATH|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux12~3_combout\ = (\PC0|CTR|bbus_mux\(2) & (\PC0|DATAPATH|Mux12~0_combout\)) # (!\PC0|CTR|bbus_mux\(2) & ((\PC0|DATAPATH|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(2),
	datab => \PC0|DATAPATH|Mux12~0_combout\,
	datad => \PC0|DATAPATH|Mux12~2_combout\,
	combout => \PC0|DATAPATH|Mux12~3_combout\);

-- Location: LCCOMB_X67_Y36_N0
\PC0|DATAPATH|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~1_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|reg_acc\(4) $ (((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(1),
	datab => \PC0|CTR|alu_func\(0),
	datac => \PC0|DATAPATH|reg_acc\(4),
	datad => \PC0|DATAPATH|Mux12~3_combout\,
	combout => \PC0|DATAPATH|Mux3~1_combout\);

-- Location: IOIBUF_X65_Y0_N8
\p_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(5),
	o => \p_in[5]~input_o\);

-- Location: LCCOMB_X66_Y38_N12
\PC0|DATAPATH|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~2_combout\ = (!\PC0|CTR|bbus_mux\(1) & (\PC0|CTR|bbus_mux\(2) & (\PC0|CTR|bbus_mux\(0) & \p_in[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(1),
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \p_in[5]~input_o\,
	combout => \PC0|DATAPATH|Mux11~2_combout\);

-- Location: LCCOMB_X66_Y38_N30
\PC0|DATAPATH|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~3_combout\ = (\PC0|DATAPATH|reg_oplo\(5) & ((\PC0|CTR|bbus_mux\(1) & (\PC0|CTR|bbus_mux\(2))) # (!\PC0|CTR|bbus_mux\(1) & (!\PC0|CTR|bbus_mux\(2) & !\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(1),
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|DATAPATH|reg_oplo\(5),
	datad => \PC0|CTR|bbus_mux\(0),
	combout => \PC0|DATAPATH|Mux11~3_combout\);

-- Location: LCCOMB_X65_Y38_N6
\PC0|CTR|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Decoder1~0_combout\ = (\PC0|DATAPATH|reg_opl\(2) & (!\PC0|DATAPATH|reg_opl\(1) & !\PC0|DATAPATH|reg_opl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datac => \PC0|DATAPATH|reg_opl\(1),
	datad => \PC0|DATAPATH|reg_opl\(0),
	combout => \PC0|CTR|Decoder1~0_combout\);

-- Location: LCCOMB_X65_Y38_N4
\PC0|CTR|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux23~3_combout\ = (\PC0|CTR|Mux16~2_combout\ & (((!\PC0|CTR|Decoder1~0_combout\) # (!\PC0|CTR|Equal2~5_combout\)) # (!\PC0|CTR|always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~2_combout\,
	datab => \PC0|CTR|Mux16~2_combout\,
	datac => \PC0|CTR|Equal2~5_combout\,
	datad => \PC0|CTR|Decoder1~0_combout\,
	combout => \PC0|CTR|Mux23~3_combout\);

-- Location: LCCOMB_X65_Y38_N30
\PC0|CTR|w_flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_flag~1_combout\ = (\PC0|CTR|Decoder1~0_combout\ & (\PC0|DATAPATH|reg_opl\(3) & (\PC0|DATAPATH|reg_opl\(4) & \PC0|CTR|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Decoder1~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|w_flag~1_combout\);

-- Location: LCCOMB_X65_Y38_N18
\PC0|CTR|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux23~5_combout\ = (\PC0|CTR|Mux23~3_combout\) # ((!\PC0|CTR|state\(0) & (!\PC0|CTR|w_flag~1_combout\ & \PC0|CTR|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|Mux23~3_combout\,
	datac => \PC0|CTR|w_flag~1_combout\,
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux23~5_combout\);

-- Location: LCCOMB_X65_Y38_N20
\PC0|CTR|flag_mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|flag_mux~1_combout\ = (\PC0|CTR|Decoder1~0_combout\ & (!\PC0|DATAPATH|reg_opl\(3) & !\PC0|CTR|always0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Decoder1~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|always0~0_combout\,
	combout => \PC0|CTR|flag_mux~1_combout\);

-- Location: LCCOMB_X65_Y38_N10
\PC0|CTR|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux23~2_combout\ = (\PC0|CTR|Mux25~1_combout\ & (((!\PC0|CTR|flag_mux~q\ & !\PC0|CTR|flag_mux~1_combout\)) # (!\PC0|CTR|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux25~1_combout\,
	datab => \PC0|CTR|flag_mux~q\,
	datac => \PC0|CTR|state\(2),
	datad => \PC0|CTR|flag_mux~1_combout\,
	combout => \PC0|CTR|Mux23~2_combout\);

-- Location: LCCOMB_X65_Y38_N2
\PC0|CTR|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux23~4_combout\ = (!\PC0|CTR|Mux23~2_combout\ & ((\PC0|CTR|state\(2)) # ((\PC0|CTR|flag_mux~q\) # (!\PC0|CTR|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|Mux23~5_combout\,
	datac => \PC0|CTR|flag_mux~q\,
	datad => \PC0|CTR|Mux23~2_combout\,
	combout => \PC0|CTR|Mux23~4_combout\);

-- Location: LCCOMB_X62_Y39_N0
\PC0|CTR|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux10~0_combout\ = (\PC0|CTR|state\(1) & (!\PC0|CTR|state\(2) & !\PC0|CTR|state\(0))) # (!\PC0|CTR|state\(1) & ((!\PC0|CTR|state\(0)) # (!\PC0|CTR|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datac => \PC0|CTR|state\(2),
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux10~0_combout\);

-- Location: FF_X65_Y38_N3
\PC0|CTR|flag_mux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux23~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|flag_mux~q\);

-- Location: LCCOMB_X65_Y37_N22
\PC0|DATAPATH|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~0_combout\ = (\PC0|CTR|alu_func\(2)) # ((\PC0|CTR|alu_func\(0)) # (\PC0|CTR|alu_func\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(2),
	datab => \PC0|CTR|alu_func\(0),
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|Mux7~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\p_in[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(7),
	o => \p_in[7]~input_o\);

-- Location: LCCOMB_X65_Y37_N24
\PC0|DATAPATH|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux9~0_combout\ = (\p_in[7]~input_o\ & (\PC0|CTR|bbus_mux\(0) & (!\PC0|CTR|bbus_mux\(1) & \PC0|CTR|bbus_mux\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in[7]~input_o\,
	datab => \PC0|CTR|bbus_mux\(0),
	datac => \PC0|CTR|bbus_mux\(1),
	datad => \PC0|CTR|bbus_mux\(2),
	combout => \PC0|DATAPATH|Mux9~0_combout\);

-- Location: LCCOMB_X63_Y37_N4
\PC0|DATAPATH|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux9~1_combout\ = (\PC0|DATAPATH|reg_oplo\(7) & ((\PC0|CTR|bbus_mux\(1) & ((\PC0|CTR|bbus_mux\(2)))) # (!\PC0|CTR|bbus_mux\(1) & (!\PC0|CTR|bbus_mux\(0) & !\PC0|CTR|bbus_mux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(0),
	datab => \PC0|CTR|bbus_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(7),
	datad => \PC0|CTR|bbus_mux\(2),
	combout => \PC0|DATAPATH|Mux9~1_combout\);

-- Location: LCCOMB_X65_Y36_N14
\PC0|DATAPATH|reg_bx[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_bx[7]~0_combout\ = !\PC0|DATAPATH|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux0~2_combout\,
	combout => \PC0|DATAPATH|reg_bx[7]~0_combout\);

-- Location: FF_X65_Y36_N15
\PC0|DATAPATH|reg_bx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_bx[7]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(7));

-- Location: LCCOMB_X65_Y36_N4
\PC0|DATAPATH|reg_ax[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_ax[7]~0_combout\ = !\PC0|DATAPATH|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux0~2_combout\,
	combout => \PC0|DATAPATH|reg_ax[7]~0_combout\);

-- Location: FF_X65_Y36_N5
\PC0|DATAPATH|reg_ax[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_ax[7]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(7));

-- Location: LCCOMB_X65_Y36_N26
\PC0|DATAPATH|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux9~2_combout\ = (\PC0|DATAPATH|Mux11~0_combout\ & (((\PC0|DATAPATH|Mux11~1_combout\)))) # (!\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|Mux11~1_combout\ & (\PC0|DATAPATH|reg_bx\(7))) # (!\PC0|DATAPATH|Mux11~1_combout\ & 
-- ((\PC0|DATAPATH|reg_ax\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_bx\(7),
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|reg_ax\(7),
	datad => \PC0|DATAPATH|Mux11~1_combout\,
	combout => \PC0|DATAPATH|Mux9~2_combout\);

-- Location: LCCOMB_X65_Y38_N8
\PC0|DATAPATH|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|carry~0_combout\ = (!\PC0|CTR|alu_func\(3) & (!\PC0|CTR|flag_mux~q\ & (\PC0|CTR|alu_func\(2) $ (!\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|CTR|flag_mux~q\,
	datac => \PC0|CTR|alu_func\(2),
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|carry~0_combout\);

-- Location: LCCOMB_X67_Y36_N4
\PC0|DATAPATH|reg_acc[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_acc[7]~0_combout\ = !\PC0|DATAPATH|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux0~2_combout\,
	combout => \PC0|DATAPATH|reg_acc[7]~0_combout\);

-- Location: FF_X67_Y36_N5
\PC0|DATAPATH|reg_acc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_acc[7]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(7));

-- Location: IOIBUF_X65_Y73_N8
\p_in[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_p_in(6),
	o => \p_in[6]~input_o\);

-- Location: LCCOMB_X66_Y38_N22
\PC0|DATAPATH|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux10~0_combout\ = (\p_in[6]~input_o\ & (\PC0|CTR|bbus_mux\(2) & (!\PC0|CTR|bbus_mux\(1) & \PC0|CTR|bbus_mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_in[6]~input_o\,
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|CTR|bbus_mux\(1),
	datad => \PC0|CTR|bbus_mux\(0),
	combout => \PC0|DATAPATH|Mux10~0_combout\);

-- Location: LCCOMB_X66_Y38_N8
\PC0|DATAPATH|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux10~1_combout\ = (\PC0|DATAPATH|reg_oplo\(6) & ((\PC0|CTR|bbus_mux\(1) & (\PC0|CTR|bbus_mux\(2))) # (!\PC0|CTR|bbus_mux\(1) & (!\PC0|CTR|bbus_mux\(2) & !\PC0|CTR|bbus_mux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|bbus_mux\(1),
	datab => \PC0|CTR|bbus_mux\(2),
	datac => \PC0|CTR|bbus_mux\(0),
	datad => \PC0|DATAPATH|reg_oplo\(6),
	combout => \PC0|DATAPATH|Mux10~1_combout\);

-- Location: FF_X65_Y36_N31
\PC0|DATAPATH|reg_bx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux1~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(6));

-- Location: LCCOMB_X68_Y36_N8
\PC0|DATAPATH|pos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|pos~0_combout\ = (\PC0|CTR|flag_mux~q\ & (\PC0|DATAPATH|Mux1~5_combout\)) # (!\PC0|CTR|flag_mux~q\ & ((\PC0|DATAPATH|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|flag_mux~q\,
	datac => \PC0|DATAPATH|Mux1~5_combout\,
	datad => \PC0|DATAPATH|Mux0~2_combout\,
	combout => \PC0|DATAPATH|pos~0_combout\);

-- Location: LCCOMB_X65_Y39_N12
\PC0|CTR|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux22~3_combout\ = (\PC0|CTR|w_flag~q\ & ((\PC0|CTR|state\(0)) # (\PC0|CTR|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_flag~q\,
	datac => \PC0|CTR|state\(0),
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux22~3_combout\);

-- Location: LCCOMB_X62_Y40_N26
\PC0|CTR|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~0_combout\ = (\PC0|CTR|state\(1) & !\PC0|CTR|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux27~0_combout\);

-- Location: LCCOMB_X65_Y39_N22
\PC0|CTR|always0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~3_combout\ = (\PC0|DATAPATH|reg_opl\(3) & (\PC0|CTR|always0~2_combout\ & !\PC0|DATAPATH|reg_opl\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|CTR|always0~2_combout\,
	datad => \PC0|DATAPATH|reg_opl\(4),
	combout => \PC0|CTR|always0~3_combout\);

-- Location: LCCOMB_X62_Y38_N10
\PC0|CTR|alu_func~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~7_combout\ = (!\PC0|CTR|Equal10~0_combout\ & (!\PC0|DATAPATH|reg_opl\(7) & ((\PC0|CTR|Mux20~0_combout\) # (!\PC0|DATAPATH|reg_opl\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(6),
	datab => \PC0|CTR|Equal10~0_combout\,
	datac => \PC0|CTR|Mux20~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|alu_func~7_combout\);

-- Location: LCCOMB_X65_Y39_N4
\PC0|CTR|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux22~0_combout\ = (\PC0|CTR|alu_func~7_combout\) # ((!\PC0|CTR|always0~3_combout\ & (!\PC0|CTR|always0~4_combout\ & \PC0|CTR|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~3_combout\,
	datab => \PC0|CTR|alu_func~7_combout\,
	datac => \PC0|CTR|always0~4_combout\,
	datad => \PC0|CTR|Decoder1~0_combout\,
	combout => \PC0|CTR|Mux22~0_combout\);

-- Location: LCCOMB_X65_Y39_N30
\PC0|CTR|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux22~1_combout\ = (\PC0|CTR|state\(0) & ((\PC0|CTR|state\(1) & (\PC0|CTR|w_flag~0_combout\)) # (!\PC0|CTR|state\(1) & ((\PC0|CTR|Mux22~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|w_flag~0_combout\,
	datac => \PC0|CTR|Mux22~0_combout\,
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux22~1_combout\);

-- Location: LCCOMB_X62_Y39_N6
\PC0|CTR|w_flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_flag~2_combout\ = (\PC0|CTR|Equal10~0_combout\ & (!\PC0|DATAPATH|reg_opl\(7) & ((\PC0|CTR|Mux20~0_combout\) # (!\PC0|DATAPATH|reg_opl\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal10~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|CTR|Mux20~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(6),
	combout => \PC0|CTR|w_flag~2_combout\);

-- Location: LCCOMB_X65_Y39_N20
\PC0|CTR|w_flag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_flag~3_combout\ = (\PC0|CTR|w_flag~q\) # ((\PC0|CTR|w_flag~2_combout\) # ((!\PC0|CTR|always0~9_combout\ & \PC0|CTR|w_flag~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_flag~q\,
	datab => \PC0|CTR|always0~9_combout\,
	datac => \PC0|CTR|w_flag~2_combout\,
	datad => \PC0|CTR|w_flag~1_combout\,
	combout => \PC0|CTR|w_flag~3_combout\);

-- Location: LCCOMB_X65_Y39_N6
\PC0|CTR|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux22~2_combout\ = (!\PC0|CTR|state\(2) & ((\PC0|CTR|Mux22~1_combout\) # ((\PC0|CTR|Mux27~0_combout\ & \PC0|CTR|w_flag~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux27~0_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux22~1_combout\,
	datad => \PC0|CTR|w_flag~3_combout\,
	combout => \PC0|CTR|Mux22~2_combout\);

-- Location: LCCOMB_X65_Y39_N26
\PC0|CTR|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux22~4_combout\ = (\PC0|CTR|Mux22~3_combout\) # ((\PC0|CTR|Mux22~2_combout\) # ((\PC0|CTR|flag_mux~1_combout\ & \PC0|CTR|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|flag_mux~1_combout\,
	datab => \PC0|CTR|Mux13~3_combout\,
	datac => \PC0|CTR|Mux22~3_combout\,
	datad => \PC0|CTR|Mux22~2_combout\,
	combout => \PC0|CTR|Mux22~4_combout\);

-- Location: FF_X65_Y39_N27
\PC0|CTR|w_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux22~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_flag~q\);

-- Location: FF_X68_Y36_N9
\PC0|DATAPATH|pos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|pos~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|pos~q\);

-- Location: FF_X65_Y36_N1
\PC0|DATAPATH|reg_ax[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux1~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(6));

-- Location: LCCOMB_X65_Y36_N6
\PC0|DATAPATH|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux10~2_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & (((\PC0|DATAPATH|Mux11~0_combout\)))) # (!\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|Mux11~0_combout\ & (\PC0|DATAPATH|pos~q\)) # (!\PC0|DATAPATH|Mux11~0_combout\ & 
-- ((\PC0|DATAPATH|reg_ax\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|pos~q\,
	datab => \PC0|DATAPATH|reg_ax\(6),
	datac => \PC0|DATAPATH|Mux11~1_combout\,
	datad => \PC0|DATAPATH|Mux11~0_combout\,
	combout => \PC0|DATAPATH|Mux10~2_combout\);

-- Location: LCCOMB_X65_Y36_N30
\PC0|DATAPATH|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux10~3_combout\ = (\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|Mux10~2_combout\ & (\PC0|DATAPATH|reg_pc\(6))) # (!\PC0|DATAPATH|Mux10~2_combout\ & ((\PC0|DATAPATH|reg_bx\(6)))))) # (!\PC0|DATAPATH|Mux11~1_combout\ & 
-- (((\PC0|DATAPATH|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux11~1_combout\,
	datab => \PC0|DATAPATH|reg_pc\(6),
	datac => \PC0|DATAPATH|reg_bx\(6),
	datad => \PC0|DATAPATH|Mux10~2_combout\,
	combout => \PC0|DATAPATH|Mux10~3_combout\);

-- Location: LCCOMB_X66_Y38_N6
\PC0|DATAPATH|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux10~4_combout\ = (\PC0|DATAPATH|Mux10~0_combout\) # ((\PC0|DATAPATH|Mux10~1_combout\) # ((\PC0|DATAPATH|Mux16~4_combout\ & \PC0|DATAPATH|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux10~0_combout\,
	datab => \PC0|DATAPATH|Mux16~4_combout\,
	datac => \PC0|DATAPATH|Mux10~1_combout\,
	datad => \PC0|DATAPATH|Mux10~3_combout\,
	combout => \PC0|DATAPATH|Mux10~4_combout\);

-- Location: LCCOMB_X65_Y36_N12
\PC0|DATAPATH|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux1~0_combout\ = (\PC0|CTR|alu_func\(1) & (((\PC0|CTR|alu_func\(0))))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|reg_acc\(6) $ (((\PC0|DATAPATH|Mux10~4_combout\) # (\PC0|CTR|alu_func\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux10~4_combout\,
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|CTR|alu_func\(0),
	datad => \PC0|DATAPATH|reg_acc\(6),
	combout => \PC0|DATAPATH|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y36_N2
\PC0|DATAPATH|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux1~1_combout\ = (\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Mux1~0_combout\ & ((\PC0|DATAPATH|reg_acc\(5)))) # (!\PC0|DATAPATH|Mux1~0_combout\ & (\PC0|DATAPATH|reg_acc\(7))))) # (!\PC0|CTR|alu_func\(1) & (((\PC0|DATAPATH|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(7),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|reg_acc\(5),
	datad => \PC0|DATAPATH|Mux1~0_combout\,
	combout => \PC0|DATAPATH|Mux1~1_combout\);

-- Location: LCCOMB_X66_Y36_N10
\PC0|DATAPATH|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~8_combout\ = ((\PC0|DATAPATH|Mux12~3_combout\ $ (\PC0|DATAPATH|reg_acc\(4) $ (\PC0|DATAPATH|Add4~7\)))) # (GND)
-- \PC0|DATAPATH|Add4~9\ = CARRY((\PC0|DATAPATH|Mux12~3_combout\ & (\PC0|DATAPATH|reg_acc\(4) & !\PC0|DATAPATH|Add4~7\)) # (!\PC0|DATAPATH|Mux12~3_combout\ & ((\PC0|DATAPATH|reg_acc\(4)) # (!\PC0|DATAPATH|Add4~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux12~3_combout\,
	datab => \PC0|DATAPATH|reg_acc\(4),
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~7\,
	combout => \PC0|DATAPATH|Add4~8_combout\,
	cout => \PC0|DATAPATH|Add4~9\);

-- Location: LCCOMB_X66_Y36_N12
\PC0|DATAPATH|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~10_combout\ = (\PC0|DATAPATH|reg_acc\(5) & ((\PC0|DATAPATH|Mux11~6_combout\ & (!\PC0|DATAPATH|Add4~9\)) # (!\PC0|DATAPATH|Mux11~6_combout\ & (\PC0|DATAPATH|Add4~9\ & VCC)))) # (!\PC0|DATAPATH|reg_acc\(5) & 
-- ((\PC0|DATAPATH|Mux11~6_combout\ & ((\PC0|DATAPATH|Add4~9\) # (GND))) # (!\PC0|DATAPATH|Mux11~6_combout\ & (!\PC0|DATAPATH|Add4~9\))))
-- \PC0|DATAPATH|Add4~11\ = CARRY((\PC0|DATAPATH|reg_acc\(5) & (\PC0|DATAPATH|Mux11~6_combout\ & !\PC0|DATAPATH|Add4~9\)) # (!\PC0|DATAPATH|reg_acc\(5) & ((\PC0|DATAPATH|Mux11~6_combout\) # (!\PC0|DATAPATH|Add4~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(5),
	datab => \PC0|DATAPATH|Mux11~6_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~9\,
	combout => \PC0|DATAPATH|Add4~10_combout\,
	cout => \PC0|DATAPATH|Add4~11\);

-- Location: LCCOMB_X66_Y36_N14
\PC0|DATAPATH|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~12_combout\ = ((\PC0|DATAPATH|reg_acc\(6) $ (\PC0|DATAPATH|Mux10~4_combout\ $ (\PC0|DATAPATH|Add4~11\)))) # (GND)
-- \PC0|DATAPATH|Add4~13\ = CARRY((\PC0|DATAPATH|reg_acc\(6) & ((!\PC0|DATAPATH|Add4~11\) # (!\PC0|DATAPATH|Mux10~4_combout\))) # (!\PC0|DATAPATH|reg_acc\(6) & (!\PC0|DATAPATH|Mux10~4_combout\ & !\PC0|DATAPATH|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(6),
	datab => \PC0|DATAPATH|Mux10~4_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~11\,
	combout => \PC0|DATAPATH|Add4~12_combout\,
	cout => \PC0|DATAPATH|Add4~13\);

-- Location: LCCOMB_X67_Y36_N22
\PC0|DATAPATH|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~8_combout\ = ((\PC0|DATAPATH|reg_acc\(4) $ (\PC0|DATAPATH|Mux12~3_combout\ $ (!\PC0|DATAPATH|Add3~7\)))) # (GND)
-- \PC0|DATAPATH|Add3~9\ = CARRY((\PC0|DATAPATH|reg_acc\(4) & ((\PC0|DATAPATH|Mux12~3_combout\) # (!\PC0|DATAPATH|Add3~7\))) # (!\PC0|DATAPATH|reg_acc\(4) & (\PC0|DATAPATH|Mux12~3_combout\ & !\PC0|DATAPATH|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(4),
	datab => \PC0|DATAPATH|Mux12~3_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~7\,
	combout => \PC0|DATAPATH|Add3~8_combout\,
	cout => \PC0|DATAPATH|Add3~9\);

-- Location: LCCOMB_X67_Y36_N24
\PC0|DATAPATH|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~10_combout\ = (\PC0|DATAPATH|reg_acc\(5) & ((\PC0|DATAPATH|Mux11~6_combout\ & (\PC0|DATAPATH|Add3~9\ & VCC)) # (!\PC0|DATAPATH|Mux11~6_combout\ & (!\PC0|DATAPATH|Add3~9\)))) # (!\PC0|DATAPATH|reg_acc\(5) & 
-- ((\PC0|DATAPATH|Mux11~6_combout\ & (!\PC0|DATAPATH|Add3~9\)) # (!\PC0|DATAPATH|Mux11~6_combout\ & ((\PC0|DATAPATH|Add3~9\) # (GND)))))
-- \PC0|DATAPATH|Add3~11\ = CARRY((\PC0|DATAPATH|reg_acc\(5) & (!\PC0|DATAPATH|Mux11~6_combout\ & !\PC0|DATAPATH|Add3~9\)) # (!\PC0|DATAPATH|reg_acc\(5) & ((!\PC0|DATAPATH|Add3~9\) # (!\PC0|DATAPATH|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(5),
	datab => \PC0|DATAPATH|Mux11~6_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~9\,
	combout => \PC0|DATAPATH|Add3~10_combout\,
	cout => \PC0|DATAPATH|Add3~11\);

-- Location: LCCOMB_X67_Y36_N26
\PC0|DATAPATH|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~12_combout\ = ((\PC0|DATAPATH|Mux10~4_combout\ $ (\PC0|DATAPATH|reg_acc\(6) $ (!\PC0|DATAPATH|Add3~11\)))) # (GND)
-- \PC0|DATAPATH|Add3~13\ = CARRY((\PC0|DATAPATH|Mux10~4_combout\ & ((\PC0|DATAPATH|reg_acc\(6)) # (!\PC0|DATAPATH|Add3~11\))) # (!\PC0|DATAPATH|Mux10~4_combout\ & (\PC0|DATAPATH|reg_acc\(6) & !\PC0|DATAPATH|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux10~4_combout\,
	datab => \PC0|DATAPATH|reg_acc\(6),
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~11\,
	combout => \PC0|DATAPATH|Add3~12_combout\,
	cout => \PC0|DATAPATH|Add3~13\);

-- Location: LCCOMB_X66_Y36_N24
\PC0|DATAPATH|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux1~2_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & ((\PC0|CTR|alu_func\(0) & (\PC0|DATAPATH|Add4~12_combout\)) # (!\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Add3~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(1),
	datab => \PC0|CTR|alu_func\(0),
	datac => \PC0|DATAPATH|Add4~12_combout\,
	datad => \PC0|DATAPATH|Add3~12_combout\,
	combout => \PC0|DATAPATH|Mux1~2_combout\);

-- Location: LCCOMB_X65_Y36_N24
\PC0|DATAPATH|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux1~3_combout\ = (\PC0|DATAPATH|reg_acc\(6) & ((\PC0|DATAPATH|Mux1~2_combout\) # ((\PC0|CTR|alu_func\(1) & \PC0|DATAPATH|Mux10~4_combout\)))) # (!\PC0|DATAPATH|reg_acc\(6) & (\PC0|DATAPATH|Mux1~2_combout\ & ((\PC0|DATAPATH|Mux10~4_combout\) 
-- # (!\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(6),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux10~4_combout\,
	datad => \PC0|DATAPATH|Mux1~2_combout\,
	combout => \PC0|DATAPATH|Mux1~3_combout\);

-- Location: LCCOMB_X65_Y36_N10
\PC0|DATAPATH|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux1~4_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux10~4_combout\) # ((\PC0|DATAPATH|Mux3~0_combout\)))) # (!\PC0|CTR|alu_func\(3) & (((!\PC0|DATAPATH|Mux3~0_combout\ & \PC0|DATAPATH|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux10~4_combout\,
	datab => \PC0|CTR|alu_func\(3),
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux1~3_combout\,
	combout => \PC0|DATAPATH|Mux1~4_combout\);

-- Location: LCCOMB_X65_Y36_N28
\PC0|DATAPATH|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux1~5_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux1~4_combout\ & (\PC0|DATAPATH|reg_acc\(6))) # (!\PC0|DATAPATH|Mux1~4_combout\ & ((\PC0|DATAPATH|Mux1~1_combout\))))) # (!\PC0|DATAPATH|Mux3~0_combout\ & 
-- (((\PC0|DATAPATH|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(6),
	datab => \PC0|DATAPATH|Mux1~1_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux1~4_combout\,
	combout => \PC0|DATAPATH|Mux1~5_combout\);

-- Location: FF_X66_Y36_N23
\PC0|DATAPATH|reg_acc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux1~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(6));

-- Location: LCCOMB_X66_Y36_N16
\PC0|DATAPATH|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~14_combout\ = (\PC0|DATAPATH|reg_acc\(7) & ((\PC0|DATAPATH|Mux9~4_combout\ & (!\PC0|DATAPATH|Add4~13\)) # (!\PC0|DATAPATH|Mux9~4_combout\ & (\PC0|DATAPATH|Add4~13\ & VCC)))) # (!\PC0|DATAPATH|reg_acc\(7) & 
-- ((\PC0|DATAPATH|Mux9~4_combout\ & ((\PC0|DATAPATH|Add4~13\) # (GND))) # (!\PC0|DATAPATH|Mux9~4_combout\ & (!\PC0|DATAPATH|Add4~13\))))
-- \PC0|DATAPATH|Add4~15\ = CARRY((\PC0|DATAPATH|reg_acc\(7) & (\PC0|DATAPATH|Mux9~4_combout\ & !\PC0|DATAPATH|Add4~13\)) # (!\PC0|DATAPATH|reg_acc\(7) & ((\PC0|DATAPATH|Mux9~4_combout\) # (!\PC0|DATAPATH|Add4~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(7),
	datab => \PC0|DATAPATH|Mux9~4_combout\,
	datad => VCC,
	cin => \PC0|DATAPATH|Add4~13\,
	combout => \PC0|DATAPATH|Add4~14_combout\,
	cout => \PC0|DATAPATH|Add4~15\);

-- Location: LCCOMB_X66_Y36_N18
\PC0|DATAPATH|Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add4~16_combout\ = \PC0|DATAPATH|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \PC0|DATAPATH|Add4~15\,
	combout => \PC0|DATAPATH|Add4~16_combout\);

-- Location: LCCOMB_X67_Y36_N28
\PC0|DATAPATH|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~14_combout\ = (\PC0|DATAPATH|Mux9~4_combout\ & ((\PC0|DATAPATH|reg_acc\(7) & (\PC0|DATAPATH|Add3~13\ & VCC)) # (!\PC0|DATAPATH|reg_acc\(7) & (!\PC0|DATAPATH|Add3~13\)))) # (!\PC0|DATAPATH|Mux9~4_combout\ & ((\PC0|DATAPATH|reg_acc\(7) & 
-- (!\PC0|DATAPATH|Add3~13\)) # (!\PC0|DATAPATH|reg_acc\(7) & ((\PC0|DATAPATH|Add3~13\) # (GND)))))
-- \PC0|DATAPATH|Add3~15\ = CARRY((\PC0|DATAPATH|Mux9~4_combout\ & (!\PC0|DATAPATH|reg_acc\(7) & !\PC0|DATAPATH|Add3~13\)) # (!\PC0|DATAPATH|Mux9~4_combout\ & ((!\PC0|DATAPATH|Add3~13\) # (!\PC0|DATAPATH|reg_acc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux9~4_combout\,
	datab => \PC0|DATAPATH|reg_acc\(7),
	datad => VCC,
	cin => \PC0|DATAPATH|Add3~13\,
	combout => \PC0|DATAPATH|Add3~14_combout\,
	cout => \PC0|DATAPATH|Add3~15\);

-- Location: LCCOMB_X67_Y36_N30
\PC0|DATAPATH|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Add3~16_combout\ = !\PC0|DATAPATH|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \PC0|DATAPATH|Add3~15\,
	combout => \PC0|DATAPATH|Add3~16_combout\);

-- Location: LCCOMB_X65_Y38_N24
\PC0|DATAPATH|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux8~0_combout\ = (\PC0|CTR|alu_func\(2) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(2) & ((\PC0|CTR|alu_func\(0) & (\PC0|DATAPATH|Add4~16_combout\)) # (!\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(2),
	datab => \PC0|CTR|alu_func\(0),
	datac => \PC0|DATAPATH|Add4~16_combout\,
	datad => \PC0|DATAPATH|Add3~16_combout\,
	combout => \PC0|DATAPATH|Mux8~0_combout\);

-- Location: LCCOMB_X65_Y38_N26
\PC0|DATAPATH|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux8~1_combout\ = (\PC0|CTR|alu_func\(2) & ((\PC0|DATAPATH|Mux8~0_combout\ & (\PC0|DATAPATH|reg_acc\(7))) # (!\PC0|DATAPATH|Mux8~0_combout\ & ((\PC0|DATAPATH|reg_acc\(0)))))) # (!\PC0|CTR|alu_func\(2) & (((\PC0|DATAPATH|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(2),
	datab => \PC0|DATAPATH|reg_acc\(7),
	datac => \PC0|DATAPATH|reg_acc\(0),
	datad => \PC0|DATAPATH|Mux8~0_combout\,
	combout => \PC0|DATAPATH|Mux8~1_combout\);

-- Location: LCCOMB_X65_Y38_N22
\PC0|DATAPATH|carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|carry~1_combout\ = (\PC0|DATAPATH|carry~0_combout\ & ((\PC0|DATAPATH|Mux8~1_combout\) # ((\PC0|CTR|flag_mux~q\ & !\PC0|DATAPATH|Mux0~2_combout\)))) # (!\PC0|DATAPATH|carry~0_combout\ & (\PC0|CTR|flag_mux~q\ & 
-- (!\PC0|DATAPATH|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|carry~0_combout\,
	datab => \PC0|CTR|flag_mux~q\,
	datac => \PC0|DATAPATH|Mux0~2_combout\,
	datad => \PC0|DATAPATH|Mux8~1_combout\,
	combout => \PC0|DATAPATH|carry~1_combout\);

-- Location: FF_X65_Y38_N23
\PC0|DATAPATH|carry\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|carry~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|carry~q\);

-- Location: LCCOMB_X65_Y36_N16
\PC0|DATAPATH|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux9~3_combout\ = (\PC0|DATAPATH|Mux9~2_combout\ & ((\PC0|DATAPATH|reg_pc\(7)) # ((!\PC0|DATAPATH|Mux11~0_combout\)))) # (!\PC0|DATAPATH|Mux9~2_combout\ & (((\PC0|DATAPATH|carry~q\ & \PC0|DATAPATH|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux9~2_combout\,
	datab => \PC0|DATAPATH|reg_pc\(7),
	datac => \PC0|DATAPATH|carry~q\,
	datad => \PC0|DATAPATH|Mux11~0_combout\,
	combout => \PC0|DATAPATH|Mux9~3_combout\);

-- Location: LCCOMB_X65_Y36_N18
\PC0|DATAPATH|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux9~4_combout\ = (\PC0|DATAPATH|Mux9~0_combout\) # ((\PC0|DATAPATH|Mux9~1_combout\) # ((\PC0|DATAPATH|Mux16~4_combout\ & \PC0|DATAPATH|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux9~0_combout\,
	datab => \PC0|DATAPATH|Mux16~4_combout\,
	datac => \PC0|DATAPATH|Mux9~1_combout\,
	datad => \PC0|DATAPATH|Mux9~3_combout\,
	combout => \PC0|DATAPATH|Mux9~4_combout\);

-- Location: LCCOMB_X65_Y36_N20
\PC0|DATAPATH|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux0~0_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux7~0_combout\ & ((!\PC0|DATAPATH|reg_acc\(7)))) # (!\PC0|DATAPATH|Mux7~0_combout\ & (!\PC0|DATAPATH|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|DATAPATH|Mux7~0_combout\,
	datac => \PC0|DATAPATH|Mux9~4_combout\,
	datad => \PC0|DATAPATH|reg_acc\(7),
	combout => \PC0|DATAPATH|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y36_N0
\PC0|DATAPATH|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~6_combout\ = (\PC0|DATAPATH|reg_acc\(7) & ((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux9~4_combout\))) # (!\PC0|DATAPATH|reg_acc\(7) & (\PC0|CTR|alu_func\(0) & \PC0|DATAPATH|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(7),
	datab => \PC0|CTR|alu_func\(0),
	datad => \PC0|DATAPATH|Mux9~4_combout\,
	combout => \PC0|DATAPATH|Mux7~6_combout\);

-- Location: LCCOMB_X66_Y36_N28
\PC0|DATAPATH|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~7_combout\ = (\PC0|CTR|alu_func\(0) & (\PC0|DATAPATH|Add4~14_combout\)) # (!\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|DATAPATH|Add4~14_combout\,
	datad => \PC0|DATAPATH|Add3~14_combout\,
	combout => \PC0|DATAPATH|Mux7~7_combout\);

-- Location: LCCOMB_X66_Y36_N26
\PC0|DATAPATH|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux0~1_combout\ = (\PC0|CTR|alu_func\(2) & (\PC0|CTR|alu_func\(1))) # (!\PC0|CTR|alu_func\(2) & ((\PC0|CTR|alu_func\(1) & (!\PC0|DATAPATH|Mux7~6_combout\)) # (!\PC0|CTR|alu_func\(1) & ((!\PC0|DATAPATH|Mux7~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(2),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux7~6_combout\,
	datad => \PC0|DATAPATH|Mux7~7_combout\,
	combout => \PC0|DATAPATH|Mux0~1_combout\);

-- Location: LCCOMB_X66_Y36_N20
\PC0|DATAPATH|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux0~3_combout\ = (\PC0|DATAPATH|Mux0~1_combout\ & (((!\PC0|CTR|alu_func\(0))))) # (!\PC0|DATAPATH|Mux0~1_combout\ & (\PC0|DATAPATH|reg_acc\(7) $ (((!\PC0|CTR|alu_func\(0) & !\PC0|DATAPATH|Mux9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(7),
	datab => \PC0|CTR|alu_func\(0),
	datac => \PC0|DATAPATH|Mux0~1_combout\,
	datad => \PC0|DATAPATH|Mux9~4_combout\,
	combout => \PC0|DATAPATH|Mux0~3_combout\);

-- Location: LCCOMB_X66_Y36_N30
\PC0|DATAPATH|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux0~4_combout\ = (\PC0|CTR|alu_func\(2) & ((\PC0|DATAPATH|Mux0~3_combout\) # ((!\PC0|DATAPATH|reg_acc\(6) & \PC0|DATAPATH|Mux0~1_combout\)))) # (!\PC0|CTR|alu_func\(2) & (((\PC0|DATAPATH|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(6),
	datab => \PC0|CTR|alu_func\(2),
	datac => \PC0|DATAPATH|Mux0~1_combout\,
	datad => \PC0|DATAPATH|Mux0~3_combout\,
	combout => \PC0|DATAPATH|Mux0~4_combout\);

-- Location: LCCOMB_X66_Y36_N22
\PC0|DATAPATH|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux0~2_combout\ = (\PC0|DATAPATH|Mux0~0_combout\) # ((!\PC0|CTR|alu_func\(3) & \PC0|DATAPATH|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|DATAPATH|Mux0~0_combout\,
	datad => \PC0|DATAPATH|Mux0~4_combout\,
	combout => \PC0|DATAPATH|Mux0~2_combout\);

-- Location: LCCOMB_X65_Y35_N28
\PC0|DATAPATH|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|zero~0_combout\ = (!\PC0|DATAPATH|Mux5~5_combout\ & (!\PC0|DATAPATH|Mux3~6_combout\ & (!\PC0|DATAPATH|Mux6~5_combout\ & !\PC0|DATAPATH|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux5~5_combout\,
	datab => \PC0|DATAPATH|Mux3~6_combout\,
	datac => \PC0|DATAPATH|Mux6~5_combout\,
	datad => \PC0|DATAPATH|Mux4~5_combout\,
	combout => \PC0|DATAPATH|zero~0_combout\);

-- Location: LCCOMB_X65_Y35_N18
\PC0|DATAPATH|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|zero~1_combout\ = (!\PC0|DATAPATH|Mux7~5_combout\ & (!\PC0|DATAPATH|Mux2~5_combout\ & (!\PC0|DATAPATH|Mux1~5_combout\ & \PC0|DATAPATH|zero~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux7~5_combout\,
	datab => \PC0|DATAPATH|Mux2~5_combout\,
	datac => \PC0|DATAPATH|Mux1~5_combout\,
	datad => \PC0|DATAPATH|zero~0_combout\,
	combout => \PC0|DATAPATH|zero~1_combout\);

-- Location: LCCOMB_X65_Y35_N26
\PC0|DATAPATH|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|zero~2_combout\ = (\PC0|CTR|flag_mux~q\ & (\PC0|DATAPATH|Mux2~5_combout\)) # (!\PC0|CTR|flag_mux~q\ & (((\PC0|DATAPATH|Mux0~2_combout\ & \PC0|DATAPATH|zero~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|flag_mux~q\,
	datab => \PC0|DATAPATH|Mux2~5_combout\,
	datac => \PC0|DATAPATH|Mux0~2_combout\,
	datad => \PC0|DATAPATH|zero~1_combout\,
	combout => \PC0|DATAPATH|zero~2_combout\);

-- Location: FF_X65_Y35_N27
\PC0|DATAPATH|zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|zero~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|zero~q\);

-- Location: FF_X65_Y35_N25
\PC0|DATAPATH|reg_ax[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|Mux2~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_ax~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_ax\(5));

-- Location: FF_X66_Y38_N25
\PC0|DATAPATH|reg_bx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux2~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_bx~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_bx\(5));

-- Location: LCCOMB_X66_Y38_N24
\PC0|DATAPATH|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~4_combout\ = (\PC0|DATAPATH|Mux11~0_combout\ & (((\PC0|DATAPATH|Mux11~1_combout\)))) # (!\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|Mux11~1_combout\ & ((\PC0|DATAPATH|reg_bx\(5)))) # (!\PC0|DATAPATH|Mux11~1_combout\ & 
-- (\PC0|DATAPATH|reg_ax\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_ax\(5),
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|reg_bx\(5),
	datad => \PC0|DATAPATH|Mux11~1_combout\,
	combout => \PC0|DATAPATH|Mux11~4_combout\);

-- Location: LCCOMB_X66_Y38_N10
\PC0|DATAPATH|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~5_combout\ = (\PC0|DATAPATH|Mux11~0_combout\ & ((\PC0|DATAPATH|Mux11~4_combout\ & (\PC0|DATAPATH|reg_pc\(5))) # (!\PC0|DATAPATH|Mux11~4_combout\ & ((\PC0|DATAPATH|zero~q\))))) # (!\PC0|DATAPATH|Mux11~0_combout\ & 
-- (((\PC0|DATAPATH|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(5),
	datab => \PC0|DATAPATH|Mux11~0_combout\,
	datac => \PC0|DATAPATH|zero~q\,
	datad => \PC0|DATAPATH|Mux11~4_combout\,
	combout => \PC0|DATAPATH|Mux11~5_combout\);

-- Location: LCCOMB_X66_Y38_N16
\PC0|DATAPATH|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux11~6_combout\ = (\PC0|DATAPATH|Mux11~2_combout\) # ((\PC0|DATAPATH|Mux11~3_combout\) # ((\PC0|DATAPATH|Mux16~4_combout\ & \PC0|DATAPATH|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Mux11~2_combout\,
	datab => \PC0|DATAPATH|Mux16~4_combout\,
	datac => \PC0|DATAPATH|Mux11~3_combout\,
	datad => \PC0|DATAPATH|Mux11~5_combout\,
	combout => \PC0|DATAPATH|Mux11~6_combout\);

-- Location: LCCOMB_X65_Y35_N14
\PC0|DATAPATH|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux2~0_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|reg_acc\(5) $ (((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux11~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|DATAPATH|Mux11~6_combout\,
	datac => \PC0|DATAPATH|reg_acc\(5),
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y35_N4
\PC0|DATAPATH|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux2~1_combout\ = (\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Mux2~0_combout\ & ((\PC0|DATAPATH|reg_acc\(4)))) # (!\PC0|DATAPATH|Mux2~0_combout\ & (\PC0|DATAPATH|reg_acc\(6))))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(1),
	datab => \PC0|DATAPATH|Mux2~0_combout\,
	datac => \PC0|DATAPATH|reg_acc\(6),
	datad => \PC0|DATAPATH|reg_acc\(4),
	combout => \PC0|DATAPATH|Mux2~1_combout\);

-- Location: LCCOMB_X65_Y35_N2
\PC0|DATAPATH|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux2~2_combout\ = (\PC0|CTR|alu_func\(0) & ((\PC0|CTR|alu_func\(1)) # ((\PC0|DATAPATH|Add4~10_combout\)))) # (!\PC0|CTR|alu_func\(0) & (!\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Add4~10_combout\,
	datad => \PC0|DATAPATH|Add3~10_combout\,
	combout => \PC0|DATAPATH|Mux2~2_combout\);

-- Location: LCCOMB_X65_Y35_N20
\PC0|DATAPATH|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux2~3_combout\ = (\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Mux11~6_combout\ & ((\PC0|DATAPATH|reg_acc\(5)) # (\PC0|DATAPATH|Mux2~2_combout\))) # (!\PC0|DATAPATH|Mux11~6_combout\ & (\PC0|DATAPATH|reg_acc\(5) & 
-- \PC0|DATAPATH|Mux2~2_combout\)))) # (!\PC0|CTR|alu_func\(1) & (((\PC0|DATAPATH|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(1),
	datab => \PC0|DATAPATH|Mux11~6_combout\,
	datac => \PC0|DATAPATH|reg_acc\(5),
	datad => \PC0|DATAPATH|Mux2~2_combout\,
	combout => \PC0|DATAPATH|Mux2~3_combout\);

-- Location: LCCOMB_X65_Y35_N6
\PC0|DATAPATH|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux2~4_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux11~6_combout\) # ((\PC0|DATAPATH|Mux3~0_combout\)))) # (!\PC0|CTR|alu_func\(3) & (((!\PC0|DATAPATH|Mux3~0_combout\ & \PC0|DATAPATH|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|DATAPATH|Mux11~6_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux2~3_combout\,
	combout => \PC0|DATAPATH|Mux2~4_combout\);

-- Location: LCCOMB_X65_Y35_N24
\PC0|DATAPATH|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux2~5_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux2~4_combout\ & (\PC0|DATAPATH|reg_acc\(5))) # (!\PC0|DATAPATH|Mux2~4_combout\ & ((\PC0|DATAPATH|Mux2~1_combout\))))) # (!\PC0|DATAPATH|Mux3~0_combout\ & 
-- (((\PC0|DATAPATH|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(5),
	datab => \PC0|DATAPATH|Mux2~1_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux2~4_combout\,
	combout => \PC0|DATAPATH|Mux2~5_combout\);

-- Location: LCCOMB_X67_Y35_N12
\PC0|DATAPATH|reg_acc[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_acc[5]~feeder_combout\ = \PC0|DATAPATH|Mux2~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|Mux2~5_combout\,
	combout => \PC0|DATAPATH|reg_acc[5]~feeder_combout\);

-- Location: FF_X67_Y35_N13
\PC0|DATAPATH|reg_acc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_acc[5]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(5));

-- Location: LCCOMB_X67_Y36_N8
\PC0|DATAPATH|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~2_combout\ = (\PC0|DATAPATH|Mux3~1_combout\ & ((\PC0|DATAPATH|reg_acc\(3)) # ((!\PC0|CTR|alu_func\(1))))) # (!\PC0|DATAPATH|Mux3~1_combout\ & (((\PC0|DATAPATH|reg_acc\(5) & \PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(3),
	datab => \PC0|DATAPATH|Mux3~1_combout\,
	datac => \PC0|DATAPATH|reg_acc\(5),
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|Mux3~2_combout\);

-- Location: LCCOMB_X67_Y36_N2
\PC0|DATAPATH|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~3_combout\ = (\PC0|DATAPATH|reg_acc\(4) & ((\PC0|CTR|alu_func\(0)) # ((\PC0|CTR|alu_func\(1) & \PC0|DATAPATH|Mux12~3_combout\)))) # (!\PC0|DATAPATH|reg_acc\(4) & (\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Mux12~3_combout\) # 
-- (!\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(4),
	datab => \PC0|CTR|alu_func\(0),
	datac => \PC0|CTR|alu_func\(1),
	datad => \PC0|DATAPATH|Mux12~3_combout\,
	combout => \PC0|DATAPATH|Mux3~3_combout\);

-- Location: LCCOMB_X67_Y36_N12
\PC0|DATAPATH|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~4_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|Mux3~3_combout\)) # (!\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Mux3~3_combout\ & ((\PC0|DATAPATH|Add4~8_combout\))) # (!\PC0|DATAPATH|Mux3~3_combout\ & 
-- (\PC0|DATAPATH|Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(1),
	datab => \PC0|DATAPATH|Mux3~3_combout\,
	datac => \PC0|DATAPATH|Add3~8_combout\,
	datad => \PC0|DATAPATH|Add4~8_combout\,
	combout => \PC0|DATAPATH|Mux3~4_combout\);

-- Location: LCCOMB_X67_Y36_N6
\PC0|DATAPATH|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~5_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux3~0_combout\) # ((\PC0|DATAPATH|Mux12~3_combout\)))) # (!\PC0|CTR|alu_func\(3) & (!\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|DATAPATH|Mux3~0_combout\,
	datac => \PC0|DATAPATH|Mux12~3_combout\,
	datad => \PC0|DATAPATH|Mux3~4_combout\,
	combout => \PC0|DATAPATH|Mux3~5_combout\);

-- Location: LCCOMB_X67_Y36_N10
\PC0|DATAPATH|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux3~6_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux3~5_combout\ & (\PC0|DATAPATH|reg_acc\(4))) # (!\PC0|DATAPATH|Mux3~5_combout\ & ((\PC0|DATAPATH|Mux3~2_combout\))))) # (!\PC0|DATAPATH|Mux3~0_combout\ & 
-- (((\PC0|DATAPATH|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(4),
	datab => \PC0|DATAPATH|Mux3~0_combout\,
	datac => \PC0|DATAPATH|Mux3~2_combout\,
	datad => \PC0|DATAPATH|Mux3~5_combout\,
	combout => \PC0|DATAPATH|Mux3~6_combout\);

-- Location: LCCOMB_X63_Y36_N16
\PC0|CTR|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux12~0_combout\ = (!\PC0|CTR|add_mux\(0) & (\PC0|CTR|state\(2) & ((\PC0|CTR|alu_func~5_combout\) # (!\PC0|CTR|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(0),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux25~1_combout\,
	datad => \PC0|CTR|alu_func~5_combout\,
	combout => \PC0|CTR|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y36_N30
\PC0|CTR|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux12~1_combout\ = (\PC0|CTR|state\(0) & ((\PC0|CTR|state\(1) & (!\PC0|CTR|w_flag~0_combout\)) # (!\PC0|CTR|state\(1) & ((!\PC0|CTR|Equal2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|w_flag~0_combout\,
	datad => \PC0|CTR|Equal2~6_combout\,
	combout => \PC0|CTR|Mux12~1_combout\);

-- Location: LCCOMB_X63_Y36_N12
\PC0|CTR|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux12~2_combout\ = (!\PC0|CTR|add_mux\(0) & ((\PC0|CTR|Mux12~1_combout\) # ((\PC0|CTR|Mux27~0_combout\ & !\PC0|CTR|ram_cs~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(0),
	datab => \PC0|CTR|Mux27~0_combout\,
	datac => \PC0|CTR|Mux12~1_combout\,
	datad => \PC0|CTR|ram_cs~0_combout\,
	combout => \PC0|CTR|Mux12~2_combout\);

-- Location: LCCOMB_X63_Y36_N6
\PC0|CTR|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux12~3_combout\ = (!\PC0|CTR|Mux12~0_combout\ & ((\PC0|CTR|state\(2)) # ((!\PC0|CTR|Mux25~1_combout\ & !\PC0|CTR|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux12~0_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux25~1_combout\,
	datad => \PC0|CTR|Mux12~2_combout\,
	combout => \PC0|CTR|Mux12~3_combout\);

-- Location: FF_X63_Y36_N7
\PC0|CTR|add_mux[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux12~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|add_mux\(0));

-- Location: LCCOMB_X63_Y38_N2
\PC0|DATAPATH|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector8~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(3)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(1),
	datab => \PC0|DATAPATH|reg_pc\(3),
	datac => \PC0|DATAPATH|reg_oplo\(3),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector8~0_combout\);

-- Location: LCCOMB_X62_Y36_N10
\PC0|DATAPATH|reg_sp[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[1]~14_combout\ = ((\PC0|CTR|sp_mux~q\ $ (\PC0|DATAPATH|reg_sp\(1) $ (!\PC0|DATAPATH|reg_sp[0]~13\)))) # (GND)
-- \PC0|DATAPATH|reg_sp[1]~15\ = CARRY((\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(1)) # (!\PC0|DATAPATH|reg_sp[0]~13\))) # (!\PC0|CTR|sp_mux~q\ & (\PC0|DATAPATH|reg_sp\(1) & !\PC0|DATAPATH|reg_sp[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(1),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[0]~13\,
	combout => \PC0|DATAPATH|reg_sp[1]~14_combout\,
	cout => \PC0|DATAPATH|reg_sp[1]~15\);

-- Location: LCCOMB_X62_Y36_N12
\PC0|DATAPATH|reg_sp[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[2]~16_combout\ = (\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(2) & (\PC0|DATAPATH|reg_sp[1]~15\ & VCC)) # (!\PC0|DATAPATH|reg_sp\(2) & (!\PC0|DATAPATH|reg_sp[1]~15\)))) # (!\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(2) & 
-- (!\PC0|DATAPATH|reg_sp[1]~15\)) # (!\PC0|DATAPATH|reg_sp\(2) & ((\PC0|DATAPATH|reg_sp[1]~15\) # (GND)))))
-- \PC0|DATAPATH|reg_sp[2]~17\ = CARRY((\PC0|CTR|sp_mux~q\ & (!\PC0|DATAPATH|reg_sp\(2) & !\PC0|DATAPATH|reg_sp[1]~15\)) # (!\PC0|CTR|sp_mux~q\ & ((!\PC0|DATAPATH|reg_sp[1]~15\) # (!\PC0|DATAPATH|reg_sp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(2),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[1]~15\,
	combout => \PC0|DATAPATH|reg_sp[2]~16_combout\,
	cout => \PC0|DATAPATH|reg_sp[2]~17\);

-- Location: FF_X62_Y36_N13
\PC0|DATAPATH|reg_sp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[2]~16_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(2));

-- Location: LCCOMB_X62_Y36_N14
\PC0|DATAPATH|reg_sp[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[3]~18_combout\ = ((\PC0|CTR|sp_mux~q\ $ (\PC0|DATAPATH|reg_sp\(3) $ (!\PC0|DATAPATH|reg_sp[2]~17\)))) # (GND)
-- \PC0|DATAPATH|reg_sp[3]~19\ = CARRY((\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(3)) # (!\PC0|DATAPATH|reg_sp[2]~17\))) # (!\PC0|CTR|sp_mux~q\ & (\PC0|DATAPATH|reg_sp\(3) & !\PC0|DATAPATH|reg_sp[2]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(3),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[2]~17\,
	combout => \PC0|DATAPATH|reg_sp[3]~18_combout\,
	cout => \PC0|DATAPATH|reg_sp[3]~19\);

-- Location: FF_X62_Y36_N15
\PC0|DATAPATH|reg_sp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[3]~18_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(3));

-- Location: LCCOMB_X63_Y38_N0
\PC0|DATAPATH|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector8~1_combout\ = (\PC0|DATAPATH|Selector8~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(1),
	datab => \PC0|DATAPATH|Selector8~0_combout\,
	datad => \PC0|DATAPATH|reg_sp\(3),
	combout => \PC0|DATAPATH|Selector8~1_combout\);

-- Location: LCCOMB_X62_Y36_N16
\PC0|DATAPATH|reg_sp[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[4]~20_combout\ = (\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(4) & (\PC0|DATAPATH|reg_sp[3]~19\ & VCC)) # (!\PC0|DATAPATH|reg_sp\(4) & (!\PC0|DATAPATH|reg_sp[3]~19\)))) # (!\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(4) & 
-- (!\PC0|DATAPATH|reg_sp[3]~19\)) # (!\PC0|DATAPATH|reg_sp\(4) & ((\PC0|DATAPATH|reg_sp[3]~19\) # (GND)))))
-- \PC0|DATAPATH|reg_sp[4]~21\ = CARRY((\PC0|CTR|sp_mux~q\ & (!\PC0|DATAPATH|reg_sp\(4) & !\PC0|DATAPATH|reg_sp[3]~19\)) # (!\PC0|CTR|sp_mux~q\ & ((!\PC0|DATAPATH|reg_sp[3]~19\) # (!\PC0|DATAPATH|reg_sp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(4),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[3]~19\,
	combout => \PC0|DATAPATH|reg_sp[4]~20_combout\,
	cout => \PC0|DATAPATH|reg_sp[4]~21\);

-- Location: FF_X62_Y36_N17
\PC0|DATAPATH|reg_sp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[4]~20_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(4));

-- Location: LCCOMB_X63_Y37_N12
\PC0|DATAPATH|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector7~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(4)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(4),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|CTR|add_mux\(0),
	datad => \PC0|DATAPATH|reg_oplo\(4),
	combout => \PC0|DATAPATH|Selector7~0_combout\);

-- Location: LCCOMB_X63_Y37_N26
\PC0|DATAPATH|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector7~1_combout\ = (\PC0|DATAPATH|Selector7~0_combout\) # ((!\PC0|DATAPATH|reg_sp\(4) & \PC0|CTR|add_mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_sp\(4),
	datac => \PC0|CTR|add_mux\(1),
	datad => \PC0|DATAPATH|Selector7~0_combout\,
	combout => \PC0|DATAPATH|Selector7~1_combout\);

-- Location: LCCOMB_X62_Y36_N18
\PC0|DATAPATH|reg_sp[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[5]~22_combout\ = ((\PC0|CTR|sp_mux~q\ $ (\PC0|DATAPATH|reg_sp\(5) $ (!\PC0|DATAPATH|reg_sp[4]~21\)))) # (GND)
-- \PC0|DATAPATH|reg_sp[5]~23\ = CARRY((\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(5)) # (!\PC0|DATAPATH|reg_sp[4]~21\))) # (!\PC0|CTR|sp_mux~q\ & (\PC0|DATAPATH|reg_sp\(5) & !\PC0|DATAPATH|reg_sp[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(5),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[4]~21\,
	combout => \PC0|DATAPATH|reg_sp[5]~22_combout\,
	cout => \PC0|DATAPATH|reg_sp[5]~23\);

-- Location: FF_X62_Y36_N19
\PC0|DATAPATH|reg_sp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[5]~22_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(5));

-- Location: LCCOMB_X63_Y38_N28
\PC0|DATAPATH|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector6~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(5)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(5),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(5),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector6~0_combout\);

-- Location: LCCOMB_X63_Y38_N4
\PC0|DATAPATH|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector6~1_combout\ = (\PC0|DATAPATH|Selector6~0_combout\) # ((!\PC0|DATAPATH|reg_sp\(5) & \PC0|CTR|add_mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_sp\(5),
	datab => \PC0|DATAPATH|Selector6~0_combout\,
	datad => \PC0|CTR|add_mux\(1),
	combout => \PC0|DATAPATH|Selector6~1_combout\);

-- Location: LCCOMB_X62_Y36_N20
\PC0|DATAPATH|reg_sp[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[6]~24_combout\ = (\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(6) & (\PC0|DATAPATH|reg_sp[5]~23\ & VCC)) # (!\PC0|DATAPATH|reg_sp\(6) & (!\PC0|DATAPATH|reg_sp[5]~23\)))) # (!\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(6) & 
-- (!\PC0|DATAPATH|reg_sp[5]~23\)) # (!\PC0|DATAPATH|reg_sp\(6) & ((\PC0|DATAPATH|reg_sp[5]~23\) # (GND)))))
-- \PC0|DATAPATH|reg_sp[6]~25\ = CARRY((\PC0|CTR|sp_mux~q\ & (!\PC0|DATAPATH|reg_sp\(6) & !\PC0|DATAPATH|reg_sp[5]~23\)) # (!\PC0|CTR|sp_mux~q\ & ((!\PC0|DATAPATH|reg_sp[5]~23\) # (!\PC0|DATAPATH|reg_sp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(6),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[5]~23\,
	combout => \PC0|DATAPATH|reg_sp[6]~24_combout\,
	cout => \PC0|DATAPATH|reg_sp[6]~25\);

-- Location: FF_X62_Y36_N21
\PC0|DATAPATH|reg_sp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[6]~24_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(6));

-- Location: LCCOMB_X63_Y38_N6
\PC0|DATAPATH|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector5~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(6)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(6),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(6),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector5~0_combout\);

-- Location: LCCOMB_X63_Y38_N18
\PC0|DATAPATH|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector5~1_combout\ = (\PC0|DATAPATH|Selector5~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_sp\(6),
	datad => \PC0|DATAPATH|Selector5~0_combout\,
	combout => \PC0|DATAPATH|Selector5~1_combout\);

-- Location: LCCOMB_X62_Y36_N22
\PC0|DATAPATH|reg_sp[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[7]~26_combout\ = ((\PC0|CTR|sp_mux~q\ $ (\PC0|DATAPATH|reg_sp\(7) $ (!\PC0|DATAPATH|reg_sp[6]~25\)))) # (GND)
-- \PC0|DATAPATH|reg_sp[7]~27\ = CARRY((\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(7)) # (!\PC0|DATAPATH|reg_sp[6]~25\))) # (!\PC0|CTR|sp_mux~q\ & (\PC0|DATAPATH|reg_sp\(7) & !\PC0|DATAPATH|reg_sp[6]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(7),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[6]~25\,
	combout => \PC0|DATAPATH|reg_sp[7]~26_combout\,
	cout => \PC0|DATAPATH|reg_sp[7]~27\);

-- Location: FF_X62_Y36_N23
\PC0|DATAPATH|reg_sp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[7]~26_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(7));

-- Location: LCCOMB_X63_Y37_N20
\PC0|DATAPATH|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector4~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(7)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(7),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(7),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector4~0_combout\);

-- Location: LCCOMB_X63_Y37_N30
\PC0|DATAPATH|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector4~1_combout\ = (\PC0|DATAPATH|Selector4~0_combout\) # ((!\PC0|DATAPATH|reg_sp\(7) & \PC0|CTR|add_mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_sp\(7),
	datac => \PC0|CTR|add_mux\(1),
	datad => \PC0|DATAPATH|Selector4~0_combout\,
	combout => \PC0|DATAPATH|Selector4~1_combout\);

-- Location: LCCOMB_X62_Y36_N24
\PC0|DATAPATH|reg_sp[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[8]~28_combout\ = (\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(8) & (\PC0|DATAPATH|reg_sp[7]~27\ & VCC)) # (!\PC0|DATAPATH|reg_sp\(8) & (!\PC0|DATAPATH|reg_sp[7]~27\)))) # (!\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(8) & 
-- (!\PC0|DATAPATH|reg_sp[7]~27\)) # (!\PC0|DATAPATH|reg_sp\(8) & ((\PC0|DATAPATH|reg_sp[7]~27\) # (GND)))))
-- \PC0|DATAPATH|reg_sp[8]~29\ = CARRY((\PC0|CTR|sp_mux~q\ & (!\PC0|DATAPATH|reg_sp\(8) & !\PC0|DATAPATH|reg_sp[7]~27\)) # (!\PC0|CTR|sp_mux~q\ & ((!\PC0|DATAPATH|reg_sp[7]~27\) # (!\PC0|DATAPATH|reg_sp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(8),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[7]~27\,
	combout => \PC0|DATAPATH|reg_sp[8]~28_combout\,
	cout => \PC0|DATAPATH|reg_sp[8]~29\);

-- Location: FF_X62_Y36_N25
\PC0|DATAPATH|reg_sp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[8]~28_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(8));

-- Location: LCCOMB_X63_Y38_N24
\PC0|DATAPATH|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector3~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_ophi\(0)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(8),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|CTR|add_mux\(0),
	datad => \PC0|DATAPATH|reg_ophi\(0),
	combout => \PC0|DATAPATH|Selector3~0_combout\);

-- Location: LCCOMB_X63_Y38_N26
\PC0|DATAPATH|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector3~1_combout\ = (\PC0|DATAPATH|Selector3~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(1),
	datab => \PC0|DATAPATH|reg_sp\(8),
	datad => \PC0|DATAPATH|Selector3~0_combout\,
	combout => \PC0|DATAPATH|Selector3~1_combout\);

-- Location: LCCOMB_X62_Y36_N26
\PC0|DATAPATH|reg_sp[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[9]~30_combout\ = ((\PC0|CTR|sp_mux~q\ $ (\PC0|DATAPATH|reg_sp\(9) $ (!\PC0|DATAPATH|reg_sp[8]~29\)))) # (GND)
-- \PC0|DATAPATH|reg_sp[9]~31\ = CARRY((\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(9)) # (!\PC0|DATAPATH|reg_sp[8]~29\))) # (!\PC0|CTR|sp_mux~q\ & (\PC0|DATAPATH|reg_sp\(9) & !\PC0|DATAPATH|reg_sp[8]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(9),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[8]~29\,
	combout => \PC0|DATAPATH|reg_sp[9]~30_combout\,
	cout => \PC0|DATAPATH|reg_sp[9]~31\);

-- Location: FF_X62_Y36_N27
\PC0|DATAPATH|reg_sp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[9]~30_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(9));

-- Location: LCCOMB_X63_Y38_N16
\PC0|DATAPATH|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector2~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_ophi\(1))) # (!\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_pc\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(1),
	datab => \PC0|CTR|add_mux\(0),
	datac => \PC0|DATAPATH|reg_ophi\(1),
	datad => \PC0|DATAPATH|reg_pc\(9),
	combout => \PC0|DATAPATH|Selector2~0_combout\);

-- Location: LCCOMB_X63_Y38_N10
\PC0|DATAPATH|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector2~1_combout\ = (\PC0|DATAPATH|Selector2~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_sp\(9),
	datad => \PC0|DATAPATH|Selector2~0_combout\,
	combout => \PC0|DATAPATH|Selector2~1_combout\);

-- Location: LCCOMB_X62_Y36_N28
\PC0|DATAPATH|reg_sp[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[10]~32_combout\ = (\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(10) & (\PC0|DATAPATH|reg_sp[9]~31\ & VCC)) # (!\PC0|DATAPATH|reg_sp\(10) & (!\PC0|DATAPATH|reg_sp[9]~31\)))) # (!\PC0|CTR|sp_mux~q\ & ((\PC0|DATAPATH|reg_sp\(10) & 
-- (!\PC0|DATAPATH|reg_sp[9]~31\)) # (!\PC0|DATAPATH|reg_sp\(10) & ((\PC0|DATAPATH|reg_sp[9]~31\) # (GND)))))
-- \PC0|DATAPATH|reg_sp[10]~33\ = CARRY((\PC0|CTR|sp_mux~q\ & (!\PC0|DATAPATH|reg_sp\(10) & !\PC0|DATAPATH|reg_sp[9]~31\)) # (!\PC0|CTR|sp_mux~q\ & ((!\PC0|DATAPATH|reg_sp[9]~31\) # (!\PC0|DATAPATH|reg_sp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datab => \PC0|DATAPATH|reg_sp\(10),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_sp[9]~31\,
	combout => \PC0|DATAPATH|reg_sp[10]~32_combout\,
	cout => \PC0|DATAPATH|reg_sp[10]~33\);

-- Location: FF_X62_Y36_N29
\PC0|DATAPATH|reg_sp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[10]~32_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(10));

-- Location: LCCOMB_X63_Y38_N20
\PC0|DATAPATH|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector1~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_ophi\(2))) # (!\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_pc\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(1),
	datab => \PC0|DATAPATH|reg_ophi\(2),
	datac => \PC0|DATAPATH|reg_pc\(10),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector1~0_combout\);

-- Location: LCCOMB_X63_Y38_N22
\PC0|DATAPATH|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector1~1_combout\ = (\PC0|DATAPATH|Selector1~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_sp\(10),
	datad => \PC0|DATAPATH|Selector1~0_combout\,
	combout => \PC0|DATAPATH|Selector1~1_combout\);

-- Location: LCCOMB_X62_Y36_N30
\PC0|DATAPATH|reg_sp[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_sp[11]~34_combout\ = \PC0|CTR|sp_mux~q\ $ (\PC0|DATAPATH|reg_sp[10]~33\ $ (!\PC0|DATAPATH|reg_sp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|sp_mux~q\,
	datad => \PC0|DATAPATH|reg_sp\(11),
	cin => \PC0|DATAPATH|reg_sp[10]~33\,
	combout => \PC0|DATAPATH|reg_sp[11]~34_combout\);

-- Location: FF_X62_Y36_N31
\PC0|DATAPATH|reg_sp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[11]~34_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(11));

-- Location: LCCOMB_X63_Y36_N0
\PC0|DATAPATH|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector0~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_ophi\(3)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|add_mux\(0),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_pc\(11),
	datad => \PC0|DATAPATH|reg_ophi\(3),
	combout => \PC0|DATAPATH|Selector0~0_combout\);

-- Location: LCCOMB_X63_Y36_N26
\PC0|DATAPATH|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector0~1_combout\ = (\PC0|DATAPATH|Selector0~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_sp\(11),
	datad => \PC0|DATAPATH|Selector0~0_combout\,
	combout => \PC0|DATAPATH|Selector0~1_combout\);

-- Location: M9K_X64_Y33_N0
\RAM0|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM4KB:RAM0|altsyncram:altsyncram_component|altsyncram_9ug1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \PC0|CTR|mem_wr~q\,
	portare => VCC,
	clk0 => \PC0|state_clk[0]~clkctrl_outclk\,
	ena0 => \PC0|CTR|ram_cs~q\,
	clr0 => \sys_rst~input_o\,
	portadatain => \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y37_N0
\ROM0|altsyncram_component|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007183180230DC2007300150140170140150150170160170141C",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "demo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM4KB:ROM0|altsyncram:altsyncram_component|altsyncram_sd81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	ena0 => \comb~0_combout\,
	clr0 => \sys_rst~input_o\,
	portaaddr => \ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM0|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y38_N14
\d_in[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[5]~5_combout\ = (\PC0|CTR|ram_cs~q\ & (\RAM0|altsyncram_component|auto_generated|q_a\(5))) # (!\PC0|CTR|ram_cs~q\ & ((\ROM0|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|ram_cs~q\,
	datac => \RAM0|altsyncram_component|auto_generated|q_a\(5),
	datad => \ROM0|altsyncram_component|auto_generated|q_a\(5),
	combout => \d_in[5]~5_combout\);

-- Location: LCCOMB_X61_Y38_N16
\PC0|CTR|w_opl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_opl~0_combout\ = (\PC0|CTR|state\(1) & (((\PC0|CTR|w_opl~q\)))) # (!\PC0|CTR|state\(1) & ((\PC0|CTR|state\(2) & ((\PC0|CTR|w_opl~q\))) # (!\PC0|CTR|state\(2) & (!\PC0|CTR|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|w_opl~q\,
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|w_opl~0_combout\);

-- Location: FF_X61_Y38_N17
\PC0|CTR|w_opl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|w_opl~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_opl~q\);

-- Location: FF_X62_Y38_N7
\PC0|DATAPATH|reg_opl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[5]~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(5));

-- Location: LCCOMB_X61_Y38_N22
\PC0|CTR|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux0~3_combout\ = (\PC0|DATAPATH|reg_opl\(3) & ((\PC0|DATAPATH|reg_opl\(4) & (!\PC0|DATAPATH|zero~q\)) # (!\PC0|DATAPATH|reg_opl\(4) & ((!\PC0|CTR|pc_mux~q\))))) # (!\PC0|DATAPATH|reg_opl\(3) & (((!\PC0|CTR|pc_mux~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|zero~q\,
	datab => \PC0|CTR|pc_mux~q\,
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|DATAPATH|reg_opl\(4),
	combout => \PC0|CTR|Mux0~3_combout\);

-- Location: LCCOMB_X61_Y38_N0
\PC0|CTR|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux0~2_combout\ = (\PC0|DATAPATH|reg_opl\(4) & (((!\PC0|CTR|pc_mux~q\)))) # (!\PC0|DATAPATH|reg_opl\(4) & (!\PC0|DATAPATH|reg_opl\(3) & (\PC0|DATAPATH|carry~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(4),
	datac => \PC0|DATAPATH|carry~q\,
	datad => \PC0|CTR|pc_mux~q\,
	combout => \PC0|CTR|Mux0~2_combout\);

-- Location: LCCOMB_X61_Y38_N12
\PC0|CTR|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux0~4_combout\ = (\PC0|DATAPATH|reg_opl\(6) & ((\PC0|DATAPATH|reg_opl\(5)) # ((\PC0|CTR|Mux0~2_combout\)))) # (!\PC0|DATAPATH|reg_opl\(6) & (!\PC0|DATAPATH|reg_opl\(5) & (\PC0|CTR|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(6),
	datab => \PC0|DATAPATH|reg_opl\(5),
	datac => \PC0|CTR|Mux0~3_combout\,
	datad => \PC0|CTR|Mux0~2_combout\,
	combout => \PC0|CTR|Mux0~4_combout\);

-- Location: LCCOMB_X61_Y38_N20
\PC0|CTR|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux0~0_combout\ = (\PC0|DATAPATH|reg_opl\(4) & (\PC0|DATAPATH|carry~q\)) # (!\PC0|DATAPATH|reg_opl\(4) & ((\PC0|DATAPATH|zero~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|carry~q\,
	datac => \PC0|DATAPATH|zero~q\,
	datad => \PC0|DATAPATH|reg_opl\(4),
	combout => \PC0|CTR|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y38_N6
\PC0|CTR|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux0~1_combout\ = (\PC0|DATAPATH|reg_opl\(4) & ((\PC0|DATAPATH|reg_opl\(3) & ((!\PC0|CTR|Mux0~0_combout\))) # (!\PC0|DATAPATH|reg_opl\(3) & (\PC0|DATAPATH|pos~q\)))) # (!\PC0|DATAPATH|reg_opl\(4) & ((\PC0|DATAPATH|reg_opl\(3) & 
-- (!\PC0|DATAPATH|pos~q\)) # (!\PC0|DATAPATH|reg_opl\(3) & ((\PC0|CTR|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(4),
	datab => \PC0|DATAPATH|pos~q\,
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|Mux0~0_combout\,
	combout => \PC0|CTR|Mux0~1_combout\);

-- Location: LCCOMB_X61_Y38_N30
\PC0|CTR|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux0~5_combout\ = (\PC0|CTR|Mux0~4_combout\ & (((!\PC0|DATAPATH|reg_opl\(5))) # (!\PC0|CTR|pc_mux~q\))) # (!\PC0|CTR|Mux0~4_combout\ & (((\PC0|CTR|Mux0~1_combout\ & \PC0|DATAPATH|reg_opl\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux0~4_combout\,
	datab => \PC0|CTR|pc_mux~q\,
	datac => \PC0|CTR|Mux0~1_combout\,
	datad => \PC0|DATAPATH|reg_opl\(5),
	combout => \PC0|CTR|Mux0~5_combout\);

-- Location: LCCOMB_X61_Y37_N26
\PC0|CTR|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~1_combout\ = (\PC0|CTR|always0~1_combout\ & (\PC0|CTR|Mux0~5_combout\ & \PC0|CTR|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|always0~1_combout\,
	datac => \PC0|CTR|Mux0~5_combout\,
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux17~1_combout\);

-- Location: LCCOMB_X61_Y39_N16
\PC0|CTR|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~2_combout\ = ((\PC0|DATAPATH|reg_opl\(6) & ((\PC0|DATAPATH|reg_opl\(7)) # (!\PC0|CTR|Mux20~0_combout\)))) # (!\PC0|CTR|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal10~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(6),
	datac => \PC0|CTR|Mux20~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|Mux17~2_combout\);

-- Location: LCCOMB_X61_Y39_N12
\PC0|CTR|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~3_combout\ = ((\PC0|CTR|Mux17~2_combout\ & (!\PC0|CTR|Equal6~0_combout\ & !\PC0|CTR|Equal8~2_combout\))) # (!\PC0|CTR|pc_mux~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|pc_mux~q\,
	datab => \PC0|CTR|Mux17~2_combout\,
	datac => \PC0|CTR|Equal6~0_combout\,
	datad => \PC0|CTR|Equal8~2_combout\,
	combout => \PC0|CTR|Mux17~3_combout\);

-- Location: LCCOMB_X61_Y37_N20
\PC0|CTR|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~4_combout\ = (\PC0|CTR|Mux17~0_combout\) # ((\PC0|CTR|Mux17~1_combout\) # ((!\PC0|CTR|state\(0) & \PC0|CTR|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|Mux17~0_combout\,
	datac => \PC0|CTR|Mux17~1_combout\,
	datad => \PC0|CTR|Mux17~3_combout\,
	combout => \PC0|CTR|Mux17~4_combout\);

-- Location: LCCOMB_X61_Y37_N0
\PC0|CTR|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux17~6_combout\ = (\PC0|CTR|Mux25~1_combout\ & (!\PC0|CTR|Mux17~5_combout\ & ((!\PC0|CTR|Mux17~4_combout\) # (!\PC0|CTR|Mux2~2_combout\)))) # (!\PC0|CTR|Mux25~1_combout\ & (((!\PC0|CTR|Mux17~4_combout\)) # (!\PC0|CTR|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux25~1_combout\,
	datab => \PC0|CTR|Mux2~2_combout\,
	datac => \PC0|CTR|Mux17~5_combout\,
	datad => \PC0|CTR|Mux17~4_combout\,
	combout => \PC0|CTR|Mux17~6_combout\);

-- Location: FF_X61_Y37_N1
\PC0|CTR|pc_mux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux17~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux26~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|pc_mux~q\);

-- Location: FF_X62_Y37_N5
\PC0|DATAPATH|reg_pc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[0]~12_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(0),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(0));

-- Location: LCCOMB_X62_Y37_N6
\PC0|DATAPATH|reg_pc[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_pc[1]~14_combout\ = (\PC0|DATAPATH|reg_pc\(1) & (!\PC0|DATAPATH|reg_pc[0]~13\)) # (!\PC0|DATAPATH|reg_pc\(1) & ((\PC0|DATAPATH|reg_pc[0]~13\) # (GND)))
-- \PC0|DATAPATH|reg_pc[1]~15\ = CARRY((!\PC0|DATAPATH|reg_pc[0]~13\) # (!\PC0|DATAPATH|reg_pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(1),
	datad => VCC,
	cin => \PC0|DATAPATH|reg_pc[0]~13\,
	combout => \PC0|DATAPATH|reg_pc[1]~14_combout\,
	cout => \PC0|DATAPATH|reg_pc[1]~15\);

-- Location: FF_X62_Y37_N7
\PC0|DATAPATH|reg_pc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[1]~14_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(1),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(1));

-- Location: FF_X62_Y37_N9
\PC0|DATAPATH|reg_pc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_pc[2]~16_combout\,
	asdata => \PC0|DATAPATH|reg_oplo\(2),
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|pc_mux~q\,
	ena => \PC0|CTR|w_pc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_pc\(2));

-- Location: LCCOMB_X63_Y37_N8
\PC0|DATAPATH|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector9~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(2)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(2),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(2),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector9~0_combout\);

-- Location: LCCOMB_X63_Y37_N18
\PC0|DATAPATH|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector9~1_combout\ = (\PC0|DATAPATH|Selector9~0_combout\) # ((\PC0|CTR|add_mux\(1) & !\PC0|DATAPATH|reg_sp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|Selector9~0_combout\,
	datad => \PC0|DATAPATH|reg_sp\(2),
	combout => \PC0|DATAPATH|Selector9~1_combout\);

-- Location: M9K_X64_Y39_N0
\ROM0|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D18118409E74601C90C7A87A87B87A87A87A87A87A87B87BAE",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "demo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM4KB:ROM0|altsyncram:altsyncram_component|altsyncram_sd81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	ena0 => \comb~0_combout\,
	clr0 => \sys_rst~input_o\,
	portaaddr => \ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X65_Y36_N22
\PC0|DATAPATH|Mux0~2_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux0~2_wirecell_combout\ = !\PC0|DATAPATH|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux0~2_combout\,
	combout => \PC0|DATAPATH|Mux0~2_wirecell_combout\);

-- Location: M9K_X64_Y36_N0
\RAM0|altsyncram_component|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM4KB:RAM0|altsyncram:altsyncram_component|altsyncram_9ug1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \PC0|CTR|mem_wr~q\,
	portare => VCC,
	clk0 => \PC0|state_clk[0]~clkctrl_outclk\,
	ena0 => \PC0|CTR|ram_cs~q\,
	clr0 => \sys_rst~input_o\,
	portadatain => \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM0|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y36_N8
\d_in[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[7]~7_combout\ = (\PC0|CTR|ram_cs~q\ & ((\RAM0|altsyncram_component|auto_generated|q_a\(7)))) # (!\PC0|CTR|ram_cs~q\ & (\ROM0|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|ram_cs~q\,
	datac => \ROM0|altsyncram_component|auto_generated|q_a\(7),
	datad => \RAM0|altsyncram_component|auto_generated|q_a\(7),
	combout => \d_in[7]~7_combout\);

-- Location: FF_X62_Y38_N1
\PC0|DATAPATH|reg_opl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[7]~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(7));

-- Location: LCCOMB_X62_Y38_N8
\PC0|CTR|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal8~0_combout\ = (\PC0|DATAPATH|reg_opl\(2) & (\PC0|DATAPATH|reg_opl\(7) & (\PC0|DATAPATH|reg_opl\(6) & \PC0|DATAPATH|reg_opl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datab => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|DATAPATH|reg_opl\(6),
	datad => \PC0|DATAPATH|reg_opl\(1),
	combout => \PC0|CTR|Equal8~0_combout\);

-- Location: LCCOMB_X62_Y38_N22
\PC0|CTR|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal8~1_combout\ = (!\PC0|DATAPATH|reg_opl\(0) & (\PC0|DATAPATH|reg_opl\(4) & (\PC0|CTR|Equal8~0_combout\ & !\PC0|DATAPATH|reg_opl\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(0),
	datab => \PC0|DATAPATH|reg_opl\(4),
	datac => \PC0|CTR|Equal8~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(5),
	combout => \PC0|CTR|Equal8~1_combout\);

-- Location: LCCOMB_X61_Y37_N12
\PC0|CTR|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~9_combout\ = (\PC0|CTR|state\(2)) # ((\PC0|CTR|state\(1) & ((!\PC0|DATAPATH|reg_opl\(3)) # (!\PC0|CTR|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal8~1_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux28~9_combout\);

-- Location: LCCOMB_X61_Y37_N2
\PC0|CTR|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~6_combout\ = (!\PC0|CTR|state\(2) & ((\PC0|CTR|state\(0) & (\PC0|CTR|state\(1) & \PC0|CTR|w_flag~0_combout\)) # (!\PC0|CTR|state\(0) & (!\PC0|CTR|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|w_flag~0_combout\,
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux28~6_combout\);

-- Location: LCCOMB_X61_Y37_N28
\PC0|CTR|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~7_combout\ = (\PC0|CTR|Mux28~6_combout\) # ((\PC0|CTR|Mux25~1_combout\ & (!\PC0|CTR|Equal11~0_combout\ & \PC0|CTR|always0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux25~1_combout\,
	datab => \PC0|CTR|Mux28~6_combout\,
	datac => \PC0|CTR|Equal11~0_combout\,
	datad => \PC0|CTR|always0~0_combout\,
	combout => \PC0|CTR|Mux28~7_combout\);

-- Location: LCCOMB_X61_Y37_N18
\PC0|CTR|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~8_combout\ = (\PC0|CTR|state\(0) & (((!\PC0|CTR|Equal8~2_combout\ & !\PC0|CTR|Equal6~0_combout\)) # (!\PC0|CTR|Mux28~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|Equal8~2_combout\,
	datac => \PC0|CTR|Equal6~0_combout\,
	datad => \PC0|CTR|Mux28~12_combout\,
	combout => \PC0|CTR|Mux28~8_combout\);

-- Location: LCCOMB_X61_Y37_N4
\PC0|CTR|Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux28~10_combout\ = (!\PC0|CTR|Mux28~7_combout\ & ((\PC0|CTR|sp_mux~q\) # ((!\PC0|CTR|Mux28~9_combout\ & !\PC0|CTR|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux28~9_combout\,
	datab => \PC0|CTR|Mux28~7_combout\,
	datac => \PC0|CTR|sp_mux~q\,
	datad => \PC0|CTR|Mux28~8_combout\,
	combout => \PC0|CTR|Mux28~10_combout\);

-- Location: FF_X61_Y37_N5
\PC0|CTR|sp_mux\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux28~10_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|sp_mux~q\);

-- Location: FF_X62_Y36_N11
\PC0|DATAPATH|reg_sp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[1]~14_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(1));

-- Location: LCCOMB_X63_Y38_N8
\PC0|DATAPATH|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector10~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_oplo\(1))) # (!\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_pc\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_oplo\(1),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_pc\(1),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector10~0_combout\);

-- Location: LCCOMB_X63_Y38_N12
\PC0|DATAPATH|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector10~1_combout\ = (\PC0|DATAPATH|Selector10~0_combout\) # ((!\PC0|DATAPATH|reg_sp\(1) & \PC0|CTR|add_mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_sp\(1),
	datab => \PC0|CTR|add_mux\(1),
	datad => \PC0|DATAPATH|Selector10~0_combout\,
	combout => \PC0|DATAPATH|Selector10~1_combout\);

-- Location: M9K_X64_Y40_N0
\ROM0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000821C10DDC320473AC30A4CA4CA4CA6CA6CA5CA4CA4CA5CA4DF",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "demo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM4KB:ROM0|altsyncram:altsyncram_component|altsyncram_sd81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	ena0 => \comb~0_combout\,
	clr0 => \sys_rst~input_o\,
	portaaddr => \ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y34_N0
\RAM0|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM4KB:RAM0|altsyncram:altsyncram_component|altsyncram_9ug1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \PC0|CTR|mem_wr~q\,
	portare => VCC,
	clk0 => \PC0|state_clk[0]~clkctrl_outclk\,
	ena0 => \PC0|CTR|ram_cs~q\,
	clr0 => \sys_rst~input_o\,
	portadatain => \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X62_Y38_N6
\d_in[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[1]~1_combout\ = (\PC0|CTR|ram_cs~q\ & ((\RAM0|altsyncram_component|auto_generated|q_a\(1)))) # (!\PC0|CTR|ram_cs~q\ & (\ROM0|altsyncram_component|auto_generated|q_a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM0|altsyncram_component|auto_generated|q_a\(1),
	datab => \PC0|CTR|ram_cs~q\,
	datad => \RAM0|altsyncram_component|auto_generated|q_a\(1),
	combout => \d_in[1]~1_combout\);

-- Location: LCCOMB_X62_Y38_N20
\PC0|DATAPATH|reg_opl[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|reg_opl[1]~feeder_combout\ = \d_in[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \d_in[1]~1_combout\,
	combout => \PC0|DATAPATH|reg_opl[1]~feeder_combout\);

-- Location: FF_X62_Y38_N21
\PC0|DATAPATH|reg_opl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_opl[1]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(1));

-- Location: LCCOMB_X62_Y38_N30
\PC0|CTR|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal7~0_combout\ = (!\PC0|DATAPATH|reg_opl\(2) & (!\PC0|DATAPATH|reg_opl\(1) & !\PC0|DATAPATH|reg_opl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datab => \PC0|DATAPATH|reg_opl\(1),
	datad => \PC0|DATAPATH|reg_opl\(0),
	combout => \PC0|CTR|Equal7~0_combout\);

-- Location: LCCOMB_X62_Y38_N0
\PC0|CTR|w_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_flag~0_combout\ = (\PC0|DATAPATH|reg_opl\(3) & (\PC0|CTR|Equal8~1_combout\ & ((!\PC0|DATAPATH|reg_opl\(7)) # (!\PC0|CTR|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal7~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|DATAPATH|reg_opl\(7),
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|w_flag~0_combout\);

-- Location: LCCOMB_X61_Y39_N8
\PC0|CTR|w_pc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_pc~1_combout\ = (\PC0|CTR|Equal10~0_combout\ & (((\PC0|CTR|Mux20~0_combout\ & !\PC0|DATAPATH|reg_opl\(7))) # (!\PC0|DATAPATH|reg_opl\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux20~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(6),
	datac => \PC0|CTR|Equal10~0_combout\,
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|w_pc~1_combout\);

-- Location: LCCOMB_X62_Y40_N6
\PC0|CTR|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~5_combout\ = (\PC0|CTR|state\(2)) # ((\PC0|CTR|Mux27~0_combout\ & ((\PC0|CTR|w_pc~1_combout\) # (!\PC0|CTR|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_pc~1_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux27~0_combout\,
	datad => \PC0|CTR|Equal6~0_combout\,
	combout => \PC0|CTR|Mux27~5_combout\);

-- Location: LCCOMB_X62_Y40_N28
\PC0|CTR|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~6_combout\ = (\PC0|CTR|Mux27~5_combout\) # ((\PC0|CTR|state\(0) & ((!\PC0|CTR|state\(1)) # (!\PC0|CTR|w_flag~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|w_flag~0_combout\,
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|Mux27~5_combout\,
	combout => \PC0|CTR|Mux27~6_combout\);

-- Location: LCCOMB_X62_Y40_N16
\PC0|CTR|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~4_combout\ = (!\PC0|DATAPATH|reg_opl\(3) & (\PC0|CTR|Mux13~3_combout\ & (\PC0|CTR|always0~0_combout\ & \PC0|CTR|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|CTR|Mux13~3_combout\,
	datac => \PC0|CTR|always0~0_combout\,
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|Mux27~4_combout\);

-- Location: LCCOMB_X61_Y39_N18
\PC0|CTR|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~2_combout\ = (\PC0|CTR|state\(0) & ((\PC0|CTR|Equal2~6_combout\) # ((\PC0|CTR|Equal6~0_combout\) # (\PC0|CTR|Equal8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|Equal2~6_combout\,
	datac => \PC0|CTR|Equal6~0_combout\,
	datad => \PC0|CTR|Equal8~2_combout\,
	combout => \PC0|CTR|Mux27~2_combout\);

-- Location: LCCOMB_X61_Y39_N22
\PC0|CTR|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux7~4_combout\ = (!\PC0|CTR|w_pc~1_combout\ & (((!\PC0|CTR|Equal2~4_combout\) # (!\PC0|DATAPATH|reg_opl\(4))) # (!\PC0|DATAPATH|reg_opl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(4),
	datac => \PC0|CTR|w_pc~1_combout\,
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|Mux7~4_combout\);

-- Location: LCCOMB_X61_Y39_N24
\PC0|CTR|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~1_combout\ = (!\PC0|CTR|state\(0) & (\PC0|CTR|state\(1) & (\PC0|CTR|Mux7~4_combout\ & \PC0|CTR|Equal8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|Mux7~4_combout\,
	datad => \PC0|CTR|Equal8~2_combout\,
	combout => \PC0|CTR|Mux27~1_combout\);

-- Location: LCCOMB_X62_Y40_N18
\PC0|CTR|alu_func[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func[2]~19_combout\ = (\PC0|CTR|alu_func[2]~15_combout\ & ((\PC0|DATAPATH|reg_opl\(3)) # ((!\PC0|CTR|always0~2_combout\) # (!\PC0|DATAPATH|reg_opl\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(4),
	datac => \PC0|CTR|alu_func[2]~15_combout\,
	datad => \PC0|CTR|always0~2_combout\,
	combout => \PC0|CTR|alu_func[2]~19_combout\);

-- Location: LCCOMB_X62_Y40_N2
\PC0|CTR|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~3_combout\ = (!\PC0|CTR|state\(2) & ((\PC0|CTR|Mux27~1_combout\) # ((\PC0|CTR|Mux27~2_combout\ & \PC0|CTR|alu_func[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux27~2_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux27~1_combout\,
	datad => \PC0|CTR|alu_func[2]~19_combout\,
	combout => \PC0|CTR|Mux27~3_combout\);

-- Location: LCCOMB_X62_Y40_N20
\PC0|CTR|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux27~7_combout\ = (\PC0|CTR|Mux27~4_combout\) # ((\PC0|CTR|Mux27~3_combout\) # ((\PC0|CTR|Mux27~6_combout\ & \PC0|CTR|w_sp~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux27~6_combout\,
	datab => \PC0|CTR|Mux27~4_combout\,
	datac => \PC0|CTR|w_sp~q\,
	datad => \PC0|CTR|Mux27~3_combout\,
	combout => \PC0|CTR|Mux27~7_combout\);

-- Location: FF_X62_Y40_N21
\PC0|CTR|w_sp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux27~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_sp~q\);

-- Location: FF_X62_Y37_N29
\PC0|DATAPATH|reg_sp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_sp[0]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_sp~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_sp\(0));

-- Location: LCCOMB_X63_Y37_N24
\PC0|DATAPATH|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector11~0_combout\ = (!\PC0|CTR|add_mux\(1) & ((\PC0|CTR|add_mux\(0) & ((\PC0|DATAPATH|reg_oplo\(0)))) # (!\PC0|CTR|add_mux\(0) & (\PC0|DATAPATH|reg_pc\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_pc\(0),
	datab => \PC0|CTR|add_mux\(1),
	datac => \PC0|DATAPATH|reg_oplo\(0),
	datad => \PC0|CTR|add_mux\(0),
	combout => \PC0|DATAPATH|Selector11~0_combout\);

-- Location: LCCOMB_X63_Y37_N0
\PC0|DATAPATH|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Selector11~1_combout\ = (\PC0|DATAPATH|Selector11~0_combout\) # ((!\PC0|DATAPATH|reg_sp\(0) & \PC0|CTR|add_mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_sp\(0),
	datac => \PC0|DATAPATH|Selector11~0_combout\,
	datad => \PC0|CTR|add_mux\(1),
	combout => \PC0|DATAPATH|Selector11~1_combout\);

-- Location: LCCOMB_X62_Y38_N18
\d_in[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[0]~0_combout\ = (\PC0|CTR|ram_cs~q\ & (\RAM0|altsyncram_component|auto_generated|q_a\(0))) # (!\PC0|CTR|ram_cs~q\ & ((\ROM0|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|ram_cs~q\,
	datab => \RAM0|altsyncram_component|auto_generated|q_a\(0),
	datad => \ROM0|altsyncram_component|auto_generated|q_a\(0),
	combout => \d_in[0]~0_combout\);

-- Location: FF_X62_Y38_N13
\PC0|DATAPATH|reg_opl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[0]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(0));

-- Location: LCCOMB_X62_Y39_N30
\PC0|CTR|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~6_combout\ = (\PC0|CTR|flag_mux~0_combout\ & (\PC0|DATAPATH|reg_opl\(1) $ (((!\PC0|DATAPATH|reg_opl\(0) & !\PC0|DATAPATH|reg_opl\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(0),
	datab => \PC0|CTR|flag_mux~0_combout\,
	datac => \PC0|DATAPATH|reg_opl\(2),
	datad => \PC0|DATAPATH|reg_opl\(1),
	combout => \PC0|CTR|Mux20~6_combout\);

-- Location: LCCOMB_X62_Y39_N12
\PC0|CTR|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~1_combout\ = (\PC0|CTR|Equal6~0_combout\ & (!\PC0|CTR|always0~9_combout\ & (\PC0|CTR|Equal7~0_combout\ & !\PC0|CTR|always0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal6~0_combout\,
	datab => \PC0|CTR|always0~9_combout\,
	datac => \PC0|CTR|Equal7~0_combout\,
	datad => \PC0|CTR|always0~8_combout\,
	combout => \PC0|CTR|Mux20~1_combout\);

-- Location: LCCOMB_X62_Y39_N22
\PC0|CTR|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~2_combout\ = (\PC0|CTR|Mux20~1_combout\) # ((\PC0|CTR|always0~9_combout\ & ((\PC0|CTR|Mux20~0_combout\) # (!\PC0|DATAPATH|reg_opl\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(7),
	datab => \PC0|CTR|always0~9_combout\,
	datac => \PC0|CTR|Mux20~0_combout\,
	datad => \PC0|CTR|Mux20~1_combout\,
	combout => \PC0|CTR|Mux20~2_combout\);

-- Location: LCCOMB_X63_Y39_N26
\PC0|CTR|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~3_combout\ = ((\PC0|CTR|always0~6_combout\ & (\PC0|CTR|always0~2_combout\ & \PC0|CTR|always0~5_combout\))) # (!\PC0|CTR|always0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~7_combout\,
	datab => \PC0|CTR|always0~6_combout\,
	datac => \PC0|CTR|always0~2_combout\,
	datad => \PC0|CTR|always0~5_combout\,
	combout => \PC0|CTR|Mux20~3_combout\);

-- Location: LCCOMB_X62_Y39_N28
\PC0|CTR|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~4_combout\ = (\PC0|CTR|w_acc~q\) # ((\PC0|CTR|state\(1) & (\PC0|CTR|Mux20~2_combout\)) # (!\PC0|CTR|state\(1) & ((\PC0|CTR|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux20~2_combout\,
	datab => \PC0|CTR|w_acc~q\,
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|Mux20~3_combout\,
	combout => \PC0|CTR|Mux20~4_combout\);

-- Location: LCCOMB_X62_Y39_N10
\PC0|CTR|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~5_combout\ = (!\PC0|CTR|state\(2) & (\PC0|CTR|Mux20~4_combout\ & (\PC0|CTR|state\(0) $ (\PC0|CTR|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|Mux20~4_combout\,
	combout => \PC0|CTR|Mux20~5_combout\);

-- Location: LCCOMB_X62_Y39_N8
\PC0|CTR|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux20~7_combout\ = (\PC0|CTR|Mux20~5_combout\) # ((\PC0|CTR|Mux13~3_combout\ & ((\PC0|CTR|Mux20~6_combout\) # (\PC0|CTR|w_acc~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux20~6_combout\,
	datab => \PC0|CTR|Mux13~3_combout\,
	datac => \PC0|CTR|w_acc~q\,
	datad => \PC0|CTR|Mux20~5_combout\,
	combout => \PC0|CTR|Mux20~7_combout\);

-- Location: FF_X62_Y39_N9
\PC0|CTR|w_acc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux20~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_acc~q\);

-- Location: FF_X67_Y35_N23
\PC0|DATAPATH|reg_acc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|reg_acc[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_acc~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_acc\(2));

-- Location: LCCOMB_X66_Y35_N4
\PC0|DATAPATH|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux5~0_combout\ = (\PC0|CTR|alu_func\(1) & (\PC0|CTR|alu_func\(0))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|reg_acc\(2) $ (((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|reg_acc\(2),
	datad => \PC0|DATAPATH|Mux14~4_combout\,
	combout => \PC0|DATAPATH|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y35_N22
\PC0|DATAPATH|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux5~1_combout\ = (\PC0|DATAPATH|Mux5~0_combout\ & (((\PC0|DATAPATH|reg_acc\(1)) # (!\PC0|CTR|alu_func\(1))))) # (!\PC0|DATAPATH|Mux5~0_combout\ & (\PC0|DATAPATH|reg_acc\(3) & ((\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(3),
	datab => \PC0|DATAPATH|reg_acc\(1),
	datac => \PC0|DATAPATH|Mux5~0_combout\,
	datad => \PC0|CTR|alu_func\(1),
	combout => \PC0|DATAPATH|Mux5~1_combout\);

-- Location: LCCOMB_X66_Y35_N20
\PC0|DATAPATH|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux5~2_combout\ = (\PC0|CTR|alu_func\(0) & ((\PC0|CTR|alu_func\(1)) # ((\PC0|DATAPATH|Add4~4_combout\)))) # (!\PC0|CTR|alu_func\(0) & (!\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Add3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(0),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Add4~4_combout\,
	datad => \PC0|DATAPATH|Add3~4_combout\,
	combout => \PC0|DATAPATH|Mux5~2_combout\);

-- Location: LCCOMB_X66_Y35_N10
\PC0|DATAPATH|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux5~3_combout\ = (\PC0|DATAPATH|reg_acc\(2) & ((\PC0|DATAPATH|Mux5~2_combout\) # ((\PC0|DATAPATH|Mux14~4_combout\ & \PC0|CTR|alu_func\(1))))) # (!\PC0|DATAPATH|reg_acc\(2) & (\PC0|DATAPATH|Mux5~2_combout\ & ((\PC0|DATAPATH|Mux14~4_combout\) 
-- # (!\PC0|CTR|alu_func\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(2),
	datab => \PC0|DATAPATH|Mux14~4_combout\,
	datac => \PC0|CTR|alu_func\(1),
	datad => \PC0|DATAPATH|Mux5~2_combout\,
	combout => \PC0|DATAPATH|Mux5~3_combout\);

-- Location: LCCOMB_X66_Y35_N28
\PC0|DATAPATH|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux5~4_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux14~4_combout\) # ((\PC0|DATAPATH|Mux3~0_combout\)))) # (!\PC0|CTR|alu_func\(3) & (((!\PC0|DATAPATH|Mux3~0_combout\ & \PC0|DATAPATH|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(3),
	datab => \PC0|DATAPATH|Mux14~4_combout\,
	datac => \PC0|DATAPATH|Mux3~0_combout\,
	datad => \PC0|DATAPATH|Mux5~3_combout\,
	combout => \PC0|DATAPATH|Mux5~4_combout\);

-- Location: LCCOMB_X66_Y35_N6
\PC0|DATAPATH|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux5~5_combout\ = (\PC0|DATAPATH|Mux3~0_combout\ & ((\PC0|DATAPATH|Mux5~4_combout\ & (\PC0|DATAPATH|reg_acc\(2))) # (!\PC0|DATAPATH|Mux5~4_combout\ & ((\PC0|DATAPATH|Mux5~1_combout\))))) # (!\PC0|DATAPATH|Mux3~0_combout\ & 
-- (((\PC0|DATAPATH|Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(2),
	datab => \PC0|DATAPATH|Mux3~0_combout\,
	datac => \PC0|DATAPATH|Mux5~1_combout\,
	datad => \PC0|DATAPATH|Mux5~4_combout\,
	combout => \PC0|DATAPATH|Mux5~5_combout\);

-- Location: M9K_X64_Y35_N0
\RAM0|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM4KB:RAM0|altsyncram:altsyncram_component|altsyncram_9ug1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \PC0|CTR|mem_wr~q\,
	portare => VCC,
	clk0 => \PC0|state_clk[0]~clkctrl_outclk\,
	ena0 => \PC0|CTR|ram_cs~q\,
	clr0 => \sys_rst~input_o\,
	portadatain => \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y38_N0
\ROM0|altsyncram_component|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000E00E104E49384334408144144164144144164144154164145D",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	clk0_output_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "demo.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM4KB:ROM0|altsyncram:altsyncram_component|altsyncram_sd81:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "clear0",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \sys_clk~inputclkctrl_outclk\,
	ena0 => \comb~0_combout\,
	clr0 => \sys_rst~input_o\,
	portaaddr => \ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ROM0|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X63_Y38_N30
\d_in[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[2]~2_combout\ = (\PC0|CTR|ram_cs~q\ & (\RAM0|altsyncram_component|auto_generated|q_a\(2))) # (!\PC0|CTR|ram_cs~q\ & ((\ROM0|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM0|altsyncram_component|auto_generated|q_a\(2),
	datac => \PC0|CTR|ram_cs~q\,
	datad => \ROM0|altsyncram_component|auto_generated|q_a\(2),
	combout => \d_in[2]~2_combout\);

-- Location: FF_X62_Y38_N15
\PC0|DATAPATH|reg_opl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[2]~2_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(2));

-- Location: LCCOMB_X62_Y38_N2
\PC0|CTR|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal10~0_combout\ = (\PC0|DATAPATH|reg_opl\(2) & (\PC0|DATAPATH|reg_opl\(1) & \PC0|DATAPATH|reg_opl\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datab => \PC0|DATAPATH|reg_opl\(1),
	datad => \PC0|DATAPATH|reg_opl\(0),
	combout => \PC0|CTR|Equal10~0_combout\);

-- Location: LCCOMB_X66_Y39_N26
\PC0|CTR|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|always0~0_combout\ = (\PC0|CTR|Equal10~0_combout\) # ((\PC0|DATAPATH|reg_opl\(4)) # (!\PC0|CTR|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal10~0_combout\,
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|always0~0_combout\);

-- Location: LCCOMB_X66_Y39_N4
\PC0|CTR|alu_func~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~5_combout\ = (\PC0|CTR|always0~0_combout\ & ((\PC0|DATAPATH|reg_opl\(3)) # (!\PC0|CTR|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|CTR|always0~0_combout\,
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|alu_func~5_combout\);

-- Location: LCCOMB_X62_Y36_N2
\PC0|CTR|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux10~1_combout\ = (\PC0|CTR|ram_cs~q\) # ((\PC0|CTR|state\(1) & ((\PC0|CTR|ram_cs~0_combout\))) # (!\PC0|CTR|state\(1) & (\PC0|CTR|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal2~6_combout\,
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|ram_cs~q\,
	datad => \PC0|CTR|ram_cs~0_combout\,
	combout => \PC0|CTR|Mux10~1_combout\);

-- Location: LCCOMB_X62_Y36_N0
\PC0|CTR|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux10~2_combout\ = (!\PC0|CTR|state\(2) & (\PC0|CTR|Mux10~1_combout\ & (\PC0|CTR|state\(0) $ (\PC0|CTR|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|Mux10~1_combout\,
	combout => \PC0|CTR|Mux10~2_combout\);

-- Location: LCCOMB_X62_Y36_N4
\PC0|CTR|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux10~3_combout\ = (\PC0|CTR|Mux10~2_combout\) # ((\PC0|CTR|Mux13~3_combout\ & ((\PC0|CTR|ram_cs~q\) # (!\PC0|CTR|alu_func~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux13~3_combout\,
	datab => \PC0|CTR|alu_func~5_combout\,
	datac => \PC0|CTR|ram_cs~q\,
	datad => \PC0|CTR|Mux10~2_combout\,
	combout => \PC0|CTR|Mux10~3_combout\);

-- Location: FF_X62_Y36_N5
\PC0|CTR|ram_cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux10~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|ram_cs~q\);

-- Location: LCCOMB_X62_Y38_N26
\d_in[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[6]~6_combout\ = (\PC0|CTR|ram_cs~q\ & ((\RAM0|altsyncram_component|auto_generated|q_a\(6)))) # (!\PC0|CTR|ram_cs~q\ & (\ROM0|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|ram_cs~q\,
	datac => \ROM0|altsyncram_component|auto_generated|q_a\(6),
	datad => \RAM0|altsyncram_component|auto_generated|q_a\(6),
	combout => \d_in[6]~6_combout\);

-- Location: FF_X62_Y38_N5
\PC0|DATAPATH|reg_opl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[6]~6_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(6));

-- Location: LCCOMB_X61_Y39_N0
\PC0|CTR|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal2~4_combout\ = (\PC0|DATAPATH|reg_opl\(6) & (\PC0|DATAPATH|reg_opl\(5) & !\PC0|DATAPATH|reg_opl\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|reg_opl\(6),
	datac => \PC0|DATAPATH|reg_opl\(5),
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|Equal2~4_combout\);

-- Location: LCCOMB_X61_Y39_N28
\PC0|CTR|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal2~6_combout\ = (!\PC0|DATAPATH|reg_opl\(3) & (\PC0|DATAPATH|reg_opl\(4) & \PC0|CTR|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|Equal2~6_combout\);

-- Location: LCCOMB_X62_Y39_N20
\PC0|CTR|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux18~0_combout\ = (\PC0|CTR|state\(2) & ((\PC0|CTR|always0~0_combout\ & (!\PC0|DATAPATH|reg_opl\(3) & \PC0|CTR|Equal8~1_combout\)) # (!\PC0|CTR|always0~0_combout\ & (\PC0|DATAPATH|reg_opl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~0_combout\,
	datab => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|CTR|state\(2),
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|Mux18~0_combout\);

-- Location: LCCOMB_X62_Y39_N26
\PC0|CTR|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux18~1_combout\ = (\PC0|CTR|mem_wr~q\) # ((\PC0|CTR|Mux18~0_combout\) # ((!\PC0|CTR|state\(2) & \PC0|CTR|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|Equal2~6_combout\,
	datac => \PC0|CTR|mem_wr~q\,
	datad => \PC0|CTR|Mux18~0_combout\,
	combout => \PC0|CTR|Mux18~1_combout\);

-- Location: LCCOMB_X61_Y39_N30
\PC0|CTR|mem_wr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|mem_wr~0_combout\ = (!\PC0|CTR|state\(1) & ((!\PC0|CTR|state\(2)) # (!\PC0|CTR|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|state\(2),
	combout => \PC0|CTR|mem_wr~0_combout\);

-- Location: LCCOMB_X62_Y39_N14
\PC0|CTR|mem_wr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|mem_wr~1_combout\ = (\PC0|CTR|mem_wr~0_combout\ & (\PC0|CTR|Mux18~1_combout\ & ((\PC0|CTR|Mux1~1_combout\)))) # (!\PC0|CTR|mem_wr~0_combout\ & (((\PC0|CTR|mem_wr~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux18~1_combout\,
	datab => \PC0|CTR|mem_wr~0_combout\,
	datac => \PC0|CTR|mem_wr~q\,
	datad => \PC0|CTR|Mux1~1_combout\,
	combout => \PC0|CTR|mem_wr~1_combout\);

-- Location: FF_X62_Y39_N15
\PC0|CTR|mem_wr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|mem_wr~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|mem_wr~q\);

-- Location: LCCOMB_X63_Y37_N10
\d_in[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[4]~4_combout\ = (\PC0|CTR|ram_cs~q\ & (\RAM0|altsyncram_component|auto_generated|q_a\(4))) # (!\PC0|CTR|ram_cs~q\ & ((\ROM0|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM0|altsyncram_component|auto_generated|q_a\(4),
	datac => \PC0|CTR|ram_cs~q\,
	datad => \ROM0|altsyncram_component|auto_generated|q_a\(4),
	combout => \d_in[4]~4_combout\);

-- Location: FF_X62_Y38_N3
\PC0|DATAPATH|reg_opl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[4]~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(4));

-- Location: LCCOMB_X61_Y39_N14
\PC0|CTR|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal6~0_combout\ = (\PC0|DATAPATH|reg_opl\(3) & (\PC0|DATAPATH|reg_opl\(4) & \PC0|CTR|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datac => \PC0|DATAPATH|reg_opl\(4),
	datad => \PC0|CTR|Equal2~4_combout\,
	combout => \PC0|CTR|Equal6~0_combout\);

-- Location: LCCOMB_X61_Y39_N26
\PC0|CTR|ram_cs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|ram_cs~0_combout\ = (!\PC0|CTR|w_pc~1_combout\ & ((\PC0|CTR|Equal6~0_combout\) # ((\PC0|DATAPATH|reg_opl\(3) & \PC0|CTR|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|CTR|Equal6~0_combout\,
	datac => \PC0|CTR|w_pc~1_combout\,
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|ram_cs~0_combout\);

-- Location: LCCOMB_X65_Y38_N16
\PC0|CTR|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux8~0_combout\ = (!\PC0|CTR|state\(0) & !\PC0|CTR|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datac => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux8~0_combout\);

-- Location: LCCOMB_X65_Y38_N14
\PC0|CTR|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux8~1_combout\ = (\PC0|CTR|Mux8~0_combout\ & (((\PC0|CTR|rom_cs~q\) # (!\PC0|CTR|state\(1))) # (!\PC0|CTR|ram_cs~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|ram_cs~0_combout\,
	datab => \PC0|CTR|Mux8~0_combout\,
	datac => \PC0|CTR|rom_cs~q\,
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux8~1_combout\);

-- Location: FF_X65_Y38_N15
\PC0|CTR|rom_cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux8~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|rom_cs~q\);

-- Location: LCCOMB_X65_Y38_N28
\PC0|CTR|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux19~0_combout\ = ((!\PC0|CTR|state\(1) & ((\PC0|CTR|flag_mux~0_combout\) # (\PC0|CTR|mem_rd~q\)))) # (!\PC0|CTR|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|flag_mux~0_combout\,
	datac => \PC0|CTR|mem_rd~q\,
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux19~0_combout\);

-- Location: FF_X65_Y38_N29
\PC0|CTR|mem_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux19~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sclr => \PC0|CTR|state\(0),
	ena => \PC0|CTR|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|mem_rd~q\);

-- Location: LCCOMB_X65_Y38_N0
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\PC0|CTR|rom_cs~q\ & \PC0|CTR|mem_rd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|CTR|rom_cs~q\,
	datad => \PC0|CTR|mem_rd~q\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X62_Y38_N28
\d_in[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d_in[3]~3_combout\ = (\PC0|CTR|ram_cs~q\ & ((\RAM0|altsyncram_component|auto_generated|q_a\(3)))) # (!\PC0|CTR|ram_cs~q\ & (\ROM0|altsyncram_component|auto_generated|q_a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ROM0|altsyncram_component|auto_generated|q_a\(3),
	datac => \PC0|CTR|ram_cs~q\,
	datad => \RAM0|altsyncram_component|auto_generated|q_a\(3),
	combout => \d_in[3]~3_combout\);

-- Location: FF_X62_Y38_N19
\PC0|DATAPATH|reg_opl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[1]~clkctrl_outclk\,
	asdata => \d_in[3]~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_opl~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|reg_opl\(3));

-- Location: LCCOMB_X61_Y37_N8
\PC0|CTR|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Equal11~0_combout\ = (\PC0|DATAPATH|reg_opl\(3)) # (!\PC0|CTR|Equal8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|reg_opl\(3),
	datad => \PC0|CTR|Equal8~1_combout\,
	combout => \PC0|CTR|Equal11~0_combout\);

-- Location: LCCOMB_X61_Y37_N10
\PC0|CTR|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux7~2_combout\ = (\PC0|CTR|state\(2) & (!\PC0|CTR|Equal11~0_combout\ & ((!\PC0|CTR|state\(1))))) # (!\PC0|CTR|state\(2) & (((\PC0|CTR|Mux7~4_combout\) # (!\PC0|CTR|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|Equal11~0_combout\,
	datac => \PC0|CTR|Mux7~4_combout\,
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux7~2_combout\);

-- Location: LCCOMB_X61_Y37_N6
\PC0|CTR|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux7~3_combout\ = (\PC0|CTR|state\(0) & (((\PC0|CTR|state\(2) & \PC0|CTR|state\(1))))) # (!\PC0|CTR|state\(0) & (\PC0|CTR|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux7~2_combout\,
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|state\(0),
	datad => \PC0|CTR|state\(1),
	combout => \PC0|CTR|Mux7~3_combout\);

-- Location: FF_X61_Y37_N7
\PC0|CTR|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux7~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|state\(0));

-- Location: LCCOMB_X61_Y37_N22
\PC0|CTR|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux6~0_combout\ = (\PC0|CTR|state\(1) & ((\PC0|CTR|state\(2)) # ((!\PC0|CTR|state\(0) & \PC0|CTR|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(1),
	datac => \PC0|CTR|Mux7~4_combout\,
	datad => \PC0|CTR|state\(2),
	combout => \PC0|CTR|Mux6~0_combout\);

-- Location: LCCOMB_X61_Y37_N16
\PC0|CTR|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux6~1_combout\ = (\PC0|CTR|Mux6~0_combout\) # ((\PC0|CTR|state\(0) & (!\PC0|CTR|state\(2) & \PC0|CTR|Mux28~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(0),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|Mux6~0_combout\,
	datad => \PC0|CTR|Mux28~12_combout\,
	combout => \PC0|CTR|Mux6~1_combout\);

-- Location: FF_X61_Y37_N17
\PC0|CTR|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux6~1_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|state\(1));

-- Location: LCCOMB_X65_Y39_N8
\PC0|CTR|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux5~2_combout\ = (\PC0|CTR|state\(2) & ((\PC0|CTR|state\(1)) # ((!\PC0|CTR|state\(0) & \PC0|CTR|always0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(2),
	datac => \PC0|CTR|state\(0),
	datad => \PC0|CTR|always0~0_combout\,
	combout => \PC0|CTR|Mux5~2_combout\);

-- Location: LCCOMB_X65_Y39_N2
\PC0|CTR|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux5~3_combout\ = (\PC0|CTR|Mux5~2_combout\) # ((\PC0|CTR|state\(1) & (\PC0|CTR|state\(0) & \PC0|CTR|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|Mux5~2_combout\,
	datad => \PC0|CTR|Mux5~0_combout\,
	combout => \PC0|CTR|Mux5~3_combout\);

-- Location: FF_X65_Y39_N3
\PC0|CTR|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux5~3_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|state\(2));

-- Location: LCCOMB_X66_Y35_N30
\PC0|CTR|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~2_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|CTR|state\(2)) # ((\PC0|CTR|state\(1) & \PC0|CTR|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|alu_func\(3),
	datac => \PC0|CTR|state\(1),
	datad => \PC0|CTR|state\(0),
	combout => \PC0|CTR|Mux13~2_combout\);

-- Location: LCCOMB_X66_Y35_N8
\PC0|CTR|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~4_combout\ = (\PC0|CTR|Mux13~2_combout\) # ((!\PC0|CTR|alu_func~5_combout\ & \PC0|CTR|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux13~2_combout\,
	datac => \PC0|CTR|alu_func~5_combout\,
	datad => \PC0|CTR|Mux13~3_combout\,
	combout => \PC0|CTR|Mux13~4_combout\);

-- Location: LCCOMB_X62_Y38_N4
\PC0|CTR|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~5_combout\ = ((\PC0|DATAPATH|reg_opl\(7)) # ((!\PC0|CTR|Mux20~0_combout\ & \PC0|DATAPATH|reg_opl\(6)))) # (!\PC0|CTR|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Equal10~0_combout\,
	datab => \PC0|CTR|Mux20~0_combout\,
	datac => \PC0|DATAPATH|reg_opl\(6),
	datad => \PC0|DATAPATH|reg_opl\(7),
	combout => \PC0|CTR|Mux13~5_combout\);

-- Location: LCCOMB_X66_Y35_N14
\PC0|CTR|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~6_combout\ = (\PC0|CTR|state\(1) & ((\PC0|CTR|state\(0) & ((!\PC0|CTR|Mux5~0_combout\))) # (!\PC0|CTR|state\(0) & (\PC0|CTR|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|Mux13~5_combout\,
	datad => \PC0|CTR|Mux5~0_combout\,
	combout => \PC0|CTR|Mux13~6_combout\);

-- Location: LCCOMB_X66_Y35_N24
\PC0|CTR|alu_func~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|alu_func~6_combout\ = (\PC0|CTR|always0~3_combout\) # ((\PC0|CTR|alu_func\(3)) # ((\PC0|CTR|Equal2~6_combout\) # (!\PC0|CTR|always0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|always0~3_combout\,
	datab => \PC0|CTR|alu_func\(3),
	datac => \PC0|CTR|Equal2~6_combout\,
	datad => \PC0|CTR|always0~4_combout\,
	combout => \PC0|CTR|alu_func~6_combout\);

-- Location: LCCOMB_X66_Y35_N16
\PC0|CTR|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~8_combout\ = (!\PC0|CTR|state\(1) & (\PC0|CTR|state\(0) & (!\PC0|CTR|alu_func~7_combout\ & \PC0|CTR|alu_func~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(1),
	datab => \PC0|CTR|state\(0),
	datac => \PC0|CTR|alu_func~7_combout\,
	datad => \PC0|CTR|alu_func~6_combout\,
	combout => \PC0|CTR|Mux13~8_combout\);

-- Location: LCCOMB_X66_Y35_N2
\PC0|CTR|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux13~7_combout\ = (\PC0|CTR|Mux13~4_combout\) # ((!\PC0|CTR|state\(2) & ((\PC0|CTR|Mux13~6_combout\) # (\PC0|CTR|Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|state\(2),
	datab => \PC0|CTR|Mux13~4_combout\,
	datac => \PC0|CTR|Mux13~6_combout\,
	datad => \PC0|CTR|Mux13~8_combout\,
	combout => \PC0|CTR|Mux13~7_combout\);

-- Location: FF_X66_Y35_N3
\PC0|CTR|alu_func[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|Mux13~7_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|alu_func\(3));

-- Location: LCCOMB_X65_Y37_N8
\PC0|DATAPATH|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~1_combout\ = (\PC0|CTR|alu_func\(3) & ((\PC0|DATAPATH|Mux7~0_combout\ & (\PC0|DATAPATH|reg_acc\(0))) # (!\PC0|DATAPATH|Mux7~0_combout\ & ((\PC0|DATAPATH|Mux16~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(0),
	datab => \PC0|CTR|alu_func\(3),
	datac => \PC0|DATAPATH|Mux7~0_combout\,
	datad => \PC0|DATAPATH|Mux16~5_combout\,
	combout => \PC0|DATAPATH|Mux7~1_combout\);

-- Location: LCCOMB_X65_Y37_N30
\PC0|DATAPATH|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~3_combout\ = (\PC0|CTR|alu_func\(0) & (\PC0|DATAPATH|Add4~0_combout\)) # (!\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|DATAPATH|Add4~0_combout\,
	datac => \PC0|CTR|alu_func\(0),
	datad => \PC0|DATAPATH|Add3~0_combout\,
	combout => \PC0|DATAPATH|Mux7~3_combout\);

-- Location: LCCOMB_X65_Y37_N0
\PC0|DATAPATH|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~2_combout\ = (\PC0|DATAPATH|reg_acc\(0) & ((\PC0|CTR|alu_func\(0)) # (\PC0|DATAPATH|Mux16~5_combout\))) # (!\PC0|DATAPATH|reg_acc\(0) & (\PC0|CTR|alu_func\(0) & \PC0|DATAPATH|Mux16~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_acc\(0),
	datab => \PC0|CTR|alu_func\(0),
	datad => \PC0|DATAPATH|Mux16~5_combout\,
	combout => \PC0|DATAPATH|Mux7~2_combout\);

-- Location: LCCOMB_X65_Y37_N28
\PC0|DATAPATH|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~4_combout\ = (\PC0|CTR|alu_func\(2) & (\PC0|CTR|alu_func\(1))) # (!\PC0|CTR|alu_func\(2) & ((\PC0|CTR|alu_func\(1) & ((\PC0|DATAPATH|Mux7~2_combout\))) # (!\PC0|CTR|alu_func\(1) & (\PC0|DATAPATH|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(2),
	datab => \PC0|CTR|alu_func\(1),
	datac => \PC0|DATAPATH|Mux7~3_combout\,
	datad => \PC0|DATAPATH|Mux7~2_combout\,
	combout => \PC0|DATAPATH|Mux7~4_combout\);

-- Location: LCCOMB_X65_Y37_N12
\PC0|DATAPATH|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~8_combout\ = (\PC0|CTR|alu_func\(0) & (((!\PC0|DATAPATH|reg_acc\(0) & !\PC0|DATAPATH|Mux7~4_combout\)))) # (!\PC0|CTR|alu_func\(0) & ((\PC0|DATAPATH|Add3~0_combout\) # ((\PC0|DATAPATH|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|Add3~0_combout\,
	datab => \PC0|DATAPATH|reg_acc\(0),
	datac => \PC0|CTR|alu_func\(0),
	datad => \PC0|DATAPATH|Mux7~4_combout\,
	combout => \PC0|DATAPATH|Mux7~8_combout\);

-- Location: LCCOMB_X65_Y37_N10
\PC0|DATAPATH|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~9_combout\ = (\PC0|CTR|alu_func\(2) & (\PC0|DATAPATH|Mux7~8_combout\ & ((\PC0|DATAPATH|reg_acc\(1)) # (!\PC0|DATAPATH|Mux7~4_combout\)))) # (!\PC0|CTR|alu_func\(2) & (\PC0|DATAPATH|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|alu_func\(2),
	datab => \PC0|DATAPATH|Mux7~4_combout\,
	datac => \PC0|DATAPATH|reg_acc\(1),
	datad => \PC0|DATAPATH|Mux7~8_combout\,
	combout => \PC0|DATAPATH|Mux7~9_combout\);

-- Location: LCCOMB_X65_Y37_N4
\PC0|DATAPATH|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|Mux7~5_combout\ = (\PC0|DATAPATH|Mux7~1_combout\) # ((!\PC0|CTR|alu_func\(3) & \PC0|DATAPATH|Mux7~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|alu_func\(3),
	datac => \PC0|DATAPATH|Mux7~1_combout\,
	datad => \PC0|DATAPATH|Mux7~9_combout\,
	combout => \PC0|DATAPATH|Mux7~5_combout\);

-- Location: LCCOMB_X67_Y39_N24
\PC0|CTR|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux21~0_combout\ = (!\PC0|DATAPATH|reg_opl\(3) & (\PC0|DATAPATH|reg_opl\(0) & (!\PC0|DATAPATH|reg_opl\(1) & \PC0|DATAPATH|reg_opl\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(3),
	datab => \PC0|DATAPATH|reg_opl\(0),
	datac => \PC0|DATAPATH|reg_opl\(1),
	datad => \PC0|DATAPATH|reg_opl\(2),
	combout => \PC0|CTR|Mux21~0_combout\);

-- Location: LCCOMB_X67_Y39_N30
\PC0|CTR|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|Mux21~1_combout\ = (\PC0|CTR|state\(2) & ((\PC0|CTR|w_p~q\) # (\PC0|CTR|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PC0|CTR|w_p~q\,
	datac => \PC0|CTR|state\(2),
	datad => \PC0|CTR|Mux21~0_combout\,
	combout => \PC0|CTR|Mux21~1_combout\);

-- Location: LCCOMB_X67_Y39_N18
\PC0|CTR|w_p~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_p~1_combout\ = (\PC0|CTR|w_p~q\) # ((\PC0|DATAPATH|reg_opl\(2) & (!\PC0|CTR|always0~4_combout\ & \PC0|CTR|w_ax~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(2),
	datab => \PC0|CTR|w_p~q\,
	datac => \PC0|CTR|always0~4_combout\,
	datad => \PC0|CTR|w_ax~3_combout\,
	combout => \PC0|CTR|w_p~1_combout\);

-- Location: LCCOMB_X67_Y39_N28
\PC0|CTR|w_p~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_p~0_combout\ = (\PC0|CTR|Mux21~2_combout\ & ((\PC0|CTR|w_p~1_combout\))) # (!\PC0|CTR|Mux21~2_combout\ & (\PC0|CTR|Mux21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|Mux21~1_combout\,
	datab => \PC0|CTR|Mux21~2_combout\,
	datad => \PC0|CTR|w_p~1_combout\,
	combout => \PC0|CTR|w_p~0_combout\);

-- Location: LCCOMB_X67_Y39_N12
\PC0|CTR|w_p~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_p~2_combout\ = (\PC0|DATAPATH|reg_opl\(1) & ((\PC0|DATAPATH|reg_opl\(0)) # (\PC0|DATAPATH|reg_opl\(2)))) # (!\PC0|DATAPATH|reg_opl\(1) & (\PC0|DATAPATH|reg_opl\(0) & \PC0|DATAPATH|reg_opl\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|DATAPATH|reg_opl\(1),
	datac => \PC0|DATAPATH|reg_opl\(0),
	datad => \PC0|DATAPATH|reg_opl\(2),
	combout => \PC0|CTR|w_p~2_combout\);

-- Location: LCCOMB_X67_Y39_N26
\PC0|CTR|w_p~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_p~3_combout\ = (\PC0|CTR|w_p~2_combout\ & (\PC0|CTR|Equal6~0_combout\ & ((!\PC0|CTR|always0~9_combout\) # (!\PC0|DATAPATH|reg_opl\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_p~2_combout\,
	datab => \PC0|DATAPATH|reg_opl\(7),
	datac => \PC0|CTR|Equal6~0_combout\,
	datad => \PC0|CTR|always0~9_combout\,
	combout => \PC0|CTR|w_p~3_combout\);

-- Location: LCCOMB_X67_Y39_N8
\PC0|CTR|w_p~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|CTR|w_p~4_combout\ = (\PC0|CTR|w_p~3_combout\) # ((\PC0|CTR|w_p~q\) # ((\PC0|CTR|w_ax~7_combout\ & \PC0|DATAPATH|reg_opl\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PC0|CTR|w_ax~7_combout\,
	datab => \PC0|DATAPATH|reg_opl\(5),
	datac => \PC0|CTR|w_p~3_combout\,
	datad => \PC0|CTR|w_p~q\,
	combout => \PC0|CTR|w_p~4_combout\);

-- Location: FF_X67_Y39_N29
\PC0|CTR|w_p\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|CTR|w_p~0_combout\,
	asdata => \PC0|CTR|w_p~4_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => \PC0|CTR|state\(1),
	ena => \PC0|CTR|Mux25~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|CTR|w_p~q\);

-- Location: FF_X65_Y37_N5
\PC0|DATAPATH|p_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|Mux7~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(0));

-- Location: FF_X65_Y37_N15
\PC0|DATAPATH|p_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|Mux6~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(1));

-- Location: LCCOMB_X67_Y35_N16
\PC0|DATAPATH|p_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|p_out[2]~feeder_combout\ = \PC0|DATAPATH|Mux5~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux5~5_combout\,
	combout => \PC0|DATAPATH|p_out[2]~feeder_combout\);

-- Location: FF_X67_Y35_N17
\PC0|DATAPATH|p_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|p_out[2]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(2));

-- Location: LCCOMB_X67_Y35_N10
\PC0|DATAPATH|p_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|p_out[3]~feeder_combout\ = \PC0|DATAPATH|Mux4~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|Mux4~5_combout\,
	combout => \PC0|DATAPATH|p_out[3]~feeder_combout\);

-- Location: FF_X67_Y35_N11
\PC0|DATAPATH|p_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|p_out[3]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(3));

-- Location: LCCOMB_X68_Y36_N28
\PC0|DATAPATH|p_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|p_out[4]~feeder_combout\ = \PC0|DATAPATH|Mux3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux3~6_combout\,
	combout => \PC0|DATAPATH|p_out[4]~feeder_combout\);

-- Location: FF_X68_Y36_N29
\PC0|DATAPATH|p_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|p_out[4]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(4));

-- Location: LCCOMB_X67_Y35_N24
\PC0|DATAPATH|p_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|p_out[5]~feeder_combout\ = \PC0|DATAPATH|Mux2~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PC0|DATAPATH|Mux2~5_combout\,
	combout => \PC0|DATAPATH|p_out[5]~feeder_combout\);

-- Location: FF_X67_Y35_N25
\PC0|DATAPATH|p_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|p_out[5]~feeder_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(5));

-- Location: FF_X66_Y36_N15
\PC0|DATAPATH|p_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	asdata => \PC0|DATAPATH|Mux1~5_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	sload => VCC,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(6));

-- Location: LCCOMB_X68_Y36_N26
\PC0|DATAPATH|p_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PC0|DATAPATH|p_out[7]~0_combout\ = !\PC0|DATAPATH|Mux0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PC0|DATAPATH|Mux0~2_combout\,
	combout => \PC0|DATAPATH|p_out[7]~0_combout\);

-- Location: FF_X68_Y36_N27
\PC0|DATAPATH|p_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \PC0|state_clk[2]~clkctrl_outclk\,
	d => \PC0|DATAPATH|p_out[7]~0_combout\,
	clrn => \ALT_INV_sys_rst~input_o\,
	ena => \PC0|CTR|w_p~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC0|DATAPATH|p_out\(7));

ww_p_out(0) <= \p_out[0]~output_o\;

ww_p_out(1) <= \p_out[1]~output_o\;

ww_p_out(2) <= \p_out[2]~output_o\;

ww_p_out(3) <= \p_out[3]~output_o\;

ww_p_out(4) <= \p_out[4]~output_o\;

ww_p_out(5) <= \p_out[5]~output_o\;

ww_p_out(6) <= \p_out[6]~output_o\;

ww_p_out(7) <= \p_out[7]~output_o\;
END structure;


