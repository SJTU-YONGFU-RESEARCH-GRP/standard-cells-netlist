library ieee;
use ieee.std_logic_1164.all;

entity subh_x1 is
    port (
        A, B : in std_logic;
        S, CO : out std_logic
    );
end entity subh_x1;

architecture rtl of subh_x1 is
begin
    S <= A xnor B;
    CO <= A or B;
end architecture rtl;
