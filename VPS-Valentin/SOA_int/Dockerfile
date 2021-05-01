FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping
RUN apt-get install vim -y

WORKDIR /etc/bind

COPY named.conf /etc/bind/named.conf

COPY zones/intranet.l2-5.ephec-ti.be /etc/bind/zones/intranet.l2-5.ephec-ti.be
COPY zones/0.16.172.in-addr.arpa /etc/bind/zones/0.16.172.in-addr.arpa

CMD tail -f /dev/null