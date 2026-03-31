library ieee;
use ieee.std_logic_1164.all;

entity aoi222_x1 is
    port (
        A1, A2, B1, B2, C1, C2 : in std_logic;
        \X\ : out std_logic
    );
end entity aoi222_x1;

architecture rtl of aoi222_x1 is
begin
    \X\ <= not (((A1 and A2) or (B1 and B2) or (C1 and C2)));
end architecture rtl;
