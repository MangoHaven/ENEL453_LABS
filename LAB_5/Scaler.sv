`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2024 04:19:32 PM
// Design Name: 
// Module Name: Scaler
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


module Scaler(
    input logic clk,
    input logic reset,
    input logic ready_pulse,
    input logic [15:0] ave_data,
    output logic [15:0] scaled_adc_data
    );
    logic [15:0] scaled_adc_data_temp;
    always_ff @(posedge clk) begin
        if (reset) begin
            scaled_adc_data <= 0;
            scaled_adc_data_temp <= 0;
        end else if (ready_pulse) begin
            // Calculation: This scales FFFFh to 270Fh (i.e. 9999d)
            //    mVolts = ave_data/(2^16 - 1) * 9999 = ave_data * 0.152575
            //    mVolts ~ ave_data * 1250/2^13 = (ave_data) * 1250 >> 13
            // NOTE: The 7-seg display will display in millivolts, 
            //       i.e. 9999 is 0.9999 V or 999.9 mV
            //       place the decimal point in the correct place!
            //      FFFFh => 2700 scaled => 
            //      FFF1h => 26E0h scaled
            scaled_adc_data <= (ave_data*1250) >> 13; // was scaled_adc_data_temp
            //scaled_adc_data <= scaled_adc_data_temp; // additional register faciliates pipelining
        end                                          // for higher clock frequencies
    end
 

endmodule
