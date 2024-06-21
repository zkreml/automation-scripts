#!/bin/bash

# Nastavení proměnných
BACKUP_DIR="cesta_k_rsync_zaloze"  # Upravte podle skutečné cesty
BORG_REPO="ceste_k_borg_repozitari"  # Upravte podle vašeho repozitáře

# Kontrola BorgBackup
echo "Zahajuji kontrolu BorgBackup..."
export BORG_PASSPHRASE='moje_silne_heslo'  # Zadejte heslo nebo použijte bezpečnější metodu pro jeho zadání
borg list $BORG_REPO

# Kontrola Rsync
echo "Zahajuji kontrolu Rsync záloh..."
echo "Zdrojový adresář:"
find /home/archos/ \( -name ".cache" -prune \) -o -type f | wc -l
find /home/archos/ \( -name ".cache" -prune \) -o -type d | wc -l

echo "Cílový adresář:"
find $BACKUP_DIR \( -name ".cache" -prune \) -o -type f | wc -l
find $BACKUP_DIR \( -name ".cache" -prune \) -o -type d | wc -l

echo "Kontrola záloh dokončena."
