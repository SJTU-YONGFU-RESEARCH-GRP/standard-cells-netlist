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
module oai2111_x1 (X, A1, A2, B1, B2, B3, VDD, VSS);
   output X;
   input A1, A2, B1, B2, B3;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire t0, t1;
   or #`STDCELL_COMBO_DELAY(t0, A1, A2);
   and #`STDCELL_COMBO_DELAY(t1, t0, B1, B2, B3);
   not #`STDCELL_COMBO_DELAY(X, t1);
   `else
   wire t0, t1;
   or (t0, A1, A2);
   and (t1, t0, B1, B2, B3);
   not (X, t1);
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
(B3 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
