<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex4" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_391" />
        <signal name="XLXN_381(4:0)" />
        <signal name="XLXN_380(3:0)" />
        <signal name="XLXN_379(6:0)" />
        <signal name="XLXN_378" />
        <signal name="XLXN_375(4:0)" />
        <signal name="XLXN_159" />
        <signal name="XLXN_185(9:0)" />
        <signal name="XLXN_31(15:0)" />
        <signal name="XLXN_45(8:0)" />
        <signal name="XLXN_46(7:0)" />
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_63(7:0)" />
        <signal name="XLXN_79(7:0)" />
        <signal name="XLXN_83(7:0)" />
        <signal name="XLXN_96(7:0)" />
        <signal name="XLXN_53(7:0)" />
        <signal name="XLXN_64(7:0)" />
        <signal name="XLXN_114(7:0)" />
        <signal name="XLXN_39(4:0)" />
        <signal name="XLXN_84(7:0)" />
        <signal name="XLXN_115(7:0)" />
        <signal name="XLXN_160" />
        <signal name="XLXN_161(4:0)" />
        <signal name="XLXN_162(4:0)" />
        <signal name="XLXN_170(2:0)" />
        <signal name="XLXN_167" />
        <signal name="XLXN_168" />
        <signal name="XLXN_169" />
        <signal name="XLXN_247(15:0)" />
        <signal name="XLXN_253" />
        <signal name="XLXN_256" />
        <signal name="XLXN_269(15:0)" />
        <signal name="XLXN_278(4:0)" />
        <signal name="XLXN_283(9:0)" />
        <signal name="XLXN_285(15:0)" />
        <signal name="MASTER_CLK" />
        <signal name="LED_3,LED_2,LED_1,LED_0" />
        <signal name="RIGHT,UP,DOWN,LEFT,ENTER" />
        <signal name="XLXN_430(15:0)" />
        <signal name="XLXN_435" />
        <port polarity="Input" name="MASTER_CLK" />
        <port polarity="Output" name="LED_3,LED_2,LED_1,LED_0" />
        <port polarity="Input" name="RIGHT,UP,DOWN,LEFT,ENTER" />
        <blockdef name="SREG">
            <timestamp>2015-9-7T21:13:36</timestamp>
            <rect width="320" x="64" y="-192" height="132" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="384" y="-108" height="24" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="448" />
        </blockdef>
        <blockdef name="SRAM">
            <timestamp>2015-9-8T2:1:1</timestamp>
            <rect width="224" x="32" y="32" height="384" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="0" y1="208" y2="208" style="linewidth:W" x1="32" />
            <line x2="288" y1="80" y2="80" x1="256" />
        </blockdef>
        <blockdef name="IM">
            <timestamp>2015-9-8T1:54:32</timestamp>
            <rect width="160" x="96" y="32" height="152" />
            <line x2="256" y1="80" y2="80" style="linewidth:W" x1="288" />
            <line x2="96" y1="80" y2="80" style="linewidth:W" x1="64" />
            <line x2="96" y1="144" y2="144" x1="64" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2015-9-7T20:20:18</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="452" y1="-32" y2="-32" x1="388" />
            <line x2="452" y1="-160" y2="-160" x1="388" />
            <rect width="64" x="384" y="-172" height="24" />
            <rect width="64" x="384" y="-44" height="24" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2015-9-7T19:56:48</timestamp>
            <rect width="336" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
        </blockdef>
        <blockdef name="RF">
            <timestamp>2015-9-7T21:10:4</timestamp>
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="416" y1="-224" y2="-224" x1="480" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="352" x="64" y="-320" height="264" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
        </blockdef>
        <blockdef name="MMU">
            <timestamp>2015-9-8T0:58:41</timestamp>
            <rect width="512" x="64" y="-448" height="512" />
            <rect width="64" x="576" y="-364" height="24" />
            <line x2="640" y1="-352" y2="-352" x1="576" />
            <rect width="64" x="576" y="-428" height="24" />
            <line x2="640" y1="-416" y2="-416" x1="576" />
            <line x2="576" y1="-288" y2="-288" x1="640" />
            <rect width="64" x="576" y="-300" height="24" />
            <line x2="640" y1="-224" y2="-224" x1="576" />
            <rect width="64" x="576" y="-108" height="24" />
            <line x2="640" y1="-96" y2="-96" x1="576" />
            <rect width="64" x="576" y="-172" height="24" />
            <line x2="640" y1="-160" y2="-160" x1="576" />
            <rect width="64" x="576" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="640" />
            <line x2="640" y1="32" y2="32" x1="576" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="64" y1="-288" y2="-288" x1="0" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
        </blockdef>
        <blockdef name="LBTHB">
            <timestamp>2015-9-7T20:28:58</timestamp>
            <rect width="368" x="64" y="-64" height="64" />
            <line x2="368" y1="0" y2="64" x1="368" />
            <rect width="24" x="356" y="0" height="64" />
            <rect width="24" x="116" y="-128" height="64" />
            <line x2="128" y1="-64" y2="-128" x1="128" />
        </blockdef>
        <blockdef name="DEC">
            <timestamp>2015-9-8T0:16:56</timestamp>
            <rect width="64" x="432" y="-812" height="24" />
            <line x2="496" y1="-800" y2="-800" x1="432" />
            <line x2="496" y1="-608" y2="-608" x1="432" />
            <line x2="496" y1="-544" y2="-544" x1="432" />
            <line x2="496" y1="-480" y2="-480" x1="432" />
            <rect width="64" x="432" y="-748" height="24" />
            <line x2="496" y1="-736" y2="-736" x1="432" />
            <rect width="64" x="432" y="-684" height="24" />
            <line x2="496" y1="-672" y2="-672" x1="432" />
            <rect width="64" x="-48" y="-684" height="24" />
            <line x2="16" y1="-672" y2="-672" x1="-48" />
            <rect width="64" x="432" y="-428" height="24" />
            <line x2="496" y1="-416" y2="-416" x1="432" />
            <line x2="16" y1="-544" y2="-544" x1="-48" />
            <line x2="16" y1="-480" y2="-480" x1="-48" />
            <line x2="16" y1="-416" y2="-416" x1="-48" />
            <rect width="416" x="16" y="-832" height="576" />
            <line x2="16" y1="-608" y2="-608" x1="-48" />
            <rect width="64" x="-48" y="-364" height="24" />
            <line x2="-48" y1="-352" y2="-352" x1="16" />
            <rect width="64" x="-48" y="-300" height="24" />
            <line x2="16" y1="-288" y2="-288" x1="-48" />
            <rect width="64" x="-48" y="-748" height="24" />
            <line x2="-48" y1="-736" y2="-736" x1="16" />
            <rect width="64" x="-48" y="-812" height="24" />
            <line x2="-48" y1="-800" y2="-800" x1="16" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="M2_8">
            <timestamp>2015-9-7T22:7:5</timestamp>
            <line x2="304" y1="-192" y2="-240" x1="304" />
            <rect width="24" x="292" y="-240" height="48" />
            <rect width="192" x="160" y="-192" height="156" />
            <line x2="208" y1="-192" y2="-240" x1="208" />
            <rect width="24" x="196" y="-240" height="48" />
            <rect width="24" x="292" y="-36" height="48" />
            <line x2="304" y1="-36" y2="12" x1="304" />
            <line x2="208" y1="16" y2="-36" x1="208" />
        </blockdef>
        <blockdef name="M2_16">
            <timestamp>2015-9-8T0:7:42</timestamp>
            <rect width="208" x="112" y="-188" height="152" />
            <line x2="272" y1="-244" y2="-188" x1="272" />
            <rect width="32" x="256" y="-240" height="52" />
            <line x2="160" y1="-244" y2="-188" x1="160" />
            <rect width="32" x="144" y="-240" height="52" />
            <line x2="272" y1="16" y2="-36" x1="272" />
            <rect width="32" x="256" y="-36" height="52" />
            <line x2="160" y1="-36" y2="20" x1="160" />
        </blockdef>
        <blockdef name="PORTS">
            <timestamp>2015-9-8T1:2:29</timestamp>
            <rect width="288" x="64" y="-320" height="248" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="352" y="-236" height="24" />
            <line x2="352" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <line x2="352" y1="-288" y2="-288" x1="416" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="PORTS" name="I_PORTS">
            <blockpin signalname="XLXN_379(6:0)" name="ADDR_PORT(6:0)" />
            <blockpin signalname="XLXN_380(3:0)" name="DATA_IN(3:0)" />
            <blockpin signalname="XLXN_381(4:0)" name="DATA_OUT(4:0)" />
            <blockpin signalname="XLXN_391" name="WE" />
            <blockpin signalname="RIGHT,UP,DOWN,LEFT,ENTER" name="PBT(4:0)" />
            <blockpin signalname="LED_3,LED_2,LED_1,LED_0" name="LED(3:0)" />
            <blockpin signalname="XLXN_378" name="CLK" />
        </block>
        <block symbolname="constant" name="XLXI_27">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_247(15:0)" name="O" />
        </block>
        <block symbolname="SREG" name="I_SREG">
            <blockpin signalname="XLXN_378" name="CLK" />
            <blockpin signalname="XLXN_278(4:0)" name="WE(4:0)" />
            <blockpin signalname="XLXN_375(4:0)" name="FLAGS_OUT(4:0)" />
            <blockpin signalname="XLXN_39(4:0)" name="FLAGS_IN(4:0)" />
        </block>
        <block symbolname="PC" name="I_PC">
            <blockpin signalname="XLXN_159" name="WE" />
            <blockpin signalname="XLXN_378" name="CLK" />
            <blockpin signalname="XLXN_185(9:0)" name="ADDR_IN(9:0)" />
            <blockpin signalname="XLXN_283(9:0)" name="ADDR_OUT(9:0)" />
        </block>
        <block symbolname="LBTHB" name="I_LBTHB">
            <blockpin signalname="XLXN_285(15:0)" name="INS_LOHI(15:0)" />
            <blockpin signalname="XLXN_269(15:0)" name="INS_HILO(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_19">
            <attr value="00" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_53(7:0)" name="O" />
        </block>
        <block symbolname="RF" name="I_RF">
            <blockpin signalname="XLXN_161(4:0)" name="ADDR_OP_A(4:0)" />
            <blockpin signalname="XLXN_162(4:0)" name="ADDR_OP_B(4:0)" />
            <blockpin signalname="XLXN_84(7:0)" name="OP_IN(7:0)" />
            <blockpin signalname="XLXN_64(7:0)" name="OP_A(7:0)" />
            <blockpin signalname="XLXN_63(7:0)" name="OP_B(7:0)" />
            <blockpin signalname="XLXN_31(15:0)" name="DATA_PTR(15:0)" />
            <blockpin signalname="XLXN_160" name="WE" />
            <blockpin signalname="XLXN_378" name="CLK" />
        </block>
        <block symbolname="M2_8" name="SEL_IMM">
            <blockpin signalname="XLXN_63(7:0)" name="D0(7:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="D1(7:0)" />
            <blockpin signalname="XLXN_114(7:0)" name="O(7:0)" />
            <blockpin signalname="XLXN_167" name="S" />
        </block>
        <block symbolname="M2_8" name="SEL_MOV">
            <blockpin signalname="XLXN_64(7:0)" name="D0(7:0)" />
            <blockpin signalname="XLXN_53(7:0)" name="D1(7:0)" />
            <blockpin signalname="XLXN_115(7:0)" name="O(7:0)" />
            <blockpin signalname="XLXN_168" name="S" />
        </block>
        <block symbolname="ALU" name="I_ALU">
            <blockpin signalname="XLXN_115(7:0)" name="OP_A(7:0)" />
            <blockpin signalname="XLXN_114(7:0)" name="OP_B(7:0)" />
            <blockpin signalname="XLXN_170(2:0)" name="OP_CODE(2:0)" />
            <blockpin signalname="XLXN_79(7:0)" name="OP_R(7:0)" />
            <blockpin signalname="XLXN_39(4:0)" name="FLAGS(4:0)" />
        </block>
        <block symbolname="M2_8" name="SEL_RF_IN">
            <blockpin signalname="XLXN_79(7:0)" name="D0(7:0)" />
            <blockpin signalname="XLXN_83(7:0)" name="D1(7:0)" />
            <blockpin signalname="XLXN_84(7:0)" name="O(7:0)" />
            <blockpin signalname="XLXN_169" name="S" />
        </block>
        <block symbolname="MMU" name="I_MMU">
            <blockpin signalname="XLXN_256" name="WE" />
            <blockpin signalname="XLXN_31(15:0)" name="DATA_PTR(15:0)" />
            <blockpin signalname="XLXN_79(7:0)" name="DATA_IN(7:0)" />
            <blockpin signalname="XLXN_47(7:0)" name="DATA_IN_SRAM(7:0)" />
            <blockpin signalname="XLXN_381(4:0)" name="DATA_IN_PORT(4:0)" />
            <blockpin signalname="XLXN_49" name="WE_SRAM" />
            <blockpin signalname="XLXN_391" name="WE_PORT" />
            <blockpin signalname="XLXN_45(8:0)" name="ADDR_SRAM(8:0)" />
            <blockpin signalname="XLXN_379(6:0)" name="ADDR_PORT(6:0)" />
            <blockpin signalname="XLXN_83(7:0)" name="DATA_OUT(7:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="DATA_OUT_SRAM(7:0)" />
            <blockpin signalname="XLXN_380(3:0)" name="DATA_OUT_PORT(3:0)" />
        </block>
        <block symbolname="DEC" name="I_DEC">
            <blockpin signalname="XLXN_159" name="WE_PC" />
            <blockpin signalname="XLXN_160" name="WE_RF" />
            <blockpin signalname="XLXN_256" name="WE_MMU" />
            <blockpin signalname="XLXN_167" name="SEL_IMMED" />
            <blockpin signalname="XLXN_168" name="SEL_MOV" />
            <blockpin signalname="XLXN_169" name="SEL_RF_IN" />
            <blockpin signalname="XLXN_185(9:0)" name="ADDR_PC(9:0)" />
            <blockpin signalname="XLXN_161(4:0)" name="ADDR_OP_A(4:0)" />
            <blockpin signalname="XLXN_162(4:0)" name="ADDR_OP_B(4:0)" />
            <blockpin signalname="XLXN_170(2:0)" name="OP_CODE(2:0)" />
            <blockpin signalname="XLXN_96(7:0)" name="OP_IMMED(7:0)" />
            <blockpin signalname="XLXN_253" name="SEL_NOP" />
            <blockpin signalname="XLXN_375(4:0)" name="SREG(4:0)" />
            <blockpin signalname="XLXN_278(4:0)" name="WE_SREG(4:0)" />
            <blockpin signalname="XLXN_285(15:0)" name="INS(15:0)" />
            <blockpin signalname="XLXN_283(9:0)" name="ADDR_INS(9:0)" />
        </block>
        <block symbolname="M2_16" name="SEL_NOP">
            <blockpin signalname="XLXN_430(15:0)" name="D0(15:0)" />
            <blockpin signalname="XLXN_247(15:0)" name="D1(15:0)" />
            <blockpin signalname="XLXN_269(15:0)" name="O(15:0)" />
            <blockpin signalname="XLXN_253" name="S" />
        </block>
        <block symbolname="buf" name="XLXI_59">
            <blockpin signalname="MASTER_CLK" name="I" />
            <blockpin signalname="XLXN_378" name="O" />
        </block>
        <block symbolname="IM" name="I_IM">
            <blockpin signalname="XLXN_430(15:0)" name="q(15:0)" />
            <blockpin signalname="XLXN_283(9:0)" name="a(9:0)" />
            <blockpin signalname="XLXN_378" name="clk" />
        </block>
        <block symbolname="SRAM" name="I_SRAM">
            <blockpin signalname="XLXN_49" name="ce" />
            <blockpin signalname="XLXN_45(8:0)" name="a(8:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="d(7:0)" />
            <blockpin signalname="XLXN_47(7:0)" name="q(7:0)" />
            <blockpin signalname="XLXN_378" name="clk" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2560" y="1312" name="I_PORTS" orien="R0">
        </instance>
        <instance x="752" y="480" name="XLXI_27" orien="R0">
        </instance>
        <instance x="1616" y="1888" name="I_SREG" orien="R0">
        </instance>
        <instance x="112" y="320" name="I_PC" orien="R0">
        </instance>
        <instance x="688" y="1216" name="I_LBTHB" orien="R0">
        </instance>
        <instance x="1328" y="448" name="XLXI_19" orien="R0">
        </instance>
        <instance x="1264" y="448" name="I_RF" orien="R0">
        </instance>
        <instance x="1456" y="800" name="SEL_IMM" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="199" y="-112" type="instance" />
        </instance>
        <instance x="1712" y="800" name="SEL_MOV" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="192" y="-112" type="instance" />
        </instance>
        <instance x="1616" y="1424" name="I_ALU" orien="R0">
        </instance>
        <instance x="2400" y="960" name="SEL_RF_IN" orien="R180">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="176" y="-112" type="instance" />
        </instance>
        <instance x="2352" y="576" name="I_MMU" orien="R0">
        </instance>
        <instance x="688" y="2304" name="I_DEC" orien="R0">
        </instance>
        <instance x="800" y="784" name="SEL_NOP" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="160" y="-108" type="instance" />
        </instance>
        <branch name="XLXN_391">
            <wire x2="2400" y1="704" y2="1216" x1="2400" />
            <wire x2="2560" y1="1216" y2="1216" x1="2400" />
            <wire x2="3008" y1="704" y2="704" x1="2400" />
            <wire x2="3008" y1="608" y2="608" x1="2992" />
            <wire x2="3008" y1="608" y2="704" x1="3008" />
        </branch>
        <branch name="XLXN_381(4:0)">
            <wire x2="2432" y1="736" y2="1152" x1="2432" />
            <wire x2="2560" y1="1152" y2="1152" x1="2432" />
            <wire x2="3024" y1="736" y2="736" x1="2432" />
            <wire x2="3024" y1="544" y2="544" x1="2992" />
            <wire x2="3024" y1="544" y2="736" x1="3024" />
        </branch>
        <branch name="XLXN_380(3:0)">
            <wire x2="2464" y1="768" y2="1088" x1="2464" />
            <wire x2="2560" y1="1088" y2="1088" x1="2464" />
            <wire x2="3056" y1="768" y2="768" x1="2464" />
            <wire x2="3056" y1="480" y2="480" x1="2992" />
            <wire x2="3056" y1="480" y2="768" x1="3056" />
        </branch>
        <branch name="XLXN_379(6:0)">
            <wire x2="3088" y1="800" y2="800" x1="2496" />
            <wire x2="2496" y1="800" y2="1024" x1="2496" />
            <wire x2="2560" y1="1024" y2="1024" x1="2496" />
            <wire x2="3088" y1="416" y2="416" x1="2992" />
            <wire x2="3088" y1="416" y2="800" x1="3088" />
        </branch>
        <branch name="XLXN_375(4:0)">
            <wire x2="640" y1="1952" y2="1952" x1="576" />
            <wire x2="576" y1="1952" y2="2112" x1="576" />
            <wire x2="1472" y1="2112" y2="2112" x1="576" />
            <wire x2="2080" y1="1856" y2="1856" x1="1472" />
            <wire x2="1472" y1="1856" y2="2112" x1="1472" />
            <wire x2="2080" y1="1792" y2="1792" x1="2064" />
            <wire x2="2080" y1="1792" y2="1856" x1="2080" />
        </branch>
        <branch name="XLXN_159">
            <wire x2="112" y1="160" y2="160" x1="64" />
            <wire x2="64" y1="160" y2="384" x1="64" />
            <wire x2="416" y1="384" y2="384" x1="64" />
            <wire x2="416" y1="384" y2="1760" x1="416" />
            <wire x2="640" y1="1760" y2="1760" x1="416" />
        </branch>
        <branch name="XLXN_185(9:0)">
            <wire x2="112" y1="288" y2="288" x1="80" />
            <wire x2="80" y1="288" y2="352" x1="80" />
            <wire x2="448" y1="352" y2="352" x1="80" />
            <wire x2="448" y1="352" y2="1632" x1="448" />
            <wire x2="640" y1="1632" y2="1632" x1="448" />
        </branch>
        <branch name="XLXN_31(15:0)">
            <wire x2="2352" y1="160" y2="160" x1="1744" />
        </branch>
        <branch name="XLXN_45(8:0)">
            <wire x2="3088" y1="160" y2="160" x1="2992" />
        </branch>
        <branch name="XLXN_46(7:0)">
            <wire x2="3088" y1="224" y2="224" x1="2992" />
        </branch>
        <branch name="XLXN_47(7:0)">
            <wire x2="3088" y1="288" y2="288" x1="2992" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="3088" y1="352" y2="352" x1="2992" />
        </branch>
        <branch name="XLXN_63(7:0)">
            <wire x2="1760" y1="352" y2="352" x1="1744" />
            <wire x2="1760" y1="352" y2="560" x1="1760" />
        </branch>
        <branch name="XLXN_79(7:0)">
            <wire x2="2096" y1="1264" y2="1264" x1="2064" />
            <wire x2="2272" y1="1264" y2="1264" x1="2096" />
            <wire x2="2096" y1="1200" y2="1264" x1="2096" />
            <wire x2="2352" y1="224" y2="224" x1="2272" />
            <wire x2="2272" y1="224" y2="1264" x1="2272" />
        </branch>
        <branch name="XLXN_83(7:0)">
            <wire x2="2192" y1="1200" y2="1232" x1="2192" />
            <wire x2="2304" y1="1232" y2="1232" x1="2192" />
            <wire x2="2352" y1="288" y2="288" x1="2304" />
            <wire x2="2304" y1="288" y2="1232" x1="2304" />
        </branch>
        <branch name="XLXN_96(7:0)">
            <wire x2="1280" y1="1632" y2="1632" x1="1184" />
            <wire x2="1280" y1="544" y2="1632" x1="1280" />
            <wire x2="1664" y1="544" y2="544" x1="1280" />
            <wire x2="1664" y1="544" y2="560" x1="1664" />
        </branch>
        <branch name="XLXN_53(7:0)">
            <wire x2="1920" y1="480" y2="480" x1="1472" />
            <wire x2="1920" y1="480" y2="560" x1="1920" />
        </branch>
        <branch name="XLXN_64(7:0)">
            <wire x2="2016" y1="288" y2="288" x1="1744" />
            <wire x2="2016" y1="288" y2="560" x1="2016" />
        </branch>
        <branch name="XLXN_114(7:0)">
            <wire x2="1760" y1="1024" y2="1024" x1="1552" />
            <wire x2="1552" y1="1024" y2="1328" x1="1552" />
            <wire x2="1616" y1="1328" y2="1328" x1="1552" />
            <wire x2="1760" y1="816" y2="1024" x1="1760" />
        </branch>
        <branch name="XLXN_39(4:0)">
            <wire x2="2080" y1="1392" y2="1392" x1="2064" />
            <wire x2="2080" y1="1392" y2="1728" x1="2080" />
            <wire x2="2080" y1="1728" y2="1728" x1="2064" />
        </branch>
        <branch name="XLXN_84(7:0)">
            <wire x2="2096" y1="224" y2="224" x1="1744" />
            <wire x2="2096" y1="224" y2="944" x1="2096" />
        </branch>
        <branch name="XLXN_115(7:0)">
            <wire x2="2016" y1="1056" y2="1056" x1="1584" />
            <wire x2="1584" y1="1056" y2="1264" x1="1584" />
            <wire x2="1616" y1="1264" y2="1264" x1="1584" />
            <wire x2="2016" y1="816" y2="1056" x1="2016" />
        </branch>
        <branch name="XLXN_160">
            <wire x2="1184" y1="864" y2="864" x1="480" />
            <wire x2="480" y1="864" y2="1824" x1="480" />
            <wire x2="640" y1="1824" y2="1824" x1="480" />
            <wire x2="1184" y1="224" y2="864" x1="1184" />
            <wire x2="1264" y1="224" y2="224" x1="1184" />
        </branch>
        <branch name="XLXN_161(4:0)">
            <wire x2="1216" y1="1504" y2="1504" x1="1184" />
            <wire x2="1216" y1="288" y2="1504" x1="1216" />
            <wire x2="1264" y1="288" y2="288" x1="1216" />
        </branch>
        <branch name="XLXN_162(4:0)">
            <wire x2="1248" y1="1568" y2="1568" x1="1184" />
            <wire x2="1264" y1="352" y2="352" x1="1248" />
            <wire x2="1248" y1="352" y2="1568" x1="1248" />
        </branch>
        <branch name="XLXN_170(2:0)">
            <wire x2="1408" y1="1888" y2="1888" x1="1184" />
            <wire x2="1408" y1="1392" y2="1888" x1="1408" />
            <wire x2="1616" y1="1392" y2="1392" x1="1408" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="1312" y1="1696" y2="1696" x1="1184" />
            <wire x2="1312" y1="864" y2="1696" x1="1312" />
            <wire x2="1664" y1="864" y2="864" x1="1312" />
            <wire x2="1664" y1="816" y2="864" x1="1664" />
        </branch>
        <branch name="XLXN_168">
            <wire x2="1344" y1="1760" y2="1760" x1="1184" />
            <wire x2="1344" y1="832" y2="1760" x1="1344" />
            <wire x2="1920" y1="832" y2="832" x1="1344" />
            <wire x2="1920" y1="816" y2="832" x1="1920" />
        </branch>
        <branch name="XLXN_169">
            <wire x2="1376" y1="1824" y2="1824" x1="1184" />
            <wire x2="2192" y1="928" y2="928" x1="1376" />
            <wire x2="2192" y1="928" y2="944" x1="2192" />
            <wire x2="1376" y1="928" y2="1824" x1="1376" />
        </branch>
        <branch name="XLXN_247(15:0)">
            <wire x2="960" y1="512" y2="512" x1="896" />
            <wire x2="960" y1="512" y2="544" x1="960" />
        </branch>
        <branch name="XLXN_253">
            <wire x2="960" y1="928" y2="928" x1="544" />
            <wire x2="544" y1="928" y2="1696" x1="544" />
            <wire x2="640" y1="1696" y2="1696" x1="544" />
            <wire x2="960" y1="800" y2="928" x1="960" />
        </branch>
        <branch name="XLXN_256">
            <wire x2="2336" y1="896" y2="896" x1="512" />
            <wire x2="512" y1="896" y2="1888" x1="512" />
            <wire x2="640" y1="1888" y2="1888" x1="512" />
            <wire x2="2352" y1="352" y2="352" x1="2336" />
            <wire x2="2336" y1="352" y2="896" x1="2336" />
        </branch>
        <branch name="XLXN_269(15:0)">
            <wire x2="816" y1="960" y2="1088" x1="816" />
            <wire x2="1072" y1="960" y2="960" x1="816" />
            <wire x2="1072" y1="800" y2="960" x1="1072" />
        </branch>
        <branch name="XLXN_278(4:0)">
            <wire x2="640" y1="2016" y2="2016" x1="608" />
            <wire x2="608" y1="2016" y2="2080" x1="608" />
            <wire x2="1440" y1="2080" y2="2080" x1="608" />
            <wire x2="1616" y1="1792" y2="1792" x1="1440" />
            <wire x2="1440" y1="1792" y2="2080" x1="1440" />
        </branch>
        <branch name="XLXN_283(9:0)">
            <wire x2="608" y1="160" y2="160" x1="576" />
            <wire x2="608" y1="160" y2="1504" x1="608" />
            <wire x2="640" y1="1504" y2="1504" x1="608" />
            <wire x2="784" y1="160" y2="160" x1="608" />
        </branch>
        <branch name="XLXN_285(15:0)">
            <wire x2="576" y1="1312" y2="1568" x1="576" />
            <wire x2="640" y1="1568" y2="1568" x1="576" />
            <wire x2="1056" y1="1312" y2="1312" x1="576" />
            <wire x2="1056" y1="1280" y2="1312" x1="1056" />
        </branch>
        <branch name="MASTER_CLK">
            <wire x2="2560" y1="1456" y2="1456" x1="2544" />
            <wire x2="2672" y1="1456" y2="1456" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1520" name="LED_3,LED_2,LED_1,LED_0" orien="R180" />
        <iomarker fontsize="28" x="2768" y="1584" name="RIGHT,UP,DOWN,LEFT,ENTER" orien="R180" />
        <branch name="XLXN_430(15:0)">
            <wire x2="1072" y1="160" y2="160" x1="1008" />
            <wire x2="1072" y1="160" y2="544" x1="1072" />
        </branch>
        <instance x="720" y="80" name="I_IM" orien="R0">
        </instance>
        <instance x="3088" y="80" name="I_SRAM" orien="R0">
        </instance>
        <branch name="XLXN_378">
            <wire x2="112" y1="224" y2="224" x1="32" />
            <wire x2="32" y1="224" y2="416" x1="32" />
            <wire x2="640" y1="416" y2="416" x1="32" />
            <wire x2="1152" y1="416" y2="416" x1="640" />
            <wire x2="1152" y1="416" y2="960" x1="1152" />
            <wire x2="1520" y1="960" y2="960" x1="1152" />
            <wire x2="1520" y1="960" y2="1456" x1="1520" />
            <wire x2="1520" y1="1456" y2="1728" x1="1520" />
            <wire x2="1616" y1="1728" y2="1728" x1="1520" />
            <wire x2="2304" y1="1456" y2="1456" x1="1520" />
            <wire x2="2320" y1="1456" y2="1456" x1="2304" />
            <wire x2="640" y1="224" y2="416" x1="640" />
            <wire x2="784" y1="224" y2="224" x1="640" />
            <wire x2="1264" y1="160" y2="160" x1="1152" />
            <wire x2="1152" y1="160" y2="416" x1="1152" />
            <wire x2="2304" y1="1280" y2="1456" x1="2304" />
            <wire x2="3120" y1="1280" y2="1280" x1="2304" />
            <wire x2="3120" y1="1024" y2="1024" x1="2976" />
            <wire x2="3120" y1="1024" y2="1280" x1="3120" />
            <wire x2="3120" y1="528" y2="1024" x1="3120" />
            <wire x2="3376" y1="528" y2="528" x1="3120" />
            <wire x2="3376" y1="160" y2="528" x1="3376" />
        </branch>
        <branch name="RIGHT,UP,DOWN,LEFT,ENTER">
            <wire x2="3088" y1="1584" y2="1584" x1="2768" />
            <wire x2="3088" y1="1088" y2="1088" x1="2976" />
            <wire x2="3088" y1="1088" y2="1584" x1="3088" />
        </branch>
        <branch name="LED_3,LED_2,LED_1,LED_0">
            <wire x2="2784" y1="1520" y2="1520" x1="2768" />
            <wire x2="3056" y1="1520" y2="1520" x1="2784" />
            <wire x2="2992" y1="1152" y2="1152" x1="2976" />
            <wire x2="3056" y1="1152" y2="1152" x1="2992" />
            <wire x2="3056" y1="1152" y2="1520" x1="3056" />
        </branch>
        <instance x="2544" y="1424" name="XLXI_59" orien="R180" />
        <iomarker fontsize="28" x="2672" y="1456" name="MASTER_CLK" orien="R0" />
    </sheet>
</drawing>