library ieee;
use ieee.std_logic_1164.all;

entity fsdnq_x1 is
    port (
        q : out std_logic;
        ck, d, si, se : in std_logic
    );
end entity fsdnq_x1;

architecture rtl of fsdnq_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck) is
    begin
        if falling_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
