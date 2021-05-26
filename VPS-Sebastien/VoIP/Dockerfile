FROM debian

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install vim nano dnsutils net-tools asterisk -y


COPY config/asterisk.conf /etc/asterisk/asterisk.conf
COPY config/sip.conf /etc/asterisk/sip.conf
COPY config/extensions.conf /etc/asterisk/extensions.conf
COPY config/voicemail.conf /etc/asterisk/voicemail.conf

EXPOSE 5060/tcp 5060/udp

ENTRYPOINT [ "/usr/sbin/asterisk", "-f" ]