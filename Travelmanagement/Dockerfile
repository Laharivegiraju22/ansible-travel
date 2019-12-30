FROM tomcat:9.0

RUN echo 'Deploying War on Server'

COPY /target/travelmanagement.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"] 
