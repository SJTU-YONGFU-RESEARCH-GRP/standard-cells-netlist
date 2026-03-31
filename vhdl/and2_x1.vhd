library ieee;
use ieee.std_logic_1164.all;

entity and2_x1 is
    port (
        A1, A2 : in std_logic;
        \X\ : out std_logic
    );
end entity and2_x1;

architecture rtl of and2_x1 is
begin
    \X\ <= A1 and A2;
end architecture rtl;
