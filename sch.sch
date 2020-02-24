<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="W_PC" />
        <signal name="XLXN_6(4:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9(4:0)" />
        <signal name="XLXN_11(4:0)" />
        <blockdef name="ProgramMemory">
            <timestamp>2020-2-1T22:42:46</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="PC">
            <timestamp>2020-2-1T22:46:3</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
        </blockdef>
        <blockdef name="RegisterMemory">
            <timestamp>2020-2-10T21:47:48</timestamp>
            <rect width="432" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-428" height="24" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <block symbolname="ProgramMemory" name="XLXI_1">
            <blockpin name="CLK" />
            <blockpin name="RESET" />
            <blockpin signalname="W_PC" name="ADDR(31:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="DATA(31:0)" />
        </block>
        <block symbolname="PC" name="XLXI_2">
            <blockpin name="CLK" />
            <blockpin name="RESET" />
            <blockpin name="PC_IN(31:0)" />
            <blockpin signalname="W_PC" name="PC_OUT(31:0)" />
        </block>
        <block symbolname="RegisterMemory" name="XLXI_5">
            <blockpin name="CLK" />
            <blockpin name="RESET" />
            <blockpin name="I_REGMEM_REGWR" />
            <blockpin signalname="XLXN_6(4:0)" name="I_REGMEM_RS(4:0)" />
            <blockpin signalname="XLXN_6(4:0)" name="I_REGMEM_RT(4:0)" />
            <blockpin name="I_REGMEM_RD(4:0)" />
            <blockpin name="I_REGMEM_WRITE_DATA(31:0)" />
            <blockpin name="A(31:0)" />
            <blockpin name="B(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="736" y="1232" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1616" y="1408" name="XLXI_1" orien="R0">
        </instance>
        <branch name="W_PC">
            <wire x2="1392" y1="1072" y2="1072" x1="1168" />
            <wire x2="1392" y1="1072" y2="1232" x1="1392" />
            <wire x2="1392" y1="1232" y2="1376" x1="1392" />
            <wire x2="1616" y1="1376" y2="1376" x1="1392" />
        </branch>
        <instance x="1456" y="928" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_6(4:0)">
            <wire x2="1456" y1="704" y2="704" x1="1376" />
            <wire x2="1376" y1="704" y2="992" x1="1376" />
            <wire x2="2032" y1="992" y2="992" x1="1376" />
            <wire x2="2032" y1="992" y2="1248" x1="2032" />
            <wire x2="2032" y1="1248" y2="1472" x1="2032" />
            <wire x2="1456" y1="768" y2="768" x1="1440" />
            <wire x2="1440" y1="768" y2="1472" x1="1440" />
            <wire x2="2032" y1="1472" y2="1472" x1="1440" />
            <wire x2="2032" y1="1248" y2="1248" x1="2000" />
        </branch>
    </sheet>
</drawing>