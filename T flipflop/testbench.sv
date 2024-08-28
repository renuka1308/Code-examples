module tb;

  reg t, clk, rst;
  wire q;

  // Instantiate the T flip-flop
  t_ff uut (
    .t(t),
    .clk(clk),
    .rst(rst),
    .q(q)
  );

  // Generate clock signal
  always #5 clk = ~clk;

  // Initialize and apply test cases
  initial begin
   
    clk = 0;
    rst = 0;
    t = 0;

    // Dump variables to VCD file
    $dumpfile("tff.vcd");
    $dumpvars(0, tb);

    #10 rst = 1; // Release reset after 10 time units
    #10 t = 1;   // Toggle the flip-flop
    #10 t = 0;   // No toggle, output should hold
    #10 t = 1;   // Toggle again
    #10 t = 0;   // No toggle, output should hold

    #20 $finish;
  end

  // Monitor signals
  initial
    $monitor("Time = %0t | t = %b | rst = %b | q = %b", $time, t, rst, q);

endmodule
