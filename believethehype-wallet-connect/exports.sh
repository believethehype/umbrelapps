set lnbits_ip = docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' lnbits_web_1

export APP_LNBITS_IP=lnbits_ip
