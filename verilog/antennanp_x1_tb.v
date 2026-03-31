`timescale 1ns/1ps
module tb;
  reg ra;
  antennanp_x1 dut (.A(ra));
  initial begin ra=0; #1; ra=1; #1;
    $display("TB_PASS %s", "antennanp_x1");
    $finish(0);
  end
endmodule
