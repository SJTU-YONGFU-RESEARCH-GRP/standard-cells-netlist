`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, in1;
  nand2i_x1 dut (.X(out), .A(in0), .B(in1));
  initial begin
      in0=1'b0; in1=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "NAND2I mismatch vec=%0d", 0);
      in0=1'b1; in1=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "NAND2I mismatch vec=%0d", 1);
      in0=1'b0; in1=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "NAND2I mismatch vec=%0d", 2);
      in0=1'b1; in1=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "NAND2I mismatch vec=%0d", 3);
    $display("TB_PASS %s", "nand2i_x1");
    $finish(0);
  end
endmodule
