--%BEGIN lvldbufe0_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity lvldbufe0_x1 is
   port (
      VDD, VSS, VDDR, VBP, VBN : inout STD_LOGIC;
      A, EN : in STD_LOGIC;
      X : out STD_LOGIC
   );
end lvldbufe0_x1;

architecture lvldbufe0_x1_arch of lvldbufe0_x1 is
begin

   VitalBehavior : Process (VDD, VSS, VDDR, VBP, VBN, A, EN)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A and EN;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end lvldbufe0_x1_arch;

--%END lvldbufe0_x1
