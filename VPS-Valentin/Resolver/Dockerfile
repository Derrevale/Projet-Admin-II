FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping
RUN apt-get install -y vim 
RUN apt-get install -y nano

WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/
COPY named.conf.default-zones /etc/bind/
COPY named.conf.local /etc/bind/


CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]

CMD tail -f /dev/null