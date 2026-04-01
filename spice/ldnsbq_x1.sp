.subckt ldnsbq_x1 Q G D SD VDD VSS
XLDNSB_g_P0 g_b G VDD VDD pmos w=2u l=100n
XLDNSB_g_N0 g_b G VSS VSS nmos w=1u l=100n
XLDNSB_l_in_P LDNSB_l_n1 G D VDD pmos w=2u l=100n
XLDNSB_l_in_N LDNSB_l_n1 g_b D VSS nmos w=1u l=100n
XLDNSB_l_i1_P0 LDNSB_l_n2 LDNSB_l_n1 VDD VDD pmos w=2u l=100n
XLDNSB_l_i1_N0 LDNSB_l_n2 LDNSB_l_n1 VSS VSS nmos w=1u l=100n
XLDNSB_l_i2_P0 LDNSB_l_n1 LDNSB_l_n2 VDD VDD pmos w=2u l=100n
XLDNSB_l_i2_N0 LDNSB_l_n1 LDNSB_l_n2 VSS VSS nmos w=1u l=100n
XLDNSB_l_fb_P LDNSB_l_n1 g_b LDNSB_l_n2 VDD pmos w=2u l=100n
XLDNSB_l_fb_N LDNSB_l_n1 G LDNSB_l_n2 VSS nmos w=1u l=100n
XLDNSB_l_o_P0 Q LDNSB_l_n2 VDD VDD pmos w=2u l=100n
XLDNSB_l_o_N0 Q LDNSB_l_n2 VSS VSS nmos w=1u l=100n
XLDNSB_s_sdi_P0 LDNSB_s_sd_b SD VDD VDD pmos w=2u l=100n
XLDNSB_s_sdi_N0 LDNSB_s_sd_b SD VSS VSS nmos w=1u l=100n
XLDNSB_s_rst Q LDNSB_s_sd_b VDD VDD pmos w=2u l=100n
.ends ldnsbq_x1
