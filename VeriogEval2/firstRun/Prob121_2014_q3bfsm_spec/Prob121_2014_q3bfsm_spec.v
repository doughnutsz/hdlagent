module TopModule(input clk, input reset, input x, output reg z);

    reg [2:0] state, next_state;

    // State Definitions
    parameter S0 = 3'b000;
    parameter S1 = 3'b001;
    parameter S2 = 3'b010;
    parameter S3 = 3'b011;
    parameter S4 = 3'b100;

    // Sequential logic for state transition
    always @(posedge clk) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Combinational logic for next state and output
    always @(*) begin
        case(state)
            S0: begin
                if (x)
                    next_state = S1;
                else
                    next_state = S0;
                z = 0;
            end
            S1: begin
                if (x)
                    next_state = S4;
                else
                    next_state = S1;
                z = 0;
            end
            S2: begin
                if (x)
                    next_state = S1;
                else
                    next_state = S2;
                z = 0;
            end
            S3: begin
                if (x)
                    next_state = S2;
                else
                    next_state = S1;
                z = 1;
            end
            S4: begin
                if (x)
                    next_state = S4;
                else
                    next_state = S3;
                z = 1;
            end
            default: begin
                next_state = S0;
                z = 0;
            end
        endcase
    end
endmodule
