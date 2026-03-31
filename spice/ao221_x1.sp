.subckt ao221_x1 A1 A2 B1 B2 C X VDD VSS
XAO2210_NA10 ao221_mid A1 aoi221_nsa VSS nmos w=1u l=100n
XAO2210_NA20 aoi221_nsa A2 VSS VSS nmos w=1u l=100n
XAO2210_NB10 ao221_mid B1 aoi221_nsb VSS nmos w=1u l=100n
XAO2210_NB20 aoi221_nsb B2 VSS VSS nmos w=1u l=100n
XAO2210_NC0 ao221_mid C VSS VSS nmos w=1u l=100n
XAO2210_PC0 aoi221_n2 C VDD VDD pmos w=2u l=100n
XAO2210_PB10 aoi221_n1 B1 aoi221_n2 VDD pmos w=2u l=100n
XAO2210_PB20 aoi221_n1 B2 aoi221_n2 VDD pmos w=2u l=100n
XAO2210_PA10 ao221_mid A1 aoi221_n1 VDD pmos w=2u l=100n
XAO2210_PA20 ao221_mid A2 aoi221_n1 VDD pmos w=2u l=100n
XAO221OUT0_P0 X ao221_mid VDD VDD pmos w=2u l=100n
XAO221OUT0_N0 X ao221_mid VSS VSS nmos w=1u l=100n
.ends ao221_x1
