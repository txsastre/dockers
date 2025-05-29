#!/bin/bash
VOL_PATH="$HOME/.local/share/containers/storage/volumes/n8n_n8n-data/_data"
BACKUP_DIR="$HOME/backups_n8n"
DATE=$(date +%F)

mkdir -p "$BACKUP_DIR"
tar czvf "$BACKUP_DIR/n8n_backup_$DATE.tar.gz" -C "$VOL_PATH" .

echo "Backup creat a $BACKUP_DIR/n8n_backup_$DATE.tar.gz"
