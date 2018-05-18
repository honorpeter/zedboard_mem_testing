// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="mem_hw,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=800.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=7.896375,HLS_SYN_LAT=262147,HLS_SYN_TPT=262148,HLS_SYN_MEM=4,HLS_SYN_DSP=0,HLS_SYN_FF=460,HLS_SYN_LUT=1047}" *)

module mem_hw (
        s_axi_CONTROL_BUS_AWVALID,
        s_axi_CONTROL_BUS_AWREADY,
        s_axi_CONTROL_BUS_AWADDR,
        s_axi_CONTROL_BUS_WVALID,
        s_axi_CONTROL_BUS_WREADY,
        s_axi_CONTROL_BUS_WDATA,
        s_axi_CONTROL_BUS_WSTRB,
        s_axi_CONTROL_BUS_ARVALID,
        s_axi_CONTROL_BUS_ARREADY,
        s_axi_CONTROL_BUS_ARADDR,
        s_axi_CONTROL_BUS_RVALID,
        s_axi_CONTROL_BUS_RREADY,
        s_axi_CONTROL_BUS_RDATA,
        s_axi_CONTROL_BUS_RRESP,
        s_axi_CONTROL_BUS_BVALID,
        s_axi_CONTROL_BUS_BREADY,
        s_axi_CONTROL_BUS_BRESP,
        ap_clk,
        ap_rst_n,
        interrupt,
        out_r_TDATA,
        out_r_TKEEP,
        out_r_TSTRB,
        out_r_TUSER,
        out_r_TLAST,
        out_r_TID,
        out_r_TDEST,
        in_r_TDATA,
        in_r_TKEEP,
        in_r_TSTRB,
        in_r_TUSER,
        in_r_TLAST,
        in_r_TID,
        in_r_TDEST,
        in_r_TVALID,
        in_r_TREADY,
        out_r_TVALID,
        out_r_TREADY
);

parameter    C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 13;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_S_AXI_ADDR_WIDTH = 32;

parameter C_S_AXI_CONTROL_BUS_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   s_axi_CONTROL_BUS_AWVALID;
output   s_axi_CONTROL_BUS_AWREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_AWADDR;
input   s_axi_CONTROL_BUS_WVALID;
output   s_axi_CONTROL_BUS_WREADY;
input  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_WDATA;
input  [C_S_AXI_CONTROL_BUS_WSTRB_WIDTH - 1:0] s_axi_CONTROL_BUS_WSTRB;
input   s_axi_CONTROL_BUS_ARVALID;
output   s_axi_CONTROL_BUS_ARREADY;
input  [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_ARADDR;
output   s_axi_CONTROL_BUS_RVALID;
input   s_axi_CONTROL_BUS_RREADY;
output  [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_RDATA;
output  [1:0] s_axi_CONTROL_BUS_RRESP;
output   s_axi_CONTROL_BUS_BVALID;
input   s_axi_CONTROL_BUS_BREADY;
output  [1:0] s_axi_CONTROL_BUS_BRESP;
input   ap_clk;
input   ap_rst_n;
output   interrupt;
output  [63:0] out_r_TDATA;
output  [7:0] out_r_TKEEP;
output  [7:0] out_r_TSTRB;
output  [0:0] out_r_TUSER;
output  [0:0] out_r_TLAST;
output  [0:0] out_r_TID;
output  [0:0] out_r_TDEST;
input  [63:0] in_r_TDATA;
input  [7:0] in_r_TKEEP;
input  [7:0] in_r_TSTRB;
input  [0:0] in_r_TUSER;
input  [0:0] in_r_TLAST;
input  [0:0] in_r_TID;
input  [0:0] in_r_TDEST;
input   in_r_TVALID;
output   in_r_TREADY;
output   out_r_TVALID;
input   out_r_TREADY;

reg    ap_rst_n_inv;
wire    ap_start;
wire    ap_ready;
wire    ap_done;
wire    ap_idle;
wire   [31:0] rw;
wire   [63:0] mask;
wire   [63:0] test_init_arr_V_q0;
wire    mem_read_U0_ap_start;
wire    mem_read_U0_ap_done;
wire    mem_read_U0_ap_continue;
wire    mem_read_U0_ap_idle;
wire    mem_read_U0_ap_ready;
wire    mem_read_U0_in_r_TREADY;
wire    mem_write_U0_ap_start;
wire    mem_write_U0_ap_done;
wire    mem_write_U0_ap_continue;
wire    mem_write_U0_ap_idle;
wire    mem_write_U0_ap_ready;
wire   [63:0] mem_write_U0_out_r_TDATA;
wire    mem_write_U0_out_r_TVALID;
wire   [7:0] mem_write_U0_out_r_TKEEP;
wire   [7:0] mem_write_U0_out_r_TSTRB;
wire   [0:0] mem_write_U0_out_r_TUSER;
wire   [0:0] mem_write_U0_out_r_TLAST;
wire   [0:0] mem_write_U0_out_r_TID;
wire   [0:0] mem_write_U0_out_r_TDEST;
wire   [8:0] mem_write_U0_test_init_arr_V_address0;
wire    mem_write_U0_test_init_arr_V_ce0;
wire    ap_sync_continue;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_mem_read_U0_ap_ready;
wire    ap_sync_mem_read_U0_ap_ready;
reg   [1:0] mem_read_U0_ap_ready_count;
reg    ap_sync_reg_mem_write_U0_ap_ready;
wire    ap_sync_mem_write_U0_ap_ready;
reg   [1:0] mem_write_U0_ap_ready_count;
wire    mem_read_U0_start_full_n;
wire    mem_read_U0_start_write;
wire    mem_write_U0_start_full_n;
wire    mem_write_U0_start_write;

// power-on initialization
initial begin
#0 ap_sync_reg_mem_read_U0_ap_ready = 1'b0;
#0 mem_read_U0_ap_ready_count = 2'd0;
#0 ap_sync_reg_mem_write_U0_ap_ready = 1'b0;
#0 mem_write_U0_ap_ready_count = 2'd0;
end

mem_hw_CONTROL_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_BUS_DATA_WIDTH ))
mem_hw_CONTROL_BUS_s_axi_U(
    .AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .WVALID(s_axi_CONTROL_BUS_WVALID),
    .WREADY(s_axi_CONTROL_BUS_WREADY),
    .WDATA(s_axi_CONTROL_BUS_WDATA),
    .WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .RVALID(s_axi_CONTROL_BUS_RVALID),
    .RREADY(s_axi_CONTROL_BUS_RREADY),
    .RDATA(s_axi_CONTROL_BUS_RDATA),
    .RRESP(s_axi_CONTROL_BUS_RRESP),
    .BVALID(s_axi_CONTROL_BUS_BVALID),
    .BREADY(s_axi_CONTROL_BUS_BREADY),
    .BRESP(s_axi_CONTROL_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .rw(rw),
    .mask(mask),
    .test_init_arr_V_address0(mem_write_U0_test_init_arr_V_address0),
    .test_init_arr_V_ce0(mem_write_U0_test_init_arr_V_ce0),
    .test_init_arr_V_q0(test_init_arr_V_q0)
);

mem_read mem_read_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(mem_read_U0_ap_start),
    .ap_done(mem_read_U0_ap_done),
    .ap_continue(mem_read_U0_ap_continue),
    .ap_idle(mem_read_U0_ap_idle),
    .ap_ready(mem_read_U0_ap_ready),
    .in_r_TDATA(in_r_TDATA),
    .in_r_TVALID(in_r_TVALID),
    .in_r_TREADY(mem_read_U0_in_r_TREADY),
    .in_r_TKEEP(in_r_TKEEP),
    .in_r_TSTRB(in_r_TSTRB),
    .in_r_TUSER(in_r_TUSER),
    .in_r_TLAST(in_r_TLAST),
    .in_r_TID(in_r_TID),
    .in_r_TDEST(in_r_TDEST)
);

mem_write mem_write_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(mem_write_U0_ap_start),
    .ap_done(mem_write_U0_ap_done),
    .ap_continue(mem_write_U0_ap_continue),
    .ap_idle(mem_write_U0_ap_idle),
    .ap_ready(mem_write_U0_ap_ready),
    .out_r_TDATA(mem_write_U0_out_r_TDATA),
    .out_r_TVALID(mem_write_U0_out_r_TVALID),
    .out_r_TREADY(out_r_TREADY),
    .out_r_TKEEP(mem_write_U0_out_r_TKEEP),
    .out_r_TSTRB(mem_write_U0_out_r_TSTRB),
    .out_r_TUSER(mem_write_U0_out_r_TUSER),
    .out_r_TLAST(mem_write_U0_out_r_TLAST),
    .out_r_TID(mem_write_U0_out_r_TID),
    .out_r_TDEST(mem_write_U0_out_r_TDEST),
    .test_init_arr_V_address0(mem_write_U0_test_init_arr_V_address0),
    .test_init_arr_V_ce0(mem_write_U0_test_init_arr_V_ce0),
    .test_init_arr_V_q0(test_init_arr_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_mem_read_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_mem_read_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_mem_read_U0_ap_ready <= ap_sync_mem_read_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_sync_reg_mem_write_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_mem_write_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_mem_write_U0_ap_ready <= ap_sync_mem_write_U0_ap_ready;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((mem_read_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        mem_read_U0_ap_ready_count <= (mem_read_U0_ap_ready_count - 2'd1);
    end else if (((mem_read_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        mem_read_U0_ap_ready_count <= (mem_read_U0_ap_ready_count + 2'd1);
    end
end

always @ (posedge ap_clk) begin
    if (((mem_write_U0_ap_ready == 1'b0) & (ap_sync_ready == 1'b1))) begin
        mem_write_U0_ap_ready_count <= (mem_write_U0_ap_ready_count - 2'd1);
    end else if (((mem_write_U0_ap_ready == 1'b1) & (ap_sync_ready == 1'b0))) begin
        mem_write_U0_ap_ready_count <= (mem_write_U0_ap_ready_count + 2'd1);
    end
end

assign ap_done = mem_write_U0_ap_done;

assign ap_idle = (mem_write_U0_ap_idle & mem_read_U0_ap_idle);

assign ap_ready = ap_sync_ready;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = mem_write_U0_ap_done;

assign ap_sync_mem_read_U0_ap_ready = (mem_read_U0_ap_ready | ap_sync_reg_mem_read_U0_ap_ready);

assign ap_sync_mem_write_U0_ap_ready = (mem_write_U0_ap_ready | ap_sync_reg_mem_write_U0_ap_ready);

assign ap_sync_ready = (ap_sync_mem_write_U0_ap_ready & ap_sync_mem_read_U0_ap_ready);

assign in_r_TREADY = mem_read_U0_in_r_TREADY;

assign mem_read_U0_ap_continue = 1'b1;

assign mem_read_U0_ap_start = ((ap_sync_reg_mem_read_U0_ap_ready ^ 1'b1) & ap_start);

assign mem_read_U0_start_full_n = 1'b1;

assign mem_read_U0_start_write = 1'b0;

assign mem_write_U0_ap_continue = 1'b1;

assign mem_write_U0_ap_start = ((ap_sync_reg_mem_write_U0_ap_ready ^ 1'b1) & ap_start);

assign mem_write_U0_start_full_n = 1'b1;

assign mem_write_U0_start_write = 1'b0;

assign out_r_TDATA = mem_write_U0_out_r_TDATA;

assign out_r_TDEST = mem_write_U0_out_r_TDEST;

assign out_r_TID = mem_write_U0_out_r_TID;

assign out_r_TKEEP = mem_write_U0_out_r_TKEEP;

assign out_r_TLAST = mem_write_U0_out_r_TLAST;

assign out_r_TSTRB = mem_write_U0_out_r_TSTRB;

assign out_r_TUSER = mem_write_U0_out_r_TUSER;

assign out_r_TVALID = mem_write_U0_out_r_TVALID;

endmodule //mem_hw