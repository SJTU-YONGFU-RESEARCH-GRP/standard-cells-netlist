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
module mult4x4_x1 (p0, p1, p2, p3, p4, p5, p6, p7, a0, a1, a2, a3, b0, b1, b2, b3);
   output p0, p1, p2, p3, p4, p5, p6, p7;
   input a0, a1, a2, a3, b0, b1, b2, b3;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY {p7, p6, p5, p4, p3, p2, p1, p0} = {a3, a2, a1, a0} * {b3, b2, b1, b0};
   `else
   assign {p7, p6, p5, p4, p3, p2, p1, p0} = {a3, a2, a1, a0} * {b3, b2, b1, b0};
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
(a0 +=> p4)=(0, 0);
(a0 +=> p5)=(0, 0);
(a0 +=> p6)=(0, 0);
(a0 +=> p7)=(0, 0);
(a1 +=> p0)=(0, 0);
(a1 +=> p1)=(0, 0);
(a1 +=> p2)=(0, 0);
(a1 +=> p3)=(0, 0);
(a1 +=> p4)=(0, 0);
(a1 +=> p5)=(0, 0);
(a1 +=> p6)=(0, 0);
(a1 +=> p7)=(0, 0);
(a2 +=> p0)=(0, 0);
(a2 +=> p1)=(0, 0);
(a2 +=> p2)=(0, 0);
(a2 +=> p3)=(0, 0);
(a2 +=> p4)=(0, 0);
(a2 +=> p5)=(0, 0);
(a2 +=> p6)=(0, 0);
(a2 +=> p7)=(0, 0);
(a3 +=> p0)=(0, 0);
(a3 +=> p1)=(0, 0);
(a3 +=> p2)=(0, 0);
(a3 +=> p3)=(0, 0);
(a3 +=> p4)=(0, 0);
(a3 +=> p5)=(0, 0);
(a3 +=> p6)=(0, 0);
(a3 +=> p7)=(0, 0);
(b0 +=> p0)=(0, 0);
(b0 +=> p1)=(0, 0);
(b0 +=> p2)=(0, 0);
(b0 +=> p3)=(0, 0);
(b0 +=> p4)=(0, 0);
(b0 +=> p5)=(0, 0);
(b0 +=> p6)=(0, 0);
(b0 +=> p7)=(0, 0);
(b1 +=> p0)=(0, 0);
(b1 +=> p1)=(0, 0);
(b1 +=> p2)=(0, 0);
(b1 +=> p3)=(0, 0);
(b1 +=> p4)=(0, 0);
(b1 +=> p5)=(0, 0);
(b1 +=> p6)=(0, 0);
(b1 +=> p7)=(0, 0);
(b2 +=> p0)=(0, 0);
(b2 +=> p1)=(0, 0);
(b2 +=> p2)=(0, 0);
(b2 +=> p3)=(0, 0);
(b2 +=> p4)=(0, 0);
(b2 +=> p5)=(0, 0);
(b2 +=> p6)=(0, 0);
(b2 +=> p7)=(0, 0);
(b3 +=> p0)=(0, 0);
(b3 +=> p1)=(0, 0);
(b3 +=> p2)=(0, 0);
(b3 +=> p3)=(0, 0);
(b3 +=> p4)=(0, 0);
(b3 +=> p5)=(0, 0);
(b3 +=> p6)=(0, 0);
(b3 +=> p7)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
