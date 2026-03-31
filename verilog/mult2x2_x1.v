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
module mult2x2_x1 (p0, p1, p2, p3, a0, a1, b0, b1);
   output p0, p1, p2, p3;
   input a0, a1, b0, b1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY {p3, p2, p1, p0} = {a1, a0} * {b1, b0};
   `else
   assign {p3, p2, p1, p0} = {a1, a0} * {b1, b0};
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(a0 +=> p0)=(0, 0);
(a0 +=> p1)=(0, 0);
(a0 +=> p2)=(0, 0);
(a0 +=> p3)=(0, 0);
(a1 +=> p0)=(0, 0);
(a1 +=> p1)=(0, 0);
(a1 +=> p2)=(0, 0);
(a1 +=> p3)=(0, 0);
(b0 +=> p0)=(0, 0);
(b0 +=> p1)=(0, 0);
(b0 +=> p2)=(0, 0);
(b0 +=> p3)=(0, 0);
(b1 +=> p0)=(0, 0);
(b1 +=> p1)=(0, 0);
(b1 +=> p2)=(0, 0);
(b1 +=> p3)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
