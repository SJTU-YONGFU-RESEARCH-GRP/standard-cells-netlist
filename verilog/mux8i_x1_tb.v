`timescale 1ns/1ps
module tb;
  wire out;
  reg [7:0] d;
  reg [2:0] sel;
  integer k, idx;
  mux8i_x1 dut (
    .X(out),
    .D0(d[0]),
    .D1(d[1]),
    .D2(d[2]),
    .D3(d[3]),
    .D4(d[4]),
    .D5(d[5]),
    .D6(d[6]),
    .D7(d[7]),
    .S0(sel[0]),
    .S1(sel[1]),
    .S2(sel[2])
  );
  initial begin
    for (k = 0; k < 64; k = k + 1) begin
      d = (k * 97 + 11) % (1 << 8);
      sel = (k / 4) % (1 << 3);
      #1;
      idx = sel;
      if (out !== (~((d >> idx) & 1'b1) & 1'b1))
        $fatal(1, "MUX wide mismatch vec=%0d", k);
    end
    $display("TB_PASS %s", "mux8i_x1");
    $finish(0);
  end
endmodule
