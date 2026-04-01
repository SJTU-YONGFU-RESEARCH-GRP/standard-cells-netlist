--%BEGIN and2_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity and2_x1 is
   port (
      A1, A2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end and2_x1;

architecture and2_x1_arch of and2_x1 is
begin

   VitalBehavior : Process (A1, A2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A1 and A2;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end and2_x1_arch;

--%END and2_x1
