# Base Image
FROM ubuntu:16.04

# Update APT-REPO
RUN apt-get update

# Install Apache 
RUN apt-get install apache2 -y 

# Custom Web Page
RUN echo "Hello World" > /var/www/html/hello.html

# Copy Custom Web Page
COPY index.html /var/www/html/web.html

# Expose
EXPOSE 80 3306

# Excute the Apache Service 
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
