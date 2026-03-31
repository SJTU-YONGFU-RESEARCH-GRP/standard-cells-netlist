`timescale 1ns/1ps
module tb;
  reg CK, D, SD;
  wire Q;
  fdpsbq_x1 dut (.Q(Q), .CK(CK), .D(D), .SD(SD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    SD = 0; D = 0; #1; if (Q !== 1'b1) $fatal(1, "FDPSBQ sd");
    SD = 1; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FDPSBQ d");
    $display("TB_PASS %s", "fdpsbq_x1");
    $finish(0);
  end
endmodule
