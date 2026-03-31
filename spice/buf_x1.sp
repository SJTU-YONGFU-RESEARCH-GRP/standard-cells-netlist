.subckt buf_x1 A X VDD VSS
XMBUF1_0_P0 mid A VDD VDD pmos w=2u l=100n
XMBUF1_0_N0 mid A VSS VSS nmos w=1u l=100n
XMBUF2_0_P0 X mid VDD VDD pmos w=2u l=100n
XMBUF2_0_N0 X mid VSS VSS nmos w=1u l=100n
.ends buf_x1
