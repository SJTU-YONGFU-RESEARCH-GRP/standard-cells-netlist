library ieee;
use ieee.std_logic_1164.all;

entity fsdphcbq_x1 is
    port (
        q : out std_logic;
        ck, d, si, se, en, rs : in std_logic
    );
end entity fsdphcbq_x1;

architecture rtl of fsdphcbq_x1 is
begin
    process (ck) is
    begin
        if rising_edge(ck) then
            if en = '1' then
                q <= (si and rs) when se = '1' else (d and rs);
            end if;
        end if;
    end process;
end architecture rtl;
