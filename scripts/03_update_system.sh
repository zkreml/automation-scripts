#!/bin/bash

# Nastavení proměnných
LOG_FILE="/path/to/your/logs/update_system.log"
DATE=$(date +%Y%m%d_%H%M%S)

# Přidání časového razítka do logu
echo "Starting system update at $(date)" >> $LOG_FILE

# Aktualizace systémových balíčků
sudo apt-get update >> $LOG_FILE 2>&1
sudo apt-get upgrade -y >> $LOG_FILE 2>&1

if [ $? -eq 0 ]; then
    echo "System update completed successfully at $(date)" >> $LOG_FILE
else
    echo "Error: System update failed at $(date)" >> $LOG_FILE
    exit 1
fi
