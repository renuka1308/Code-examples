// Code your testbench here
// or browse Examples

module tb_mux_2to1;
  reg a;
  reg b;
  reg sel;
  wire y;

  // Instantiate the 2:1 multiplexer
  mux_2to1 uut (
    .a(a),
    .b(b),
    .sel(sel),
    .y(y)
  );

  initial begin
    $dumpfile("mux_2to1.vcd");
    $dumpvars(0,tb_mux_2to1);
    // Initialize inputs
    a = 0; b = 0; sel = 0;
    #10 sel = 1;
    #10 a = 1;
    #10 b = 1;
    #10 sel = 0;
    #10 sel = 1;
    #10 $finish;
  end

  initial
    $monitor($time, " a=%b, b=%b, sel=%b, y=%b", a, b, sel, y);

endmodule
