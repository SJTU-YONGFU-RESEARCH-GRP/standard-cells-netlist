.subckt aoi41_x1 A1 A2 A3 A4 B X VDD VSS
XAOI41N40_PA0 aoi41_and_n A1 VDD VDD pmos w=2u l=100n
XAOI41N40_PB0 aoi41_and_n A2 VDD VDD pmos w=2u l=100n
XAOI41N40_PC0 aoi41_and_n A3 VDD VDD pmos w=2u l=100n
XAOI41N40_PD0 aoi41_and_n A4 VDD VDD pmos w=2u l=100n
XAOI41N40_ND0 aoi41_and_n A4 na4_3 VSS nmos w=1u l=100n
XAOI41N40_NC0 na4_3 A3 na4_2 VSS nmos w=1u l=100n
XAOI41N40_NB0 na4_2 A2 na4_1 VSS nmos w=1u l=100n
XAOI41N40_NA0 na4_1 A1 VSS VSS nmos w=1u l=100n
XAOI41I40_P0 aoi41_and aoi41_and_n VDD VDD pmos w=2u l=100n
XAOI41I40_N0 aoi41_and aoi41_and_n VSS VSS nmos w=1u l=100n
XAOI41N20_PA0 pmid_AOI41N20_0 aoi41_and VDD VDD pmos w=2u l=100n
XAOI41N20_PB0 X B pmid_AOI41N20_0 VDD pmos w=2u l=100n
XAOI41N20_NA0 X aoi41_and VSS VSS nmos w=1u l=100n
XAOI41N20_NB0 X B VSS VSS nmos w=1u l=100n
.ends aoi41_x1
