# FROM maven:3.8-eclipse-temurin-8 AS build
# WORKDIR /app
# COPY pom.xml .
# COPY src ./src
# RUN mvn clean package

# FROM tomcat:9.0-jre8-temurin
# RUN rm -rf /usr/local/tomcat/webapps/*
# COPY --from=build /app/target/myweb.war
#                   /usr/local/tomcat/webapps/ROOT.war

# -------- BUILD STAGE --------
FROM maven:3.8-eclipse-temurin-8 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# -------- RUNTIME STAGE --------
FROM tomcat:9.0-jre8-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh","run"]
                  


# FROM tomcat:10jdk17-alpine

# RUN rm -rf /usr/local/tomcat/webapps/*

# COPY target/myweb.war /usr/local/tomcat/webapps/myweb.war

# EXPOSE 8080


#choose docker image as per pom.xml -->tomact:9-->compatible with javax.servlet -->see in groupID tag and jdk8 or 17 as per requirement in pom.xml
#tomcat:10 --><groupId>jakarta.servlet</groupId> and respective jdk8 or 17 as per req in pom.xml--><maven.compiler.source>1.8</maven.compiler.source>

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
