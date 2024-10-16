#!/bin/bash

# Nastavení proměnných
GITEA_REPO="ssh://git@git.arch-linux.cz:29418/Archos/phanpy-cz.git"    # Adresa Gitea repozitáře
REPO_DIR="/tmp/phanpy-cz"                                              # Dočasný adresář pro repozitář
REMOTE_USER="archos"                                                   # Uživatelské jméno pro SSH přístup
REMOTE_HOST="adresa_phanpy_serveru"                                              # Adresa serveru
REMOTE_PORT="202"                                                      # Port pro SSH připojení
REMOTE_DIR="phany_oscloud_uložistě"  # Cílový adresář na serveru

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
