`timescale 1ns/1ps
module tb;
  wire out;
  reg a, en0;
  isos0cl1_x1 dut (.X(out), .A(a), .EN0(en0));
  initial begin
      a=1'b0; en0=1'b0;
      #1;
      if (out !== (((a | en0)) & 1'b1)) $fatal(1, "ISOS0CL1 mismatch vec=%0d", 0);
      a=1'b1; en0=1'b0;
      #1;
      if (out !== (((a | en0)) & 1'b1)) $fatal(1, "ISOS0CL1 mismatch vec=%0d", 1);
      a=1'b0; en0=1'b1;
      #1;
      if (out !== (((a | en0)) & 1'b1)) $fatal(1, "ISOS0CL1 mismatch vec=%0d", 2);
      a=1'b1; en0=1'b1;
      #1;
      if (out !== (((a | en0)) & 1'b1)) $fatal(1, "ISOS0CL1 mismatch vec=%0d", 3);
    $display("TB_PASS %s", "isos0cl1_x1");
    $finish(0);
  end
endmodule
