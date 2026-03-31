`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE;
  wire Q;
  fsdpq_f_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 0; SI = 1; SE = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FSDPQ d");
    SE = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FSDPQ si");
    $display("TB_PASS %s", "fsdpq_f_x1");
    $finish(0);
  end
endmodule
