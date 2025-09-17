LIBRARY ieee; USE ieee.std_logic_1164.ALL;
 
ENTITY tb_DMUX IS
END tb_DMUX;
 
ARCHITECTURE behavior OF tb_DMUX IS 
    COMPONENT DMUX_RTL
    Port ( KEY1, KEY2 : in  STD_LOGIC; --selector
           KEY3 : in  STD_LOGIC;       -- data in
           LED1,LED2,LED3,LED4: out  STD_LOGIC); --outputs
    END COMPONENT;
   --Inputs
   signal KEY1 : std_logic := '1';
   signal KEY2 : std_logic := '0';
   signal KEY3 : std_logic := '1';
 	--Outputs
   signal LED1,LED2,LED3,LED4: std_logic;
BEGIN
   uut: DMUX_RTL PORT MAP (KEY1,KEY2,KEY3,LED1,LED2,LED3,LED4);
END;