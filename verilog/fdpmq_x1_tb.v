`timescale 1ns/1ps
module tb;
  reg CK, D0, D1, S;
  wire Q;
  fdpmq_x1 dut (.Q(Q), .CK(CK), .D0(D0), .D1(D1), .S(S));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D0 = 0; D1 = 1; S = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FDPMQ d0");
    S = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPMQ d1");
    $display("TB_PASS %s", "fdpmq_x1");
    $finish(0);
  end
endmodule
