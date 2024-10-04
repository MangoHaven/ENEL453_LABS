module lab_3_top_level (
    input  logic [15:0] switches_inputs, // slide switches (0 towards Basys3 board edge, 1 towards board center)
    input logic btnU,
    input logic btnR,
    input logic btnL,
    input logic clk,
    input logic reset,
    output logic        CA, CB, CC, CD, CE, CF, CG, DP, // segment outputs (active-low)
    output logic        AN1, AN2, AN3, AN4, // anode outputs for digit selection (active-low
    output logic [15:0] led // mapped to the LEDs above the slide switches, LEDs: write a 1 to light LED, 0 to turn it off
);

    // Internal signal declarations
    
    logic [15:0] switches_outputs;
    logic [15:0] led_output;
    logic [15:0] switches_synced;
    logic debounced_btnU;
    logic debounced_btnL;
    logic debounced_btnR;
    
    // Instantiate components
    synchronizer SWITCH_SYNC (
        .signal(switches_inputs),
        .clk(clk),
        .reset(reset),
        .sync_signal(switches_synced)
    );
    lab_3_debounce DEBOUNCE_U (
        .clk(clk),
        .reset(reset),
        .button(btnU),
        .result(debounced_btnU)
    );
    lab_3_debounce DEBOUNCE_L (
        .clk(clk),
        .reset(reset),
        .button(btnR),
        .result(debounced_btnL)
    );
    lab_3_debounce DEBOUNCE_R (
        .clk(clk),
        .reset(reset),
        .button(btnL),
        .result(debounced_btnR)
    );
    
    switch_logic SWITCHES (
         .switches_inputs(switches_synced),
         .switches_outputs(switches_outputs),
         .btnU(debounced_btnU),
         .btnR(debounced_btnR),
         .btnL(debounced_btnL),
         .clk(clk),
         .led_out(led_output),
         .reset(reset)
    );
    seven_segment_display_subsystem SEV_SEG_DIS(
        .clk(clk),
        .reset(reset),
        .sec_dig1(switches_outputs[3:0]), // seconds digit (units)
        .sec_dig2(switches_outputs[7:4]), // tens of seconds
        .min_dig1(switches_outputs[11:8]), // minutes digit (units)
        .min_dig2(switches_outputs[15:12]), // tens of minutes
        .CA(CA), .CB(CB), .CC(CC), .CD(CD), .CE(CE), .CF(CF),  .CG(CG), .DP(DP), // segment outputs (active-low)
        .AN1(AN1), .AN2(AN2), .AN3(AN3), .AN4(AN4)
    );
    
    assign led = led_output;
    
endmodule
