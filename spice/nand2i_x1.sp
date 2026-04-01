.subckt nand2i_x1 A B X VDD VSS
XMPA0 X A VDD VDD pmos w=2u l=100n
XMPB0 X B VDD VDD pmos w=2u l=100n
XMNB0 X B nmid_M0 VSS nmos w=1u l=100n
XMNA0 nmid_M0 A VSS VSS nmos w=1u l=100n
.ends nand2i_x1
