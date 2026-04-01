`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, in1, sel;
  mux2i_x1 dut (.X(out), .D0(in0), .D1(in1), .S(sel));
  initial begin
      in0=1'b0; in1=1'b0; sel=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2I mismatch vec=%0d", 0);
      in0=1'b1; in1=1'b0; sel=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2I mismatch vec=%0d", 1);
      in0=1'b0; in1=1'b1; sel=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2I mismatch vec=%0d", 2);
      in0=1'b1; in1=1'b1; sel=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2I mismatch vec=%0d", 3);
      in0=1'b0; in1=1'b0; sel=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2I mismatch vec=%0d", 4);
      in0=1'b1; in1=1'b0; sel=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2I mismatch vec=%0d", 5);
      in0=1'b0; in1=1'b1; sel=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2I mismatch vec=%0d", 6);
      in0=1'b1; in1=1'b1; sel=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2I mismatch vec=%0d", 7);
    $display("TB_PASS %s", "mux2i_x1");
    $finish(0);
  end
endmodule
