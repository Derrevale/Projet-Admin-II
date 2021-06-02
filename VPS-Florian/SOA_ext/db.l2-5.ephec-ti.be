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
            IN      MX      1      mail
            IN      TXT     "v=spf1 include:l2-5.ephec-ti.be ip4:135.125.101.234 -all"
default._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1mupNXA5vPgmL2QJtpyxjKOV6zZruoYFO8+ui4jroiaLPJsYLAQ2ifs4jQUHfLDKZzj4C9U7i3VDAXyLe8bCGGmSorD6Gp9wKA5cQsj7Dd8qDZv6cCnWL4InM57b8gUHahr4VnOrvvXOvyIQJ73utPwxblf6tKBRyrEncYqL6SsRdGmoqCdlYg40o8jbgDiu28dOiqeTb+vIft"
          "hF+20ipIl8KMBQ6BpylKxXw2sHgZuPBO7oOBc7tppcNxnts5ZHh2q6cI4to801xTusLnN8GzrvujuXkkJQ2FIt42SBffq8y07SYE3SWrD6nfZWYrmboa4pqbIHfYdBMQtzndZX1QIDAQAB" )  ; ----- DKIM key default for l2-5.ephec-ti.be
smtp        IN      CNAME   mail


; VoIP
_sip._udp   SRV     0       0       5060        sip 
_sip._tcp   SRV     0       0       5060        sip
sip         IN       A        135.125.101.237
