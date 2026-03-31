library ieee;
use ieee.std_logic_1164.all;

entity aoi41_x1 is
    port (
        A1, A2, B1, B2, C : in std_logic;
        \X\ : out std_logic
    );
end entity aoi41_x1;

architecture rtl of aoi41_x1 is
begin
    \X\ <= not (((A1 and A2 and B1 and B2) or C));
end architecture rtl;
