`timescale 1ns / 1ps
module ad9767_test
(
    input  sys_clk,          
    input  key_freq,         
    input  key_vpp,          
    input  key_start,        
    input  key_learn,        
    output da1_clk, output da1_wrt, output [13:0] da1_data,  
    output da2_clk, output da2_wrt, output [13:0] da2_data,  
    output        ad_ch1_clk,   
    input  [11:0] ad_ch1_data,  
    input         ad_ch1_otr,    
    input  [8:0]  ps_read_addr,  
    output [11:0] ps_read_data,  
    output        ps_sweep_done, 
    input  [31:0] iir_coef_0,  
    input  [31:0] iir_coef_1,  
    input  [31:0] iir_coef_2   
);
    wire        clk_125M;
    wire [13:0] rom_data;  
    wire signed [11:0] adc_data_signed; 
    wire               adc_data_valid;  
    wire               rst_n = 1'b1;    
    wire               measure_en;    
    wire [11:0]        vpp_result;    
    wire               vpp_done;      
    wire [31:0]        auto_fcw;        
    
    PLL PLL_inst (.clk_in1(sys_clk), .clk_out1(), .clk_out2(clk_125M), .reset(1'b0), .locked());
    reg [31:0] phase_acc = 32'd0;
    ROM ROM_inst (.clka(clk_125M), .addra(phase_acc[31:22]), .douta(rom_data));
    // 按键消抖
    reg [23:0] cnt_f=0, cnt_v=0, cnt_s=0, cnt_l=0;  
    reg reg_f=1, reg_v=1, reg_s=1, reg_l=1;         
    reg pulse_f=0, pulse_v=0, pulse_s=0, pulse_l=0; 
    always @(posedge clk_125M) begin
        pulse_f <= 0; pulse_v <= 0; pulse_s <= 0; pulse_l <= 0; 
        if (key_freq != reg_f) begin cnt_f <= cnt_f + 1; if (cnt_f >= 24'd2_500_000) begin reg_f <= key_freq; cnt_f <= 0; if(!key_freq) pulse_f <= 1; end end else cnt_f <= 0;
        if (key_vpp != reg_v) begin cnt_v <= cnt_v + 1; if (cnt_v >= 24'd2_500_000) begin reg_v <= key_vpp; cnt_v <= 0; if(!key_vpp) pulse_v <= 1; end end else cnt_v <= 0;
        if (key_start != reg_s) begin cnt_s <= cnt_s + 1; if (cnt_s >= 24'd2_500_000) begin reg_s <= key_start; cnt_s <= 0; if(!key_start) pulse_s <= 1; end end else cnt_s <= 0;
        if (key_learn != reg_l) begin cnt_l <= cnt_l + 1; if (cnt_l >= 24'd2_500_000) begin reg_l <= key_learn; cnt_l <= 0; if(!key_learn) pulse_l <= 1; end end else cnt_l <= 0;
    end
    reg [1:0] state = 2'd0; 
    reg [15:0] freq_reg = 16'd100;  
    reg [7:0]  vpp_reg  = 8'd10;    
    reg [31:0] fcw      = 32'd3436; 
    localparam [31:0] FREQ_STEP = 32'd3436;
    
    always @(posedge clk_125M) begin
        if (state == 2'd0) begin
            if (pulse_f) begin if (freq_reg >= 16'd3000) begin freq_reg <= 16'd100; fcw <= FREQ_STEP; end else begin freq_reg <= freq_reg + 16'd100; fcw <= fcw + FREQ_STEP; end end
            if (pulse_v) begin if (vpp_reg >= 8'd20) vpp_reg <= 8'd10; else vpp_reg <= vpp_reg + 8'd1; end
            if (pulse_s) state <= 2'd1; 
        end
        if (~reg_l) state <= 2'd2; 
    end
    always @(posedge clk_125M) begin
        if (state == 2'd2) phase_acc <= phase_acc + auto_fcw; else phase_acc <= phase_acc + fcw;      
    end
    // 查表输出
    reg signed [12:0] amp_scale;
    always @(*) begin
        if (state == 2'd0) begin
            amp_scale = 13'd0;    
        end else if (state == 2'd2) begin
            amp_scale = 13'd2000; // 扫频时固定大振幅，保证信噪比
        end else begin
            case(freq_reg)
                16'd100: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd83;
                        8'd11: amp_scale = 13'd91;
                        8'd12: amp_scale = 13'd100;
                        8'd13: amp_scale = 13'd108;
                        8'd14: amp_scale = 13'd116;
                        8'd15: amp_scale = 13'd125;
                        8'd16: amp_scale = 13'd133;
                        8'd17: amp_scale = 13'd141;
                        8'd18: amp_scale = 13'd149;
                        8'd19: amp_scale = 13'd158;
                        8'd20: amp_scale = 13'd166;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd200: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd86;
                        8'd11: amp_scale = 13'd95;
                        8'd12: amp_scale = 13'd104;
                        8'd13: amp_scale = 13'd112;
                        8'd14: amp_scale = 13'd121;
                        8'd15: amp_scale = 13'd130;
                        8'd16: amp_scale = 13'd138;
                        8'd17: amp_scale = 13'd147;
                        8'd18: amp_scale = 13'd155;
                        8'd19: amp_scale = 13'd164;
                        8'd20: amp_scale = 13'd173;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd300: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd92;
                        8'd11: amp_scale = 13'd101;
                        8'd12: amp_scale = 13'd110;
                        8'd13: amp_scale = 13'd119;
                        8'd14: amp_scale = 13'd128;
                        8'd15: amp_scale = 13'd137;
                        8'd16: amp_scale = 13'd147;
                        8'd17: amp_scale = 13'd156;
                        8'd18: amp_scale = 13'd165;
                        8'd19: amp_scale = 13'd174;
                        8'd20: amp_scale = 13'd183;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd400: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd99;
                        8'd11: amp_scale = 13'd108;
                        8'd12: amp_scale = 13'd118;
                        8'd13: amp_scale = 13'd128;
                        8'd14: amp_scale = 13'd138;
                        8'd15: amp_scale = 13'd148;
                        8'd16: amp_scale = 13'd158;
                        8'd17: amp_scale = 13'd167;
                        8'd18: amp_scale = 13'd177;
                        8'd19: amp_scale = 13'd187;
                        8'd20: amp_scale = 13'd197;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd500: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd107;
                        8'd11: amp_scale = 13'd118;
                        8'd12: amp_scale = 13'd128;
                        8'd13: amp_scale = 13'd139;
                        8'd14: amp_scale = 13'd150;
                        8'd15: amp_scale = 13'd160;
                        8'd16: amp_scale = 13'd171;
                        8'd17: amp_scale = 13'd182;
                        8'd18: amp_scale = 13'd192;
                        8'd19: amp_scale = 13'd203;
                        8'd20: amp_scale = 13'd214;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd600: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd116;
                        8'd11: amp_scale = 13'd128;
                        8'd12: amp_scale = 13'd140;
                        8'd13: amp_scale = 13'd151;
                        8'd14: amp_scale = 13'd163;
                        8'd15: amp_scale = 13'd174;
                        8'd16: amp_scale = 13'd186;
                        8'd17: amp_scale = 13'd198;
                        8'd18: amp_scale = 13'd209;
                        8'd19: amp_scale = 13'd221;
                        8'd20: amp_scale = 13'd233;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd700: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd127;
                        8'd11: amp_scale = 13'd139;
                        8'd12: amp_scale = 13'd152;
                        8'd13: amp_scale = 13'd165;
                        8'd14: amp_scale = 13'd177;
                        8'd15: amp_scale = 13'd190;
                        8'd16: amp_scale = 13'd203;
                        8'd17: amp_scale = 13'd215;
                        8'd18: amp_scale = 13'd228;
                        8'd19: amp_scale = 13'd241;
                        8'd20: amp_scale = 13'd253;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd800: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd138;
                        8'd11: amp_scale = 13'd152;
                        8'd12: amp_scale = 13'd165;
                        8'd13: amp_scale = 13'd179;
                        8'd14: amp_scale = 13'd193;
                        8'd15: amp_scale = 13'd207;
                        8'd16: amp_scale = 13'd221;
                        8'd17: amp_scale = 13'd234;
                        8'd18: amp_scale = 13'd248;
                        8'd19: amp_scale = 13'd262;
                        8'd20: amp_scale = 13'd276;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd900: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd150;
                        8'd11: amp_scale = 13'd165;
                        8'd12: amp_scale = 13'd180;
                        8'd13: amp_scale = 13'd195;
                        8'd14: amp_scale = 13'd210;
                        8'd15: amp_scale = 13'd225;
                        8'd16: amp_scale = 13'd240;
                        8'd17: amp_scale = 13'd255;
                        8'd18: amp_scale = 13'd270;
                        8'd19: amp_scale = 13'd284;
                        8'd20: amp_scale = 13'd299;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1000: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd162;
                        8'd11: amp_scale = 13'd178;
                        8'd12: amp_scale = 13'd195;
                        8'd13: amp_scale = 13'd211;
                        8'd14: amp_scale = 13'd227;
                        8'd15: amp_scale = 13'd243;
                        8'd16: amp_scale = 13'd259;
                        8'd17: amp_scale = 13'd276;
                        8'd18: amp_scale = 13'd292;
                        8'd19: amp_scale = 13'd308;
                        8'd20: amp_scale = 13'd324;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1100: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd175;
                        8'd11: amp_scale = 13'd193;
                        8'd12: amp_scale = 13'd210;
                        8'd13: amp_scale = 13'd228;
                        8'd14: amp_scale = 13'd245;
                        8'd15: amp_scale = 13'd263;
                        8'd16: amp_scale = 13'd280;
                        8'd17: amp_scale = 13'd298;
                        8'd18: amp_scale = 13'd315;
                        8'd19: amp_scale = 13'd333;
                        8'd20: amp_scale = 13'd350;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1200: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd189;
                        8'd11: amp_scale = 13'd208;
                        8'd12: amp_scale = 13'd226;
                        8'd13: amp_scale = 13'd245;
                        8'd14: amp_scale = 13'd264;
                        8'd15: amp_scale = 13'd283;
                        8'd16: amp_scale = 13'd302;
                        8'd17: amp_scale = 13'd321;
                        8'd18: amp_scale = 13'd340;
                        8'd19: amp_scale = 13'd358;
                        8'd20: amp_scale = 13'd377;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1300: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd203;
                        8'd11: amp_scale = 13'd223;
                        8'd12: amp_scale = 13'd243;
                        8'd13: amp_scale = 13'd263;
                        8'd14: amp_scale = 13'd284;
                        8'd15: amp_scale = 13'd304;
                        8'd16: amp_scale = 13'd324;
                        8'd17: amp_scale = 13'd344;
                        8'd18: amp_scale = 13'd365;
                        8'd19: amp_scale = 13'd385;
                        8'd20: amp_scale = 13'd405;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1400: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd217;
                        8'd11: amp_scale = 13'd239;
                        8'd12: amp_scale = 13'd260;
                        8'd13: amp_scale = 13'd282;
                        8'd14: amp_scale = 13'd304;
                        8'd15: amp_scale = 13'd325;
                        8'd16: amp_scale = 13'd347;
                        8'd17: amp_scale = 13'd369;
                        8'd18: amp_scale = 13'd391;
                        8'd19: amp_scale = 13'd412;
                        8'd20: amp_scale = 13'd434;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1500: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd232;
                        8'd11: amp_scale = 13'd255;
                        8'd12: amp_scale = 13'd278;
                        8'd13: amp_scale = 13'd301;
                        8'd14: amp_scale = 13'd325;
                        8'd15: amp_scale = 13'd348;
                        8'd16: amp_scale = 13'd371;
                        8'd17: amp_scale = 13'd394;
                        8'd18: amp_scale = 13'd417;
                        8'd19: amp_scale = 13'd440;
                        8'd20: amp_scale = 13'd464;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1600: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd247;
                        8'd11: amp_scale = 13'd272;
                        8'd12: amp_scale = 13'd296;
                        8'd13: amp_scale = 13'd321;
                        8'd14: amp_scale = 13'd346;
                        8'd15: amp_scale = 13'd371;
                        8'd16: amp_scale = 13'd395;
                        8'd17: amp_scale = 13'd420;
                        8'd18: amp_scale = 13'd445;
                        8'd19: amp_scale = 13'd469;
                        8'd20: amp_scale = 13'd494;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1700: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd263;
                        8'd11: amp_scale = 13'd289;
                        8'd12: amp_scale = 13'd315;
                        8'd13: amp_scale = 13'd342;
                        8'd14: amp_scale = 13'd368;
                        8'd15: amp_scale = 13'd394;
                        8'd16: amp_scale = 13'd420;
                        8'd17: amp_scale = 13'd447;
                        8'd18: amp_scale = 13'd473;
                        8'd19: amp_scale = 13'd499;
                        8'd20: amp_scale = 13'd526;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1800: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd279;
                        8'd11: amp_scale = 13'd307;
                        8'd12: amp_scale = 13'd335;
                        8'd13: amp_scale = 13'd363;
                        8'd14: amp_scale = 13'd390;
                        8'd15: amp_scale = 13'd418;
                        8'd16: amp_scale = 13'd446;
                        8'd17: amp_scale = 13'd474;
                        8'd18: amp_scale = 13'd502;
                        8'd19: amp_scale = 13'd530;
                        8'd20: amp_scale = 13'd558;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd1900: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd295;
                        8'd11: amp_scale = 13'd325;
                        8'd12: amp_scale = 13'd355;
                        8'd13: amp_scale = 13'd384;
                        8'd14: amp_scale = 13'd414;
                        8'd15: amp_scale = 13'd443;
                        8'd16: amp_scale = 13'd473;
                        8'd17: amp_scale = 13'd502;
                        8'd18: amp_scale = 13'd532;
                        8'd19: amp_scale = 13'd561;
                        8'd20: amp_scale = 13'd591;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2000: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd312;
                        8'd11: amp_scale = 13'd344;
                        8'd12: amp_scale = 13'd375;
                        8'd13: amp_scale = 13'd406;
                        8'd14: amp_scale = 13'd437;
                        8'd15: amp_scale = 13'd469;
                        8'd16: amp_scale = 13'd500;
                        8'd17: amp_scale = 13'd531;
                        8'd18: amp_scale = 13'd562;
                        8'd19: amp_scale = 13'd594;
                        8'd20: amp_scale = 13'd625;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2100: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd330;
                        8'd11: amp_scale = 13'd363;
                        8'd12: amp_scale = 13'd396;
                        8'd13: amp_scale = 13'd429;
                        8'd14: amp_scale = 13'd462;
                        8'd15: amp_scale = 13'd495;
                        8'd16: amp_scale = 13'd528;
                        8'd17: amp_scale = 13'd561;
                        8'd18: amp_scale = 13'd594;
                        8'd19: amp_scale = 13'd627;
                        8'd20: amp_scale = 13'd660;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2200: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd348;
                        8'd11: amp_scale = 13'd383;
                        8'd12: amp_scale = 13'd417;
                        8'd13: amp_scale = 13'd452;
                        8'd14: amp_scale = 13'd487;
                        8'd15: amp_scale = 13'd522;
                        8'd16: amp_scale = 13'd556;
                        8'd17: amp_scale = 13'd591;
                        8'd18: amp_scale = 13'd626;
                        8'd19: amp_scale = 13'd661;
                        8'd20: amp_scale = 13'd696;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2300: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd366;
                        8'd11: amp_scale = 13'd403;
                        8'd12: amp_scale = 13'd439;
                        8'd13: amp_scale = 13'd476;
                        8'd14: amp_scale = 13'd513;
                        8'd15: amp_scale = 13'd549;
                        8'd16: amp_scale = 13'd586;
                        8'd17: amp_scale = 13'd623;
                        8'd18: amp_scale = 13'd659;
                        8'd19: amp_scale = 13'd696;
                        8'd20: amp_scale = 13'd732;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2400: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd385;
                        8'd11: amp_scale = 13'd424;
                        8'd12: amp_scale = 13'd462;
                        8'd13: amp_scale = 13'd501;
                        8'd14: amp_scale = 13'd539;
                        8'd15: amp_scale = 13'd578;
                        8'd16: amp_scale = 13'd616;
                        8'd17: amp_scale = 13'd655;
                        8'd18: amp_scale = 13'd693;
                        8'd19: amp_scale = 13'd732;
                        8'd20: amp_scale = 13'd770;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2500: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd404;
                        8'd11: amp_scale = 13'd445;
                        8'd12: amp_scale = 13'd485;
                        8'd13: amp_scale = 13'd526;
                        8'd14: amp_scale = 13'd566;
                        8'd15: amp_scale = 13'd606;
                        8'd16: amp_scale = 13'd647;
                        8'd17: amp_scale = 13'd687;
                        8'd18: amp_scale = 13'd728;
                        8'd19: amp_scale = 13'd768;
                        8'd20: amp_scale = 13'd809;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2600: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd424;
                        8'd11: amp_scale = 13'd467;
                        8'd12: amp_scale = 13'd509;
                        8'd13: amp_scale = 13'd551;
                        8'd14: amp_scale = 13'd594;
                        8'd15: amp_scale = 13'd636;
                        8'd16: amp_scale = 13'd679;
                        8'd17: amp_scale = 13'd721;
                        8'd18: amp_scale = 13'd763;
                        8'd19: amp_scale = 13'd806;
                        8'd20: amp_scale = 13'd848;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2700: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd444;
                        8'd11: amp_scale = 13'd489;
                        8'd12: amp_scale = 13'd533;
                        8'd13: amp_scale = 13'd578;
                        8'd14: amp_scale = 13'd622;
                        8'd15: amp_scale = 13'd667;
                        8'd16: amp_scale = 13'd711;
                        8'd17: amp_scale = 13'd755;
                        8'd18: amp_scale = 13'd800;
                        8'd19: amp_scale = 13'd844;
                        8'd20: amp_scale = 13'd889;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2800: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd465;
                        8'd11: amp_scale = 13'd512;
                        8'd12: amp_scale = 13'd558;
                        8'd13: amp_scale = 13'd605;
                        8'd14: amp_scale = 13'd651;
                        8'd15: amp_scale = 13'd698;
                        8'd16: amp_scale = 13'd744;
                        8'd17: amp_scale = 13'd791;
                        8'd18: amp_scale = 13'd837;
                        8'd19: amp_scale = 13'd884;
                        8'd20: amp_scale = 13'd930;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd2900: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd486;
                        8'd11: amp_scale = 13'd535;
                        8'd12: amp_scale = 13'd584;
                        8'd13: amp_scale = 13'd632;
                        8'd14: amp_scale = 13'd681;
                        8'd15: amp_scale = 13'd730;
                        8'd16: amp_scale = 13'd778;
                        8'd17: amp_scale = 13'd827;
                        8'd18: amp_scale = 13'd876;
                        8'd19: amp_scale = 13'd924;
                        8'd20: amp_scale = 13'd973;
                        default: amp_scale = 13'd0;
                    endcase
                end
                16'd3000: begin
                    case(vpp_reg)
                        8'd10: amp_scale = 13'd508;
                        8'd11: amp_scale = 13'd559;
                        8'd12: amp_scale = 13'd610;
                        8'd13: amp_scale = 13'd661;
                        8'd14: amp_scale = 13'd712;
                        8'd15: amp_scale = 13'd762;
                        8'd16: amp_scale = 13'd813;
                        8'd17: amp_scale = 13'd864;
                        8'd18: amp_scale = 13'd915;
                        8'd19: amp_scale = 13'd966;
                        8'd20: amp_scale = 13'd1017;
                        default: amp_scale = 13'd0;
                    endcase
                end
                default: amp_scale = 13'd0; // 【修复：补全了漏掉的频率选择 default】
            endcase                    // 【修复：补全了漏掉的 endcase】
        end
    end

    // ========================================================
    // 优化模块：消除直流偏置 -> 乘法缩放 -> 寄存器对齐 -> 翻转修正
    // ========================================================
    
    // 1. 组合逻辑进行计算
    wire signed [14:0] rom_signed = $signed({1'b0, rom_data}) - 15'sd8192;
    wire signed [27:0] dac_mult   = rom_signed * $signed({1'b0, amp_scale}); // 补0确保作为正数乘法
    wire signed [14:0] dac_scaled = dac_mult >>> 12;
    
    // 2. 核心优化：使用寄存器打拍（Pipeline），消除乘法器带来的毛刺和偏斜
    reg [13:0] dac_out_reg;
    always @(posedge clk_125M) begin
        // 这里把有符号补码转回 Offset Binary 格式
        dac_out_reg <= {~dac_scaled[13], dac_scaled[12:0]};
    end
    
    // 3. 时钟优化：将 DAC 采样时钟反向（180度移相）
    // 让 DAC 在数据的正中间（最稳定的时刻）采样，彻底杜绝压边毛刺
    assign da1_clk = ~clk_125M;  
    assign da1_wrt = ~clk_125M;
    assign da2_clk = ~clk_125M;  
    assign da2_wrt = ~clk_125M;
    // AD/DA及控制模块例化保持不变
    ad9238_driver u_ad9238_driver (.clk(sys_clk), .rst_n(rst_n), .ad_clk(ad_ch1_clk), .ad_data(ad_ch1_data), .ad_otr(ad_ch1_otr), .ad_data_out(adc_data_signed), .data_valid(adc_data_valid));
    peak_detector u_peak_detector (.clk(sys_clk), .rst_n(rst_n), .measure_en(measure_en), .data_in(adc_data_signed), .data_valid(adc_data_valid), .vpp_out(vpp_result), .vpp_valid(vpp_done));
    sweep_controller u_sweep_controller (.clk(sys_clk), .rst_n(rst_n), .start_sweep(~reg_l), .sweep_fcw(auto_fcw), .measure_en(measure_en), .vpp_result(vpp_result), .vpp_done(vpp_done), .sweep_done(ps_sweep_done), .ps_read_addr(ps_read_addr), .ps_read_data(ps_read_data));
    
    wire signed [11:0] iir_y_out;
    iir_biquad u_iir_filter (.clk(sys_clk), .x_in(adc_data_signed), .y_out(iir_y_out), .coef_0(iir_coef_0), .coef_1(iir_coef_1), .coef_2(iir_coef_2));
    
    // ========================================================
    // 终极输出修正：修复波形反向问题
    // ========================================================
    wire signed [11:0] iir_inv  = -iir_y_out;
    wire [13:0] iir_da_data     = {~iir_inv[11], iir_inv[10:0], 2'b00};
    
    wire iir_enable = iir_coef_2[31]; 
    
    // 在最后输出到引脚前，统一加上波浪号 `~` 按位取反，抵消硬件运放的反向
    assign da1_data = ~(iir_enable ? iir_da_data : dac_out_reg);
    assign da2_data = ~(iir_enable ? iir_da_data : dac_out_reg);
endmodule