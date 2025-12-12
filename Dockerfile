FROM tomcat:10.1-jdk17
# Dummy text to test 
COPY target/myweb*.war /usr/local/tomcat/webapps/myweb.war

# Git webhook trigger demo
# TO test github push trigger
