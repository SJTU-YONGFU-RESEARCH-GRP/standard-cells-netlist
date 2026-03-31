library ieee;
use ieee.std_logic_1164.all;

entity and4_x1 is
    port (
        A1, A2, A3, A4 : in std_logic;
        \X\ : out std_logic
    );
end entity and4_x1;

architecture rtl of and4_x1 is
begin
    \X\ <= A1 and A2 and A3 and A4;
end architecture rtl;
