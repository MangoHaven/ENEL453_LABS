`timescale 1ns / 1ps

module lab_3_top_level_tb();

    // Parameters
    parameter CLK_PERIOD = 10; // 10ns for 100MHz clock
    parameter RESET_DURATION = 5 * CLK_PERIOD;
    parameter QUARTER_CYCLE = CLK_PERIOD / 4;
    
    
    // Signals
    logic [15:0] switches_inputs;
    logic btnU;
    logic reset;
    logic clk;
    logic CA, CB, CC, CD, CE, CF, CG;
    logic AN1, AN2, AN3, AN4;
    //logic [15:0] led;
    
    
    
    // Instantiate the Unit Under Test (UUT)
    lab_3_top_level uut (
        .switches_inputs(switches_inputs),
        .btnU(btnU),
        .clk(clk),
        .reset(reset),
        .CA(CA), .CB(CB), .CC(CC), .CD(CD), .CE(CE), .CF(CF), .CG(CG), .DP(DP),
        .AN1(AN1), .AN2(AN2), .AN3(AN3), .AN4(AN4)
        //.led(led)
    );
    always begin 
        clk = 0;
        # (CLK_PERIOD/2);
        clk = 1;
        # (CLK_PERIOD/2);
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        reset = 0;
        btnU = 0;
        switches_inputs = 16'h0000;
        #QUARTER_CYCLE;
        
        //apply reset
        reset = 1;
        #RESET_DURATION;
        reset = 0;
        #CLK_PERIOD;
        
        //case 1
        switches_inputs = 16'h270F; #(2 * CLK_PERIOD);
        //case 2
        switches_inputs = 16'h0001; #(2 * CLK_PERIOD);
        //case 3
        switches_inputs = 16'h0010; #(2 * CLK_PERIOD);
        
        //apply bin select
        btnU = 1; #CLK_PERIOD;
        btnU = 0; #CLK_PERIOD;

        reset = 1;
        switches_inputs = 16'h270E;
        #RESET_DURATION;
        reset = 0;
        #(17 * CLK_PERIOD);
        
        switches_inputs = 16'h03F2; #(17 * CLK_PERIOD);
        
        
        
        
        
//        0000_0000_0000_0000 = 16'h
        
        //end sim
        #(5 * CLK_PERIOD);
        $stop;
    end

    // Optional: Monitor changes
//    initial begin
//        $monitor("Time = %0t: switches_inputs = %b, led = %b", 
//                 $time, switches_inputs, led);
//    end

endmodule