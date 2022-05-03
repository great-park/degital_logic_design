module half_adder(s_out, c_out,x,y);
input x,y;
output s_out,c_out;

reg s_out,c_out;

always @(x,y)
begin
 if(x!=y)
   s_out=1;
 else
   s_out=0;
end
always @(x,y)
begin
 if(x==1 & y==1)
  c_out=1;
 else 
  c_out=0;
end
endmodule
