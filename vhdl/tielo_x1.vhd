library ieee;
use ieee.std_logic_1164.all;

entity tielo_x1 is
    port (
        l_lo : out std_logic
    );
end entity tielo_x1;

architecture rtl of tielo_x1 is
begin
    l_lo <= '0';
end architecture rtl;
