module counter4(rst, in_clk, q, q2);
  input in_clk, rst;

  output [3:0]q, q2;

  reg [3:0]q,q2, temp;
  
  always@(posedge in_clk or negedge rst)
  begin
    if(!rst)
	begin
      temp<=0;
      q<=0;   
      q2<=0; 
    end    
    else
	begin 
      if(temp == 9)
        temp <= 0;
      else if(q==9)
        begin
        temp<=temp+1;
        q2<=q2+1;
        end
      else
        temp<=temp+1;

      q <= temp;
      if(q2==2)
      begin
        if(q==3)
        begin
            temp<=1;
            q<=0;
            q2<=0;
        end
      end

    end 
     
  end  
endmodule