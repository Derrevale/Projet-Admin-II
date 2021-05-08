FROM php:8.0-apache

#Installation de pdo pour pouvoir se connecter à la base de données 
RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y net-tools bind9 bind9utils dnsutils iputils-ping

#Créé deux emplacements différents pour les logs d'erreurs liés aux deux virtual hosts (b2b et vitrine)
COPY www/WoodyToys/b2b/b2b_errors.log /var/log/apache2/WoodyToys_error_logs/b2b/b2b_errors.log
COPY www/WoodyToys/vitrine/vitrine_errors.log /var/log/apache2/WoodyToys_error_logs/vitrine/vitrine_errors.log

#Copies des fichiers reprenant la structures du sitre vitrine et b2b
COPY www/WoodyToys/vitrine/index.html /var/www/html/WoodyToys/vitrine/index.html
COPY www/WoodyToys/vitrine/WoodyToys-vitrine.css /var/www/html/WoodyToys/vitrine/css/WoodyToys-vitrine.css
COPY www/WoodyToys/b2b/WoodyToys-B2B.php /var/www/html/WoodyToys/b2b/index.php
COPY www/WoodyToys/b2b/css/ /var/www/html/WoodyToys/b2b/css/

#Copies des fichiers de configurations des virtuals hosts
COPY config/apache2.conf /etc/apache2/apache2.conf
COPY config/sites-available/WoodyToys-vitrine.conf /etc/apache2/sites-available/WoodyToys-vitrine.conf
COPY config/sites-available/WoodyToys-B2B.conf /etc/apache2/sites-available/WoodyToys-B2B.conf

#Désactivation du virtualhost installé par défaut avec apache2 et activation des Virtual Hosts du site vitrine et b2b
RUN a2dissite 000-default.conf
RUN a2ensite WoodyToys-B2B.conf
RUN a2ensite WoodyToys-vitrine.conf