FROM php:8.0-apache

RUN apt-get update -y
RUN apt-get install -y vim nano
RUN apt-get install -y iputils-ping
RUN apt-get install -y dnsutils
RUN apt-get install -y lynx
RUN apt-get install -y net-tools
RUN apt-get install nano


RUN docker-php-ext-install mysqli pdo pdo_mysql


COPY intranet/index.php /var/www/html/index.php
COPY intranet/intranet.conf /etc/apache2/sites-available/intranet.conf

RUN a2dissite 000-default.conf
RUN a2ensite intranet.conf

CMD tail -f /dev/null
