
FROM openjdk:8-jre 
MAINTAINER maomao
WORKDIR /opt
ENV CEREBRO_VERSION 0.7.3 
COPY cerebro-0.7.3.tgz cerebro-0.7.3.tgz
RUN cd /opt/ \
   # && wget -O cerebro-${CEREBRO_VERSION}.tgz https://github.com/lmenezes/cerebro/releases/download/v${CEREBRO_VERSION}/cerebro-${CEREBRO_VERSION}.tgz \
    && tar zxvf cerebro-${CEREBRO_VERSION}.tgz \
    && rm cerebro-${CEREBRO_VERSION}.tgz \
    && mkdir cerebro-${CEREBRO_VERSION}/logs \
    && mv cerebro-${CEREBRO_VERSION} cerebro
EXPOSE 9000 
CMD ["./cerebro/bin/cerebro"]
