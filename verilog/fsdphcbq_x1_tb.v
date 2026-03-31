`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE, EN, RS;
  wire Q;
  fsdphcbq_x1 dut (.Q(Q), .CK(CK), .D(D), .SI(SI), .SE(SE), .EN(EN), .RS(RS));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 1; SI = 0; SE = 0; EN = 1; RS = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FSDPHCBQ clr");
    RS = 1; SE = 1; SI = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FSDPHCBQ scan");
    $display("TB_PASS %s", "fsdphcbq_x1");
    $finish(0);
  end
endmodule
