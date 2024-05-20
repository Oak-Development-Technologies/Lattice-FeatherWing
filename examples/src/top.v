`include "pwm.v"
module top(output [2:0] RGB);
    reg [18:0] counter;
    reg [7:0] val_pwm0; //only make it go to 128 (half brightness)
    reg [7:0] val_pwm1; //only make it go to 128 (half brightness)
    reg [7:0] val_pwm2; //only make it go to 128 (half brightness)

    wire pwm_en_bit;
    wire clk;

    reg [2:0] leds;
    reg [7:0] val_in0;
    reg [7:0] val_in1;
    reg [7:0] val_in2;

    SB_HFOSC SB_HFOSC_inst(
      .CLKHFEN(1),
      .CLKHFPU(1),
      .CLKHF(clk)
    );

    pwm pwm_init(.clk(clk),
                 .en(pwm_en_bit),
                 .value_input0(val_in0),
                 .value_input1(val_in1),
                 .value_input2(val_in2),
                 .out(leds));

    assign RGB = ~leds;

    initial begin
        counter = 0;
        pwm_en_bit = 1;
        val_pwm0 = 255;
        val_pwm1 = 0;
        val_pwm2 = 0;
    end

    always @(posedge clk)
    begin
    
        pwm_en_bit = 0;
        counter <= counter + 1;
    
        if(counter == 0) begin
            if (val_pwm0 > 0 && val_pwm1 < 255 && val_pwm2 == 0) begin
                val_pwm0 <= val_pwm0 - 1; //increase the width of pwm
                val_pwm1 <= val_pwm1 + 1;
            end
            if (val_pwm0 == 0 && val_pwm1 > 0 && val_pwm2 < 255) begin
                val_pwm1 <= val_pwm1 - 1; //increase the width of pwm
                val_pwm2 <= val_pwm2 + 1;
            end
            if (val_pwm0 < 255 && val_pwm1 == 0 && val_pwm2 > 0) begin
                val_pwm2 <= val_pwm2 - 1; //increase the width of pwm
                val_pwm0 <= val_pwm0 + 1;
            end

            pwm_en_bit = 1;
            val_in0 <= val_pwm0;
            val_in1 <= val_pwm1;
            val_in2 <= val_pwm2;
        end
    end
endmodule