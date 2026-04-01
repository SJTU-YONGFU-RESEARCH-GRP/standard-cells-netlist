--%BEGIN einvn_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity einvn_x1 is
   port (
      A, EN : in STD_LOGIC;
      X : out STD_LOGIC
   );
end einvn_x1;

architecture einvn_x1_arch of einvn_x1 is
begin

   VitalBehavior : Process (A, EN)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (not A) when EN = '0' else 'Z';

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end einvn_x1_arch;

--%END einvn_x1
