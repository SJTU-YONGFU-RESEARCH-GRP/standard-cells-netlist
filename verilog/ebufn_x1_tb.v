`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, te_b;
  ebufn_x1 dut (.X(out), .A(in0), .EN(te_b));
  initial begin
      in0=1'b0; te_b=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "EBUFN mismatch");
      in0=1'b1; te_b=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "EBUFN mismatch");
      in0=1'b0; te_b=1'b1;
      #1;
      if (out !== 1'bz) $fatal(1, "EBUFN high-Z");
      in0=1'b1; te_b=1'b1;
      #1;
      if (out !== 1'bz) $fatal(1, "EBUFN high-Z");
    $display("TB_PASS %s", "ebufn_x1");
    $finish(0);
  end
endmodule
