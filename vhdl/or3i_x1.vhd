--%BEGIN or3i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity or3i_x1 is
   port (
      A, B1, B2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end or3i_x1;

architecture or3i_x1_arch of or3i_x1 is
begin

   VitalBehavior : Process (A, B1, B2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (not A) or B1 or B2;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end or3i_x1_arch;

--%END or3i_x1
