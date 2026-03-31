library ieee;
use ieee.std_logic_1164.all;

entity aoi211_x1 is
    port (
        A1, A2, B1, B2 : in std_logic;
        \X\ : out std_logic
    );
end entity aoi211_x1;

architecture rtl of aoi211_x1 is
begin
    \X\ <= not (((A1 and A2) or B1 or B2));
end architecture rtl;
