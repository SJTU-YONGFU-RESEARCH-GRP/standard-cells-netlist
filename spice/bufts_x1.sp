.subckt bufts_x1 A EN X VDD VSS
XBUFTS_EN_P0 en_b EN VDD VDD pmos w=2u l=100n
XBUFTS_EN_N0 en_b EN VSS VSS nmos w=1u l=100n
XBTP0 X en_b A VDD pmos w=2u l=100n
XBTN0 X EN A VSS nmos w=1u l=100n
.ends bufts_x1
