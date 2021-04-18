#image de base
FROM debian:latest

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y vim
RUN apt-get install -y bind9
RUN apt-get install dnsutils -y
RUN apt-get install bind9-doc -y

COPY bind/named.conf.options /etc/bind/named.conf.options