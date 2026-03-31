library ieee;
use ieee.std_logic_1164.all;

entity fsdnsbq_x1 is
    port (
        q : out std_logic;
        ck, d, si, se, sd : in std_logic
    );
end entity fsdnsbq_x1;

architecture rtl of fsdnsbq_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck, sd) is
    begin
        if sd = '0' then
            q <= '1';
        elsif falling_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
