
# Use the latest Ubuntu as the base image
FROM ubuntu:latest

LABEL DEVOPSENGG="Poonam"

RUN apt update 
RUN apt install unzip apache2 -y
RUN rm -rf /var/www/html/index.html

WORKDIR /var/www/html

COPY spering-html /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]