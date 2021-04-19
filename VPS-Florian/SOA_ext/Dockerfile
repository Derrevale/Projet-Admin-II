FROM resystit/bind9

COPY named.conf /etc/bind/named.conf
COPY tl2-5.ephec-ti.be /etc/bind/tl2-5.ephec-ti.be

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]