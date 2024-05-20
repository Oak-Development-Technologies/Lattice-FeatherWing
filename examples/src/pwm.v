module pwm(input clk, input en, input [7:0] value_input0 , input [7:0] value_input1 , input [7:0] value_input2 ,output [2:0] out);
   reg [7:0] counter;
   reg [7:0] value [2:0]; //max 255

   assign out[0] = (counter < value[0]);
   assign out[1] = (counter < value[1]);
   assign out[2] = (counter < value[2]);

   initial begin
      counter = 0;
      value[0] = 255;
      value[1] = 255;
      value[2] = 255;
   end

   always @(posedge clk)
   begin
      counter <= counter + 1;
      
      if(en == 1'b1) begin
        value[0] <= value_input0;
        value[1] <= value_input1;
        value[2] <= value_input2;
      end;
   end
endmodule