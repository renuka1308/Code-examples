//half subtractor 

module half_subtractor(input a,b,
                      output reg diff,borrow);
 
  // behavioral modeling
  always @(*)
    begin
  diff = a ^ b;
  borrow = ~a & b;
    end
  
endmodule