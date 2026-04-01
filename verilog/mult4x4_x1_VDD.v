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
module mult4x4_x1 (P0, P1, P2, P3, P4, P5, P6, P7, A0, A1, A2, A3, B0, B1, B2, B3, VDD, VSS);
   output P0, P1, P2, P3, P4, P5, P6, P7;
   input A0, A1, A2, A3, B0, B1, B2, B3;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY {P7, P6, P5, P4, P3, P2, P1, P0} = {A3, A2, A1, A0} * {B3, B2, B1, B0};
   `else
   assign {P7, P6, P5, P4, P3, P2, P1, P0} = {A3, A2, A1, A0} * {B3, B2, B1, B0};
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
(A0 +=> P4)=(0, 0);
(A0 +=> P5)=(0, 0);
(A0 +=> P6)=(0, 0);
(A0 +=> P7)=(0, 0);
(A1 +=> P0)=(0, 0);
(A1 +=> P1)=(0, 0);
(A1 +=> P2)=(0, 0);
(A1 +=> P3)=(0, 0);
(A1 +=> P4)=(0, 0);
(A1 +=> P5)=(0, 0);
(A1 +=> P6)=(0, 0);
(A1 +=> P7)=(0, 0);
(A2 +=> P0)=(0, 0);
(A2 +=> P1)=(0, 0);
(A2 +=> P2)=(0, 0);
(A2 +=> P3)=(0, 0);
(A2 +=> P4)=(0, 0);
(A2 +=> P5)=(0, 0);
(A2 +=> P6)=(0, 0);
(A2 +=> P7)=(0, 0);
(A3 +=> P0)=(0, 0);
(A3 +=> P1)=(0, 0);
(A3 +=> P2)=(0, 0);
(A3 +=> P3)=(0, 0);
(A3 +=> P4)=(0, 0);
(A3 +=> P5)=(0, 0);
(A3 +=> P6)=(0, 0);
(A3 +=> P7)=(0, 0);
(B0 +=> P0)=(0, 0);
(B0 +=> P1)=(0, 0);
(B0 +=> P2)=(0, 0);
(B0 +=> P3)=(0, 0);
(B0 +=> P4)=(0, 0);
(B0 +=> P5)=(0, 0);
(B0 +=> P6)=(0, 0);
(B0 +=> P7)=(0, 0);
(B1 +=> P0)=(0, 0);
(B1 +=> P1)=(0, 0);
(B1 +=> P2)=(0, 0);
(B1 +=> P3)=(0, 0);
(B1 +=> P4)=(0, 0);
(B1 +=> P5)=(0, 0);
(B1 +=> P6)=(0, 0);
(B1 +=> P7)=(0, 0);
(B2 +=> P0)=(0, 0);
(B2 +=> P1)=(0, 0);
(B2 +=> P2)=(0, 0);
(B2 +=> P3)=(0, 0);
(B2 +=> P4)=(0, 0);
(B2 +=> P5)=(0, 0);
(B2 +=> P6)=(0, 0);
(B2 +=> P7)=(0, 0);
(B3 +=> P0)=(0, 0);
(B3 +=> P1)=(0, 0);
(B3 +=> P2)=(0, 0);
(B3 +=> P3)=(0, 0);
(B3 +=> P4)=(0, 0);
(B3 +=> P5)=(0, 0);
(B3 +=> P6)=(0, 0);
(B3 +=> P7)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
