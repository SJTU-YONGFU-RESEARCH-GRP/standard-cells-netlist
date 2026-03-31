library ieee;
use ieee.std_logic_1164.all;

entity oai222_x1 is
    port (
        A1, A2, B1, B2, C1, C2 : in std_logic;
        \X\ : out std_logic
    );
end entity oai222_x1;

architecture rtl of oai222_x1 is
begin
    \X\ <= not (((A1 or A2) and (B1 or B2) and (C1 or C2)));
end architecture rtl;
