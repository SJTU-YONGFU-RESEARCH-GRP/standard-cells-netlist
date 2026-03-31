library ieee;
use ieee.std_logic_1164.all;

entity mux2di_x1 is
    port (
        D0, D1 : in std_logic;
        S : in std_logic;
        \X\ : out std_logic
    );
end entity mux2di_x1;

architecture rtl of mux2di_x1 is
begin
    \X\ <= D1 when S = '1' else (not D0);
end architecture rtl;
