--%BEGIN nor3i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity nor3i_x1 is
   port (
      A, B1, B2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end nor3i_x1;

architecture nor3i_x1_arch of nor3i_x1 is
begin

   VitalBehavior : Process (A, B1, B2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (((not A) or B1 or B2));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end nor3i_x1_arch;

--%END nor3i_x1
