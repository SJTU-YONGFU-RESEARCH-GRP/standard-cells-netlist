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
module mult2x2_x1 (P0, P1, P2, P3, A0, A1, B0, B1);
   output P0, P1, P2, P3;
   input A0, A1, B0, B1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY {P3, P2, P1, P0} = {A1, A0} * {B1, B0};
   `else
   assign {P3, P2, P1, P0} = {A1, A0} * {B1, B0};
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A0 +=> P0)=(0, 0);
(A0 +=> P1)=(0, 0);
(A0 +=> P2)=(0, 0);
(A0 +=> P3)=(0, 0);
(A1 +=> P0)=(0, 0);
(A1 +=> P1)=(0, 0);
(A1 +=> P2)=(0, 0);
(A1 +=> P3)=(0, 0);
(B0 +=> P0)=(0, 0);
(B0 +=> P1)=(0, 0);
(B0 +=> P2)=(0, 0);
(B0 +=> P3)=(0, 0);
(B1 +=> P0)=(0, 0);
(B1 +=> P1)=(0, 0);
(B1 +=> P2)=(0, 0);
(B1 +=> P3)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
