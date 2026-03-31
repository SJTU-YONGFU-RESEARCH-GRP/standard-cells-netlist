library ieee;
use ieee.std_logic_1164.all;

entity tiehi_x1 is
    port (
        l_hi : out std_logic
    );
end entity tiehi_x1;

architecture rtl of tiehi_x1 is
begin
    l_hi <= '1';
end architecture rtl;
