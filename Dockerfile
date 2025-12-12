FROM tomcat:10.1-jdk17
# or tomcat:8-jdk8-corretto
#or tomcat:8.5-jdk8
# Dummy text to test 
COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

# Git webhook trigger demo
# TO test github push trigger
