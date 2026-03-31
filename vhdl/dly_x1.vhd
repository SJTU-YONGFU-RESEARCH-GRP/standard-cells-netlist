library ieee;
use ieee.std_logic_1164.all;

entity dly_x1 is
    port (
        A : in std_logic;
        \X\ : out std_logic
    );
end entity dly_x1;

architecture rtl of dly_x1 is
begin
    \X\ <= A;
end architecture rtl;
