FROM ubuntu:latest
COPY /source /var/www/html/
RUN apt-get update -y
RUN apt install apache2 -y
RUN service apache2 start
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
