library ieee;
use ieee.std_logic_1164.all;

entity xor4_x1 is
    port (
        A1, A2, A3, A4 : in std_logic;
        \X\ : out std_logic
    );
end entity xor4_x1;

architecture rtl of xor4_x1 is
begin
    \X\ <= A1 xor A2 xor A3 xor A4;
end architecture rtl;
