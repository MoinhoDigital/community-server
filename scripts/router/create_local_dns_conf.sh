#!/bin/bash

cat <<EOT >> /etc/dnsmasq.d/local_server.conf
cname=admin,moinho
cname=admin.moinho.com,rock64.thisnode.info
cname=rede,moinho
cname=rede.moinho.com,rock64.thisnode.info
cname=filtro,moinho
cname=filtro.moinho.com,rock64.thisnode.info
cname=flix,moinho
cname=flix.moinho.com,rock64.thisnode.info
cname=feedless,moinho
cname=feedless.moinho.com,rock64.thisnode.info
cname=cursos,moinho
cname=cursos.moinho.com,rock64.thisnode.info
cname=baixar,moinho
cname=baixar.moinho.com,rock64.thisnode.info
cname=api-mapa,moinho
cname=api-mapa.moinho.com,rock64.thisnode.info
cname=status,moinho
cname=status.moinho.com,rock64.thisnode.info
EOT
/etc/init.d/dnsmasq restart
