FROM ubuntu:latest
WORKDIR /source
COPY index.html run.php /var/www/html/
RUN apt-get update -y
RUN apt install apache2 -y
RUN apt install php -y
RUN service apache2 start
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
