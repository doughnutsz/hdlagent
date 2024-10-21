module TopModule(
    input p1a,
    input p1b,
    input p1c,
    input p1d,
    input p1e,
    input p1f,
    input p2a,
    input p2b,
    input p2c,
    input p2d,
    output p1y,
    output p2y
);

    // Intermediate wires for the AND gates
    wire and1_out;
    wire and2_out;
    wire and3_out;
    wire and4_out;

    // 3-input AND gates for p1y calculation
    assign and1_out = p1a & p1b & p1c;
    assign and2_out = p1d & p1e & p1f;

    // 2-input AND gates for p2y calculation
    assign and3_out = p2a & p2b;
    assign and4_out = p2c & p2d;

    // OR gates to combine the AND gate outputs
    assign p1y = and1_out | and2_out;
    assign p2y = and3_out | and4_out;

endmodule
