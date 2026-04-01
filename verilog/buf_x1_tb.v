`timescale 1ns/1ps
module tb;
  wire out;
  reg in0;
  buf_x1 dut (.X(out), .A(in0));
  initial begin
      in0=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "BUF mismatch vec=%0d", 0);
      in0=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "BUF mismatch vec=%0d", 1);
    $display("TB_PASS %s", "buf_x1");
    $finish(0);
  end
endmodule
