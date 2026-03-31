`timescale 1ns/1ps
module tb;
  wire sh;
  sighold_x1 dut (.SH(sh));
  initial begin #1;
    $display("TB_PASS %s", "sighold_x1");
    $finish(0);
  end
endmodule
