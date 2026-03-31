.subckt ao211_x1 A1 A2 B1 B2 X VDD VSS
XAO2110_NA10 ao211_mid A1 aoi211_nsa VSS nmos w=1u l=100n
XAO2110_NA20 aoi211_nsa A2 VSS VSS nmos w=1u l=100n
XAO2110_NB0 ao211_mid B1 VSS VSS nmos w=1u l=100n
XAO2110_NC0 ao211_mid B2 VSS VSS nmos w=1u l=100n
XAO2110_PC0 aoi211_n2 B2 VDD VDD pmos w=2u l=100n
XAO2110_PB0 aoi211_n1 B1 aoi211_n2 VDD pmos w=2u l=100n
XAO2110_PA10 ao211_mid A1 aoi211_n1 VDD pmos w=2u l=100n
XAO2110_PA20 ao211_mid A2 aoi211_n1 VDD pmos w=2u l=100n
XAO211OUT0_P0 X ao211_mid VDD VDD pmos w=2u l=100n
XAO211OUT0_N0 X ao211_mid VSS VSS nmos w=1u l=100n
.ends ao211_x1
