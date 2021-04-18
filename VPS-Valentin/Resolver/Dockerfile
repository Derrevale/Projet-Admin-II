FROM resystit/bind9
COPY named.conf /etc/bind/named.conf
CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]