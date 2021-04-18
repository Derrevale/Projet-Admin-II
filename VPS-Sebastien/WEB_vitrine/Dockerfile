FROM debian:latest

RUN apt-get -y update 
RUN apt-get install -y vim
RUN apt-get install -y apache2
RUN apt-get install -y php
RUN apt-get install -y mysql-server

EXPOSE 80

WORKDIR /var/www/html

# ADD . /var/www/html

COPY index.html /var/www/html/index.html
COPY index.css /var/www/html/index.css
COPY /phpFiles/ /var/www/html/phpFiles/

ENTRYPOINT [ "/usr/sbin/apache2ctl" ]
CMD ["-D", "FOREGROUND"]