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
module mux8i_x1 (X, D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, VDD, VSS);
   output X;
   input D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY X = ~(
       ({S2, S1, S0} == 3'd0) ? D0 :
       ({S2, S1, S0} == 3'd1) ? D1 :
       ({S2, S1, S0} == 3'd2) ? D2 :
       ({S2, S1, S0} == 3'd3) ? D3 :
       ({S2, S1, S0} == 3'd4) ? D4 :
       ({S2, S1, S0} == 3'd5) ? D5 :
       ({S2, S1, S0} == 3'd6) ? D6 :
       D7
   );
   `else
   assign X = ~(
       ({S2, S1, S0} == 3'd0) ? D0 :
       ({S2, S1, S0} == 3'd1) ? D1 :
       ({S2, S1, S0} == 3'd2) ? D2 :
       ({S2, S1, S0} == 3'd3) ? D3 :
       ({S2, S1, S0} == 3'd4) ? D4 :
       ({S2, S1, S0} == 3'd5) ? D5 :
       ({S2, S1, S0} == 3'd6) ? D6 :
       D7
   );
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(D0 -=> X)=(0, 0);
(D1 -=> X)=(0, 0);
(D2 -=> X)=(0, 0);
(D3 -=> X)=(0, 0);
(D4 -=> X)=(0, 0);
(D5 -=> X)=(0, 0);
(D6 -=> X)=(0, 0);
(D7 -=> X)=(0, 0);
(S0 -=> X)=(0, 0);
(S1 -=> X)=(0, 0);
(S2 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
