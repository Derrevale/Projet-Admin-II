$ORIGIN l2-5.ephec-ti.be.
$TTL 86400
@       IN      SOA     ns.l2-5.ephec-ti.be. root.l2-5.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

; Configuration du name serveur
            IN      NS      ns.l2-5.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       135.125.101.234 ;VPS Florian


;
b2b         IN      A       135.125.101.237
www         IN      A       135.125.101.237

; Mail
mail        IN      A       135.125.101.234; VPS Sebastien
smtp        IN      CNAME   mail


; VoIP
_sip._udp	SRV     0       0       5060        sip 
_sip._tcp 	SRV     0       0       5060        sip
sip 		IN	    A	    135.125.101.237	