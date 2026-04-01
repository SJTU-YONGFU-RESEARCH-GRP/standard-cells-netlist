library ieee;
use ieee.std_logic_1164.all;

entity pgatbdrv_x1 is
    port (
        VDDP, VSS, VBP, VBN, VDDC : inout std_logic;
        ENX, EN : in std_logic
    );
end entity pgatbdrv_x1;

architecture rtl of pgatbdrv_x1 is
begin
end architecture rtl;
