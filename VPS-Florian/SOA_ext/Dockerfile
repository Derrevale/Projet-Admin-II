#ubuntu dernière version
FROM debian:latest

#Installation de bind9 et des outils nécéssaire 
RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

COPY named.conf /etc/bind/

COPY db.l2-5.ephec-ti.be /etc/bind/zones/

EXPOSE 53/udp
EXPOSE 53/tcp

#Commande réalisé au démarage du conteneur
CMD ["named", "-c", "/etc/bind/named.conf", "-g"]