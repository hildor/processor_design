<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="virtex4" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OP_A(7:0)" />
        <signal name="OP_B(7:0)" />
        <signal name="ADD" />
        <signal name="SUM(7:0)" />
        <signal name="FLAGS(2)" />
        <signal name="FLAGS(0)" />
        <signal name="FLAGS(4:0)" />
        <signal name="FLAGS(1)" />
        <signal name="FLAGS(3)" />
        <signal name="FLAGS(4)" />
        <signal name="SUM(7)" />
        <signal name="XLXN_44(7:0)" />
        <signal name="XLXN_50" />
        <signal name="CIN" />
        <port polarity="Input" name="OP_A(7:0)" />
        <port polarity="Input" name="OP_B(7:0)" />
        <port polarity="Input" name="ADD" />
        <port polarity="Output" name="SUM(7:0)" />
        <port polarity="Output" name="FLAGS(4:0)" />
        <port polarity="Input" name="CIN" />
        <blockdef name="adsu8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="comp8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <block symbolname="adsu8" name="XLXI_1">
            <blockpin signalname="OP_A(7:0)" name="A(7:0)" />
            <blockpin signalname="ADD" name="ADD" />
            <blockpin signalname="OP_B(7:0)" name="B(7:0)" />
            <blockpin signalname="CIN" name="CI" />
            <blockpin signalname="FLAGS(1)" name="CO" />
            <blockpin signalname="FLAGS(3)" name="OFL" />
            <blockpin signalname="SUM(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_3">
            <blockpin signalname="SUM(7)" name="I" />
            <blockpin signalname="FLAGS(2)" name="O" />
        </block>
        <block symbolname="comp8" name="XLXI_4">
            <blockpin signalname="SUM(7:0)" name="A(7:0)" />
            <blockpin signalname="XLXN_44(7:0)" name="B(7:0)" />
            <blockpin signalname="FLAGS(0)" name="EQ" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="00000000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_44(7:0)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_6">
            <blockpin signalname="FLAGS(3)" name="I0" />
            <blockpin signalname="SUM(7)" name="I1" />
            <blockpin signalname="FLAGS(4)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1152" y="1568" name="XLXI_1" orien="R0" />
        <branch name="OP_A(7:0)">
            <wire x2="1152" y1="1248" y2="1248" x1="1120" />
        </branch>
        <branch name="OP_B(7:0)">
            <wire x2="1152" y1="1376" y2="1376" x1="1120" />
        </branch>
        <branch name="ADD">
            <wire x2="1152" y1="1504" y2="1504" x1="1120" />
        </branch>
        <bustap x2="1840" y1="1088" y2="1184" x1="1840" />
        <branch name="FLAGS(2)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="2000" type="branch" />
            <wire x2="1840" y1="1824" y2="2000" x1="1840" />
            <wire x2="1840" y1="2000" y2="2064" x1="1840" />
        </branch>
        <branch name="FLAGS(0)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="2000" type="branch" />
            <wire x2="2400" y1="1680" y2="1680" x1="2000" />
            <wire x2="2000" y1="1680" y2="2000" x1="2000" />
            <wire x2="2000" y1="2000" y2="2064" x1="2000" />
            <wire x2="2400" y1="1344" y2="1344" x1="2368" />
            <wire x2="2400" y1="1344" y2="1680" x1="2400" />
        </branch>
        <bustap x2="1840" y1="2160" y2="2064" x1="1840" />
        <bustap x2="1760" y1="2160" y2="2064" x1="1760" />
        <bustap x2="1680" y1="2160" y2="2064" x1="1680" />
        <bustap x2="1920" y1="2160" y2="2064" x1="1920" />
        <bustap x2="2000" y1="2160" y2="2064" x1="2000" />
        <branch name="FLAGS(1)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1920" y="2000" type="branch" />
            <wire x2="1920" y1="1504" y2="1504" x1="1600" />
            <wire x2="1920" y1="1504" y2="2000" x1="1920" />
            <wire x2="1920" y1="2000" y2="2064" x1="1920" />
        </branch>
        <branch name="SUM(7:0)">
            <wire x2="1616" y1="1312" y2="1312" x1="1600" />
            <wire x2="1616" y1="1088" y2="1312" x1="1616" />
            <wire x2="1840" y1="1088" y2="1088" x1="1616" />
            <wire x2="1968" y1="1088" y2="1088" x1="1840" />
            <wire x2="1968" y1="1088" y2="1248" x1="1968" />
            <wire x2="1984" y1="1248" y2="1248" x1="1968" />
            <wire x2="2528" y1="1088" y2="1088" x1="1968" />
        </branch>
        <instance x="1984" y="1568" name="XLXI_4" orien="R0" />
        <branch name="FLAGS(3)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="2000" type="branch" />
            <wire x2="1648" y1="1440" y2="1440" x1="1600" />
            <wire x2="1760" y1="1440" y2="1440" x1="1648" />
            <wire x2="1760" y1="1440" y2="2000" x1="1760" />
            <wire x2="1760" y1="2000" y2="2064" x1="1760" />
            <wire x2="1648" y1="1440" y2="1600" x1="1648" />
        </branch>
        <instance x="1584" y="1600" name="XLXI_6" orien="R90" />
        <branch name="FLAGS(4)">
            <attrtext style="alignment:SOFT-TVCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="2000" type="branch" />
            <wire x2="1680" y1="1856" y2="2000" x1="1680" />
            <wire x2="1680" y1="2000" y2="2064" x1="1680" />
        </branch>
        <branch name="SUM(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1840" y="1290" type="branch" />
            <wire x2="1712" y1="1568" y2="1600" x1="1712" />
            <wire x2="1840" y1="1568" y2="1568" x1="1712" />
            <wire x2="1840" y1="1568" y2="1600" x1="1840" />
            <wire x2="1840" y1="1184" y2="1568" x1="1840" />
        </branch>
        <instance x="2160" y="1616" name="XLXI_5" orien="R180">
        </instance>
        <iomarker fontsize="28" x="2496" y="1152" name="FLAGS(4:0)" orien="R0" />
        <branch name="FLAGS(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2144" y="2160" type="branch" />
            <wire x2="1680" y1="2160" y2="2160" x1="1648" />
            <wire x2="1760" y1="2160" y2="2160" x1="1680" />
            <wire x2="1840" y1="2160" y2="2160" x1="1760" />
            <wire x2="1920" y1="2160" y2="2160" x1="1840" />
            <wire x2="2000" y1="2160" y2="2160" x1="1920" />
            <wire x2="2144" y1="2160" y2="2160" x1="2000" />
            <wire x2="2448" y1="2160" y2="2160" x1="2144" />
            <wire x2="2496" y1="1152" y2="1152" x1="2448" />
            <wire x2="2448" y1="1152" y2="2160" x1="2448" />
        </branch>
        <branch name="XLXN_44(7:0)">
            <wire x2="1984" y1="1440" y2="1440" x1="1968" />
            <wire x2="1968" y1="1440" y2="1584" x1="1968" />
            <wire x2="2016" y1="1584" y2="1584" x1="1968" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1376" name="OP_B(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1248" name="OP_A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2528" y="1088" name="SUM(7:0)" orien="R0" />
        <instance x="1808" y="1600" name="XLXI_3" orien="R90" />
        <branch name="CIN">
            <wire x2="1152" y1="1120" y2="1120" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1120" y="1120" name="CIN" orien="R180" />
        <iomarker fontsize="28" x="1120" y="1504" name="ADD" orien="R180" />
    </sheet>
</drawing>