# Mybatis

## Mybatis 的优缺点
优点：
- 封装了JDBC，更简洁
- 基于SQL编程，相当灵活，支持编写动态SQL
- 动态SQL标签
- 和Spring很好的集成
缺点：
- 数据库移植性差，语法耦合
- SQL语句编写量大，不利于管理
## Mybatis 中用到了哪些设计模式？举例说明
- SqlSessionFactory:工厂模式
- SqlSessionFactoryBuilder:建造者模式
- MapperProxy: 代理模式
- InterceptorChain：插件执行链，责任链模式
- CacheingExecutor:装饰器模式
## Mybatis 是否支持延迟加载？如果支持，实现原理是什么？
支持，仅一对一/一对多支持，lazyLoadingEnabled配置  
实现原理是，对象是代理对象，实际调用的时候，调用实际的对象，获取属性值
## 简单说下Mybatis 的缓存机制
支持二级缓存，一级缓存由PrepertualCache实现，内部实现是HashMap，作用域是Session级别的，查询默认使用，更新清空缓存。
二级缓存，也是基于PrepertualCache实现，作用域是Mapper，命名空间级别的；使用缓存需要配置<cache/>标签;
## 四大对象是什么时候被代理的？
Executor : openSession 的时候，通过configuration.newExecutor 时，会被interceptor.pluginAll 方法代理
其他三个：在MapperProxy 实际执行的时候，创建和Executor 类似
## 代理能否被代理？代理对象是谁创建的？怎么调用原方法？
可以，Mybatis 提供了Plugin 工具类，生成代理对象Plugin, Invocation 对象包装了下一个目标对象，
## Mybatis 与 Hibernate的比较
