.subckt pgatdrv_x1 VDDP VSS VBP VBN VDDC ENXB
* Power-management helper: ref_lib-style rails listed first.
XPG_ENXB_POFF ENXB VDDP ENXB VBP pmos w=2u l=100n
XPG_ENXB_NOFF ENXB VSS ENXB VBN nmos w=1u l=100n
.ends pgatdrv_x1
