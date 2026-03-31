`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE, EN;
  wire Q;
  fsdphq_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE), .EN(EN));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    EN = 0; D = 0; SI = 1; SE = 0; @(posedge CK); #1;EN = 1; SE = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FSDPHQ");
    $display("TB_PASS %s", "fsdphq_x1");
    $finish(0);
  end
endmodule
