FROM php:8.0-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get -y update
RUN apt-get install -y vim 

COPY www/WoodyToys/vitrine/WoodyToys-vitrine.html /var/www/html/WoodyToys/vitrine/WoodyToys-vitrine.html
COPY www/WoodyToys/vitrine/WoodyToys-vitrine.css /var/www/html/WoodyToys/vitrine/css/WoodyToys-vitrine.css

COPY www/WoodyToys/b2b/WoodyToys-B2B.php /var/www/html/WoodyToys/b2b/index.php
COPY config/sites-available/WoodyToys.conf /etc/apache2/sites-available/WoodyToys.conf
# COPY config/sites-available/WoodyToys-vitrine.conf /etc/apache2/sites-available/WoodyToys-vitrine.conf
# COPY config/sites-available/WoodyToys-B2B.conf /etc/apache2/sites-available/WoodyToys-B2B.conf
COPY config/apache2.conf /etc/apache2/apache2.conf
COPY config/hosts   /etc/hosts

RUN a2dissite 000-default.conf
# RUN a2ensite WoodyToys-vitrine.conf
RUN a2ensite WoodyToys.conf