library ieee;
use ieee.std_logic_1164.all;

entity ldnq_x1 is
    port (
        q : out std_logic;
        g, d : in std_logic
    );
end entity ldnq_x1;

architecture rtl of ldnq_x1 is
begin
    process (d, g) is
    begin
        if g = '0' then
            q <= d;
        end if;
    end process;
end architecture rtl;
