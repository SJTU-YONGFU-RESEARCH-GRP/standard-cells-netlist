--%BEGIN oa21i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity oa21i_x1 is
   port (
      A1, A2, B : in STD_LOGIC;
      X : out STD_LOGIC
   );
end oa21i_x1;

architecture oa21i_x1_arch of oa21i_x1 is
begin

   VitalBehavior : Process (A1, A2, B)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (A1 or A2) and (not B);

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end oa21i_x1_arch;

--%END oa21i_x1
