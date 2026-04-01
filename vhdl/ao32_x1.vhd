--%BEGIN ao32_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity ao32_x1 is
   port (
      A1, A2, B1, B2, C : in STD_LOGIC;
      X : out STD_LOGIC
   );
end ao32_x1;

architecture ao32_x1_arch of ao32_x1 is
begin

   VitalBehavior : Process (A1, A2, B1, B2, C)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := (A1 and A2 and B1) or (B2 and C);

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end ao32_x1_arch;

--%END ao32_x1
