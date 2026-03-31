`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, en;
  bufts_x1 dut (.X(out), .A(in0), .EN(en));
  initial begin
      in0=1'b0; en=1'b0;
      #1;
      if (out !== 1'bz) $fatal(1, "BUFTS high-Z");
      in0=1'b1; en=1'b0;
      #1;
      if (out !== 1'bz) $fatal(1, "BUFTS high-Z");
      in0=1'b0; en=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "BUFTS mismatch");
      in0=1'b1; en=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "BUFTS mismatch");
    $display("TB_PASS %s", "bufts_x1");
    $finish(0);
  end
endmodule
