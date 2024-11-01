`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2024 02:00:24 PM
// Design Name: 
// Module Name: sawtooth_waveform
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


module sawtooth_waveform
    #(
        parameter int WIDTH = 8,                   // Bit width for duty_cycle
        parameter int CLOCK_FREQ = 100_000_000,    // System clock frequency in Hz
        parameter real WAVE_FREQ = 0.1             // Desired triangle wave frequency in Hz
    )
    (
        input  logic clk,      // System clock (100 MHz)
        input  logic reset,    // Active-high reset
        input  logic enable,   // Active-high enable
        output logic pwm_out,  // PWM output signal
        output logic [WIDTH-1:0] R2R_out // R2R ladder output
    );

    // Calculate maximum duty cycle value based on WIDTH
    localparam int MAX_DUTY_CYCLE = (2 ** WIDTH) - 1;  // 255 for WIDTH = 8
    // Total steps for duty_cycle (up and down)
    localparam int TOTAL_STEPS = MAX_DUTY_CYCLE * 2;   // 510 steps
// Calculate downcounter PERIOD to achieve desired wave frequency
    localparam int DOWNCOUNTER_PERIOD = integer'(CLOCK_FREQ / (WAVE_FREQ * TOTAL_STEPS));

    // Ensure DOWNCOUNTER_PERIOD is positive
    initial begin
        if (DOWNCOUNTER_PERIOD <= 0) begin
            $error("DOWNCOUNTER_PERIOD must be positive. Adjust CLOCK_FREQ or WAVE_FREQ.");
        end
    end

    // Internal signals
    logic zero;                   // Output from downcounter (enables duty_cycle update)
    logic [WIDTH-1:0] duty_cycle; // Duty cycle value for PWM
    
    assign R2R_out = duty_cycle; // R2R ladder resistor circuit automatically generates the analog voltage

    // Instantiate downcounter module
    downcounter #(
        .PERIOD(DOWNCOUNTER_PERIOD)  // Set downcounter period based on calculations
    ) downcounter_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),  // Use the enable input
        .zero(zero)       // Pulses high every DOWNCOUNTER_PERIOD clock cycles
    );
    // Duty cycle up/down counter logic
    always_ff @(posedge clk) begin
        if (reset) begin
            duty_cycle <= 0;    // Initialize duty_cycle to 0 on reset
        end else if (enable) begin
            if(zero)begin
                if (duty_cycle == MAX_DUTY_CYCLE) begin
                    duty_cycle <= 0;
                end else begin
                    duty_cycle <= duty_cycle + 1; // Increment duty_cycle
                end
            end
        end
    end

    // Instantiate PWM module
    pwm #(
        .WIDTH(WIDTH)
    ) saw_pwm_inst (
        .clk(clk),
        .reset(reset),
        .enable(enable),    // Use the enable input
        .duty_cycle(duty_cycle),
        .pwm_out(pwm_out)   // Output PWM signal
    );
endmodule
