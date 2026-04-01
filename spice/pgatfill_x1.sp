.subckt pgatfill_x1 VDDP VSS VBP VBN VDDCF ENXB
* Power-management helper: ref_lib-style rails listed first.
XPG_ENXB_POFF ENXB VDDP ENXB VBP pmos w=2u l=100n
XPG_ENXB_NOFF ENXB VSS ENXB VBN nmos w=1u l=100n
.ends pgatfill_x1
