library ieee;
use ieee.std_logic_1164.all;

entity ao21i_x1 is
    port (
        A1, A2, B : in std_logic;
        \X\ : out std_logic
    );
end entity ao21i_x1;

architecture rtl of ao21i_x1 is
begin
    \X\ <= (A1 and A2) or (not B);
end architecture rtl;
