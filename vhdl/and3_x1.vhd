library ieee;
use ieee.std_logic_1164.all;

entity and3_x1 is
    port (
        A1, A2, A3 : in std_logic;
        \X\ : out std_logic
    );
end entity and3_x1;

architecture rtl of and3_x1 is
begin
    \X\ <= A1 and A2 and A3;
end architecture rtl;
