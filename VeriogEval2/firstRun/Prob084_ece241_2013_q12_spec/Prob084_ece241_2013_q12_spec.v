module Prob084_ece241_2013_q12_spec(
    input [0:0] clk,
    input [0:0] enable,
    input [0:0] S,
    input [0:0] A,
    input [0:0] B,
    input [0:0] C,
    output reg [0:0] Z // Declare Z as a reg type for assignment in procedural block
);
    reg [7:0] Q; // 8-bit shift register

    // Shift register logic
    always @(posedge clk) begin
        if (enable)
            Q <= {Q[6:0], S}; // Shift left and insert S
    end

    // Multiplexer logic
    always @(*) begin
        case ({A, B, C})
            3'b000: Z = Q[0];
            3'b001: Z = Q[1];
            3'b010: Z = Q[2];
            3'b011: Z = Q[3];
            3'b100: Z = Q[4];
            3'b101: Z = Q[5];
            3'b110: Z = Q[6];
            3'b111: Z = Q[7];
            default: Z = 1'b0; // Safety default
        endcase
    end
endmodule
