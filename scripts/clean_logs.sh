#!/bin/bash

# Nastavení proměnných
LOG_DIR="/path/to/your/logs"
LOG_FILE="/path/to/your/logs/clean_logs.log"
DAYS_TO_KEEP=30

# Přepsání log souboru
echo "Starting log cleanup at $(date)" > $LOG_FILE

# Vyčištění log souborů starších než zadaný počet dní
find $LOG_DIR -type f -name "*.log" -mtime +$DAYS_TO_KEEP -exec rm -f {} \; >> $LOG_FILE 2>&1

if [ $? -eq 0 ]; then
    echo "Log cleanup completed successfully at $(date)" >> $LOG_FILE
else
    echo "Error: Log cleanup failed at $(date)" >> $LOG_FILE
    exit 1
fi
