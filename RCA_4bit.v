module RCA_4bit(s,c_out,cin,x,y);
input [3:0] x,y;
input cin;
output [3:0] s;
output c_out;

wire c0,c1,c2;

full_adder u0(s[0],c0,cin,x[0],y[0]);
full_adder u1(s[1],c1,c0,x[1],y[1]);
full_adder u2(s[2],c2,c1,x[2],y[2]);
full_adder u3(s[3],c_out,c2,x[3],y[3]);

endmodule