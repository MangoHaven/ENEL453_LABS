module output_mode_fsm (
    input  logic clk,
    input  logic reset,
    input  logic [2:0] mode_select,  // Two-bit input for mode selection
    output logic triangle_pwm_enable,
    output logic triangle_r2r_enable,
    output logic tone_buzzer_enable,
    output logic saw_pwm_enable,
    output logic saw_r2r_enable,
    output logic chirp_buzzer_enable
    
);
    typedef enum logic [2:0] {
        OFF_MODE = 3'b000,
        TRIANGLE_PWM_MODE = 3'b001,
        TRIANGLE_R2R_MODE = 3'b010,
        TONE_BUZZER_MODE = 3'b011,
        EXTRA_MODE = 3'b100,
        SAW_PWM_MODE = 3'b101,
        SAW_R2R_MODE = 3'b110,
        CHIRP_BUZZER_MODE = 3'b111
    } statetype;

    statetype current_state, next_state;

    // State register
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= OFF_MODE;
        else
            current_state <= next_state;
    end

    // Next state logic
    always_comb begin
        next_state = statetype'(mode_select);  // Directly use mode_select as the next state
    end

    // Output logic
    always_comb begin
        triangle_pwm_enable = 0;
        triangle_r2r_enable = 0;
        tone_buzzer_enable = 0;
        saw_pwm_enable = 0;
        saw_r2r_enable = 0;
        chirp_buzzer_enable = 0;
        case (current_state)
            TRIANGLE_PWM_MODE:    triangle_pwm_enable = 1;
            TRIANGLE_R2R_MODE:    triangle_r2r_enable = 1;
            TONE_BUZZER_MODE: tone_buzzer_enable = 1;
            SAW_PWM_MODE:    saw_pwm_enable = 1;
            SAW_R2R_MODE:    saw_r2r_enable = 1;
            CHIRP_BUZZER_MODE: chirp_buzzer_enable = 1;
            OFF_MODE: ;
            EXTRA_MODE: ;
            
        endcase
    end
endmodule