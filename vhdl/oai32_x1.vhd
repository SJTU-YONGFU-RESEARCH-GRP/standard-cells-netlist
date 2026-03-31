library ieee;
use ieee.std_logic_1164.all;

entity oai32_x1 is
    port (
        A1, A2, B1, B2, C : in std_logic;
        \X\ : out std_logic
    );
end entity oai32_x1;

architecture rtl of oai32_x1 is
begin
    \X\ <= not (((A1 or A2 or B1) and (B2 or C)));
end architecture rtl;
