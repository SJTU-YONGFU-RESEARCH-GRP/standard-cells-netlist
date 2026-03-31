.subckt mux2_x1 D0 D1 S X VDD VSS
XMS_P0 sel_b S VDD VDD pmos w=2u l=100n
XMS_N0 sel_b S VSS VSS nmos w=1u l=100n
XM0_MP0 X S D0 VDD pmos w=2u l=100n
XM0_MN0 X sel_b D0 VSS nmos w=1u l=100n
XM0_MP1 X sel_b D1 VDD pmos w=2u l=100n
XM0_MN1 X S D1 VSS nmos w=1u l=100n
.ends mux2_x1
