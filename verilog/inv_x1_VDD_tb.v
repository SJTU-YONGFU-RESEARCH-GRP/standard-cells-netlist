`timescale 1ns/1ps
module tb;
  wire out;
  wire VDD;
  wire VSS;
  assign VDD = 1'b1;
  assign VSS = 1'b0;
  reg in0;
  inv_x1 dut (.X(out), .A(in0), .VDD(VDD), .VSS(VSS));
  initial begin
      in0=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "INV mismatch");
      in0=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "INV mismatch");
    $display("TB_PASS %s", "inv_x1");
    $finish(0);
  end
endmodule
