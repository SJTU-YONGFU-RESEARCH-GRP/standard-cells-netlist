library ieee;
use ieee.std_logic_1164.all;

entity fdphcbq_x1 is
    port (
        q : out std_logic;
        ck, d, en, rs : in std_logic
    );
end entity fdphcbq_x1;

architecture rtl of fdphcbq_x1 is
begin
    process (ck) is
    begin
        if rising_edge(ck) then
            if en = '1' then
                q <= d and rs;
            end if;
        end if;
    end process;
end architecture rtl;
