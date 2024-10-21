module TopModule(input clk, input load, input [511:0] data, output reg [511:0] q);

    always @(posedge clk) begin
        if (load) begin
            q <= data; // Load the data when load is high
        end else begin
            reg [511:0] next_q;
            integer i;
            next_q[0] = 0 ^ q[1]; // q[-1] is assumed to be 0
            for (i = 1; i < 511; i = i + 1) begin
                next_q[i] = q[i-1] ^ q[i+1]; // Rule 90
            end
            next_q[511] = q[510] ^ 0; // q[512] is assumed to be 0
            q <= next_q;
        end
    end

endmodule
