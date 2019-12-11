# EnterprisePermissions  
企业权限管理系统  
----------------  
##项目搭建  
一、配置文件  
1.搭建项目，配置pom.xml引入相关的依赖
>>Spring相关基本依赖：spring-beans,spring-context  
>>SpringMVC和SpringWeb相关依赖：spring-web,spring-webmvc  
>>数据库连接的依赖：spring-jdbc  
>>Mybatis相关的依赖：mybatis，mybatis-spring  
>>Druid的相关依赖：druid  
>>mysql的相关依赖：mysql-connector-java  
>>lombok、jackson依赖：lombok,jackson-datatype-guava  
>>logback的相关依赖：logback-core，logback-classic，slf4j-api  

2.配置web.xml文件  
>>主要设置：SpringBean、Springmvc、Druid数据连接池、字符过滤器、默认欢迎界面等  

3.配置spring-servlet.xml文件  
>>主要设置：开启上下文注解、开启包扫描、启动springmvc注解、配置请求解析器、视图解析器  

4.配置applicationContext.xml文件  
>>主要配置数据源dataSource、sqlSessionFactory、事务transaction、Druid  

5.配置mybatis-config.xml  
>>主要配置：别名、监听、缓存  

6.配置logback.xml  
>>主要配置：appender、logger、root。  

二、





 





