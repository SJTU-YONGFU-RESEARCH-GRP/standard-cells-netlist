`timescale 1ns/1ps
module tb;
  reg G, D, SD;
  wire Q;
  ldnsbq_x1 dut (.Q(Q), .G(G), .D(D), .SD(SD));
  initial begin
    SD = 0; G = 0; D = 0; #1; if (Q !== 1'b1) $fatal(1, "LDNSBQ sd");
    SD = 1; G = 0; D = 0; #1; if (Q !== 1'b0) $fatal(1, "LDNSBQ d");
    $display("TB_PASS %s", "ldnsbq_x1");
    $finish(0);
  end
endmodule
