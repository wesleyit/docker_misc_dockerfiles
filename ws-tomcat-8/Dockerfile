## Use the 8.0 version of Debian (stable)
FROM wesleyit/ws-debian-base:jessie

## Author
MAINTAINER Wesley Rodrigues da Silva <wesley.it@gmail.com>

## Run a complete upgrade and install the Oracle JDK repo
RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN rm -rf /var/lib/apt/lists/*

## Add the repository and install JDK8
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | \
	debconf-set-selections && \
	echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | \
		tee /etc/apt/sources.list.d/webupd8team-java.list && \
	echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | \
		tee -a /etc/apt/sources.list.d/webupd8team-java.list && \
	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
	apt-get update -y && \
	apt-get install oracle-java8-installer oracle-java8-set-default -y

## Export some useful variables
ENV	JDK_HOME /usr/lib/jvm/java-8-oracle
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
ENV	TOMCAT_HOME=/opt/tomcat
ENV	CATALINA_HOME=/opt/tomcat

## Download and extract tomcat to /opt
RUN wget -O /tmp/apache-tomcat.tar.gz \
		http://archive.apache.org/dist/tomcat/tomcat-8/v8.5.3/bin/apache-tomcat-8.5.3.tar.gz && \
		gunzip /tmp/apache-tomcat.tar.gz && \
    tar -C /opt -xf /tmp/apache-tomcat.tar && \
    ln -s /opt/apache-tomcat-8.5.3 /opt/tomcat

## Send our preconfigured server.xml to the container
COPY logging.properties /opt/tomcat/conf/logging.properties
COPY server.xml /opt/tomcat/conf/server.xml

## Persistence and Ports
VOLUME /opt/tomcat/webapps
VOLUME /logs
EXPOSE 8080

## Run the Tomcat 8 server by default
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
