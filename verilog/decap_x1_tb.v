`timescale 1ns/1ps
module tb;
  decap_x1 dut ();
  initial begin #1;
    $display("TB_PASS %s", "decap_x1");
    $finish(0);
  end
endmodule
