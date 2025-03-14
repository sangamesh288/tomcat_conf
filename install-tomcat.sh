#!/bin/bash
ver=`curl --silent http://mirror.vorboss.net/apache/tomcat/tomcat-9/ | grep v9 | awk '{split($5,c,">v") ; split(c[2],d,"/") ; print d[1]}'`
sudo yum install -y java wget git
sudo wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.102/bin/apache-tomcat-9.0.102.tar.gz
sudo tar xvzf apache-tomcat-9.*
sudo git clone https://github.com/sangamesh288/tomcat_conf.git
sudo cp /context.xml /apache-tomcat-9.0.102/webapps/manager/META-INF/context.xml
sudo cp /context.xml /apache-tomcat-9.0.102/webapps/host-manager/META-INF/context.xml
sudo cp /tomcat-users.xml /apache-tomcat-9.0.102/conf/tomcat-users.xml
cd /apache-tomcat-9.0.102
sudo sh /bin/startup.sh
