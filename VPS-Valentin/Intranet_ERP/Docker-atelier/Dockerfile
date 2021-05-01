FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y lynx
RUN apt-get install -y mutt
RUN apt-get install -y dnsutils
RUN apt-get install -y apache2 && apt-get clean
RUN apt-get install net-tools

CMD tail -f /dev/null