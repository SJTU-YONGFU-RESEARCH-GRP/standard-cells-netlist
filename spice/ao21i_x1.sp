.subckt ao21i_x1 A1 A2 B X VDD VSS
XAO21I_IN2_P0 in2_b B VDD VDD pmos w=2u l=100n
XAO21I_IN2_N0 in2_b B VSS VSS nmos w=1u l=100n
XAOI0_NB0 ao21i_mid in2_b VSS VSS nmos w=1u l=100n
XAOI0_NA20 aoi21_nsa A2 VSS VSS nmos w=1u l=100n
XAOI0_NA10 ao21i_mid A1 aoi21_nsa VSS nmos w=1u l=100n
XAOI0_PB0 aoi21_npb in2_b VDD VDD pmos w=2u l=100n
XAOI0_PA10 ao21i_mid A1 aoi21_npb VDD pmos w=2u l=100n
XAOI0_PA20 ao21i_mid A2 aoi21_npb VDD pmos w=2u l=100n
XAO21IOUT0_P0 X ao21i_mid VDD VDD pmos w=2u l=100n
XAO21IOUT0_N0 X ao21i_mid VSS VSS nmos w=1u l=100n
.ends ao21i_x1
