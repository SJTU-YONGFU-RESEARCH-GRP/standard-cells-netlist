`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE;
  wire Q;
  fsdnq_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 0; SI = 1; SE = 1; @(negedge CK); #1;if (Q !== 1'b1) $fatal(1, "FSDNQ");
    $display("TB_PASS %s", "fsdnq_x1");
    $finish(0);
  end
endmodule
