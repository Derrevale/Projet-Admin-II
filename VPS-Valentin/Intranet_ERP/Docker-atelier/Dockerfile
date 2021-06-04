FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y lynx
RUN apt-get install -y mutt
RUN apt-get install -y dnsutils
RUN apt-get install -y iputils-ping
RUN apt-get install net-tools
COPY resolv.conf /etc/resolv.conf
CMD tail -f /dev/null