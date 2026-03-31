`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE, RD;
  wire Q, QN;
  fsdprb_x1 dut (.Q(Q), .QN(QN), .CK(CK), .D(D), .SI(SI), .SE(SE), .RD(RD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; D = 1; SI = 0; SE = 0; #1; if (Q !== 1'b0) $fatal(1, "FSDPRB rd");
    RD = 1; SE = 1; SI = 1; @(posedge CK); #1;if (Q !== 1'b1 || QN !== 1'b0) $fatal(1, "FSDPRB scan");
    $display("TB_PASS %s", "fsdprb_x1");
    $finish(0);
  end
endmodule
