library ieee;
use ieee.std_logic_1164.all;

entity nand4i_x1 is
    port (
        A1, A2, A3, A4 : in std_logic;
        \out\ : out std_logic
    );
end entity nand4i_x1;

architecture rtl of nand4i_x1 is
begin
    \out\ <= not (((not A1) and A2 and A3 and A4));
end architecture rtl;
