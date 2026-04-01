--%BEGIN and4i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity and4i_x1 is
   port (
      A, B1, B2, B3 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end and4i_x1;

architecture and4i_x1_arch of and4i_x1 is
begin

   VitalBehavior : Process (A, B1, B2, B3)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (not A) and B1 and B2 and B3;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end and4i_x1_arch;

--%END and4i_x1
