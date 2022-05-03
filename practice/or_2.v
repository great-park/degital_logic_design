module or_2(x,y,z,o2);
input x,y,z;
output o2;

wire w1;
assign w1 = y | z;
assign o2 = w1 | x;

endmodule
