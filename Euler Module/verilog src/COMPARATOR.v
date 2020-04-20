module COMPARATOR_EULAR(a,b,decision);

parameter Size = 6;

input [Size-1:0]a;
input [Size-1:0]b;
output decision;

assign decision = (a == b)? 1'b1 : 1'b0;

endmodule