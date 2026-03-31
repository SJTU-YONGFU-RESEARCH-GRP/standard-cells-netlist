library ieee;
use ieee.std_logic_1164.all;

entity oa311_x1 is
    port (
        A1, A2, B1, B2, C : in std_logic;
        \X\ : out std_logic
    );
end entity oa311_x1;

architecture rtl of oa311_x1 is
begin
    \X\ <= (A1 or A2 or B1) and B2 and C;
end architecture rtl;
