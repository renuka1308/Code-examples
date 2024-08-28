module tb;

  reg d;
  reg clk;
  reg rst;
  wire q;

  // Instantiate the D flip-flop
  d_ff d0 (
    .d(d), 
    .clk(clk),
    .rst(rst),
    .q(q)
  );

  // Generate clock signal
  always #5 clk = ~clk;

  // Dump variables to a VCD file
  initial begin
    $dumpfile("d_ff.vcd");
    $dumpvars(0, tb);
  end 

  // Test cases
  initial begin 
    // Initialize signals
    d = 0;
    clk = 0;
    rst = 0;

    #10 rst = 1;  // Apply reset after 10 time units
    #10 rst = 0;  // Release reset after 10 time units

    #10 d = 1;    // Set D to 1 after 10 time units
    #10 d = 0;    

    #20 d = 1;   
    #20 d = 0;    

    #20 $finish;
  end

  // Monitor signals
  initial
    $monitor($time, " d = %b, rst = %b, q = %b", d, rst, q);

endmodule
