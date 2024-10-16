#!/bin/bash

# Nastavení proměnných
GITEA_REPO="ssh://git@git.arch-linux.cz:29418/Oscloud/web-mxchat.git"  # Adresa Gitea repozitáře
REPO_DIR="/tmp/web-mxchat"                                             # Dočasný adresář pro repozitář
REMOTE_USER="user"                                                   # Uživatelské jméno pro SSH přístup
REMOTE_HOST="ip_serveru"                                              # Adresa serveru
REMOTE_PORT="port"                                                      # Port pro SSH připojení
REMOTE_DIR="/mn/data/public"  # Cílový adresář na serveru

# Klonování nebo aktualizace repozitáře z Gitea
if [ -d "$REPO_DIR" ]; then
    cd $REPO_DIR
    git pull $GITEA_REPO
else
    git clone $GITEA_REPO $REPO_DIR
    cd $REPO_DIR
fi

# Nasazení souborů pomocí rsync
rsync -avz -e "ssh -p $REMOTE_PORT" --delete $REPO_DIR/* $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR

echo "Nasazení dokončeno!"
