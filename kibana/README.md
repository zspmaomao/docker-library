1.该服务 ES 地址通过  环境变量传入: eg:  ELASTICSEARCH_URL=http://ip:port
2.由于 sentinl 最新版本为 6.2.3 顾从官网下载完成后,需要解压后编辑 package.json文件,调整其中的  "version": "6.2.3"  为   "version": "6.2.4" 
3.在start.sh脚本中通过 传参可以下载下来 installPlugin.sh 运行自动安装其他插件。

### Other

        1. docker:  
        
                        sentinl: https://github.com/sirensolutions/sentinl  
                        
                        kibana: https://www.docker.elastic.co/  
                        
