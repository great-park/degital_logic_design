module tb_full_adder;

wire s,c;
reg x,y,cin;

full_adder u1(.s_out(s), .c_out(c), .cin(cin), .x(x), .y(y));

initial
begin

           x=1'd0; y=1'd0; cin=1'd0;

        #5 x=1'd1; y=1'd1; cin=1'd1;

        #5 x=1'd0; y=1'd1; cin=1'd1;

        #5 x=1'd1; y=1'd0; cin=1'd0;

        #5 x=1'd1; y=1'd1; cin=1'd0;
end
endmodule