module tb;
  reg a;
  reg b;
  wire sum; 
  wire carry;
  
  // Instantiate DUT (Design Under Test) or UUT (Unit Under Test)
  half_adder uut (
    .a(a),
    .b(b),
    .sum(sum),
    .carry(carry)
  );
  
  initial begin 
    // Initialize and dump variables to VCD file
    $dumpfile("half_adder.vcd");
    $dumpvars(0, tb);
    
    // Apply test cases
    a = 1'b0; b = 1'b0;
    #5 a = 1'b0; b = 1'b1;
    #7 a = 1'b1; b = 1'b0;
    #4 a = 1'b1; b = 1'b1;
    #20 $finish;
  end

  // Monitor signals
  initial
    $monitor($time, " a = %b, b = %b, sum = %b, carry = %b", a, b, sum, carry);

endmodule

