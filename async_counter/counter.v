
module counter(rst, clk, q);
input rst, clk;
output [3:0] q;
reg [3:0] tmp_q, q;

always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        q <= 4'b0000;
        tmp_q <= 4'b0000;
    end
    else
    begin
        tmp_q <= tmp_q+1;
        q<=tmp_q;
    end
end
endmodule