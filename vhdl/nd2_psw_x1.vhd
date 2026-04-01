--%BEGIN nd2_psw_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity nd2_psw_x1 is
   port (
      VDD, VSS, VDDR, VBP, VBN : inout STD_LOGIC;
      A1, A2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end nd2_psw_x1;

architecture nd2_psw_x1_arch of nd2_psw_x1 is
begin

   VitalBehavior : Process (VDD, VSS, VDDR, VBP, VBN, A1, A2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A1 nand A2;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end nd2_psw_x1_arch;

--%END nd2_psw_x1
