#!/bin/bash

# Zdrojová složka záloh na HD2
BACKUP_SRC="/mnt/backup/backup"
# Cílový adresář na Hetzner Storage Boxu
BACKUP_DEST="u409453@u409453.your-storagebox.de:/path/to/backup"
# SSH port
SSH_PORT=23
# E-mailové adresy pro notifikace
EMAIL="tvuj_email@example.com"
SUBJECT="Backup Failure Notification"

# Synchronizace pomocí rsync
rsync -avz -e "ssh -p $SSH_PORT" --delete "$BACKUP_SRC" "$BACKUP_DEST"
if [ $? -ne 0 ]; then
    echo "Backup failed" | mail -s "$SUBJECT" "$EMAIL"
else
    echo "Backup transfer completed on $(date)"
fi

