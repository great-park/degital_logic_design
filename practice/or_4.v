module or_1(x,y,z,o4);
input x,y,z;
output o4;

wire w1, w2;
assign w1 = x | y;
assign w2 = x | z;
assign o4 = w1 & w2;

endmodule

