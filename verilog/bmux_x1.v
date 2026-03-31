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
module bmux_x1 (PP, S, A, X, M0, M1);
   output PP;
   input S, A, X, M0, M1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY PP = X ? (M1 ? ~A : ~S) : (M0 ? ~A : ~S);
   `else
   assign PP = X ? (M1 ? ~A : ~S) : (M0 ? ~A : ~S);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(S +=> PP)=(0, 0);
(A +=> PP)=(0, 0);
(X +=> PP)=(0, 0);
(M0 +=> PP)=(0, 0);
(M1 +=> PP)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
