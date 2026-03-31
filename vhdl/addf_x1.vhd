library ieee;
use ieee.std_logic_1164.all;

entity addf_x1 is
    port (
        A, B, CI : in std_logic;
        S, CO : out std_logic
    );
end entity addf_x1;

architecture rtl of addf_x1 is
begin
    S <= A xor B xor CI;
    CO <= (A and B) or (A and CI) or (B and CI);
end architecture rtl;
