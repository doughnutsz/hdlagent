// Generated automatically via PyRTL
// As one initial test of synthesis, map to FPGA with:
//   yosys -p "synth_xilinx -top toplevel" thisfile.v

module toplevel(clk, reduce_i, result_o);
    input clk;
    input[7:0] reduce_i;
    output result_o;

    wire tmp0;
    wire tmp1;
    wire tmp2;
    wire tmp3;
    wire tmp4;
    wire tmp5;
    wire tmp6;
    wire tmp7;
    wire tmp8;
    wire tmp9;
    wire tmp10;
    wire tmp11;
    wire tmp12;
    wire tmp13;
    wire tmp14;

    // Combinational
    assign result_o = tmp14;
    assign tmp0 = {reduce_i[0]};
    assign tmp1 = {reduce_i[1]};
    assign tmp2 = tmp0 ^ tmp1;
    assign tmp3 = {reduce_i[2]};
    assign tmp4 = tmp2 ^ tmp3;
    assign tmp5 = {reduce_i[3]};
    assign tmp6 = tmp4 ^ tmp5;
    assign tmp7 = {reduce_i[4]};
    assign tmp8 = tmp6 ^ tmp7;
    assign tmp9 = {reduce_i[5]};
    assign tmp10 = tmp8 ^ tmp9;
    assign tmp11 = {reduce_i[6]};
    assign tmp12 = tmp10 ^ tmp11;
    assign tmp13 = {reduce_i[7]};
    assign tmp14 = tmp12 ^ tmp13;

endmodule

