该ES中有几个点需要注意：
1. 该服务不写日志文件(GC日志除外),如果你想要 elasticsearch.yml 中的 path.logs: /usr/share/elasticsearch/logs 中有服务的日志需要配置镜像中的 log2j2.properties
2. 该服务的配置文件 通过 环境变量传入  eg: url=ip:prot/park_elasticsearch.yml
