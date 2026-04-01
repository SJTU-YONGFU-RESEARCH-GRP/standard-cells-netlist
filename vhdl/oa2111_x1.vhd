--%BEGIN oa2111_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity oa2111_x1 is
   port (
      A1, A2, B1, B2, B3 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end oa2111_x1;

architecture oa2111_x1_arch of oa2111_x1 is
begin

   VitalBehavior : Process (A1, A2, B1, B2, B3)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (A1 or A2) and B1 and B2 and B3;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end oa2111_x1_arch;

--%END oa2111_x1
