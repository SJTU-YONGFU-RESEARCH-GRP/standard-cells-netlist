`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE, RD;
  wire Q;
  fsdprbq_fv1_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE), .RD(RD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; #1; if (Q !== 1'b0) $fatal(1, "FSDPRBQ_F rd");
    RD = 1; SI = 1; SE = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FSDPRBQ_F scan");
    $display("TB_PASS %s", "fsdprbq_fv1_x1");
    $finish(0);
  end
endmodule
