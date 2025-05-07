#!/bin/bash
backup_dir=~/backup_$(date +%F)
mkdir -p "$backup_dir"
for item in ~/*; do
    [ -f "$item" ] && cp "$item" "$backup_dir"
done
echo "Backup completed to $backup_dir"
