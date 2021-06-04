FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping
RUN apt-get install vim -y
RUN apt-get install -y lynx
RUN apt-get install -y mutt
RUN apt-get install -y dnsutils
RUN apt-get install -y iputils-ping

RUN apt-get install net-tools

WORKDIR /etc/bind

EXPOSE 53/udp
EXPOSE 53/tcp

COPY named.conf /etc/bind/named.conf

COPY zones/intranet.l2-5.ephec-ti.be /etc/bind/zones/intranet.l2-5.ephec-ti.be
COPY zones/0.16.172.in-addr.arpa /etc/bind/zones/0.16.172.in-addr.arpa

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
CMD tail -f /dev/null
