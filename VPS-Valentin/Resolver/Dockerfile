FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade && apt install bind9 bind9utils bind9-doc bind9-host dnsutils -y 
RUN apt-get install -y vim 
RUN apt-get install -y nano
RUN apt-get install -y iputils-ping
RUN apt-get install -y lynx
RUN apt-get install -y curl
RUN apt-get install -y mutt
RUN apt-get install -y dnsutils
RUN apt-get install -y net-tools


WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf
COPY named.conf.options /etc/bind/
COPY named.conf.default-zones /etc/bind/
COPY named.conf.local /etc/bind/


CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]

CMD tail -f /dev/null