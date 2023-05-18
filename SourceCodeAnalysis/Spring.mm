{"objectClass":"NSDictionary","root":{"objectClass":"MindNode","ID":"YL111","children":{"0":{"objectClass":"MindNode","ID":"9D27V","children":{"0":{"objectClass":"MindNode","ID":"62RP7","text":"开发解耦，运行组合"},"objectClass":"NSArray"},"text":"目的"},"1":{"objectClass":"MindNode","ID":"18NX5","children":{"0":{"objectClass":"MindNode","ID":"5J3QU","children":{"0":{"objectClass":"MindNode","ID":"Q2B32","children":{"0":{"objectClass":"MindNode","ID":"77RR9","text":"initPropertySources() ：初始化属性资源"},"1":{"objectClass":"MindNode","ID":"2ZXD3","text":"validateRequiredProperties()：验证必须属性"},"objectClass":"NSArray"},"text":"prepareRefresh() 刷新前准备"},"1":{"objectClass":"MindNode","ID":"I06HI","children":{"0":{"objectClass":"MindNode","ID":"2X157","text":"refreshBeanFactory()：设置BeanFactory全局唯一ID"},"objectClass":"NSArray"},"text":"obtainFreshBeanFactory()：获取刷新后BeanFactory"},"2":{"objectClass":"MindNode","ID":"Y71DJ","children":{"0":{"objectClass":"MindNode","ID":"P1U3W","text":"setBeanClassLoader"},"1":{"objectClass":"MindNode","ID":"JGXT8","text":"setBeanExpressionResolver"},"2":{"objectClass":"MindNode","ID":"SUD0I","text":"addPropertyEditorRegistrar"},"3":{"objectClass":"MindNode","ID":"JP030","text":"addBeanPostProcessor"},"4":{"objectClass":"MindNode","ID":"2V526","text":"ignoreDependencyInterface"},"5":{"objectClass":"MindNode","ID":"8I3S6","text":"registerResolvableDependency"},"6":{"objectClass":"MindNode","ID":"06666","text":"addBeanPostProcessor"},"7":{"objectClass":"MindNode","ID":"C288R","children":{"0":{"objectClass":"MindNode","ID":"40C0P","text":"environment"},"1":{"objectClass":"MindNode","ID":"5BP1P","text":"systemProperties"},"2":{"objectClass":"MindNode","ID":"9TYZN","text":"systemEnvironment"},"objectClass":"NSArray"},"text":"registerSingleton"},"objectClass":"NSArray"},"text":"prepareBeanFactory()：准备BeanFactory"},"3":{"objectClass":"MindNode","ID":"3HR1E","text":"postProcessBeanFactory()：供子类调用前置方法"},"4":{"objectClass":"MindNode","ID":"1E8S4","text":"invokeBeanFactoryPostProcessors()：BeanFactory 的前置方法"},"5":{"objectClass":"MindNode","ID":"FDT12","text":"registerBeanPostProcessors()"},"6":{"objectClass":"MindNode","ID":"8V368","text":"initMessageSource() 国际化I18n支持"},"7":{"objectClass":"MindNode","ID":"Q8F31","text":"initApplicationEventMulticaster() 初始化应用事件多播器"},"8":{"objectClass":"MindNode","ID":"54Y1H","children":{"0":{"objectClass":"MindNode","ID":"86BV8","text":"Web 项目，createWebServer() 初始化webServer 容器，例如tomcat"},"objectClass":"NSArray"},"text":"onRefresh() 刷新"},"9":{"objectClass":"MindNode","ID":"6Q27H","text":"registerListeners() 注册监听器"},"10":{"objectClass":"MindNode","ID":"8492Y","children":{"0":{"objectClass":"MindNode","ID":"877BW","text":"setTempClassLoader"},"1":{"objectClass":"MindNode","ID":"5Q136","text":"freezeConfiguration：冻结配置"},"2":{"objectClass":"MindNode","ID":"1L15R","children":{"0":{"objectClass":"MindNode","ID":"F85UY","text":"DefaultListableBeanFactory.preInstantiateSingletons()"},"objectClass":"NSArray"},"text":"preInstantiateSingletons：初始化非懒加载的bean对象"},"objectClass":"NSArray"},"text":"finishBeanFactoryInitialization() 最终创建BeanFactory中的bean对象（单例非懒加载）"},"11":{"objectClass":"MindNode","ID":"E81S3","text":"finishRefresh()"},"objectClass":"NSArray"},"text":"AbstractApplicationContext.refresh()"},"1":{"objectClass":"MindNode","ID":"YF64B","children":{"0":{"objectClass":"MindNode","ID":"468H2","text":"1：实例化一个ApplicationContext的对象；"},"1":{"objectClass":"MindNode","ID":"5FIA3","text":" 2：调用bean工厂后置处理器完成扫描；"},"2":{"objectClass":"MindNode","ID":"5J854","text":" 3：循环解析扫描出来的类信息； "},"3":{"objectClass":"MindNode","ID":"4WNK3","text":"4：实例化一个BeanDefinition对象来存储解析出来的信息；"},"4":{"objectClass":"MindNode","ID":"3CQ8B","text":" 5：把实例化好的beanDefinition对象put到beanDefinitionMap当中缓存起来，以便后面实例化bean； "},"5":{"objectClass":"MindNode","ID":"46772","text":"6：再次调用bean工厂后置处理器；"},"6":{"objectClass":"MindNode","ID":"YCC7V","text":" 7：当然spring还会干很多事情，比如国际化，比如注册BeanPostProcessor等等，如果我们只关心如何实例化一个bean的话那么这一步就是spring调用finishBeanFactoryInitialization方法来实例化单例的bean，实例化之前spring要做验证，需要遍历所有扫描出来的类，依次判断这个bean是否Lazy，是否prototype，是否abstract等等；"},"7":{"objectClass":"MindNode","ID":"2NH2D","text":" 8：如果验证完成spring在实例化一个bean之前需要推断构造方法，因为spring实例化对象是通过构造方法反射，故而需要知道用哪个构造方法； "},"8":{"objectClass":"MindNode","ID":"02T5N","text":"9：推断完构造方法之后spring调用构造方法反射实例化一个对象；注意我这里说的是对象、对象、对象；这个时候对象已经实例化出来了，但是并不是一个完整的bean，最简单的体现是这个时候实例化出来的对象属性是没有注入，所以不是一个完整的bean； "},"9":{"objectClass":"MindNode","ID":"C13JD","text":"10：spring处理合并后的beanDefinition(合并？是spring当中非常重要的一块内容，后面的文章我会分析)； "},"10":{"objectClass":"MindNode","ID":"66G65","text":"11：判断是否支持循环依赖，如果支持则提前把一个工厂存入singletonFactories——map； "},"11":{"objectClass":"MindNode","ID":"GEJ3J","text":"12：判断是否需要完成属性注入 "},"12":{"objectClass":"MindNode","ID":"2Y1I9","text":"13：如果需要完成属性注入，则开始注入属性 "},"13":{"objectClass":"MindNode","ID":"TSLOC","text":"14：判断bean的类型回调Aware接口 "},"14":{"objectClass":"MindNode","ID":"M4JGJ","text":"15：调用生命周期回调方法 "},"15":{"objectClass":"MindNode","ID":"572RM","text":"16：如果需要代理则完成代理"},"16":{"objectClass":"MindNode","ID":"H8IH8","text":"17：put到单例池——bean完成——存在spring容器当中"},"objectClass":"NSArray"},"text":"文字描述"},"objectClass":"NSArray"},"text":"Bean启动流程"},"2":{"objectClass":"MindNode","ID":"YPMKX","children":{"0":{"objectClass":"MindNode","ID":"9X25V","children":{"0":{"objectClass":"MindNode","ID":"O0655","text":"SpringBean：受Spring管理的对象，可能经历了Spring生命周期"},"1":{"objectClass":"MindNode","ID":"T5QC3","text":"对象：符合java语法构建的对象"},"objectClass":"NSArray"},"text":"springbean 和对象"},"1":{"objectClass":"MindNode","ID":"L3HSH","children":{"0":{"objectClass":"MindNode","ID":"T957L","children":{"0":{"objectClass":"MindNode","ID":"RNJF5","text":"判断当前需要创建的bean是否在Exclusions集合，被排除的bean"},"objectClass":"NSArray"},"text":"this.inCreationCheckExclusions.contains(beanName)"},"1":{"objectClass":"MindNode","ID":"ZY2BF","children":{"0":{"objectClass":"MindNode","ID":"CD15W","text":"当前bean不在排除的集合当中那么则这个bean添加到singletonsCurrentlyInCreation（Set）"},"objectClass":"NSArray"},"text":"this.singletonsCurrentlyInCreation.add(beanName)"},"objectClass":"NSArray"},"text":"beforeSingletonCreation(String beanName)"},"2":{"objectClass":"MindNode","ID":"6X600","children":{"0":{"objectClass":"MindNode","ID":"7WYZ3","text":"instanceWrapper = createBeanInstance(beanName, mbd, args) 创建对象"},"1":{"objectClass":"MindNode","ID":"1M53Z","text":"boolean earlySingletonExposure = (mbd.isSingleton() && this.allowCircularReferences &&isSingletonCurrentlyInCreation(beanName))  是否支持（开启）循环依赖"},"2":{"objectClass":"MindNode","ID":"7T21T","children":{"0":{"objectClass":"MindNode","ID":"0C44D","children":{"0":{"objectClass":"MindNode","ID":"311K3","text":"单例池中不存在才会add，因为这里是为循环依赖服务的，如果在单例池中，这个对象已经是bean了，已经完成循环依赖了，对象已经创建，就不需要进if了"},"objectClass":"NSArray"},"text":"if (!this.singletonObjects.containsKey(beanName))"},"1":{"objectClass":"MindNode","ID":"PN7SX","children":{"0":{"objectClass":"MindNode","ID":"SBM2J","text":"把对象put到二级map——singletonFactories"},"objectClass":"NSArray"},"text":"this.singletonFactories.put(beanName, singletonFactory)"},"2":{"objectClass":"MindNode","ID":"4X4JC","children":{"0":{"objectClass":"MindNode","ID":"12NKM","children":{"0":{"objectClass":"MindNode","ID":"328U4","text":"一级 map：singletonObjects 主要存储单例bean"},"1":{"objectClass":"MindNode","ID":"HCWG6","text":"二级 map：singletonFactories 主要存储ObjectFactory类型的工厂对象"},"2":{"objectClass":"MindNode","ID":"OO3BQ","text":"三级 map：earlySingletonObjects 主要存储半成品的bean"},"objectClass":"NSArray"},"text":"三级map"},"1":{"objectClass":"MindNode","ID":"3XDM6","text":"三级map中存储的是同一个对象，Spring的三级缓存不需要同时存在，如果1中存在了，二级、三级就需要remove，现在一级没有，二级添加，三级直接remove"},"objectClass":"NSArray"},"text":"this.earlySingletonObjects.remove(beanName)"},"3":{"objectClass":"MindNode","ID":"458X2","text":"this.registeredSingletons.add(beanName)"},"objectClass":"NSArray"},"text":"addSingletonFactory() 添加单例工厂，生成半成品的bean，即没有经历完整生命周期的bean"},"3":{"objectClass":"MindNode","ID":"S1A3W","children":{"0":{"objectClass":"MindNode","ID":"2O28D","text":"循环依赖主要实现步骤"},"1":{"objectClass":"MindNode","ID":"7D45M","children":{"0":{"objectClass":"MindNode","ID":"3QL2E","text":"getBean(y) 走bean y 的生命周期"},"objectClass":"NSArray"},"text":"x.populate(y)"},"objectClass":"NSArray"},"text":"populateBean() 属性注入"},"objectClass":"NSArray"},"text":"AbstractAutowireCapableBeanFactory.doCreateBean(String, RootBeanDefinition, Object[])"},"3":{"objectClass":"MindNode","ID":"OFP3G","children":{"0":{"objectClass":"MindNode","ID":"011LH","text":"不支持原型"},"1":{"objectClass":"MindNode","ID":"779DG","text":"不支持构造方法注入的bean"},"objectClass":"NSArray"},"text":"总结"},"objectClass":"NSArray"},"text":"循环依赖"},"3":{"objectClass":"MindNode","ID":"MVC1K","text":"DI时序图"},"4":{"objectClass":"MindNode","ID":"Z4S36","children":{"0":{"objectClass":"MindNode","ID":"R22QA","text":"核心原理"},"1":{"objectClass":"MindNode","ID":"L3TWE","text":"设计思想"},"2":{"objectClass":"MindNode","ID":"HX8SD","children":{"0":{"objectClass":"MindNode","ID":"CQ21Y","children":{"0":{"objectClass":"MindNode","ID":"73818","children":{"0":{"objectClass":"MindNode","ID":"527AU","text":""},"1":{"objectClass":"MindNode","ID":"8F77T","text":""},"objectClass":"NSArray"},"text":"@Import TransactionManagementConfigurationSelector","maxWidthLine":328},"objectClass":"NSArray"},"text":"@EnableTransactionManagement"},"1":{"objectClass":"MindNode","ID":"1O4V1","text":"@Transactional"},"objectClass":"NSArray"},"text":"重要细节"},"3":{"objectClass":"MindNode","ID":"I664D","children":{"0":{"objectClass":"MindNode","ID":"2U411","text":"入口"},"1":{"objectClass":"MindNode","ID":"5RL76","text":"选择策略"},"2":{"objectClass":"MindNode","ID":"37241","text":"调用方法"},"3":{"objectClass":"MindNode","ID":"T22V5","text":"触发通知"},"objectClass":"NSArray"},"text":"主要流程"},"4":{"objectClass":"MindNode","ID":"37F69","children":{"0":{"objectClass":"MindNode","ID":"1ENJ3","children":{"0":{"objectClass":"MindNode","ID":"UG9M6","children":{"0":{"objectClass":"MindNode","ID":"LVI9Q","children":{"0":{"objectClass":"MindNode","ID":"362JE","text":"AbstractBeanFactory.getMergedLocalBeanDefinition(String)"},"1":{"objectClass":"MindNode","ID":"C3X5M","text":"AbstractBeanFactory.getBean(String)"},"2":{"objectClass":"MindNode","ID":"824N2","children":{"0":{"objectClass":"MindNode","ID":"3TSJX","children":{"0":{"objectClass":"MindNode","ID":"MB179","children":{"0":{"objectClass":"MindNode","ID":"S327P","children":{"0":{"objectClass":"MindNode","ID":"71ZM2","children":{"0":{"objectClass":"MindNode","ID":"G43G1","text":"AbstractAutoProxyCreator.postProcessBeforeInstantiation()"},"objectClass":"NSArray"},"text":"AbstractAutowireCapableBeanFactory.applyBeanPostProcessorsBeforeInstantiation()"},"objectClass":"NSArray"},"text":"AbstractAutowireCapableBeanFactory.resolveBeforeInstantiation()"},"1":{"objectClass":"MindNode","ID":"5H0XG","children":{"0":{"objectClass":"MindNode","ID":"4XV31","text":"AbstractAutowireCapableBeanFactory#populateBean：属性设置"},"1":{"objectClass":"MindNode","ID":"39QI4","text":"AbstractAutowireCapableBeanFactory#initializeBean()=》初始化bean"},"2":{"objectClass":"MindNode","ID":"A3WR5","text":"#applyBeanPostProcessorsBeforeInitialization"},"3":{"objectClass":"MindNode","ID":"C5QRM","children":{"0":{"objectClass":"MindNode","ID":"1KYF5","children":{"0":{"objectClass":"MindNode","ID":"EDMCI","text":"AbstractAutoProxyCreator#wrapIfNecessary"},"objectClass":"NSArray"},"text":"AbstractAutoProxyCreator#postProcessAfterInitialization"},"objectClass":"NSArray"},"text":"AbstractAutowireCapableBeanFactory#applyBeanPostProcessorsAfterInitialization"},"objectClass":"NSArray"},"text":"AbstractAutowireCapableBeanFactory.doCreateBean()"},"objectClass":"NSArray"},"text":"AbstractAutowireCapableBeanFactory.createBean()"},"objectClass":"NSArray"},"text":"DefaultSingletonBeanRegistry.getSingleton()"},"objectClass":"NSArray"},"text":"AbstractBeanFactory.doGetBean()"},"objectClass":"NSArray"},"text":"DefaultListableBeanFactory.preInstantiateSingletons()","maxWidthLine":376},"objectClass":"NSArray"},"text":"AbstractApplicationContext.finishBeanFactoryInitialization(ConfigurableListableBeanFactory)"},"objectClass":"NSArray"},"text":"初始化"},"1":{"objectClass":"MindNode","ID":"V05CY","text":"调用"},"2":{"objectClass":"MindNode","ID":"527X6","text":"通知"},"objectClass":"NSArray"},"text":"时序图"},"objectClass":"NSArray"},"text":"AOP"},"5":{"objectClass":"MindNode","ID":"02Y9B","children":{"0":{"objectClass":"MindNode","ID":"0I5HS","children":{"0":{"objectClass":"MindNode","ID":"1PWW5","children":{"0":{"objectClass":"MindNode","ID":"68BGJ","text":"HttpServlet"},"1":{"objectClass":"MindNode","ID":"RU9A7","text":"HttpServletBean.init()"},"2":{"objectClass":"MindNode","ID":"AR4V9","children":{"0":{"objectClass":"MindNode","ID":"3KUKI","text":"initWebApplicationContext()：初始化web上下文"},"objectClass":"NSArray"},"text":"FrameworkServlet.initServletBean()"},"objectClass":"NSArray"},"text":"初始化"},"1":{"objectClass":"MindNode","ID":"O2335","children":{"0":{"objectClass":"MindNode","ID":"D156A","text":"FrameworkServlet.service()"},"1":{"objectClass":"MindNode","ID":"772II","text":"HttpSevelt.server() 判断方法类型"},"2":{"objectClass":"MindNode","ID":"6NBQ7","text":"FrameworkServlet.doGet() 具体根据请求Method决定"},"3":{"objectClass":"MindNode","ID":"0755C","text":"FrameworkServlet.processRequest() 统一处理请求方法"},"4":{"objectClass":"MindNode","ID":"L9J2O","children":{"0":{"objectClass":"MindNode","ID":"71CXL","text":"FlashMapManager 闪存管理器设置属性"},"1":{"objectClass":"MindNode","ID":"Q277J","children":{"0":{"objectClass":"MindNode","ID":"31687","text":"检测是否文件流"},"1":{"objectClass":"MindNode","ID":"AE517","children":{"0":{"objectClass":"MindNode","ID":"7N0YQ","text":"遍历HandlerMappings"},"1":{"objectClass":"MindNode","ID":"QH868","text":"RequestMappingHandlerMapping.getHandlerInternal()"},"objectClass":"NSArray"},"text":"DispatcherServelt.getHandler() 获取执行器链 =>HandlerExecutionChain"},"2":{"objectClass":"MindNode","ID":"91G5S","text":"DispatcherServelt.getHandlerAdapter() => HandlerAdapter"},"3":{"objectClass":"MindNode","ID":"82V42","text":"HandlerExecutionChain.applyPreHandle() => 前置拦截处理"},"4":{"objectClass":"MindNode","ID":"G2801","text":"HandlerAdapter.handle() => 实际处理"},"5":{"objectClass":"MindNode","ID":"2008W","text":"HandlerExecutionChain.applyPostHandle()=>后置拦截处理"},"6":{"objectClass":"MindNode","ID":"EKFJE","children":{"0":{"objectClass":"MindNode","ID":"DL3J1","children":{"0":{"objectClass":"MindNode","ID":"4SJ7L","text":"ViewResolver.resolveViewName()=>调用实际渲染器渲染"},"objectClass":"NSArray"},"text":"DispatcherServelt.render()=>视图渲染"},"1":{"objectClass":"MindNode","ID":"W1RML","text":"HandlerExecutionChain.afterCompletion()=>完成拦截处理"},"objectClass":"NSArray"},"text":"DispatcherServlet.processDispatchResult() =>结果处理"},"objectClass":"NSArray"},"text":"DispatcherServlet.doDispatch() 分发逻辑"},"objectClass":"NSArray"},"text":"DispatcherServlet.doService() 具体处理逻辑"},"5":{"objectClass":"MindNode","ID":"NU3HY","text":"response"},"objectClass":"NSArray"},"text":"运行时"},"objectClass":"NSArray"},"text":"时序图"},"objectClass":"NSArray"},"text":"SpringMVC"},"objectClass":"NSArray"},"text":"Spring"},"ID":"8A316","style":500,"lineKeepThin":true,"layoutCompact":true}