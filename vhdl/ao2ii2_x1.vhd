library ieee;
use ieee.std_logic_1164.all;

entity ao2ii2_x1 is
    port (
        A1, A2, B1, B2 : in std_logic;
        \X\ : out std_logic
    );
end entity ao2ii2_x1;

architecture rtl of ao2ii2_x1 is
begin
    \X\ <= ((not A1) and (not A2)) or (B1 and B2);
end architecture rtl;
