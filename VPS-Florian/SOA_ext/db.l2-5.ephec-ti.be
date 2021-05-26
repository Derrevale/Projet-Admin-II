$TTL 86400
@       IN      SOA     ns.l2-5.ephec-ti.be. v.derreumaux.students.ephec.be. (
                        2021051752           ; Serial
                        43200      ; Refresh
                        7200       ; Retry
                        2419200     ; Expire
                        86400 )    ; Negative Cache TTL
;
; NS configs
            IN      NS      ns.l2-5.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       135.125.101.234

; liaison des nom de serveurs avec les adresses IP pour ce qui touche au service Web
b2b         IN      A       135.125.101.237
www         IN      A       135.125.101.237

; liaison des nom de serveurs avec les adresses IP pour ce qui touche au service Mail
mail        IN      A       135.125.101.234
smtp        IN      CNAME   mail

; SPF le SPF indique que seul le serveur 135.125.101.234 peut envoyer des emails pour ce domaine 
@           IN	    TXT     "v=spf1 a mx ip4:135.125.101.234 include:_spf.google.com ~all"

; liaison des nom de serveurs avec les adresses IP pour ce qui touche au service VoIP
_sip._udp   SRV     0       0       5060        sip 
_sip._tcp   SRV     0       0       5060        sip
sip         IN       A        135.125.101.237
