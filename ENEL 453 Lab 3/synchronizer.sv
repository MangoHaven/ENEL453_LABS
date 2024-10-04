`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 11:15:00 AM
// Design Name: 
// Module Name: Sychronizer
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


module synchronizer(
    input logic [15:0] signal,
    input logic clk,
    input logic reset,
    output logic [15:0] sync_signal
    );
    logic [15:0] mid_signal;
    always_ff @(posedge clk)begin
        if (reset) begin
            mid_signal <= 16'b0;
        end else begin
            mid_signal <= signal;
        end
    end
    always_ff @(posedge clk)begin
        if (reset) begin
            sync_signal <= 16'b0;
        end else begin
            sync_signal <= mid_signal;
        end
    end
endmodule
