module cnt0(rst, clk, out0);

input rst, clk;

output [3:0] out0;

reg [3:0] out0, tmp;

always @(posedge clk or negedge rst) begin
    if(!rst)
    begin
        out0 <= 4'b0000;
        tmp <= 4'b0000;
    end
    else
    begin
        tmp <= tmp +1;
        out0 <= tmp;
    end    
end

endmodule
