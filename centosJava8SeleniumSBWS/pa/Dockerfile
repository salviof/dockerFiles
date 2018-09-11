FROM centos:centos7
ADD coleta.jar /home/baseColeta/
ADD installChromeDriver.sh /usr/local/bin
ADD chromedriver /usr/local/bin/
ADD google-chrome.repo /etc/yum.repos.d/google-chrome.repo

ADD ean_sem_fotos.txt /home/superBits/projetos/vip/coletas/paoDeAcucar
LABEL Description="Estação contendo Centos 7.5 + Java8"
#ENTRYPOINT ["java"]
ENV JAVA_HOME=/usr/java/latest 
ENV ENDERECO_SDK=http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163
ENV ARQUIVO_SDK=jdk-8u131-linux-x64.rpm
RUN yum -y install wget  && wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $ENDERECO_SDK/$ARQUIVO_SDK -O /tmp/jdk-8-linux-x64.rpm && yum -y install /tmp/jdk-8-linux-x64.rpm
RUN installChromeDriver.sh 
EXPOSE 8080
COPY google-chrome.repo  etc/yum.repos.d/google-chrome.repo
#user coletor
ENTRYPOINT java -jar /home/baseColeta/coleta.jar >/home/superBits/projetos/vip/coletas/paoDeAcucar/logColetor.txt
#CMD ["/bin/bash"]




