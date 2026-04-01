`timescale 1ns/1ps
module tb;
  wire out;
  reg a;
  inv_pw_x1 dut (.X(out), .A(a));
  initial begin
      a=1'b0;
      #1;
      if (out !== ((~a) & 1'b1)) $fatal(1, "INV_PW mismatch vec=%0d", 0);
      a=1'b1;
      #1;
      if (out !== ((~a) & 1'b1)) $fatal(1, "INV_PW mismatch vec=%0d", 1);
    $display("TB_PASS %s", "inv_pw_x1");
    $finish(0);
  end
endmodule
