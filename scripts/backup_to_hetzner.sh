#!/bin/bash
# Zdrojová složka záloh na HD2
BACKUP_SRC="/mnt/backup/backup"
# Cílový adresář na Hetzner Storage Boxu
BACKUP_DEST="user@storagebox.hetzner.com:/path/to/backup"
# Logovací soubor
LOG_FILE="/var/log/backup_transfer.log"

# Kontrola existence logovacího souboru a jeho vytvoření, pokud neexistuje
if [ ! -f "$LOG_FILE" ]; then
    touch "$LOG_FILE"
    chmod 644 "$LOG_FILE"
fi

# Synchronizace pomocí rsync
rsync -avz --delete "$BACKUP_SRC" "$BACKUP_DEST"

# Logování
echo "Backup transfer completed on $(date)" >> "$LOG_FILE"
