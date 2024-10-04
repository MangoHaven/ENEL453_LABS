# File saved with Nlview 7.7.1 2023-07-26 3bc4126617 VDI=43 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #eb591b
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 15
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new lab_3_top_level work:lab_3_top_level:NOFILE -nosplit
load symbol seven_segment_display_subsystem work:seven_segment_display_subsystem:NOFILE HIERBOX pin AN1 output.right pin AN2 output.right pin AN3 output.right pin AN4 output.right pin CA output.right pin CB output.right pin CC output.right pin CD output.right pin CE output.right pin CF output.right pin CG output.right pin DP output.right pin clk input.left pin reset input.left pinBus min_dig1 input.left [3:0] pinBus min_dig2 input.left [3:0] pinBus sec_dig1 input.left [3:0] pinBus sec_dig2 input.left [3:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol switch_logic work:switch_logic:NOFILE HIERBOX pin btnR input.left pin btnU input.left pin clk input.left pin reset input.left pinBus led_out output.right [15:0] pinBus switches_inputs input.left [15:0] pinBus switches_outputs output.right [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol bin_to_bcd work:bin_to_bcd:NOFILE HIERBOX pin clk input.left pin reset input.left pinBus bcd_out output.right [15:0] pinBus bin_in input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol lab_3_debounce work:lab_3_debounce:NOFILE HIERBOX pin button input.left pin clk input.left pin reset_n input.left pin result output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol lab_3_debounce work:abstract:NOFILE HIERBOX pin button input.left pin clk input.left pin reset_n input.left pin result output.right boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_REG__BREG_12 work GEN pin C input.clk.left pin D input.left pin Q output.right fillcolor 1
load symbol RTL_MUX1 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_AND0 workI0 AND pin I0 input.neg pin I1 input pin O output fillcolor 1
load symbol RTL_INV2 work INV pin I0 input pin O output fillcolor 1
load symbol RTL_REG_SYNC__BREG_10 work GEN pin C input.clk.left pin CE input.left pin D input.left pin Q output.right pin RST input.top fillcolor 1
load symbol RTL_GEQ3 work RTL(>=) pin O output.right pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] fillcolor 1
load symbol RTL_MUX9 work MUX pin S input.bot pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_REG__BREG_12 work[15:0]sww GEN pin C input.clk.left pinBus D input.left [15:0] pinBus Q output.right [15:0] fillcolor 1 sandwich 3 prop @bundle 16
load symbol RTL_REG_SYNC__BREG_19 work[15:0]swwww GEN pin C input.clk.left pinBus D input.left [15:0] pinBus Q output.right [15:0] pinBus RST input.top [15:0] pinBus SET input.bot [15:0] fillcolor 1 sandwich 3 prop @bundle 16
load symbol RTL_REG_SYNC__BREG_9 work[15:0]ssws GEN pin C input.clk.left pin D input.left pinBus Q output.right [15:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 16
load symbol RTL_REG_SYNC__BREG_10 work[15:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [15:0] pinBus Q output.right [15:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 16
load port AN1 output -pg 1 -lvl 3 -x 3880 -y 70
load port AN2 output -pg 1 -lvl 3 -x 3880 -y 100
load port AN3 output -pg 1 -lvl 3 -x 3880 -y 130
load port AN4 output -pg 1 -lvl 3 -x 3880 -y 160
load port CA output -pg 1 -lvl 3 -x 3880 -y 190
load port CB output -pg 1 -lvl 3 -x 3880 -y 220
load port CC output -pg 1 -lvl 3 -x 3880 -y 250
load port CD output -pg 1 -lvl 3 -x 3880 -y 280
load port CE output -pg 1 -lvl 3 -x 3880 -y 310
load port CF output -pg 1 -lvl 3 -x 3880 -y 340
load port CG output -pg 1 -lvl 3 -x 3880 -y 370
load port DP output -pg 1 -lvl 3 -x 3880 -y 400
load port btnR input -pg 1 -lvl 0 -x 0 -y 50
load port btnU input -pg 1 -lvl 0 -x 0 -y 80
load port clk input -pg 1 -lvl 0 -x 0 -y 110
load port reset input -pg 1 -lvl 0 -x 0 -y 140
load portBus led output [15:0] -attr @name led[15:0] -pg 1 -lvl 3 -x 3880 -y 40
load portBus switches_inputs input [15:0] -attr @name switches_inputs[15:0] -pg 1 -lvl 0 -x 0 -y 170
load inst SEV_SEG_DIS seven_segment_display_subsystem work:seven_segment_display_subsystem:NOFILE -autohide -attr @cell(#000000) seven_segment_display_subsystem -pinBusAttr min_dig1 @name min_dig1[3:0] -pinBusAttr min_dig2 @name min_dig2[3:0] -pinBusAttr sec_dig1 @name sec_dig1[3:0] -pinBusAttr sec_dig2 @name sec_dig2[3:0] -pg 1 -lvl 2 -x 3590 -y 110
load inst SWITCHES switch_logic work:switch_logic:NOFILE -autohide -attr @cell(#000000) switch_logic -attr @fillcolor #fafafa -pinBusAttr led_out @name led_out[15:0] -pinBusAttr switches_inputs @name switches_inputs[15:0] -pinBusAttr switches_outputs @name switches_outputs[15:0] -pg 1 -lvl 1 -x 250 -y 58
load inst SWITCHES|BIN_TO_BCD bin_to_bcd work:bin_to_bcd:NOFILE -hier SWITCHES -autohide -attr @cell(#000000) bin_to_bcd -attr @name BIN_TO_BCD -pinBusAttr bcd_out @name bcd_out[15:0] -pinBusAttr bin_in @name bin_in[15:0] -pg 1 -lvl 9 -x 2400 -y 78
load inst SWITCHES|DEBOUNCE1 lab_3_debounce work:lab_3_debounce:NOFILE -hier SWITCHES -autohide -attr @cell(#000000) lab_3_debounce -attr @name DEBOUNCE1 -pg 1 -lvl 6 -x 1350 -y 168
load inst SWITCHES|DEBOUNCE2 lab_3_debounce work:abstract:NOFILE -hier SWITCHES -autohide -attr @cell(#000000) lab_3_debounce -attr @name DEBOUNCE2 -pg 1 -lvl 2 -x 530 -y 248
load inst SWITCHES|detected1_reg RTL_REG__BREG_12 work -hier SWITCHES -attr @cell(#000000) RTL_REG -attr @name detected1_reg -pg 1 -lvl 7 -x 1740 -y 118
load inst SWITCHES|detected2_reg RTL_REG__BREG_12 work -hier SWITCHES -attr @cell(#000000) RTL_REG -attr @name detected2_reg -pg 1 -lvl 3 -x 730 -y 298
load inst SWITCHES|led_out_i RTL_MUX1 work -hier SWITCHES -attr @cell(#000000) RTL_MUX -attr @name led_out_i -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -x 2810 -y 368
load inst SWITCHES|pulse1_i RTL_AND0 workI0 -hier SWITCHES -attr @cell(#000000) RTL_AND -attr @name pulse1_i -pg 1 -lvl 8 -x 2000 -y 168
load inst SWITCHES|pulse2_i RTL_AND0 workI0 -hier SWITCHES -attr @cell(#000000) RTL_AND -attr @name pulse2_i -pg 1 -lvl 4 -x 890 -y 288
load inst SWITCHES|reset_n0_i RTL_INV2 work -hier SWITCHES -attr @cell(#000000) RTL_INV -attr @name reset_n0_i -pg 1 -lvl 1 -x 330 -y 318
load inst SWITCHES|select10_i RTL_INV2 work -hier SWITCHES -attr @cell(#000000) RTL_INV -attr @name select10_i -pg 1 -lvl 8 -x 2000 -y 278
load inst SWITCHES|select1_reg RTL_REG_SYNC__BREG_10 work -hier SWITCHES -attr @cell(#000000) RTL_REG_SYNC -attr @name select1_reg -pg 1 -lvl 9 -x 2400 -y 258
load inst SWITCHES|select20_i RTL_INV2 work -hier SWITCHES -attr @cell(#000000) RTL_INV -attr @name select20_i -pg 1 -lvl 4 -x 890 -y 398
load inst SWITCHES|select2_reg RTL_REG_SYNC__BREG_10 work -hier SWITCHES -attr @cell(#000000) RTL_REG_SYNC -attr @name select2_reg -pg 1 -lvl 5 -x 1070 -y 378
load inst SWITCHES|switches_outputs0_i RTL_GEQ3 work -hier SWITCHES -attr @cell(#000000) RTL_GEQ -attr @name switches_outputs0_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr V=B\"0010011100010000\" -pg 1 -lvl 9 -x 2400 -y 398
load inst SWITCHES|switches_outputs_i RTL_MUX9 work -hier SWITCHES -attr @cell(#000000) RTL_MUX -attr @name switches_outputs_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 10 -x 2810 -y 88
load inst SWITCHES|switches_outputs_i__0 RTL_MUX1 work -hier SWITCHES -attr @cell(#000000) RTL_MUX -attr @name switches_outputs_i__0 -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 10 -x 2810 -y 228
load inst SWITCHES|switches_read_i RTL_MUX9 work -hier SWITCHES -attr @cell(#000000) RTL_MUX -attr @name switches_read_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 7 -x 1740 -y 398
load inst SWITCHES|switches_read_reg[15:0] RTL_REG__BREG_12 work[15:0]sww -hier SWITCHES -attr @cell(#000000) RTL_REG -attr @name switches_read_reg[15:0] -pg 1 -lvl 8 -x 2000 -y 398
load inst SWITCHES|switches_outputs_reg[15:0] RTL_REG_SYNC__BREG_19 work[15:0]swwww -hier SWITCHES -attr @cell(#000000) RTL_REG_SYNC -attr @name switches_outputs_reg[15:0] -pinBusAttr RST @attr n/c -pg 1 -lvl 11 -x 3010 -y 178
load inst SWITCHES|led_out_reg[15:0] RTL_REG_SYNC__BREG_9 work[15:0]ssws -hier SWITCHES -attr @cell(#000000) RTL_REG_SYNC -attr @name led_out_reg[15:0] -pg 1 -lvl 11 -x 3010 -y 428
load inst SWITCHES|held_switches_reg[15:0] RTL_REG_SYNC__BREG_10 work[15:0]sswws -hier SWITCHES -attr @cell(#000000) RTL_REG_SYNC -attr @name held_switches_reg[15:0] -pg 1 -lvl 6 -x 1350 -y 378
load net AN1 -port AN1 -pin SEV_SEG_DIS AN1
netloc AN1 1 2 1 3780J 70n
load net AN2 -port AN2 -pin SEV_SEG_DIS AN2
netloc AN2 1 2 1 3800J 100n
load net AN3 -port AN3 -pin SEV_SEG_DIS AN3
netloc AN3 1 2 1 3820J 130n
load net AN4 -port AN4 -pin SEV_SEG_DIS AN4
netloc AN4 1 2 1 3840J 160n
load net CA -port CA -pin SEV_SEG_DIS CA
netloc CA 1 2 1 3860J 190n
load net CB -port CB -pin SEV_SEG_DIS CB
netloc CB 1 2 1 NJ 220
load net CC -port CC -pin SEV_SEG_DIS CC
netloc CC 1 2 1 3860J 240n
load net CD -port CD -pin SEV_SEG_DIS CD
netloc CD 1 2 1 3840J 260n
load net CE -port CE -pin SEV_SEG_DIS CE
netloc CE 1 2 1 3820J 280n
load net CF -port CF -pin SEV_SEG_DIS CF
netloc CF 1 2 1 3800J 300n
load net CG -port CG -pin SEV_SEG_DIS CG
netloc CG 1 2 1 3780J 320n
load net DP -port DP -pin SEV_SEG_DIS DP
netloc DP 1 2 1 3760J 340n
load net btnR -pin SWITCHES btnR -port btnR
netloc btnR 1 0 1 100J 50n
load net btnU -pin SWITCHES btnU -port btnU
netloc btnU 1 0 1 80J 80n
load net clk -pin SEV_SEG_DIS clk -pin SWITCHES clk -port clk
netloc clk 1 0 2 60 528 3460
load net led[0] -attr @rip led_out[0] -pin SWITCHES led_out[0] -port led[0]
load net led[10] -attr @rip led_out[10] -pin SWITCHES led_out[10] -port led[10]
load net led[11] -attr @rip led_out[11] -pin SWITCHES led_out[11] -port led[11]
load net led[12] -attr @rip led_out[12] -pin SWITCHES led_out[12] -port led[12]
load net led[13] -attr @rip led_out[13] -pin SWITCHES led_out[13] -port led[13]
load net led[14] -attr @rip led_out[14] -pin SWITCHES led_out[14] -port led[14]
load net led[15] -attr @rip led_out[15] -pin SWITCHES led_out[15] -port led[15]
load net led[1] -attr @rip led_out[1] -pin SWITCHES led_out[1] -port led[1]
load net led[2] -attr @rip led_out[2] -pin SWITCHES led_out[2] -port led[2]
load net led[3] -attr @rip led_out[3] -pin SWITCHES led_out[3] -port led[3]
load net led[4] -attr @rip led_out[4] -pin SWITCHES led_out[4] -port led[4]
load net led[5] -attr @rip led_out[5] -pin SWITCHES led_out[5] -port led[5]
load net led[6] -attr @rip led_out[6] -pin SWITCHES led_out[6] -port led[6]
load net led[7] -attr @rip led_out[7] -pin SWITCHES led_out[7] -port led[7]
load net led[8] -attr @rip led_out[8] -pin SWITCHES led_out[8] -port led[8]
load net led[9] -attr @rip led_out[9] -pin SWITCHES led_out[9] -port led[9]
load net reset -pin SEV_SEG_DIS reset -pin SWITCHES reset -port reset
netloc reset 1 0 2 20 588 3480J
load net switches_inputs[0] -attr @rip switches_inputs[0] -pin SWITCHES switches_inputs[0] -port switches_inputs[0]
load net switches_inputs[10] -attr @rip switches_inputs[10] -pin SWITCHES switches_inputs[10] -port switches_inputs[10]
load net switches_inputs[11] -attr @rip switches_inputs[11] -pin SWITCHES switches_inputs[11] -port switches_inputs[11]
load net switches_inputs[12] -attr @rip switches_inputs[12] -pin SWITCHES switches_inputs[12] -port switches_inputs[12]
load net switches_inputs[13] -attr @rip switches_inputs[13] -pin SWITCHES switches_inputs[13] -port switches_inputs[13]
load net switches_inputs[14] -attr @rip switches_inputs[14] -pin SWITCHES switches_inputs[14] -port switches_inputs[14]
load net switches_inputs[15] -attr @rip switches_inputs[15] -pin SWITCHES switches_inputs[15] -port switches_inputs[15]
load net switches_inputs[1] -attr @rip switches_inputs[1] -pin SWITCHES switches_inputs[1] -port switches_inputs[1]
load net switches_inputs[2] -attr @rip switches_inputs[2] -pin SWITCHES switches_inputs[2] -port switches_inputs[2]
load net switches_inputs[3] -attr @rip switches_inputs[3] -pin SWITCHES switches_inputs[3] -port switches_inputs[3]
load net switches_inputs[4] -attr @rip switches_inputs[4] -pin SWITCHES switches_inputs[4] -port switches_inputs[4]
load net switches_inputs[5] -attr @rip switches_inputs[5] -pin SWITCHES switches_inputs[5] -port switches_inputs[5]
load net switches_inputs[6] -attr @rip switches_inputs[6] -pin SWITCHES switches_inputs[6] -port switches_inputs[6]
load net switches_inputs[7] -attr @rip switches_inputs[7] -pin SWITCHES switches_inputs[7] -port switches_inputs[7]
load net switches_inputs[8] -attr @rip switches_inputs[8] -pin SWITCHES switches_inputs[8] -port switches_inputs[8]
load net switches_inputs[9] -attr @rip switches_inputs[9] -pin SWITCHES switches_inputs[9] -port switches_inputs[9]
load net switches_outputs[0] -attr @rip switches_outputs[0] -pin SEV_SEG_DIS sec_dig1[0] -pin SWITCHES switches_outputs[0]
load net switches_outputs[10] -attr @rip switches_outputs[10] -pin SEV_SEG_DIS min_dig1[2] -pin SWITCHES switches_outputs[10]
load net switches_outputs[11] -attr @rip switches_outputs[11] -pin SEV_SEG_DIS min_dig1[3] -pin SWITCHES switches_outputs[11]
load net switches_outputs[12] -attr @rip switches_outputs[12] -pin SEV_SEG_DIS min_dig2[0] -pin SWITCHES switches_outputs[12]
load net switches_outputs[13] -attr @rip switches_outputs[13] -pin SEV_SEG_DIS min_dig2[1] -pin SWITCHES switches_outputs[13]
load net switches_outputs[14] -attr @rip switches_outputs[14] -pin SEV_SEG_DIS min_dig2[2] -pin SWITCHES switches_outputs[14]
load net switches_outputs[15] -attr @rip switches_outputs[15] -pin SEV_SEG_DIS min_dig2[3] -pin SWITCHES switches_outputs[15]
load net switches_outputs[1] -attr @rip switches_outputs[1] -pin SEV_SEG_DIS sec_dig1[1] -pin SWITCHES switches_outputs[1]
load net switches_outputs[2] -attr @rip switches_outputs[2] -pin SEV_SEG_DIS sec_dig1[2] -pin SWITCHES switches_outputs[2]
load net switches_outputs[3] -attr @rip switches_outputs[3] -pin SEV_SEG_DIS sec_dig1[3] -pin SWITCHES switches_outputs[3]
load net switches_outputs[4] -attr @rip switches_outputs[4] -pin SEV_SEG_DIS sec_dig2[0] -pin SWITCHES switches_outputs[4]
load net switches_outputs[5] -attr @rip switches_outputs[5] -pin SEV_SEG_DIS sec_dig2[1] -pin SWITCHES switches_outputs[5]
load net switches_outputs[6] -attr @rip switches_outputs[6] -pin SEV_SEG_DIS sec_dig2[2] -pin SWITCHES switches_outputs[6]
load net switches_outputs[7] -attr @rip switches_outputs[7] -pin SEV_SEG_DIS sec_dig2[3] -pin SWITCHES switches_outputs[7]
load net switches_outputs[8] -attr @rip switches_outputs[8] -pin SEV_SEG_DIS min_dig1[0] -pin SWITCHES switches_outputs[8]
load net switches_outputs[9] -attr @rip switches_outputs[9] -pin SEV_SEG_DIS min_dig1[1] -pin SWITCHES switches_outputs[9]
load net SWITCHES|<const0> -ground -attr @name <const0> -pin SWITCHES|led_out_i I0 -pin SWITCHES|switches_outputs0_i I1[15] -pin SWITCHES|switches_outputs0_i I1[14] -pin SWITCHES|switches_outputs0_i I1[12] -pin SWITCHES|switches_outputs0_i I1[11] -pin SWITCHES|switches_outputs0_i I1[7] -pin SWITCHES|switches_outputs0_i I1[6] -pin SWITCHES|switches_outputs0_i I1[5] -pin SWITCHES|switches_outputs0_i I1[3] -pin SWITCHES|switches_outputs0_i I1[2] -pin SWITCHES|switches_outputs0_i I1[1] -pin SWITCHES|switches_outputs0_i I1[0] -pin SWITCHES|switches_outputs_i__0 I1
load net SWITCHES|<const1> -power -attr @name <const1> -pin SWITCHES|led_out_i I1 -pin SWITCHES|switches_outputs0_i I1[13] -pin SWITCHES|switches_outputs0_i I1[10] -pin SWITCHES|switches_outputs0_i I1[9] -pin SWITCHES|switches_outputs0_i I1[8] -pin SWITCHES|switches_outputs0_i I1[4]
load net SWITCHES|bcd_out[0] -attr @rip(#000000) bcd_out[0] -attr @name bcd_out[0] -pin SWITCHES|BIN_TO_BCD bcd_out[0] -pin SWITCHES|switches_outputs_i I0[0]
load net SWITCHES|bcd_out[10] -attr @rip(#000000) bcd_out[10] -attr @name bcd_out[10] -pin SWITCHES|BIN_TO_BCD bcd_out[10] -pin SWITCHES|switches_outputs_i I0[10]
load net SWITCHES|bcd_out[11] -attr @rip(#000000) bcd_out[11] -attr @name bcd_out[11] -pin SWITCHES|BIN_TO_BCD bcd_out[11] -pin SWITCHES|switches_outputs_i I0[11]
load net SWITCHES|bcd_out[12] -attr @rip(#000000) bcd_out[12] -attr @name bcd_out[12] -pin SWITCHES|BIN_TO_BCD bcd_out[12] -pin SWITCHES|switches_outputs_i I0[12]
load net SWITCHES|bcd_out[13] -attr @rip(#000000) bcd_out[13] -attr @name bcd_out[13] -pin SWITCHES|BIN_TO_BCD bcd_out[13] -pin SWITCHES|switches_outputs_i I0[13]
load net SWITCHES|bcd_out[14] -attr @rip(#000000) bcd_out[14] -attr @name bcd_out[14] -pin SWITCHES|BIN_TO_BCD bcd_out[14] -pin SWITCHES|switches_outputs_i I0[14]
load net SWITCHES|bcd_out[15] -attr @rip(#000000) bcd_out[15] -attr @name bcd_out[15] -pin SWITCHES|BIN_TO_BCD bcd_out[15] -pin SWITCHES|switches_outputs_i I0[15]
load net SWITCHES|bcd_out[1] -attr @rip(#000000) bcd_out[1] -attr @name bcd_out[1] -pin SWITCHES|BIN_TO_BCD bcd_out[1] -pin SWITCHES|switches_outputs_i I0[1]
load net SWITCHES|bcd_out[2] -attr @rip(#000000) bcd_out[2] -attr @name bcd_out[2] -pin SWITCHES|BIN_TO_BCD bcd_out[2] -pin SWITCHES|switches_outputs_i I0[2]
load net SWITCHES|bcd_out[3] -attr @rip(#000000) bcd_out[3] -attr @name bcd_out[3] -pin SWITCHES|BIN_TO_BCD bcd_out[3] -pin SWITCHES|switches_outputs_i I0[3]
load net SWITCHES|bcd_out[4] -attr @rip(#000000) bcd_out[4] -attr @name bcd_out[4] -pin SWITCHES|BIN_TO_BCD bcd_out[4] -pin SWITCHES|switches_outputs_i I0[4]
load net SWITCHES|bcd_out[5] -attr @rip(#000000) bcd_out[5] -attr @name bcd_out[5] -pin SWITCHES|BIN_TO_BCD bcd_out[5] -pin SWITCHES|switches_outputs_i I0[5]
load net SWITCHES|bcd_out[6] -attr @rip(#000000) bcd_out[6] -attr @name bcd_out[6] -pin SWITCHES|BIN_TO_BCD bcd_out[6] -pin SWITCHES|switches_outputs_i I0[6]
load net SWITCHES|bcd_out[7] -attr @rip(#000000) bcd_out[7] -attr @name bcd_out[7] -pin SWITCHES|BIN_TO_BCD bcd_out[7] -pin SWITCHES|switches_outputs_i I0[7]
load net SWITCHES|bcd_out[8] -attr @rip(#000000) bcd_out[8] -attr @name bcd_out[8] -pin SWITCHES|BIN_TO_BCD bcd_out[8] -pin SWITCHES|switches_outputs_i I0[8]
load net SWITCHES|bcd_out[9] -attr @rip(#000000) bcd_out[9] -attr @name bcd_out[9] -pin SWITCHES|BIN_TO_BCD bcd_out[9] -pin SWITCHES|switches_outputs_i I0[9]
load net SWITCHES|btnR -attr @name btnR -hierPin SWITCHES btnR -pin SWITCHES|DEBOUNCE2 button
netloc SWITCHES|btnR 1 0 2 NJ 158 430
load net SWITCHES|btnU -attr @name btnU -hierPin SWITCHES btnU -pin SWITCHES|DEBOUNCE1 button
netloc SWITCHES|btnU 1 0 6 NJ 178 NJ 178 NJ 178 NJ 178 NJ 178 N
load net SWITCHES|clk -attr @name clk -hierPin SWITCHES clk -pin SWITCHES|BIN_TO_BCD clk -pin SWITCHES|DEBOUNCE1 clk -pin SWITCHES|DEBOUNCE2 clk -pin SWITCHES|detected1_reg C -pin SWITCHES|detected2_reg C -pin SWITCHES|held_switches_reg[15:0] C -pin SWITCHES|led_out_reg[15:0] C -pin SWITCHES|select1_reg C -pin SWITCHES|select2_reg C -pin SWITCHES|switches_outputs_reg[15:0] C -pin SWITCHES|switches_read_reg[15:0] C
netloc SWITCHES|clk 1 0 11 NJ 278 430 338 680 238 NJ 238 1030 288 1230 258 1590 178 1880 238 2200 168 NJ 168 2930
load net SWITCHES|debounced_btn1 -attr @name debounced_btn1 -pin SWITCHES|DEBOUNCE1 result -pin SWITCHES|detected1_reg D -pin SWITCHES|pulse1_i I0
netloc SWITCHES|debounced_btn1 1 6 2 1610 198 1900J
load net SWITCHES|debounced_btn2 -attr @name debounced_btn2 -pin SWITCHES|DEBOUNCE2 result -pin SWITCHES|detected2_reg D -pin SWITCHES|pulse2_i I0
netloc SWITCHES|debounced_btn2 1 2 2 660 218 840
load net SWITCHES|detected1 -attr @name detected1 -pin SWITCHES|detected1_reg Q -pin SWITCHES|pulse1_i I1
netloc SWITCHES|detected1 1 7 1 1920 118n
load net SWITCHES|detected2 -attr @name detected2 -pin SWITCHES|detected2_reg Q -pin SWITCHES|pulse2_i I1
netloc SWITCHES|detected2 1 3 1 N 298
load net SWITCHES|led_out[0] -attr @rip(#000000) 0 -attr @name led_out[0] -hierPin SWITCHES led_out[0] -pin SWITCHES|led_out_reg[15:0] Q[0]
load net SWITCHES|led_out[10] -attr @rip(#000000) 10 -attr @name led_out[10] -hierPin SWITCHES led_out[10] -pin SWITCHES|led_out_reg[15:0] Q[10]
load net SWITCHES|led_out[11] -attr @rip(#000000) 11 -attr @name led_out[11] -hierPin SWITCHES led_out[11] -pin SWITCHES|led_out_reg[15:0] Q[11]
load net SWITCHES|led_out[12] -attr @rip(#000000) 12 -attr @name led_out[12] -hierPin SWITCHES led_out[12] -pin SWITCHES|led_out_reg[15:0] Q[12]
load net SWITCHES|led_out[13] -attr @rip(#000000) 13 -attr @name led_out[13] -hierPin SWITCHES led_out[13] -pin SWITCHES|led_out_reg[15:0] Q[13]
load net SWITCHES|led_out[14] -attr @rip(#000000) 14 -attr @name led_out[14] -hierPin SWITCHES led_out[14] -pin SWITCHES|led_out_reg[15:0] Q[14]
load net SWITCHES|led_out[15] -attr @rip(#000000) 15 -attr @name led_out[15] -hierPin SWITCHES led_out[15] -pin SWITCHES|led_out_reg[15:0] Q[15]
load net SWITCHES|led_out[1] -attr @rip(#000000) 1 -attr @name led_out[1] -hierPin SWITCHES led_out[1] -pin SWITCHES|led_out_reg[15:0] Q[1]
load net SWITCHES|led_out[2] -attr @rip(#000000) 2 -attr @name led_out[2] -hierPin SWITCHES led_out[2] -pin SWITCHES|led_out_reg[15:0] Q[2]
load net SWITCHES|led_out[3] -attr @rip(#000000) 3 -attr @name led_out[3] -hierPin SWITCHES led_out[3] -pin SWITCHES|led_out_reg[15:0] Q[3]
load net SWITCHES|led_out[4] -attr @rip(#000000) 4 -attr @name led_out[4] -hierPin SWITCHES led_out[4] -pin SWITCHES|led_out_reg[15:0] Q[4]
load net SWITCHES|led_out[5] -attr @rip(#000000) 5 -attr @name led_out[5] -hierPin SWITCHES led_out[5] -pin SWITCHES|led_out_reg[15:0] Q[5]
load net SWITCHES|led_out[6] -attr @rip(#000000) 6 -attr @name led_out[6] -hierPin SWITCHES led_out[6] -pin SWITCHES|led_out_reg[15:0] Q[6]
load net SWITCHES|led_out[7] -attr @rip(#000000) 7 -attr @name led_out[7] -hierPin SWITCHES led_out[7] -pin SWITCHES|led_out_reg[15:0] Q[7]
load net SWITCHES|led_out[8] -attr @rip(#000000) 8 -attr @name led_out[8] -hierPin SWITCHES led_out[8] -pin SWITCHES|led_out_reg[15:0] Q[8]
load net SWITCHES|led_out[9] -attr @rip(#000000) 9 -attr @name led_out[9] -hierPin SWITCHES led_out[9] -pin SWITCHES|led_out_reg[15:0] Q[9]
load net SWITCHES|led_out_i_n_0 -attr @name led_out_i_n_0 -pin SWITCHES|led_out_i O -pin SWITCHES|led_out_reg[15:0] RST
netloc SWITCHES|led_out_i_n_0 1 10 1 NJ 368
load net SWITCHES|p_1_in[0] -attr @rip(#000000) 0 -attr @name p_1_in[0] -pin SWITCHES|held_switches_reg[15:0] Q[0] -pin SWITCHES|switches_read_i I0[0]
load net SWITCHES|p_1_in[10] -attr @rip(#000000) 10 -attr @name p_1_in[10] -pin SWITCHES|held_switches_reg[15:0] Q[10] -pin SWITCHES|switches_read_i I0[10]
load net SWITCHES|p_1_in[11] -attr @rip(#000000) 11 -attr @name p_1_in[11] -pin SWITCHES|held_switches_reg[15:0] Q[11] -pin SWITCHES|switches_read_i I0[11]
load net SWITCHES|p_1_in[12] -attr @rip(#000000) 12 -attr @name p_1_in[12] -pin SWITCHES|held_switches_reg[15:0] Q[12] -pin SWITCHES|switches_read_i I0[12]
load net SWITCHES|p_1_in[13] -attr @rip(#000000) 13 -attr @name p_1_in[13] -pin SWITCHES|held_switches_reg[15:0] Q[13] -pin SWITCHES|switches_read_i I0[13]
load net SWITCHES|p_1_in[14] -attr @rip(#000000) 14 -attr @name p_1_in[14] -pin SWITCHES|held_switches_reg[15:0] Q[14] -pin SWITCHES|switches_read_i I0[14]
load net SWITCHES|p_1_in[15] -attr @rip(#000000) 15 -attr @name p_1_in[15] -pin SWITCHES|held_switches_reg[15:0] Q[15] -pin SWITCHES|switches_read_i I0[15]
load net SWITCHES|p_1_in[1] -attr @rip(#000000) 1 -attr @name p_1_in[1] -pin SWITCHES|held_switches_reg[15:0] Q[1] -pin SWITCHES|switches_read_i I0[1]
load net SWITCHES|p_1_in[2] -attr @rip(#000000) 2 -attr @name p_1_in[2] -pin SWITCHES|held_switches_reg[15:0] Q[2] -pin SWITCHES|switches_read_i I0[2]
load net SWITCHES|p_1_in[3] -attr @rip(#000000) 3 -attr @name p_1_in[3] -pin SWITCHES|held_switches_reg[15:0] Q[3] -pin SWITCHES|switches_read_i I0[3]
load net SWITCHES|p_1_in[4] -attr @rip(#000000) 4 -attr @name p_1_in[4] -pin SWITCHES|held_switches_reg[15:0] Q[4] -pin SWITCHES|switches_read_i I0[4]
load net SWITCHES|p_1_in[5] -attr @rip(#000000) 5 -attr @name p_1_in[5] -pin SWITCHES|held_switches_reg[15:0] Q[5] -pin SWITCHES|switches_read_i I0[5]
load net SWITCHES|p_1_in[6] -attr @rip(#000000) 6 -attr @name p_1_in[6] -pin SWITCHES|held_switches_reg[15:0] Q[6] -pin SWITCHES|switches_read_i I0[6]
load net SWITCHES|p_1_in[7] -attr @rip(#000000) 7 -attr @name p_1_in[7] -pin SWITCHES|held_switches_reg[15:0] Q[7] -pin SWITCHES|switches_read_i I0[7]
load net SWITCHES|p_1_in[8] -attr @rip(#000000) 8 -attr @name p_1_in[8] -pin SWITCHES|held_switches_reg[15:0] Q[8] -pin SWITCHES|switches_read_i I0[8]
load net SWITCHES|p_1_in[9] -attr @rip(#000000) 9 -attr @name p_1_in[9] -pin SWITCHES|held_switches_reg[15:0] Q[9] -pin SWITCHES|switches_read_i I0[9]
load net SWITCHES|pulse1 -attr @name pulse1 -pin SWITCHES|pulse1_i O -pin SWITCHES|select1_reg CE
netloc SWITCHES|pulse1 1 8 1 2160 168n
load net SWITCHES|pulse2 -attr @name pulse2 -pin SWITCHES|pulse2_i O -pin SWITCHES|select2_reg CE
netloc SWITCHES|pulse2 1 4 1 990 288n
load net SWITCHES|reset -attr @name reset -hierPin SWITCHES reset -pin SWITCHES|BIN_TO_BCD reset -pin SWITCHES|held_switches_reg[15:0] RST -pin SWITCHES|reset_n0_i I0 -pin SWITCHES|select1_reg RST -pin SWITCHES|select2_reg RST
netloc SWITCHES|reset 1 0 9 280 358 NJ 358 NJ 358 NJ 358 1010 308N N 308N 1610 218 NJ 218 2180
load net SWITCHES|reset_n0 -attr @name reset_n0 -pin SWITCHES|DEBOUNCE1 reset_n -pin SWITCHES|DEBOUNCE2 reset_n -pin SWITCHES|reset_n0_i O
netloc SWITCHES|reset_n0 1 1 5 450 198 NJ 198 NJ 198 NJ 198 1210
load net SWITCHES|select1 -attr @name select1 -pin SWITCHES|led_out_i S -pin SWITCHES|select10_i I0 -pin SWITCHES|select1_reg Q -pin SWITCHES|switches_outputs_i S -pin SWITCHES|switches_outputs_i__0 S
netloc SWITCHES|select1 1 7 3 1920 318 2200J 328 2620
load net SWITCHES|select10 -attr @name select10 -pin SWITCHES|select10_i O -pin SWITCHES|select1_reg D
netloc SWITCHES|select10 1 8 1 NJ 278
load net SWITCHES|select2 -attr @name select2 -pin SWITCHES|held_switches_reg[15:0] CE -pin SWITCHES|select20_i I0 -pin SWITCHES|select2_reg Q -pin SWITCHES|switches_read_i S
netloc SWITCHES|select2 1 3 4 840 448 NJ 448 1270 458 NJ
load net SWITCHES|select20 -attr @name select20 -pin SWITCHES|select20_i O -pin SWITCHES|select2_reg D
netloc SWITCHES|select20 1 4 1 NJ 398
load net SWITCHES|switches_inputs[0] -attr @rip(#000000) switches_inputs[0] -attr @name switches_inputs[0] -hierPin SWITCHES switches_inputs[0] -pin SWITCHES|BIN_TO_BCD bin_in[0] -pin SWITCHES|held_switches_reg[15:0] D[0] -pin SWITCHES|switches_read_i I1[0]
load net SWITCHES|switches_inputs[10] -attr @rip(#000000) switches_inputs[10] -attr @name switches_inputs[10] -hierPin SWITCHES switches_inputs[10] -pin SWITCHES|BIN_TO_BCD bin_in[10] -pin SWITCHES|held_switches_reg[15:0] D[10] -pin SWITCHES|switches_read_i I1[10]
load net SWITCHES|switches_inputs[11] -attr @rip(#000000) switches_inputs[11] -attr @name switches_inputs[11] -hierPin SWITCHES switches_inputs[11] -pin SWITCHES|BIN_TO_BCD bin_in[11] -pin SWITCHES|held_switches_reg[15:0] D[11] -pin SWITCHES|switches_read_i I1[11]
load net SWITCHES|switches_inputs[12] -attr @rip(#000000) switches_inputs[12] -attr @name switches_inputs[12] -hierPin SWITCHES switches_inputs[12] -pin SWITCHES|BIN_TO_BCD bin_in[12] -pin SWITCHES|held_switches_reg[15:0] D[12] -pin SWITCHES|switches_read_i I1[12]
load net SWITCHES|switches_inputs[13] -attr @rip(#000000) switches_inputs[13] -attr @name switches_inputs[13] -hierPin SWITCHES switches_inputs[13] -pin SWITCHES|BIN_TO_BCD bin_in[13] -pin SWITCHES|held_switches_reg[15:0] D[13] -pin SWITCHES|switches_read_i I1[13]
load net SWITCHES|switches_inputs[14] -attr @rip(#000000) switches_inputs[14] -attr @name switches_inputs[14] -hierPin SWITCHES switches_inputs[14] -pin SWITCHES|BIN_TO_BCD bin_in[14] -pin SWITCHES|held_switches_reg[15:0] D[14] -pin SWITCHES|switches_read_i I1[14]
load net SWITCHES|switches_inputs[15] -attr @rip(#000000) switches_inputs[15] -attr @name switches_inputs[15] -hierPin SWITCHES switches_inputs[15] -pin SWITCHES|BIN_TO_BCD bin_in[15] -pin SWITCHES|held_switches_reg[15:0] D[15] -pin SWITCHES|switches_read_i I1[15]
load net SWITCHES|switches_inputs[1] -attr @rip(#000000) switches_inputs[1] -attr @name switches_inputs[1] -hierPin SWITCHES switches_inputs[1] -pin SWITCHES|BIN_TO_BCD bin_in[1] -pin SWITCHES|held_switches_reg[15:0] D[1] -pin SWITCHES|switches_read_i I1[1]
load net SWITCHES|switches_inputs[2] -attr @rip(#000000) switches_inputs[2] -attr @name switches_inputs[2] -hierPin SWITCHES switches_inputs[2] -pin SWITCHES|BIN_TO_BCD bin_in[2] -pin SWITCHES|held_switches_reg[15:0] D[2] -pin SWITCHES|switches_read_i I1[2]
load net SWITCHES|switches_inputs[3] -attr @rip(#000000) switches_inputs[3] -attr @name switches_inputs[3] -hierPin SWITCHES switches_inputs[3] -pin SWITCHES|BIN_TO_BCD bin_in[3] -pin SWITCHES|held_switches_reg[15:0] D[3] -pin SWITCHES|switches_read_i I1[3]
load net SWITCHES|switches_inputs[4] -attr @rip(#000000) switches_inputs[4] -attr @name switches_inputs[4] -hierPin SWITCHES switches_inputs[4] -pin SWITCHES|BIN_TO_BCD bin_in[4] -pin SWITCHES|held_switches_reg[15:0] D[4] -pin SWITCHES|switches_read_i I1[4]
load net SWITCHES|switches_inputs[5] -attr @rip(#000000) switches_inputs[5] -attr @name switches_inputs[5] -hierPin SWITCHES switches_inputs[5] -pin SWITCHES|BIN_TO_BCD bin_in[5] -pin SWITCHES|held_switches_reg[15:0] D[5] -pin SWITCHES|switches_read_i I1[5]
load net SWITCHES|switches_inputs[6] -attr @rip(#000000) switches_inputs[6] -attr @name switches_inputs[6] -hierPin SWITCHES switches_inputs[6] -pin SWITCHES|BIN_TO_BCD bin_in[6] -pin SWITCHES|held_switches_reg[15:0] D[6] -pin SWITCHES|switches_read_i I1[6]
load net SWITCHES|switches_inputs[7] -attr @rip(#000000) switches_inputs[7] -attr @name switches_inputs[7] -hierPin SWITCHES switches_inputs[7] -pin SWITCHES|BIN_TO_BCD bin_in[7] -pin SWITCHES|held_switches_reg[15:0] D[7] -pin SWITCHES|switches_read_i I1[7]
load net SWITCHES|switches_inputs[8] -attr @rip(#000000) switches_inputs[8] -attr @name switches_inputs[8] -hierPin SWITCHES switches_inputs[8] -pin SWITCHES|BIN_TO_BCD bin_in[8] -pin SWITCHES|held_switches_reg[15:0] D[8] -pin SWITCHES|switches_read_i I1[8]
load net SWITCHES|switches_inputs[9] -attr @rip(#000000) switches_inputs[9] -attr @name switches_inputs[9] -hierPin SWITCHES switches_inputs[9] -pin SWITCHES|BIN_TO_BCD bin_in[9] -pin SWITCHES|held_switches_reg[15:0] D[9] -pin SWITCHES|switches_read_i I1[9]
load net SWITCHES|switches_outputs0 -attr @name switches_outputs0 -pin SWITCHES|led_out_reg[15:0] D -pin SWITCHES|switches_outputs0_i O -pin SWITCHES|switches_outputs_i__0 I0
netloc SWITCHES|switches_outputs0 1 9 2 2640 458 2970J
load net SWITCHES|switches_outputs[0] -attr @rip(#000000) 0 -attr @name switches_outputs[0] -hierPin SWITCHES switches_outputs[0] -pin SWITCHES|switches_outputs_reg[15:0] Q[0]
load net SWITCHES|switches_outputs[10] -attr @rip(#000000) 10 -attr @name switches_outputs[10] -hierPin SWITCHES switches_outputs[10] -pin SWITCHES|switches_outputs_reg[15:0] Q[10]
load net SWITCHES|switches_outputs[11] -attr @rip(#000000) 11 -attr @name switches_outputs[11] -hierPin SWITCHES switches_outputs[11] -pin SWITCHES|switches_outputs_reg[15:0] Q[11]
load net SWITCHES|switches_outputs[12] -attr @rip(#000000) 12 -attr @name switches_outputs[12] -hierPin SWITCHES switches_outputs[12] -pin SWITCHES|switches_outputs_reg[15:0] Q[12]
load net SWITCHES|switches_outputs[13] -attr @rip(#000000) 13 -attr @name switches_outputs[13] -hierPin SWITCHES switches_outputs[13] -pin SWITCHES|switches_outputs_reg[15:0] Q[13]
load net SWITCHES|switches_outputs[14] -attr @rip(#000000) 14 -attr @name switches_outputs[14] -hierPin SWITCHES switches_outputs[14] -pin SWITCHES|switches_outputs_reg[15:0] Q[14]
load net SWITCHES|switches_outputs[15] -attr @rip(#000000) 15 -attr @name switches_outputs[15] -hierPin SWITCHES switches_outputs[15] -pin SWITCHES|switches_outputs_reg[15:0] Q[15]
load net SWITCHES|switches_outputs[1] -attr @rip(#000000) 1 -attr @name switches_outputs[1] -hierPin SWITCHES switches_outputs[1] -pin SWITCHES|switches_outputs_reg[15:0] Q[1]
load net SWITCHES|switches_outputs[2] -attr @rip(#000000) 2 -attr @name switches_outputs[2] -hierPin SWITCHES switches_outputs[2] -pin SWITCHES|switches_outputs_reg[15:0] Q[2]
load net SWITCHES|switches_outputs[3] -attr @rip(#000000) 3 -attr @name switches_outputs[3] -hierPin SWITCHES switches_outputs[3] -pin SWITCHES|switches_outputs_reg[15:0] Q[3]
load net SWITCHES|switches_outputs[4] -attr @rip(#000000) 4 -attr @name switches_outputs[4] -hierPin SWITCHES switches_outputs[4] -pin SWITCHES|switches_outputs_reg[15:0] Q[4]
load net SWITCHES|switches_outputs[5] -attr @rip(#000000) 5 -attr @name switches_outputs[5] -hierPin SWITCHES switches_outputs[5] -pin SWITCHES|switches_outputs_reg[15:0] Q[5]
load net SWITCHES|switches_outputs[6] -attr @rip(#000000) 6 -attr @name switches_outputs[6] -hierPin SWITCHES switches_outputs[6] -pin SWITCHES|switches_outputs_reg[15:0] Q[6]
load net SWITCHES|switches_outputs[7] -attr @rip(#000000) 7 -attr @name switches_outputs[7] -hierPin SWITCHES switches_outputs[7] -pin SWITCHES|switches_outputs_reg[15:0] Q[7]
load net SWITCHES|switches_outputs[8] -attr @rip(#000000) 8 -attr @name switches_outputs[8] -hierPin SWITCHES switches_outputs[8] -pin SWITCHES|switches_outputs_reg[15:0] Q[8]
load net SWITCHES|switches_outputs[9] -attr @rip(#000000) 9 -attr @name switches_outputs[9] -hierPin SWITCHES switches_outputs[9] -pin SWITCHES|switches_outputs_reg[15:0] Q[9]
load net SWITCHES|switches_outputs_i__0_n_0 -attr @name switches_outputs_i__0_n_0 -pin SWITCHES|switches_outputs_i__0 O -pin SWITCHES|switches_outputs_reg[15:0] RST[12] -pin SWITCHES|switches_outputs_reg[15:0] RST[11] -pin SWITCHES|switches_outputs_reg[15:0] RST[10] -pin SWITCHES|switches_outputs_reg[15:0] RST[9] -pin SWITCHES|switches_outputs_reg[15:0] RST[8] -pin SWITCHES|switches_outputs_reg[15:0] RST[7] -pin SWITCHES|switches_outputs_reg[15:0] RST[6] -pin SWITCHES|switches_outputs_reg[15:0] RST[5] -pin SWITCHES|switches_outputs_reg[15:0] RST[4] -pin SWITCHES|switches_outputs_reg[15:0] RST[3] -pin SWITCHES|switches_outputs_reg[15:0] RST[2] -pin SWITCHES|switches_outputs_reg[15:0] RST[1] -pin SWITCHES|switches_outputs_reg[15:0] RST[0] -pin SWITCHES|switches_outputs_reg[15:0] SET[15] -pin SWITCHES|switches_outputs_reg[15:0] SET[14] -pin SWITCHES|switches_outputs_reg[15:0] SET[13]
netloc SWITCHES|switches_outputs_i__0_n_0 1 10 1 2970 108n
load net SWITCHES|switches_outputs_i_n_0 -attr @rip(#000000) O[15] -attr @name switches_outputs_i_n_0 -pin SWITCHES|switches_outputs_i O[15] -pin SWITCHES|switches_outputs_reg[15:0] D[15]
load net SWITCHES|switches_outputs_i_n_1 -attr @rip(#000000) O[14] -attr @name switches_outputs_i_n_1 -pin SWITCHES|switches_outputs_i O[14] -pin SWITCHES|switches_outputs_reg[15:0] D[14]
load net SWITCHES|switches_outputs_i_n_10 -attr @rip(#000000) O[5] -attr @name switches_outputs_i_n_10 -pin SWITCHES|switches_outputs_i O[5] -pin SWITCHES|switches_outputs_reg[15:0] D[5]
load net SWITCHES|switches_outputs_i_n_11 -attr @rip(#000000) O[4] -attr @name switches_outputs_i_n_11 -pin SWITCHES|switches_outputs_i O[4] -pin SWITCHES|switches_outputs_reg[15:0] D[4]
load net SWITCHES|switches_outputs_i_n_12 -attr @rip(#000000) O[3] -attr @name switches_outputs_i_n_12 -pin SWITCHES|switches_outputs_i O[3] -pin SWITCHES|switches_outputs_reg[15:0] D[3]
load net SWITCHES|switches_outputs_i_n_13 -attr @rip(#000000) O[2] -attr @name switches_outputs_i_n_13 -pin SWITCHES|switches_outputs_i O[2] -pin SWITCHES|switches_outputs_reg[15:0] D[2]
load net SWITCHES|switches_outputs_i_n_14 -attr @rip(#000000) O[1] -attr @name switches_outputs_i_n_14 -pin SWITCHES|switches_outputs_i O[1] -pin SWITCHES|switches_outputs_reg[15:0] D[1]
load net SWITCHES|switches_outputs_i_n_15 -attr @rip(#000000) O[0] -attr @name switches_outputs_i_n_15 -pin SWITCHES|switches_outputs_i O[0] -pin SWITCHES|switches_outputs_reg[15:0] D[0]
load net SWITCHES|switches_outputs_i_n_2 -attr @rip(#000000) O[13] -attr @name switches_outputs_i_n_2 -pin SWITCHES|switches_outputs_i O[13] -pin SWITCHES|switches_outputs_reg[15:0] D[13]
load net SWITCHES|switches_outputs_i_n_3 -attr @rip(#000000) O[12] -attr @name switches_outputs_i_n_3 -pin SWITCHES|switches_outputs_i O[12] -pin SWITCHES|switches_outputs_reg[15:0] D[12]
load net SWITCHES|switches_outputs_i_n_4 -attr @rip(#000000) O[11] -attr @name switches_outputs_i_n_4 -pin SWITCHES|switches_outputs_i O[11] -pin SWITCHES|switches_outputs_reg[15:0] D[11]
load net SWITCHES|switches_outputs_i_n_5 -attr @rip(#000000) O[10] -attr @name switches_outputs_i_n_5 -pin SWITCHES|switches_outputs_i O[10] -pin SWITCHES|switches_outputs_reg[15:0] D[10]
load net SWITCHES|switches_outputs_i_n_6 -attr @rip(#000000) O[9] -attr @name switches_outputs_i_n_6 -pin SWITCHES|switches_outputs_i O[9] -pin SWITCHES|switches_outputs_reg[15:0] D[9]
load net SWITCHES|switches_outputs_i_n_7 -attr @rip(#000000) O[8] -attr @name switches_outputs_i_n_7 -pin SWITCHES|switches_outputs_i O[8] -pin SWITCHES|switches_outputs_reg[15:0] D[8]
load net SWITCHES|switches_outputs_i_n_8 -attr @rip(#000000) O[7] -attr @name switches_outputs_i_n_8 -pin SWITCHES|switches_outputs_i O[7] -pin SWITCHES|switches_outputs_reg[15:0] D[7]
load net SWITCHES|switches_outputs_i_n_9 -attr @rip(#000000) O[6] -attr @name switches_outputs_i_n_9 -pin SWITCHES|switches_outputs_i O[6] -pin SWITCHES|switches_outputs_reg[15:0] D[6]
load net SWITCHES|switches_read[0] -attr @rip(#000000) 0 -attr @name switches_read[0] -pin SWITCHES|switches_outputs0_i I0[0] -pin SWITCHES|switches_outputs_i I1[0] -pin SWITCHES|switches_read_reg[15:0] Q[0]
load net SWITCHES|switches_read[10] -attr @rip(#000000) 10 -attr @name switches_read[10] -pin SWITCHES|switches_outputs0_i I0[10] -pin SWITCHES|switches_outputs_i I1[10] -pin SWITCHES|switches_read_reg[15:0] Q[10]
load net SWITCHES|switches_read[11] -attr @rip(#000000) 11 -attr @name switches_read[11] -pin SWITCHES|switches_outputs0_i I0[11] -pin SWITCHES|switches_outputs_i I1[11] -pin SWITCHES|switches_read_reg[15:0] Q[11]
load net SWITCHES|switches_read[12] -attr @rip(#000000) 12 -attr @name switches_read[12] -pin SWITCHES|switches_outputs0_i I0[12] -pin SWITCHES|switches_outputs_i I1[12] -pin SWITCHES|switches_read_reg[15:0] Q[12]
load net SWITCHES|switches_read[13] -attr @rip(#000000) 13 -attr @name switches_read[13] -pin SWITCHES|switches_outputs0_i I0[13] -pin SWITCHES|switches_outputs_i I1[13] -pin SWITCHES|switches_read_reg[15:0] Q[13]
load net SWITCHES|switches_read[14] -attr @rip(#000000) 14 -attr @name switches_read[14] -pin SWITCHES|switches_outputs0_i I0[14] -pin SWITCHES|switches_outputs_i I1[14] -pin SWITCHES|switches_read_reg[15:0] Q[14]
load net SWITCHES|switches_read[15] -attr @rip(#000000) 15 -attr @name switches_read[15] -pin SWITCHES|switches_outputs0_i I0[15] -pin SWITCHES|switches_outputs_i I1[15] -pin SWITCHES|switches_read_reg[15:0] Q[15]
load net SWITCHES|switches_read[1] -attr @rip(#000000) 1 -attr @name switches_read[1] -pin SWITCHES|switches_outputs0_i I0[1] -pin SWITCHES|switches_outputs_i I1[1] -pin SWITCHES|switches_read_reg[15:0] Q[1]
load net SWITCHES|switches_read[2] -attr @rip(#000000) 2 -attr @name switches_read[2] -pin SWITCHES|switches_outputs0_i I0[2] -pin SWITCHES|switches_outputs_i I1[2] -pin SWITCHES|switches_read_reg[15:0] Q[2]
load net SWITCHES|switches_read[3] -attr @rip(#000000) 3 -attr @name switches_read[3] -pin SWITCHES|switches_outputs0_i I0[3] -pin SWITCHES|switches_outputs_i I1[3] -pin SWITCHES|switches_read_reg[15:0] Q[3]
load net SWITCHES|switches_read[4] -attr @rip(#000000) 4 -attr @name switches_read[4] -pin SWITCHES|switches_outputs0_i I0[4] -pin SWITCHES|switches_outputs_i I1[4] -pin SWITCHES|switches_read_reg[15:0] Q[4]
load net SWITCHES|switches_read[5] -attr @rip(#000000) 5 -attr @name switches_read[5] -pin SWITCHES|switches_outputs0_i I0[5] -pin SWITCHES|switches_outputs_i I1[5] -pin SWITCHES|switches_read_reg[15:0] Q[5]
load net SWITCHES|switches_read[6] -attr @rip(#000000) 6 -attr @name switches_read[6] -pin SWITCHES|switches_outputs0_i I0[6] -pin SWITCHES|switches_outputs_i I1[6] -pin SWITCHES|switches_read_reg[15:0] Q[6]
load net SWITCHES|switches_read[7] -attr @rip(#000000) 7 -attr @name switches_read[7] -pin SWITCHES|switches_outputs0_i I0[7] -pin SWITCHES|switches_outputs_i I1[7] -pin SWITCHES|switches_read_reg[15:0] Q[7]
load net SWITCHES|switches_read[8] -attr @rip(#000000) 8 -attr @name switches_read[8] -pin SWITCHES|switches_outputs0_i I0[8] -pin SWITCHES|switches_outputs_i I1[8] -pin SWITCHES|switches_read_reg[15:0] Q[8]
load net SWITCHES|switches_read[9] -attr @rip(#000000) 9 -attr @name switches_read[9] -pin SWITCHES|switches_outputs0_i I0[9] -pin SWITCHES|switches_outputs_i I1[9] -pin SWITCHES|switches_read_reg[15:0] Q[9]
load net SWITCHES|switches_read__0[0] -attr @rip(#000000) O[0] -attr @name switches_read__0[0] -pin SWITCHES|switches_read_i O[0] -pin SWITCHES|switches_read_reg[15:0] D[0]
load net SWITCHES|switches_read__0[10] -attr @rip(#000000) O[10] -attr @name switches_read__0[10] -pin SWITCHES|switches_read_i O[10] -pin SWITCHES|switches_read_reg[15:0] D[10]
load net SWITCHES|switches_read__0[11] -attr @rip(#000000) O[11] -attr @name switches_read__0[11] -pin SWITCHES|switches_read_i O[11] -pin SWITCHES|switches_read_reg[15:0] D[11]
load net SWITCHES|switches_read__0[12] -attr @rip(#000000) O[12] -attr @name switches_read__0[12] -pin SWITCHES|switches_read_i O[12] -pin SWITCHES|switches_read_reg[15:0] D[12]
load net SWITCHES|switches_read__0[13] -attr @rip(#000000) O[13] -attr @name switches_read__0[13] -pin SWITCHES|switches_read_i O[13] -pin SWITCHES|switches_read_reg[15:0] D[13]
load net SWITCHES|switches_read__0[14] -attr @rip(#000000) O[14] -attr @name switches_read__0[14] -pin SWITCHES|switches_read_i O[14] -pin SWITCHES|switches_read_reg[15:0] D[14]
load net SWITCHES|switches_read__0[15] -attr @rip(#000000) O[15] -attr @name switches_read__0[15] -pin SWITCHES|switches_read_i O[15] -pin SWITCHES|switches_read_reg[15:0] D[15]
load net SWITCHES|switches_read__0[1] -attr @rip(#000000) O[1] -attr @name switches_read__0[1] -pin SWITCHES|switches_read_i O[1] -pin SWITCHES|switches_read_reg[15:0] D[1]
load net SWITCHES|switches_read__0[2] -attr @rip(#000000) O[2] -attr @name switches_read__0[2] -pin SWITCHES|switches_read_i O[2] -pin SWITCHES|switches_read_reg[15:0] D[2]
load net SWITCHES|switches_read__0[3] -attr @rip(#000000) O[3] -attr @name switches_read__0[3] -pin SWITCHES|switches_read_i O[3] -pin SWITCHES|switches_read_reg[15:0] D[3]
load net SWITCHES|switches_read__0[4] -attr @rip(#000000) O[4] -attr @name switches_read__0[4] -pin SWITCHES|switches_read_i O[4] -pin SWITCHES|switches_read_reg[15:0] D[4]
load net SWITCHES|switches_read__0[5] -attr @rip(#000000) O[5] -attr @name switches_read__0[5] -pin SWITCHES|switches_read_i O[5] -pin SWITCHES|switches_read_reg[15:0] D[5]
load net SWITCHES|switches_read__0[6] -attr @rip(#000000) O[6] -attr @name switches_read__0[6] -pin SWITCHES|switches_read_i O[6] -pin SWITCHES|switches_read_reg[15:0] D[6]
load net SWITCHES|switches_read__0[7] -attr @rip(#000000) O[7] -attr @name switches_read__0[7] -pin SWITCHES|switches_read_i O[7] -pin SWITCHES|switches_read_reg[15:0] D[7]
load net SWITCHES|switches_read__0[8] -attr @rip(#000000) O[8] -attr @name switches_read__0[8] -pin SWITCHES|switches_read_i O[8] -pin SWITCHES|switches_read_reg[15:0] D[8]
load net SWITCHES|switches_read__0[9] -attr @rip(#000000) O[9] -attr @name switches_read__0[9] -pin SWITCHES|switches_read_i O[9] -pin SWITCHES|switches_read_reg[15:0] D[9]
load netBundle @SWITCHES|switches_inputs 16 SWITCHES|switches_inputs[15] SWITCHES|switches_inputs[14] SWITCHES|switches_inputs[13] SWITCHES|switches_inputs[12] SWITCHES|switches_inputs[11] SWITCHES|switches_inputs[10] SWITCHES|switches_inputs[9] SWITCHES|switches_inputs[8] SWITCHES|switches_inputs[7] SWITCHES|switches_inputs[6] SWITCHES|switches_inputs[5] SWITCHES|switches_inputs[4] SWITCHES|switches_inputs[3] SWITCHES|switches_inputs[2] SWITCHES|switches_inputs[1] SWITCHES|switches_inputs[0] -autobundled
netbloc @SWITCHES|switches_inputs 1 0 9 NJ 468 NJ 468 NJ 468 NJ 468 NJ 468 1250 288 1590 338 NJ 338 2140
load netBundle @SWITCHES|bcd_out 16 SWITCHES|bcd_out[15] SWITCHES|bcd_out[14] SWITCHES|bcd_out[13] SWITCHES|bcd_out[12] SWITCHES|bcd_out[11] SWITCHES|bcd_out[10] SWITCHES|bcd_out[9] SWITCHES|bcd_out[8] SWITCHES|bcd_out[7] SWITCHES|bcd_out[6] SWITCHES|bcd_out[5] SWITCHES|bcd_out[4] SWITCHES|bcd_out[3] SWITCHES|bcd_out[2] SWITCHES|bcd_out[1] SWITCHES|bcd_out[0] -autobundled
netbloc @SWITCHES|bcd_out 1 9 1 2580 78n
load netBundle @SWITCHES|switches_outputs_i_n_ 16 SWITCHES|switches_outputs_i_n_0 SWITCHES|switches_outputs_i_n_1 SWITCHES|switches_outputs_i_n_2 SWITCHES|switches_outputs_i_n_3 SWITCHES|switches_outputs_i_n_4 SWITCHES|switches_outputs_i_n_5 SWITCHES|switches_outputs_i_n_6 SWITCHES|switches_outputs_i_n_7 SWITCHES|switches_outputs_i_n_8 SWITCHES|switches_outputs_i_n_9 SWITCHES|switches_outputs_i_n_10 SWITCHES|switches_outputs_i_n_11 SWITCHES|switches_outputs_i_n_12 SWITCHES|switches_outputs_i_n_13 SWITCHES|switches_outputs_i_n_14 SWITCHES|switches_outputs_i_n_15 -autobundled
netbloc @SWITCHES|switches_outputs_i_n_ 1 10 1 2950 88n
load netBundle @SWITCHES|switches_read__0 16 SWITCHES|switches_read__0[15] SWITCHES|switches_read__0[14] SWITCHES|switches_read__0[13] SWITCHES|switches_read__0[12] SWITCHES|switches_read__0[11] SWITCHES|switches_read__0[10] SWITCHES|switches_read__0[9] SWITCHES|switches_read__0[8] SWITCHES|switches_read__0[7] SWITCHES|switches_read__0[6] SWITCHES|switches_read__0[5] SWITCHES|switches_read__0[4] SWITCHES|switches_read__0[3] SWITCHES|switches_read__0[2] SWITCHES|switches_read__0[1] SWITCHES|switches_read__0[0] -autobundled
netbloc @SWITCHES|switches_read__0 1 7 1 1860 398n
load netBundle @SWITCHES|switches_read 16 SWITCHES|switches_read[15] SWITCHES|switches_read[14] SWITCHES|switches_read[13] SWITCHES|switches_read[12] SWITCHES|switches_read[11] SWITCHES|switches_read[10] SWITCHES|switches_read[9] SWITCHES|switches_read[8] SWITCHES|switches_read[7] SWITCHES|switches_read[6] SWITCHES|switches_read[5] SWITCHES|switches_read[4] SWITCHES|switches_read[3] SWITCHES|switches_read[2] SWITCHES|switches_read[1] SWITCHES|switches_read[0] -autobundled
netbloc @SWITCHES|switches_read 1 8 2 2140 468 2600
load netBundle @SWITCHES|switches_outputs 16 SWITCHES|switches_outputs[15] SWITCHES|switches_outputs[14] SWITCHES|switches_outputs[13] SWITCHES|switches_outputs[12] SWITCHES|switches_outputs[11] SWITCHES|switches_outputs[10] SWITCHES|switches_outputs[9] SWITCHES|switches_outputs[8] SWITCHES|switches_outputs[7] SWITCHES|switches_outputs[6] SWITCHES|switches_outputs[5] SWITCHES|switches_outputs[4] SWITCHES|switches_outputs[3] SWITCHES|switches_outputs[2] SWITCHES|switches_outputs[1] SWITCHES|switches_outputs[0] -autobundled
netbloc @SWITCHES|switches_outputs 1 11 1 N 178
load netBundle @SWITCHES|led_out 16 SWITCHES|led_out[15] SWITCHES|led_out[14] SWITCHES|led_out[13] SWITCHES|led_out[12] SWITCHES|led_out[11] SWITCHES|led_out[10] SWITCHES|led_out[9] SWITCHES|led_out[8] SWITCHES|led_out[7] SWITCHES|led_out[6] SWITCHES|led_out[5] SWITCHES|led_out[4] SWITCHES|led_out[3] SWITCHES|led_out[2] SWITCHES|led_out[1] SWITCHES|led_out[0] -autobundled
netbloc @SWITCHES|led_out 1 11 1 3250 158n
load netBundle @SWITCHES|p_1_in 16 SWITCHES|p_1_in[15] SWITCHES|p_1_in[14] SWITCHES|p_1_in[13] SWITCHES|p_1_in[12] SWITCHES|p_1_in[11] SWITCHES|p_1_in[10] SWITCHES|p_1_in[9] SWITCHES|p_1_in[8] SWITCHES|p_1_in[7] SWITCHES|p_1_in[6] SWITCHES|p_1_in[5] SWITCHES|p_1_in[4] SWITCHES|p_1_in[3] SWITCHES|p_1_in[2] SWITCHES|p_1_in[1] SWITCHES|p_1_in[0] -autobundled
netbloc @SWITCHES|p_1_in 1 6 1 1570 378n
load netBundle @switches_inputs 16 switches_inputs[15] switches_inputs[14] switches_inputs[13] switches_inputs[12] switches_inputs[11] switches_inputs[10] switches_inputs[9] switches_inputs[8] switches_inputs[7] switches_inputs[6] switches_inputs[5] switches_inputs[4] switches_inputs[3] switches_inputs[2] switches_inputs[1] switches_inputs[0] -autobundled
netbloc @switches_inputs 1 0 1 40J 170n
load netBundle @led 16 led[15] led[14] led[13] led[12] led[11] led[10] led[9] led[8] led[7] led[6] led[5] led[4] led[3] led[2] led[1] led[0] -autobundled
netbloc @led 1 1 2 3440J 60 3760J
load netBundle @switches_outputs 16 switches_outputs[15] switches_outputs[14] switches_outputs[13] switches_outputs[12] switches_outputs[11] switches_outputs[10] switches_outputs[9] switches_outputs[8] switches_outputs[7] switches_outputs[6] switches_outputs[5] switches_outputs[4] switches_outputs[3] switches_outputs[2] switches_outputs[1] switches_outputs[0] -autobundled
netbloc @switches_outputs 1 1 1 3440 178n
levelinfo -pg 1 0 250 3590 3880
levelinfo -hier SWITCHES * 330 530 730 890 1070 1350 1740 2000 2400 2810 3010 *
pagesize -pg 1 -db -bbox -sgen -190 -10 3990 600
pagesize -hier SWITCHES -db -bbox -sgen 250 28 3280 498
show
zoom 0.411115
scrollpos -45 -140
#
# initialize ictrl to current module lab_3_top_level work:lab_3_top_level:NOFILE
ictrl init topinfo |
