FROM php:8.0-apache
RUN apt-get update -y
RUN apt-get install -y vim nano
COPY intranet/index.html /var/www/html/index.html
COPY intranet/intranet.conf /etc/apache2/sites-available/intranet.conf
RUN a2dissite 000-default.conf
RUN a2ensite intranet.conf
