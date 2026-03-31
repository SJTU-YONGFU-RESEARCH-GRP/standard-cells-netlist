library ieee;
use ieee.std_logic_1164.all;

entity xnor3_x1 is
    port (
        A1, A2, A3 : in std_logic;
        \X\ : out std_logic
    );
end entity xnor3_x1;

architecture rtl of xnor3_x1 is
begin
    \X\ <= not (A1 xor A2 xor A3);
end architecture rtl;
