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
    logic debounced_btn1, pulse1, detected1;
    logic debounced_btn2, pulse2, detected2;
    logic debounced_btn3, pulse3, detected3;
    logic select1 = 1'b0; // valid for fpga but meaningless in asic 
    logic select3 = 1'b0;
    logic [15:0] switches_read;
    logic [15:0] held_switches = 16'b0;
    
    lab_3_debounce DEBOUNCE1 (
        .clk(clk),
        .reset_n(~reset),
        .button(btnU),
        .result(debounced_btn1)
    );
    lab_3_debounce DEBOUNCE2 (
        .clk(clk),
        .reset_n(~reset),
        .button(btnR),
        .result(debounced_btn2)
    );
    lab_3_debounce DEBOUNCE3 (
        .clk(clk),
        .reset_n(~reset),
        .button(btnL),
        .result(debounced_btn3)
    );
    //TODO Pulse Detector and select resettable
    always_ff @(posedge clk) begin
        detected1 <= debounced_btn1;
    end
    
    assign pulse1 = ~debounced_btn1 & detected1;
    always_ff @(posedge clk) begin
        if(reset)begin
            select1 <= 1'b0;
        end else if(pulse1)begin   
            select1 <= ~select1;
        end
    end
    
    always_ff @(posedge clk) begin
        detected2 <= debounced_btn2;
    end
    
    assign pulse2 = ~debounced_btn2 & detected2;
    always_ff @(posedge clk) begin
        detected3 <= debounced_btn3;
    end
    
    assign pulse3 = ~debounced_btn3 & detected3;
    always_ff @(posedge clk) begin
        if(reset)begin
            select3 <= 1'b0;
        end else if(pulse3)begin   
            select3 <= ~select3;
        end
    end
    always_ff @(posedge clk) begin
        if(reset)begin
            held_switches <= 16'b0;
        end else if(pulse2)begin   
            held_switches <= switches_inputs[15:0];
        end
    end
    
    always_ff @(posedge clk) begin
        if(select3) begin
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
        if (select1) begin
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
