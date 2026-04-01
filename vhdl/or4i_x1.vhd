--%BEGIN or4i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity or4i_x1 is
   port (
      A, B1, B2, B3 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end or4i_x1;

architecture or4i_x1_arch of or4i_x1 is
begin

   VitalBehavior : Process (A, B1, B2, B3)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (not A) or B1 or B2 or B3;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end or4i_x1_arch;

--%END or4i_x1
