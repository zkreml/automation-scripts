#!/bin/bash

# Nastavení proměnných
LOG_DIR="/path/to/your/log"
LOG_FILES=("sync_gitea_to_github.log" "clean_logs.log")

# Přepsání log souboru pro diagnostiku
echo "Starting log cleanup at $(date)"

# Smazání a znovuvytvoření log souborů
for LOG_FILE in "${LOG_FILES[@]}"; do
    if [ -f "$LOG_DIR/$LOG_FILE" ]; then
        rm "$LOG_DIR/$LOG_FILE"
        echo "Deleted $LOG_FILE"
    fi
    touch "$LOG_DIR/$LOG_FILE"
    echo "Created new $LOG_FILE"
done

echo "Log cleanup completed successfully at $(date)"

