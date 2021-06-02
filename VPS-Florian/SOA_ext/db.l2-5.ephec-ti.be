$TTL 604800
@       IN      SOA     ns.l2-5.ephec-ti.be. v.derreumaux.students.ephec.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; NS configs
            IN      NS      ns.l2-5.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       135.125.101.234
       
; Web
b2b         IN      A       135.125.101.237
www         IN      A       135.125.101.237

; Mail
mail        IN      A       135.125.101.234
@           IN      NS      ns
            IN      A       135.125.101.234
            IN      MX      10      mail
            IN      TXT     "v=spf1 include:mail.l2-5.ephec-ti.be ip4:135.125.101.234 -all"
smtp        IN      CNAME   mail


; VoIP
_sip._udp   SRV     0       0       5060        sip 
_sip._tcp   SRV     0       0       5060        sip
sip         IN       A        135.125.101.237
