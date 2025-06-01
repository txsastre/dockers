#!/bin/bash
VOL_PATH="$HOME/.local/share/containers/storage/volumes/n8n_n8n-data/_data"

if [ -z "$1" ]; then
  echo "Ús: $0 fitxer_backup.tar.gz"
  exit 1
fi

BACKUP_FILE="$1"

if [ ! -f "$BACKUP_FILE" ]; then
  echo "Fitxer $BACKUP_FILE no trobat!"
  exit 1
fi

echo "Aturant contenidor n8n..."
podman stop n8n

echo "Restauració de backup $BACKUP_FILE..."
tar xzvf "$BACKUP_FILE" -C "$VOL_PATH"

echo "Iniciant contenidor n8n..."
podman start n8n

echo "Restauració finalitzada."
