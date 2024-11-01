`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 02:52:17 PM
// Design Name: 
// Module Name: chirp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module chirp#(
     parameter int CLOCK_FREQ = 100_000_000, // System clock frequency in Hz
     parameter int MAX_FREQ = 10000,        // Desired buzzer frequency in Hz
     parameter int MIN_FREQ = 500,
     parameter int CHIRP_TIME = 2,
     parameter int TOTAL_STEPS = 100
) (
    input  logic clk,    // Clock input
    input  logic reset,  // Active-high reset
    input  logic enable, // Active-high enable
    output logic pwm_out // PWM signal output for buzzer
);

    // Downcounter parameters
    localparam int PERIOD_MAX = CLOCK_FREQ / MIN_FREQ / 2; // Calculate the period for half the buzzer frequency
    localparam int PERIOD_MIN = CLOCK_FREQ/MAX_FREQ /2;
    localparam int PERIOD_DIFF = PERIOD_MAX-PERIOD_MIN;
    localparam int PERIOD_STEP = PERIOD_DIFF/TOTAL_STEPS;
    localparam int DOWNCOUNTER_PERIOD = (CLOCK_FREQ/(TOTAL_STEPS/CHIRP_TIME)) * CHIRP_TIME;
    logic zero_slow;  // Signal to indicate when the counter reaches zero
    logic zero_fast;
    // Instantiate the downcounter to generate the desired frequency
    localparam int COUNT_WIDTH = $clog2(PERIOD_MAX);

    logic [COUNT_WIDTH-1:0] count;
    logic [COUNT_WIDTH-1:0] period_mod;
    
    downcounter #(
        .PERIOD(DOWNCOUNTER_PERIOD)  // Set downcounter period based on calculations
    ) downcounter_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),  // Use the enable input
        .zero(zero_slow)       // Pulses high every DOWNCOUNTER_PERIOD clock cycles
    );
    always_ff @(posedge clk) begin
        if(reset)begin
            period_mod <= 0;
        end else if (enable) begin
            if (zero_slow) begin
                if(period_mod < PERIOD_DIFF) begin
                    period_mod <= period_mod + PERIOD_STEP; // 475 = (PERIOD_MAX - PERIOD_MIN)/TOTAL_STEPS
                end else begin
                    period_mod <= 0;
                end
            end
        end
    end
    
    always_ff @(posedge clk) begin
        if (reset) begin
            count <= PERIOD_MAX - 1;
            zero_fast  <= 0;
        end else if (enable) begin
            if (count == 0) begin
                count <= PERIOD_MAX - period_mod - 1;
                zero_fast  <= 1;
            end else begin
                count <= count - 1;
                zero_fast  <= 0;
            end
        end else
            zero_fast <= 0;
    end

    // Toggle pwm_out on each zero pulse
    always_ff @(posedge clk) begin
        if (reset)
            pwm_out <= 0;
        else if (zero_fast)
            pwm_out <= ~pwm_out; // Toggle the PWM output
    end
endmodule
