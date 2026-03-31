library ieee;
use ieee.std_logic_1164.all;

entity addfcscii_x1 is
    port (
        A, B, CI0, CI1, CS : in std_logic;
        S, CO0, CO1 : out std_logic
    );
end entity addfcscii_x1;

architecture rtl of addfcscii_x1 is
begin
    S <= ((not CS) and (A xor B xor (not CI0))) or (CS and (A xor B xor (not CI1)));
    CO0 <= (A and B) or (A and (not CI0)) or (B and (not CI0));
    CO1 <= (A and B) or (A and (not CI1)) or (B and (not CI1));
end architecture rtl;
