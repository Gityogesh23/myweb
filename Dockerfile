FROM tomcat:10jdk17-alpine

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/myweb.war /usr/local/tomcat/webapps/myweb.war

EXPOSE 8080

# FROM tomcat:10.1-jdk17
# or tomcat:8-jdk8-corretto
#or tomcat:8.5-jdk8
# Dummy text to test 
# COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

# Git webhook trigger demo
# TO test github push trigger

# This uses:

# Tomcat 8.5 (still maintained)

# JDK 8 (supported)

# Docker manifest V2 (required)
