library ieee;
use ieee.std_logic_1164.all;

entity addhii_x1 is
    port (
        A, B : in std_logic;
        S, CO : out std_logic
    );
end entity addhii_x1;

architecture rtl of addhii_x1 is
begin
    S <= A xor (not B);
    CO <= A and (not B);
end architecture rtl;
