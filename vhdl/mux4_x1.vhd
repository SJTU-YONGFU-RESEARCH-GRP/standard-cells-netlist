library ieee;
use ieee.std_logic_1164.all;

entity mux4_x1 is
    port (
        D0, D1, D2, D3 : in std_logic;
        S0, S1 : in std_logic;
        \X\ : out std_logic
    );
end entity mux4_x1;

architecture rtl of mux4_x1 is
begin
    \X\ <= D0 when (S1 = '0' and S0 = '0') else
           D1 when (S1 = '0' and S0 = '1') else
           D2 when (S1 = '1' and S0 = '0') else
           D3;
end architecture rtl;
