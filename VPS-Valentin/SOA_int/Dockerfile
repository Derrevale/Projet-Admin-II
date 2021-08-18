FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping
RUN apt-get install -y vim 
RUN apt-get install -y lynx
RUN apt-get install -y curl 
RUN apt-get install -y mutt
RUN apt-get install -y dnsutils
RUN apt-get install -y iputils-ping
RUN apt-get install -y nano
RUN apt-get install -y net-tools



WORKDIR /etc/bind

EXPOSE 53/udp
EXPOSE 53/tcp

COPY named.conf /etc/bind/named.conf

COPY zones/intranet.woodytoys /etc/bind/zones/intranet.woodytoys
COPY zones/0.16.172.in-addr.arpa /etc/bind/zones/0.16.172.in-addr.arpa


RUN chown root:bind /etc/bind/rndc.key
RUN chmod 640 /etc/bind/rndc.key

CMD ["named", "-c", "/etc/bind/named.conf", "-g"]
CMD tail -f /dev/null
