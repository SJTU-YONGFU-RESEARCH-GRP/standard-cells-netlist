`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, in1, sel;
  mux2di_x1 dut (.X(out), .D0(in0), .D1(in1), .S(sel));
  initial begin
      in0=1'b0; in1=1'b0; sel=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2DI mismatch");
      in0=1'b1; in1=1'b0; sel=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2DI mismatch");
      in0=1'b0; in1=1'b1; sel=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2DI mismatch");
      in0=1'b1; in1=1'b1; sel=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2DI mismatch");
      in0=1'b0; in1=1'b0; sel=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2DI mismatch");
      in0=1'b1; in1=1'b0; sel=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "MUX2DI mismatch");
      in0=1'b0; in1=1'b1; sel=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2DI mismatch");
      in0=1'b1; in1=1'b1; sel=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "MUX2DI mismatch");
    $display("TB_PASS %s", "mux2di_x1");
    $finish(0);
  end
endmodule
