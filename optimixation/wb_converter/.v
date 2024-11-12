module wb_converter (
    input wb_clk_i,
    input wb_rst_i,
    input wbs_stb_i,
    input wbs_cyc_i,
    input wbs_we_i,
    input [3:0] wbs_sel_i,
    input [31:0] wbs_dat_i,
    input [31:0] wbs_adr_i,
    output logic wbs_ack_o,
    output logic [31:0] wbs_dat_o,

    output logic [63:0] load_recv_msg,
    output logic load_recv_val,
    input load_recv_rdy,

    output logic [31:0] instruction_recv_msg,
    output logic instruction_recv_val,
    input instruction_recv_rdy,

    input [31:0] store_send_msg,
    input store_send_val,
    output logic store_send_rdy
);

    always_ff @(posedge wb_clk_i or posedge wb_rst_i) begin
        if (wb_rst_i) begin
            load_recv_msg <= 64'b0;
            load_recv_val <= 1'b0;
            instruction_recv_msg <= 32'b0;
            instruction_recv_val <= 1'b0;
            wbs_ack_o <= 1'b0;
            store_send_rdy <= 1'b0;
            wbs_dat_o <= 32'b0;
        end else begin
            wbs_ack_o <= wbs_cyc_i && wbs_stb_i &&
                         ((wbs_adr_i == 32'h30000000 && instruction_recv_rdy) ||
                         ((wbs_adr_i > 32'h30000000) && (!wbs_we_i && store_send_val && store_send_rdy)) ||
                         ((wbs_adr_i > 32'h30000000) && wbs_we_i && load_recv_rdy && instruction_recv_rdy));
            store_send_rdy <= !wbs_we_i && wbs_cyc_i && wbs_stb_i && (wbs_adr_i > 32'h30000000);
            wbs_dat_o <= store_send_msg;
            
            if (wbs_adr_i == 32'h30000000) begin
                instruction_recv_msg <= wbs_dat_i;
                instruction_recv_val <= wbs_cyc_i && wbs_stb_i;
            end else if (wbs_adr_i > 32'h30000000) begin
                load_recv_msg <= {(wbs_adr_i - 32'h30000004) >> 2, wbs_dat_i};
                load_recv_val <= wbs_cyc_i && wbs_stb_i;
                instruction_recv_msg <= wbs_we_i ? 32'b00000 : 32'b00001;
                instruction_recv_val <= wbs_cyc_i && wbs_stb_i;
            end
        end
    end

endmodule