module switch_logic (
    input  logic [15:0] switches_inputs,
    input  logic btnU,
    input  logic btnR,
    input  logic btnL,
    input  logic clk,
    input  logic reset,
    output logic [15:0] led_out,
    output logic [15:0] switches_outputs 
);

    logic [15:0] bcd_out;
    logic pulse_U, detected_U;
    logic pulse_L, detected_L;
    logic pulse_R, detected_R;
    logic select_U = 1'b0; // valid for fpga but meaningless in asic 
    logic select_R = 1'b0;
    logic [15:0] switches_read;
    logic [15:0] held_switches = 16'b0;
    
    
    //TODO Pulse Detector and select resettable
    always_ff @(posedge clk) begin
        detected_U <= btnU;
    end
    
    assign pulse_U = ~btnU & detected_U;
    always_ff @(posedge clk) begin
        if(reset)begin
            select_U <= 1'b0;
        end else if(pulse_U)begin   
            select_U <= ~select_U;
        end
    end
    
    always_ff @(posedge clk) begin
        detected_L <= btnL;
    end
    
    assign pulse_L = ~btnL & detected_L;
    
    always_ff @(posedge clk) begin
        detected_R <= btnR;
    end
    
    assign pulse_R = ~btnR & detected_R;
    always_ff @(posedge clk) begin
        if(reset)begin
            select_R <= 1'b0;
        end else if(pulse_R)begin   
            select_R <= ~select_R;
        end
    end
    always_ff @(posedge clk) begin
        if(reset)begin
            held_switches <= 16'b0;
        end else if(pulse_L)begin   
            held_switches <= switches_inputs[15:0];
        end
    end
    
    always_ff @(posedge clk) begin
        if(select_R) begin
            switches_read <= held_switches[15:0];
        end else begin
            switches_read <= switches_inputs[15:0];
        end
    end
    bin_to_bcd BIN_TO_BCD (
        .bin_in(switches_read),
        .bcd_out(bcd_out),
        .clk(clk),
        .reset(reset)
    );
    
    always_ff @(posedge clk) begin
        if (select_U) begin
            if(switches_read >= 16'h2710)begin
                switches_outputs <= 16'hE000;
                led_out <= 16'hFFFF;
            end else begin
                switches_outputs <= bcd_out;
                led_out <= 16'h0000;
            end
        end else begin
            switches_outputs <= switches_read;
            led_out <= 16'h0000;
        end
    end  

endmodule
