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
module einvn_x1 (X, A, EN);
   output X;
   input A, EN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   notif0 #`STDCELL_COMBO_DELAY(X, A, EN);
   `else
   notif0 (X, A, EN);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A +=> X)=(0, 0);
(EN +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
