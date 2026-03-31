`timescale 100ps / 1ps

`define STDCELL_SEQ_DELAY 1
`define STDCELL_COMBO_DELAY 1
`define STDCELL_CKGT_DELAY 0
`define STDCELL_LAT_DELAY 1

`ifdef VIRL_functiononly
    `delay_mode_distributed
    `define _fv
`else
    `delay_mode_path
`endif

`celldefine
module aoi222_x1 (X, A1, A2, B1, B2, C1, C2, VDD, VSS);
   output X;
   input A1, A2, B1, B2, C1, C2;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire t0, t1, t2, t3;
   and #`STDCELL_COMBO_DELAY(t0, A1, A2);
   and #`STDCELL_COMBO_DELAY(t1, B1, B2);
   and #`STDCELL_COMBO_DELAY(t2, C1, C2);
   or #`STDCELL_COMBO_DELAY(t3, t0, t1, t2);
   not #`STDCELL_COMBO_DELAY(X, t3);
   `else
   wire t0, t1, t2, t3;
   and (t0, A1, A2);
   and (t1, B1, B2);
   and (t2, C1, C2);
   or (t3, t0, t1, t2);
   not (X, t3);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A1 -=> X)=(0, 0);
(A2 -=> X)=(0, 0);
(B1 -=> X)=(0, 0);
(B2 -=> X)=(0, 0);
(C1 -=> X)=(0, 0);
(C2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
