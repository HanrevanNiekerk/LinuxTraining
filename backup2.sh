#!/bin/bash

# $HOME ensures the script works regardless of the specific username
DEST="$HOME/Backups"
SOURCE="$HOME/Documents/Projects"

# Create the backup directory if it doesn't exist
mkdir -p "$DEST"

echo "Backing up from $SOURCE..."

# Compress the directory into a timestamped tarball
tar -czf "$DEST/backup-$(date +%Y%m%d).tar.gz" "$SOURCE"

echo "Backup Successful! Final archive details:"
ls -lh "$DEST"
