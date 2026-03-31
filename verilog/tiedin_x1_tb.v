`timescale 1ns/1ps
module tb;
  reg x;
  tiedin_x1 dut (.X(x));
  initial begin
    x = 1'b0; #1;
    x = 1'b1; #1;
    $display("TB_PASS %s", "tiedin_x1");
    $finish(0);
  end
endmodule
