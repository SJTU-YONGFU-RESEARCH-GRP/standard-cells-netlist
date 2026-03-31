library ieee;
use ieee.std_logic_1164.all;

entity fsdpmq_x1 is
    port (
        q : out std_logic;
        ck, d0, d1, s, si, se : in std_logic
    );
end entity fsdpmq_x1;

architecture rtl of fsdpmq_x1 is
    signal dsel, din : std_logic;
begin
    dsel <= d1 when s = '1' else d0;
    din <= si when se = '1' else dsel;
    process (ck) is
    begin
        if rising_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
