library ieee;
use ieee.std_logic_1164.all;

entity xor2_x1 is
    port (
        A1, A2 : in std_logic;
        \X\ : out std_logic
    );
end entity xor2_x1;

architecture rtl of xor2_x1 is
begin
    \X\ <= A1 xor A2;
end architecture rtl;
