`timescale 1ns/1ps
module tb;
  reg CK, D0, D1, S, SI, SE;
  wire Q;
  fsdpmq_x1 dut (.Q(Q), .CK(CK), .D0(D0), .D1(D1), .S(S), .SI(SI), .SE(SE));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D0 = 0; D1 = 1; S = 0; SI = 1; SE = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FSDPMQ dsel");
    SE = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FSDPMQ scan");
    $display("TB_PASS %s", "fsdpmq_x1");
    $finish(0);
  end
endmodule
