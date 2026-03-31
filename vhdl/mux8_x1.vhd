library ieee;
use ieee.std_logic_1164.all;

entity mux8_x1 is
    port (
        D0, D1, D2, D3, D4, D5, D6, D7 : in std_logic;
        S0, S1, S2 : in std_logic;
        \X\ : out std_logic
    );
end entity mux8_x1;

architecture rtl of mux8_x1 is
begin
    with S2 & S1 & S0 select \X\ <=
        D0 when "000",
        D1 when "001",
        D2 when "010",
        D3 when "011",
        D4 when "100",
        D5 when "101",
        D6 when "110",
        D7 when others;
end architecture rtl;
