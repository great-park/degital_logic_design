module sync_cnt (
    rst, clk, out0, out1,out2,out3
);

input rst, clk;
output [3:0] out0, out1, out2, out3;

//counter 실시
cnt0 u0(rst, clk, out0);
cnt1 u1(rst, clk, out1);
cnt2 u2(rst, clk, out2);
cnt3 u3(rst, clk, out3);

endmodule