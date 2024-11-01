`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 07:11:51 PM
// Design Name: 
// Module Name: adc_data_processing
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


module adc_data_processing(
    input logic clk,
    input logic reset,
    input       vauxp15,
    input       vauxn15,
    output logic [15:0] data,
    output logic [15:0] led,
    output logic [15:0] ave_data,
    output logic [15:0] scaled_adc_data
    );
    
    logic ready, ready_pulse, ready_r;
    logic [6:0]  daddr_in;              // XADC address
    logic        enable;                // XADC enable
   // logic [4:0]  channel_out;           // Current XADC channel
    //logic        eoc_out;               // End of conversion
    logic        eos_out;               // End of sequence
    logic        busy_out;              // XADC busy signal
    
    
    // Constants
    localparam CHANNEL_ADDR = 7'h1f;     // XA4/AD15 (for XADC4)
    
    // XADC Instantiation
    xadc_wiz_0 XADC_INST (
        .di_in(16'h0000),        // Not used for reading
        .daddr_in(CHANNEL_ADDR), // Channel address
        .den_in(enable),         // Enable signal
        .dwe_in(1'b0),           // Not writing, so set to 0
        .drdy_out(ready),        // Data ready signal (when high, ADC data is valid)
        .do_out(data),           // ADC data output
        .dclk_in(clk),           // Use system clock
        .reset_in(reset),   // Active-high reset
        .vp_in(1'b0),            // Not used, leave disconnected
        .vn_in(1'b0),            // Not used, leave disconnected
        .vauxp15(vauxp15),       // Auxiliary analog input (positive)
        .vauxn15(vauxn15),       // Auxiliary analog input (negative)
        .channel_out(),          // Current channel being converted
        .eoc_out(enable),        // End of conversion
        .alarm_out(),            // Not used
        .eos_out(eos_out),       // End of sequence
        .busy_out(busy_out)      // XADC busy signal
    );
    always_ff@(posedge clk) begin
        if (reset)
            ready_r <= 0;
        else
            ready_r <= ready;
    end
        assign ready_pulse = ~ready_r & ready;
   averager  
   #( .power(8), //2**N samples, default is 2**8 = 256 samples
      .N(16)     // # of bits to take the average of
    ) 
    AVERAGER
    ( .reset(reset),
      .clk(clk),
      .EN(ready_pulse),
      .Din(data),
      .Q(ave_data)
    );
    
    Scaler SCALER(
      .reset(reset),
      .clk(clk),
      .ready_pulse(ready_pulse),
      .ave_data(ave_data),
      .scaled_adc_data(scaled_adc_data)
    ); 
     assign led = scaled_adc_data;
endmodule
