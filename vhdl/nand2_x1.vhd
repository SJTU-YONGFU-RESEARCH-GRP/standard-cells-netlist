--%BEGIN nand2_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity nand2_x1 is
   port (
      A1, A2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end nand2_x1;

architecture nand2_x1_arch of nand2_x1 is
begin

   VitalBehavior : Process (A1, A2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A1 nand A2;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end nand2_x1_arch;

--%END nand2_x1
