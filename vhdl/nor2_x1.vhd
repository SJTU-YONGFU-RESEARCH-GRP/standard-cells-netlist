library ieee;
use ieee.std_logic_1164.all;

entity nor2_x1 is
    port (
        A1, A2 : in std_logic;
        \X\ : out std_logic
    );
end entity nor2_x1;

architecture rtl of nor2_x1 is
begin
    \X\ <= A1 nor A2;
end architecture rtl;
