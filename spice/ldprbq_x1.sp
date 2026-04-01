.subckt ldprbq_x1 Q G D RD VDD VSS
XLDPRB_g_P0 g_b G VDD VDD pmos w=2u l=100n
XLDPRB_g_N0 g_b G VSS VSS nmos w=1u l=100n
XLDPRB_l_in_P LDPRB_l_n1 g_b D VDD pmos w=2u l=100n
XLDPRB_l_in_N LDPRB_l_n1 G D VSS nmos w=1u l=100n
XLDPRB_l_i1_P0 LDPRB_l_n2 LDPRB_l_n1 VDD VDD pmos w=2u l=100n
XLDPRB_l_i1_N0 LDPRB_l_n2 LDPRB_l_n1 VSS VSS nmos w=1u l=100n
XLDPRB_l_i2_P0 LDPRB_l_n1 LDPRB_l_n2 VDD VDD pmos w=2u l=100n
XLDPRB_l_i2_N0 LDPRB_l_n1 LDPRB_l_n2 VSS VSS nmos w=1u l=100n
XLDPRB_l_fb_P LDPRB_l_n1 G LDPRB_l_n2 VDD pmos w=2u l=100n
XLDPRB_l_fb_N LDPRB_l_n1 g_b LDPRB_l_n2 VSS nmos w=1u l=100n
XLDPRB_l_o_P0 Q LDPRB_l_n2 VDD VDD pmos w=2u l=100n
XLDPRB_l_o_N0 Q LDPRB_l_n2 VSS VSS nmos w=1u l=100n
XLDPRB_r_rdi_P0 LDPRB_r_rd_b RD VDD VDD pmos w=2u l=100n
XLDPRB_r_rdi_N0 LDPRB_r_rd_b RD VSS VSS nmos w=1u l=100n
XLDPRB_r_rcl Q LDPRB_r_rd_b VSS VSS nmos w=1u l=100n
.ends ldprbq_x1
