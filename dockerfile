FROM httpd:2.4.43-alpine


ENV APACHE_LOG_DIR /var/log/apache2

COPY index.html /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND
