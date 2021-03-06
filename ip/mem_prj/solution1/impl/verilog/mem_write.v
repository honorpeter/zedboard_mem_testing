// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module mem_write (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        out_r_TDATA,
        out_r_TVALID,
        out_r_TREADY,
        out_r_TKEEP,
        out_r_TSTRB,
        out_r_TUSER,
        out_r_TLAST,
        out_r_TID,
        out_r_TDEST,
        test_init_arr_V_address0,
        test_init_arr_V_ce0,
        test_init_arr_V_q0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [31:0] out_r_TDATA;
output   out_r_TVALID;
input   out_r_TREADY;
output  [3:0] out_r_TKEEP;
output  [3:0] out_r_TSTRB;
output  [0:0] out_r_TUSER;
output  [0:0] out_r_TLAST;
output  [0:0] out_r_TID;
output  [0:0] out_r_TDEST;
output  [8:0] test_init_arr_V_address0;
output   test_init_arr_V_ce0;
input  [31:0] test_init_arr_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg test_init_arr_V_ce0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] out_stream_V_data_V_1_data_out;
reg    out_stream_V_data_V_1_vld_in;
wire    out_stream_V_data_V_1_vld_out;
wire    out_stream_V_data_V_1_ack_in;
wire    out_stream_V_data_V_1_ack_out;
reg   [31:0] out_stream_V_data_V_1_payload_A;
reg   [31:0] out_stream_V_data_V_1_payload_B;
reg    out_stream_V_data_V_1_sel_rd;
reg    out_stream_V_data_V_1_sel_wr;
wire    out_stream_V_data_V_1_sel;
wire    out_stream_V_data_V_1_load_A;
wire    out_stream_V_data_V_1_load_B;
reg   [1:0] out_stream_V_data_V_1_state;
wire    out_stream_V_data_V_1_state_cmp_full;
wire   [3:0] out_stream_V_keep_V_1_data_out;
reg    out_stream_V_keep_V_1_vld_in;
wire    out_stream_V_keep_V_1_vld_out;
wire    out_stream_V_keep_V_1_ack_in;
wire    out_stream_V_keep_V_1_ack_out;
reg    out_stream_V_keep_V_1_sel_rd;
wire    out_stream_V_keep_V_1_sel;
reg   [1:0] out_stream_V_keep_V_1_state;
wire   [3:0] out_stream_V_strb_V_1_data_out;
reg    out_stream_V_strb_V_1_vld_in;
wire    out_stream_V_strb_V_1_vld_out;
wire    out_stream_V_strb_V_1_ack_in;
wire    out_stream_V_strb_V_1_ack_out;
reg    out_stream_V_strb_V_1_sel_rd;
wire    out_stream_V_strb_V_1_sel;
reg   [1:0] out_stream_V_strb_V_1_state;
reg   [0:0] out_stream_V_user_V_1_data_out;
reg    out_stream_V_user_V_1_vld_in;
wire    out_stream_V_user_V_1_vld_out;
wire    out_stream_V_user_V_1_ack_in;
wire    out_stream_V_user_V_1_ack_out;
reg   [0:0] out_stream_V_user_V_1_payload_A;
reg   [0:0] out_stream_V_user_V_1_payload_B;
reg    out_stream_V_user_V_1_sel_rd;
reg    out_stream_V_user_V_1_sel_wr;
wire    out_stream_V_user_V_1_sel;
wire    out_stream_V_user_V_1_load_A;
wire    out_stream_V_user_V_1_load_B;
reg   [1:0] out_stream_V_user_V_1_state;
wire    out_stream_V_user_V_1_state_cmp_full;
reg   [0:0] out_stream_V_last_V_1_data_out;
reg    out_stream_V_last_V_1_vld_in;
wire    out_stream_V_last_V_1_vld_out;
wire    out_stream_V_last_V_1_ack_in;
wire    out_stream_V_last_V_1_ack_out;
reg   [0:0] out_stream_V_last_V_1_payload_A;
reg   [0:0] out_stream_V_last_V_1_payload_B;
reg    out_stream_V_last_V_1_sel_rd;
reg    out_stream_V_last_V_1_sel_wr;
wire    out_stream_V_last_V_1_sel;
wire    out_stream_V_last_V_1_load_A;
wire    out_stream_V_last_V_1_load_B;
reg   [1:0] out_stream_V_last_V_1_state;
wire    out_stream_V_last_V_1_state_cmp_full;
wire   [0:0] out_stream_V_id_V_1_data_out;
reg    out_stream_V_id_V_1_vld_in;
wire    out_stream_V_id_V_1_vld_out;
wire    out_stream_V_id_V_1_ack_in;
wire    out_stream_V_id_V_1_ack_out;
reg    out_stream_V_id_V_1_sel_rd;
wire    out_stream_V_id_V_1_sel;
reg   [1:0] out_stream_V_id_V_1_state;
wire   [0:0] out_stream_V_dest_V_1_data_out;
reg    out_stream_V_dest_V_1_vld_in;
wire    out_stream_V_dest_V_1_vld_out;
wire    out_stream_V_dest_V_1_ack_in;
wire    out_stream_V_dest_V_1_ack_out;
reg    out_stream_V_dest_V_1_sel_rd;
wire    out_stream_V_dest_V_1_sel;
reg   [1:0] out_stream_V_dest_V_1_state;
reg    out_r_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage0;
reg   [0:0] exitcond_flatten_reg_253;
reg    ap_enable_reg_pp0_iter2;
reg   [0:0] ap_reg_pp0_iter1_exitcond_flatten_reg_253;
reg   [20:0] indvar_flatten_reg_130;
reg   [11:0] i_reg_141;
reg   [0:0] tmp_user_V_reg_152;
reg   [9:0] j_reg_167;
wire   [0:0] exitcond_flatten_fu_178_p2;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_state3_io;
wire    ap_block_state4_pp0_stage0_iter2;
reg    ap_block_state4_io;
reg    ap_block_pp0_stage0_11001;
wire   [20:0] indvar_flatten_next_fu_184_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [11:0] tmp_mid2_v_v_fu_210_p3;
reg   [11:0] tmp_mid2_v_v_reg_262;
wire   [0:0] tmp_last_V_fu_236_p2;
reg   [0:0] tmp_last_V_reg_267;
wire   [9:0] j_1_fu_247_p2;
reg    ap_block_state1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg   [11:0] ap_phi_mux_i_phi_fu_145_p4;
reg   [0:0] ap_phi_mux_tmp_user_V_phi_fu_158_p4;
wire   [63:0] tmp_4_fu_242_p1;
wire    ap_block_pp0_stage0_01001;
wire   [0:0] exitcond6_fu_190_p2;
wire   [11:0] i_s_fu_204_p2;
wire   [9:0] j_mid2_fu_196_p3;
wire   [20:0] j_cast3_fu_226_p1;
wire   [20:0] tmp_mid2_fu_218_p3;
wire   [20:0] tmp_2_fu_230_p2;
wire    ap_CS_fsm_state5;
reg    ap_block_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 out_stream_V_data_V_1_sel_rd = 1'b0;
#0 out_stream_V_data_V_1_sel_wr = 1'b0;
#0 out_stream_V_data_V_1_state = 2'd0;
#0 out_stream_V_keep_V_1_sel_rd = 1'b0;
#0 out_stream_V_keep_V_1_state = 2'd0;
#0 out_stream_V_strb_V_1_sel_rd = 1'b0;
#0 out_stream_V_strb_V_1_state = 2'd0;
#0 out_stream_V_user_V_1_sel_rd = 1'b0;
#0 out_stream_V_user_V_1_sel_wr = 1'b0;
#0 out_stream_V_user_V_1_state = 2'd0;
#0 out_stream_V_last_V_1_sel_rd = 1'b0;
#0 out_stream_V_last_V_1_sel_wr = 1'b0;
#0 out_stream_V_last_V_1_state = 2'd0;
#0 out_stream_V_id_V_1_sel_rd = 1'b0;
#0 out_stream_V_id_V_1_state = 2'd0;
#0 out_stream_V_dest_V_1_sel_rd = 1'b0;
#0 out_stream_V_dest_V_1_state = 2'd0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((out_stream_V_keep_V_1_ack_in == 1'b0) | (out_stream_V_dest_V_1_ack_in == 1'b0) | (out_stream_V_data_V_1_ack_in == 1'b0) | (out_stream_V_id_V_1_ack_in == 1'b0) | (out_stream_V_last_V_1_ack_in == 1'b0) | (out_stream_V_user_V_1_ack_in == 1'b0) | (out_stream_V_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_data_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_data_V_1_ack_out == 1'b1) & (out_stream_V_data_V_1_vld_out == 1'b1))) begin
            out_stream_V_data_V_1_sel_rd <= ~out_stream_V_data_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_data_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_stream_V_data_V_1_ack_in == 1'b1) & (out_stream_V_data_V_1_vld_in == 1'b1))) begin
            out_stream_V_data_V_1_sel_wr <= ~out_stream_V_data_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_data_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_data_V_1_state == 2'd2) & (out_stream_V_data_V_1_vld_in == 1'b0)) | ((out_stream_V_data_V_1_state == 2'd3) & (out_stream_V_data_V_1_vld_in == 1'b0) & (out_stream_V_data_V_1_ack_out == 1'b1)))) begin
            out_stream_V_data_V_1_state <= 2'd2;
        end else if ((((out_stream_V_data_V_1_state == 2'd1) & (out_stream_V_data_V_1_ack_out == 1'b0)) | ((out_stream_V_data_V_1_state == 2'd3) & (out_stream_V_data_V_1_ack_out == 1'b0) & (out_stream_V_data_V_1_vld_in == 1'b1)))) begin
            out_stream_V_data_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_data_V_1_vld_in == 1'b0) & (out_stream_V_data_V_1_ack_out == 1'b1)) & ~((out_stream_V_data_V_1_ack_out == 1'b0) & (out_stream_V_data_V_1_vld_in == 1'b1)) & (out_stream_V_data_V_1_state == 2'd3)) | ((out_stream_V_data_V_1_state == 2'd1) & (out_stream_V_data_V_1_ack_out == 1'b1)) | ((out_stream_V_data_V_1_state == 2'd2) & (out_stream_V_data_V_1_vld_in == 1'b1)))) begin
            out_stream_V_data_V_1_state <= 2'd3;
        end else begin
            out_stream_V_data_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_dest_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_dest_V_1_ack_out == 1'b1) & (out_stream_V_dest_V_1_vld_out == 1'b1))) begin
            out_stream_V_dest_V_1_sel_rd <= ~out_stream_V_dest_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_dest_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_dest_V_1_state == 2'd2) & (out_stream_V_dest_V_1_vld_in == 1'b0)) | ((out_stream_V_dest_V_1_state == 2'd3) & (out_stream_V_dest_V_1_vld_in == 1'b0) & (out_stream_V_dest_V_1_ack_out == 1'b1)))) begin
            out_stream_V_dest_V_1_state <= 2'd2;
        end else if ((((out_stream_V_dest_V_1_state == 2'd1) & (out_stream_V_dest_V_1_ack_out == 1'b0)) | ((out_stream_V_dest_V_1_state == 2'd3) & (out_stream_V_dest_V_1_ack_out == 1'b0) & (out_stream_V_dest_V_1_vld_in == 1'b1)))) begin
            out_stream_V_dest_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_dest_V_1_vld_in == 1'b0) & (out_stream_V_dest_V_1_ack_out == 1'b1)) & ~((out_stream_V_dest_V_1_ack_out == 1'b0) & (out_stream_V_dest_V_1_vld_in == 1'b1)) & (out_stream_V_dest_V_1_state == 2'd3)) | ((out_stream_V_dest_V_1_state == 2'd1) & (out_stream_V_dest_V_1_ack_out == 1'b1)) | ((out_stream_V_dest_V_1_state == 2'd2) & (out_stream_V_dest_V_1_vld_in == 1'b1)))) begin
            out_stream_V_dest_V_1_state <= 2'd3;
        end else begin
            out_stream_V_dest_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_id_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_id_V_1_ack_out == 1'b1) & (out_stream_V_id_V_1_vld_out == 1'b1))) begin
            out_stream_V_id_V_1_sel_rd <= ~out_stream_V_id_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_id_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_id_V_1_state == 2'd2) & (out_stream_V_id_V_1_vld_in == 1'b0)) | ((out_stream_V_id_V_1_state == 2'd3) & (out_stream_V_id_V_1_vld_in == 1'b0) & (out_stream_V_id_V_1_ack_out == 1'b1)))) begin
            out_stream_V_id_V_1_state <= 2'd2;
        end else if ((((out_stream_V_id_V_1_state == 2'd1) & (out_stream_V_id_V_1_ack_out == 1'b0)) | ((out_stream_V_id_V_1_state == 2'd3) & (out_stream_V_id_V_1_ack_out == 1'b0) & (out_stream_V_id_V_1_vld_in == 1'b1)))) begin
            out_stream_V_id_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_id_V_1_vld_in == 1'b0) & (out_stream_V_id_V_1_ack_out == 1'b1)) & ~((out_stream_V_id_V_1_ack_out == 1'b0) & (out_stream_V_id_V_1_vld_in == 1'b1)) & (out_stream_V_id_V_1_state == 2'd3)) | ((out_stream_V_id_V_1_state == 2'd1) & (out_stream_V_id_V_1_ack_out == 1'b1)) | ((out_stream_V_id_V_1_state == 2'd2) & (out_stream_V_id_V_1_vld_in == 1'b1)))) begin
            out_stream_V_id_V_1_state <= 2'd3;
        end else begin
            out_stream_V_id_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_keep_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_keep_V_1_ack_out == 1'b1) & (out_stream_V_keep_V_1_vld_out == 1'b1))) begin
            out_stream_V_keep_V_1_sel_rd <= ~out_stream_V_keep_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_keep_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_keep_V_1_state == 2'd2) & (out_stream_V_keep_V_1_vld_in == 1'b0)) | ((out_stream_V_keep_V_1_state == 2'd3) & (out_stream_V_keep_V_1_vld_in == 1'b0) & (out_stream_V_keep_V_1_ack_out == 1'b1)))) begin
            out_stream_V_keep_V_1_state <= 2'd2;
        end else if ((((out_stream_V_keep_V_1_state == 2'd1) & (out_stream_V_keep_V_1_ack_out == 1'b0)) | ((out_stream_V_keep_V_1_state == 2'd3) & (out_stream_V_keep_V_1_ack_out == 1'b0) & (out_stream_V_keep_V_1_vld_in == 1'b1)))) begin
            out_stream_V_keep_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_keep_V_1_vld_in == 1'b0) & (out_stream_V_keep_V_1_ack_out == 1'b1)) & ~((out_stream_V_keep_V_1_ack_out == 1'b0) & (out_stream_V_keep_V_1_vld_in == 1'b1)) & (out_stream_V_keep_V_1_state == 2'd3)) | ((out_stream_V_keep_V_1_state == 2'd1) & (out_stream_V_keep_V_1_ack_out == 1'b1)) | ((out_stream_V_keep_V_1_state == 2'd2) & (out_stream_V_keep_V_1_vld_in == 1'b1)))) begin
            out_stream_V_keep_V_1_state <= 2'd3;
        end else begin
            out_stream_V_keep_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_last_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_last_V_1_ack_out == 1'b1) & (out_stream_V_last_V_1_vld_out == 1'b1))) begin
            out_stream_V_last_V_1_sel_rd <= ~out_stream_V_last_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_last_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_stream_V_last_V_1_ack_in == 1'b1) & (out_stream_V_last_V_1_vld_in == 1'b1))) begin
            out_stream_V_last_V_1_sel_wr <= ~out_stream_V_last_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_last_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_last_V_1_state == 2'd2) & (out_stream_V_last_V_1_vld_in == 1'b0)) | ((out_stream_V_last_V_1_state == 2'd3) & (out_stream_V_last_V_1_vld_in == 1'b0) & (out_stream_V_last_V_1_ack_out == 1'b1)))) begin
            out_stream_V_last_V_1_state <= 2'd2;
        end else if ((((out_stream_V_last_V_1_state == 2'd1) & (out_stream_V_last_V_1_ack_out == 1'b0)) | ((out_stream_V_last_V_1_state == 2'd3) & (out_stream_V_last_V_1_ack_out == 1'b0) & (out_stream_V_last_V_1_vld_in == 1'b1)))) begin
            out_stream_V_last_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_last_V_1_vld_in == 1'b0) & (out_stream_V_last_V_1_ack_out == 1'b1)) & ~((out_stream_V_last_V_1_ack_out == 1'b0) & (out_stream_V_last_V_1_vld_in == 1'b1)) & (out_stream_V_last_V_1_state == 2'd3)) | ((out_stream_V_last_V_1_state == 2'd1) & (out_stream_V_last_V_1_ack_out == 1'b1)) | ((out_stream_V_last_V_1_state == 2'd2) & (out_stream_V_last_V_1_vld_in == 1'b1)))) begin
            out_stream_V_last_V_1_state <= 2'd3;
        end else begin
            out_stream_V_last_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_strb_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_strb_V_1_ack_out == 1'b1) & (out_stream_V_strb_V_1_vld_out == 1'b1))) begin
            out_stream_V_strb_V_1_sel_rd <= ~out_stream_V_strb_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_strb_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_strb_V_1_state == 2'd2) & (out_stream_V_strb_V_1_vld_in == 1'b0)) | ((out_stream_V_strb_V_1_state == 2'd3) & (out_stream_V_strb_V_1_vld_in == 1'b0) & (out_stream_V_strb_V_1_ack_out == 1'b1)))) begin
            out_stream_V_strb_V_1_state <= 2'd2;
        end else if ((((out_stream_V_strb_V_1_state == 2'd1) & (out_stream_V_strb_V_1_ack_out == 1'b0)) | ((out_stream_V_strb_V_1_state == 2'd3) & (out_stream_V_strb_V_1_ack_out == 1'b0) & (out_stream_V_strb_V_1_vld_in == 1'b1)))) begin
            out_stream_V_strb_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_strb_V_1_vld_in == 1'b0) & (out_stream_V_strb_V_1_ack_out == 1'b1)) & ~((out_stream_V_strb_V_1_ack_out == 1'b0) & (out_stream_V_strb_V_1_vld_in == 1'b1)) & (out_stream_V_strb_V_1_state == 2'd3)) | ((out_stream_V_strb_V_1_state == 2'd1) & (out_stream_V_strb_V_1_ack_out == 1'b1)) | ((out_stream_V_strb_V_1_state == 2'd2) & (out_stream_V_strb_V_1_vld_in == 1'b1)))) begin
            out_stream_V_strb_V_1_state <= 2'd3;
        end else begin
            out_stream_V_strb_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_user_V_1_sel_rd <= 1'b0;
    end else begin
        if (((out_stream_V_user_V_1_ack_out == 1'b1) & (out_stream_V_user_V_1_vld_out == 1'b1))) begin
            out_stream_V_user_V_1_sel_rd <= ~out_stream_V_user_V_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_user_V_1_sel_wr <= 1'b0;
    end else begin
        if (((out_stream_V_user_V_1_ack_in == 1'b1) & (out_stream_V_user_V_1_vld_in == 1'b1))) begin
            out_stream_V_user_V_1_sel_wr <= ~out_stream_V_user_V_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        out_stream_V_user_V_1_state <= 2'd0;
    end else begin
        if ((((out_stream_V_user_V_1_state == 2'd2) & (out_stream_V_user_V_1_vld_in == 1'b0)) | ((out_stream_V_user_V_1_state == 2'd3) & (out_stream_V_user_V_1_vld_in == 1'b0) & (out_stream_V_user_V_1_ack_out == 1'b1)))) begin
            out_stream_V_user_V_1_state <= 2'd2;
        end else if ((((out_stream_V_user_V_1_state == 2'd1) & (out_stream_V_user_V_1_ack_out == 1'b0)) | ((out_stream_V_user_V_1_state == 2'd3) & (out_stream_V_user_V_1_ack_out == 1'b0) & (out_stream_V_user_V_1_vld_in == 1'b1)))) begin
            out_stream_V_user_V_1_state <= 2'd1;
        end else if (((~((out_stream_V_user_V_1_vld_in == 1'b0) & (out_stream_V_user_V_1_ack_out == 1'b1)) & ~((out_stream_V_user_V_1_ack_out == 1'b0) & (out_stream_V_user_V_1_vld_in == 1'b1)) & (out_stream_V_user_V_1_state == 2'd3)) | ((out_stream_V_user_V_1_state == 2'd1) & (out_stream_V_user_V_1_ack_out == 1'b1)) | ((out_stream_V_user_V_1_state == 2'd2) & (out_stream_V_user_V_1_vld_in == 1'b1)))) begin
            out_stream_V_user_V_1_state <= 2'd3;
        end else begin
            out_stream_V_user_V_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_141 <= tmp_mid2_v_v_reg_262;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_141 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_178_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_130 <= indvar_flatten_next_fu_184_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_130 <= 21'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_178_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_reg_167 <= j_1_fu_247_p2;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        j_reg_167 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_reg_pp0_iter1_exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp_user_V_reg_152 <= 1'd0;
    end else if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        tmp_user_V_reg_152 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_reg_pp0_iter1_exitcond_flatten_reg_253 <= exitcond_flatten_reg_253;
        exitcond_flatten_reg_253 <= exitcond_flatten_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_data_V_1_load_A == 1'b1)) begin
        out_stream_V_data_V_1_payload_A <= test_init_arr_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_data_V_1_load_B == 1'b1)) begin
        out_stream_V_data_V_1_payload_B <= test_init_arr_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_last_V_1_load_A == 1'b1)) begin
        out_stream_V_last_V_1_payload_A <= tmp_last_V_reg_267;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_last_V_1_load_B == 1'b1)) begin
        out_stream_V_last_V_1_payload_B <= tmp_last_V_reg_267;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_user_V_1_load_A == 1'b1)) begin
        out_stream_V_user_V_1_payload_A <= ap_phi_mux_tmp_user_V_phi_fu_158_p4;
    end
end

always @ (posedge ap_clk) begin
    if ((out_stream_V_user_V_1_load_B == 1'b1)) begin
        out_stream_V_user_V_1_payload_B <= ap_phi_mux_tmp_user_V_phi_fu_158_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_178_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_last_V_reg_267 <= tmp_last_V_fu_236_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_fu_178_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_mid2_v_v_reg_262 <= tmp_mid2_v_v_fu_210_p3;
    end
end

always @ (*) begin
    if ((exitcond_flatten_fu_178_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((~((out_stream_V_keep_V_1_ack_in == 1'b0) | (out_stream_V_dest_V_1_ack_in == 1'b0) | (out_stream_V_data_V_1_ack_in == 1'b0) | (out_stream_V_id_V_1_ack_in == 1'b0) | (out_stream_V_last_V_1_ack_in == 1'b0) | (out_stream_V_user_V_1_ack_in == 1'b0) | (out_stream_V_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_flatten_reg_253 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_145_p4 = tmp_mid2_v_v_reg_262;
    end else begin
        ap_phi_mux_i_phi_fu_145_p4 = i_reg_141;
    end
end

always @ (*) begin
    if (((ap_reg_pp0_iter1_exitcond_flatten_reg_253 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_tmp_user_V_phi_fu_158_p4 = 1'd0;
    end else begin
        ap_phi_mux_tmp_user_V_phi_fu_158_p4 = tmp_user_V_reg_152;
    end
end

always @ (*) begin
    if ((~((out_stream_V_keep_V_1_ack_in == 1'b0) | (out_stream_V_dest_V_1_ack_in == 1'b0) | (out_stream_V_data_V_1_ack_in == 1'b0) | (out_stream_V_id_V_1_ack_in == 1'b0) | (out_stream_V_last_V_1_ack_in == 1'b0) | (out_stream_V_user_V_1_ack_in == 1'b0) | (out_stream_V_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_reg_pp0_iter1_exitcond_flatten_reg_253 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((exitcond_flatten_reg_253 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        out_r_TDATA_blk_n = out_stream_V_data_V_1_state[1'd1];
    end else begin
        out_r_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((out_stream_V_data_V_1_sel == 1'b1)) begin
        out_stream_V_data_V_1_data_out = out_stream_V_data_V_1_payload_B;
    end else begin
        out_stream_V_data_V_1_data_out = out_stream_V_data_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_data_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_data_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_dest_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_dest_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_id_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_id_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_keep_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_keep_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((out_stream_V_last_V_1_sel == 1'b1)) begin
        out_stream_V_last_V_1_data_out = out_stream_V_last_V_1_payload_B;
    end else begin
        out_stream_V_last_V_1_data_out = out_stream_V_last_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_last_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_last_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_strb_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_strb_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if ((out_stream_V_user_V_1_sel == 1'b1)) begin
        out_stream_V_user_V_1_data_out = out_stream_V_user_V_1_payload_B;
    end else begin
        out_stream_V_user_V_1_data_out = out_stream_V_user_V_1_payload_A;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (exitcond_flatten_reg_253 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        out_stream_V_user_V_1_vld_in = 1'b1;
    end else begin
        out_stream_V_user_V_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        test_init_arr_V_ce0 = 1'b1;
    end else begin
        test_init_arr_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_flatten_fu_178_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (exitcond_flatten_fu_178_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            if ((~((out_stream_V_keep_V_1_ack_in == 1'b0) | (out_stream_V_dest_V_1_ack_in == 1'b0) | (out_stream_V_data_V_1_ack_in == 1'b0) | (out_stream_V_id_V_1_ack_in == 1'b0) | (out_stream_V_last_V_1_ack_in == 1'b0) | (out_stream_V_user_V_1_ack_in == 1'b0) | (out_stream_V_strb_V_1_ack_in == 1'b0)) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b1 == ap_block_state3_io) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((1'b1 == ap_block_state4_io) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((1'b1 == ap_block_state3_io) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((exitcond_flatten_reg_253 == 1'd0) & (out_stream_V_data_V_1_ack_in == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state4_io = ((ap_reg_pp0_iter1_exitcond_flatten_reg_253 == 1'd0) & (out_stream_V_data_V_1_ack_in == 1'b0));
end

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state5 = ((out_stream_V_keep_V_1_ack_in == 1'b0) | (out_stream_V_dest_V_1_ack_in == 1'b0) | (out_stream_V_data_V_1_ack_in == 1'b0) | (out_stream_V_id_V_1_ack_in == 1'b0) | (out_stream_V_last_V_1_ack_in == 1'b0) | (out_stream_V_user_V_1_ack_in == 1'b0) | (out_stream_V_strb_V_1_ack_in == 1'b0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign exitcond6_fu_190_p2 = ((j_reg_167 == 10'd512) ? 1'b1 : 1'b0);

assign exitcond_flatten_fu_178_p2 = ((indvar_flatten_reg_130 == 21'd2096640) ? 1'b1 : 1'b0);

assign i_s_fu_204_p2 = (ap_phi_mux_i_phi_fu_145_p4 + 12'd1);

assign indvar_flatten_next_fu_184_p2 = (indvar_flatten_reg_130 + 21'd1);

assign j_1_fu_247_p2 = (j_mid2_fu_196_p3 + 10'd1);

assign j_cast3_fu_226_p1 = j_mid2_fu_196_p3;

assign j_mid2_fu_196_p3 = ((exitcond6_fu_190_p2[0:0] === 1'b1) ? 10'd0 : j_reg_167);

assign out_r_TDATA = out_stream_V_data_V_1_data_out;

assign out_r_TDEST = out_stream_V_dest_V_1_data_out;

assign out_r_TID = out_stream_V_id_V_1_data_out;

assign out_r_TKEEP = out_stream_V_keep_V_1_data_out;

assign out_r_TLAST = out_stream_V_last_V_1_data_out;

assign out_r_TSTRB = out_stream_V_strb_V_1_data_out;

assign out_r_TUSER = out_stream_V_user_V_1_data_out;

assign out_r_TVALID = out_stream_V_dest_V_1_state[1'd0];

assign out_stream_V_data_V_1_ack_in = out_stream_V_data_V_1_state[1'd1];

assign out_stream_V_data_V_1_ack_out = out_r_TREADY;

assign out_stream_V_data_V_1_load_A = (out_stream_V_data_V_1_state_cmp_full & ~out_stream_V_data_V_1_sel_wr);

assign out_stream_V_data_V_1_load_B = (out_stream_V_data_V_1_state_cmp_full & out_stream_V_data_V_1_sel_wr);

assign out_stream_V_data_V_1_sel = out_stream_V_data_V_1_sel_rd;

assign out_stream_V_data_V_1_state_cmp_full = ((out_stream_V_data_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_stream_V_data_V_1_vld_out = out_stream_V_data_V_1_state[1'd0];

assign out_stream_V_dest_V_1_ack_in = out_stream_V_dest_V_1_state[1'd1];

assign out_stream_V_dest_V_1_ack_out = out_r_TREADY;

assign out_stream_V_dest_V_1_data_out = 1'd0;

assign out_stream_V_dest_V_1_sel = out_stream_V_dest_V_1_sel_rd;

assign out_stream_V_dest_V_1_vld_out = out_stream_V_dest_V_1_state[1'd0];

assign out_stream_V_id_V_1_ack_in = out_stream_V_id_V_1_state[1'd1];

assign out_stream_V_id_V_1_ack_out = out_r_TREADY;

assign out_stream_V_id_V_1_data_out = 1'd0;

assign out_stream_V_id_V_1_sel = out_stream_V_id_V_1_sel_rd;

assign out_stream_V_id_V_1_vld_out = out_stream_V_id_V_1_state[1'd0];

assign out_stream_V_keep_V_1_ack_in = out_stream_V_keep_V_1_state[1'd1];

assign out_stream_V_keep_V_1_ack_out = out_r_TREADY;

assign out_stream_V_keep_V_1_data_out = 4'd15;

assign out_stream_V_keep_V_1_sel = out_stream_V_keep_V_1_sel_rd;

assign out_stream_V_keep_V_1_vld_out = out_stream_V_keep_V_1_state[1'd0];

assign out_stream_V_last_V_1_ack_in = out_stream_V_last_V_1_state[1'd1];

assign out_stream_V_last_V_1_ack_out = out_r_TREADY;

assign out_stream_V_last_V_1_load_A = (out_stream_V_last_V_1_state_cmp_full & ~out_stream_V_last_V_1_sel_wr);

assign out_stream_V_last_V_1_load_B = (out_stream_V_last_V_1_state_cmp_full & out_stream_V_last_V_1_sel_wr);

assign out_stream_V_last_V_1_sel = out_stream_V_last_V_1_sel_rd;

assign out_stream_V_last_V_1_state_cmp_full = ((out_stream_V_last_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_stream_V_last_V_1_vld_out = out_stream_V_last_V_1_state[1'd0];

assign out_stream_V_strb_V_1_ack_in = out_stream_V_strb_V_1_state[1'd1];

assign out_stream_V_strb_V_1_ack_out = out_r_TREADY;

assign out_stream_V_strb_V_1_data_out = 4'd0;

assign out_stream_V_strb_V_1_sel = out_stream_V_strb_V_1_sel_rd;

assign out_stream_V_strb_V_1_vld_out = out_stream_V_strb_V_1_state[1'd0];

assign out_stream_V_user_V_1_ack_in = out_stream_V_user_V_1_state[1'd1];

assign out_stream_V_user_V_1_ack_out = out_r_TREADY;

assign out_stream_V_user_V_1_load_A = (out_stream_V_user_V_1_state_cmp_full & ~out_stream_V_user_V_1_sel_wr);

assign out_stream_V_user_V_1_load_B = (out_stream_V_user_V_1_state_cmp_full & out_stream_V_user_V_1_sel_wr);

assign out_stream_V_user_V_1_sel = out_stream_V_user_V_1_sel_rd;

assign out_stream_V_user_V_1_state_cmp_full = ((out_stream_V_user_V_1_state != 2'd1) ? 1'b1 : 1'b0);

assign out_stream_V_user_V_1_vld_out = out_stream_V_user_V_1_state[1'd0];

assign test_init_arr_V_address0 = tmp_4_fu_242_p1;

assign tmp_2_fu_230_p2 = (j_cast3_fu_226_p1 + tmp_mid2_fu_218_p3);

assign tmp_4_fu_242_p1 = j_mid2_fu_196_p3;

assign tmp_last_V_fu_236_p2 = ((tmp_2_fu_230_p2 == 21'd2096639) ? 1'b1 : 1'b0);

assign tmp_mid2_fu_218_p3 = {{tmp_mid2_v_v_fu_210_p3}, {9'd0}};

assign tmp_mid2_v_v_fu_210_p3 = ((exitcond6_fu_190_p2[0:0] === 1'b1) ? i_s_fu_204_p2 : ap_phi_mux_i_phi_fu_145_p4);

endmodule //mem_write
