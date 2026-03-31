`timescale 1ns/1ps
module tb;
  reg CK, D, EN, RS;
  wire Q;
  fdphcbq_x1 dut (.Q(Q), .CK(CK), .D(D), .EN(EN), .RS(RS));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 1; EN = 1; RS = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FDPHCBQ clr");
    RS = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPHCBQ d");
    $display("TB_PASS %s", "fdphcbq_x1");
    $finish(0);
  end
endmodule
