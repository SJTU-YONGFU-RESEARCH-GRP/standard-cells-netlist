library ieee;
use ieee.std_logic_1164.all;

entity addf42_x1 is
    port (
        A, B, C, D, CI : in std_logic;
        S, CO, ICO : out std_logic
    );
end entity addf42_x1;

architecture rtl of addf42_x1 is
begin
    S <= A xor B xor C xor D xor CI;
    CO <= ((A xor B xor C) and D) or ((A xor B xor C) and CI) or (D and CI);
    ICO <= (A and B) or (A and C) or (B and C);
end architecture rtl;
