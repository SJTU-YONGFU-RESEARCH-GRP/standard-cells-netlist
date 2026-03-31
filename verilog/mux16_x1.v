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
module mux16_x1 (X, D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, S0, S1, S2, S3);
   output X;
   input D0, D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, S0, S1, S2, S3;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY X =
       ({S3, S2, S1, S0} == 4'd0) ? D0 :
       ({S3, S2, S1, S0} == 4'd1) ? D1 :
       ({S3, S2, S1, S0} == 4'd2) ? D2 :
       ({S3, S2, S1, S0} == 4'd3) ? D3 :
       ({S3, S2, S1, S0} == 4'd4) ? D4 :
       ({S3, S2, S1, S0} == 4'd5) ? D5 :
       ({S3, S2, S1, S0} == 4'd6) ? D6 :
       ({S3, S2, S1, S0} == 4'd7) ? D7 :
       ({S3, S2, S1, S0} == 4'd8) ? D8 :
       ({S3, S2, S1, S0} == 4'd9) ? D9 :
       ({S3, S2, S1, S0} == 4'd10) ? D10 :
       ({S3, S2, S1, S0} == 4'd11) ? D11 :
       ({S3, S2, S1, S0} == 4'd12) ? D12 :
       ({S3, S2, S1, S0} == 4'd13) ? D13 :
       ({S3, S2, S1, S0} == 4'd14) ? D14 :
       D15;
   `else
   assign X =
       ({S3, S2, S1, S0} == 4'd0) ? D0 :
       ({S3, S2, S1, S0} == 4'd1) ? D1 :
       ({S3, S2, S1, S0} == 4'd2) ? D2 :
       ({S3, S2, S1, S0} == 4'd3) ? D3 :
       ({S3, S2, S1, S0} == 4'd4) ? D4 :
       ({S3, S2, S1, S0} == 4'd5) ? D5 :
       ({S3, S2, S1, S0} == 4'd6) ? D6 :
       ({S3, S2, S1, S0} == 4'd7) ? D7 :
       ({S3, S2, S1, S0} == 4'd8) ? D8 :
       ({S3, S2, S1, S0} == 4'd9) ? D9 :
       ({S3, S2, S1, S0} == 4'd10) ? D10 :
       ({S3, S2, S1, S0} == 4'd11) ? D11 :
       ({S3, S2, S1, S0} == 4'd12) ? D12 :
       ({S3, S2, S1, S0} == 4'd13) ? D13 :
       ({S3, S2, S1, S0} == 4'd14) ? D14 :
       D15;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(D0 +=> X)=(0, 0);
(D1 +=> X)=(0, 0);
(D2 +=> X)=(0, 0);
(D3 +=> X)=(0, 0);
(D4 +=> X)=(0, 0);
(D5 +=> X)=(0, 0);
(D6 +=> X)=(0, 0);
(D7 +=> X)=(0, 0);
(D8 +=> X)=(0, 0);
(D9 +=> X)=(0, 0);
(D10 +=> X)=(0, 0);
(D11 +=> X)=(0, 0);
(D12 +=> X)=(0, 0);
(D13 +=> X)=(0, 0);
(D14 +=> X)=(0, 0);
(D15 +=> X)=(0, 0);
(S0 +=> X)=(0, 0);
(S1 +=> X)=(0, 0);
(S2 +=> X)=(0, 0);
(S3 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
