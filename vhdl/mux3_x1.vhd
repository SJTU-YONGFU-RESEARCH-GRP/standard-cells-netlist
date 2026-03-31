library ieee;
use ieee.std_logic_1164.all;

entity mux3_x1 is
    port (
        D0, D1, D2 : in std_logic;
        S0, S1 : in std_logic;
        \X\ : out std_logic
    );
end entity mux3_x1;

architecture rtl of mux3_x1 is
begin
    with S1 & S0 select \X\ <=
        D0 when "00",
        D1 when "01",
        D2 when others;
end architecture rtl;
