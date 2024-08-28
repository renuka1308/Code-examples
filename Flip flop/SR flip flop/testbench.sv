//Testbench for SR flipflop


module tb;

  reg s, r, clk;
  wire q, qn;

  // Instantiate the SR flip-flop
  sr_ff uut (
    .s(s),
    .r(r),
    .clk(clk),
    .q(q),
    .qn(qn)
  );

  // Generate clock signal
  always #5 clk = ~clk;

  // Initialize and apply test cases
  initial begin
    clk = 0;
    s = 0;
    r = 0;

    // Dump variables to VCD file
    $dumpfile("sr_ff.vcd");
    $dumpvars(0, tb);

   
    #10 s = 1; r = 0; // Set condition
    #10 s = 0; r = 1; // Reset condition
    #10 s = 0; r = 0; // No change
    #10 s = 1; r = 1; // Invalid state 

    // End simulation
    #20 $finish;
  end

  // Monitor signals
  initial
    $monitor("Time = %0t | s = %b | r = %b | q = %b | qn = %b", $time, s, r, q, qn);

endmodule
