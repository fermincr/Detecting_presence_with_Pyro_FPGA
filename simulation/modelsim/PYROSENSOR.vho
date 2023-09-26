-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "06/16/2023 22:51:34"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PYROSENSOR IS
    PORT (
	clk_50MHz : IN std_logic;
	clk : BUFFER std_logic;
	pyro : IN std_logic;
	light : BUFFER std_logic
	);
END PYROSENSOR;

-- Design Ports Information
-- clk	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- light	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pyro	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PYROSENSOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50MHz : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pyro : std_logic;
SIGNAL ww_light : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk~output_o\ : std_logic;
SIGNAL \light~output_o\ : std_logic;
SIGNAL \clk_50MHz~input_o\ : std_logic;
SIGNAL \clk_50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~25_combout\ : std_logic;
SIGNAL \counter[0]~26\ : std_logic;
SIGNAL \counter[1]~27_combout\ : std_logic;
SIGNAL \counter[1]~28\ : std_logic;
SIGNAL \counter[2]~29_combout\ : std_logic;
SIGNAL \counter[2]~30\ : std_logic;
SIGNAL \counter[3]~31_combout\ : std_logic;
SIGNAL \counter[3]~32\ : std_logic;
SIGNAL \counter[4]~33_combout\ : std_logic;
SIGNAL \counter[4]~34\ : std_logic;
SIGNAL \counter[5]~35_combout\ : std_logic;
SIGNAL \counter[5]~36\ : std_logic;
SIGNAL \counter[6]~37_combout\ : std_logic;
SIGNAL \counter[6]~38\ : std_logic;
SIGNAL \counter[7]~39_combout\ : std_logic;
SIGNAL \counter[7]~40\ : std_logic;
SIGNAL \counter[8]~41_combout\ : std_logic;
SIGNAL \counter[8]~42\ : std_logic;
SIGNAL \counter[9]~43_combout\ : std_logic;
SIGNAL \counter[9]~44\ : std_logic;
SIGNAL \counter[10]~45_combout\ : std_logic;
SIGNAL \counter[10]~46\ : std_logic;
SIGNAL \counter[11]~47_combout\ : std_logic;
SIGNAL \counter[11]~48\ : std_logic;
SIGNAL \counter[12]~49_combout\ : std_logic;
SIGNAL \counter[12]~50\ : std_logic;
SIGNAL \counter[13]~51_combout\ : std_logic;
SIGNAL \counter[13]~52\ : std_logic;
SIGNAL \counter[14]~53_combout\ : std_logic;
SIGNAL \counter[14]~54\ : std_logic;
SIGNAL \counter[15]~55_combout\ : std_logic;
SIGNAL \counter[15]~56\ : std_logic;
SIGNAL \counter[16]~57_combout\ : std_logic;
SIGNAL \counter[16]~58\ : std_logic;
SIGNAL \counter[17]~59_combout\ : std_logic;
SIGNAL \counter[17]~60\ : std_logic;
SIGNAL \counter[18]~61_combout\ : std_logic;
SIGNAL \counter[18]~62\ : std_logic;
SIGNAL \counter[19]~63_combout\ : std_logic;
SIGNAL \counter[19]~64\ : std_logic;
SIGNAL \counter[20]~65_combout\ : std_logic;
SIGNAL \counter[20]~66\ : std_logic;
SIGNAL \counter[21]~67_combout\ : std_logic;
SIGNAL \counter[21]~68\ : std_logic;
SIGNAL \counter[22]~69_combout\ : std_logic;
SIGNAL \counter[22]~70\ : std_logic;
SIGNAL \counter[23]~71_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \counter[23]~72\ : std_logic;
SIGNAL \counter[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \clk_state~0_combout\ : std_logic;
SIGNAL \clk_state~q\ : std_logic;
SIGNAL \pyro~input_o\ : std_logic;
SIGNAL counter : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_50MHz <= clk_50MHz;
clk <= ww_clk;
ww_pyro <= pyro;
light <= ww_light;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50MHz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\clk~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_state~q\,
	devoe => ww_devoe,
	o => \clk~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\light~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pyro~input_o\,
	devoe => ww_devoe,
	o => \light~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk_50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50MHz,
	o => \clk_50MHz~input_o\);

-- Location: CLKCTRL_G19
\clk_50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X30_Y30_N8
\counter[0]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[0]~25_combout\ = counter(0) $ (VCC)
-- \counter[0]~26\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~25_combout\,
	cout => \counter[0]~26\);

-- Location: FF_X30_Y30_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[0]~25_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X30_Y30_N10
\counter[1]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[1]~27_combout\ = (counter(1) & (!\counter[0]~26\)) # (!counter(1) & ((\counter[0]~26\) # (GND)))
-- \counter[1]~28\ = CARRY((!\counter[0]~26\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~26\,
	combout => \counter[1]~27_combout\,
	cout => \counter[1]~28\);

-- Location: FF_X30_Y30_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[1]~27_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X30_Y30_N12
\counter[2]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[2]~29_combout\ = (counter(2) & (\counter[1]~28\ $ (GND))) # (!counter(2) & (!\counter[1]~28\ & VCC))
-- \counter[2]~30\ = CARRY((counter(2) & !\counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~28\,
	combout => \counter[2]~29_combout\,
	cout => \counter[2]~30\);

-- Location: FF_X30_Y30_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[2]~29_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X30_Y30_N14
\counter[3]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[3]~31_combout\ = (counter(3) & (!\counter[2]~30\)) # (!counter(3) & ((\counter[2]~30\) # (GND)))
-- \counter[3]~32\ = CARRY((!\counter[2]~30\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~30\,
	combout => \counter[3]~31_combout\,
	cout => \counter[3]~32\);

-- Location: FF_X30_Y30_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[3]~31_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X30_Y30_N16
\counter[4]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[4]~33_combout\ = (counter(4) & (\counter[3]~32\ $ (GND))) # (!counter(4) & (!\counter[3]~32\ & VCC))
-- \counter[4]~34\ = CARRY((counter(4) & !\counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~32\,
	combout => \counter[4]~33_combout\,
	cout => \counter[4]~34\);

-- Location: FF_X30_Y30_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[4]~33_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X30_Y30_N18
\counter[5]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[5]~35_combout\ = (counter(5) & (!\counter[4]~34\)) # (!counter(5) & ((\counter[4]~34\) # (GND)))
-- \counter[5]~36\ = CARRY((!\counter[4]~34\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~34\,
	combout => \counter[5]~35_combout\,
	cout => \counter[5]~36\);

-- Location: FF_X30_Y30_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[5]~35_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X30_Y30_N20
\counter[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[6]~37_combout\ = (counter(6) & (\counter[5]~36\ $ (GND))) # (!counter(6) & (!\counter[5]~36\ & VCC))
-- \counter[6]~38\ = CARRY((counter(6) & !\counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~36\,
	combout => \counter[6]~37_combout\,
	cout => \counter[6]~38\);

-- Location: FF_X30_Y30_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[6]~37_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X30_Y30_N22
\counter[7]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[7]~39_combout\ = (counter(7) & (!\counter[6]~38\)) # (!counter(7) & ((\counter[6]~38\) # (GND)))
-- \counter[7]~40\ = CARRY((!\counter[6]~38\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~38\,
	combout => \counter[7]~39_combout\,
	cout => \counter[7]~40\);

-- Location: FF_X30_Y30_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[7]~39_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X30_Y30_N24
\counter[8]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[8]~41_combout\ = (counter(8) & (\counter[7]~40\ $ (GND))) # (!counter(8) & (!\counter[7]~40\ & VCC))
-- \counter[8]~42\ = CARRY((counter(8) & !\counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~40\,
	combout => \counter[8]~41_combout\,
	cout => \counter[8]~42\);

-- Location: FF_X30_Y30_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[8]~41_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X30_Y30_N26
\counter[9]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[9]~43_combout\ = (counter(9) & (!\counter[8]~42\)) # (!counter(9) & ((\counter[8]~42\) # (GND)))
-- \counter[9]~44\ = CARRY((!\counter[8]~42\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~42\,
	combout => \counter[9]~43_combout\,
	cout => \counter[9]~44\);

-- Location: FF_X30_Y30_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[9]~43_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X30_Y30_N28
\counter[10]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[10]~45_combout\ = (counter(10) & (\counter[9]~44\ $ (GND))) # (!counter(10) & (!\counter[9]~44\ & VCC))
-- \counter[10]~46\ = CARRY((counter(10) & !\counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~44\,
	combout => \counter[10]~45_combout\,
	cout => \counter[10]~46\);

-- Location: FF_X30_Y30_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[10]~45_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X30_Y30_N30
\counter[11]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[11]~47_combout\ = (counter(11) & (!\counter[10]~46\)) # (!counter(11) & ((\counter[10]~46\) # (GND)))
-- \counter[11]~48\ = CARRY((!\counter[10]~46\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~46\,
	combout => \counter[11]~47_combout\,
	cout => \counter[11]~48\);

-- Location: FF_X30_Y30_N31
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[11]~47_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X30_Y29_N0
\counter[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[12]~49_combout\ = (counter(12) & (\counter[11]~48\ $ (GND))) # (!counter(12) & (!\counter[11]~48\ & VCC))
-- \counter[12]~50\ = CARRY((counter(12) & !\counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~48\,
	combout => \counter[12]~49_combout\,
	cout => \counter[12]~50\);

-- Location: FF_X31_Y30_N21
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \counter[12]~49_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X30_Y29_N2
\counter[13]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[13]~51_combout\ = (counter(13) & (!\counter[12]~50\)) # (!counter(13) & ((\counter[12]~50\) # (GND)))
-- \counter[13]~52\ = CARRY((!\counter[12]~50\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~50\,
	combout => \counter[13]~51_combout\,
	cout => \counter[13]~52\);

-- Location: FF_X31_Y30_N31
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \counter[13]~51_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X30_Y29_N4
\counter[14]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[14]~53_combout\ = (counter(14) & (\counter[13]~52\ $ (GND))) # (!counter(14) & (!\counter[13]~52\ & VCC))
-- \counter[14]~54\ = CARRY((counter(14) & !\counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~52\,
	combout => \counter[14]~53_combout\,
	cout => \counter[14]~54\);

-- Location: FF_X31_Y30_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	asdata => \counter[14]~53_combout\,
	sclr => \LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X30_Y29_N6
\counter[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[15]~55_combout\ = (counter(15) & (!\counter[14]~54\)) # (!counter(15) & ((\counter[14]~54\) # (GND)))
-- \counter[15]~56\ = CARRY((!\counter[14]~54\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~54\,
	combout => \counter[15]~55_combout\,
	cout => \counter[15]~56\);

-- Location: FF_X30_Y29_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[15]~55_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X30_Y29_N8
\counter[16]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[16]~57_combout\ = (counter(16) & (\counter[15]~56\ $ (GND))) # (!counter(16) & (!\counter[15]~56\ & VCC))
-- \counter[16]~58\ = CARRY((counter(16) & !\counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~56\,
	combout => \counter[16]~57_combout\,
	cout => \counter[16]~58\);

-- Location: FF_X30_Y29_N9
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[16]~57_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X30_Y29_N10
\counter[17]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[17]~59_combout\ = (counter(17) & (!\counter[16]~58\)) # (!counter(17) & ((\counter[16]~58\) # (GND)))
-- \counter[17]~60\ = CARRY((!\counter[16]~58\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~58\,
	combout => \counter[17]~59_combout\,
	cout => \counter[17]~60\);

-- Location: FF_X30_Y29_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[17]~59_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X30_Y29_N12
\counter[18]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[18]~61_combout\ = (counter(18) & (\counter[17]~60\ $ (GND))) # (!counter(18) & (!\counter[17]~60\ & VCC))
-- \counter[18]~62\ = CARRY((counter(18) & !\counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~60\,
	combout => \counter[18]~61_combout\,
	cout => \counter[18]~62\);

-- Location: FF_X30_Y29_N13
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[18]~61_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X30_Y29_N14
\counter[19]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[19]~63_combout\ = (counter(19) & (!\counter[18]~62\)) # (!counter(19) & ((\counter[18]~62\) # (GND)))
-- \counter[19]~64\ = CARRY((!\counter[18]~62\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~62\,
	combout => \counter[19]~63_combout\,
	cout => \counter[19]~64\);

-- Location: FF_X30_Y29_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[19]~63_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X30_Y29_N16
\counter[20]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[20]~65_combout\ = (counter(20) & (\counter[19]~64\ $ (GND))) # (!counter(20) & (!\counter[19]~64\ & VCC))
-- \counter[20]~66\ = CARRY((counter(20) & !\counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~64\,
	combout => \counter[20]~65_combout\,
	cout => \counter[20]~66\);

-- Location: FF_X30_Y29_N17
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[20]~65_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X30_Y29_N18
\counter[21]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[21]~67_combout\ = (counter(21) & (!\counter[20]~66\)) # (!counter(21) & ((\counter[20]~66\) # (GND)))
-- \counter[21]~68\ = CARRY((!\counter[20]~66\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~66\,
	combout => \counter[21]~67_combout\,
	cout => \counter[21]~68\);

-- Location: FF_X30_Y29_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[21]~67_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X30_Y29_N20
\counter[22]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[22]~69_combout\ = (counter(22) & (\counter[21]~68\ $ (GND))) # (!counter(22) & (!\counter[21]~68\ & VCC))
-- \counter[22]~70\ = CARRY((counter(22) & !\counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~68\,
	combout => \counter[22]~69_combout\,
	cout => \counter[22]~70\);

-- Location: FF_X30_Y29_N21
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[22]~69_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X30_Y29_N22
\counter[23]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[23]~71_combout\ = (counter(23) & (!\counter[22]~70\)) # (!counter(23) & ((\counter[22]~70\) # (GND)))
-- \counter[23]~72\ = CARRY((!\counter[22]~70\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \counter[22]~70\,
	combout => \counter[23]~71_combout\,
	cout => \counter[23]~72\);

-- Location: FF_X30_Y29_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[23]~71_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X30_Y29_N26
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!counter(20)) # (!counter(22))) # (!counter(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datac => counter(22),
	datad => counter(20),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y29_N24
\counter[24]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter[24]~73_combout\ = \counter[23]~72\ $ (!counter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(24),
	cin => \counter[23]~72\,
	combout => \counter[24]~73_combout\);

-- Location: FF_X30_Y29_N25
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \counter[24]~73_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X30_Y29_N28
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(16) & !counter(17))) # (!counter(19))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(16),
	datac => counter(19),
	datad => counter(17),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y30_N16
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!counter(7) & (!counter(9) & (!counter(8) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(9),
	datac => counter(8),
	datad => counter(10),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y30_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((!counter(14)) # (!counter(13))) # (!counter(12))) # (!counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(12),
	datac => counter(13),
	datad => counter(14),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X31_Y30_N24
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!counter(3)) # (!counter(1))) # (!counter(0))) # (!counter(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(0),
	datac => counter(1),
	datad => counter(3),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y30_N26
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # (!counter(4))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datac => counter(4),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y30_N2
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~4_combout\ & (!counter(6) & \LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => counter(6),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y30_N0
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~1_combout\) # ((!counter(15) & (!counter(17) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(17),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y30_N6
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (counter(24) & ((counter(23)) # ((!\LessThan0~0_combout\ & !\LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => \LessThan0~0_combout\,
	datac => counter(24),
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X31_Y30_N22
\clk_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_state~0_combout\ = \LessThan0~8_combout\ $ (\clk_state~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~8_combout\,
	datac => \clk_state~q\,
	combout => \clk_state~0_combout\);

-- Location: FF_X31_Y30_N23
clk_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50MHz~inputclkctrl_outclk\,
	d => \clk_state~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_state~q\);

-- Location: IOIBUF_X22_Y0_N1
\pyro~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pyro,
	o => \pyro~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_clk <= \clk~output_o\;

ww_light <= \light~output_o\;
END structure;


