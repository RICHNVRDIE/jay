   FROM centos:7
RUN yum -y update && \
yum -y install java-1.8.0-openjdk
RUN mkdir /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.74.tar.gz
RUN mv apache-tomcat-9.0.74/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
