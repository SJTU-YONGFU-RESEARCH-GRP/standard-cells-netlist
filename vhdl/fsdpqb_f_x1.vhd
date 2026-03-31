library ieee;
use ieee.std_logic_1164.all;

entity fsdpqb_f_x1 is
    port (
        qn : out std_logic;
        ck, d, si, se : in std_logic
    );
end entity fsdpqb_f_x1;

architecture rtl of fsdpqb_f_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck) is
    begin
        if rising_edge(ck) then
            qn <= not din;
        end if;
    end process;
end architecture rtl;
