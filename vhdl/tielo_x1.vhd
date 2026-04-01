--%BEGIN tielo_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity tielo_x1 is
   port (
      l_lo : out STD_LOGIC
   );
end tielo_x1;

architecture tielo_x1_arch of tielo_x1 is
begin

   VitalBehavior : Process (all)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := '0';

      ------------------------------------
      l_lo <= INT_RES_0;
   end Process VitalBehavior;

end tielo_x1_arch;

--%END tielo_x1
