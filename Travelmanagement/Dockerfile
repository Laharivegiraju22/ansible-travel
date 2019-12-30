FROM tomcat:9.0

RUN echo 'Deploying War on Server'

COPY /target/travelmanagement.war /usr/local/tomcat/webapps

EXPOSE 8082

CMD ["catalina.sh", "run"] 
