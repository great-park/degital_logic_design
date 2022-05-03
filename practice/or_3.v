module or_1(x,y,z,o3);
input x,y,z;
output o3;

wire w1;
assign w1 = y & z;
assign o3 = w1 | x;

endmodule

