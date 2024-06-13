#!/bin/bash

# Nastavení proměnných
GITEA_REPO="ssh://git@git.arch-linux.cz:29418/Archos/prehlad-financi-komunity.git"
GITHUB_REPO="git@github.com:zkreml/prehlad-financi-komunity.git"
REPO_DIR="/home/archos/git_archlinuxcz/prehlad-financi-komunity"
LOG_DIR="/home/archos/git_archlinuxcz/automation-scripts/logs"
LOG_FILE="$LOG_DIR/sync_gitea_to_github.log"

# Funkce pro logování
log() {
    echo "$(date) - $1" >> $LOG_FILE
}

# Vytvoření adresáře pro logy, pokud neexistuje
mkdir -p $LOG_DIR

# Pull změn z Gitea repozitáře
log "Pull změn z Gitea repozitáře"
cd $REPO_DIR
git pull $GITEA_REPO

# Pushing to GitHub
log "Pushing to GitHub"
git push $GITHUB_REPO

log "Synchronizace dokončena"

