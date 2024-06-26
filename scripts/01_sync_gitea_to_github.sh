#!/bin/bash

# Nastavení proměnných
GITEA_REPO="your_gitea_repo_url"
GITHUB_REPO="your_github_repo_url"
REPO_DIR="path_to_your_local_repo"
LOG_DIR="path_to_your_log_directory"
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


