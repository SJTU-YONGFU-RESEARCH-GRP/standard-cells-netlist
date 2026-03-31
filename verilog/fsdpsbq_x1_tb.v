`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE, SD;
  wire Q;
  fsdpsbq_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE), .SD(SD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    SD = 0; #1; if (Q !== 1'b1) $fatal(1, "FSDPSBQ sd");
    SD = 1; SE = 1; SI = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FSDPSBQ scan");
    $display("TB_PASS %s", "fsdpsbq_x1");
    $finish(0);
  end
endmodule
