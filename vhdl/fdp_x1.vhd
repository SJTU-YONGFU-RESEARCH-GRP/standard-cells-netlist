library ieee;
use ieee.std_logic_1164.all;

entity fdp_x1 is
    port (
        q, qn : out std_logic;
        ck, d : in std_logic
    );
end entity fdp_x1;

architecture rtl of fdp_x1 is
begin
    process (ck) is
    begin
        if rising_edge(ck) then
            q <= d;
            qn <= not d;
        end if;
    end process;
end architecture rtl;
