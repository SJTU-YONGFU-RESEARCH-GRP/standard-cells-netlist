library ieee;
use ieee.std_logic_1164.all;

entity addfcscoi_x1 is
    port (
        A, B, CI0, CI1, CS : in std_logic;
        S, CO0, CO1 : out std_logic
    );
end entity addfcscoi_x1;

architecture rtl of addfcscoi_x1 is
begin
    S <= ((not CS) and (A xor B xor CI0)) or (CS and (A xor B xor CI1));
    CO0 <= not ((A and B) or (A and CI0) or (B and CI0));
    CO1 <= not ((A and B) or (A and CI1) or (B and CI1));
end architecture rtl;
