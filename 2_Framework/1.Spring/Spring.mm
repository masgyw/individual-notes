<map version="1.1.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1596421343692" ID="ID_631411283" MODIFIED="1609771501003" TEXT="Spring">
<node CREATED="1611582475237" ID="ID_927025121" MODIFIED="1611582477495" POSITION="right" TEXT="&#x76ee;&#x7684;">
<node CREATED="1611582477717" ID="ID_1634030768" MODIFIED="1611582489418" TEXT="&#x5f00;&#x53d1;&#x89e3;&#x8026;&#xff0c;&#x8fd0;&#x884c;&#x7ec4;&#x5408;"/>
</node>
<node CREATED="1596421352914" ID="ID_1144150286" MODIFIED="1597108401798" POSITION="right" TEXT="Bean&#x542f;&#x52a8;&#x6d41;&#x7a0b;">
<node CREATED="1596421374697" ID="ID_1185429124" MODIFIED="1596421420529" TEXT="AbstractApplicationContext.refresh()">
<node CREATED="1596421433348" ID="ID_1941351433" MODIFIED="1596422725536" TEXT="prepareRefresh() &#x5237;&#x65b0;&#x524d;&#x51c6;&#x5907;">
<node CREATED="1596421489638" ID="ID_1563547637" MODIFIED="1596421612615" TEXT="initPropertySources() &#xff1a;&#x521d;&#x59cb;&#x5316;&#x5c5e;&#x6027;&#x8d44;&#x6e90;"/>
<node CREATED="1596421589585" ID="ID_1361681211" MODIFIED="1596421605191" TEXT="validateRequiredProperties()&#xff1a;&#x9a8c;&#x8bc1;&#x5fc5;&#x987b;&#x5c5e;&#x6027;"/>
</node>
<node CREATED="1596422726683" ID="ID_12619386" MODIFIED="1596422905205" TEXT="obtainFreshBeanFactory()&#xff1a;&#x83b7;&#x53d6;&#x5237;&#x65b0;&#x540e;BeanFactory">
<node CREATED="1596422853656" ID="ID_325840233" MODIFIED="1596422884190" TEXT="refreshBeanFactory()&#xff1a;&#x8bbe;&#x7f6e;BeanFactory&#x5168;&#x5c40;&#x552f;&#x4e00;ID"/>
</node>
<node CREATED="1596422906978" ID="ID_943987570" MODIFIED="1596422928247" TEXT="prepareBeanFactory()&#xff1a;&#x51c6;&#x5907;BeanFactory">
<node CREATED="1596422956907" ID="ID_1543982423" MODIFIED="1596422973161" TEXT="setBeanClassLoader"/>
<node CREATED="1596422974204" ID="ID_1792668944" MODIFIED="1596422985242" TEXT="setBeanExpressionResolver"/>
<node CREATED="1596422985812" ID="ID_73820444" MODIFIED="1596422997994" TEXT="addPropertyEditorRegistrar"/>
<node CREATED="1596423066087" ID="ID_1637448798" MODIFIED="1596423067719" TEXT="addBeanPostProcessor"/>
<node CREATED="1596423072424" ID="ID_105844094" MODIFIED="1596423073931" TEXT="ignoreDependencyInterface"/>
<node CREATED="1596423555514" ID="ID_1424649238" MODIFIED="1596423557241" TEXT="registerResolvableDependency"/>
<node CREATED="1596423585059" ID="ID_304307335" MODIFIED="1596423586354" TEXT="addBeanPostProcessor"/>
<node CREATED="1596423638452" ID="ID_1922397549" MODIFIED="1596423640900" TEXT="registerSingleton">
<node CREATED="1596423640901" ID="ID_1977625147" MODIFIED="1596423660154" TEXT="environment"/>
<node CREATED="1596423650268" ID="ID_1660997186" MODIFIED="1596423668426" TEXT="systemProperties"/>
<node CREATED="1596423668845" ID="ID_1622277710" MODIFIED="1596423676808" TEXT="systemEnvironment"/>
</node>
</node>
<node CREATED="1596423776401" ID="ID_1179364179" MODIFIED="1596423836056" TEXT="postProcessBeanFactory()&#xff1a;&#x4f9b;&#x5b50;&#x7c7b;&#x8c03;&#x7528;&#x524d;&#x7f6e;&#x65b9;&#x6cd5;"/>
<node CREATED="1596423882101" ID="ID_983763485" MODIFIED="1596423906795" TEXT="invokeBeanFactoryPostProcessors()&#xff1a;BeanFactory &#x7684;&#x524d;&#x7f6e;&#x65b9;&#x6cd5;"/>
<node CREATED="1596423995019" ID="ID_779975950" MODIFIED="1596424712394" TEXT="registerBeanPostProcessors()"/>
<node CREATED="1596424012522" ID="ID_1813774978" MODIFIED="1596424724644" TEXT="initMessageSource() &#x56fd;&#x9645;&#x5316;I18n&#x652f;&#x6301;"/>
<node CREATED="1596424015874" ID="ID_1805733162" MODIFIED="1596424766157" TEXT="initApplicationEventMulticaster() &#x521d;&#x59cb;&#x5316;&#x5e94;&#x7528;&#x4e8b;&#x4ef6;&#x591a;&#x64ad;&#x5668;"/>
<node CREATED="1596424035417" ID="ID_351554853" MODIFIED="1596424855836" TEXT="onRefresh() &#x5237;&#x65b0;">
<node CREATED="1596424855838" ID="ID_1540455046" MODIFIED="1596424895834" TEXT="Web &#x9879;&#x76ee;&#xff0c;createWebServer() &#x521d;&#x59cb;&#x5316;webServer &#x5bb9;&#x5668;&#xff0c;&#x4f8b;&#x5982;tomcat"/>
</node>
<node CREATED="1596424041769" ID="ID_1289292175" MODIFIED="1596424944993" TEXT="registerListeners() &#x6ce8;&#x518c;&#x76d1;&#x542c;&#x5668;"/>
<node CREATED="1596424050960" ID="ID_138247551" MODIFIED="1596425204085" TEXT="finishBeanFactoryInitialization() &#x6700;&#x7ec8;&#x521b;&#x5efa;BeanFactory&#x4e2d;&#x7684;bean&#x5bf9;&#x8c61;&#xff08;&#x5355;&#x4f8b;&#x975e;&#x61d2;&#x52a0;&#x8f7d;&#xff09;">
<node CREATED="1596425232977" ID="ID_137251659" MODIFIED="1596425246274" TEXT="setTempClassLoader"/>
<node CREATED="1596425268090" ID="ID_88215852" MODIFIED="1596425275888" TEXT="freezeConfiguration&#xff1a;&#x51bb;&#x7ed3;&#x914d;&#x7f6e;"/>
<node CREATED="1596425294635" ID="ID_1508774256" MODIFIED="1596425310600" TEXT="preInstantiateSingletons&#xff1a;&#x521d;&#x59cb;&#x5316;&#x975e;&#x61d2;&#x52a0;&#x8f7d;&#x7684;bean&#x5bf9;&#x8c61;">
<node CREATED="1596425344205" ID="ID_1204017343" MODIFIED="1596425346306" TEXT="DefaultListableBeanFactory.preInstantiateSingletons()"/>
</node>
</node>
<node CREATED="1596424063199" ID="ID_772331525" MODIFIED="1596424064652" TEXT="finishRefresh()"/>
</node>
<node CREATED="1598339144288" ID="ID_1441473801" MODIFIED="1598339157925" TEXT="&#x6587;&#x5b57;&#x63cf;&#x8ff0;">
<node CREATED="1598339158385" ID="ID_1789175312" MODIFIED="1598339212051" TEXT="1&#xff1a;&#x5b9e;&#x4f8b;&#x5316;&#x4e00;&#x4e2a;ApplicationContext&#x7684;&#x5bf9;&#x8c61;&#xff1b;"/>
<node CREATED="1598339212052" ID="ID_912876814" MODIFIED="1598339218275" TEXT=" 2&#xff1a;&#x8c03;&#x7528;bean&#x5de5;&#x5382;&#x540e;&#x7f6e;&#x5904;&#x7406;&#x5668;&#x5b8c;&#x6210;&#x626b;&#x63cf;&#xff1b;"/>
<node CREATED="1598339218276" ID="ID_47946351" MODIFIED="1598339227891" TEXT=" 3&#xff1a;&#x5faa;&#x73af;&#x89e3;&#x6790;&#x626b;&#x63cf;&#x51fa;&#x6765;&#x7684;&#x7c7b;&#x4fe1;&#x606f;&#xff1b; "/>
<node CREATED="1598339227892" ID="ID_152010367" MODIFIED="1598339239512" TEXT="4&#xff1a;&#x5b9e;&#x4f8b;&#x5316;&#x4e00;&#x4e2a;BeanDefinition&#x5bf9;&#x8c61;&#x6765;&#x5b58;&#x50a8;&#x89e3;&#x6790;&#x51fa;&#x6765;&#x7684;&#x4fe1;&#x606f;&#xff1b;"/>
<node CREATED="1598339239513" ID="ID_1511542002" MODIFIED="1598339245800" TEXT=" 5&#xff1a;&#x628a;&#x5b9e;&#x4f8b;&#x5316;&#x597d;&#x7684;beanDefinition&#x5bf9;&#x8c61;put&#x5230;beanDefinitionMap&#x5f53;&#x4e2d;&#x7f13;&#x5b58;&#x8d77;&#x6765;&#xff0c;&#x4ee5;&#x4fbf;&#x540e;&#x9762;&#x5b9e;&#x4f8b;&#x5316;bean&#xff1b; "/>
<node CREATED="1598339245801" ID="ID_688261204" MODIFIED="1598339250537" TEXT="6&#xff1a;&#x518d;&#x6b21;&#x8c03;&#x7528;bean&#x5de5;&#x5382;&#x540e;&#x7f6e;&#x5904;&#x7406;&#x5668;&#xff1b;"/>
<node CREATED="1598339250537" ID="ID_1179332169" MODIFIED="1598339256120" TEXT=" 7&#xff1a;&#x5f53;&#x7136;spring&#x8fd8;&#x4f1a;&#x5e72;&#x5f88;&#x591a;&#x4e8b;&#x60c5;&#xff0c;&#x6bd4;&#x5982;&#x56fd;&#x9645;&#x5316;&#xff0c;&#x6bd4;&#x5982;&#x6ce8;&#x518c;BeanPostProcessor&#x7b49;&#x7b49;&#xff0c;&#x5982;&#x679c;&#x6211;&#x4eec;&#x53ea;&#x5173;&#x5fc3;&#x5982;&#x4f55;&#x5b9e;&#x4f8b;&#x5316;&#x4e00;&#x4e2a;bean&#x7684;&#x8bdd;&#x90a3;&#x4e48;&#x8fd9;&#x4e00;&#x6b65;&#x5c31;&#x662f;spring&#x8c03;&#x7528;finishBeanFactoryInitialization&#x65b9;&#x6cd5;&#x6765;&#x5b9e;&#x4f8b;&#x5316;&#x5355;&#x4f8b;&#x7684;bean&#xff0c;&#x5b9e;&#x4f8b;&#x5316;&#x4e4b;&#x524d;spring&#x8981;&#x505a;&#x9a8c;&#x8bc1;&#xff0c;&#x9700;&#x8981;&#x904d;&#x5386;&#x6240;&#x6709;&#x626b;&#x63cf;&#x51fa;&#x6765;&#x7684;&#x7c7b;&#xff0c;&#x4f9d;&#x6b21;&#x5224;&#x65ad;&#x8fd9;&#x4e2a;bean&#x662f;&#x5426;Lazy&#xff0c;&#x662f;&#x5426;prototype&#xff0c;&#x662f;&#x5426;abstract&#x7b49;&#x7b49;&#xff1b;"/>
<node CREATED="1598339256124" ID="ID_1982144762" MODIFIED="1598339261297" TEXT=" 8&#xff1a;&#x5982;&#x679c;&#x9a8c;&#x8bc1;&#x5b8c;&#x6210;spring&#x5728;&#x5b9e;&#x4f8b;&#x5316;&#x4e00;&#x4e2a;bean&#x4e4b;&#x524d;&#x9700;&#x8981;&#x63a8;&#x65ad;&#x6784;&#x9020;&#x65b9;&#x6cd5;&#xff0c;&#x56e0;&#x4e3a;spring&#x5b9e;&#x4f8b;&#x5316;&#x5bf9;&#x8c61;&#x662f;&#x901a;&#x8fc7;&#x6784;&#x9020;&#x65b9;&#x6cd5;&#x53cd;&#x5c04;&#xff0c;&#x6545;&#x800c;&#x9700;&#x8981;&#x77e5;&#x9053;&#x7528;&#x54ea;&#x4e2a;&#x6784;&#x9020;&#x65b9;&#x6cd5;&#xff1b; "/>
<node CREATED="1598339261300" ID="ID_119660786" MODIFIED="1598339266010" TEXT="9&#xff1a;&#x63a8;&#x65ad;&#x5b8c;&#x6784;&#x9020;&#x65b9;&#x6cd5;&#x4e4b;&#x540e;spring&#x8c03;&#x7528;&#x6784;&#x9020;&#x65b9;&#x6cd5;&#x53cd;&#x5c04;&#x5b9e;&#x4f8b;&#x5316;&#x4e00;&#x4e2a;&#x5bf9;&#x8c61;&#xff1b;&#x6ce8;&#x610f;&#x6211;&#x8fd9;&#x91cc;&#x8bf4;&#x7684;&#x662f;&#x5bf9;&#x8c61;&#x3001;&#x5bf9;&#x8c61;&#x3001;&#x5bf9;&#x8c61;&#xff1b;&#x8fd9;&#x4e2a;&#x65f6;&#x5019;&#x5bf9;&#x8c61;&#x5df2;&#x7ecf;&#x5b9e;&#x4f8b;&#x5316;&#x51fa;&#x6765;&#x4e86;&#xff0c;&#x4f46;&#x662f;&#x5e76;&#x4e0d;&#x662f;&#x4e00;&#x4e2a;&#x5b8c;&#x6574;&#x7684;bean&#xff0c;&#x6700;&#x7b80;&#x5355;&#x7684;&#x4f53;&#x73b0;&#x662f;&#x8fd9;&#x4e2a;&#x65f6;&#x5019;&#x5b9e;&#x4f8b;&#x5316;&#x51fa;&#x6765;&#x7684;&#x5bf9;&#x8c61;&#x5c5e;&#x6027;&#x662f;&#x6ca1;&#x6709;&#x6ce8;&#x5165;&#xff0c;&#x6240;&#x4ee5;&#x4e0d;&#x662f;&#x4e00;&#x4e2a;&#x5b8c;&#x6574;&#x7684;bean&#xff1b; "/>
<node CREATED="1598339266013" ID="ID_961418163" MODIFIED="1598339270729" TEXT="10&#xff1a;spring&#x5904;&#x7406;&#x5408;&#x5e76;&#x540e;&#x7684;beanDefinition(&#x5408;&#x5e76;&#xff1f;&#x662f;spring&#x5f53;&#x4e2d;&#x975e;&#x5e38;&#x91cd;&#x8981;&#x7684;&#x4e00;&#x5757;&#x5185;&#x5bb9;&#xff0c;&#x540e;&#x9762;&#x7684;&#x6587;&#x7ae0;&#x6211;&#x4f1a;&#x5206;&#x6790;)&#xff1b; "/>
<node CREATED="1598339270730" ID="ID_528162755" MODIFIED="1598339274344" TEXT="11&#xff1a;&#x5224;&#x65ad;&#x662f;&#x5426;&#x652f;&#x6301;&#x5faa;&#x73af;&#x4f9d;&#x8d56;&#xff0c;&#x5982;&#x679c;&#x652f;&#x6301;&#x5219;&#x63d0;&#x524d;&#x628a;&#x4e00;&#x4e2a;&#x5de5;&#x5382;&#x5b58;&#x5165;singletonFactories&#x2014;&#x2014;map&#xff1b; "/>
<node CREATED="1598339274345" ID="ID_1755991561" MODIFIED="1598339277850" TEXT="12&#xff1a;&#x5224;&#x65ad;&#x662f;&#x5426;&#x9700;&#x8981;&#x5b8c;&#x6210;&#x5c5e;&#x6027;&#x6ce8;&#x5165; "/>
<node CREATED="1598339277851" ID="ID_466058854" MODIFIED="1598339281810" TEXT="13&#xff1a;&#x5982;&#x679c;&#x9700;&#x8981;&#x5b8c;&#x6210;&#x5c5e;&#x6027;&#x6ce8;&#x5165;&#xff0c;&#x5219;&#x5f00;&#x59cb;&#x6ce8;&#x5165;&#x5c5e;&#x6027; "/>
<node CREATED="1598339281810" ID="ID_1368889051" MODIFIED="1598339299743" TEXT="14&#xff1a;&#x5224;&#x65ad;bean&#x7684;&#x7c7b;&#x578b;&#x56de;&#x8c03;Aware&#x63a5;&#x53e3; "/>
<node CREATED="1598339300854" ID="ID_1460246930" MODIFIED="1598339302552" TEXT="15&#xff1a;&#x8c03;&#x7528;&#x751f;&#x547d;&#x5468;&#x671f;&#x56de;&#x8c03;&#x65b9;&#x6cd5; "/>
<node CREATED="1598339287042" ID="ID_1613966862" MODIFIED="1598339306124" TEXT="16&#xff1a;&#x5982;&#x679c;&#x9700;&#x8981;&#x4ee3;&#x7406;&#x5219;&#x5b8c;&#x6210;&#x4ee3;&#x7406;"/>
<node CREATED="1598339307501" ID="ID_854021341" MODIFIED="1598339316044" TEXT="17&#xff1a;put&#x5230;&#x5355;&#x4f8b;&#x6c60;&#x2014;&#x2014;bean&#x5b8c;&#x6210;&#x2014;&#x2014;&#x5b58;&#x5728;spring&#x5bb9;&#x5668;&#x5f53;&#x4e2d;"/>
</node>
</node>
<node CREATED="1598338099308" ID="ID_1980294375" MODIFIED="1598338103824" POSITION="right" TEXT="&#x5faa;&#x73af;&#x4f9d;&#x8d56;">
<node CREATED="1598338846453" ID="ID_388930519" MODIFIED="1598338853995" TEXT="springbean &#x548c;&#x5bf9;&#x8c61;">
<node CREATED="1598338854621" ID="ID_1772413279" MODIFIED="1598338899581" TEXT="SpringBean&#xff1a;&#x53d7;Spring&#x7ba1;&#x7406;&#x7684;&#x5bf9;&#x8c61;&#xff0c;&#x53ef;&#x80fd;&#x7ecf;&#x5386;&#x4e86;Spring&#x751f;&#x547d;&#x5468;&#x671f;"/>
<node CREATED="1598338907984" ID="ID_1818716587" MODIFIED="1598338931814" TEXT="&#x5bf9;&#x8c61;&#xff1a;&#x7b26;&#x5408;java&#x8bed;&#x6cd5;&#x6784;&#x5efa;&#x7684;&#x5bf9;&#x8c61;"/>
</node>
<node CREATED="1598341740111" ID="ID_1570810679" MODIFIED="1598341741756" TEXT="beforeSingletonCreation(String beanName)">
<node CREATED="1598341780072" ID="ID_1800389758" MODIFIED="1598341782341" TEXT="this.inCreationCheckExclusions.contains(beanName)">
<node CREATED="1598341783008" ID="ID_637148352" MODIFIED="1598341796404" TEXT="&#x5224;&#x65ad;&#x5f53;&#x524d;&#x9700;&#x8981;&#x521b;&#x5efa;&#x7684;bean&#x662f;&#x5426;&#x5728;Exclusions&#x96c6;&#x5408;&#xff0c;&#x88ab;&#x6392;&#x9664;&#x7684;bean"/>
</node>
<node CREATED="1598341806393" ID="ID_903507944" MODIFIED="1598341807759" TEXT="this.singletonsCurrentlyInCreation.add(beanName)">
<node CREATED="1598341819418" ID="ID_251139340" MODIFIED="1598341829351" TEXT="&#x5f53;&#x524d;bean&#x4e0d;&#x5728;&#x6392;&#x9664;&#x7684;&#x96c6;&#x5408;&#x5f53;&#x4e2d;&#x90a3;&#x4e48;&#x5219;&#x8fd9;&#x4e2a;bean&#x6dfb;&#x52a0;&#x5230;singletonsCurrentlyInCreation&#xff08;Set&#xff09;"/>
</node>
</node>
<node CREATED="1598403580521" ID="ID_1763302098" MODIFIED="1598403603330" TEXT="AbstractAutowireCapableBeanFactory.doCreateBean(String, RootBeanDefinition, Object[])">
<node CREATED="1598403615010" ID="ID_1856448103" MODIFIED="1598403625609" TEXT="instanceWrapper = createBeanInstance(beanName, mbd, args) &#x521b;&#x5efa;&#x5bf9;&#x8c61;"/>
<node CREATED="1598403662717" ID="ID_1950063713" MODIFIED="1598403964937" TEXT="boolean earlySingletonExposure = (mbd.isSingleton() &amp;&amp; this.allowCircularReferences &amp;&amp;isSingletonCurrentlyInCreation(beanName))  &#x662f;&#x5426;&#x652f;&#x6301;&#xff08;&#x5f00;&#x542f;&#xff09;&#x5faa;&#x73af;&#x4f9d;&#x8d56;"/>
<node CREATED="1598403707783" ID="ID_1053487813" MODIFIED="1598404202827" TEXT="addSingletonFactory() &#x6dfb;&#x52a0;&#x5355;&#x4f8b;&#x5de5;&#x5382;&#xff0c;&#x751f;&#x6210;&#x534a;&#x6210;&#x54c1;&#x7684;bean&#xff0c;&#x5373;&#x6ca1;&#x6709;&#x7ecf;&#x5386;&#x5b8c;&#x6574;&#x751f;&#x547d;&#x5468;&#x671f;&#x7684;bean">
<node CREATED="1598404211535" ID="ID_971289580" MODIFIED="1598404247920" TEXT="if (!this.singletonObjects.containsKey(beanName))">
<node CREATED="1598404343237" ID="ID_1804087113" MODIFIED="1598410689791" TEXT="&#x5355;&#x4f8b;&#x6c60;&#x4e2d;&#x4e0d;&#x5b58;&#x5728;&#x624d;&#x4f1a;add&#xff0c;&#x56e0;&#x4e3a;&#x8fd9;&#x91cc;&#x662f;&#x4e3a;&#x5faa;&#x73af;&#x4f9d;&#x8d56;&#x670d;&#x52a1;&#x7684;&#xff0c;&#x5982;&#x679c;&#x5728;&#x5355;&#x4f8b;&#x6c60;&#x4e2d;&#xff0c;&#x8fd9;&#x4e2a;&#x5bf9;&#x8c61;&#x5df2;&#x7ecf;&#x662f;bean&#x4e86;&#xff0c;&#x5df2;&#x7ecf;&#x5b8c;&#x6210;&#x5faa;&#x73af;&#x4f9d;&#x8d56;&#x4e86;&#xff0c;&#x5bf9;&#x8c61;&#x5df2;&#x7ecf;&#x521b;&#x5efa;&#xff0c;&#x5c31;&#x4e0d;&#x9700;&#x8981;&#x8fdb;if&#x4e86;"/>
</node>
<node CREATED="1598404259869" ID="ID_870304822" MODIFIED="1598404270775" TEXT="this.singletonFactories.put(beanName, singletonFactory)">
<node CREATED="1598410702250" ID="ID_754056887" MODIFIED="1598410732345" TEXT="&#x628a;&#x5bf9;&#x8c61;put&#x5230;&#x4e8c;&#x7ea7;map&#x2014;&#x2014;singletonFactories"/>
</node>
<node CREATED="1598404270777" ID="ID_733103989" MODIFIED="1598404309976" TEXT="this.earlySingletonObjects.remove(beanName)">
<node CREATED="1598411114393" ID="ID_1841003464" MODIFIED="1598411127655" TEXT="&#x4e09;&#x7ea7;map">
<node CREATED="1598411041679" ID="ID_301774986" MODIFIED="1598411347078" TEXT="&#x4e00;&#x7ea7; map&#xff1a;singletonObjects &#x4e3b;&#x8981;&#x5b58;&#x50a8;&#x5355;&#x4f8b;bean"/>
<node CREATED="1598411060183" ID="ID_776036211" MODIFIED="1598411366443" TEXT="&#x4e8c;&#x7ea7; map&#xff1a;singletonFactories &#x4e3b;&#x8981;&#x5b58;&#x50a8;ObjectFactory&#x7c7b;&#x578b;&#x7684;&#x5de5;&#x5382;&#x5bf9;&#x8c61;"/>
<node CREATED="1598411072232" ID="ID_825549473" MODIFIED="1598411380881" TEXT="&#x4e09;&#x7ea7; map&#xff1a;earlySingletonObjects &#x4e3b;&#x8981;&#x5b58;&#x50a8;&#x534a;&#x6210;&#x54c1;&#x7684;bean"/>
</node>
<node CREATED="1598410778004" ID="ID_1656035280" MODIFIED="1598411287399" TEXT="&#x4e09;&#x7ea7;map&#x4e2d;&#x5b58;&#x50a8;&#x7684;&#x662f;&#x540c;&#x4e00;&#x4e2a;&#x5bf9;&#x8c61;&#xff0c;Spring&#x7684;&#x4e09;&#x7ea7;&#x7f13;&#x5b58;&#x4e0d;&#x9700;&#x8981;&#x540c;&#x65f6;&#x5b58;&#x5728;&#xff0c;&#x5982;&#x679c;1&#x4e2d;&#x5b58;&#x5728;&#x4e86;&#xff0c;&#x4e8c;&#x7ea7;&#x3001;&#x4e09;&#x7ea7;&#x5c31;&#x9700;&#x8981;remove&#xff0c;&#x73b0;&#x5728;&#x4e00;&#x7ea7;&#x6ca1;&#x6709;&#xff0c;&#x4e8c;&#x7ea7;&#x6dfb;&#x52a0;&#xff0c;&#x4e09;&#x7ea7;&#x76f4;&#x63a5;remove"/>
</node>
<node CREATED="1598404295609" ID="ID_1091372047" MODIFIED="1598404314791" TEXT="this.registeredSingletons.add(beanName)"/>
</node>
<node CREATED="1598411500837" ID="ID_307076793" MODIFIED="1598411514674" TEXT="populateBean() &#x5c5e;&#x6027;&#x6ce8;&#x5165;">
<node CREATED="1598411568569" ID="ID_65644776" MODIFIED="1598411576701" TEXT="&#x5faa;&#x73af;&#x4f9d;&#x8d56;&#x4e3b;&#x8981;&#x5b9e;&#x73b0;&#x6b65;&#x9aa4;"/>
<node CREATED="1598411578024" ID="ID_1971349139" MODIFIED="1598411898769" TEXT="x.populate(y)">
<node CREATED="1598411899179" ID="ID_1313455659" MODIFIED="1598411921255" TEXT="getBean(y) &#x8d70;bean y &#x7684;&#x751f;&#x547d;&#x5468;&#x671f;"/>
</node>
</node>
</node>
<node CREATED="1598342674432" ID="ID_1285363021" MODIFIED="1598342677126" TEXT="&#x603b;&#x7ed3;">
<node CREATED="1598342677472" ID="ID_1173839609" MODIFIED="1598342692694" TEXT="&#x4e0d;&#x652f;&#x6301;&#x539f;&#x578b;"/>
<node CREATED="1598342693441" ID="ID_1206449713" MODIFIED="1598342694485" TEXT="&#x4e0d;&#x652f;&#x6301;&#x6784;&#x9020;&#x65b9;&#x6cd5;&#x6ce8;&#x5165;&#x7684;bean"/>
</node>
</node>
<node CREATED="1609771474513" ID="ID_537144656" MODIFIED="1609771482144" POSITION="right" TEXT="DI&#x65f6;&#x5e8f;&#x56fe;"/>
<node CREATED="1609771482609" ID="ID_1576541252" MODIFIED="1609771511339" POSITION="right" TEXT="AOP">
<node CREATED="1609771521199" ID="ID_1420306425" MODIFIED="1609771524854" TEXT="&#x6838;&#x5fc3;&#x539f;&#x7406;"/>
<node CREATED="1609771525275" ID="ID_162059774" MODIFIED="1609771532629" TEXT="&#x8bbe;&#x8ba1;&#x601d;&#x60f3;"/>
<node CREATED="1609771533054" ID="ID_271909613" MODIFIED="1609771542887" TEXT="&#x91cd;&#x8981;&#x7ec6;&#x8282;"/>
<node CREATED="1610636312446" ID="ID_1833755261" MODIFIED="1610636317834" TEXT="&#x4e3b;&#x8981;&#x6d41;&#x7a0b;">
<node CREATED="1610636319003" ID="ID_1457630375" MODIFIED="1610636324031" TEXT="&#x5165;&#x53e3;"/>
<node CREATED="1610636324424" ID="ID_1167351033" MODIFIED="1610636332108" TEXT="&#x9009;&#x62e9;&#x7b56;&#x7565;"/>
<node CREATED="1610636333953" ID="ID_1842449636" MODIFIED="1610636337876" TEXT="&#x8c03;&#x7528;&#x65b9;&#x6cd5;"/>
<node CREATED="1610636339259" ID="ID_1983594743" MODIFIED="1610636343492" TEXT="&#x89e6;&#x53d1;&#x901a;&#x77e5;"/>
</node>
<node CREATED="1609771543386" ID="ID_751596523" MODIFIED="1609771553076" TEXT="&#x65f6;&#x5e8f;&#x56fe;">
<node CREATED="1610636419959" ID="ID_1296894860" MODIFIED="1610636427673" TEXT="&#x521d;&#x59cb;&#x5316;">
<node CREATED="1610616805121" ID="ID_1648414807" MODIFIED="1610616815811" TEXT="AbstractApplicationContext.finishBeanFactoryInitialization(ConfigurableListableBeanFactory)">
<node CREATED="1610616922922" ID="ID_1182746404" MODIFIED="1610616933218" TEXT="DefaultListableBeanFactory.preInstantiateSingletons()">
<node CREATED="1610617001543" ID="ID_1889404010" MODIFIED="1610617013812" TEXT="AbstractBeanFactory.getMergedLocalBeanDefinition(String)"/>
<node CREATED="1610617040477" ID="ID_700441984" MODIFIED="1610617047166" TEXT="AbstractBeanFactory.getBean(String)"/>
<node CREATED="1610617058886" ID="ID_1406930249" MODIFIED="1610617072562" TEXT="AbstractBeanFactory.doGetBean()">
<node CREATED="1610617172793" ID="ID_116494182" MODIFIED="1610617189055" TEXT="DefaultSingletonBeanRegistry.getSingleton()">
<node CREATED="1610617208696" ID="ID_1488622884" MODIFIED="1610617229343" TEXT="AbstractAutowireCapableBeanFactory.createBean()">
<node CREATED="1610617308249" ID="ID_1443307116" MODIFIED="1610617322712" TEXT="AbstractAutowireCapableBeanFactory.resolveBeforeInstantiation()">
<node CREATED="1610617377226" ID="ID_1818264572" MODIFIED="1610617390571" TEXT="AbstractAutowireCapableBeanFactory.applyBeanPostProcessorsBeforeInstantiation()">
<node CREATED="1610617524009" ID="ID_414397853" MODIFIED="1610617538995" TEXT="AbstractAutoProxyCreator.postProcessBeforeInstantiation()"/>
</node>
</node>
<node CREATED="1610617704012" ID="ID_1494029364" MODIFIED="1610617715275" TEXT="AbstractAutowireCapableBeanFactory.doCreateBean()">
<node CREATED="1610635903824" ID="ID_890086386" MODIFIED="1610635919038" TEXT="AbstractAutowireCapableBeanFactory#populateBean&#xff1a;&#x5c5e;&#x6027;&#x8bbe;&#x7f6e;"/>
<node CREATED="1610635919772" ID="ID_1037346518" MODIFIED="1610635966260" TEXT="AbstractAutowireCapableBeanFactory#initializeBean()=&#x300b;&#x521d;&#x59cb;&#x5316;bean"/>
<node CREATED="1610636051593" ID="ID_281503031" MODIFIED="1610636064123" TEXT="#applyBeanPostProcessorsBeforeInitialization"/>
<node CREATED="1610636089843" ID="ID_1334324442" MODIFIED="1610636099405" TEXT="AbstractAutowireCapableBeanFactory#applyBeanPostProcessorsAfterInitialization">
<node CREATED="1610636108050" ID="ID_500516076" MODIFIED="1610636145097" TEXT="AbstractAutoProxyCreator#postProcessAfterInitialization">
<node CREATED="1610636172961" ID="ID_103557123" MODIFIED="1610636185682" TEXT="AbstractAutoProxyCreator#wrapIfNecessary"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1610636429027" ID="ID_1060696582" MODIFIED="1610636437875" TEXT="&#x8c03;&#x7528;"/>
<node CREATED="1610636438612" ID="ID_1493475249" MODIFIED="1610636446926" TEXT="&#x901a;&#x77e5;"/>
</node>
</node>
<node CREATED="1610592480013" ID="ID_329561103" MODIFIED="1610592485353" POSITION="right" TEXT="SpringMVC">
<node CREATED="1610592583949" ID="ID_610800579" MODIFIED="1610592587899" TEXT="&#x65f6;&#x5e8f;&#x56fe;">
<node CREATED="1610614956032" ID="ID_32995595" MODIFIED="1610614959682" TEXT="&#x521d;&#x59cb;&#x5316;">
<node CREATED="1610592588325" ID="ID_1932006077" MODIFIED="1610592591739" TEXT="HttpServlet"/>
<node CREATED="1610613665423" ID="ID_388663060" MODIFIED="1610613873083" TEXT="HttpServletBean.init()"/>
<node CREATED="1610613873774" ID="ID_384699097" MODIFIED="1610613883348" TEXT="FrameworkServlet.initServletBean()">
<node CREATED="1610613928810" ID="ID_119743676" MODIFIED="1610613960159" TEXT="initWebApplicationContext()&#xff1a;&#x521d;&#x59cb;&#x5316;web&#x4e0a;&#x4e0b;&#x6587;"/>
</node>
</node>
<node CREATED="1610614960133" ID="ID_739828679" MODIFIED="1610614966818" TEXT="&#x8fd0;&#x884c;&#x65f6;">
<node CREATED="1610614968615" ID="ID_1332120312" MODIFIED="1610614983483" TEXT="FrameworkServlet.service()"/>
<node CREATED="1610615062258" ID="ID_1832361404" MODIFIED="1610615075447" TEXT="HttpSevelt.server() &#x5224;&#x65ad;&#x65b9;&#x6cd5;&#x7c7b;&#x578b;"/>
<node CREATED="1610615075808" ID="ID_522986500" MODIFIED="1610615138457" TEXT="FrameworkServlet.doGet() &#x5177;&#x4f53;&#x6839;&#x636e;&#x8bf7;&#x6c42;Method&#x51b3;&#x5b9a;"/>
<node CREATED="1610615096226" ID="ID_1883249811" MODIFIED="1610615221524" TEXT="FrameworkServlet.processRequest() &#x7edf;&#x4e00;&#x5904;&#x7406;&#x8bf7;&#x6c42;&#x65b9;&#x6cd5;"/>
<node CREATED="1610615186572" ID="ID_495066452" MODIFIED="1610615208675" TEXT="DispatcherServlet.doService() &#x5177;&#x4f53;&#x5904;&#x7406;&#x903b;&#x8f91;">
<node CREATED="1610615258064" ID="ID_1600333690" MODIFIED="1610615279254" TEXT="FlashMapManager &#x95ea;&#x5b58;&#x7ba1;&#x7406;&#x5668;&#x8bbe;&#x7f6e;&#x5c5e;&#x6027;"/>
<node CREATED="1610615294777" ID="ID_274345789" MODIFIED="1610615339618" TEXT="DispatcherServlet.doDispatch() &#x5206;&#x53d1;&#x903b;&#x8f91;">
<node CREATED="1610615364691" ID="ID_1302485583" MODIFIED="1610615384657" TEXT="&#x68c0;&#x6d4b;&#x662f;&#x5426;&#x6587;&#x4ef6;&#x6d41;"/>
<node CREATED="1610615408149" ID="ID_1106780344" MODIFIED="1610615805224" TEXT="DispatcherServelt.getHandler() &#x83b7;&#x53d6;&#x6267;&#x884c;&#x5668;&#x94fe; =&gt;HandlerExecutionChain">
<node CREATED="1610615515088" ID="ID_900509489" MODIFIED="1610615530943" TEXT="&#x904d;&#x5386;HandlerMappings"/>
<node CREATED="1610615602036" ID="ID_585544847" MODIFIED="1610615734085" TEXT="RequestMappingHandlerMapping.getHandlerInternal()"/>
</node>
<node CREATED="1610615880903" ID="ID_1218903677" MODIFIED="1610615903331" TEXT="DispatcherServelt.getHandlerAdapter() =&gt; HandlerAdapter"/>
<node CREATED="1610615958313" ID="ID_1447360456" MODIFIED="1610615984846" TEXT="HandlerExecutionChain.applyPreHandle() =&gt; &#x524d;&#x7f6e;&#x62e6;&#x622a;&#x5904;&#x7406;"/>
<node CREATED="1610615996513" ID="ID_514752372" MODIFIED="1610616011680" TEXT="HandlerAdapter.handle() =&gt; &#x5b9e;&#x9645;&#x5904;&#x7406;"/>
<node CREATED="1610616083173" ID="ID_287051312" MODIFIED="1610616101028" TEXT="HandlerExecutionChain.applyPostHandle()=&gt;&#x540e;&#x7f6e;&#x62e6;&#x622a;&#x5904;&#x7406;"/>
<node CREATED="1610616139935" ID="ID_992488723" MODIFIED="1610616158005" TEXT="DispatcherServlet.processDispatchResult() =&gt;&#x7ed3;&#x679c;&#x5904;&#x7406;">
<node CREATED="1610616165416" ID="ID_444417570" MODIFIED="1610616198142" TEXT="DispatcherServelt.render()=&gt;&#x89c6;&#x56fe;&#x6e32;&#x67d3;">
<node CREATED="1610616222610" ID="ID_533365125" MODIFIED="1610616246969" TEXT="ViewResolver.resolveViewName()=&gt;&#x8c03;&#x7528;&#x5b9e;&#x9645;&#x6e32;&#x67d3;&#x5668;&#x6e32;&#x67d3;"/>
</node>
<node CREATED="1610616284532" ID="ID_237237309" MODIFIED="1610616313322" TEXT="HandlerExecutionChain.afterCompletion()=&gt;&#x5b8c;&#x6210;&#x62e6;&#x622a;&#x5904;&#x7406;"/>
</node>
</node>
</node>
<node CREATED="1610616394168" ID="ID_1517108313" MODIFIED="1610616406021" TEXT="response"/>
</node>
</node>
</node>
</node>
</map>
