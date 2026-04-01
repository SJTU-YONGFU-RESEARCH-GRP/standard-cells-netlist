.subckt ldpsbq_x1 Q G D SD VDD VSS
XLDPSB_g_P0 g_b G VDD VDD pmos w=2u l=100n
XLDPSB_g_N0 g_b G VSS VSS nmos w=1u l=100n
XLDPSB_l_in_P LDPSB_l_n1 g_b D VDD pmos w=2u l=100n
XLDPSB_l_in_N LDPSB_l_n1 G D VSS nmos w=1u l=100n
XLDPSB_l_i1_P0 LDPSB_l_n2 LDPSB_l_n1 VDD VDD pmos w=2u l=100n
XLDPSB_l_i1_N0 LDPSB_l_n2 LDPSB_l_n1 VSS VSS nmos w=1u l=100n
XLDPSB_l_i2_P0 LDPSB_l_n1 LDPSB_l_n2 VDD VDD pmos w=2u l=100n
XLDPSB_l_i2_N0 LDPSB_l_n1 LDPSB_l_n2 VSS VSS nmos w=1u l=100n
XLDPSB_l_fb_P LDPSB_l_n1 G LDPSB_l_n2 VDD pmos w=2u l=100n
XLDPSB_l_fb_N LDPSB_l_n1 g_b LDPSB_l_n2 VSS nmos w=1u l=100n
XLDPSB_l_o_P0 Q LDPSB_l_n2 VDD VDD pmos w=2u l=100n
XLDPSB_l_o_N0 Q LDPSB_l_n2 VSS VSS nmos w=1u l=100n
XLDPSB_s_sdi_P0 LDPSB_s_sd_b SD VDD VDD pmos w=2u l=100n
XLDPSB_s_sdi_N0 LDPSB_s_sd_b SD VSS VSS nmos w=1u l=100n
XLDPSB_s_rst Q LDPSB_s_sd_b VDD VDD pmos w=2u l=100n
.ends ldpsbq_x1
