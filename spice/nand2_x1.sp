.subckt nand2_x1 A1 A2 X VDD VSS
XMPA0 X A1 VDD VDD pmos w=2u l=100n
XMPB0 X A2 VDD VDD pmos w=2u l=100n
XMNB0 X A2 nmid_M0 VSS nmos w=1u l=100n
XMNA0 nmid_M0 A1 VSS VSS nmos w=1u l=100n
.ends nand2_x1
