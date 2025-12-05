Create:
touch backup.sh

Enter backup.sh
nano ./backup.sh

Commands:
#!/bin/bash

SOURCE="/path/to/folder"
DEST="/path/to/backup-$(date +%Y-%m-%d).tar.gz"

echo "Backing up $SOURCE..."
tar -czf $DEST $SOURCE

echo "Backup created at $DEST"

Change /path/to/folder later.

Run:
./backup.sh


#if there is no directory found, you can always create one:
mkdir -p /path/to/folder
