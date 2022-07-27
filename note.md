1、SpringAOP 实现热插拔

web-bus  
spring-plugin

```
{
"config": [
{
"active":true,
"className": "",
"id": "1",
"jarRemoteUrl":"file:/home/config/**.jar",
"name":"统计方法调用次数"
}
],
"name": "插件库"
}

public void activePlugin(String pluginId) {
	if (!configs.containsKey(pluginId)) {
	throw
	}
	PluginCOnfig config = configs.get(id)
	
}


```



deferredRest Async