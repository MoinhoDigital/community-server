#!/bin/bash

# Para fazer backup do banco de dados do pirania
# Criar chave de ssh
ssh-keygen
echo "Chave pública de ssh gerada"
# Ou colocar no crontab (mudar de acordo com onde estiver clonado):
# 20 * * * * ~/community-server/scripts/backup-pirania.sh
(crontab -l ; echo "20 * * * * ~/community-server/scripts/backup-pirania.sh") | sort - | uniq - | crontab -
# Mostrar chave
echo "Script de back adicionado ao cron"
# Copiar chave para o roteador
echo "Não esqueça de copiar a chave de ssh para o /etc/dropbear/authorized_keys no roteador"
cat ~/.ssh/id_rsa.pub