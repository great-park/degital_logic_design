module cnt1(rst, clk, out1);

input rst, clk;

output [3:0] out1;

reg seg_clk;
reg [2:0] tmp2;
reg [3:0] out1, tmp;

always @(posedge clk or negedge rst) begin
    begin
        if(!rst)
        begin
            seg_clk <=0;
            tmp2 <= 0;
        end
        else
        begin
            tmp2<=tmp2 +1;
            if(tmp2==4)
            tmp2<=0;
            else if(tmp2==0)
            seg_clk <= ~seg_clk;
        end
    end
end

always @(posedge seg_clk or negedge rst) begin
    if(!rst)
    begin
        out1 <= 4'b0000;
        tmp <= 4'b0000;
    end
    else
    begin
        tmp <= tmp +1;
        out1 <= tmp;
    end    
end

endmodule