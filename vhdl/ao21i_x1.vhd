--%BEGIN ao21i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity ao21i_x1 is
   port (
      A1, A2, B : in STD_LOGIC;
      X : out STD_LOGIC
   );
end ao21i_x1;

architecture ao21i_x1_arch of ao21i_x1 is
begin

   VitalBehavior : Process (A1, A2, B)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (A1 and A2) or (not B);

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end ao21i_x1_arch;

--%END ao21i_x1
