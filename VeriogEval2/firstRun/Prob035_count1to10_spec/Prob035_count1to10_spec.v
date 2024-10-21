module TopModule(input [0:0] clk, input [0:0] reset, output reg [3:0] q);
    always @ (posedge clk) begin
        if (reset) begin
            q <= 4'b0001; // Reset to 1
        end else begin
            if (q == 4'b1010) // If q is 10, reset to 1
                q <= 4'b0001;
            else
                q <= q + 4'b0001; // Increment counter
        end
    end
endmodule
