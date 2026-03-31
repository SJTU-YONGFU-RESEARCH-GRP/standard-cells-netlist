library ieee;
use ieee.std_logic_1164.all;

entity ls_l2h_x1 is
    port (
        vddl : inout std_logic;
        vddh : inout std_logic;
        vss : inout std_logic;
        in0 : in std_logic;
        \out\ : out std_logic
    );
end entity ls_l2h_x1;

architecture rtl of ls_l2h_x1 is
begin
    \out\ <= in0;
end architecture rtl;
