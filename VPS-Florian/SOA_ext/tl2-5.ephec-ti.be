$ORIGIN tl2-5.ephec-ti.be.
$TTL 604800
@       IN      SOA     ns.tl2-5.ephec-ti.be. v.derreumaux.students.ephec.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
;
; NS configs
            IN      NS      ns.tl2-5.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       135.125.101.234

; SPF
@           IN	    TXT     "v=spf1 a mx ip4:135.125.101.234 include:_spf.google.com ~all"

; Web
b2b         IN      A       135.125.101.237
www         IN      A       135.125.101.237

; Mail
mail        IN      A       135.125.101.234
smtp        IN      CNAME   mail


; VoIP
_sip._udp	SRV     0       0       5060        sip 
_sip._tcp 	SRV     0       0       5060        sip
sip 		IN	    A	    135.125.101.237
© 2021 GitHub, Inc.