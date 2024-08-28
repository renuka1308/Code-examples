// Code your design here
 
//16 to 1 mux

module mux_16to1(input [15:0] in,
                 input [3:0] sel,
                 output reg out);

  assign out=in[sel]; //selects on of the input bits depending upon the value of "sel".
                           
endmodule
