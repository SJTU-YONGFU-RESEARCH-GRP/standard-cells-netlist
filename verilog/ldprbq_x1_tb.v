`timescale 1ns/1ps
module tb;
  reg G, D, RD;
  wire Q;
  ldprbq_x1 dut (.Q(Q), .G(G), .D(D), .RD(RD));
  initial begin
    RD = 0; G = 1; D = 1; #1; if (Q !== 1'b0) $fatal(1, "LDPRBQ rd");
    RD = 1; #1; if (Q !== 1'b1) $fatal(1, "LDPRBQ d");
    $display("TB_PASS %s", "ldprbq_x1");
    $finish(0);
  end
endmodule
