#!/bin/bash

# Nastavení proměnných
MOUNT_POINT=" Bod_připojení_pro_externí_disk"
BACKUP_DIR="$MOUNT_POINT/backup"
BORG_SCRIPT="Cesta_ k_skriptu_ BorgBackup"  # Opravena cesta k skriptu

# Spuštění Borg backup
echo "Spouštění Borg zálohy..."
$BORG_SCRIPT
if [ $? -ne 0 ]; then
    echo "Chyba: Borg záloha selhala."
    exit 1
fi
echo "Borg záloha byla úspěšně dokončena."

# Spuštění rsync zálohy
echo "Spouštění rsync zálohy..."
rsync -av --delete --exclude='.Trash' --exclude='.cache' --exclude='tmp' --exclude='Downloads' /home/archos/ $BACKUP_DIR
if [ $? -ne 0 ]; then
    echo "Chyba: rsync záloha selhala."
    exit 1
fi
echo "rsync záloha byla úspěšně dokončena."

echo "Zálohování bylo úspěšně dokončeno."
