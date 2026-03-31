`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE, RD, SD;
  wire Q;
  fsdprbsbq_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE), .RD(RD), .SD(SD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; SD = 1; #1; if (Q !== 1'b0) $fatal(1, "FSDPRBSBQ rd");
    RD = 1; SD = 0; #1; if (Q !== 1'b1) $fatal(1, "FSDPRBSBQ sd");
    SD = 1; SE = 1; SI = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FSDPRBSBQ scan");
    $display("TB_PASS %s", "fsdprbsbq_x1");
    $finish(0);
  end
endmodule
