#!/bin/bash
# Zdrojová složka záloh na HD2
BACKUP_SRC="/mnt/backup/backup"
# Cílový adresář na Hetzner Storage Boxu
BACKUP_DEST="u409453@u409453.your-storagebox.de:/path/to/backup"
# Logovací soubor
LOG_FILE="/var/log/backup_transfer.log"
# SSH port
SSH_PORT=23

# Kontrola existence logovacího souboru a jeho vytvoření, pokud neexistuje
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
    chmod 644 "$LOG_FILE"
fi

# Synchronizace pomocí rsync
rsync -avz -e "ssh -p $SSH_PORT" --delete "$BACKUP_SRC" "$BACKUP_DEST"

# Logování
echo "Backup transfer completed on $(date)" >> "$LOG_FILE"

