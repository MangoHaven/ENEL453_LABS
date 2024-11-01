module mux4_16_bits(
    input  logic [15:0] in0,  
    input  logic [15:0] in1,  
    input  logic [15:0] in2, 
    input  logic [15:0] in3,  
    input  logic  [1:0] select,  
    output logic [15:0] mux_out,
    output logic [3:0] decimal_pt  
    );

    always_comb begin
        case(select)
            2'b00: mux_out = in0;  // working scaled and averaged hex
            2'b01: mux_out = in1;  // working bcd scaled and averaged
            2'b10: mux_out = in2;  // working 0FFFh max 
            2'b11: mux_out = in3;  // working FFFFh max averaged
            default: mux_out = 16'h0000;  // Default case: output all zeros
        endcase
    end
    always_comb begin
        case(select)
            2'b00: decimal_pt = 4'b0000;  // averaged ADC with extra 4 bits
            2'b01: decimal_pt = 4'b0010;  // averaged and scaled voltage
            2'b10: decimal_pt = 4'b0000;  // raw ADC (12-bits)
            2'b11: decimal_pt = 4'b0000;
            default: decimal_pt = 16'h0000;  // Default case: output all zeros
        endcase
    end     
    

endmodule
