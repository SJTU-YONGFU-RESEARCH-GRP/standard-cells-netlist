.subckt aoi211_x1 A1 A2 B1 B2 X VDD VSS
XMNA10 X A1 aoi211_nsa VSS nmos w=1u l=100n
XMNA20 aoi211_nsa A2 VSS VSS nmos w=1u l=100n
XMNB0 X B1 VSS VSS nmos w=1u l=100n
XMNC0 X B2 VSS VSS nmos w=1u l=100n
XMPC0 aoi211_n2 B2 VDD VDD pmos w=2u l=100n
XMPB0 aoi211_n1 B1 aoi211_n2 VDD pmos w=2u l=100n
XMPA10 X A1 aoi211_n1 VDD pmos w=2u l=100n
XMPA20 X A2 aoi211_n1 VDD pmos w=2u l=100n
.ends aoi211_x1
