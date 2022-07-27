# SpringCloud
## 1. 什么是SpringCloud
一套分布式服务治理的方案
## 2. 什么是微服务  

## 3. SrpingCloud 有什么优势  
使用SpringBoot开发分布式微服务时，面临如下问题：  
1）与分布式系统类似的复杂性：网络问题、延迟开销、带宽问题、安全问题  
2）服务发现：服务如何互相发现，相互协作；SpringCloud涉及一个服务目录，在该目录中注册服务，连接并查找到该目录下所有服务  
3）冗余：分布式系统存在的冗余问题  
4）负载均衡：负载平衡改善各个计算资源的工作负荷，例如计算机内存、集群、链路、CPU等  
5）性能问题：各种应用运行的性能监控  
6）部署复杂性：DevOPS 技能的要求  
## 4. 什么是服务熔断？什么是服务降级？  
服务熔断：微服务链路保护机制，当某个服务无响应或响应超时，会进行服务降级，进而熔断该节点微服务的调用，快速返回，一定时间后，尝试调用进行熔断恢复。  
服务降级：对于一些非核心服务，为了不影响核心业务的使用，当服务熔断时，不调用服务，而是返回本地配置的缺省值，避免服务直接挂掉。  
实现方式：通过Hystrix 框架可以实现服务限流、熔断、降级，保障服务的可用性。  
注解： @EnableHystrix ： 开启熔断  ；@HystrixCommand() 方法调用超时降级调用配置 
## 5. 微服务问题及解决方案  

| 微服务条目 | 落地技术 | 说明 |
| --- | --- | --- |
| 服务开发 | Spring+SpringBoot+SpringMVC |
| 服务注册及发现 | Eurake、Consul、Zookeeper |
| 服务配置管理 | Archaius/Diamond |
| 服务调用 | RPC、REST、gRPC |
| 服务熔断器 | Hystrix、Envoy |
| 负载均衡 | Ribbon、Nginx |
| 服务接口调用（简化工具） | Feign |
| 消息队列 | Kafka、RabbitMQ |
| 服务配置中心配置管理 | SpringCloudConfig、Chef |
| 服务路由（网关）| Zuul、SpringCloudGateWay |
| 服务监控 | Zabbix/Naggios/Metrics/Spectator |
| 全链路追踪 | Zipkin、Brave、Dapper |
| 服务部署 | Docker、K8s |
| 数据流操作开发包 | SpringCloudStream |
| 事件消息总线 | Spring Cloud Bus |
## SpringCloud核心框架原理
## Eureka 注册中心原理
1. 项目里使用的Eurake server 版本：1.9.13
## Feign核心原理
针对接口生成动态代理，然后通过动态代理生成http请求，调用新的接口，底层类似httpClient发送http请求
## Zuul网关原理
1. 在网关配置请求路径和服务之间的关系，请求来了，直接找到要匹配的服务
2. ribbon 从注册中心拉取注册表，负载均衡，选择一台机器
3. 封装为http请求，发http到指定机器