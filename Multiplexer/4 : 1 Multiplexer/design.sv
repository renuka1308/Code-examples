// 4:1 mux

module mux_4to1 (
    input a, b, c, d,
    input [1:0] sel,
    output reg y
);

  always @(*) begin
    case(sel)
      2'b00: y = a;
      2'b01: y = b;
      2'b10: y = c;
      2'b11: y = d;
      default: y = 1'b0;
    endcase
  end

endmodule