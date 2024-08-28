module tb;
  reg a,b,c;
  wire diff,borrow;
  
  //instantiate
  full_subtractor full_sub(.a(a),
                           .b(b),
                           .c(c),
                           .diff(diff),
                           .borrow(borrow));

    initial begin
      $dumpfile("full_subtractor.vcd");
    $dumpvars(0,tb);
      
  $monitor($time, 
           " a=%b,b=%b,c=%b,diff=%b,borrow=%b",
           a,b,c,diff,borrow);
  
	// Initialize Inputs
	a = 0; b = 0; c = 0;
	#10;
	// Add stimulus here
	    a = 0; b = 0; c = 1;
	#5  a = 0; b = 1; c = 0;
	#12 a = 0; b = 1; c = 1;
	#5  a = 1; b = 0; c = 0;
	#10 a = 1; b = 0; c = 1;
	#5  a = 1; b = 1; c = 0;
	#5  a = 1; b = 1; c = 1;
  	#60 $finish;
  
	end
endmodule