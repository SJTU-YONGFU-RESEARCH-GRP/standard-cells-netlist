`timescale 1ns/1ps
module tb;
  wire out;
  reg a, en;
  lvldbufe0_x1 dut (.X(out), .A(a), .EN(en));
  initial begin
      a=1'b0; en=1'b0;
      #1;
      if (out !== (((a & en)) & 1'b1)) $fatal(1, "LVLDBUFE0 mismatch vec=%0d", 0);
      a=1'b1; en=1'b0;
      #1;
      if (out !== (((a & en)) & 1'b1)) $fatal(1, "LVLDBUFE0 mismatch vec=%0d", 1);
      a=1'b0; en=1'b1;
      #1;
      if (out !== (((a & en)) & 1'b1)) $fatal(1, "LVLDBUFE0 mismatch vec=%0d", 2);
      a=1'b1; en=1'b1;
      #1;
      if (out !== (((a & en)) & 1'b1)) $fatal(1, "LVLDBUFE0 mismatch vec=%0d", 3);
    $display("TB_PASS %s", "lvldbufe0_x1");
    $finish(0);
  end
endmodule
