.subckt oai21_x1 A1 A2 B X VDD VSS
XMNA10 oai21_nor A1 VSS VSS nmos w=1u l=100n
XMNA20 oai21_nor A2 VSS VSS nmos w=1u l=100n
XMNB0 X B oai21_nor VSS nmos w=1u l=100n
XMPA10 oai21_pm A1 VDD VDD pmos w=2u l=100n
XMPA20 X A2 oai21_pm VDD pmos w=2u l=100n
XMPB0 X B VDD VDD pmos w=2u l=100n
.ends oai21_x1
