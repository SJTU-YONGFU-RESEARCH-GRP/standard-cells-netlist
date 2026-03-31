library ieee;
use ieee.std_logic_1164.all;

entity oa2ii2_x1 is
    port (
        A1, A2, B1, B2 : in std_logic;
        \X\ : out std_logic
    );
end entity oa2ii2_x1;

architecture rtl of oa2ii2_x1 is
begin
    \X\ <= ((not A1) or (not A2)) and (B1 or B2);
end architecture rtl;
