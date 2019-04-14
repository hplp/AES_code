// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.3
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module InvSubBytes (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        ap_ce,
        state_0_read,
        state_1_read,
        state_2_read,
        state_3_read,
        state_4_read,
        state_5_read,
        state_6_read,
        state_7_read,
        state_8_read,
        state_9_read,
        state_10_read,
        state_11_read,
        state_1213_read,
        state_13_read,
        state_14_read,
        state_15_read,
        ap_return_0,
        ap_return_1,
        ap_return_2,
        ap_return_3,
        ap_return_4,
        ap_return_5,
        ap_return_6,
        ap_return_7,
        ap_return_8,
        ap_return_9,
        ap_return_10,
        ap_return_11,
        ap_return_12,
        ap_return_13,
        ap_return_14,
        ap_return_15
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   ap_ce;
input  [7:0] state_0_read;
input  [7:0] state_1_read;
input  [7:0] state_2_read;
input  [7:0] state_3_read;
input  [7:0] state_4_read;
input  [7:0] state_5_read;
input  [7:0] state_6_read;
input  [7:0] state_7_read;
input  [7:0] state_8_read;
input  [7:0] state_9_read;
input  [7:0] state_10_read;
input  [7:0] state_11_read;
input  [7:0] state_1213_read;
input  [7:0] state_13_read;
input  [7:0] state_14_read;
input  [7:0] state_15_read;
output  [7:0] ap_return_0;
output  [7:0] ap_return_1;
output  [7:0] ap_return_2;
output  [7:0] ap_return_3;
output  [7:0] ap_return_4;
output  [7:0] ap_return_5;
output  [7:0] ap_return_6;
output  [7:0] ap_return_7;
output  [7:0] ap_return_8;
output  [7:0] ap_return_9;
output  [7:0] ap_return_10;
output  [7:0] ap_return_11;
output  [7:0] ap_return_12;
output  [7:0] ap_return_13;
output  [7:0] ap_return_14;
output  [7:0] ap_return_15;

reg ap_done;
reg ap_idle;
reg ap_ready;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [10:0] decipher_address0;
reg    decipher_ce0;
wire   [7:0] decipher_q0;
wire   [10:0] decipher_address1;
reg    decipher_ce1;
wire   [7:0] decipher_q1;
wire   [10:0] decipher_address2;
reg    decipher_ce2;
wire   [7:0] decipher_q2;
wire   [10:0] decipher_address3;
reg    decipher_ce3;
wire   [7:0] decipher_q3;
wire   [10:0] decipher_address4;
reg    decipher_ce4;
wire   [7:0] decipher_q4;
wire   [10:0] decipher_address5;
reg    decipher_ce5;
wire   [7:0] decipher_q5;
wire   [10:0] decipher_address6;
reg    decipher_ce6;
wire   [7:0] decipher_q6;
wire   [10:0] decipher_address7;
reg    decipher_ce7;
wire   [7:0] decipher_q7;
wire   [10:0] decipher_address8;
reg    decipher_ce8;
wire   [7:0] decipher_q8;
wire   [10:0] decipher_address9;
reg    decipher_ce9;
wire   [7:0] decipher_q9;
wire   [10:0] decipher_address10;
reg    decipher_ce10;
wire   [7:0] decipher_q10;
wire   [10:0] decipher_address11;
reg    decipher_ce11;
wire   [7:0] decipher_q11;
wire   [10:0] decipher_address12;
reg    decipher_ce12;
wire   [7:0] decipher_q12;
wire   [10:0] decipher_address13;
reg    decipher_ce13;
wire   [7:0] decipher_q13;
wire   [10:0] decipher_address14;
reg    decipher_ce14;
wire   [7:0] decipher_q14;
wire   [10:0] decipher_address15;
reg    decipher_ce15;
wire   [7:0] decipher_q15;
reg    ap_block_pp0_stage0_subdone;
wire   [63:0] tmp_s_fu_329_p1;
wire   [63:0] tmp_65_1_fu_334_p1;
wire   [63:0] tmp_65_2_fu_339_p1;
wire   [63:0] tmp_65_3_fu_344_p1;
wire   [63:0] tmp_65_4_fu_349_p1;
wire   [63:0] tmp_65_5_fu_354_p1;
wire   [63:0] tmp_65_6_fu_359_p1;
wire   [63:0] tmp_65_7_fu_364_p1;
wire   [63:0] tmp_65_8_fu_369_p1;
wire   [63:0] tmp_65_9_fu_374_p1;
wire   [63:0] tmp_65_s_fu_379_p1;
wire   [63:0] tmp_65_10_fu_384_p1;
wire   [63:0] tmp_65_11_fu_389_p1;
wire   [63:0] tmp_65_12_fu_394_p1;
wire   [63:0] tmp_65_13_fu_399_p1;
wire   [63:0] tmp_65_14_fu_404_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to0;
reg    ap_reset_idle_pp0;
reg    ap_reset_start_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

InvSubBytes_decipcud #(
    .DataWidth( 8 ),
    .AddressRange( 1280 ),
    .AddressWidth( 11 ))
decipher_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(decipher_address0),
    .ce0(decipher_ce0),
    .q0(decipher_q0),
    .address1(decipher_address1),
    .ce1(decipher_ce1),
    .q1(decipher_q1),
    .address2(decipher_address2),
    .ce2(decipher_ce2),
    .q2(decipher_q2),
    .address3(decipher_address3),
    .ce3(decipher_ce3),
    .q3(decipher_q3),
    .address4(decipher_address4),
    .ce4(decipher_ce4),
    .q4(decipher_q4),
    .address5(decipher_address5),
    .ce5(decipher_ce5),
    .q5(decipher_q5),
    .address6(decipher_address6),
    .ce6(decipher_ce6),
    .q6(decipher_q6),
    .address7(decipher_address7),
    .ce7(decipher_ce7),
    .q7(decipher_q7),
    .address8(decipher_address8),
    .ce8(decipher_ce8),
    .q8(decipher_q8),
    .address9(decipher_address9),
    .ce9(decipher_ce9),
    .q9(decipher_q9),
    .address10(decipher_address10),
    .ce10(decipher_ce10),
    .q10(decipher_q10),
    .address11(decipher_address11),
    .ce11(decipher_ce11),
    .q11(decipher_q11),
    .address12(decipher_address12),
    .ce12(decipher_ce12),
    .q12(decipher_q12),
    .address13(decipher_address13),
    .ce13(decipher_ce13),
    .q13(decipher_q13),
    .address14(decipher_address14),
    .ce14(decipher_ce14),
    .q14(decipher_q14),
    .address15(decipher_address15),
    .ce15(decipher_ce15),
    .q15(decipher_q15)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (ap_start == 1'b1))) begin
        ap_reset_start_pp0 = 1'b1;
    end else begin
        ap_reset_start_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce0 = 1'b1;
    end else begin
        decipher_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce1 = 1'b1;
    end else begin
        decipher_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce10 = 1'b1;
    end else begin
        decipher_ce10 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce11 = 1'b1;
    end else begin
        decipher_ce11 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce12 = 1'b1;
    end else begin
        decipher_ce12 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce13 = 1'b1;
    end else begin
        decipher_ce13 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce14 = 1'b1;
    end else begin
        decipher_ce14 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce15 = 1'b1;
    end else begin
        decipher_ce15 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce2 = 1'b1;
    end else begin
        decipher_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce3 = 1'b1;
    end else begin
        decipher_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce4 = 1'b1;
    end else begin
        decipher_ce4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce5 = 1'b1;
    end else begin
        decipher_ce5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce6 = 1'b1;
    end else begin
        decipher_ce6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce7 = 1'b1;
    end else begin
        decipher_ce7 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce8 = 1'b1;
    end else begin
        decipher_ce8 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        decipher_ce9 = 1'b1;
    end else begin
        decipher_ce9 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b0) & (ap_start == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_start == 1'b0) & (ap_start == 1'b1)));
end

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start == 1'b0);
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return_0 = decipher_q0;

assign ap_return_1 = decipher_q1;

assign ap_return_10 = decipher_q10;

assign ap_return_11 = decipher_q11;

assign ap_return_12 = decipher_q12;

assign ap_return_13 = decipher_q13;

assign ap_return_14 = decipher_q14;

assign ap_return_15 = decipher_q15;

assign ap_return_2 = decipher_q2;

assign ap_return_3 = decipher_q3;

assign ap_return_4 = decipher_q4;

assign ap_return_5 = decipher_q5;

assign ap_return_6 = decipher_q6;

assign ap_return_7 = decipher_q7;

assign ap_return_8 = decipher_q8;

assign ap_return_9 = decipher_q9;

assign decipher_address0 = tmp_s_fu_329_p1;

assign decipher_address1 = tmp_65_1_fu_334_p1;

assign decipher_address10 = tmp_65_s_fu_379_p1;

assign decipher_address11 = tmp_65_10_fu_384_p1;

assign decipher_address12 = tmp_65_11_fu_389_p1;

assign decipher_address13 = tmp_65_12_fu_394_p1;

assign decipher_address14 = tmp_65_13_fu_399_p1;

assign decipher_address15 = tmp_65_14_fu_404_p1;

assign decipher_address2 = tmp_65_2_fu_339_p1;

assign decipher_address3 = tmp_65_3_fu_344_p1;

assign decipher_address4 = tmp_65_4_fu_349_p1;

assign decipher_address5 = tmp_65_5_fu_354_p1;

assign decipher_address6 = tmp_65_6_fu_359_p1;

assign decipher_address7 = tmp_65_7_fu_364_p1;

assign decipher_address8 = tmp_65_8_fu_369_p1;

assign decipher_address9 = tmp_65_9_fu_374_p1;

assign tmp_65_10_fu_384_p1 = state_11_read;

assign tmp_65_11_fu_389_p1 = state_1213_read;

assign tmp_65_12_fu_394_p1 = state_13_read;

assign tmp_65_13_fu_399_p1 = state_14_read;

assign tmp_65_14_fu_404_p1 = state_15_read;

assign tmp_65_1_fu_334_p1 = state_1_read;

assign tmp_65_2_fu_339_p1 = state_2_read;

assign tmp_65_3_fu_344_p1 = state_3_read;

assign tmp_65_4_fu_349_p1 = state_4_read;

assign tmp_65_5_fu_354_p1 = state_5_read;

assign tmp_65_6_fu_359_p1 = state_6_read;

assign tmp_65_7_fu_364_p1 = state_7_read;

assign tmp_65_8_fu_369_p1 = state_8_read;

assign tmp_65_9_fu_374_p1 = state_9_read;

assign tmp_65_s_fu_379_p1 = state_10_read;

assign tmp_s_fu_329_p1 = state_0_read;

endmodule //InvSubBytes