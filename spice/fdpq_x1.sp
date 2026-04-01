.subckt fdpq_x1 Q CK D VDD VSS
XFDPQ_ck_P0 FDPQ_ck_b CK VDD VDD pmos w=2u l=100n
XFDPQ_ck_N0 FDPQ_ck_b CK VSS VSS nmos w=1u l=100n
XFDPQ_m_in_P FDPQ_m_n1 CK D VDD pmos w=2u l=100n
XFDPQ_m_in_N FDPQ_m_n1 FDPQ_ck_b D VSS nmos w=1u l=100n
XFDPQ_m_i1_P0 FDPQ_m_n2 FDPQ_m_n1 VDD VDD pmos w=2u l=100n
XFDPQ_m_i1_N0 FDPQ_m_n2 FDPQ_m_n1 VSS VSS nmos w=1u l=100n
XFDPQ_m_i2_P0 FDPQ_m_n1 FDPQ_m_n2 VDD VDD pmos w=2u l=100n
XFDPQ_m_i2_N0 FDPQ_m_n1 FDPQ_m_n2 VSS VSS nmos w=1u l=100n
XFDPQ_m_fb_P FDPQ_m_n1 FDPQ_ck_b FDPQ_m_n2 VDD pmos w=2u l=100n
XFDPQ_m_fb_N FDPQ_m_n1 CK FDPQ_m_n2 VSS nmos w=1u l=100n
XFDPQ_m_o_P0 FDPQ_qm FDPQ_m_n2 VDD VDD pmos w=2u l=100n
XFDPQ_m_o_N0 FDPQ_qm FDPQ_m_n2 VSS VSS nmos w=1u l=100n
XFDPQ_s_in_P FDPQ_s_n1 FDPQ_ck_b FDPQ_qm VDD pmos w=2u l=100n
XFDPQ_s_in_N FDPQ_s_n1 CK FDPQ_qm VSS nmos w=1u l=100n
XFDPQ_s_i1_P0 FDPQ_s_n2 FDPQ_s_n1 VDD VDD pmos w=2u l=100n
XFDPQ_s_i1_N0 FDPQ_s_n2 FDPQ_s_n1 VSS VSS nmos w=1u l=100n
XFDPQ_s_i2_P0 FDPQ_s_n1 FDPQ_s_n2 VDD VDD pmos w=2u l=100n
XFDPQ_s_i2_N0 FDPQ_s_n1 FDPQ_s_n2 VSS VSS nmos w=1u l=100n
XFDPQ_s_fb_P FDPQ_s_n1 CK FDPQ_s_n2 VDD pmos w=2u l=100n
XFDPQ_s_fb_N FDPQ_s_n1 FDPQ_ck_b FDPQ_s_n2 VSS nmos w=1u l=100n
XFDPQ_s_o_P0 Q FDPQ_s_n2 VDD VDD pmos w=2u l=100n
XFDPQ_s_o_N0 Q FDPQ_s_n2 VSS VSS nmos w=1u l=100n
.ends fdpq_x1
