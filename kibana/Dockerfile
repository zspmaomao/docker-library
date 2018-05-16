#################################
#version: 6.2.4
#desc: kibana-sentinl
#version
#
#################################
FROM docker.elastic.co/kibana/kibana-x-pack:6.2.4
MAINTAINER maomao


WORKDIR /usr/share/kibana
#RUN mkdir temp 
#COPY sentinl-v6.2.3.zip ./temp/sentinl-v6.2.3.zip
USER root
COPY sentinl-v6.2.3.zip sentinl-v6.2.3.zip
#RUN /usr/share/kibana/bin/kibana-plugin install file:///usr/share/kibana/temp/sentinl-v6.2.3.zip
RUN /usr/share/kibana/bin/kibana-plugin install file:///usr/share/kibana/sentinl-v6.2.3.zip
RUN yum -y install vim wget curl
#RUN apt-get install -y  curl
COPY start.sh start.sh
CMD ["sh","start.sh"]
