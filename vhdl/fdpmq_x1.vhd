library ieee;
use ieee.std_logic_1164.all;

entity fdpmq_x1 is
    port (
        q : out std_logic;
        ck, d0, d1, s : in std_logic
    );
end entity fdpmq_x1;

architecture rtl of fdpmq_x1 is
    signal din : std_logic;
begin
    din <= d1 when s = '1' else d0;
    process (ck) is
    begin
        if rising_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
