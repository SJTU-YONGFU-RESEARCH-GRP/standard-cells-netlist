--%BEGIN tiehi_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity tiehi_x1 is
   port (
      l_hi : out STD_LOGIC
   );
end tiehi_x1;

architecture tiehi_x1_arch of tiehi_x1 is
begin

   VitalBehavior : Process (all)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := '1';

      ------------------------------------
      l_hi <= INT_RES_0;
   end Process VitalBehavior;

end tiehi_x1_arch;

--%END tiehi_x1
