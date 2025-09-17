library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VComponents.all;

entity DMUX_RTL is
    Port ( KEY1, KEY2 : in  STD_LOGIC; --selector
           KEY3 : in  STD_LOGIC;       -- data in
           LED1,LED2,LED3,LED4: out  STD_LOGIC); --outputs
end DMUX_RTL;

architecture RTL of DMUX_RTL is
component INV PORT(I:in std_logic; O:out std_logic); end component;
component AND3 port(I0,I1,I2:in std_logic; O:out std_logic); end component;
signal A0_bar, A1_bar: std_logic;
begin
  DD1: INV port map(KEY1, A0_bar);
  DD2: INV port map(KEY2, A1_bar);
  DD3: AND3 port map(A0_bar,A1_bar,KEY3,LED1);
  DD4: AND3 port map(KEY1,A1_bar,KEY3,LED2);
  DD5: AND3 port map(A0_bar,KEY2,KEY3,LED3);
  DD6: AND3 port map(KEY1,KEY2,KEY3,LED4);
end RTL;
