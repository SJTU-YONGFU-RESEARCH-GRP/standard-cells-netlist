library ieee;
use ieee.std_logic_1164.all;

entity or4_x1 is
    port (
        A1, A2, A3, A4 : in std_logic;
        \X\ : out std_logic
    );
end entity or4_x1;

architecture rtl of or4_x1 is
begin
    \X\ <= A1 or A2 or A3 or A4;
end architecture rtl;
