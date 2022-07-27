<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1597108435101" ID="ID_497504414" MODIFIED="1597108443640" TEXT="SpringBoot">
<node CREATED="1597108444052" ID="ID_507334095" MODIFIED="1597108452144" POSITION="right" TEXT="&#x7279;&#x70b9;">
<node CREATED="1597108454026" ID="ID_1152099845" MODIFIED="1597108474152" TEXT="&#x5feb;&#x901f;&#x6784;&#x5efa;spring&#x5e94;&#x7528;"/>
</node>
<node CREATED="1597123640377" ID="ID_92779523" MODIFIED="1597123643239" POSITION="right" TEXT="&#x7248;&#x672c;">
<node CREATED="1597123643489" ID="ID_1494983751" MODIFIED="1597123655351" TEXT="2.0.4 Release"/>
</node>
<node CREATED="1597108475708" ID="ID_817678898" MODIFIED="1597108484057" POSITION="right" TEXT="&#x81ea;&#x52a8;&#x88c5;&#x914d;&#x539f;&#x7406;">
<node CREATED="1597115763367" ID="ID_740112531" MODIFIED="1597115927633" TEXT="SpringApplication.run(Class&lt;?&gt; primarySource,&#x9;String... args)"/>
<node CREATED="1597116013928" ID="ID_595637774" MODIFIED="1597116016507" TEXT="new SpringApplication(primarySources).run(args)">
<node CREATED="1597116084705" ID="ID_1351956240" MODIFIED="1597116522206" TEXT="this(null,primarySources):&#x6784;&#x9020;&#x51fd;&#x6570;">
<node CREATED="1597116113810" ID="ID_1729350234" MODIFIED="1597116121578" TEXT="deduceWebApplicationType():&#x5224;&#x65ad;web&#x7c7b;&#x578b;"/>
<node CREATED="1597116466759" ID="ID_1929347488" MODIFIED="1597116468061" TEXT="setInitializers&#xff1a;&#x8bbe;&#x7f6e;&#x521d;&#x59cb;&#x5316;&#x5668;">
<node CREATED="1597116484168" ID="ID_72987675" MODIFIED="1597116543415" TEXT="getSpringFactoriesInstances &#x83b7;&#x53d6;spring.factories&#x6587;&#x4ef6;&#x914d;&#x7f6e;&#x7684;&#x7c7b;">
<node CREATED="1597116563858" ID="ID_767921662" MODIFIED="1597116565876" TEXT="createSpringFactoriesInstances &#x521b;&#x5efa;bean &#x96c6;&#x5408;&#x5e76;&#x6392;&#x5e8f;"/>
</node>
</node>
<node CREATED="1597116475896" ID="ID_395791699" MODIFIED="1597116477438" TEXT="setListeners&#xff1a;&#x8bbe;&#x7f6e;&#x76d1;&#x542c;&#x5668;">
<node CREATED="1597116484168" ID="ID_378835362" MODIFIED="1597116551411" TEXT="getSpringFactoriesInstances &#x83b7;&#x53d6;spring.factories&#x6587;&#x4ef6;&#x914d;&#x7f6e;&#x7684;&#x7c7b;">
<node CREATED="1597116567395" ID="ID_1559132506" MODIFIED="1597116568852" TEXT="createSpringFactoriesInstances &#x521b;&#x5efa;bean &#x96c6;&#x5408;&#x5e76;&#x6392;&#x5e8f;"/>
</node>
</node>
<node CREATED="1597116509969" ID="ID_177038781" MODIFIED="1597116511886" TEXT="deduceMainApplicationClass&#xff1a;&#x5206;&#x6790;&#x4e3b;&#x5e94;&#x7528;&#x7c7b;&#x578b;"/>
</node>
<node CREATED="1597116453094" ID="ID_116552392" MODIFIED="1597116459044" TEXT="run(args)">
<node CREATED="1597116580707" ID="ID_1055758438" MODIFIED="1597116582176" TEXT="StopWatch.start() &#x5f00;&#x542f;&#x5b9a;&#x65f6;&#x5668;"/>
<node CREATED="1597116588492" ID="ID_1630181998" MODIFIED="1597123012346" TEXT="SpringApplicationRunListeners.starting() &#x542f;&#x52a8;&#x76d1;&#x542c;&#x5668;"/>
<node CREATED="1597116589915" ID="ID_1473027807" MODIFIED="1597116596033" TEXT="DefaultApplicationArguments &#x521b;&#x5efa;&#x8fd0;&#x884c;&#x53c2;&#x6570;"/>
<node CREATED="1597116602988" ID="ID_1278169519" MODIFIED="1597116604281" TEXT="prepareEnvironment &#x51c6;&#x5907;&#x8fd0;&#x884c;&#x73af;&#x5883;">
<node CREATED="1597123050622" ID="ID_1812348008" MODIFIED="1597123081115" TEXT="SpringApplication-&gt;getOrCreateEnvironment()"/>
<node CREATED="1597123148928" ID="ID_457120311" MODIFIED="1597123167198" TEXT="SpringApplication-&gt;configurePropertySources()"/>
<node CREATED="1597123156177" ID="ID_1038969916" MODIFIED="1597123298763" TEXT="SpringApplication-&gt;configureProfiles()"/>
<node CREATED="1597123408625" ID="ID_674342109" MODIFIED="1597123435036" TEXT="bindToSpringApplication() : &#x7ed1;&#x5b9a;&#x73af;&#x5883;&#x53d8;&#x91cf;&#x5230;&#x5f53;&#x524d;SpringApplication"/>
</node>
<node CREATED="1597123479596" ID="ID_248908576" MODIFIED="1597123583693" TEXT="configureIgnoreBeanInfo() &#x8bbe;&#x7f6e;&#x5168;&#x5c40;&#x5c5e;&#x6027;&#xff1a;spring.beaninfo.ignore&#xff0c;&#x9ed8;&#x8ba4;&#x4e3a;true"/>
<node CREATED="1597123608833" ID="ID_610922356" MODIFIED="1597123624342" TEXT="createApplicationContext() &#x521b;&#x5efa;&#x5e94;&#x7528;&#x4e0a;&#x4e0b;&#x6587;">
<node CREATED="1597195764811" ID="ID_713235590" MODIFIED="1597195819093" TEXT="SERVLET:AnnotationConfigServletWebServerApplicationContext">
<node CREATED="1597196760682" ID="ID_1697962030" MODIFIED="1597196774159" TEXT="BeanUtils.instantiateClass()">
<node CREATED="1597196792637" ID="ID_555533108" MODIFIED="1597196838434" TEXT="AnnotationConfigServletWebServerApplicationContext()">
<node CREATED="1597196839158" ID="ID_182177638" MODIFIED="1597196856275" TEXT="new AnnotatedBeanDefinitionReader(this)">
<node CREATED="1597196882743" ID="ID_1348887072" MODIFIED="1597196898980" TEXT="AnnotationConfigUtils.registerAnnotationConfigProcessors(BeanDefinitionRegistry registry)"/>
<node CREATED="1597196939002" ID="ID_43840196" MODIFIED="1597196955422" TEXT="&#x6ce8;&#x5165;&#x9ed8;&#x8ba4;&#x7684;&#x5185;&#x90e8;bean">
<node CREATED="1597197151592" ID="ID_672607237" MODIFIED="1597197183398" TEXT="BeanFactoryProcessor-&gt;BeanDefinitionRegistryPostProcessor">
<node CREATED="1597196965578" ID="ID_1988981906" MODIFIED="1597197210499" TEXT="ConfigurationClassPostProcessor&#xff1a;internalConfigurationAnnotationProcessor">
<icon BUILTIN="info"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1597195820433" ID="ID_837316786" MODIFIED="1597196738180" TEXT="REACTIVE:AnnotationConfigReactiveWebServerApplicationContext"/>
<node CREATED="1597196739969" ID="ID_1654377783" MODIFIED="1597196756336" TEXT="DEFAULT:AnnotationConfigApplicationContext"/>
</node>
<node CREATED="1597127037441" ID="ID_188459278" MODIFIED="1597127043916" TEXT="prepareContext() &#x51c6;&#x5907;&#x4e0a;&#x4e0b;&#x6587;">
<node CREATED="1597127045455" ID="ID_1369443110" MODIFIED="1597128209032" TEXT="SpringApplication.load() &#x52a0;&#x8f7d;&#x542f;&#x52a8;&#x7c7b;&#x8d44;&#x6e90;">
<node CREATED="1597127113729" ID="ID_1585557737" MODIFIED="1597127116520" TEXT="BeanDefinitionLoader loader = createBeanDefinitionLoader"/>
<node CREATED="1597127117724" ID="ID_1761557024" MODIFIED="1597129248873" TEXT="loader.load(load(Class&lt;?&gt; source))">
<node CREATED="1597127148708" ID="ID_1864257054" MODIFIED="1597127167665" TEXT="isComponent(source) &#x5224;&#x65ad;&#x662f;&#x5426;&#x6709;@Component">
<node CREATED="1597127168140" ID="ID_966172085" MODIFIED="1597127204890" TEXT="@SpringBootApplication &#x591a;&#x7ea7;&#x6ce8;&#x89e3;&#x6709;@Configuration&#x5b58;&#x5728;@Component"/>
</node>
<node CREATED="1597127246439" ID="ID_434136622" MODIFIED="1597127261508" TEXT="annotatedReader.register(source)">
<node CREATED="1597127262727" ID="ID_394333242" MODIFIED="1597129408905" TEXT="doRegisterBean() &#x5c06;&#x542f;&#x52a8;&#x7c7b;&#x6ce8;&#x518c;&#x5230;BeanDefinitionRegister&#x4e2d;"/>
</node>
</node>
</node>
</node>
<node CREATED="1597116608812" ID="ID_200012656" MODIFIED="1597129424257" TEXT="refreshContext()  &#x5237;&#x65b0;&#x4e0a;&#x4e0b;&#x6587;">
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
<node CREATED="1596423776401" ID="ID_1179364179" MODIFIED="1597129505332" TEXT="postProcessBeanFactory()&#xff1a;&#x4f9b;&#x5b50;&#x7c7b;&#x8c03;&#x7528;&#x540e;&#x7f6e;&#x65b9;&#x6cd5;"/>
<node CREATED="1596423882101" ID="ID_983763485" MODIFIED="1597131130119" TEXT="invokeBeanFactoryPostProcessors()&#xff1a;&#x6267;&#x884c;BeanFactory &#x7684;&#x540e;&#x7f6e;&#x5904;&#x7406;&#x5668;&#x65b9;&#x6cd5;(&#x81ea;&#x52a8;&#x914d;&#x7f6e;)">
<node CREATED="1597131123929" ID="ID_1331214790" MODIFIED="1597197382335" TEXT="PostProcessorRegistrationDelegate.invokeBeanFactoryPostProcessors()"/>
<node CREATED="1597197521227" ID="ID_1387289547" MODIFIED="1597197527131" TEXT="invokeBeanDefinitionRegistryPostProcessors()">
<node CREATED="1597131540425" ID="ID_950587933" MODIFIED="1597131570286" TEXT="ConfigurationClassPostProcessor.postProcessBeanDefinitionRegistry()">
<node CREATED="1597131620163" ID="ID_646478071" MODIFIED="1597197884720" TEXT="processConfigBeanDefinitions(BeanFactory)">
<node CREATED="1597197856589" ID="ID_460867643" MODIFIED="1597197879080" TEXT="&#x5bfb;&#x627e;&#x542f;&#x52a8;&#x7c7b;&#x7684;BeanDefinition"/>
<node CREATED="1597197896594" ID="ID_1956286246" MODIFIED="1597197910342" TEXT="&#x6784;&#x5efa;@Configuration&#x7684;&#x89e3;&#x6790;&#x5668;&#xff1a;ConfigurationClassParser"/>
<node CREATED="1597131757441" ID="ID_211169404" MODIFIED="1597197934277" TEXT="&#x89e3;&#x6790;&#x542f;&#x52a8;&#x7c7b;&#xff1a;ConfigurationClassParser.parse() ">
<node CREATED="1597132117765" ID="ID_530272075" MODIFIED="1597198009079" TEXT="&#x5224;&#x65ad;&#x7c7b;&#x578b;&#x4e3a; AnnotatedBeanDefinition"/>
<node CREATED="1597132186463" ID="ID_692022354" MODIFIED="1597198034669" TEXT="processConfigurationClass()">
<node CREATED="1597132286867" ID="ID_423048810" MODIFIED="1597198156319" TEXT="doProcessConfigurationClass()&#xff1a;&#x9012;&#x5f52;&#x641c;&#x7d22;&#x7c7b;&#x4e0a;&#x6ce8;&#x89e3;">
<node CREATED="1597198184400" ID="ID_729498258" MODIFIED="1597198196484" TEXT="processMemberClasses()&#xff1a;&#x9012;&#x5f52;&#x641c;&#x7d22;&#x5185;&#x90e8;&#x7c7b;"/>
<node CREATED="1597198221757" ID="ID_949250899" MODIFIED="1597198227298" TEXT="&#x641c;&#x7d22;@PropertySource"/>
<node CREATED="1597198242454" ID="ID_1676598692" MODIFIED="1597198246036" TEXT="&#x641c;&#x7d22;@ComponentScan"/>
<node CREATED="1597132342629" ID="ID_910262824" MODIFIED="1597198418245" TEXT="&#x641c;&#x7d22;@Import&#xff1a;processImports()">
<node CREATED="1597198406796" ID="ID_115711519" MODIFIED="1597198452876" TEXT="collectImports():&#x9012;&#x5f52;&#x67e5;&#x627e;&#x6240;&#x6709;&#x7684;@Import&#x6ce8;&#x89e3;"/>
<node CREATED="1597198459537" ID="ID_509355958" MODIFIED="1597198483940" TEXT="&#x542f;&#x52a8;&#x7c7b;@SpringBootApplication&#x4e0a;&#x6709;&#x4e24;&#x4e2a;@import">
<node CREATED="1597198484454" ID="ID_613896444" MODIFIED="1597198504704" TEXT="@Import(AutoConfigurationImportSelector.class)"/>
<node CREATED="1597198505972" ID="ID_1559554171" MODIFIED="1597198517492" TEXT="@Import(AutoConfigurationPackages.Registrar.class)"/>
</node>
</node>
<node CREATED="1597132412159" ID="ID_578141639" MODIFIED="1597198302016" TEXT="&#x641c;&#x7d22;@ImportResource"/>
<node CREATED="1597132433831" ID="ID_250708153" MODIFIED="1597198328360" TEXT="&#x6267;&#x884c;&#x81ea;&#x5b9a;&#x4e49;@Bean&#x65b9;&#x6cd5;"/>
<node CREATED="1597132453168" ID="ID_518329769" MODIFIED="1597198355854" TEXT="&#x6267;&#x884c;&#x63a5;&#x53e3;&#x9ed8;&#x8ba4;&#x65b9;&#x6cd5;&#xff1a;processInterfaces()"/>
<node CREATED="1597198368275" ID="ID_283998977" MODIFIED="1597198377253" TEXT="&#x641c;&#x7d22;&#x7236;&#x7c7b;"/>
</node>
</node>
<node CREATED="1597132489314" ID="ID_433945858" MODIFIED="1597132494343" TEXT="processDeferredImportSelectors()">
<node CREATED="1597198926841" ID="ID_795782109" MODIFIED="1597198960859" TEXT="AutoConfigurationImportSelector.selectImports">
<node CREATED="1597199006692" ID="ID_28356295" MODIFIED="1597199010177" TEXT="getCandidateConfigurations(annotationMetadata)">
<node CREATED="1597199046021" ID="ID_1612886263" MODIFIED="1597199064674" TEXT="getSpringFactoriesLoaderFactoryClass() -&gt; EnableAutoConfiguration.class"/>
<node CREATED="1597199025148" ID="ID_718633876" MODIFIED="1597199129714" TEXT="SpringFactoriesLoader.loadFactoryNames(EnableAutoConfiguration.class)">
<node CREATED="1597199080766" ID="ID_1598638943" MODIFIED="1597199100508" TEXT="&#x8bfb;&#x53d6;spring.factories&#x6587;&#x4ef6;"/>
</node>
<node CREATED="1597199033708" ID="ID_943538953" MODIFIED="1597199143693" TEXT="removeDuplicates()&#xff1a;&#x53bb;&#x6389;&#x91cd;&#x590d;&#x7684;"/>
<node CREATED="1597199145497" ID="ID_80747180" MODIFIED="1597199172614" TEXT="checkExcludedClasses()&#xff1a;&#x53bb;&#x6389;&#x6392;&#x9664;&#x7684;"/>
<node CREATED="1597199196762" ID="ID_523177444" MODIFIED="1597199215585" TEXT="&#x8fc7;&#x6ee4;&#x5668;&#x8fc7;&#x6ee4;&#x6389;&#x4e00;&#x4e9b;"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1596423995019" ID="ID_779975950" MODIFIED="1597129555685" TEXT="registerBeanPostProcessors()&#xff1a; &#x6ce8;&#x518c;Bean &#x7684;&#x540e;&#x7f6e;&#x5904;&#x7406;&#x5668;"/>
<node CREATED="1596424012522" ID="ID_1813774978" MODIFIED="1597129585551" TEXT="initMessageSource()&#xff1a; &#x56fd;&#x9645;&#x5316;I18n&#x652f;&#x6301;"/>
<node CREATED="1596424015874" ID="ID_1805733162" MODIFIED="1597129580327" TEXT="initApplicationEventMulticaster()&#xff1a; &#x521d;&#x59cb;&#x5316;&#x5e94;&#x7528;&#x4e8b;&#x4ef6;&#x591a;&#x64ad;&#x5668;"/>
<node CREATED="1596424035417" ID="ID_351554853" MODIFIED="1597129574382" TEXT="onRefresh()&#xff1a; &#x5237;&#x65b0;">
<node CREATED="1596424855838" ID="ID_1540455046" MODIFIED="1596424895834" TEXT="Web &#x9879;&#x76ee;&#xff0c;createWebServer() &#x521d;&#x59cb;&#x5316;webServer &#x5bb9;&#x5668;&#xff0c;&#x4f8b;&#x5982;tomcat"/>
</node>
<node CREATED="1596424041769" ID="ID_1289292175" MODIFIED="1596424944993" TEXT="registerListeners() &#x6ce8;&#x518c;&#x76d1;&#x542c;&#x5668;"/>
<node CREATED="1596424050960" ID="ID_138247551" MODIFIED="1597129591589" TEXT="finishBeanFactoryInitialization() &#x6700;&#x7ec8;&#x521b;&#x5efa;BeanFactory&#x4e2d;&#x7684;bean&#x5bf9;&#x8c61;&#xff08;&#x5355;&#x4f8b;&#x975e;&#x61d2;&#x52a0;&#x8f7d;&#xff09;">
<node CREATED="1596425232977" ID="ID_137251659" MODIFIED="1596425246274" TEXT="setTempClassLoader"/>
<node CREATED="1596425268090" ID="ID_88215852" MODIFIED="1596425275888" TEXT="freezeConfiguration&#xff1a;&#x51bb;&#x7ed3;&#x914d;&#x7f6e;"/>
<node CREATED="1596425294635" ID="ID_1508774256" MODIFIED="1596425310600" TEXT="preInstantiateSingletons&#xff1a;&#x521d;&#x59cb;&#x5316;&#x975e;&#x61d2;&#x52a0;&#x8f7d;&#x7684;bean&#x5bf9;&#x8c61;">
<node CREATED="1596425344205" ID="ID_1204017343" MODIFIED="1596425346306" TEXT="DefaultListableBeanFactory.preInstantiateSingletons()"/>
<node CREATED="1597130221678" ID="ID_1605415282" MODIFIED="1597130236569" TEXT="populateBean() &#x8bbe;&#x7f6e;bean&#x5c5e;&#x6027;"/>
<node CREATED="1597130237483" ID="ID_1692987091" MODIFIED="1597130253038" TEXT="initializeBean() &#x521d;&#x59cb;&#x5316;bean">
<node CREATED="1597130265008" ID="ID_1504440499" MODIFIED="1597130268307" TEXT="invokeAwareMethods()"/>
<node CREATED="1597130400889" ID="ID_54747132" MODIFIED="1597130402180" TEXT="beanProcessor.postProcessBeforeInitialization"/>
<node CREATED="1597130331771" ID="ID_168994260" MODIFIED="1597130335464" TEXT="invokeInitMethods()"/>
<node CREATED="1597130381899" ID="ID_1868419779" MODIFIED="1597130390943" TEXT="BeanPostProcessor.postProcessAfterInitialization"/>
</node>
</node>
</node>
<node CREATED="1596424063199" ID="ID_772331525" MODIFIED="1597126894999" TEXT="finishRefresh() &#x53d1;&#x5e03;&#x4e8b;&#x4ef6;"/>
</node>
</node>
<node CREATED="1597116614300" ID="ID_1209937675" MODIFIED="1597128739412" TEXT="afterRefresh():  BeanFactory refresh &#x540e;&#x7684;&#x540e;&#x7f6e;&#x94a9;&#x5b50;&#x65b9;&#x6cd5;"/>
<node CREATED="1597116619117" ID="ID_712123814" MODIFIED="1597116620676" TEXT="StopWatch.stop() &#x7ed3;&#x675f;&#x5b9a;&#x65f6;&#x5668;"/>
</node>
</node>
</node>
</node>
</map>
