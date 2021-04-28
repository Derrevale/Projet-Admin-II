$ ORIGIN l2-5.ephec-ti.be.
$ $TTL 604800
@       IN      SOA     ns.l2-5.ephec-ti.be. root.l2-5.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

;Attribution du "name server" (NS)
l2-5.ephec-ti.be.   	IN      NS      ns.l2-5.ephec-ti.be.
ns.l2-5.ephec-ti.be.   	IN      A       135.125.101.234				; VPS Florian

;Attribution des nom de domaine pour les sites web publiques
b2b					IN 		A		135.125.101.237		; Web serveur revendeur (VPS Sebastien)
www					IN		A		135.125.101.237		; Web serveur client (VPS Sebastien)

;Attribution du nom de domaine pour le mail
mail				IN		A		135.125.101.234	; Serveur mail (VPS Florian)
@					IN		MX		10	mail.l2-5.ephec-ti.be.

voip		IN		A		135.125.101.237		; Serveur de la VoIP (VPS Sebastien)

_sip._tcp		86400		IN	SRV		10		100		5060		voip.l2-5.ephec-ti.be.
_sip._udp		86400		IN	SRV		10		100		5060		voip.l2-5.ephec-ti.be.