// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module pseudo_random (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        load,
        ap_return,
        ap_ce
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   load;
output  [63:0] ap_return;
input   ap_ce;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] lfsr_V;
wire   [63:0] p_Result_s_fu_102_p3;
wire   [0:0] p_Val2_s_fu_34_p0;
wire   [63:0] p_Val2_s_fu_34_p3;
wire   [0:0] tmp_2_fu_50_p3;
wire   [0:0] tmp_1_fu_42_p3;
wire   [0:0] tmp_3_fu_58_p3;
wire   [0:0] tmp_4_fu_66_p3;
wire   [0:0] tmp1_fu_80_p2;
wire   [0:0] tmp_fu_74_p2;
wire   [0:0] new_bit_fu_86_p2;
wire   [62:0] r_V_fu_92_p4;
reg   [0:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 lfsr_V = 64'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        lfsr_V <= p_Result_s_fu_102_p3;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
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
    if (((ap_start == 1'b1) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_return = {{new_bit_fu_86_p2}, {r_V_fu_92_p4}};

assign new_bit_fu_86_p2 = (tmp_fu_74_p2 ^ tmp1_fu_80_p2);

assign p_Result_s_fu_102_p3 = {{new_bit_fu_86_p2}, {r_V_fu_92_p4}};

assign p_Val2_s_fu_34_p0 = load;

assign p_Val2_s_fu_34_p3 = ((p_Val2_s_fu_34_p0[0:0] === 1'b1) ? 64'd53893933692096485 : lfsr_V);

assign r_V_fu_92_p4 = {{p_Val2_s_fu_34_p3[63:1]}};

assign tmp1_fu_80_p2 = (tmp_4_fu_66_p3 ^ tmp_3_fu_58_p3);

assign tmp_1_fu_42_p3 = p_Val2_s_fu_34_p3[32'd32];

assign tmp_2_fu_50_p3 = p_Val2_s_fu_34_p3[32'd42];

assign tmp_3_fu_58_p3 = p_Val2_s_fu_34_p3[32'd62];

assign tmp_4_fu_66_p3 = p_Val2_s_fu_34_p3[32'd63];

assign tmp_fu_74_p2 = (tmp_2_fu_50_p3 ^ tmp_1_fu_42_p3);

endmodule //pseudo_random
