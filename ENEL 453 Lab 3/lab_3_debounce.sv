`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 12:03:45 PM
// Design Name: 
// Module Name: lab_2_debounce
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


module lab_3_debounce #(parameter clk_freq = 100_000_000, stable_time = 50)
    (input logic clk,
                reset,
                button,
     output logic result);
     
     logic ff1, ff2, ff3;
     logic ena;
     logic sclr;
     localparam int max_count = clk_freq * stable_time/1000;
     logic [$clog2(max_count):0] count;
     
     always_ff @(posedge clk) begin
        if(reset) begin
            ff1 <= 0;
            ff2 <= 0;
            ff3 <= 0;
        end else begin
            if (ena)
              ff3 <= ff2;
              ff1 <= button;
              ff2 <= ff1;
        end
     end
     assign result = ff3;
     assign sclr = ff1 ^ ff2;
     
     always_ff @(posedge clk) begin
        if(reset)
            count <=0;
        else if (sclr)
            count <= 0;
        else if (!ena)
            count <= count + 1;
         
     end
     
     assign ena = (count > max_count) ? 1: 0;
     
endmodule
