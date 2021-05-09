FROM debian

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install vim nano -y
RUN apt-get install wget -y   
RUN apt-get install make -y 
RUN apt-get -y install git curl libnewt-dev libssl-dev libncurses5-dev subversion  libsqlite3-dev build-essential libjansson-dev libxml2-dev  uuid-dev libedit-dev libtool

RUN mkdir /usr/src/asteriskSource 
RUN cd /usr/src/asteriskSource

WORKDIR /usr/src/asteriskSource

RUN wget https://downloads.asterisk.org/pub/telephony/asterisk/asterisk-18-current.tar.gz
RUN wget https://downloads.asterisk.org/pub/telephony/libpri/libpri-current.tar.gz
RUN wget https://downloads.asterisk.org/pub/telephony/dahdi-linux/dahdi-linux-current.tar.gz

RUN tar -zxvf asterisk-18-current.tar.gz
RUN tar -zxvf dahdi-linux-current.tar.gz
RUN tar -zxvf libpri-current.tar.gz


RUN rm asterisk-18-current.tar.gz -f
RUN rm dahdi-linux-current.tar.gz -f
RUN rm libpri-current.tar.gz -f

RUN cd asterisk-18.4.0 && ./configure && make && make install && make samples

EXPOSE 5060/tcp 5060/udp

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]