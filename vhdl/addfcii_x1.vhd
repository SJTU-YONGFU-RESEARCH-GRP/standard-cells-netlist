library ieee;
use ieee.std_logic_1164.all;

entity addfcii_x1 is
    port (
        A, B, CI : in std_logic;
        S, CO : out std_logic
    );
end entity addfcii_x1;

architecture rtl of addfcii_x1 is
begin
    S <= A xor B xor (not CI);
    CO <= (A and B) or (A and (not CI)) or (B and (not CI));
end architecture rtl;
