touch backup_home.sh
nano backup_home.sh

# !/bin/bash
# backup_home.sh
# Creates a timestamped compressed backup of the user's home directory

set -e

BACKUP_DIR="$HOME/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE="$BACKUP_DIR/home_backup_$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

echo "Starting home directory backup..."
echo "Destination: $ARCHIVE"

tar \
  --exclude="$BACKUP_DIR" \
  --exclude="$HOME/.cache" \
  --exclude="$HOME/.local/share/Trash" \
  -czf "$ARCHIVE" "$HOME"

echo "Backup completed successfully."

chmod +x backup_home.sh

./backup_home.sh
