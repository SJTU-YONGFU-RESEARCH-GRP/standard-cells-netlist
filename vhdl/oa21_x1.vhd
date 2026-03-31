library ieee;
use ieee.std_logic_1164.all;

entity oa21_x1 is
    port (
        A1, A2, B : in std_logic;
        \X\ : out std_logic
    );
end entity oa21_x1;

architecture rtl of oa21_x1 is
begin
    \X\ <= (A1 or A2) and B;
end architecture rtl;
