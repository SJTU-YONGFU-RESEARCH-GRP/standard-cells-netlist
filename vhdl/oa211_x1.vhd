library ieee;
use ieee.std_logic_1164.all;

entity oa211_x1 is
    port (
        A1, A2, B1, B2 : in std_logic;
        \X\ : out std_logic
    );
end entity oa211_x1;

architecture rtl of oa211_x1 is
begin
    \X\ <= (A1 or A2) and B1 and B2;
end architecture rtl;
