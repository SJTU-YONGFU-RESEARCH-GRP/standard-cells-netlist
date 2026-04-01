--%BEGIN nand4_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity nand4_x1 is
   port (
      A1, A2, A3, A4 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end nand4_x1;

architecture nand4_x1_arch of nand4_x1 is
begin

   VitalBehavior : Process (A1, A2, A3, A4)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (A1 and A2 and A3 and A4);

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end nand4_x1_arch;

--%END nand4_x1
