module counter4(rst, in_clk, q, q2);
  input in_clk, rst;

  output [3:0]q, q2;

  reg [3:0]q,q2, temp;
  reg [2:0]flag;
  
  always@(posedge in_clk or negedge rst)
  begin
    if(!rst)
	begin
      temp<=0;
      q<=0;   
      q2<=0; 
      flag<=0;
    end    
    else
	begin 
      if(temp == 9)
        temp <= 0;
      else if(q==9)
        begin
        flag<=flag+1;
        temp<=temp+1;
        q2<=q2+1;
        end
      else
        temp<=temp+1;

      q <= temp;
      if(flag==2)
      begin
        if(q==3)
        begin
            flag<=0;
            temp<=1;
            q<=0;
            q2<=0;
        end
      end

    end 
     
  end  
endmodule 

