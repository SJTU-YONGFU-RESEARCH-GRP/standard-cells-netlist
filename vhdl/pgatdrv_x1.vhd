library ieee;
use ieee.std_logic_1164.all;

entity pgatdrv_x1 is
    port (
        VDDP, VSS, VBP, VBN, VDDC : inout std_logic;
        ENXB : in std_logic
    );
end entity pgatdrv_x1;

architecture rtl of pgatdrv_x1 is
begin
end architecture rtl;
