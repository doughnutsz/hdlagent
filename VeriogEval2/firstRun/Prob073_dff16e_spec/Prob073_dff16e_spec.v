module TopModule(
    input [0:0] clk,
    input [0:0] resetn,
    input [1:0] byteena,
    input [15:0] d,
    output reg [15:0] q
);

always @(posedge clk) begin
    if (!resetn) begin
        q <= 16'b0; // Synchronous active-low reset
    end else begin
        if (byteena[0]) q[7:0] <= d[7:0];    // Control lower byte
        if (byteena[1]) q[15:8] <= d[15:8];  // Control upper byte
    end
end

endmodule
