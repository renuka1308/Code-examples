// Code your testbench here
// or browse Examples

module tb_mux_4to1;
  reg a, b, c, d;
  reg [1:0] sel;
  wire y;

  // Instantiate the 4:1 multiplexer
  mux_4to1 uut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .sel(sel),
    .y(y)
  );

  initial begin
    $dumpfile("mux_4to1.vcd");
    $dumpvars(0,tb_mux_4to1);
    // Initialize inputs
    a = 0; b = 0; c = 0; d = 0; sel = 2'b00;
    
    #10 sel = 2'b00; a = 1;  
    #10 sel = 2'b01; b = 1;  
    #10 sel = 2'b10; c = 1;  
    #10 sel = 2'b11; d = 1;  
    
    #10 $finish;
  end

  initial
    $monitor($time, " a=%b, b=%b, c=%b, d=%b, sel=%b, y=%b", a, b, c, d, sel, y);

endmodule
