# Spring

## 一、spring生命周期

#### 三级缓存

org.springframework.beans.factory.support.DefaultSingletonBeanRegistry

一级

Map<String, Object> singletonObjects = new ConcurrentHashMap<>(256);

二级

Map<String, Object> earlySingletonObjects = new ConcurrentHashMap<>(16);

三级

Map<String, ObjectFactory<?>> singletonFactories = new HashMap<>(16);



单例Bean对象创建时机

org.springframework.beans.factory.support.DefaultSingletonBeanRegistry





## 二、spring的循环依赖

### 什么是循环依赖

### 循环依赖实现



### 循环依赖注意点