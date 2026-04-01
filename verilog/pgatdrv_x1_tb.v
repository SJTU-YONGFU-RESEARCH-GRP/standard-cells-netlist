`timescale 1ns/1ps
module tb;
  reg ENXB;
  pgatdrv_x1 dut (.ENXB(ENXB));
  initial begin
    ENXB = 1'b0; #1;
    ENXB = 1'b1; #1;
    $display("TB_PASS %s", "pgatdrv_x1");
    $finish(0);
  end
endmodule
