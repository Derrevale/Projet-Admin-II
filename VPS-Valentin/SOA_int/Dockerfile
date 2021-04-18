FROM resystit/bind9

COPY named.conf /etc/bind/named.conf
COPY intranet.tl2-5.ephec-ti.be /etc/bind/intranet.tl2-5.ephec-ti.be
COPY 0.16.172.in-addr.arpa /etc/bind/0.16.172.in-addr.arpa

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]