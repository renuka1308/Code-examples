//TESTBENCH FOR JK FLIPFLOP

module tb;

  reg j, k, clk;
  wire q;

  // Instantiate the JK flip-flop
  jk_ff jk1 (
    .j(j),
    .k(k),
    .clk(clk),
    .q(q)
  );

  // Generate clock signal
  always #5 clk = ~clk;

  // Dump variables to a VCD file
  initial begin
    $dumpfile("jk_ff.vcd");
    $dumpvars(0, tb);
  end

  // Test cases
  initial begin
    j = 0;
    k = 0;
    clk = 0;

    #10 j = 0; k = 0;
    #10 j = 0; k = 1; 
    #10 j = 1; k = 0; 
    #10 j = 1; k = 1; 

    #20 $finish;
  end

  // Monitor signals
  initial
    $monitor($time, " j = %b, k = %b, q = %b", j, k, q);

endmodule
