.subckt ebufn_x1 A EN X VDD VSS
XTEI_P0 te_n EN VDD VDD pmos w=2u l=100n
XTEI_N0 te_n EN VSS VSS nmos w=1u l=100n
XEBP0 X EN A VDD pmos w=2u l=100n
XEBN0 X te_n A VSS nmos w=1u l=100n
.ends ebufn_x1
