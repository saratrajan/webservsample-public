FROM ubuntu:latest

RUN apt-get update

RUN apt-get install apache2 -y php7.0 libapache2-mod-php7.0

RUN a2enmod php7.0


ENV APACHE_LOG_DIR /var/log/apache2

COPY index.html /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND

