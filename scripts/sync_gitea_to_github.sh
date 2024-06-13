#!/bin/bash

# Nastavení proměnných
GITEA_REPO="ssh://git@git.arch-linux.cz:29418/Archos/prehlad-financi-komunity.git"
GITHUB_REPO="git@github.com:zkreml/prehlad-financi-komunity.git"
TMP_DIR=$(mktemp -d)
LOG_FILE="/path/to/your/automation-scripts/logs/sync_gitea_to_github.log"

# Funkce pro logování
log() {
    echo "$(date) - $1" >> $LOG_FILE
}

# Klonování Gitea repozitáře
log "Klonování Gitea repozitáře"
git clone --mirror $GITEA_REPO $TMP_DIR

# Pushing to GitHub
log "Pushing to GitHub"
cd $TMP_DIR
git push --mirror $GITHUB_REPO

# Úklid
log "Úklid"
rm -rf $TMP_DIR

log "Synchronizace dokončena"
