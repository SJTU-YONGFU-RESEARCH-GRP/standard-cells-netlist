.subckt ao2ii2_x1 A1 A2 B1 B2 X VDD VSS
XAO2II2L0_PA0 pmid_AO2II2L0_0 A1 VDD VDD pmos w=2u l=100n
XAO2II2L0_PB0 ao2ii2_l A2 pmid_AO2II2L0_0 VDD pmos w=2u l=100n
XAO2II2L0_NA0 ao2ii2_l A1 VSS VSS nmos w=1u l=100n
XAO2II2L0_NB0 ao2ii2_l A2 VSS VSS nmos w=1u l=100n
XAO2II2R0_PA0 ao2ii2_r_n B1 VDD VDD pmos w=2u l=100n
XAO2II2R0_PB0 ao2ii2_r_n B2 VDD VDD pmos w=2u l=100n
XAO2II2R0_NB0 ao2ii2_r_n B2 nmid_AO2II2R0_0 VSS nmos w=1u l=100n
XAO2II2R0_NA0 nmid_AO2II2R0_0 B1 VSS VSS nmos w=1u l=100n
XAO2II2RI0_P0 ao2ii2_r ao2ii2_r_n VDD VDD pmos w=2u l=100n
XAO2II2RI0_N0 ao2ii2_r ao2ii2_r_n VSS VSS nmos w=1u l=100n
XAO2II2N20_PA0 pmid_AO2II2N20_0 ao2ii2_l VDD VDD pmos w=2u l=100n
XAO2II2N20_PB0 ao2ii2_or_n ao2ii2_r pmid_AO2II2N20_0 VDD pmos w=2u l=100n
XAO2II2N20_NA0 ao2ii2_or_n ao2ii2_l VSS VSS nmos w=1u l=100n
XAO2II2N20_NB0 ao2ii2_or_n ao2ii2_r VSS VSS nmos w=1u l=100n
XAO2II2O0_P0 X ao2ii2_or_n VDD VDD pmos w=2u l=100n
XAO2II2O0_N0 X ao2ii2_or_n VSS VSS nmos w=1u l=100n
.ends ao2ii2_x1
