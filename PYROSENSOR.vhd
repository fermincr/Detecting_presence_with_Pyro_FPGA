--Fermin Covarrubias Ramos
--Ariel Gonzales Diaz

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


ENTITY PYROSENSOR IS
	PORT(
		clk_50MHz : IN STD_LOGIC;
		clk : OUT STD_LOGIC;
		pyro : IN STD_LOGIC;
		light : OUT STD_LOGIC		
		);
	END PYROSENSOR;
	
ARCHITECTURE Behavioral OF PYROSENSOR IS

		CONSTANT max_count : INTEGER := 24999999;
		SIGNAL counter : INTEGER RANGE 0 TO max_count;
		SIGNAL clk_state : std_logic := '0';

		CONSTANT timeMAX : INTEGER := 15;
		CONSTANT timelight : INTEGER := 5;
		CONSTANT timesb : INTEGER := 10;
		CONSTANT timesi : INTEGER := 1;
		TYPE state IS (reading);
		SIGNAL pr_state, nx_state : state;
		SIGNAL time : INTEGER RANGE 0 TO timeMAX;
		

BEGIN
 
	CLOCK_GENERATOR: PROCESS(clk_50MHz, clk_state, counter)
	BEGIN
		IF RISING_EDGE(clk_50MHz) THEN
			IF counter < max_count THEN
				counter <= counter + 1;
			ELSE
				clk_state <= NOT clk_state;
				counter <= 0;
			END IF;
		END IF;
	END PROCESS CLOCK_GENERATOR;
	
	SECOND_OUT : PROCESS (clk_state)
	BEGIN
		clk <= clk_state;
	END PROCESS SECOND_OUT;
	
	PROCESS (clk_50MHz, clk_state, counter)
	BEGIN
		light <= '0';
		time <= timesi;
		CASE pr_state IS
			WHEN reading =>
				IF (pyro= '1') THEN 
				light <='1';
				time <= timesb;
				nx_state <= reading;
				END IF;
				IF (pyro= '0') THEN 
				light <='0';
				nx_state <= reading;
				END IF;
				
			
		END CASE;
	END PROCESS;
	END Behavioral;