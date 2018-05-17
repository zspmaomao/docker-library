该ES中有几个点需要注意：
1. 该服务不写日志文件(GC日志除外),如果你想要 elasticsearch.yml 中的 path.logs: /usr/share/elasticsearch/logs 中有服务的日志需要配置镜像中的 log2j2.properties
2. 该服务的配置文件 通过 环境变量传入  eg: url=ip:prot/park_elasticsearch.yml


### 背景
       使用docker升级ES版本，由 5.5.1 升级至 6.2.4 platinum 。  
       
### 6.2.4特性  

        1. 一个index 中，只能有一个 type.https://www.elastic.co/guide/en/elasticsearch/reference/6.2/removal-of-types.html  
        
        2. 6.2开始,可以在ES中收集 Slow Log(https://www.elastic.co/guide/en/elasticsearch/reference/6.2/index-modules-slowlog.html#index-slow-log) ,以及GC log(https://www.elastic.co/guide/en/elasticsearch/reference/6.2/_gc_logging.html).  
        
        3. 所有 REST 对ES的操作的 head 都必须有 Content-type: application/json  (https://www.elastic.co/guide/en/elasticsearch/reference/6.2/common-options.html#_content_type_requirements)  
        
### 升级注意事项    


         1. ES 5.5.1到6.2.4不支持平滑升级,5.6到6.0支持平滑升级。    
         
         2. ES docker官方镜像中是以 ID:1000 用户启动ES的，且不支持root 启动。  
         
         3. 配置自定义 logPath与dataPath需要注意,权限问题,  
         
         4. 官方镜像中,Log2J2 中只有 console 日志,没有File日志配置,这一点需要注意。  
         
### 资源   

         1. docker: https://www.elastic.co/guide/en/elasticsearch/reference/6.2/docker.html
         
