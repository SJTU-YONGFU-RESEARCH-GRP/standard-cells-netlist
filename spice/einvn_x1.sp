.subckt einvn_x1 A TE_B X VDD VSS
XTEI_P0 te_n TE_B VDD VDD pmos w=2u l=100n
XTEI_N0 te_n TE_B VSS VSS nmos w=1u l=100n
XEIPe0 einv_np TE_B VDD VDD pmos w=2u l=100n
XEIPd0 X A einv_np VDD pmos w=2u l=100n
XEINd0 X A einv_nn VSS nmos w=1u l=100n
XEINe0 einv_nn te_n VSS VSS nmos w=1u l=100n
.ends einvn_x1
