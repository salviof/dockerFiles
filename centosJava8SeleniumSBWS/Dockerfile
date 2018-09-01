FROM centos:centos7
#ADD coletor.jar /coletor
CMD ["/usr/sbin/init"]
LABEL Description="Estação contendo Centos 7.5 + Java8"
#ENTRYPOINT ["java"]
ENV JAVA_HOME=/usr/java/latest 
ENV ENDERECO_SDK=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163
ENV ARQUIVO_SDK=jdk-8u131-linux-x64.rpm
RUN yum -y install wget  && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $ENDERECO_SDK/$ARQUIVO_SDK -O /tmp/jdk-8-linux-x64.rpm && yum -y install /tmp/jdk-8-linux-x64.rpm
EXPOSE 8080
#user coletor

