.subckt aoi222_x1 A1 A2 B1 B2 C1 C2 X VDD VSS
XMNA10 X A1 aoi222_sa VSS nmos w=1u l=100n
XMNA20 aoi222_sa A2 VSS VSS nmos w=1u l=100n
XMNB10 X B1 aoi222_sb VSS nmos w=1u l=100n
XMNB20 aoi222_sb B2 VSS VSS nmos w=1u l=100n
XMNC10 X C1 aoi222_sc VSS nmos w=1u l=100n
XMNC20 aoi222_sc C2 VSS VSS nmos w=1u l=100n
XMPC10 aoi222_n2 C1 VDD VDD pmos w=2u l=100n
XMPC20 aoi222_n2 C2 VDD VDD pmos w=2u l=100n
XMPB10 aoi222_n1 B1 aoi222_n2 VDD pmos w=2u l=100n
XMPB20 aoi222_n1 B2 aoi222_n2 VDD pmos w=2u l=100n
XMPA10 X A1 aoi222_n1 VDD pmos w=2u l=100n
XMPA20 X A2 aoi222_n1 VDD pmos w=2u l=100n
.ends aoi222_x1
