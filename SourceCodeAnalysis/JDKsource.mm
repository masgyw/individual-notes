<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1609812118172" ID="ID_88354862" MODIFIED="1609812133476" TEXT="JDKsource">
<node CREATED="1609812135751" ID="ID_1833867184" MODIFIED="1609812139651" POSITION="right" TEXT="HashMap">
<node CREATED="1598843945035" ID="ID_396542785" MODIFIED="1609815972270" TEXT="JDK7">
<node CREATED="1609817339124" ID="ID_817187816" MODIFIED="1609817358754" TEXT="&#x5bb9;&#x91cf;&#x521d;&#x59cb;&#x5316;&#xff1a;&#x7b2c;&#x4e00;&#x6b21;put&#x7684;&#x65f6;&#x5019;"/>
<node CREATED="1598843978636" ID="ID_1193985325" MODIFIED="1609814030367" TEXT="hash&#xff1a;&#x5c06;Object&#x8f6c;&#x6362;&#x4e3a;&#x6574;&#x578b;">
<node CREATED="1598844373012" ID="ID_1729294546" MODIFIED="1609814334034" TEXT="&#x6270;&#x52a8;&#x8ba1;&#x7b97;">
<node CREATED="1609815838271" ID="ID_1198972495" MODIFIED="1609815869386" TEXT="&#x539f;&#x56e0;&#xff1a;&#x51b2;&#x7a81;&#x8f83;&#x5927;">
<node CREATED="1598844499936" ID="ID_1989695469" MODIFIED="1598844534317" TEXT="&#x4f8b;&#x5b50;&#xff1a;Key&#x7684;&#x503c;&#x4e3a;&#x201c;hollischuang&#x201d;&#xff0c;&#x7ecf;&#x8fc7;&#x7b80;&#x5355;&#x7684;&#x83b7;&#x53d6;hashcode&#x540e;&#xff0c;&#x5f97;&#x5230;&#x7684;&#x503c;&#x4e3a;&#x201c;1011000110101110011111010011011&#x201d;&#xff0c;&#x5982;&#x679c;&#x5f53;&#x524d;HashTable&#x7684;&#x5927;&#x5c0f;&#x4e3a;16&#xff0c;&#x5373;&#x5728;&#x4e0d;&#x8fdb;&#x884c;&#x6270;&#x52a8;&#x8ba1;&#x7b97;&#x7684;&#x60c5;&#x51b5;&#x4e0b;&#xff0c;&#x4ed6;&#x6700;&#x7ec8;&#x5f97;&#x5230;&#x7684;index&#x7ed3;&#x679c;&#x503c;&#x4e3a;11&#x3002;&#x7531;&#x4e8e;15&#x7684;&#x4e8c;&#x8fdb;&#x5236;&#x6269;&#x5c55;&#x5230;32&#x4f4d;&#x4e3a;&#x201c;00000000000000000000000000001111&#x201d;&#xff0c;&#x6240;&#x4ee5;&#xff0c;&#x4e00;&#x4e2a;&#x6570;&#x5b57;&#x5728;&#x548c;&#x4ed6;&#x8fdb;&#x884c;&#x6309;&#x4f4d;&#x4e0e;&#x64cd;&#x4f5c;&#x7684;&#x65f6;&#x5019;&#xff0c;&#x524d;28&#x4f4d;&#x65e0;&#x8bba;&#x662f;&#x4ec0;&#x4e48;&#xff0c;&#x8ba1;&#x7b97;&#x7ed3;&#x679c;&#x90fd;&#x4e00;&#x6837;"/>
</node>
<node CREATED="1609814326678" ID="ID_1988088595" MODIFIED="1609814326679" TEXT="&#x9632;&#x6b62;&#x4e0d;&#x540c;hashCode&#x7684;&#x9ad8;&#x4f4d;&#x4e0d;&#x540c;&#x4f46;&#x4f4e;&#x4f4d;&#x76f8;&#x540c;&#x5bfc;&#x81f4;&#x7684;hash&#x51b2;&#x7a81;&#xff0c;&#x628a;&#x9ad8;&#x4f4d;&#x7684;&#x7279;&#x5f81;&#x548c;&#x4f4e;&#x4f4d;&#x7684;&#x7279;&#x5f81;&#x7ec4;&#x5408;&#x8d77;&#x6765;&#xff0c;&#x964d;&#x4f4e;&#x54c8;&#x5e0c;&#x51b2;&#x7a81;&#x7684;&#x6982;&#x7387;"/>
</node>
</node>
<node CREATED="1598844111306" ID="ID_1124787775" MODIFIED="1598844131764" TEXT="indexFor&#xff1a; &#x5c06;hash&#x751f;&#x6210;&#x7684;&#x6574;&#x578b;&#x8f6c;&#x6362;&#x6210;&#x94fe;&#x8868;&#x6570;&#x7ec4;&#x4e2d;&#x7684;&#x4e0b;&#x6807;">
<node CREATED="1609814132430" ID="ID_1919486492" MODIFIED="1609814141891" TEXT="&#x4f4d;&#x8fd0;&#x7b97;(&amp;)&#x6548;&#x7387;&#x8981;&#x6bd4;&#x4ee3;&#x66ff;&#x53d6;&#x6a21;&#x8fd0;&#x7b97;(%)&#x9ad8;&#x5f88;&#x591a;&#xff0c;&#x4e3b;&#x8981;&#x539f;&#x56e0;&#x662f;&#x4f4d;&#x8fd0;&#x7b97;&#x76f4;&#x63a5;&#x5bf9;&#x5185;&#x5b58;&#x6570;&#x636e;&#x8fdb;&#x884c;&#x64cd;&#x4f5c;&#xff0c;&#x4e0d;&#x9700;&#x8981;&#x8f6c;&#x6210;&#x5341;&#x8fdb;&#x5236;&#xff0c;&#x56e0;&#x6b64;&#x5904;&#x7406;&#x901f;&#x5ea6;&#x975e;&#x5e38;&#x5feb;"/>
<node CREATED="1598844617659" ID="ID_1287906139" MODIFIED="1598844633881" TEXT="&#x4f4d;&#x8fd0;&#x7b97;&#x4f18;&#x52bf;">
<node CREATED="1598844643980" ID="ID_1284468950" MODIFIED="1598844720451" TEXT="&#x53ea;&#x8981;length&#x662f;2&#x7684;&#x5e42;&#xff0c;&#x53ef;&#x4ee5;&#x5229;&#x7528;&#x4e0e;&#x4ee3;&#x66ff;&#x53d6;&#x4f59;&#x8fd0;&#x7b97;&#xff0c;&#x63d0;&#x9ad8;&#x6027;&#x80fd;"/>
<node CREATED="1598844634180" ID="ID_1190186316" MODIFIED="1598844694951" TEXT="&#x89e3;&#x51b3;&#x8d1f;&#x6570;&#x7684;&#x95ee;&#x9898;&#x3002;hashcode&#x7684;&#x7ed3;&#x679c;&#x662f;int&#x7c7b;&#x578b;&#xff0c;&#x800c;int&#x7684;&#x53d6;&#x503c;&#x8303;&#x56f4;&#x662f;-2^31 ~ 2^31 - 1&#xff0c;&#x5373;[ -2147483648, 2147483647]&#xff1b;&#x8fd9;&#x91cc;&#x9762;&#x662f;&#x5305;&#x542b;&#x8d1f;&#x6570;&#x7684;&#xff0c;&#x6211;&#x4eec;&#x77e5;&#x9053;&#xff0c;&#x5bf9;&#x4e8e;&#x4e00;&#x4e2a;&#x8d1f;&#x6570;&#x53d6;&#x6a21;&#x8fd8;&#x662f;&#x6709;&#x4e9b;&#x9ebb;&#x70e6;&#x7684;&#x3002;&#x5982;&#x679c;&#x4f7f;&#x7528;&#x4e8c;&#x8fdb;&#x5236;&#x7684;&#x4f4d;&#x8fd0;&#x7b97;&#x7684;&#x8bdd;&#x5c31;&#x53ef;&#x4ee5;&#x5f88;&#x597d;&#x7684;&#x907f;&#x514d;&#x8fd9;&#x4e2a;&#x95ee;&#x9898;&#x3002;&#x9996;&#x5148;&#xff0c;&#x4e0d;&#x7ba1;hashcode&#x7684;&#x503c;&#x662f;&#x6b63;&#x6570;&#x8fd8;&#x662f;&#x8d1f;&#x6570;&#x3002;length-1&#x8fd9;&#x4e2a;&#x503c;&#x4e00;&#x5b9a;&#x662f;&#x4e2a;&#x6b63;&#x6570;&#x3002;&#x90a3;&#x4e48;&#xff0c;&#x4ed6;&#x7684;&#x4e8c;&#x8fdb;&#x5236;&#x7684;&#x7b2c;&#x4e00;&#x4f4d;&#x4e00;&#x5b9a;&#x662f;0&#xff08;&#x6709;&#x7b26;&#x53f7;&#x6570;&#x7528;&#x6700;&#x9ad8;&#x4f4d;&#x4f5c;&#x4e3a;&#x7b26;&#x53f7;&#x4f4d;&#xff0c;&#x201c;0&#x201d;&#x4ee3;&#x8868;&#x201c;+&#x201d;&#xff0c;&#x201c;1&#x201d;&#x4ee3;&#x8868;&#x201c;-&#x201d;&#xff09;&#xff0c;&#x8fd9;&#x6837;&#x91cc;&#x4e24;&#x4e2a;&#x6570;&#x505a;&#x6309;&#x4f4d;&#x4e0e;&#x8fd0;&#x7b97;&#x4e4b;&#x540e;&#xff0c;&#x7b2c;&#x4e00;&#x4f4d;&#x4e00;&#x5b9a;&#x662f;&#x4e2a;0&#xff0c;&#x4e5f;&#x5c31;&#x662f;&#xff0c;&#x5f97;&#x5230;&#x7684;&#x7ed3;&#x679c;&#x4e00;&#x5b9a;&#x662f;&#x4e2a;&#x6b63;&#x6570;&#x3002;"/>
</node>
</node>
<node CREATED="1609816021218" ID="ID_961120131" MODIFIED="1609816031766" TEXT="&#x94fe;&#x5730;&#x5740;&#x6cd5;&#x7f3a;&#x70b9;">
<node CREATED="1609816097949" ID="ID_1905471093" MODIFIED="1609816116088" TEXT="&#x65f6;&#x95f4;&#x590d;&#x6742;&#x5ea6;&#xff1a;O(1)-&gt;O(n)"/>
<node CREATED="1609816032217" ID="ID_1764921519" MODIFIED="1609816096354" TEXT="Dos&#xff0c;&#x9891;&#x7e41;&#x6dfb;&#x52a0;&#x76f8;&#x540c;hashCode&#x7684;&#x503c;&#xff0c;&#x67e5;&#x8be2;&#x65f6;&#x95f4;&#x7ebf;&#x6027;&#x589e;&#x957f;"/>
</node>
</node>
<node CREATED="1609815973245" ID="ID_1388183501" MODIFIED="1609815976185" TEXT="JDK8">
<node CREATED="1609817363125" ID="ID_1007123538" MODIFIED="1609817376434" TEXT="&#x5bb9;&#x91cf;&#x521d;&#x59cb;&#x5316;&#xff1a;&#x6784;&#x9020;&#x65f6;&#x521b;&#x5efa;"/>
<node CREATED="1609816251459" ID="ID_842752972" MODIFIED="1609816480034" TEXT="hash&#xff1a;&#x53ea;&#x8fdb;&#x884c;&#x9ad8;16&#x4f4d;&#x7684;&#x53f3;&#x79fb;&#x5f02;&#x6216;&#x8fd0;&#x7b97;"/>
<node CREATED="1609816213005" ID="ID_1338599738" MODIFIED="1609816301755" TEXT="&#x4f7f;&#x7528;&#x65f6;&#x95f4;&#x590d;&#x6742;&#x5ea6;&#x4e3a;log(n) &#x7684; &#x5e73;&#x8861;&#x4e8c;&#x53c9;&#x6811;"/>
</node>
</node>
<node CREATED="1609815435828" ID="ID_1258802849" MODIFIED="1609815440825" POSITION="right" TEXT="HashTable">
<node CREATED="1609815605001" ID="ID_1743143437" MODIFIED="1609815903950" TEXT="JDK7">
<node CREATED="1609815689947" ID="ID_1424822164" MODIFIED="1609815715133" TEXT="hash&#xff1a;&#x76f4;&#x63a5;&#x53d6;&#x6a21;"/>
<node CREATED="1609815729748" ID="ID_275862871" MODIFIED="1609815733256" TEXT="&#x539f;&#x56e0;">
<node CREATED="1609815734107" ID="ID_1791199420" MODIFIED="1609815780806" TEXT="&#x521d;&#x59cb;11&#xff0c;&#x6269;&#x5bb9;&#x4e3a;2n+1&#xff0c;&#x5947;&#x6570;&#x7684;&#x6269;&#x5bb9;&#xff0c;&#x5728;&#x53d6;&#x6a21;&#x7684;&#x65f6;&#x5019;&#x66f4;&#x52a0;&#x5747;&#x5300;"/>
</node>
</node>
</node>
<node CREATED="1609815883522" ID="ID_1483776372" MODIFIED="1609815889663" POSITION="right" TEXT="ConcurrentHashMap">
<node CREATED="1609815894378" ID="ID_1362133969" MODIFIED="1609815898246" TEXT="JDK7">
<node CREATED="1609816446622" ID="ID_1162415489" MODIFIED="1609816466770" TEXT="hash&#xff1a;&#x6270;&#x52a8;&#x8ba1;&#x7b97;+&#x4f4d;&#x8fd0;&#x7b97;&#x4ee3;&#x66ff;&#x53d6;&#x6a21;"/>
</node>
<node CREATED="1609816362731" ID="ID_1708259088" MODIFIED="1609816365608" TEXT="JDK8">
<node CREATED="1609816378283" ID="ID_583898583" MODIFIED="1609816420517" TEXT="hash&#xff1a;&#x5c06;Key&#x7684;hashCode&#x503c;&#x4e0e;&#x5176;&#x9ad8;16&#x4f4d;&#x4f5c;&#x5f02;&#x6216;&#x5e76;&#x4fdd;&#x8bc1;&#x6700;&#x9ad8;&#x4f4d;&#x4e3a;0&#xff08;&#x4ece;&#x800c;&#x4fdd;&#x8bc1;&#x6700;&#x7ec8;&#x7ed3;&#x679c;&#x4e3a;&#x6b63;&#x6574;&#x6570;&#xff09;"/>
</node>
</node>
</node>
</map>
