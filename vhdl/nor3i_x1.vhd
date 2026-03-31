library ieee;
use ieee.std_logic_1164.all;

entity nor3i_x1 is
    port (
        A1, A2, A3 : in std_logic;
        \out\ : out std_logic
    );
end entity nor3i_x1;

architecture rtl of nor3i_x1 is
begin
    \out\ <= not (((not A1) or A2 or A3));
end architecture rtl;
