# Standard cells

## Table of Contents

- [Drive strengths](#drive-strengths)
- [Combinational cells](#combinational-cells)
- [Sequential cells](#sequential-cells)
- [ECO cells](#eco-cells)
- [Power management cells](#power-management-cells)

To print the same list from the CLI:

```bash
./stdcell-gen.sh list-cells
```

## Drive strengths

Most logic kinds are emitted with a symbolic drive encoded in the module / subcircuit name (for example `inv_x4`).

| # | Drive  | Meaning (SPICE templates)                           |
|--:|--------|-----------------------------------------------------|
| 1 | **X1** | Single pull-up / pull-down leg (per template stack) |
| 2 | **X2** | Two parallel legs                                   |
| 3 | **X4** | Four parallel legs                                  |
| 4 | **X8** | Eight parallel legs                                 |
| . | ....   | ...                                                 |
| N | **XN** | N parallel legs                                     |

---

## Combinational cells

### Combinational cell list

| # | Group | Name | Description | Bitwise (Verilog) |
|---:|--------|------|-------------|-------------------|
| 1 | Inverter | `INV` | Inverter | `out = ~in0` |
| 2 | Buffer | `BUF` | Buffer | `out = in0` |
| 3 | Delay | `DLY` | Delay buffer: same logic as `BUF` | `out = in0` |
| 4 | Tristate | `EBUFN` | Tristate buffer, active-low enable `te_b`; SPICE ports `in0`, `te_b`, `out` | `bufif0 (out, in0, te_b)` |
| 5 | Tristate | `EINVN` | Tristate inverter, active-low `te_b`; SPICE ports `in0`, `te_b`, `out` | `notif0 (out, in0, te_b)` |
| 6 | Tristate | `BUFTS` | Tristate buffer, active-high enable `en` | `bufif1 (out, in0, en)` |
| 7 | NAND | `NAND2` | 2-input NAND | `out = ~(in0 & in1)` |
| 8 | NAND | `NAND2I` | 2-input NAND; same Boolean as `NAND2`; one input inverted at the pin (bubble) | `out = ~(in0 & in1)` |
| 9 | NAND | `NAND3` | 3-input NAND | `out = ~(in0 & in1 & in2)` |
| 10 | NAND | `NAND3I` | 3-input NAND; `in0` inverted in the Boolean | `out = ~((~in0) & in1 & in2)` |
| 11 | NAND | `NAND4` | 4-input NAND | `out = ~(in0 & in1 & in2 & in3)` |
| 12 | NAND | `NAND4I` | 4-input NAND; `in0` inverted in the Boolean | <code>out = ~((~in0) & in1 & in2 & in3)</code> |
| 13 | NOR | `NOR2` | 2-input NOR | <code>out = ~(in0 &#124; in1)</code> |
| 14 | NOR | `NOR2I` | 2-input NOR; same Boolean as `NOR2`; one input inverted at the pin (bubble) | <code>out = ~(in0 &#124; in1)</code> |
| 15 | NOR | `NOR3` | 3-input NOR | <code>out = ~(in0 &#124; in1 &#124; in2)</code> |
| 16 | NOR | `NOR3I` | 3-input NOR; `in0` inverted in the Boolean | <code>out = ~((~in0) &#124; in1 &#124; in2)</code> |
| 17 | NOR | `NOR4` | 4-input NOR | <code>out = ~(in0 &#124; in1 &#124; in2 &#124; in3)</code> |
| 18 | AND | `AND2` | 2-input AND | `out = in0 & in1` |
| 19 | AND | `AND3` | 3-input AND | `out = in0 & in1 & in2` |
| 20 | AND | `AND4` | 4-input AND | `out = in0 & in1 & in2 & in3` |
| 21 | AND | `AND3I` | 3-input AND; `in0` inverted in the Boolean | <code>out = (~in0) & in1 & in2</code> |
| 22 | AND | `AND4I` | 4-input AND; `in0` inverted in the Boolean | <code>out = (~in0) & in1 & in2 & in3</code> |
| 23 | OR | `OR2` | 2-input OR | <code>out = in0 &#124; in1</code> |
| 24 | OR | `OR3` | 3-input OR | <code>out = in0 &#124; in1 &#124; in2</code> |
| 25 | OR | `OR3I` | 3-input OR; `in0` inverted in the Boolean | <code>out = (~in0) &#124; in1 &#124; in2</code> |
| 26 | OR | `OR4` | 4-input OR | <code>out = in0 &#124; in1 &#124; in2 &#124; in3</code> |
| 27 | OR | `OR4I` | 4-input OR; `in0` inverted in the Boolean | <code>out = (~in0) &#124; in1 &#124; in2 &#124; in3</code> |
| 28 | XOR | `XOR2` | 2-input XOR | `out = in0 ^ in1` |
| 29 | XNOR | `XNOR2` | 2-input XNOR | `out = ~(in0 ^ in1)` |
| 30 | XOR | `XOR3` | 3-input XOR (odd parity) | `out = in0 ^ in1 ^ in2` |
| 31 | XNOR | `XNOR3` | 3-input XNOR (even parity) | `out = ~(in0 ^ in1 ^ in2)` |
| 32 | XOR | `XOR4` | 4-input XOR (odd parity) | `out = in0 ^ in1 ^ in2 ^ in3` |
| 33 | XNOR | `XNOR4` | 4-input XNOR (even parity) | `out = ~(in0 ^ in1 ^ in2 ^ in3)` |
| 34 | AND-OR | `AO21` | AND-OR-21; non-inverting sum (AOI core + output inverter) | <code>out = (in0 & in1) &#124; in2</code> |
| 35 | AND-OR | `AO21I` | AND-OR-21I; last OR input inverted (`~in2`) vs `AO21` | <code>out = (in0 & in1) &#124; (~in2)</code> |
| 36 | AND-OR | `AO211` | AND-OR-211 | <code>out = (in0 & in1) &#124; in2 &#124; in3</code> |
| 37 | AND-OR | `AO2111` | AND-OR-2111 | <code>out = (in0 & in1) &#124; in2 &#124; in3 &#124; in4</code> |
| 38 | AND-OR | `AO221` | AND-OR-221 | <code>out = (in0 & in1) &#124; (in2 & in3) &#124; in4</code> |
| 39 | AND-OR | `AO2II2` | AND-OR-22I; both inputs inverted on the first 2-wide AND leg | <code>out = ((~in0) & (~in1)) &#124; (in2 & in3)</code> |
| 40 | AND-OR | `AO31` | AND-OR-31 | <code>out = (in0 & in1 & in2) &#124; in3</code> |
| 41 | AND-OR | `AO311` | AND-OR-311 | <code>out = (in0 & in1 & in2) &#124; in3 &#124; in4</code> |
| 42 | AND-OR | `AO32` | AND-OR-32 | <code>out = (in0 & in1 & in2) &#124; (in3 & in4)</code> |
| 43 | AND-OR | `AO41` | AND-OR-41 | <code>out = (in0 & in1 & in2 & in3) &#124; in4</code> |
| 44 | AND-OR-INVERT | `AOI21` | AND-OR-INVERT-21 | <code>out = ~((in0 & in1) &#124; in2)</code> |
| 45 | AND-OR-INVERT | `AOI21I` | AND-OR-INVERT-21I; last OR leg inverted before the NAND | <code>out = ~((in0 & in1) &#124; (~in2))</code> |
| 46 | AND-OR-INVERT | `AOI22` | AND-OR-INVERT-22 | <code>out = ~((in0 & in1) &#124; (in2 & in3))</code> |
| 47 | AND-OR-INVERT | `AOI211` | AND-OR-INVERT-211 | <code>out = ~(((in0 & in1) &#124; in2 &#124; in3))</code> |
| 48 | AND-OR-INVERT | `AOI221` | AND-OR-INVERT-221 | <code>out = ~((in0 & in1) &#124; (in2 & in3) &#124; in4)</code> |
| 49 | AND-OR-INVERT | `AOI222` | AND-OR-INVERT-222 | <code>out = ~((in0 & in1) &#124; (in2 & in3) &#124; (in4 & in5))</code> |
| 50 | AND-OR-INVERT | `AOI31` | AND-OR-INVERT-31 | <code>out = ~((in0 & in1 & in2) &#124; in3)</code> |
| 51 | AND-OR-INVERT | `AOI311` | AND-OR-INVERT-311 | <code>out = ~((in0 & in1 & in2) &#124; in3 &#124; in4)</code> |
| 52 | AND-OR-INVERT | `AOI32` | AND-OR-INVERT-32 | <code>out = ~((in0 & in1 & in2) &#124; (in3 & in4))</code> |
| 53 | AND-OR-INVERT | `AOI41` | AND-OR-INVERT-41 | <code>out = ~((in0 & in1 & in2 & in3) &#124; in4)</code> |
| 54 | OR-AND | `OA21` | OR-AND-21 | <code>out = (in0 &#124; in1) & in2</code> |
| 55 | OR-AND | `OA21I` | OR-AND-21I; last AND input inverted (`~in2`) vs `OA21` | <code>out = (in0 &#124; in1) & (~in2)</code> |
| 56 | OR-AND | `OA211` | OR-AND-211 | <code>out = (in0 &#124; in1) & in2 & in3</code> |
| 57 | OR-AND | `OA2111` | OR-AND-2111 | <code>out = (in0 &#124; in1) & in2 & in3 & in4</code> |
| 58 | OR-AND | `OA22` | OR-AND-22 | <code>out = (in0 &#124; in1) & (in2 &#124; in3)</code> |
| 59 | OR-AND | `OA221` | OR-AND-221 | <code>out = (in0 &#124; in1) & (in2 &#124; in3) & in4</code> |
| 60 | OR-AND | `OA2II2` | OR-AND-22I; both inputs inverted on the first 2-wide OR leg | <code>out = ((~in0) &#124; (~in1)) & (in2 &#124; in3)</code> |
| 61 | OR-AND | `OA31` | OR-AND-31 | <code>out = (in0 &#124; in1 &#124; in2) & in3</code> |
| 62 | OR-AND | `OA311` | OR-AND-311 | <code>out = (in0 &#124; in1 &#124; in2) & in3 & in4</code> |
| 63 | OR-AND | `OA32` | OR-AND-32 | <code>out = (in0 &#124; in1 &#124; in2) & (in3 &#124; in4)</code> |
| 64 | OR-AND-INVERT | `OAI21` | OR-AND-INVERT-21 | <code>out = ~((in0 &#124; in1) & in2)</code> |
| 65 | OR-AND-INVERT | `OAI21I` | OR-AND-INVERT-21I; last AND leg inverted before the NOR | <code>out = ~((in0 &#124; in1) & (~in2))</code> |
| 66 | OR-AND-INVERT | `OAI22` | OR-AND-INVERT-22 | <code>out = ~((in0 &#124; in1) & (in2 &#124; in3))</code> |
| 67 | OR-AND-INVERT | `OAI211` | OR-AND-INVERT-211 | <code>out = ~((in0 &#124; in1) & in2 & in3)</code> |
| 68 | OR-AND-INVERT | `OAI2111` | OR-AND-INVERT-2111 | <code>out = ~((in0 &#124; in1) & in2 & in3 & in4)</code> |
| 69 | OR-AND-INVERT | `OAI221` | OR-AND-INVERT-221 | <code>out = ~((in0 &#124; in1) & (in2 &#124; in3) & in4)</code> |
| 70 | OR-AND-INVERT | `OAI222` | OR-AND-INVERT-222 | <code>out = ~((in0 &#124; in1) & (in2 &#124; in3) & (in4 &#124; in5))</code> |
| 71 | OR-AND-INVERT | `OAI31` | OR-AND-INVERT-31 | <code>out = ~((in0 &#124; in1 &#124; in2) & in3)</code> |
| 72 | OR-AND-INVERT | `OAI311` | OR-AND-INVERT-311 | <code>out = ~((in0 &#124; in1 &#124; in2) & in3 & in4)</code> |
| 73 | OR-AND-INVERT | `OAI32` | OR-AND-INVERT-32 | <code>out = ~((in0 &#124; in1 &#124; in2) & (in3 &#124; in4))</code> |
| 74 | AOAI | `AOAI211` | AND-OR-AND-INVERT-211 | <code>out = ~((((in0 & in1) &#124; in2) & in3))</code> |
| 75 | OAOI | `OAOI211` | OR-AND-OR-INVERT-211 | <code>out = ~((((in0 &#124; in1) & in2) &#124; in3))</code> |
| 76 | Adder | `ADDF42` | Arithmetic: 4:2 adder compressor (`S`,`CO`,`ICO`) | <code>S=A^B^C^D^CI, CO=((A^B^C)&D)&#124;((A^B^C)&CI)&#124;(D&CI), ICO=(A&B)&#124;(A&C)&#124;(B&C)</code> |
| 77 | Adder | `ADDF` | Arithmetic: full-adder style (`S`,`CO`) | <code>S=A^B^CI, CO=(A&B)&#124;(A&CI)&#124;(B&CI)</code> |
| 78 | Adder | `ADDFCII` | Arithmetic: full-adder with inverted carry-in effect (`S`,`CO`) | <code>S=A^B^(~CI), CO=(A&B)&#124;(A&~CI)&#124;(B&~CI)</code> |
| 79 | Adder | `ADDFCOI` | Arithmetic: full-adder with inverted carry-out (`S`,`CO`) | <code>S=A^B^CI, CO=~((A&B)&#124;(A&CI)&#124;(B&CI))</code> |
| 80 | Adder | `ADDFCSCII` | Arithmetic: carry-select adder with inverted carry-in branches (`S`,`CO0`,`CO1`) | <code>S=(~CS&(A^B^~CI0))&#124;(CS&(A^B^~CI1)), CO0=(A&B)&#124;(A&~CI0)&#124;(B&~CI0), CO1=(A&B)&#124;(A&~CI1)&#124;(B&~CI1)</code> |
| 81 | Adder | `ADDFCSCOI` | Arithmetic: carry-select adder with inverted carry-out branches (`S`,`CO0`,`CO1`) | <code>S=(~CS&(A^B^CI0))&#124;(CS&(A^B^CI1)), CO0=~((A&B)&#124;(A&CI0)&#124;(B&CI0)), CO1=~((A&B)&#124;(A&CI1)&#124;(B&CI1))</code> |
| 82 | Adder | `ADDH` | Arithmetic: half-adder style (`S`,`CO`) | <code>S=A^B, CO=A&B</code> |
| 83 | Adder | `ADDHII` | Arithmetic: half-adder with inverted `B` (`S`,`CO`) | <code>S=A^(~B), CO=A&(~B)</code> |
| 84 | Adder | `ADDHCOI` | Arithmetic: half-adder with inverted carry-out (`S`,`CO`) | <code>S=A^B, CO=~(A&B)</code> |
| 85 | Adder | `ADDHCSCOI` | Arithmetic: half-adder carry/polarity variant (`S`,`CO0`,`CO1`) | <code>S=A^B^CI, CO0=~(A&B), CO1=~(A&#124;B)</code> |
| 86 | Majority | `MAJ3` | Arithmetic/logic: 3-input majority (`X`) | <code>X=(A1&A2)&#124;(A1&A3)&#124;(A2&A3)</code> |
| 87 | Majority | `MAJI` | Arithmetic/logic: inverted 3-input majority (`X`) | <code>X=~((A1&A2)&#124;(A1&A3)&#124;(A2&A3))</code> |
| 88 | Subtractor | `SUBH` | Arithmetic: subtractor-half style dual-output macro | <code>sum = ~(in0 ^ in1), cout = in0 &#124; in1</code> |
| 89 | Multiplier | `MULT2X2` | Arithmetic: 2×2 unsigned multiplier (HDL-only) | N/A (vector-product macro) |
| 90 | Multiplier | `MULT4X4` | Arithmetic: 4×4 unsigned multiplier (HDL-only) | N/A (vector-product macro) |
| 91 | Mux | `MUX2` | Multiplexer: 2:1 | `out = sel ? in1 : in0` |
| 92 | Mux | `MUX2DI` | Multiplexer: 2:1 with inverted `in0` leg | `out = sel ? in1 : ~in0` |
| 93 | Mux | `MUX2I` | Multiplexer: inverting 2:1 | `out = ~(sel ? in1 : in0)` |
| 94 | Mux | `MUX3` | Multiplexer: 3:1, binary select (`11` maps to `in2`) | `out = sel1 ? in2 : (sel0 ? in1 : in0)` |
| 95 | Mux | `MUX4` | Multiplexer: 4:1 | `out = (~sel1 & ~sel0) ? in0 : (~sel1 & sel0) ? in1 : (sel1 & ~sel0) ? in2 : in3` |
| 96 | Mux | `MUX4I` | Multiplexer: inverting 4:1 | <code>out = ~((~sel1 & ~sel0) ? in0 : (~sel1 & sel0) ? in1 : (sel1 & ~sel0) ? in2 : in3)</code> |
| 97 | Mux | `MUX8` | Multiplexer: 8:1, sel2:sel0 binary select | N/A (indexed mux macro) |
| 98 | Mux | `MUX8I` | Multiplexer: inverting 8:1, sel2:sel0 binary select | <code>out = ~mux8(sel2:sel0, in0..in7)</code> |
| 99 | Mux | `MUX16` | Multiplexer: 16:1, sel3:sel0 binary select | N/A (indexed mux macro) |
| 100 | Mux | `BMUX` | Multiplexer helper: boolean mux macro | <code>out = X ? (M1 ? ~A : ~S) : (M0 ? ~A : ~S)</code> |
| 101 | Mux | `BMUXI` | Multiplexer helper: inverting BMUX | <code>out = ~(X ? (M1 ? ~A : ~S) : (M0 ? ~A : ~S))</code> |
| 102 | Encoder | `BENC` | Encoder: Boolean encoder (3 outputs) | <code>S=(~M2)&(M1&#124;M0), A=M2&((~M1)&#124;(~M0)), X=~(M1^M0)</code> |

---

## Sequential cells

Rows are ordered by **group**: **LD latch** (all `LD*` cells, low-active gate then high-active gate), **F flop** (plain flops then Q-only async reset/set), **F scan** (plain scan flops then Q-only async), **Sync clear** last.

| # | Group | Name | Description | `ref_lib` Verilog stem |
|--:|-------|------|-------------|------------------------|
| 1 | LD latch | `LDNQ` | D latch, **transparent while G low**, Q only (matches `LIB_LDNQ`: latch enabled by ~G) | `LIB_LDNQ_*` |
| 2 | LD latch | `LDNRBQ` | D latch + async active-low reset RD; **transparent while G low**, Q only | `LIB_LDNRBQ_*` |
| 3 | LD latch | `LDNSBQ` | D latch + async active-low set SD; **transparent while G low**, Q only | `LIB_LDNSBQ_*` |
| 4 | LD latch | `LDPRBQ` | D latch + async active-low reset RD; transparent while **G high**, Q only | `LIB_LDPRBQ_*` |
| 5 | LD latch | `LDPSBQ` | D latch + async active-low set SD; transparent while **G high**, Q only | `LIB_LDPSBQ_*` |
| 6 | LD latch | `LDPQ` | D latch, transparent while **G high**, Q only (matches `LIB_LDPQ`) | `LIB_LDPQ_*` |
| 7 | F flop | `FDP` | D flip-flop: Q/QN from D on posedge CK | `LIB_FDP_*` |
| 8 | F flop | `FDPQ` | D flip-flop: Q from D on posedge CK | `LIB_FDPQ_*` |
| 9 | F flop | `FDPHQ` | D flip-flop with enable EN: Q captures D on posedge CK when EN=1 | `LIB_FDPHQ_*` |
| 10 | F flop | `FDPMQ` | D flip-flop with data mux: Q captures (S ? D1 : D0) on posedge CK | `LIB_FDPMQ_*` |
| 11 | F flop | `FDPRB` | D flip-flop + async active-low reset RD: Q/QN outputs | `LIB_FDPRB_*` |
| 12 | F flop | `FDPRBQ_F` | D flip-flop + async active-low reset RD: Q output only | `LIB_FDPRBQ_F_*` |
| 13 | F flop | `FDPRBSBQ` | D flip-flop + async active-low reset RD and set SD: Q output only | `LIB_FDPRBSBQ_*` |
| 14 | F flop | `FDNQ` | D flip-flop: Q from D on negedge CK | `LIB_FDNQ_*` |
| 15 | F flop | `FDNRBQ` | D flip-flop + async active-low reset RD: Q from D on negedge CK | `LIB_FDNRBQ_*` |
| 16 | F flop | `FDNSBQ` | D flip-flop + async active-low set SD: Q from D on negedge CK | `LIB_FDNSBQ_*` |
| 17 | F flop (Q only, async) | `FDPRBQ` | D flip-flop + async active-low reset RD, Q output only | `LIB_FDPRBQ_*` |
| 18 | F flop (Q only, async) | `FDPSBQ` | D flip-flop + async active-low set SD, Q output only | `LIB_FDPSBQ_*` |
| 19 | F scan | `FSDP` | Scan D flip-flop: Q/QN from (SE ? SI : D) on posedge CK | `LIB_FSDP_*` |
| 20 | F scan | `FSDPQ` | Scan D flip-flop: Q from (SE ? SI : D) on posedge CK | `LIB_FSDPQ_*` |
| 21 | F scan | `FSDPQ_F` | Scan D flip-flop (F variant): Q from (SE ? SI : D) on posedge CK | `LIB_FSDPQ_F_*` |
| 22 | F scan | `FSDPQB_F` | Scan D flip-flop (F variant): QN = ~(SE ? SI : D) on posedge CK | `LIB_FSDPQB_F_*` |
| 23 | F scan | `FSDPHQ` | Scan D flip-flop with enable EN: Q captures (SE ? SI : D) on posedge CK when EN=1 | `LIB_FSDPHQ_*` |
| 24 | F scan | `FSDPHQ_FFS` | Scan D flip-flop with enable EN (FFS variant): same data path as `FSDPHQ` | `LIB_FSDPHQ_FFS_*` |
| 25 | F scan | `FSDPMQ` | Scan D flip-flop with data mux: Q captures (SE ? SI : (S ? D1 : D0)) on posedge CK | `LIB_FSDPMQ_*` |
| 26 | F scan | `FSDPRB` | Scan D flip-flop + async active-low reset RD: Q/QN outputs | `LIB_FSDPRB_*` |
| 27 | F scan | `FSDPRBQ_F` | Scan D flip-flop + async active-low reset RD (F variant): Q output only | `LIB_FSDPRBQ_F_*` |
| 28 | F scan | `FSDPRBQ_FV1` | Scan D flip-flop + async active-low reset RD (FV1 variant): Q output only | `LIB_FSDPRBQ_FV1_*` |
| 29 | F scan | `FSDPRBSBQ` | Scan D flip-flop + async active-low reset RD and set SD: Q output only | `LIB_FSDPRBSBQ_*` |
| 30 | F scan | `FSDNQ` | Scan D flip-flop: Q from (SE ? SI : D) on negedge CK | `LIB_FSDNQ_*` |
| 31 | F scan | `FSDNRBQ` | Scan D flip-flop + async active-low reset RD: Q from (SE ? SI : D) on negedge CK | `LIB_FSDNRBQ_*` |
| 32 | F scan | `FSDNSBQ` | Scan D flip-flop + async active-low set SD: Q from (SE ? SI : D) on negedge CK | `LIB_FSDNSBQ_*` |
| 33 | F scan (Q only, async) | `FSDPRBQ` | Scan D flip-flop + async active-low reset RD, Q output only | `LIB_FSDPRBQ_*` |
| 34 | F scan (Q only, async) | `FSDPSBQ` | Scan D flip-flop + async active-low set SD, Q output only | `LIB_FSDPSBQ_*` |
| 35 | Sync clear | `FDPCBQ` | D flip-flop with synchronous clear RS on posedge CK: Q <= D & RS | `LIB_FDPCBQ_*` |
| 36 | Sync clear | `FDPHCBQ` | D flip-flop with enable EN and synchronous clear RS on posedge CK | `LIB_FDPHCBQ_*` |
| 37 | Sync clear | `FSDPCBQ` | Scan flop + RS on posedge CK: Q <= (SE ? SI : D) & RS | `LIB_FSDPCBQ_*` |
| 38 | Sync clear | `FSDPHCBQ` | Scan flop with EN and RS on posedge CK | `LIB_FSDPHCBQ_*` |

---

## ECO cells

| # | Group | Name | Description | Bitwise (Verilog) |
|--:|-------|------|-------------|-------------------|
| 1 | Antenna | `ANTENNANP` | Antenna diode NP: port `A` | N/A (physical cell) |
| 2 | Decap | `DECAP` | Decoupling capacitor cell, no pins; use **`decap_x1`** … **`decap_x8`** (`--drive X1` … `X8`) — same netlist, different stem for layout size. | N/A (physical cell) |
| 3 | Fill | `FILL` | Fill cell, no pins; use **`fill_x1`** … **`fill_x8`** — same netlist, different stem for layout size. | N/A (physical cell) |
| 4 | Hold | `SIGHOLD` | Hold-state cell, pin `SH` inout | N/A (physical cell) |
| 5 | Tie | `TIEHI` | Tie-high output `L_HI = 1` | `L_HI = 1'b1` |
| 6 | Tie | `TIELO` | Tie-low output `L_LO = 0` | `L_LO = 1'b0` |
| 7 | Tie | `TIEDIN` | Tie diode/input anchor: port `X` (SPICE/CDL templates include rails) | N/A (physical cell) |
| 8 | Substrate tie | `TIESUB` | Substrate tie, rails `VDD`/`VSS` (`LIBHPD_TIESUB` family in `ref_lib`) | N/A (physical cell) |
| 9 | Tap | `TAPDS` | Row tap / strap, rails `VDD`/`VSS` (`LIB_TAP_DS` family in `ref_lib`) | N/A (physical cell) |
| 10 | Tap | `TAPDN` | Tap cell, rails `VDD`/`VSS` plus body-bias `VBN` | N/A (physical cell) |
| 11 | Tap | `TAPPN` | Tap cell, rails `VDD`/`VSS` plus body-bias `VBP`/`VBN` (`LIBHPD_TAPPN` family) | N/A (physical cell) |
| 12 | Tap | `TAPPP` | Tap cell, rails `VDD`/`VSS` plus always-on rail `VDDR` (`LIBHPD_TAPPP` family) | N/A (physical cell) |


---

## Power management cells

Power-rail taps and level shifters share multi-supply / cross-domain concerns; code groups them in `POWER_MANAGEMENT_CELL_KINDS`.

| # | Name             | Description |
|--:|------------------|-------------|
| 15 | Power-gate fill | `PGATFILL` | Power-gate **header** filler / strap (`LIBHPD_PGATFILL_*`, port `ENXB`); reference family (prefix stripped), not yet mapped to `CellKind` |
| 16 | Power-gate fill | `PGATBFILL` | Power-gate **footer** filler (`LIBHPD_PGATBFILL_*`, ports `EN`/`ENX`); reference family (prefix stripped), not yet mapped to `CellKind` |
| 17 | Power-gate driver | `PGATDRV` | Power-gate **header** driver (`LIBHPD_PGATDRV_*`, port `ENXB`); reference family (prefix stripped), not yet mapped to `CellKind` |
| 18 | Power-gate driver | `PGATBDRV` | Power-gate **footer** driver (`LIBHPD_PGATBDRV_*`, ports `EN`/`ENX`); reference family (prefix stripped), not yet mapped to `CellKind` |
| 1 | `PWR_HEADER`     | Row header / power strap tap: inout VDD, VDDH, VSS (domain vs core) |
| 2 | `PWR_FOOTER`     | Row footer / power strap tap: inout VDD, VDDH, VSS |
| 3 | `PWR_MANAGEMENT` | Power-management / isolation anchor (abstract): VDD, VDDH, VSS |
| 1 | `LS_L2H` | Level shifter low→high: in0 (VDDL domain), out (VDDH domain); VDDL, VDDH, VSS |
| 2 | `LS_H2L` | Level shifter high→low: in0 (VDDH domain), out (VDDL domain); VDDL, VDDH, VSS |
| 3 | `LVLDBUF` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 4 | `LVLDBUFE0` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 5 | `LVLDINV` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 6 | `LVLDINVE1` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 7 | `ISOS0CL1` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 8 | `ISOS1CL0` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 9 | `FSB2DPQ` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 10 | `FSB2DPRBQ` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 11 | `FSB2DPSBQ` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 12 | `BUF_PSW` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 13 | `BUF_PW` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 14 | `INV_PSW` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 15 | `INV_PW` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 16 | `ND2_PSW` | reference family (prefix stripped), not yet mapped to `CellKind` |
| 17 | `NR2_PSW` | reference family (prefix stripped), not yet mapped to `CellKind` |

---
