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

;liaison des nom de serveurs avec les adresses IP pour ce qui touche au service Mail
mail        IN      A       135.125.101.234
@           IN      NS      ns
            IN      A       135.125.101.234
            IN      MX      10      mail
            
            
234.101.125.135.in-addr.arpa.   IN      PTR     mail.l2-5.ephec-ti.be

; TXT records ( SPF,DKIM,DMARC )

@       IN      TXT     "v=spf1 include:mail.l2-5.ephec-ti.be ip4:135.125.101.234 -all"

default._domainkey      IN      TXT     ( "v=DKIM1; h=sha256; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2kKYAogfp5Z5jywAsgGxo+T6c9Y1KuaQd/Bm26kJaYBKsBnKMXFQMi6wwF2NbjIH5soGkk0x5eXv1wIGYhAIp9pvxbwl30S4Gl3kouy49BJOkl0iU6fXC6zEJkyOICq74w3vKN851KTcGi/ewxEs4g2rnPYi8JXUZ6x97Q62xIGjPHCvqUS$
          "DQoiv3Si9WzGhDY0UQ3px8DessX/+3aIRs5GJI7eImab0HXFmvYOLHJWen2CUC/ermEZf6XI7uHGyz+1i+9nmZVOK8mb+eDsv64RIJNKUbZ6mr/2pZjpcJDIpPmrVkH0ez0xtPAwIDAQAB" )  ; ----- DKIM key default for l2-5.ephec-ti.be


_dmarc          IN      TXT     "v=DMARC1; p=none; pct=100; rua=mailto:dmarc-reports@l2-5.ephec-ti.be"


smtp        IN      CNAME   mail


;liaison des nom de serveurs avec les adresses IP pour ce qui touche au service  VoIP
_sip._udp   SRV     0       0       5060        sip
_sip._tcp   SRV     0       0       5060        sip
sip         IN       A        135.125.101.237

$INCLUDE l2-5.ephec-ti.be.ksk.key
$INCLUDE l2-5.ephec-ti.be.zsk.key

